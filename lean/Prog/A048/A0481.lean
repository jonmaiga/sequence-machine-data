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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A048102: Numbers k such that if k = Product p_i^e_i then p_i = e_i for all i.

The programs for A048102, there is no canonical definition to state claims against.
-/

/-! ## A048102.P10927006572574422394

`∩[A054412(n+1), A072873(n+1)]`
-/

namespace A048102.P10927006572574422394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048102.P10927006572574422394

/-! ## A048102.P981532122961329459

`∩[A054412(n+1), A156223(n+1)]`
-/

namespace A048102.P981532122961329459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048102.P981532122961329459

/-! ## A048102.P14683631109868168789

`∩[A072873(n+1), A122406(n+1)]`
-/

namespace A048102.P14683631109868168789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048102.P14683631109868168789

/-! ## A048102.P5144053576057447150

`∩[A122406(n+1), A156223(n+1)]`
-/

namespace A048102.P5144053576057447150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048102.P5144053576057447150

/-! ## A048102.P4403192315421607856

`∩[A072873(n+1), A272859(n+1)]`
-/

namespace A048102.P4403192315421607856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048102.P4403192315421607856

/-!
# A048103: Numbers not divisible by p^p for any prime p.

The programs for A048103, the canonical program `A048103.P2857780871573492135` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048103 has offset 1).

The definition of A048103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048103.P11945160292933568390

`record[A327937(n+1)]`
-/

namespace A048103.P11945160292933568390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048103.P11945160292933568390

namespace A048103

/-- `record[A327937(n+1)]` -/
def P11945160292933568390.Spec : Prop :=
  ∀ n, P11945160292933568390.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P4277929557435541426

`record[A327938(n+1)]`
-/

namespace A048103.P4277929557435541426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048103.P4277929557435541426

namespace A048103

/-- `record[A327938(n+1)]` -/
def P4277929557435541426.Spec : Prop :=
  ∀ n, P4277929557435541426.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P12461424337685153550

`record[A392879(n+1)]`
-/

namespace A048103.P12461424337685153550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048103.P12461424337685153550

namespace A048103

/-- `record[A392879(n+1)]` -/
def P12461424337685153550.Spec : Prop :=
  ∀ n, P12461424337685153550.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P10005935700702006955

`lt[0, abs(A256750(n))]`
-/

namespace A048103.P10005935700702006955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256750 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048103.P10005935700702006955

namespace A048103

/-- `lt[0, abs(A256750(n))]` -/
def P10005935700702006955.Spec : Prop :=
  ∀ n, (P10005935700702006955.a n : ℤ) = A048103 (n + 1)

end A048103

/-! ## A048103.P5363720340904135616

`eq[1, A327939(n+1)]+1`
-/

namespace A048103.P5363720340904135616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048103.P5363720340904135616

namespace A048103

/-- `eq[1, A327939(n+1)]+1` -/
def P5363720340904135616.Spec : Prop :=
  ∀ n, (P5363720340904135616.a n : ℤ) = A048103 (n + 1)

end A048103

/-! ## A048103.P2857780871573492135

`eq[1, A342007(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A048103

/-- `eq[1, A342007(n+1)]+1` -/
def P2857780871573492135.Spec : Prop :=
  ∀ n, (P2857780871573492135.a n : ℤ) = A048103 (n + 1)

theorem P2857780871573492135.correct : P2857780871573492135.Spec := by
  intro n
  simp only [A048103, Nat.add_sub_cancel]

end A048103

/-! ## A048103.P3976211388538370435

`record[(n+1)/A327936(n+1)]`
-/

namespace A048103.P3976211388538370435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327936 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048103.P3976211388538370435

namespace A048103

/-- `record[(n+1)/A327936(n+1)]` -/
def P3976211388538370435.Spec : Prop :=
  ∀ n, P3976211388538370435.a n = (A048103 (n + 1) : ℚ)

end A048103

/-! ## A048103.P1950496318622595622

`filter[A317468(n+1), A359550(#)]`
-/

namespace A048103.P1950496318622595622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P1950496318622595622

namespace A048103

/-- `filter[A317468(n+1), A359550(#)]` -/
def P1950496318622595622.Spec : Prop :=
  ∀ n, P1950496318622595622.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P729000709452597195

`filter[A042968(n+1), A359550(#)]`
-/

namespace A048103.P729000709452597195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P729000709452597195

namespace A048103

/-- `filter[A042968(n+1), A359550(#)]` -/
def P729000709452597195.Spec : Prop :=
  ∀ n, P729000709452597195.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P4580703945758817287

`filter[A207481(n+1), A359550(#)]`
-/

namespace A048103.P4580703945758817287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P4580703945758817287

namespace A048103

/-- `filter[A207481(n+1), A359550(#)]` -/
def P4580703945758817287.Spec : Prop :=
  ∀ n, P4580703945758817287.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P6637380757392698611

`filter[A047588(n+1), A359550(#)]`
-/

namespace A048103.P6637380757392698611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P6637380757392698611

namespace A048103

/-- `filter[A047588(n+1), A359550(#)]` -/
def P6637380757392698611.Spec : Prop :=
  ∀ n, P6637380757392698611.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P8489313399145486416

`filter[A047592(n+1), A359550(#)]`
-/

namespace A048103.P8489313399145486416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P8489313399145486416

namespace A048103

/-- `filter[A047592(n+1), A359550(#)]` -/
def P8489313399145486416.Spec : Prop :=
  ∀ n, P8489313399145486416.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P3912837558737738742

`filter[A168186(n+1), A359550(#)]`
-/

namespace A048103.P3912837558737738742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P3912837558737738742

namespace A048103

/-- `filter[A168186(n+1), A359550(#)]` -/
def P3912837558737738742.Spec : Prop :=
  ∀ n, P3912837558737738742.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P16841166245905818061

`filter[A110303(n+1), A359550(#)]`
-/

namespace A048103.P16841166245905818061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P16841166245905818061

namespace A048103

/-- `filter[A110303(n+1), A359550(#)]` -/
def P16841166245905818061.Spec : Prop :=
  ∀ n, P16841166245905818061.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P10132206781085096438

`filter[A386807(n+1), A359550(#)]`
-/

namespace A048103.P10132206781085096438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P10132206781085096438

namespace A048103

/-- `filter[A386807(n+1), A359550(#)]` -/
def P10132206781085096438.Spec : Prop :=
  ∀ n, P10132206781085096438.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P5464079874309257941

`filter[A352796(n+1), A359550(#)]`
-/

namespace A048103.P5464079874309257941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P5464079874309257941

namespace A048103

/-- `filter[A352796(n+1), A359550(#)]` -/
def P5464079874309257941.Spec : Prop :=
  ∀ n, P5464079874309257941.a n = A048103 (n + 1)

end A048103

/-! ## A048103.P4167348814193915226

`filter[A144972(n+1), A359550(#)]`
-/

namespace A048103.P4167348814193915226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A048103.P4167348814193915226

namespace A048103

/-- `filter[A144972(n+1), A359550(#)]` -/
def P4167348814193915226.Spec : Prop :=
  ∀ n, P4167348814193915226.a n = A048103 (n + 1)

end A048103

/-!
# A048104: If n = Product p_i^e_i (e_i >= 1) then for some i, p_i > e_i and for some j, p_j < e_j.

The programs for A048104, there is no canonical definition to state claims against.
-/

/-! ## A048104.P17466953953385012446

`∩[A185359(n+1), A360248(n+1)]`
-/

namespace A048104.P17466953953385012446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048104.P17466953953385012446

/-! ## A048104.P9833970248757172639

`∩[A185359(n+1), A381719(n+1)]`
-/

namespace A048104.P9833970248757172639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048104.P9833970248757172639

/-! ## A048104.P7683467520981967931

`∩[A185359(n+1), A360246(n+1)]`
-/

namespace A048104.P7683467520981967931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048104.P7683467520981967931

/-! ## A048104.P8059504996816673653

`∩[A160810(n+1), A185359(n+1)]`
-/

namespace A048104.P8059504996816673653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048104.P8059504996816673653

/-! ## A048104.P8192224225169721390

`∩[A185359(n+1), A317711(n+1)]`
-/

namespace A048104.P8192224225169721390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048104.P8192224225169721390

/-!
# A048105: Number of non-unitary divisors of n.

The programs for A048105, the canonical program `A048105.P14513846835403787716` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048105 has offset 1).

The definition of A048105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048105.P14513846835403787716

`A000005(n+1)-A034444(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A048105

/-- `A000005(n+1)-A034444(n+1)` -/
def P14513846835403787716.Spec : Prop :=
  ∀ n, P14513846835403787716.a n = A048105 (n + 1)

theorem P14513846835403787716.correct : P14513846835403787716.Spec := by
  intro n
  simp only [A048105, Nat.add_sub_cancel]

end A048105

/-! ## A048105.P17699315220513348980

`∑{d}[n+1, A107078(#)]`
-/

namespace A048105.P17699315220513348980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A107078 d

end

end A048105.P17699315220513348980

namespace A048105

/-- `∑{d}[n+1, A107078(#)]` -/
def P17699315220513348980.Spec : Prop :=
  ∀ n, P17699315220513348980.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P18266051688518327251

`A387633(n+1)%(n+1)`
-/

namespace A048105.P18266051688518327251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387633 (n + 1)) (n + 1 : ℤ)

end

end A048105.P18266051688518327251

namespace A048105

/-- `A387633(n+1)%(n+1)` -/
def P18266051688518327251.Spec : Prop :=
  ∀ n, P18266051688518327251.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P6305408577556797830

`∑{d}[n+1, floor(cos(A008683(#)))]`
-/

namespace A048105.P6305408577556797830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.cos (A008683 d : ℝ)⌋

end

end A048105.P6305408577556797830

namespace A048105

/-- `∑{d}[n+1, floor(cos(A008683(#)))]` -/
def P6305408577556797830.Spec : Prop :=
  ∀ n, P6305408577556797830.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P8269541511916898268

`A336316(A329607(n+1))`
-/

namespace A048105.P8269541511916898268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336316 (A329607 (n + 1)).toNat

end

end A048105.P8269541511916898268

namespace A048105

/-- `A336316(A329607(n+1))` -/
def P8269541511916898268.Spec : Prop :=
  ∀ n, P8269541511916898268.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P2358927904940079525

`Δ[A006218(n)]-A034444(n+1)`
-/

namespace A048105.P2358927904940079525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034444 (n + 1)

end

end A048105.P2358927904940079525

namespace A048105

/-- `Δ[A006218(n)]-A034444(n+1)` -/
def P2358927904940079525.Spec : Prop :=
  ∀ n, P2358927904940079525.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P10015627122055226488

`Δ[A054519(n)]-A034444(n+1)`
-/

namespace A048105.P10015627122055226488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034444 (n + 1)

end

end A048105.P10015627122055226488

namespace A048105

/-- `Δ[A054519(n)]-A034444(n+1)` -/
def P10015627122055226488.Spec : Prop :=
  ∀ n, P10015627122055226488.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P14117975225938448086

`A376514(n+1)+A046660(n+1)`
-/

namespace A048105.P14117975225938448086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376514 (n + 1) + A046660 (n + 1)

end

end A048105.P14117975225938448086

namespace A048105

/-- `A376514(n+1)+A046660(n+1)` -/
def P14117975225938448086.Spec : Prop :=
  ∀ n, P14117975225938448086.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P8930873490592128893

`A391713(n+1)+A183094(n+1)`
-/

namespace A048105.P8930873490592128893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (n + 1) + A183094 (n + 1)

end

end A048105.P8930873490592128893

namespace A048105

/-- `A391713(n+1)+A183094(n+1)` -/
def P8930873490592128893.Spec : Prop :=
  ∀ n, P8930873490592128893.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P3803765501377511575

`A391074(n+1)+A368251(n+1)`
-/

namespace A048105.P3803765501377511575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391074 (n + 1) + A368251 (n + 1)

end

end A048105.P3803765501377511575

namespace A048105

/-- `A391074(n+1)+A368251(n+1)` -/
def P3803765501377511575.Spec : Prop :=
  ∀ n, P3803765501377511575.a n = A048105 (n + 1)

theorem P3803765501377511575.correct : P3803765501377511575.Spec := by
  intro n
  simp only [A048105, Nat.add_sub_cancel, A048105.P3803765501377511575.a, A048105.P14513846835403787716.a, A000005, A000005.P16091521709108585461.a, A034444, A034444.P6574915864346323298.a, A368251, A368251.P3199248697924659099.a, A391074, A391074.P7066598171140740427.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A327527, A327527.P10875965028528454969.f1, A327527.P10875965028528454969.a, A384667, A384667.P10362112052039593468.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A354353, A354353.P7138683096085960204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048105

/-! ## A048105.P11281083872438364289

`A034444(n+1)-A048106(n+1)`
-/

namespace A048105.P11281083872438364289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A048106 (n + 1)

end

end A048105.P11281083872438364289

namespace A048105

/-- `A034444(n+1)-A048106(n+1)` -/
def P11281083872438364289.Spec : Prop :=
  ∀ n, P11281083872438364289.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P14205249241620460938

`A070824(n+1)-A087893(n+1)`
-/

namespace A048105.P14205249241620460938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - A087893 (n + 1)

end

end A048105.P14205249241620460938

namespace A048105

/-- `A070824(n+1)-A087893(n+1)` -/
def P14205249241620460938.Spec : Prop :=
  ∀ n, P14205249241620460938.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P2628795796830862941

`A032741(n+1)-A309307(n+1)`
-/

namespace A048105.P2628795796830862941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A309307 (n + 1)

end

end A048105.P2628795796830862941

namespace A048105

/-- `A032741(n+1)-A309307(n+1)` -/
def P2628795796830862941.Spec : Prop :=
  ∀ n, P2628795796830862941.a n = A048105 (n + 1)

theorem P2628795796830862941.correct : P2628795796830862941.Spec := by
  intro n
  simp only [A048105, Nat.add_sub_cancel, A048105.P2628795796830862941.a, A048105.P14513846835403787716.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A034444, A034444.P6574915864346323298.a, A309307, A309307.P44992058381034953.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048105

/-! ## A048105.P2377504418432946390

`A344575(n+1)-A001615(n+1)`
-/

namespace A048105.P2377504418432946390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344575 (n + 1) - A001615 (n + 1)

end

end A048105.P2377504418432946390

namespace A048105

/-- `A344575(n+1)-A001615(n+1)` -/
def P2377504418432946390.Spec : Prop :=
  ∀ n, P2377504418432946390.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P6217834316074799485

`A351417(n+1)-A001221(n+1)`
-/

namespace A048105.P6217834316074799485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351417 (n + 1) - A001221 (n + 1)

end

end A048105.P6217834316074799485

namespace A048105

/-- `A351417(n+1)-A001221(n+1)` -/
def P6217834316074799485.Spec : Prop :=
  ∀ n, P6217834316074799485.a n = A048105 (n + 1)

theorem P6217834316074799485.correct : P6217834316074799485.Spec := by
  intro n
  simp only [A048105, Nat.add_sub_cancel, A048105.P6217834316074799485.a, A048105.P14513846835403787716.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A034444, A034444.P6574915864346323298.a, A351417, A351417.P10622450361574635402.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048105

/-! ## A048105.P14406359495116226933

`A394481(n+1)-A034448(n+1)`
-/

namespace A048105.P14406359495116226933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394481 (n + 1) - A034448 (n + 1)

end

end A048105.P14406359495116226933

namespace A048105

/-- `A394481(n+1)-A034448(n+1)` -/
def P14406359495116226933.Spec : Prop :=
  ∀ n, P14406359495116226933.a n = A048105 (n + 1)

end A048105

/-! ## A048105.P9068979151171929143

`A055212(n+1)-A376504(n+1)`
-/

namespace A048105.P9068979151171929143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) - A376504 (n + 1)

end

end A048105.P9068979151171929143

namespace A048105

/-- `A055212(n+1)-A376504(n+1)` -/
def P9068979151171929143.Spec : Prop :=
  ∀ n, P9068979151171929143.a n = A048105 (n + 1)

theorem P9068979151171929143.correct : P9068979151171929143.Spec := by
  intro n
  simp only [A048105, Nat.add_sub_cancel, A048105.P9068979151171929143.a, A048105.P14513846835403787716.a, A000005, A000005.P16091521709108585461.a, A034444, A034444.P6574915864346323298.a, A055212, A055212.P14412881054625885538.a, A376504, A376504.P12289890857249372903.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048105

/-! ## A048105.P98594127845544437

`A351414(n+1)-A361205(n+1)`
-/

namespace A048105.P98594127845544437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351414 (n + 1) - A361205 (n + 1)

end

end A048105.P98594127845544437

namespace A048105

/-- `A351414(n+1)-A361205(n+1)` -/
def P98594127845544437.Spec : Prop :=
  ∀ n, P98594127845544437.a n = A048105 (n + 1)

theorem P98594127845544437.correct : P98594127845544437.Spec := by
  intro n
  simp only [A048105, Nat.add_sub_cancel, A048105.P98594127845544437.a, A048105.P14513846835403787716.a, A000005, A000005.P16091521709108585461.a, A034444, A034444.P6574915864346323298.a, A351414, A351414.P15953390987188253325.a, A361205, A361205.P11030865412041763722.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048105

/-! ## A048105.P7482969902274480068

`A351520(n+1)-A013928(n+2)`
-/

namespace A048105.P7482969902274480068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351520 (n + 1) - A013928 (n + 2)

end

end A048105.P7482969902274480068

namespace A048105

/-- `A351520(n+1)-A013928(n+2)` -/
def P7482969902274480068.Spec : Prop :=
  ∀ n, P7482969902274480068.a n = A048105 (n + 1)

theorem P7482969902274480068.correct : P7482969902274480068.Spec := by
  intro n
  simp only [A048105, Nat.add_sub_cancel, A048105.P7482969902274480068.a, A048105.P14513846835403787716.a, A000005, A000005.P16091521709108585461.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A034444, A034444.P6574915864346323298.a, A351520, A351520.P14176785441679004629.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048105

/-!
# A048106: Number of unitary divisors of n (A034444) - number of non-unitary divisors of n (A048105).

The programs for A048106, the canonical program `A048106.P2251062442645378634` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048106 has offset 1).

The definition of A048106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048106.P2494408613331242356

`∑{d}[n+1, A008966(#)-A107078(#)]`
-/

namespace A048106.P2494408613331242356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A008966 d - A107078 d)

end

end A048106.P2494408613331242356

namespace A048106

/-- `∑{d}[n+1, A008966(#)-A107078(#)]` -/
def P2494408613331242356.Spec : Prop :=
  ∀ n, P2494408613331242356.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P2251062442645378634

`2^(1+A001221(n+1))-A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A048106

/-- `2^(1+A001221(n+1))-A000005(n+1)` -/
def P2251062442645378634.Spec : Prop :=
  ∀ n, P2251062442645378634.a n = (A048106 (n + 1) : ℚ)

end A048106

/-! ## A048106.P1981914233340463199

`∑{d}[n+1, -(-1)^A008683(#)]`
-/

namespace A048106.P1981914233340463199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1 : ℚ) ^ (A008683 d : ℤ)))

end

end A048106.P1981914233340463199

namespace A048106

/-- `∑{d}[n+1, -(-1)^A008683(#)]` -/
def P1981914233340463199.Spec : Prop :=
  ∀ n, P1981914233340463199.a n = (A048106 (n + 1) : ℚ)

end A048106

/-! ## A048106.P5280261888520708175

`A034444(n+1)-A048105(n+1)`
-/

namespace A048106.P5280261888520708175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A048105 (n + 1)

end

end A048106.P5280261888520708175

namespace A048106

/-- `A034444(n+1)-A048105(n+1)` -/
def P5280261888520708175.Spec : Prop :=
  ∀ n, P5280261888520708175.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P14006618862418533232

`A062011(∏{p}[n+1, #])-Δ[A006218(n)]`
-/

namespace A048106.P14006618862418533232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (∏ p ∈ Nat.primeFactors (f1 n), p) - (f2 (n + 1) - f2 n)

end

end A048106.P14006618862418533232

namespace A048106

/-- `A062011(∏{p}[n+1, #])-Δ[A006218(n)]` -/
def P14006618862418533232.Spec : Prop :=
  ∀ n, P14006618862418533232.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P5897341885722641755

`2*A034444(n+1)-A000005(n+1)`
-/

namespace A048106.P5897341885722641755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034444 (n + 1) - A000005 (n + 1)

end

end A048106.P5897341885722641755

namespace A048106

/-- `2*A034444(n+1)-A000005(n+1)` -/
def P5897341885722641755.Spec : Prop :=
  ∀ n, P5897341885722641755.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P13001650724244478654

`A000005(n+1)-2*A048105(n+1)`
-/

namespace A048106.P13001650724244478654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 2 * A048105 (n + 1)

end

end A048106.P13001650724244478654

namespace A048106

/-- `A000005(n+1)-2*A048105(n+1)` -/
def P13001650724244478654.Spec : Prop :=
  ∀ n, P13001650724244478654.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P8298218216052598082

`A000005(∏{p}[n+1, #])-∑{d}[n+1, A107078(#)]`
-/

namespace A048106.P8298218216052598082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - ∑ d ∈ Nat.divisors (f2 n), A107078 d

end

end A048106.P8298218216052598082

namespace A048106

/-- `A000005(∏{p}[n+1, #])-∑{d}[n+1, A107078(#)]` -/
def P8298218216052598082.Spec : Prop :=
  ∀ n, P8298218216052598082.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P8761341554708223485

`A062011(∏{p}[n+1, #])-(∑{d}[n+1, #+1]-A000203(n+1))`
-/

namespace A048106.P8761341554708223485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (∏ p ∈ Nat.primeFactors (f1 n), p) - (((∑ d ∈ Nat.divisors (f2 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1))

end

end A048106.P8761341554708223485

namespace A048106

/-- `A062011(∏{p}[n+1, #])-(∑{d}[n+1, #+1]-A000203(n+1))` -/
def P8761341554708223485.Spec : Prop :=
  ∀ n, P8761341554708223485.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P7086953818243535889

`A000005(A007947(n+1))-A048105(n+1)`
-/

namespace A048106.P7086953818243535889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat - A048105 (n + 1)

end

end A048106.P7086953818243535889

namespace A048106

/-- `A000005(A007947(n+1))-A048105(n+1)` -/
def P7086953818243535889.Spec : Prop :=
  ∀ n, P7086953818243535889.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P12303429744110665025

`A324213(A034444(n+1))-A000005(n+1)`
-/

namespace A048106.P12303429744110665025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (A034444 (n + 1)).toNat - A000005 (n + 1)

end

end A048106.P12303429744110665025

namespace A048106

/-- `A324213(A034444(n+1))-A000005(n+1)` -/
def P12303429744110665025.Spec : Prop :=
  ∀ n, P12303429744110665025.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P4995452536764172007

`A385042(A353897(n+1))-A048105(n+1)`
-/

namespace A048106.P4995452536764172007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385042 (A353897 (n + 1)).toNat - A048105 (n + 1)

end

end A048106.P4995452536764172007

namespace A048106

/-- `A385042(A353897(n+1))-A048105(n+1)` -/
def P4995452536764172007.Spec : Prop :=
  ∀ n, P4995452536764172007.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P4150756520313746723

`2*A000005(A007947(n+1))-A000005(n+1)`
-/

namespace A048106.P4150756520313746723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A007947 (n + 1)).toNat - A000005 (n + 1)

end

end A048106.P4150756520313746723

namespace A048106

/-- `2*A000005(A007947(n+1))-A000005(n+1)` -/
def P4150756520313746723.Spec : Prop :=
  ∀ n, P4150756520313746723.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P9960849982319936934

`2*A000005(A292586(n+1))-A000005(n+1)`
-/

namespace A048106.P9960849982319936934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A292586 (n + 1)).toNat - A000005 (n + 1)

end

end A048106.P9960849982319936934

namespace A048106

/-- `2*A000005(A292586(n+1))-A000005(n+1)` -/
def P9960849982319936934.Spec : Prop :=
  ∀ n, P9960849982319936934.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P4038414722663043270

`2*A000005(A329607(n+1))-A000005(n+1)`
-/

namespace A048106.P4038414722663043270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A329607 (n + 1)).toNat - A000005 (n + 1)

end

end A048106.P4038414722663043270

namespace A048106

/-- `2*A000005(A329607(n+1))-A000005(n+1)` -/
def P4038414722663043270.Spec : Prop :=
  ∀ n, P4038414722663043270.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P1963020555146111242

`2*A000005(A338224(n+1))-A000005(n+1)`
-/

namespace A048106.P1963020555146111242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A338224 (n + 1)).toNat - A000005 (n + 1)

end

end A048106.P1963020555146111242

namespace A048106

/-- `2*A000005(A338224(n+1))-A000005(n+1)` -/
def P1963020555146111242.Spec : Prop :=
  ∀ n, P1963020555146111242.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P1047174773349644326

`A000005(A007947(n+1))-∑{d}[n+1, A107078(#)]`
-/

namespace A048106.P1047174773349644326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), A107078 d

end

end A048106.P1047174773349644326

namespace A048106

/-- `A000005(A007947(n+1))-∑{d}[n+1, A107078(#)]` -/
def P1047174773349644326.Spec : Prop :=
  ∀ n, P1047174773349644326.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P5720061073972404835

`A034444(n+1)+A309307(n+1)-A032741(n+1)`
-/

namespace A048106.P5720061073972404835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (A309307 (n + 1) - A032741 (n + 1))

end

end A048106.P5720061073972404835

namespace A048106

/-- `A034444(n+1)+A309307(n+1)-A032741(n+1)` -/
def P5720061073972404835.Spec : Prop :=
  ∀ n, P5720061073972404835.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P8253468808657975892

`A351394(n+1)-(A048105(n+1)+A046660(n+1))`
-/

namespace A048106.P8253468808657975892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351394 (n + 1) - (A048105 (n + 1) + A046660 (n + 1))

end

end A048106.P8253468808657975892

namespace A048106

/-- `A351394(n+1)-(A048105(n+1)+A046660(n+1))` -/
def P8253468808657975892.Spec : Prop :=
  ∀ n, P8253468808657975892.a n = A048106 (n + 1)

end A048106

/-! ## A048106.P16822909481209223709

`A034444(n+1)+A034448(n+1)-A394481(n+1)`
-/

namespace A048106.P16822909481209223709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (A034448 (n + 1) - A394481 (n + 1))

end

end A048106.P16822909481209223709

namespace A048106

/-- `A034444(n+1)+A034448(n+1)-A394481(n+1)` -/
def P16822909481209223709.Spec : Prop :=
  ∀ n, P16822909481209223709.a n = A048106 (n + 1)

end A048106

/-!
# A048107: Numbers k such that the number of unitary divisors of k (A034444) is larger than the number of non-unitary divisors of k (A048105).

The programs for A048107, the canonical program `A048107.P6210159664874137761` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048107 has offset 1).

The definition of A048107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048107.P1399803808899729358

`eq[1, A348947(n+1)]+1`
-/

namespace A048107.P1399803808899729358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048107.P1399803808899729358

namespace A048107

/-- `eq[1, A348947(n+1)]+1` -/
def P1399803808899729358.Spec : Prop :=
  ∀ n, (P1399803808899729358.a n : ℤ) = A048107 (n + 1)

end A048107

/-! ## A048107.P3840006070762099909

`eq[1, A348948(n+1)]+1`
-/

namespace A048107.P3840006070762099909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048107.P3840006070762099909

namespace A048107

/-- `eq[1, A348948(n+1)]+1` -/
def P3840006070762099909.Spec : Prop :=
  ∀ n, (P3840006070762099909.a n : ℤ) = A048107 (n + 1)

end A048107

/-! ## A048107.P16224937036595425541

`eq[1, A359471(n+1)]+1`
-/

namespace A048107.P16224937036595425541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048107.P16224937036595425541

namespace A048107

/-- `eq[1, A359471(n+1)]+1` -/
def P16224937036595425541.Spec : Prop :=
  ∀ n, (P16224937036595425541.a n : ℤ) = A048107 (n + 1)

end A048107

/-! ## A048107.P5831032631041514338

`lt[A359431(n+1), 1]+1`
-/

namespace A048107.P5831032631041514338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359431 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048107.P5831032631041514338

namespace A048107

/-- `lt[A359431(n+1), 1]+1` -/
def P5831032631041514338.Spec : Prop :=
  ∀ n, (P5831032631041514338.a n : ℤ) = A048107 (n + 1)

end A048107

/-! ## A048107.P5138427616998208191

`lt[A336567(n+1), 2]+1`
-/

namespace A048107.P5138427616998208191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336567 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048107.P5138427616998208191

namespace A048107

/-- `lt[A336567(n+1), 2]+1` -/
def P5138427616998208191.Spec : Prop :=
  ∀ n, (P5138427616998208191.a n : ℤ) = A048107 (n + 1)

end A048107

/-! ## A048107.P6210159664874137761

`lt[A005361(n+1), 3]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048107

/-- `lt[A005361(n+1), 3]+1` -/
def P6210159664874137761.Spec : Prop :=
  ∀ n, (P6210159664874137761.a n : ℤ) = A048107 (n + 1)

theorem P6210159664874137761.correct : P6210159664874137761.Spec := by
  intro n
  simp only [A048107, Nat.add_sub_cancel]

end A048107

/-! ## A048107.P10441799975351726347

`eq[1, A280451(A038538(n+1))]+1`
-/

namespace A048107.P10441799975351726347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280451 (A038538 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048107.P10441799975351726347

namespace A048107

/-- `eq[1, A280451(A038538(n+1))]+1` -/
def P10441799975351726347.Spec : Prop :=
  ∀ n, (P10441799975351726347.a n : ℤ) = A048107 (n + 1)

end A048107

/-! ## A048107.P13758102717621321791

`eq[A000010(A317934(n+1)), A317941(n+1)]+1`
-/

namespace A048107.P13758102717621321791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A317934 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048107.P13758102717621321791

namespace A048107

/-- `eq[A000010(A317934(n+1)), A317941(n+1)]+1` -/
def P13758102717621321791.Spec : Prop :=
  ∀ n, (P13758102717621321791.a n : ℤ) = A048107 (n + 1)

end A048107

/-! ## A048107.P689067194180831503

`eq[A119764(A295879(n+1)), A295879(n+1)]+1`
-/

namespace A048107.P689067194180831503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119764 (A295879 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048107.P689067194180831503

namespace A048107

/-- `eq[A119764(A295879(n+1)), A295879(n+1)]+1` -/
def P689067194180831503.Spec : Prop :=
  ∀ n, (P689067194180831503.a n : ℤ) = A048107 (n + 1)

end A048107

/-! ## A048107.P13835086947198210925

`filter[A004709(n+1), A359471(#)]`
-/

namespace A048107.P13835086947198210925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A048107.P13835086947198210925

namespace A048107

/-- `filter[A004709(n+1), A359471(#)]` -/
def P13835086947198210925.Spec : Prop :=
  ∀ n, P13835086947198210925.a n = A048107 (n + 1)

end A048107

/-! ## A048107.P7025220063927066960

`filter[A253781(n+1), A359471(#)]`
-/

namespace A048107.P7025220063927066960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A048107.P7025220063927066960

namespace A048107

/-- `filter[A253781(n+1), A359471(#)]` -/
def P7025220063927066960.Spec : Prop :=
  ∀ n, P7025220063927066960.a n = A048107 (n + 1)

end A048107

/-! ## A048107.P10004538251633975822

`filter[A377019(n+1), A359471(#)]`
-/

namespace A048107.P10004538251633975822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A048107.P10004538251633975822

namespace A048107

/-- `filter[A377019(n+1), A359471(#)]` -/
def P10004538251633975822.Spec : Prop :=
  ∀ n, P10004538251633975822.a n = A048107 (n + 1)

end A048107

/-! ## A048107.P17266901150414371584

`filter[A380693(n+1), A359471(#)]`
-/

namespace A048107.P17266901150414371584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A048107.P17266901150414371584

namespace A048107

/-- `filter[A380693(n+1), A359471(#)]` -/
def P17266901150414371584.Spec : Prop :=
  ∀ n, P17266901150414371584.a n = A048107 (n + 1)

end A048107

/-! ## A048107.P8437299026236496931

`filter[A207481(n+1), A359471(#)]`
-/

namespace A048107.P8437299026236496931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A048107.P8437299026236496931

namespace A048107

/-- `filter[A207481(n+1), A359471(#)]` -/
def P8437299026236496931.Spec : Prop :=
  ∀ n, P8437299026236496931.a n = A048107 (n + 1)

end A048107

/-! ## A048107.P14846995608937342582

`filter[A138302(n+1), A359471(#)]`
-/

namespace A048107.P14846995608937342582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A048107.P14846995608937342582

namespace A048107

/-- `filter[A138302(n+1), A359471(#)]` -/
def P14846995608937342582.Spec : Prop :=
  ∀ n, P14846995608937342582.a n = A048107 (n + 1)

end A048107

/-! ## A048107.P6811488019860793864

`filter[A047592(n+1), A359471(#)]`
-/

namespace A048107.P6811488019860793864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A048107.P6811488019860793864

namespace A048107

/-- `filter[A047592(n+1), A359471(#)]` -/
def P6811488019860793864.Spec : Prop :=
  ∀ n, P6811488019860793864.a n = A048107 (n + 1)

end A048107

/-! ## A048107.P4860972032252315471

`filter[A270428(n+1), A359471(#)]`
-/

namespace A048107.P4860972032252315471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A048107.P4860972032252315471

namespace A048107

/-- `filter[A270428(n+1), A359471(#)]` -/
def P4860972032252315471.Spec : Prop :=
  ∀ n, P4860972032252315471.a n = A048107 (n + 1)

end A048107

/-! ## A048107.P10568135853320036862

`lt[∏{e}[n+1, #], 3]+1`
-/

namespace A048107.P10568135853320036862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A048107.P10568135853320036862

namespace A048107

/-- `lt[∏{e}[n+1, #], 3]+1` -/
def P10568135853320036862.Spec : Prop :=
  ∀ n, (P10568135853320036862.a n : ℤ) = A048107 (n + 1)

end A048107

/-!
# A048108: Numbers with at least as many non-unitary divisors (A048105) as unitary divisors (A034444).

The programs for A048108, the canonical program `A048108.P13981504203127248285` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048108 has offset 1).

The definition of A048108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048108.P13041419021233021499

`sqrt(A321070(n+1))`
-/

namespace A048108.P13041419021233021499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A321070 (n + 1) : ℝ)

end

end A048108.P13041419021233021499

namespace A048108

/-- `sqrt(A321070(n+1))` -/
def P13041419021233021499.Spec : Prop :=
  ∀ n, P13041419021233021499.a n = (A048108 (n + 1) : ℝ)

end A048108

/-! ## A048108.P13752857253730765747

`∪[A036785(n+1), A046099(n+1)]`
-/

namespace A048108.P13752857253730765747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P13752857253730765747

namespace A048108

/-- `∪[A036785(n+1), A046099(n+1)]` -/
def P13752857253730765747.Spec : Prop :=
  ∀ n, (P13752857253730765747.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P13981504203127248285

`∪[A046099(n+1), A048111(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A048108

/-- `∪[A046099(n+1), A048111(n+1)]` -/
def P13981504203127248285.Spec : Prop :=
  ∀ n, (P13981504203127248285.a n : ℤ) = A048108 (n + 1)

theorem P13981504203127248285.correct : P13981504203127248285.Spec := by
  intro n
  simp only [A048108, Nat.add_sub_cancel]

end A048108

/-! ## A048108.P6543856694499067397

`∪[A048109(n+1), A048111(n+1)]`
-/

namespace A048108.P6543856694499067397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P6543856694499067397

namespace A048108

/-- `∪[A048109(n+1), A048111(n+1)]` -/
def P6543856694499067397.Spec : Prop :=
  ∀ n, (P6543856694499067397.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P11108984892030758100

`∪[A046099(n+1), A072413(n+1)]`
-/

namespace A048108.P11108984892030758100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P11108984892030758100

namespace A048108

/-- `∪[A046099(n+1), A072413(n+1)]` -/
def P11108984892030758100.Spec : Prop :=
  ∀ n, (P11108984892030758100.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P16110120661272652099

`∪[A046099(n+1), A082295(n+1)]`
-/

namespace A048108.P16110120661272652099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P16110120661272652099

namespace A048108

/-- `∪[A046099(n+1), A082295(n+1)]` -/
def P16110120661272652099.Spec : Prop :=
  ∀ n, (P16110120661272652099.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P13044825929727649601

`∪[A048111(n+1), A175496(n+1)]`
-/

namespace A048108.P13044825929727649601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P13044825929727649601

namespace A048108

/-- `∪[A048111(n+1), A175496(n+1)]` -/
def P13044825929727649601.Spec : Prop :=
  ∀ n, (P13044825929727649601.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P4306142987478791559

`∪[A048111(n+1), A176297(n+1)]`
-/

namespace A048108.P4306142987478791559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P4306142987478791559

namespace A048108

/-- `∪[A048111(n+1), A176297(n+1)]` -/
def P4306142987478791559.Spec : Prop :=
  ∀ n, (P4306142987478791559.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P1256602159942515974

`∪[A048111(n+1), A177899(n+1)]`
-/

namespace A048108.P1256602159942515974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P1256602159942515974

namespace A048108

/-- `∪[A048111(n+1), A177899(n+1)]` -/
def P1256602159942515974.Spec : Prop :=
  ∀ n, (P1256602159942515974.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P838897492776900461

`∪[A048111(n+1), A195086(n+1)]`
-/

namespace A048108.P838897492776900461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P838897492776900461

namespace A048108

/-- `∪[A048111(n+1), A195086(n+1)]` -/
def P838897492776900461.Spec : Prop :=
  ∀ n, (P838897492776900461.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P8981120237372352905

`∪[A048111(n+1), A240111(n+1)]`
-/

namespace A048108.P8981120237372352905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P8981120237372352905

namespace A048108

/-- `∪[A048111(n+1), A240111(n+1)]` -/
def P8981120237372352905.Spec : Prop :=
  ∀ n, (P8981120237372352905.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P13702496759325525517

`∪[A048111(n+1), A295661(n+1)]`
-/

namespace A048108.P13702496759325525517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P13702496759325525517

namespace A048108

/-- `∪[A048111(n+1), A295661(n+1)]` -/
def P13702496759325525517.Spec : Prop :=
  ∀ n, (P13702496759325525517.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P7125011706849582145

`∪[A048111(n+1), A301517(n+1)]`
-/

namespace A048108.P7125011706849582145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P7125011706849582145

namespace A048108

/-- `∪[A048111(n+1), A301517(n+1)]` -/
def P7125011706849582145.Spec : Prop :=
  ∀ n, (P7125011706849582145.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P7386998763414482126

`∪[A048111(n+1), A325990(n+1)]`
-/

namespace A048108.P7386998763414482126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P7386998763414482126

namespace A048108

/-- `∪[A048111(n+1), A325990(n+1)]` -/
def P7386998763414482126.Spec : Prop :=
  ∀ n, (P7386998763414482126.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P2165786166484634842

`∪[A048111(n+1), A336593(n+1)]`
-/

namespace A048108.P2165786166484634842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P2165786166484634842

namespace A048108

/-- `∪[A048111(n+1), A336593(n+1)]` -/
def P2165786166484634842.Spec : Prop :=
  ∀ n, (P2165786166484634842.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P13150515266952680862

`∪[A036785(n+1), A375145(n+1)]`
-/

namespace A048108.P13150515266952680862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P13150515266952680862

namespace A048108

/-- `∪[A036785(n+1), A375145(n+1)]` -/
def P13150515266952680862.Spec : Prop :=
  ∀ n, (P13150515266952680862.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P506538492323379340

`∪[A048111(n+1), A366761(n+1)]`
-/

namespace A048108.P506538492323379340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P506538492323379340

namespace A048108

/-- `∪[A048111(n+1), A366761(n+1)]` -/
def P506538492323379340.Spec : Prop :=
  ∀ n, (P506538492323379340.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P10422364662249332649

`∪[A048111(n+1), A374590(n+1)]`
-/

namespace A048108.P10422364662249332649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P10422364662249332649

namespace A048108

/-- `∪[A048111(n+1), A374590(n+1)]` -/
def P10422364662249332649.Spec : Prop :=
  ∀ n, (P10422364662249332649.a n : ℤ) = A048108 (n + 1)

end A048108

/-! ## A048108.P11293102892927286541

`∪[A381312(n+1), A048111(n+1)]`
-/

namespace A048108.P11293102892927286541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P11293102892927286541

namespace A048108

/-- `∪[A381312(n+1), A048111(n+1)]` -/
def P11293102892927286541.Spec : Prop :=
  ∀ n, (P11293102892927286541.a n : ℤ) = A048108 (n + 1)

end A048108

/-!
# A048109: Numbers having equally many squarefree and nonsquarefree divisors; number of unitary divisors of n (A034444) = number of non-unitary divisors of n (A048105).

The programs for A048109, the canonical program `A048109.P10170578425489534564` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048109 has offset 1).

The definition of A048109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048109.P5263773107621363696

`∩[A175496(n+1), A195086(n+1)]`
-/

namespace A048109.P5263773107621363696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048109.P5263773107621363696

namespace A048109

/-- `∩[A175496(n+1), A195086(n+1)]` -/
def P5263773107621363696.Spec : Prop :=
  ∀ n, (P5263773107621363696.a n : ℤ) = A048109 (n + 1)

end A048109

/-! ## A048109.P3954815810468099239

`∩[A176297(n+1), A195086(n+1)]`
-/

namespace A048109.P3954815810468099239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048109.P3954815810468099239

namespace A048109

/-- `∩[A176297(n+1), A195086(n+1)]` -/
def P3954815810468099239.Spec : Prop :=
  ∀ n, (P3954815810468099239.a n : ℤ) = A048109 (n + 1)

end A048109

/-! ## A048109.P13272132010334338228

`∩[A195086(n+1), A301517(n+1)]`
-/

namespace A048109.P13272132010334338228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048109.P13272132010334338228

namespace A048109

/-- `∩[A195086(n+1), A301517(n+1)]` -/
def P13272132010334338228.Spec : Prop :=
  ∀ n, (P13272132010334338228.a n : ℤ) = A048109 (n + 1)

end A048109

/-! ## A048109.P11449677925548173450

`filter[A013929(n+1), A359472(#)]`
-/

namespace A048109.P11449677925548173450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P11449677925548173450

namespace A048109

/-- `filter[A013929(n+1), A359472(#)]` -/
def P11449677925548173450.Spec : Prop :=
  ∀ n, P11449677925548173450.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P15052589725728873044

`filter[A175496(n+1), A359472(#)]`
-/

namespace A048109.P15052589725728873044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P15052589725728873044

namespace A048109

/-- `filter[A175496(n+1), A359472(#)]` -/
def P15052589725728873044.Spec : Prop :=
  ∀ n, P15052589725728873044.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P4790711871599843339

`filter[A176297(n+1), A359466(#)]`
-/

namespace A048109.P4790711871599843339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A048109.P4790711871599843339

namespace A048109

/-- `filter[A176297(n+1), A359466(#)]` -/
def P4790711871599843339.Spec : Prop :=
  ∀ n, P4790711871599843339.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P8223905173081174389

`filter[A176297(n+1), A359472(#)]`
-/

namespace A048109.P8223905173081174389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P8223905173081174389

namespace A048109

/-- `filter[A176297(n+1), A359472(#)]` -/
def P8223905173081174389.Spec : Prop :=
  ∀ n, P8223905173081174389.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P4199821866755499402

`filter[A195086(n+1), A359466(#)]`
-/

namespace A048109.P4199821866755499402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A048109.P4199821866755499402

namespace A048109

/-- `filter[A195086(n+1), A359466(#)]` -/
def P4199821866755499402.Spec : Prop :=
  ∀ n, P4199821866755499402.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P3348523159376996194

`filter[A195086(n+1), A359472(#)]`
-/

namespace A048109.P3348523159376996194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P3348523159376996194

namespace A048109

/-- `filter[A195086(n+1), A359472(#)]` -/
def P3348523159376996194.Spec : Prop :=
  ∀ n, P3348523159376996194.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P14415921942123030025

`filter[A195086(n+1), A359473(#)]`
-/

namespace A048109.P14415921942123030025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A048109.P14415921942123030025

namespace A048109

/-- `filter[A195086(n+1), A359473(#)]` -/
def P14415921942123030025.Spec : Prop :=
  ∀ n, P14415921942123030025.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P6477053219091355580

`filter[A301517(n+1), A359472(#)]`
-/

namespace A048109.P6477053219091355580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P6477053219091355580

namespace A048109

/-- `filter[A301517(n+1), A359472(#)]` -/
def P6477053219091355580.Spec : Prop :=
  ∀ n, P6477053219091355580.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P10170578425489534564

`filter[A336593(n+1), A359472(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048109

/-- `filter[A336593(n+1), A359472(#)]` -/
def P10170578425489534564.Spec : Prop :=
  ∀ n, P10170578425489534564.a n = A048109 (n + 1)

theorem P10170578425489534564.correct : P10170578425489534564.Spec := by
  intro n
  simp only [A048109, Nat.add_sub_cancel]

end A048109

/-! ## A048109.P7185017624737377693

`filter[A375072(n+1), A359466(#)]`
-/

namespace A048109.P7185017624737377693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A048109.P7185017624737377693

namespace A048109

/-- `filter[A375072(n+1), A359466(#)]` -/
def P7185017624737377693.Spec : Prop :=
  ∀ n, P7185017624737377693.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P10449060248056940625

`filter[A375072(n+1), A359472(#)]`
-/

namespace A048109.P10449060248056940625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P10449060248056940625

namespace A048109

/-- `filter[A375072(n+1), A359472(#)]` -/
def P10449060248056940625.Spec : Prop :=
  ∀ n, P10449060248056940625.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P7303371826154521311

`filter[A376198(n+1), A359472(#)]`
-/

namespace A048109.P7303371826154521311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P7303371826154521311

namespace A048109

/-- `filter[A376198(n+1), A359472(#)]` -/
def P7303371826154521311.Spec : Prop :=
  ∀ n, P7303371826154521311.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P5767615136248420052

`filter[A381315(n+1), A359466(#)]`
-/

namespace A048109.P5767615136248420052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A048109.P5767615136248420052

namespace A048109

/-- `filter[A381315(n+1), A359466(#)]` -/
def P5767615136248420052.Spec : Prop :=
  ∀ n, P5767615136248420052.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P16330369451676101534

`filter[A381312(n+1), A359472(#)]`
-/

namespace A048109.P16330369451676101534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P16330369451676101534

namespace A048109

/-- `filter[A381312(n+1), A359472(#)]` -/
def P16330369451676101534.Spec : Prop :=
  ∀ n, P16330369451676101534.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P2887368896100926449

`filter[A381315(n+1), A359472(#)]`
-/

namespace A048109.P2887368896100926449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P2887368896100926449

namespace A048109

/-- `filter[A381315(n+1), A359472(#)]` -/
def P2887368896100926449.Spec : Prop :=
  ∀ n, P2887368896100926449.a n = A048109 (n + 1)

end A048109

/-! ## A048109.P11542570876435095975

`filter[A381315(n+1), A359473(#)]`
-/

namespace A048109.P11542570876435095975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A048109.P11542570876435095975

namespace A048109

/-- `filter[A381315(n+1), A359473(#)]` -/
def P11542570876435095975.Spec : Prop :=
  ∀ n, P11542570876435095975.a n = A048109 (n + 1)

end A048109

/-!
# A048111: Number of unitary divisors of n (A034444) < number of non-unitary divisors of n (A048105).

The programs for A048111, the canonical program `A048111.P6696636643899640312` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048111 has offset 1).

The definition of A048111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048111.P6696636643899640312

`filter[A013929(n+1), A380454(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048111

/-- `filter[A013929(n+1), A380454(#)]` -/
def P6696636643899640312.Spec : Prop :=
  ∀ n, P6696636643899640312.a n = A048111 (n + 1)

theorem P6696636643899640312.correct : P6696636643899640312.Spec := by
  intro n
  simp only [A048111, Nat.add_sub_cancel]

end A048111

/-! ## A048111.P216305539857039648

`filter[A305800(n+1), A380454(#)]`
-/

namespace A048111.P216305539857039648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P216305539857039648

namespace A048111

/-- `filter[A305800(n+1), A380454(#)]` -/
def P216305539857039648.Spec : Prop :=
  ∀ n, P216305539857039648.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P10251778056209011047

`filter[A305801(n+1), A380454(#)]`
-/

namespace A048111.P10251778056209011047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P10251778056209011047

namespace A048111

/-- `filter[A305801(n+1), A380454(#)]` -/
def P10251778056209011047.Spec : Prop :=
  ∀ n, P10251778056209011047.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P15203611905352717422

`filter[A305900(n+1), A380454(#)]`
-/

namespace A048111.P15203611905352717422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P15203611905352717422

namespace A048111

/-- `filter[A305900(n+1), A380454(#)]` -/
def P15203611905352717422.Spec : Prop :=
  ∀ n, P15203611905352717422.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P8632076364815167541

`filter[A305903(n+1), A380454(#)]`
-/

namespace A048111.P8632076364815167541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P8632076364815167541

namespace A048111

/-- `filter[A305903(n+1), A380454(#)]` -/
def P8632076364815167541.Spec : Prop :=
  ∀ n, P8632076364815167541.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P805075648079221215

`filter[A305975(n+1), A380454(#)]`
-/

namespace A048111.P805075648079221215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P805075648079221215

namespace A048111

/-- `filter[A305975(n+1), A380454(#)]` -/
def P805075648079221215.Spec : Prop :=
  ∀ n, P805075648079221215.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P3284844815650970104

`filter[A305976(n+1), A380454(#)]`
-/

namespace A048111.P3284844815650970104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P3284844815650970104

namespace A048111

/-- `filter[A305976(n+1), A380454(#)]` -/
def P3284844815650970104.Spec : Prop :=
  ∀ n, P3284844815650970104.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P15832687957645294636

`filter[A305979(n+1), A380454(#)]`
-/

namespace A048111.P15832687957645294636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P15832687957645294636

namespace A048111

/-- `filter[A305979(n+1), A380454(#)]` -/
def P15832687957645294636.Spec : Prop :=
  ∀ n, P15832687957645294636.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P4463906681908346114

`filter[A319704(n+1), A380454(#)]`
-/

namespace A048111.P4463906681908346114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P4463906681908346114

namespace A048111

/-- `filter[A319704(n+1), A380454(#)]` -/
def P4463906681908346114.Spec : Prop :=
  ∀ n, P4463906681908346114.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P10327940930433586688

`filter[A319707(n+1), A380454(#)]`
-/

namespace A048111.P10327940930433586688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P10327940930433586688

namespace A048111

/-- `filter[A319707(n+1), A380454(#)]` -/
def P10327940930433586688.Spec : Prop :=
  ∀ n, P10327940930433586688.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P14819600280467540454

`filter[A331304(n+1), A380454(#)]`
-/

namespace A048111.P14819600280467540454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P14819600280467540454

namespace A048111

/-- `filter[A331304(n+1), A380454(#)]` -/
def P14819600280467540454.Spec : Prop :=
  ∀ n, P14819600280467540454.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P2542809430886290373

`filter[A379000(n+1), A380454(#)]`
-/

namespace A048111.P2542809430886290373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P2542809430886290373

namespace A048111

/-- `filter[A379000(n+1), A380454(#)]` -/
def P2542809430886290373.Spec : Prop :=
  ∀ n, P2542809430886290373.a n = A048111 (n + 1)

end A048111

/-! ## A048111.P28194620740000455

`∪[A036785(n+1), A046101(n+1)]`
-/

namespace A048111.P28194620740000455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048111.P28194620740000455

namespace A048111

/-- `∪[A036785(n+1), A046101(n+1)]` -/
def P28194620740000455.Spec : Prop :=
  ∀ n, (P28194620740000455.a n : ℤ) = A048111 (n + 1)

end A048111

/-! ## A048111.P7451237983830867231

`∪[A046101(n+1), A082295(n+1)]`
-/

namespace A048111.P7451237983830867231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048111.P7451237983830867231

namespace A048111

/-- `∪[A046101(n+1), A082295(n+1)]` -/
def P7451237983830867231.Spec : Prop :=
  ∀ n, (P7451237983830867231.a n : ℤ) = A048111 (n + 1)

end A048111

/-! ## A048111.P3307423304170470976

`∪[A082294(n+1), A082295(n+1)]`
-/

namespace A048111.P3307423304170470976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048111.P3307423304170470976

namespace A048111

/-- `∪[A082294(n+1), A082295(n+1)]` -/
def P3307423304170470976.Spec : Prop :=
  ∀ n, (P3307423304170470976.a n : ℤ) = A048111 (n + 1)

end A048111

/-! ## A048111.P13381529006717256739

`∪[A082295(n+1), A360723(n+1)]`
-/

namespace A048111.P13381529006717256739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048111.P13381529006717256739

namespace A048111

/-- `∪[A082295(n+1), A360723(n+1)]` -/
def P13381529006717256739.Spec : Prop :=
  ∀ n, (P13381529006717256739.a n : ℤ) = A048111 (n + 1)

end A048111

/-! ## A048111.P1848428599756533892

`filter[A305901(n+1), A380454(#)]`
-/

namespace A048111.P1848428599756533892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P1848428599756533892

namespace A048111

/-- `filter[A305901(n+1), A380454(#)]` -/
def P1848428599756533892.Spec : Prop :=
  ∀ n, P1848428599756533892.a n = A048111 (n + 1)

end A048111

/-!
# A048112: a(1) = 1, a(2) = 1, a(3) = 1, a(n) = a(n-3) * (a(n-2) + a(n-1)).

The programs for A048112, the canonical program `A048112.P13878167413498853716` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048112 has offset 1).

The definition of A048112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)*(a(n-2)+a(n-1))` (program `A048112.P13878167413498853716`, by `A048112.P13878167413498853716.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048112.P13878167413498853716

`a(n-3)*(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048112

/-- `a(n-3)*(a(n-2)+a(n-1))` -/
def P13878167413498853716.Spec : Prop :=
  ∀ n, (P13878167413498853716.a n : ℤ) = A048112 (n + 1)

theorem P13878167413498853716.correct : P13878167413498853716.Spec := by
  intro n
  simp only [A048112, Nat.add_sub_cancel]

end A048112

/-! ## A048112.P13930364469548344192

`(a(n-1)+a(n-2))*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A048112.P13930364469548344192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) * a (n - 3)

end

end A048112.P13930364469548344192

namespace A048112

/-- `(a(n-1)+a(n-2))*a(n-3)` -/
def P13930364469548344192.Spec : Prop :=
  ∀ n, (P13930364469548344192.a n : ℤ) = A048112 (n + 1)

end A048112

/-! ## A048112.P11820754992923497418

`(a(n-1)-floor(-a(n-2)))*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048112.P11820754992923497418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 3)

end

end A048112.P11820754992923497418

namespace A048112

/-- `(a(n-1)-floor(-a(n-2)))*a(n-3)` -/
def P11820754992923497418.Spec : Prop :=
  ∀ n, P11820754992923497418.a n = A048112 (n + 1)

end A048112

/-! ## A048112.P3814702211118239015

`(a(n-1)-round(-a(n-2)))*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A048112.P3814702211118239015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 3)

end

end A048112.P3814702211118239015

namespace A048112

/-- `(a(n-1)-round(-a(n-2)))*a(n-3)` -/
def P3814702211118239015.Spec : Prop :=
  ∀ n, P3814702211118239015.a n = A048112 (n + 1)

end A048112

/-! ## A048112.P10132292407221588044

`(a(n-1)+a(n-2))/a(n-3)^(-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A048112.P10132292407221588044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) / a (n - 3) ^ (-1 : ℤ)

end

end A048112.P10132292407221588044

namespace A048112

/-- `(a(n-1)+a(n-2))/a(n-3)^(-1)` -/
def P10132292407221588044.Spec : Prop :=
  ∀ n, P10132292407221588044.a n = (A048112 (n + 1) : ℚ)

end A048112

/-!
# A048113: Triangular array T read by rows: T(h,k) = number of paths consisting of steps from (1,1) to (h,k) such that each step has length 1 directed up or right and each vertex (i,j) satisfies i/2<=j<=2i, for h=0,1,2,... and k=0,1,2,...

The programs for A048113, there is no canonical definition to state claims against.
-/

/-! ## A048113.P9241471509551252087

`A238392(A168288(n))%A144464(n)`
-/

namespace A048113.P9241471509551252087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238392 (A168288 n).toNat) (A144464 n)

end

end A048113.P9241471509551252087

/-! ## A048113.P16211664174321828485

`lcm(A043562(n), A107329(A141690(n)))`
-/

namespace A048113.P16211664174321828485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043562 n) (A107329 (A141690 n).toNat)

end

end A048113.P16211664174321828485

/-! ## A048113.P7457612128871947497

`A238392(A196300(n+1))%A238392(n)`
-/

namespace A048113.P7457612128871947497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238392 (A196300 (n + 1)).toNat) (A238392 n)

end

end A048113.P7457612128871947497

/-! ## A048113.P4361795226466209511

`and(A047996(n), A227533(A196856(n+1)))`
-/

namespace A048113.P4361795226466209511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047996 n) (A227533 (A196856 (n + 1)).toNat)

end

end A048113.P4361795226466209511

/-! ## A048113.P8486827155249875863

`A003059(A188461(n))-A074279(A022166(n))`
-/

namespace A048113.P8486827155249875863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A188461 n).toNat - A074279 (A022166 n).toNat

end

end A048113.P8486827155249875863

/-!
# A048114: a(n) = Sum{T(n,i): i=0,1,...,n}, where T is given by A048113.

The programs for A048114, there is no canonical definition to state claims against.
-/

/-! ## A048114.P7805566300052083098

`∑{d}[A052706(n), A268357(#)]`
-/

namespace A048114.P7805566300052083098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A268357 d

end

end A048114.P7805566300052083098

/-! ## A048114.P1899624124700310978

`A114882(A318684(n))%A000312(n)`
-/

namespace A048114.P1899624124700310978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114882 (A318684 n).toNat) (A000312 n)

end

end A048114.P1899624124700310978

/-! ## A048114.P15297291835683436187

`A194445(A024318(n+1)-A004198(n))`
-/

namespace A048114.P15297291835683436187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194445 (A024318 (n + 1) - A004198 n).toNat

end

end A048114.P15297291835683436187

/-! ## A048114.P10646774456623661690

`A071625(A000108(n))*A321514(n+1)`
-/

namespace A048114.P10646774456623661690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A000108 n).toNat * A321514 (n + 1)

end

end A048114.P10646774456623661690

/-! ## A048114.P3134111795882984893

`A071625(A042469(n))*A327486(n+1)`
-/

namespace A048114.P3134111795882984893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A042469 n).toNat * A327486 (n + 1)

end

end A048114.P3134111795882984893

/-!
# A048115: (1/2)*Sum{T(n,i): i=0,1,...,n}, where T is given by A048113.

The programs for A048115, there is no canonical definition to state claims against.
-/

/-! ## A048115.P5128229694437667270

`A048114(n+3)/2`
-/

namespace A048115.P5128229694437667270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048114 (n + 3) : ℚ) / 2

end

end A048115.P5128229694437667270

/-! ## A048115.P5281986384052006046

`2^A133574(C(2, n)!)*A048114(n+3)`
-/

namespace A048115.P5281986384052006046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133574 (Nat.factorial (Nat.choose 2 n)) : ℤ) * (A048114 (n + 3) : ℚ)

end

end A048115.P5281986384052006046

/-! ## A048115.P13250014593167150728

`2^A133574(xor(n, n+1)+1)*A048114(n+3)`
-/

namespace A048115.P13250014593167150728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133574 (Nat.xor n (n + 1) + 1) : ℤ) * (A048114 (n + 3) : ℚ)

end

end A048115.P13250014593167150728

/-! ## A048115.P8306008769678458099

`2^A133574(A001316(n))*A048114(n+3)`
-/

namespace A048115.P8306008769678458099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) * (A048114 (n + 3) : ℚ)

end

end A048115.P8306008769678458099

/-! ## A048115.P10414429168563558531

`2^A133574(A000032(C(n, 64)))*A048114(n+3)`
-/

namespace A048115.P10414429168563558531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133574 (A000032 (Nat.choose n 64)).toNat : ℤ) * (A048114 (n + 3) : ℚ)

end

end A048115.P10414429168563558531

/-!
# A048116: a(n) = T(2n,n), where T is given by A048113.

The programs for A048116, there is no canonical definition to state claims against.
-/

/-! ## A048116.P7586137560285298613

`A000007(n)+2*A048118(n)`
-/

namespace A048116.P7586137560285298613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A048118 n

end

end A048116.P7586137560285298613

/-! ## A048116.P16455752271364476247

`A048118(A028310(n))+A048118(n)`
-/

namespace A048116.P16455752271364476247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 (A028310 n).toNat + A048118 n

end

end A048116.P16455752271364476247

/-! ## A048116.P8928745930227058549

`A048118(A000007(n)+n)+A048118(n)`
-/

namespace A048116.P8928745930227058549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 (A000007 n + (n : ℤ)).toNat + A048118 n

end

end A048116.P8928745930227058549

/-! ## A048116.P6299575394597791217

`A048118(A004277(n)-n)+A048118(n)`
-/

namespace A048116.P6299575394597791217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 (A004277 n - (n : ℤ)).toNat + A048118 n

end

end A048116.P6299575394597791217

/-! ## A048116.P13571678704534281589

`A006530(A001316(n))*A048118(A028310(n))`
-/

namespace A048116.P13571678704534281589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A048118 (A028310 n).toNat

end

end A048116.P13571678704534281589

/-! ## A048116.P9381095528676302219

`A048118(n+1)-A048120(n+1)`
-/

namespace A048116.P9381095528676302219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 (n + 1) - A048120 (n + 1)

end

end A048116.P9381095528676302219

/-! ## A048116.P5843255230213769819

`A048117(n+2)-A048120(n+1)`
-/

namespace A048116.P5843255230213769819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048117 (n + 2) - A048120 (n + 1)

end

end A048116.P5843255230213769819

/-! ## A048116.P15158370015342440248

`A048117(n+2)-2*A048121(n+1)`
-/

namespace A048116.P15158370015342440248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048117 (n + 2) - 2 * A048121 (n + 1)

end

end A048116.P15158370015342440248

/-! ## A048116.P17332137518809852518

`A048118(n+1)-(A048121(n+1)+A048121(n+1))`
-/

namespace A048116.P17332137518809852518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 (n + 1) - (A048121 (n + 1) + A048121 (n + 1))

end

end A048116.P17332137518809852518

/-! ## A048116.P4270502907656936329

`A048119(n+2)-(A048121(n+2)+A048120(n+1))`
-/

namespace A048116.P4270502907656936329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048119 (n + 2) - (A048121 (n + 2) + A048120 (n + 1))

end

end A048116.P4270502907656936329

/-! ## A048116.P6091757449417769119

`A048113(∑[4*(n+1)])`
-/

namespace A048116.P6091757449417769119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048116.P6091757449417769119

/-!
# A048117: a(n)=(1/2)*T(2n,n), where T is given by A048113.

The programs for A048117, there is no canonical definition to state claims against.
-/

/-! ## A048117.P4000515476163765586

`A048118(n+1)`
-/

namespace A048117.P4000515476163765586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 (n + 1)

end

end A048117.P4000515476163765586

/-! ## A048117.P5296234553836899716

`∑[abs(Δ[A048118(n)])]`
-/

namespace A048117.P5296234553836899716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048117.P5296234553836899716

/-! ## A048117.P17787864425865578580

`A048116(n+2)/2`
-/

namespace A048117.P17787864425865578580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048116 (n + 2) : ℚ) / 2

end

end A048117.P17787864425865578580

/-! ## A048117.P14198282451421609182

`record[A048118(abs(1-n))]`
-/

namespace A048117.P14198282451421609182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048117.P14198282451421609182

/-! ## A048117.P5355653944638173279

`a(n-1)*ratio[A048116(n+1)]` with `a(0)=1`
-/

namespace A048117.P5355653944638173279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048116 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A048117.P5355653944638173279

/-! ## A048117.P17145188915228424023

`A048120(n+1)+A048116(n+1)`
-/

namespace A048117.P17145188915228424023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048120 (n + 1) + A048116 (n + 1)

end

end A048117.P17145188915228424023

/-! ## A048117.P6643841857704854455

`A048119(n+2)-A048121(n+2)`
-/

namespace A048117.P6643841857704854455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048119 (n + 2) - A048121 (n + 2)

end

end A048117.P6643841857704854455

/-! ## A048117.P15006903603700527719

`A048116(n+1)+2*A048121(n+1)`
-/

namespace A048117.P15006903603700527719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048116 (n + 1) + 2 * A048121 (n + 1)

end

end A048117.P15006903603700527719

/-! ## A048117.P9423034744499593523

`A048113(2*(n+2)²)`
-/

namespace A048117.P9423034744499593523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (2 * (n + 2) ^ 2)

end

end A048117.P9423034744499593523

/-! ## A048117.P3277350414289943893

`record[A048113(A053439(n+2))]`
-/

namespace A048117.P3277350414289943893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (A053439 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048117.P3277350414289943893

/-!
# A048118: a(n)=T(2n+1,n+1), where T is given by A048113.

The programs for A048118, there is no canonical definition to state claims against.
-/

/-! ## A048118.P15562319960204282121

`floor(A048116(n+1)/2)`
-/

namespace A048118.P15562319960204282121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048116 (n + 1) : ℚ) / 2⌋

end

end A048118.P15562319960204282121

/-! ## A048118.P17678696096388908730

`lcm(A048116(n+1), A055640(n))/2`
-/

namespace A048118.P17678696096388908730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048116 (n + 1)) (A055640 n) : ℚ) / 2

end

end A048118.P17678696096388908730

/-! ## A048118.P4540463992585207527

`A048113(2*(n+1)²)`
-/

namespace A048118.P4540463992585207527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (2 * (n + 1) ^ 2)

end

end A048118.P4540463992585207527

/-! ## A048118.P2807253608442086152

`record[A048113(A053439(n))]`
-/

namespace A048118.P2807253608442086152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048118.P2807253608442086152

/-! ## A048118.P10815288725353267665

`record[A048113(A128223(n))]`
-/

namespace A048118.P10815288725353267665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (A128223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048118.P10815288725353267665

/-! ## A048118.P1701465326802333974

`record[A048113(A032742(n+1)²+A032742(n+1)²)]`
-/

namespace A048118.P1701465326802333974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (A032742 (n + 1) ^ 2 + A032742 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048118.P1701465326802333974

/-! ## A048118.P2041125724511960572

`record[A048113(n*A051731(n+1))]`
-/

namespace A048118.P2041125724511960572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 ((n : ℤ) * A051731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048118.P2041125724511960572

/-!
# A048119: a(n)=(1/2)*T(2n+1,n+1), where T is given by A048113.

The programs for A048119, there is no canonical definition to state claims against.
-/

/-! ## A048119.P9503832899128330770

`A048121(n+2)+A048118(n+1)`
-/

namespace A048119.P9503832899128330770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048121 (n + 2) + A048118 (n + 1)

end

end A048119.P9503832899128330770

/-! ## A048119.P14570353559473794775

`A048121(n+2)+A048117(n+2)`
-/

namespace A048119.P14570353559473794775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048121 (n + 2) + A048117 (n + 2)

end

end A048119.P14570353559473794775

/-! ## A048119.P13031301849209327120

`A048118(n+1)+A048120(n+2)/2`
-/

namespace A048119.P13031301849209327120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048118 (n + 1) : ℚ) + (A048120 (n + 2) : ℚ) / 2

end

end A048119.P13031301849209327120

/-! ## A048119.P12156859708273338639

`A048121(n+2)+A048116(n+2)/2`
-/

namespace A048119.P12156859708273338639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048121 (n + 2) : ℚ) + (A048116 (n + 2) : ℚ) / 2

end

end A048119.P12156859708273338639

/-! ## A048119.P6303108677398394671

`A048118(n+2)/2`
-/

namespace A048119.P6303108677398394671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048118 (n + 2) : ℚ) / 2

end

end A048119.P6303108677398394671

/-! ## A048119.P7242064181674185545

`A048117(n+3)/2`
-/

namespace A048119.P7242064181674185545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048117 (n + 3) : ℚ) / 2

end

end A048119.P7242064181674185545

/-! ## A048119.P3867091307180372418

`A048116(n+3)/4`
-/

namespace A048119.P3867091307180372418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048116 (n + 3) : ℚ) / 4

end

end A048119.P3867091307180372418

/-!
# A048120: a(n)=T(2n,n+1), where T is given by A048113.

The programs for A048120, there is no canonical definition to state claims against.
-/

/-! ## A048120.P4287062299724158337

`2*A048121(n+1)`
-/

namespace A048120.P4287062299724158337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048121 (n + 1)

end

end A048120.P4287062299724158337

/-! ## A048120.P6961968308900804548

`A048118(n+1)-A048116(n+1)`
-/

namespace A048120.P6961968308900804548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048118 (n + 1) - A048116 (n + 1)

end

end A048120.P6961968308900804548

/-! ## A048120.P4047022035006254538

`A048117(n+2)-A048116(n+1)`
-/

namespace A048120.P4047022035006254538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048117 (n + 2) - A048116 (n + 1)

end

end A048120.P4047022035006254538

/-! ## A048120.P9035528940217863563

`A048116(n+2)/2-A048116(n+1)`
-/

namespace A048120.P9035528940217863563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048116 (n + 2) : ℚ) / 2 - (A048116 (n + 1) : ℚ)

end

end A048120.P9035528940217863563

/-! ## A048120.P6972355126084168441

`A048117(n+2)-(A000007(n)+2*A048118(n))`
-/

namespace A048120.P6972355126084168441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048117 (n + 2) - (A000007 n + 2 * A048118 n)

end

end A048120.P6972355126084168441

/-! ## A048120.P13162571190724170979

`A048119(n+2)-(A048121(n+2)+A048116(n+1))`
-/

namespace A048120.P13162571190724170979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048119 (n + 2) - (A048121 (n + 2) + A048116 (n + 1))

end

end A048120.P13162571190724170979

/-! ## A048120.P16806528385683210464

`A048113((n+1)²+(n+2)²)`
-/

namespace A048120.P16806528385683210464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A048120.P16806528385683210464

/-!
# A048121: a(n) = (1/2)*T(2n,n+1), where T is given by A048113.

The programs for A048121, there is no canonical definition to state claims against.
-/

/-! ## A048121.P5193326848524727940

`A048120(n+1)/2`
-/

namespace A048121.P5193326848524727940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048120 (n + 1) : ℚ) / 2

end

end A048121.P5193326848524727940

/-! ## A048121.P4462877474506491898

`(A048117(n+2)-A048116(n+1))/2`
-/

namespace A048121.P4462877474506491898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048117 (n + 2) - A048116 (n + 1) : ℚ) / 2

end

end A048121.P4462877474506491898

/-! ## A048121.P6940280621522071721

`A048113(A001844(n+1))/2`
-/

namespace A048121.P6940280621522071721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (A001844 (n + 1)).toNat : ℚ) / 2

end

end A048121.P6940280621522071721

/-! ## A048121.P73714805695444902

`A048113(A090288(n)+1)/2`
-/

namespace A048121.P73714805695444902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (A090288 n + 1).toNat : ℚ) / 2

end

end A048121.P73714805695444902

/-! ## A048121.P121208741253833898

`A048113(A099776(n+1))/2`
-/

namespace A048121.P121208741253833898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (A099776 (n + 1)).toNat : ℚ) / 2

end

end A048121.P121208741253833898

/-! ## A048121.P2153832365413036142

`A048113(A132209(n+1))/2`
-/

namespace A048121.P2153832365413036142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (A132209 (n + 1)).toNat : ℚ) / 2

end

end A048121.P2153832365413036142

/-! ## A048121.P13391067895053001230

`A048113(A142463(n+1))/2`
-/

namespace A048121.P13391067895053001230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (A142463 (n + 1)).toNat : ℚ) / 2

end

end A048121.P13391067895053001230

/-! ## A048121.P6243805062353944288

`A048113(A296911(n+1))/2`
-/

namespace A048121.P6243805062353944288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (A296911 (n + 1)).toNat : ℚ) / 2

end

end A048121.P6243805062353944288

/-! ## A048121.P9290714484844723132

`A048113(A059993(n)+2)/2`
-/

namespace A048121.P9290714484844723132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (A059993 n + 2).toNat : ℚ) / 2

end

end A048121.P9290714484844723132

/-! ## A048121.P15770809809602521203

`A048113(or(1, A090288(n)))/2`
-/

namespace A048121.P15770809809602521203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (Int.lor 1 (A090288 n)).toNat : ℚ) / 2

end

end A048121.P15770809809602521203

/-! ## A048121.P4878223134071277742

`A048113(or(2, A059993(n)))/2`
-/

namespace A048121.P4878223134071277742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048113 (Int.lor 2 (A059993 n)).toNat : ℚ) / 2

end

end A048121.P4878223134071277742

/-!
# A048122: a(1) = 1, a(2) = 2, a(n) = a(n-1)^3 - a(n-2)^3.

The programs for A048122, the canonical program `A048122.P11928516196453905333` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048122 has offset 1).

The definition of A048122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3-a(n-2)^3` (program `A048122.P11928516196453905333`, by `A048122.P11928516196453905333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048122.P11928516196453905333

`a(n-1)^3-a(n-2)^3` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048122

/-- `a(n-1)^3-a(n-2)^3` -/
def P11928516196453905333.Spec : Prop :=
  ∀ n, P11928516196453905333.a n = A048122 (n + 1)

theorem P11928516196453905333.correct : P11928516196453905333.Spec := by
  intro n
  simp only [A048122, Nat.add_sub_cancel]

end A048122

/-!
# A048123: Smallest n-digit Carmichael numbers.

The programs for A048123, there is no canonical definition to state claims against.
-/

/-! ## A048123.P4631471995104183962

`A002997(A055553(n+2)+1)`
-/

namespace A048123.P4631471995104183962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (A055553 (n + 2) + 1).toNat

end

end A048123.P4631471995104183962

/-!
# A048124: Becomes prime or 4 after exactly 2 iterations of f(x) = sum of prime factors of x.

The programs for A048124, there is no canonical definition to state claims against.
-/

/-! ## A048124.P1148919500576912437

`eq[1, A274718(n+1)]+1`
-/

namespace A048124.P1148919500576912437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048124.P1148919500576912437

/-! ## A048124.P11368136171446242021

`eq[1, A032741(A107463(A107463(n)))]`
-/

namespace A048124.P11368136171446242021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A107463 (A107463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048124.P11368136171446242021

/-! ## A048124.P14378674754771854780

`A065475(eq[1, A274718(n+1)])`
-/

namespace A048124.P14378674754771854780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048124.P14378674754771854780

/-! ## A048124.P3147435145061592190

`eq[3, A002217(n+1)]+1`
-/

namespace A048124.P3147435145061592190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048124.P3147435145061592190

/-! ## A048124.P4391362952684155163

`eq[1, A274718(A028310(n))]`
-/

namespace A048124.P4391362952684155163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048124.P4391362952684155163

/-! ## A048124.P14978802248608005925

`A065475(eq[3, A002217(n+1)])`
-/

namespace A048124.P14978802248608005925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048124.P14978802248608005925

/-! ## A048124.P8707534722951783912

`eq[1, A274718(A000038(n)+n)]`
-/

namespace A048124.P8707534722951783912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048124.P8707534722951783912

/-! ## A048124.P10865021004344533535

`eq[3, A002217(A101279(A005408(n)))]`
-/

namespace A048124.P10865021004344533535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A101279 (A005408 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048124.P10865021004344533535

/-! ## A048124.P12274805269735946962

`A113484(eq[1, A274718(n+1)])`
-/

namespace A048124.P12274805269735946962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048124.P12274805269735946962

/-! ## A048124.P778528244070553352

`eq[1, A274718(A233583(n+1))]`
-/

namespace A048124.P778528244070553352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048124.P778528244070553352

/-!
# A048125: Becomes prime or 4 after exactly 3 iterations of f(x) = sum of prime factors of x.

The programs for A048125, there is no canonical definition to state claims against.
-/

/-! ## A048125.P1879723677517388191

`eq[2, A274718(n+1)]+1`
-/

namespace A048125.P1879723677517388191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048125.P1879723677517388191

/-! ## A048125.P9465702860623936328

`eq[4, A002217(n+1)]+1`
-/

namespace A048125.P9465702860623936328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048125.P9465702860623936328

/-! ## A048125.P431813076609592090

`eq[2, A274718(A028310(n))]`
-/

namespace A048125.P431813076609592090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048125.P431813076609592090

/-! ## A048125.P16354922371667134580

`A065475(eq[2, A274718(n+1)])`
-/

namespace A048125.P16354922371667134580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048125.P16354922371667134580

/-! ## A048125.P6622753711268242323

`A020725(eq[4, A002217(n+1)])`
-/

namespace A048125.P6622753711268242323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048125.P6622753711268242323

/-! ## A048125.P8677952180599077416

`A065475(eq[4, A002217(n+1)])`
-/

namespace A048125.P8677952180599077416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048125.P8677952180599077416

/-! ## A048125.P858041502368430828

`eq[2, A274718(A000038(n)+n)]`
-/

namespace A048125.P858041502368430828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048125.P858041502368430828

/-! ## A048125.P2104011297778034059

`eq[4, A002217(A101279(A005408(n)))]`
-/

namespace A048125.P2104011297778034059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A101279 (A005408 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048125.P2104011297778034059

/-! ## A048125.P5470650767535729332

`A113484(eq[2, A274718(n+1)])`
-/

namespace A048125.P5470650767535729332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048125.P5470650767535729332

/-! ## A048125.P12951201395668257565

`A113484(eq[4, A002217(n+1)])`
-/

namespace A048125.P12951201395668257565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048125.P12951201395668257565

/-! ## A048125.P10468428295810204356

`eq[2, A274718(A233583(n+1))]`
-/

namespace A048125.P10468428295810204356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048125.P10468428295810204356

/-!
# A048126: Becomes prime or 4 after exactly 4 iterations of f(x) = sum of prime factors of x.

The programs for A048126, there is no canonical definition to state claims against.
-/

/-! ## A048126.P2480591194010346934

`eq[3, A274718(n+1)]+1`
-/

namespace A048126.P2480591194010346934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048126.P2480591194010346934

/-! ## A048126.P16003746595101018078

`eq[5, A002217(n+2)]+2`
-/

namespace A048126.P16003746595101018078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A048126.P16003746595101018078

/-! ## A048126.P7094069319405708157

`eq[5, A002217(n^floor(atan(n)))]`
-/

namespace A048126.P7094069319405708157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048126.P7094069319405708157

/-! ## A048126.P1454271925726781113

`eq[1, A274718(A028310(n))-2]`
-/

namespace A048126.P1454271925726781113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048126.P1454271925726781113

/-! ## A048126.P18184015157554773065

`A061767(eq[5, A002217(n+1)])`
-/

namespace A048126.P18184015157554773065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048126.P18184015157554773065

/-! ## A048126.P7249807224710889112

`eq[3, A274718(A000038(n)+n)]`
-/

namespace A048126.P7249807224710889112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048126.P7249807224710889112

/-! ## A048126.P18305723546382296820

`eq[5, A002217(A000007(n)+n)]`
-/

namespace A048126.P18305723546382296820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048126.P18305723546382296820

/-! ## A048126.P9542406333453953649

`eq[5, A002217(or(n, A000007(n)))]`
-/

namespace A048126.P9542406333453953649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048126.P9542406333453953649

/-! ## A048126.P9681178430557913463

`eq[5, A002217(xor(n, A000007(n)))]`
-/

namespace A048126.P9681178430557913463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048126.P9681178430557913463

/-! ## A048126.P3798003736283202240

`A113484(eq[3, A274718(n+1)])`
-/

namespace A048126.P3798003736283202240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048126.P3798003736283202240

/-! ## A048126.P1041713598502704013

`A113484(eq[5, A002217(n+1)])`
-/

namespace A048126.P1041713598502704013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048126.P1041713598502704013

/-! ## A048126.P17866159192355590086

`eq[5, A002217(A233583(n+1))]`
-/

namespace A048126.P17866159192355590086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048126.P17866159192355590086

/-!
# A048127: Becomes prime or 4 after exactly 5 iterations of f(x) = sum of prime factors of x.

The programs for A048127, there is no canonical definition to state claims against.
-/

/-! ## A048127.P13745256929221308267

`eq[4, A274718(A028310(n))]`
-/

namespace A048127.P13745256929221308267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048127.P13745256929221308267

/-! ## A048127.P17149009177432278287

`A065475(eq[4, A274718(n+1)])`
-/

namespace A048127.P17149009177432278287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048127.P17149009177432278287

/-! ## A048127.P15733775411553900479

`A020725(eq[6, A002217(n+1)])`
-/

namespace A048127.P15733775411553900479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048127.P15733775411553900479

/-! ## A048127.P643166469385788772

`A061767(eq[6, A002217(n+1)])`
-/

namespace A048127.P643166469385788772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048127.P643166469385788772

/-! ## A048127.P14632481215870991409

`A065475(eq[6, A002217(n+1)])`
-/

namespace A048127.P14632481215870991409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048127.P14632481215870991409

/-! ## A048127.P2252506009818331210

`A113484(eq[4, A274718(n+1)])`
-/

namespace A048127.P2252506009818331210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048127.P2252506009818331210

/-! ## A048127.P11240398804467375041

`eq[4, A274718(A233583(n+1))]`
-/

namespace A048127.P11240398804467375041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048127.P11240398804467375041

/-! ## A048127.P13757058053163216742

`A113484(eq[6, A002217(n+1)])`
-/

namespace A048127.P13757058053163216742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048127.P13757058053163216742

/-!
# A048128: Becomes prime or 4 after exactly 6 iterations of f(x) = sum of prime factors of x.

The programs for A048128, there is no canonical definition to state claims against.
-/

/-! ## A048128.P12745845398796564572

`eq[5, A274718(A028310(n))]`
-/

namespace A048128.P12745845398796564572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048128.P12745845398796564572

/-! ## A048128.P975254999126046701

`A065475(eq[5, A274718(n+1)])`
-/

namespace A048128.P975254999126046701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048128.P975254999126046701

/-! ## A048128.P8389585517711853322

`A020725(eq[7, A002217(n+1)])`
-/

namespace A048128.P8389585517711853322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048128.P8389585517711853322

/-! ## A048128.P9645199404316016785

`A065475(eq[7, A002217(n+1)])`
-/

namespace A048128.P9645199404316016785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048128.P9645199404316016785

/-! ## A048128.P16449648849023205925

`eq[5, A274718(A233583(n+1))]`
-/

namespace A048128.P16449648849023205925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048128.P16449648849023205925

/-!
# A048129: Becomes prime or 4 after exactly 7 iterations of f(x) = sum of prime factors of x.

The programs for A048129, there is no canonical definition to state claims against.
-/

/-! ## A048129.P16137238940731518890

`eq[6, A274718(A028310(n))]`
-/

namespace A048129.P16137238940731518890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048129.P16137238940731518890

/-! ## A048129.P6884921643691819486

`A065475(eq[6, A274718(n+1)])`
-/

namespace A048129.P6884921643691819486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048129.P6884921643691819486

/-! ## A048129.P9536536826230242530

`A020725(eq[8, A002217(n+1)])`
-/

namespace A048129.P9536536826230242530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048129.P9536536826230242530

/-! ## A048129.P11612674118297499226

`A065475(eq[8, A002217(n+1)])`
-/

namespace A048129.P11612674118297499226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048129.P11612674118297499226

/-! ## A048129.P10591987872913796191

`eq[8, A002217(A066182(n+1))]`
-/

namespace A048129.P10591987872913796191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048129.P10591987872913796191

/-!
# A048133: Least number which becomes prime or 4 after exactly n iterations of f(x) = sum of prime factors of x.

The programs for A048133, there is no canonical definition to state claims against.
-/

/-! ## A048133.P6882776308216830163

`C(3, n²)!*A121360(n+1)`
-/

namespace A048133.P6882776308216830163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 3 (n ^ 2)) : ℤ) * A121360 (n + 1)

end

end A048133.P6882776308216830163

/-! ## A048133.P5939524746252055457

`A160378(C(2, n))+A121360(n+1)`
-/

namespace A048133.P5939524746252055457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (Nat.choose 2 n) + A121360 (n + 1)

end

end A048133.P5939524746252055457

/-! ## A048133.P10039695396482708317

`lcm(A121360(n+1), A122112(C(2, n)))`
-/

namespace A048133.P10039695396482708317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121360 (n + 1)) (A122112 (Nat.choose 2 n))

end

end A048133.P10039695396482708317

/-! ## A048133.P13519115454235307927

`A121360(n+1)*A326562(C(3, n²))`
-/

namespace A048133.P13519115454235307927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121360 (n + 1) * A326562 (Nat.choose 3 (n ^ 2))

end

end A048133.P13519115454235307927

/-! ## A048133.P17627547361447842945

`A121360(n+1)+A010816(A000040(n+1))`
-/

namespace A048133.P17627547361447842945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121360 (n + 1) + A010816 (A000040 (n + 1)).toNat

end

end A048133.P17627547361447842945

/-!
# A048134: Number of colors that can be mixed with up to n units of yellow, blue, red.

The programs for A048134, there is no canonical definition to state claims against.
-/

/-! ## A048134.P13205815124353005813

`A048241(n)-1`
-/

namespace A048134.P13205815124353005813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048241 n - 1

end

end A048134.P13205815124353005813

/-! ## A048134.P16321397257588545974

`∑[A048240(n)]-1`
-/

namespace A048134.P16321397257588545974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A048134.P16321397257588545974

/-! ## A048134.P1212021655332215026

`∑[A048240(n)%A001753(n)]`
-/

namespace A048134.P1212021655332215026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048240 n) (A001753 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048134.P1212021655332215026

/-! ## A048134.P5931370247136461908

`∑[and(A048240(n), A057428(n))]`
-/

namespace A048134.P5931370247136461908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048240 n) (A057428 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048134.P5931370247136461908

/-! ## A048134.P15369005462292780774

`A057428(n+1)+∑[A048240(n)]`
-/

namespace A048134.P15369005462292780774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048134.P15369005462292780774

/-! ## A048134.P7080144030809862030

`A049632(n)+∑[A102309(n)]-1`
-/

namespace A048134.P7080144030809862030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A048134.P7080144030809862030

/-!
# A048135: Tomahawk-constructible n-gons.

The programs for A048135, the canonical program `A048135.P153787356439033696` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048135 has offset 1).

The definition of A048135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048135.P4165632123418854180

`eq[2, A001221(3*A000010(n+1))]+1`
-/

namespace A048135.P4165632123418854180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048135.P4165632123418854180

namespace A048135

/-- `eq[2, A001221(3*A000010(n+1))]+1` -/
def P4165632123418854180.Spec : Prop :=
  ∀ n, (P4165632123418854180.a n : ℤ) = A048135 (n + 1)

end A048135

/-! ## A048135.P8535420233105639984

`eq[A000010(3*A000010(n+1)), A000010(n+1)]+1`
-/

namespace A048135.P8535420233105639984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048135.P8535420233105639984

namespace A048135

/-- `eq[A000010(3*A000010(n+1)), A000010(n+1)]+1` -/
def P8535420233105639984.Spec : Prop :=
  ∀ n, (P8535420233105639984.a n : ℤ) = A048135 (n + 1)

end A048135

/-! ## A048135.P153787356439033696

`eq[6, or(6, A080400(n+1))]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048135

/-- `eq[6, or(6, A080400(n+1))]+1` -/
def P153787356439033696.Spec : Prop :=
  ∀ n, (P153787356439033696.a n : ℤ) = A048135 (n + 1)

theorem P153787356439033696.correct : P153787356439033696.Spec := by
  intro n
  simp only [A048135, Nat.add_sub_cancel]

end A048135

/-! ## A048135.P14587904903329690271

`eq[1, A122255(n+3)]+3`
-/

namespace A048135.P14587904903329690271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A048135.P14587904903329690271

namespace A048135

/-- `eq[1, A122255(n+3)]+3` -/
def P14587904903329690271.Spec : Prop :=
  ∀ n, (P14587904903329690271.a n : ℤ) = A048135 (n + 1)

end A048135

/-! ## A048135.P13977530518585202463

`filter[A122260(n+3), A122255(#)]`
-/

namespace A048135.P13977530518585202463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A048135.P13977530518585202463

namespace A048135

/-- `filter[A122260(n+3), A122255(#)]` -/
def P13977530518585202463.Spec : Prop :=
  ∀ n, P13977530518585202463.a n = A048135 (n + 1)

end A048135

/-! ## A048135.P8252136888525261589

`filter[A160542(n+3), A122255(#)]`
-/

namespace A048135.P8252136888525261589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A048135.P8252136888525261589

namespace A048135

/-- `filter[A160542(n+3), A122255(#)]` -/
def P8252136888525261589.Spec : Prop :=
  ∀ n, P8252136888525261589.a n = A048135 (n + 1)

end A048135

/-! ## A048135.P385413563238659969

`filter[A160546(n+3), A122255(#)]`
-/

namespace A048135.P385413563238659969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160546 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A048135.P385413563238659969

namespace A048135

/-- `filter[A160546(n+3), A122255(#)]` -/
def P385413563238659969.Spec : Prop :=
  ∀ n, P385413563238659969.a n = A048135 (n + 1)

end A048135

/-! ## A048135.P5127320009789406956

`filter[A160547(n+3), A122255(#)]`
-/

namespace A048135.P5127320009789406956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160547 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A048135.P5127320009789406956

namespace A048135

/-- `filter[A160547(n+3), A122255(#)]` -/
def P5127320009789406956.Spec : Prop :=
  ∀ n, P5127320009789406956.a n = A048135 (n + 1)

end A048135

/-! ## A048135.P377742495688519525

`eq[1, A065373(A000010(n+1))]+1`
-/

namespace A048135.P377742495688519525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065373 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048135.P377742495688519525

namespace A048135

/-- `eq[1, A065373(A000010(n+1))]+1` -/
def P377742495688519525.Spec : Prop :=
  ∀ n, (P377742495688519525.a n : ℤ) = A048135 (n + 1)

end A048135

/-! ## A048135.P4434152083442915949

`eq[A200905(n+1), A200905(A200905(n+1))]+1`
-/

namespace A048135.P4434152083442915949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (A200905 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048135.P4434152083442915949

namespace A048135

/-- `eq[A200905(n+1), A200905(A200905(n+1))]+1` -/
def P4434152083442915949.Spec : Prop :=
  ∀ n, (P4434152083442915949.a n : ℤ) = A048135 (n + 1)

end A048135

/-! ## A048135.P15327423361264340915

`A122254(A354355(A354357(n+1))+n+2)`
-/

namespace A048135.P15327423361264340915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (A354355 (A354357 (n + 1)).toNat + (n + 2 : ℤ)).toNat

end

end A048135.P15327423361264340915

namespace A048135

/-- `A122254(A354355(A354357(n+1))+n+2)` -/
def P15327423361264340915.Spec : Prop :=
  ∀ n, P15327423361264340915.a n = A048135 (n + 1)

end A048135

/-! ## A048135.P2531847477566806120

`A122254(A065333(A354357(n+2))+n+3)`
-/

namespace A048135.P2531847477566806120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (A065333 (A354357 (n + 2)).toNat + (n + 3 : ℤ)).toNat

end

end A048135.P2531847477566806120

namespace A048135

/-- `A122254(A065333(A354357(n+2))+n+3)` -/
def P2531847477566806120.Spec : Prop :=
  ∀ n, P2531847477566806120.a n = A048135 (n + 1)

end A048135

/-!
# A048136: Tomahawk-nonconstructible n-gons.

The programs for A048136, the canonical program `A048136.P11448310694263798569` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048136 has offset 1).

The definition of A048136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048136.P11448310694263798569

`lt[10, A080400(n+1)+1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048136

/-- `lt[10, A080400(n+1)+1]+1` -/
def P11448310694263798569.Spec : Prop :=
  ∀ n, (P11448310694263798569.a n : ℤ) = A048136 (n + 1)

theorem P11448310694263798569.correct : P11448310694263798569.Spec := by
  intro n
  simp only [A048136, Nat.add_sub_cancel]

end A048136

/-! ## A048136.P17151451660100576887

`lt[2, A120454(A000010(n+1))]+1`
-/

namespace A048136.P17151451660100576887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P17151451660100576887

namespace A048136

/-- `lt[2, A120454(A000010(n+1))]+1` -/
def P17151451660100576887.Spec : Prop :=
  ∀ n, (P17151451660100576887.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P6469833432666730408

`lt[2, A173557(A080400(n+1))]+1`
-/

namespace A048136.P6469833432666730408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A080400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P6469833432666730408

namespace A048136

/-- `lt[2, A173557(A080400(n+1))]+1` -/
def P6469833432666730408.Spec : Prop :=
  ∀ n, (P6469833432666730408.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P5812718547517168042

`lt[3, A006530(A046073(n+1))]+1`
-/

namespace A048136.P5812718547517168042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046073 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P5812718547517168042

namespace A048136

/-- `lt[3, A006530(A046073(n+1))]+1` -/
def P5812718547517168042.Spec : Prop :=
  ∀ n, (P5812718547517168042.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P16292444744678404581

`lt[5, A336147(A000010(n+2))]+2`
-/

namespace A048136.P16292444744678404581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336147 (A000010 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A048136.P16292444744678404581

namespace A048136

/-- `lt[5, A336147(A000010(n+2))]+2` -/
def P16292444744678404581.Spec : Prop :=
  ∀ n, (P16292444744678404581.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P17487163282289383833

`eq[0, A122255(n+1)]+1`
-/

namespace A048136.P17487163282289383833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048136.P17487163282289383833

namespace A048136

/-- `eq[0, A122255(n+1)]+1` -/
def P17487163282289383833.Spec : Prop :=
  ∀ n, (P17487163282289383833.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P5744004607130175899

`lt[A122255(n+2), 1]+2`
-/

namespace A048136.P5744004607130175899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A048136.P5744004607130175899

namespace A048136

/-- `lt[A122255(n+2), 1]+2` -/
def P5744004607130175899.Spec : Prop :=
  ∀ n, (P5744004607130175899.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P3217622891131732257

`lt[3, A006530(A109606(n+1)+1)]+1`
-/

namespace A048136.P3217622891131732257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P3217622891131732257

namespace A048136

/-- `lt[3, A006530(A109606(n+1)+1)]+1` -/
def P3217622891131732257.Spec : Prop :=
  ∀ n, (P3217622891131732257.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P4477213450764138508

`lt[3, A318884(A109606(n+1)+1)]+1`
-/

namespace A048136.P4477213450764138508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P4477213450764138508

namespace A048136

/-- `lt[3, A318884(A109606(n+1)+1)]+1` -/
def P4477213450764138508.Spec : Prop :=
  ∀ n, (P4477213450764138508.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P9555711605181230229

`lt[4, A080214(A109606(n+1)+1)]+1`
-/

namespace A048136.P9555711605181230229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080214 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P9555711605181230229

namespace A048136

/-- `lt[4, A080214(A109606(n+1)+1)]+1` -/
def P9555711605181230229.Spec : Prop :=
  ∀ n, (P9555711605181230229.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P904131675377864325

`lt[3, A000010(∏{p}[A000010(n+1), #])+1]+1`
-/

namespace A048136.P904131675377864325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P904131675377864325

namespace A048136

/-- `lt[3, A000010(∏{p}[A000010(n+1), #])+1]+1` -/
def P904131675377864325.Spec : Prop :=
  ∀ n, (P904131675377864325.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P9684425972156364219

`eq[0, A122255(A008486(n))]`
-/

namespace A048136.P9684425972156364219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048136.P9684425972156364219

namespace A048136

/-- `eq[0, A122255(A008486(n))]` -/
def P9684425972156364219.Spec : Prop :=
  ∀ n, (P9684425972156364219.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P12658282439362244529

`eq[0, A122255(A008574(n))]`
-/

namespace A048136.P12658282439362244529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048136.P12658282439362244529

namespace A048136

/-- `eq[0, A122255(A008574(n))]` -/
def P12658282439362244529.Spec : Prop :=
  ∀ n, (P12658282439362244529.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P9089255111297800348

`eq[0, A122255(A008458(n))]`
-/

namespace A048136.P9089255111297800348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048136.P9089255111297800348

namespace A048136

/-- `eq[0, A122255(A008458(n))]` -/
def P9089255111297800348.Spec : Prop :=
  ∀ n, (P9089255111297800348.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P12403886068295061452

`eq[0, A122255(A022144(n))]`
-/

namespace A048136.P12403886068295061452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048136.P12403886068295061452

namespace A048136

/-- `eq[0, A122255(A022144(n))]` -/
def P12403886068295061452.Spec : Prop :=
  ∀ n, (P12403886068295061452.a n : ℤ) = A048136 (n + 1)

end A048136

/-! ## A048136.P10000686637197946391

`lt[3, A006530(A225530(n))]`
-/

namespace A048136.P10000686637197946391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048136.P10000686637197946391

namespace A048136

/-- `lt[3, A006530(A225530(n))]` -/
def P10000686637197946391.Spec : Prop :=
  ∀ n, (P10000686637197946391.a n : ℤ) = A048136 (n + 1)

end A048136

/-!
# A048138: a(n) = number of m such that sum of proper divisors of m (A001065(m)) is n.

The programs for A048138, there is no canonical definition to state claims against.
-/

/-! ## A048138.P18037571556385929140

`A117929(A133265(n))+A104886(n+2)`
-/

namespace A048138.P18037571556385929140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A133265 n).toNat + A104886 (n + 2)

end

end A048138.P18037571556385929140

/-! ## A048138.P11849607387780595771

`A001221(A317880(n+1)+A003815(n))`
-/

namespace A048138.P11849607387780595771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A317880 (n + 1) + A003815 n).toNat

end

end A048138.P11849607387780595771

/-!
# A048139: Number of planar partitions of n, when partitions that are rotations of each other (when regarded as 3-D objects) are counted only once.

The programs for A048139, there is no canonical definition to state claims against.
-/

/-! ## A048139.P10357001054488674087

`2*A000786(n+1)-A005987(n+1)`
-/

namespace A048139.P10357001054488674087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000786 (n + 1) - A005987 (n + 1)

end

end A048139.P10357001054488674087

/-! ## A048139.P17493734031341335145

`A000785(n+1)+A048142(n+1)+A000786(n+1)`
-/

namespace A048139.P17493734031341335145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000785 (n + 1) + (A048142 (n + 1) + A000786 (n + 1))

end

end A048139.P17493734031341335145

/-! ## A048139.P25407211953350403

`A048140(n+1)+A096419(n+1)-A000786(n+1)`
-/

namespace A048139.P25407211953350403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048140 (n + 1) + (A096419 (n + 1) - A000786 (n + 1))

end

end A048139.P25407211953350403

/-! ## A048139.P17572226388591947263

`A119269(A167614(n+1))+A000785(n+1)`
-/

namespace A048139.P17572226388591947263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A167614 (n + 1)).toNat + A000785 (n + 1)

end

end A048139.P17572226388591947263

/-! ## A048139.P3038209645479419908

`A135665(A199103(n))+A000786(n+1)`
-/

namespace A048139.P3038209645479419908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A199103 n).toNat + A000786 (n + 1)

end

end A048139.P3038209645479419908

/-!
# A048140: Number of planar partitions of n, but partitions that are mirror images of each other (when regarded as 3-D objects) are counted only once.

The programs for A048140, there is no canonical definition to state claims against.
-/

/-! ## A048140.P16165909755568539013

`(A005987(n+1)+A000219(n+1))/2`
-/

namespace A048140.P16165909755568539013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005987 (n + 1) + A000219 (n + 1) : ℚ) / 2

end

end A048140.P16165909755568539013

/-! ## A048140.P18078746449911977966

`Δ[A091360(n)]-A306098(n+1)`
-/

namespace A048140.P18078746449911977966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A306098 (n + 1)

end

end A048140.P18078746449911977966

/-! ## A048140.P18108597330591410126

`A306098(n+1)+A005987(n+1)`
-/

namespace A048140.P18108597330591410126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306098 (n + 1) + A005987 (n + 1)

end

end A048140.P18108597330591410126

/-! ## A048140.P6413560161749944110

`A000219(n+1)-A306098(n+1)`
-/

namespace A048140.P6413560161749944110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) - A306098 (n + 1)

end

end A048140.P6413560161749944110

/-! ## A048140.P15090621869805250389

`Δ[A091360(n)-A306098(n)]-A306098(n)`
-/

namespace A048140.P15090621869805250389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n - A306098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A306098 n

end

end A048140.P15090621869805250389

/-! ## A048140.P4313985469868551352

`A242642(A000217(n+1))-A306098(n+1)`
-/

namespace A048140.P4313985469868551352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A000217 (n + 1)).toNat - A306098 (n + 1)

end

end A048140.P4313985469868551352

/-! ## A048140.P17458717819375365043

`A242642(A179865(n+2))-A306098(n+1)`
-/

namespace A048140.P17458717819375365043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A179865 (n + 2)).toNat - A306098 (n + 1)

end

end A048140.P17458717819375365043

/-!
# A048141: Number of symmetrical planar partitions of n: planar partitions (A000219) that when regarded as 3-D objects have a threefold axis of symmetry that is the intersection of 3 mirror planes, i.e., C3v symmetry.

The programs for A048141, there is no canonical definition to state claims against.
-/

/-! ## A048141.P12551142731504791771

`A096419(n+1)-2*A048142(n+1)`
-/

namespace A048141.P12551142731504791771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096419 (n + 1) - 2 * A048142 (n + 1)

end

end A048141.P12551142731504791771

/-! ## A048141.P9233860855524826891

`A005987(n+1)-A000784(n+1)`
-/

namespace A048141.P9233860855524826891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 (n + 1) - A000784 (n + 1)

end

end A048141.P9233860855524826891

/-! ## A048141.P10533612114888284991

`A096419(n+1)-A005843(A048142(n+1))`
-/

namespace A048141.P10533612114888284991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096419 (n + 1) - A005843 (A048142 (n + 1)).toNat

end

end A048141.P10533612114888284991

/-! ## A048141.P15309099429424481977

`A262680(A096419(n+1)^4)`
-/

namespace A048141.P15309099429424481977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (A096419 (n + 1) ^ 4).toNat

end

end A048141.P15309099429424481977

/-! ## A048141.P5247413954238452861

`A262680(A096419(n+1)²²)`
-/

namespace A048141.P5247413954238452861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 ((A096419 (n + 1) ^ 2) ^ 2).toNat

end

end A048141.P5247413954238452861

/-!
# A048142: Number of symmetrical planar partitions of n: planar partitions (A000219) that when regarded as 3-D objects have only a threefold axis of symmetry, i.e., C3 symmetry.

The programs for A048142, there is no canonical definition to state claims against.
-/

/-! ## A048142.P1868709839881311047

`(A096419(n+1)-A048141(n+1))/2`
-/

namespace A048142.P1868709839881311047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096419 (n + 1) - A048141 (n + 1) : ℚ) / 2

end

end A048142.P1868709839881311047

/-! ## A048142.P8816361010092400592

`A000786(n+1)-(A005987(n+1)+A000785(n+1))`
-/

namespace A048142.P8816361010092400592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000786 (n + 1) - (A005987 (n + 1) + A000785 (n + 1))

end

end A048142.P8816361010092400592

/-! ## A048142.P9598175223109484362

`A014682(A096419(n+1)-A048141(n+1))`
-/

namespace A048142.P9598175223109484362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A096419 (n + 1) - A048141 (n + 1)).toNat

end

end A048142.P9598175223109484362

/-! ## A048142.P3010787005457315893

`A014682(A096419(n+1)-(A005987(n+1)-A000784(n+1)))`
-/

namespace A048142.P3010787005457315893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A096419 (n + 1) - (A005987 (n + 1) - A000784 (n + 1))).toNat

end

end A048142.P3010787005457315893

/-! ## A048142.P2688336555116863609

`A038572(A096419(n+1)-A048141(n+1))`
-/

namespace A048142.P2688336555116863609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A096419 (n + 1) - A048141 (n + 1)).toNat

end

end A048142.P2688336555116863609

/-! ## A048142.P12293487167969958005

`A001281(A096419(n+1)-A048141(n+1))`
-/

namespace A048142.P12293487167969958005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A096419 (n + 1) - A048141 (n + 1)).toNat

end

end A048142.P12293487167969958005

/-! ## A048142.P17882479593112023169

`A004525(A096419(n+1)-A048141(n+1))`
-/

namespace A048142.P17882479593112023169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A096419 (n + 1) - A048141 (n + 1)).toNat

end

end A048142.P17882479593112023169

/-! ## A048142.P2552950237060844795

`A004526(A096419(n+1)-A048141(n+1))`
-/

namespace A048142.P2552950237060844795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096419 (n + 1) - A048141 (n + 1)).toNat

end

end A048142.P2552950237060844795

/-! ## A048142.P4167141228558877841

`A025480(A096419(n+1)-A048141(n+1))`
-/

namespace A048142.P4167141228558877841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A096419 (n + 1) - A048141 (n + 1)).toNat

end

end A048142.P4167141228558877841

/-! ## A048142.P14055195168918556610

`A029578(A096419(n+1)-A048141(n+1))`
-/

namespace A048142.P14055195168918556610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A096419 (n + 1) - A048141 (n + 1)).toNat

end

end A048142.P14055195168918556610

/-!
# A048143: Number of labeled connected simplicial complexes with n nodes.

The programs for A048143, there is no canonical definition to state claims against.
-/

/-! ## A048143.P17231281689101731930

`A317674(C(n, 2)+1)`
-/

namespace A048143.P17231281689101731930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317674 (Nat.choose n 2 + 1)

end

end A048143.P17231281689101731930

/-! ## A048143.P1524737780725103577

`A317674(∑[abs(1-n)])`
-/

namespace A048143.P1524737780725103577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317674 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048143.P1524737780725103577

/-! ## A048143.P12773370628589833594

`ceil(A304985(n)/2^n)`
-/

namespace A048143.P12773370628589833594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304985 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A048143.P12773370628589833594

/-! ## A048143.P9009446060296587765

`round(A304985(n)/A000079(n))`
-/

namespace A048143.P9009446060296587765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A304985 n : ℚ) / (A000079 n : ℚ))

end

end A048143.P9009446060296587765

/-! ## A048143.P5894043464569782645

`A014466(A028310(n))-A327355(n)`
-/

namespace A048143.P5894043464569782645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 (A028310 n).toNat - A327355 n

end

end A048143.P5894043464569782645

/-!
# A048144: a(n) = Sum_{k=0..n} (k!)^2 * Stirling_2(n,k)^2.

The programs for A048144, there is no canonical definition to state claims against.
-/

/-! ## A048144.P5237370947417519678

`A371761(∑[4*n])`
-/

namespace A048144.P5237370947417519678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048144.P5237370947417519678

/-! ## A048144.P10475602430513120902

`A272644(A051890(n))`
-/

namespace A048144.P10475602430513120902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (A051890 n).toNat

end

end A048144.P10475602430513120902

/-! ## A048144.P10575571706828490416

`A272645(A004275(n)+2)`
-/

namespace A048144.P10575571706828490416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272645 (A004275 n + 2).toNat

end

end A048144.P10575571706828490416

/-! ## A048144.P1976092140454015324

`A272645(2*A028310(n))`
-/

namespace A048144.P1976092140454015324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272645 (2 * A028310 n).toNat

end

end A048144.P1976092140454015324

/-! ## A048144.P12604671161231684861

`A272645(A233583(2*n+1))`
-/

namespace A048144.P12604671161231684861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272645 (A233583 (2 * n + 1)).toNat

end

end A048144.P12604671161231684861

/-!
# A048146: Sum of non-unitary divisors of n.

The programs for A048146, the canonical program `A048146.P9985884013456677192` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048146 has offset 1).

The definition of A048146 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048146.P9985884013456677192

`A000203(n+1)-A034448(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048146

/-- `A000203(n+1)-A034448(n+1)` -/
def P9985884013456677192.Spec : Prop :=
  ∀ n, P9985884013456677192.a n = A048146 (n + 1)

theorem P9985884013456677192.correct : P9985884013456677192.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel]

end A048146

/-! ## A048146.P15107041714985124278

`∑{d}[n+1, A348513(#)]`
-/

namespace A048146.P15107041714985124278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348513 d

end

end A048146.P15107041714985124278

namespace A048146

/-- `∑{d}[n+1, A348513(#)]` -/
def P15107041714985124278.Spec : Prop :=
  ∀ n, P15107041714985124278.a n = A048146 (n + 1)

end A048146

/-! ## A048146.P6172436356675306468

`1-A325814(n+1)+n`
-/

namespace A048146.P6172436356675306468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325814 (n + 1) + (n : ℤ)

end

end A048146.P6172436356675306468

namespace A048146

/-- `1-A325814(n+1)+n` -/
def P6172436356675306468.Spec : Prop :=
  ∀ n, P6172436356675306468.a n = A048146 (n + 1)

theorem P6172436356675306468.correct : P6172436356675306468.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P6172436356675306468.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A325814, A325814.P16316630090321165520.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P6945814902724658035

`Δ[A160664(n)]-A034448(n+1)`
-/

namespace A048146.P6945814902724658035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034448 (n + 1)

end

end A048146.P6945814902724658035

namespace A048146

/-- `Δ[A160664(n)]-A034448(n+1)` -/
def P6945814902724658035.Spec : Prop :=
  ∀ n, P6945814902724658035.a n = A048146 (n + 1)

end A048146

/-! ## A048146.P17178963709348025649

`A389171(n+1)+A336563(n+1)`
-/

namespace A048146.P17178963709348025649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389171 (n + 1) + A336563 (n + 1)

end

end A048146.P17178963709348025649

namespace A048146

/-- `A389171(n+1)+A336563(n+1)` -/
def P17178963709348025649.Spec : Prop :=
  ∀ n, P17178963709348025649.a n = A048146 (n + 1)

end A048146

/-! ## A048146.P7223141937849119341

`A001065(n+1)-A034460(n+1)`
-/

namespace A048146.P7223141937849119341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A034460 (n + 1)

end

end A048146.P7223141937849119341

namespace A048146

/-- `A001065(n+1)-A034460(n+1)` -/
def P7223141937849119341.Spec : Prop :=
  ∀ n, P7223141937849119341.a n = A048146 (n + 1)

theorem P7223141937849119341.correct : P7223141937849119341.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P7223141937849119341.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A034460, A034460.P1958235575820581513.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P16405993225305568358

`A046520(n+1)-A063085(n+1)`
-/

namespace A048146.P16405993225305568358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) - A063085 (n + 1)

end

end A048146.P16405993225305568358

namespace A048146

/-- `A046520(n+1)-A063085(n+1)` -/
def P16405993225305568358.Spec : Prop :=
  ∀ n, P16405993225305568358.a n = A048146 (n + 1)

theorem P16405993225305568358.correct : P16405993225305568358.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P16405993225305568358.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A046520, A046520.P408125302691526791.a, A063085, A063085.P4754823976141225556.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A061468, A061468.P5735709615131522244.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A384050, A384050.P7808103291810137926.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P11280317001603782455

`A074400(n+1)-A064212(n+1)`
-/

namespace A048146.P11280317001603782455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A064212 (n + 1)

end

end A048146.P11280317001603782455

namespace A048146

/-- `A074400(n+1)-A064212(n+1)` -/
def P11280317001603782455.Spec : Prop :=
  ∀ n, P11280317001603782455.a n = A048146 (n + 1)

theorem P11280317001603782455.correct : P11280317001603782455.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P11280317001603782455.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A064212, A064212.P10229143328642602721.a, A074400, A074400.P16312391460013478761.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P16220541969027573967

`A051612(n+1)-A098189(n+1)`
-/

namespace A048146.P16220541969027573967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A098189 (n + 1)

end

end A048146.P16220541969027573967

namespace A048146

/-- `A051612(n+1)-A098189(n+1)` -/
def P16220541969027573967.Spec : Prop :=
  ∀ n, P16220541969027573967.a n = A048146 (n + 1)

theorem P16220541969027573967.correct : P16220541969027573967.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P16220541969027573967.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A051612, A051612.P4135239823752248514.a, A098189, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A384050, A384050.P7808103291810137926.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P7938528721896183467

`A033880(n+1)-A129468(n+1)`
-/

namespace A048146.P7938528721896183467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) - A129468 (n + 1)

end

end A048146.P7938528721896183467

namespace A048146

/-- `A033880(n+1)-A129468(n+1)` -/
def P7938528721896183467.Spec : Prop :=
  ∀ n, P7938528721896183467.a n = A048146 (n + 1)

theorem P7938528721896183467.correct : P7938528721896183467.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P7938528721896183467.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A129468, A129468.P11362039589036067826.a, A001065, A001065.P4097147489331274860.a, A034460, A034460.P1958235575820581513.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P8799307968992159911

`A173455(n+1)-A063919(n+1)`
-/

namespace A048146.P8799307968992159911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - A063919 (n + 1)

end

end A048146.P8799307968992159911

namespace A048146

/-- `A173455(n+1)-A063919(n+1)` -/
def P8799307968992159911.Spec : Prop :=
  ∀ n, P8799307968992159911.a n = A048146 (n + 1)

end A048146

/-! ## A048146.P428641861013049279

`A395435(n+1)-A034444(n+1)`
-/

namespace A048146.P428641861013049279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395435 (n + 1) - A034444 (n + 1)

end

end A048146.P428641861013049279

namespace A048146

/-- `A395435(n+1)-A034444(n+1)` -/
def P428641861013049279.Spec : Prop :=
  ∀ n, P428641861013049279.a n = A048146 (n + 1)

end A048146

/-! ## A048146.P17449159433690072757

`A048250(n+1)-A389204(n+1)`
-/

namespace A048146.P17449159433690072757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A389204 (n + 1)

end

end A048146.P17449159433690072757

namespace A048146

/-- `A048250(n+1)-A389204(n+1)` -/
def P17449159433690072757.Spec : Prop :=
  ∀ n, P17449159433690072757.a n = A048146 (n + 1)

end A048146

/-! ## A048146.P545735422001917023

`A057723(n+1)-A389170(n+1)`
-/

namespace A048146.P545735422001917023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A389170 (n + 1)

end

end A048146.P545735422001917023

namespace A048146

/-- `A057723(n+1)-A389170(n+1)` -/
def P545735422001917023.Spec : Prop :=
  ∀ n, P545735422001917023.a n = A048146 (n + 1)

theorem P545735422001917023.correct : P545735422001917023.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P545735422001917023.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A057723, A057723.P9092718560045484766.a, A389170, A389170.P11666675562721126669.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P1775170529777326978

`A348732(n+1)-A348029(n+1)`
-/

namespace A048146.P1775170529777326978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348732 (n + 1) - A348029 (n + 1)

end

end A048146.P1775170529777326978

namespace A048146

/-- `A348732(n+1)-A348029(n+1)` -/
def P1775170529777326978.Spec : Prop :=
  ∀ n, P1775170529777326978.a n = A048146 (n + 1)

theorem P1775170529777326978.correct : P1775170529777326978.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P1775170529777326978.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A348029, A348029.P15301953817482989203.a, A348732, A348732.P348791247222302933.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A014963, A014963.P5975177236000282614.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P9678827966891210373

`A039653(n+1)+1-A034448(n+1)`
-/

namespace A048146.P9678827966891210373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1 - A034448 (n + 1)

end

end A048146.P9678827966891210373

namespace A048146

/-- `A039653(n+1)+1-A034448(n+1)` -/
def P9678827966891210373.Spec : Prop :=
  ∀ n, P9678827966891210373.a n = A048146 (n + 1)

end A048146

/-! ## A048146.P3703458229448205782

`A088580(n+1)-(A034448(n+1)+1)`
-/

namespace A048146.P3703458229448205782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A034448 (n + 1) + 1)

end

end A048146.P3703458229448205782

namespace A048146

/-- `A088580(n+1)-(A034448(n+1)+1)` -/
def P3703458229448205782.Spec : Prop :=
  ∀ n, P3703458229448205782.a n = A048146 (n + 1)

theorem P3703458229448205782.correct : P3703458229448205782.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P3703458229448205782.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A088580, A088580.P3089093194242277422.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P10993575882210100750

`A000203(n+1)-(A345451(n+1)+1)`
-/

namespace A048146.P10993575882210100750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A345451 (n + 1) + 1)

end

end A048146.P10993575882210100750

namespace A048146

/-- `A000203(n+1)-(A345451(n+1)+1)` -/
def P10993575882210100750.Spec : Prop :=
  ∀ n, P10993575882210100750.a n = A048146 (n + 1)

theorem P10993575882210100750.correct : P10993575882210100750.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P10993575882210100750.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A345451, A345451.P7254326500789221208.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P7937407328877543137

`A088580(n+1)-(A345451(n+1)+2)`
-/

namespace A048146.P7937407328877543137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A345451 (n + 1) + 2)

end

end A048146.P7937407328877543137

namespace A048146

/-- `A088580(n+1)-(A345451(n+1)+2)` -/
def P7937407328877543137.Spec : Prop :=
  ∀ n, P7937407328877543137.a n = A048146 (n + 1)

theorem P7937407328877543137.correct : P7937407328877543137.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P7937407328877543137.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A088580, A088580.P3089093194242277422.a, A345451, A345451.P7254326500789221208.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-! ## A048146.P8689034991142078816

`2*A000203(n+1)-A064212(n+1)`
-/

namespace A048146.P8689034991142078816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A064212 (n + 1)

end

end A048146.P8689034991142078816

namespace A048146

/-- `2*A000203(n+1)-A064212(n+1)` -/
def P8689034991142078816.Spec : Prop :=
  ∀ n, P8689034991142078816.a n = A048146 (n + 1)

theorem P8689034991142078816.correct : P8689034991142078816.Spec := by
  intro n
  simp only [A048146, Nat.add_sub_cancel, A048146.P8689034991142078816.a, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A064212, A064212.P10229143328642602721.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048146

/-!
# A048147: Array T read by diagonals; T(i,j) = i^2 + j^2.

The programs for A048147, the canonical program `A048147.P4216793298014454486` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048147 has offset 0).

The definition of A048147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)²+(row(n)-col(n))²` (program `A048147.P4216793298014454486`, by `A048147.P4216793298014454486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048147.P4216793298014454486

`col(n)²+(row(n)-col(n))²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048147

/-- `col(n)²+(row(n)-col(n))²` -/
def P4216793298014454486.Spec : Prop :=
  ∀ n, P4216793298014454486.a n = A048147 n

theorem P4216793298014454486.correct : P4216793298014454486.Spec := by
  intro n
  simp only [A048147]

end A048147

/-! ## A048147.P9446555866904837318

`(row(n)-col(n))²+col(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048147.P9446555866904837318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 + (SequenceMachineLib.triCol n ^ 2 : ℤ)

end

end A048147.P9446555866904837318

namespace A048147

/-- `(row(n)-col(n))²+col(n)²` -/
def P9446555866904837318.Spec : Prop :=
  ∀ n, P9446555866904837318.a n = A048147 n

theorem P9446555866904837318.correct : P9446555866904837318.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P9446555866904837318.a, A048147.P4216793298014454486.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048147

/-! ## A048147.P10782590069833323803

`col(n)^2+(row(n)-col(n))^2`
-/

namespace A048147.P10782590069833323803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2

end

end A048147.P10782590069833323803

namespace A048147

/-- `col(n)^2+(row(n)-col(n))^2` -/
def P10782590069833323803.Spec : Prop :=
  ∀ n, P10782590069833323803.a n = A048147 n

theorem P10782590069833323803.correct : P10782590069833323803.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P10782590069833323803.a, A048147.P4216793298014454486.a, SequenceMachineLib.memo_apply]

end A048147

/-! ## A048147.P11964360087057294002

`col(n)*col(n)+(row(n)-col(n))*(row(n)-col(n))`
-/

namespace A048147.P11964360087057294002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n * SequenceMachineLib.triCol n : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A048147.P11964360087057294002

namespace A048147

/-- `col(n)*col(n)+(row(n)-col(n))*(row(n)-col(n))` -/
def P11964360087057294002.Spec : Prop :=
  ∀ n, P11964360087057294002.a n = A048147 n

theorem P11964360087057294002.correct : P11964360087057294002.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P11964360087057294002.a, A048147.P4216793298014454486.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048147

/-! ## A048147.P5544288121751934518

`A163531(A163334(n))`
-/

namespace A048147.P5544288121751934518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 (A163334 n).toNat

end

end A048147.P5544288121751934518

namespace A048147

/-- `A163531(A163334(n))` -/
def P5544288121751934518.Spec : Prop :=
  ∀ n, P5544288121751934518.a n = A048147 n

end A048147

/-! ## A048147.P15461506627410410698

`A163547(A163357(n))`
-/

namespace A048147.P15461506627410410698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A163357 n).toNat

end

end A048147.P15461506627410410698

namespace A048147

/-- `A163547(A163357(n))` -/
def P15461506627410410698.Spec : Prop :=
  ∀ n, P15461506627410410698.a n = A048147 n

end A048147

/-! ## A048147.P254203067556631664

`A163547(A163359(n))`
-/

namespace A048147.P254203067556631664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A163359 n).toNat

end

end A048147.P254203067556631664

namespace A048147

/-- `A163547(A163359(n))` -/
def P254203067556631664.Spec : Prop :=
  ∀ n, P254203067556631664.a n = A048147 n

end A048147

/-! ## A048147.P17839696748485399329

`A349039(n)+A004247(n)`
-/

namespace A048147.P17839696748485399329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349039 n + A004247 n

end

end A048147.P17839696748485399329

namespace A048147

/-- `A349039(n)+A004247(n)` -/
def P17839696748485399329.Spec : Prop :=
  ∀ n, P17839696748485399329.a n = A048147 n

theorem P17839696748485399329.correct : P17839696748485399329.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P17839696748485399329.a, A048147.P4216793298014454486.a, A004247, A004247.P2751605162508615148.a, A349039, A349039.P8937323776347289677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048147

/-! ## A048147.P9564632434055702249

`A335262(n)+A083920(n)`
-/

namespace A048147.P9564632434055702249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335262 n + A083920 n

end

end A048147.P9564632434055702249

namespace A048147

/-- `A335262(n)+A083920(n)` -/
def P9564632434055702249.Spec : Prop :=
  ∀ n, P9564632434055702249.a n = A048147 n

end A048147

/-! ## A048147.P6664415087726838025

`A073254(n)-A004247(n)`
-/

namespace A048147.P6664415087726838025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - A004247 n

end

end A048147.P6664415087726838025

namespace A048147

/-- `A073254(n)-A004247(n)` -/
def P6664415087726838025.Spec : Prop :=
  ∀ n, P6664415087726838025.a n = A048147 n

theorem P6664415087726838025.correct : P6664415087726838025.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P6664415087726838025.a, A048147.P4216793298014454486.a, A004247, A004247.P2751605162508615148.a, A073254, A073254.P5875854829665146571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048147

/-! ## A048147.P327481618437430025

`A143844(n)+A025581(n)²`
-/

namespace A048147.P327481618437430025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A025581 n ^ 2

end

end A048147.P327481618437430025

namespace A048147

/-- `A143844(n)+A025581(n)²` -/
def P327481618437430025.Spec : Prop :=
  ∀ n, P327481618437430025.a n = A048147 n

theorem P327481618437430025.correct : P327481618437430025.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P327481618437430025.a, A048147.P4216793298014454486.a, A025581, A025581.P16112744757063613497.a, A143844, A143844.P13341456288637914710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048147

/-! ## A048147.P14779125105295476241

`A143844(n)+A095831(n+1)`
-/

namespace A048147.P14779125105295476241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A095831 (n + 1)

end

end A048147.P14779125105295476241

namespace A048147

/-- `A143844(n)+A095831(n+1)` -/
def P14779125105295476241.Spec : Prop :=
  ∀ n, P14779125105295476241.a n = A048147 n

theorem P14779125105295476241.correct : P14779125105295476241.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P14779125105295476241.a, A048147.P4216793298014454486.a, A095831, A095831.P8959828256737551881.a, A143844, A143844.P13341456288637914710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048147

/-! ## A048147.P6607171438419711392

`A004201(n+1)-A101447(n)`
-/

namespace A048147.P6607171438419711392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - A101447 n

end

end A048147.P6607171438419711392

namespace A048147

/-- `A004201(n+1)-A101447(n)` -/
def P6607171438419711392.Spec : Prop :=
  ∀ n, P6607171438419711392.a n = A048147 n

end A048147

/-! ## A048147.P5276419809712345778

`(A349039(n)+A073254(n))/2`
-/

namespace A048147.P5276419809712345778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349039 n + A073254 n : ℚ) / 2

end

end A048147.P5276419809712345778

namespace A048147

/-- `(A349039(n)+A073254(n))/2` -/
def P5276419809712345778.Spec : Prop :=
  ∀ n, P5276419809712345778.a n = (A048147 n : ℚ)

theorem P5276419809712345778.correct : P5276419809712345778.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P5276419809712345778.a, A048147.P4216793298014454486.a, A073254, A073254.P5875854829665146571.a, A349039, A349039.P8937323776347289677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048147

/-! ## A048147.P2194334578615320040

`A335262(n)+n-A003056(n)`
-/

namespace A048147.P2194334578615320040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335262 n + ((n : ℤ) - A003056 n)

end

end A048147.P2194334578615320040

namespace A048147

/-- `A335262(n)+n-A003056(n)` -/
def P2194334578615320040.Spec : Prop :=
  ∀ n, P2194334578615320040.a n = A048147 n

end A048147

/-! ## A048147.P18228242981079679430

`A003984(n)²+A004197(n)²`
-/

namespace A048147.P18228242981079679430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n ^ 2 + A004197 n ^ 2

end

end A048147.P18228242981079679430

namespace A048147

/-- `A003984(n)²+A004197(n)²` -/
def P18228242981079679430.Spec : Prop :=
  ∀ n, P18228242981079679430.a n = A048147 n

end A048147

/-! ## A048147.P313002570057476945

`A002262(n)²+A025581(n)²`
-/

namespace A048147.P313002570057476945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + A025581 n ^ 2

end

end A048147.P313002570057476945

namespace A048147

/-- `A002262(n)²+A025581(n)²` -/
def P313002570057476945.Spec : Prop :=
  ∀ n, P313002570057476945.a n = A048147 n

end A048147

/-! ## A048147.P5094053370684116681

`A103822(n)²+A103823(n)²`
-/

namespace A048147.P5094053370684116681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103822 n ^ 2 + A103823 n ^ 2

end

end A048147.P5094053370684116681

namespace A048147

/-- `A103822(n)²+A103823(n)²` -/
def P5094053370684116681.Spec : Prop :=
  ∀ n, P5094053370684116681.a n = A048147 n

end A048147

/-! ## A048147.P221053031067770867

`A143844(n)+log2(A130321(n))²`
-/

namespace A048147.P221053031067770867
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A143844 n : ℝ) + Real.logb 2 (A130321 n : ℝ) ^ 2

end

end A048147.P221053031067770867

namespace A048147

/-- `A143844(n)+log2(A130321(n))²` -/
def P221053031067770867.Spec : Prop :=
  ∀ n, P221053031067770867.a n = (A048147 n : ℝ)

end A048147

/-! ## A048147.P7197135844580503607

`A095831(n+1)+A002262(n)²`
-/

namespace A048147.P7197135844580503607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + A002262 n ^ 2

end

end A048147.P7197135844580503607

namespace A048147

/-- `A095831(n+1)+A002262(n)²` -/
def P7197135844580503607.Spec : Prop :=
  ∀ n, P7197135844580503607.a n = A048147 n

theorem P7197135844580503607.correct : P7197135844580503607.Spec := by
  intro n
  simp only [A048147, Nat.add_sub_cancel, A048147.P7197135844580503607.a, A048147.P4216793298014454486.a, A002262, A002262.P17823619022233514403.a, A095831, A095831.P8959828256737551881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048147

/-!
# A048148: Distinct elements of A045948.

The programs for A048148, there is no canonical definition to state claims against.
-/

/-! ## A048148.P2387669629708032252

`a(n-1)*A025476(n)` with `a(0)=1`
-/

namespace A048148.P2387669629708032252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A025476 n

end

end A048148.P2387669629708032252

/-! ## A048148.P14543527318564574507

`∏[A006530(A025475(n+1))]`
-/

namespace A048148.P14543527318564574507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048148.P14543527318564574507

/-! ## A048148.P8660264139199299921

`∏[A006530(record[A163813(n+1)])]`
-/

namespace A048148.P8660264139199299921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048148.P8660264139199299921

/-! ## A048148.P11651566496101623705

`∏[A020639(record[A163813(n+1)])]`
-/

namespace A048148.P11651566496101623705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048148.P11651566496101623705

/-! ## A048148.P10651245489203890431

`∏[A006530(record[n*A268340(n+1)]+1)]`
-/

namespace A048148.P10651245489203890431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A268340 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048148.P10651245489203890431

/-! ## A048148.P4531830418652533901

`A045948(A025475(n+1))`
-/

namespace A048148.P4531830418652533901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (A025475 (n + 1)).toNat

end

end A048148.P4531830418652533901

/-! ## A048148.P1886729899476988436

`A045948(A249435(n+1)+1)`
-/

namespace A048148.P1886729899476988436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (A249435 (n + 1) + 1).toNat

end

end A048148.P1886729899476988436

/-! ## A048148.P1525260921032222615

`record[A045948(A000010(2*(n+1))+n)]`
-/

namespace A048148.P1525260921032222615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (A000010 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048148.P1525260921032222615

/-! ## A048148.P15474729575997131212

`record[A045948(n+1)/A014963(n+1)]`
-/

namespace A048148.P15474729575997131212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045948 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048148.P15474729575997131212

/-! ## A048148.P2063758726054977318

`A045948(A249435(n+2))`
-/

namespace A048148.P2063758726054977318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (A249435 (n + 2)).toNat

end

end A048148.P2063758726054977318

/-!
# A048149: Array T read by diagonals: T(i,j) = number of pairs (h,k) with h^2+k^2 <= i^2+j^2, h>=0, k >= 0.

The programs for A048149, the canonical program `A048149.P13644197507021324335` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048149 has offset 0).

The definition of A048149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048149.P5148287155990919084

`A049723(n)-A014200(A048147(n))`
-/

namespace A048149.P5148287155990919084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 n - A014200 (A048147 n).toNat

end

end A048149.P5148287155990919084

namespace A048149

/-- `A049723(n)-A014200(A048147(n))` -/
def P5148287155990919084.Spec : Prop :=
  ∀ n, P5148287155990919084.a n = A048149 n

theorem P5148287155990919084.correct : P5148287155990919084.Spec := by
  intro n
  simp only [A048149, Nat.add_sub_cancel, A048149.P5148287155990919084.a, A048149.P13644197507021324335.a, A014200, A014200.P16970295702573526038.a, A048147, A048147.P4216793298014454486.a, A049723, A049723.P10463802410882888049.a, A224212, A224212.P18102868260642251365.a, A000196, A000196.P15434771586934192083.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, A002654, A002654.P11574922253888480122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048149

/-! ## A048149.P13644197507021324335

`A224212(A048147(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A048149

/-- `A224212(A048147(n))` -/
def P13644197507021324335.Spec : Prop :=
  ∀ n, P13644197507021324335.a n = A048149 n

theorem P13644197507021324335.correct : P13644197507021324335.Spec := by
  intro n
  simp only [A048149]

end A048149

/-! ## A048149.P3310573489469674381

`A049723(n)-A002265(A049735(n))`
-/

namespace A048149.P3310573489469674381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 n - A002265 (A049735 n).toNat

end

end A048149.P3310573489469674381

namespace A048149

/-- `A049723(n)-A002265(A049735(n))` -/
def P3310573489469674381.Spec : Prop :=
  ∀ n, P3310573489469674381.a n = A048149 n

end A048149

/-! ## A048149.P6920662901479399802

`A049723(n)+A002265(A049735(n))*A280193(2*n+1)`
-/

namespace A048149.P6920662901479399802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 n + A002265 (A049735 n).toNat * A280193 (2 * n + 1)

end

end A048149.P6920662901479399802

namespace A048149

/-- `A049723(n)+A002265(A049735(n))*A280193(2*n+1)` -/
def P6920662901479399802.Spec : Prop :=
  ∀ n, P6920662901479399802.a n = A048149 n

end A048149

/-! ## A048149.P12247660201880606937

`A000592(A157927(n+1)-1)`
-/

namespace A048149.P12247660201880606937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000592 (A157927 (n + 1) - 1).toNat

end

end A048149.P12247660201880606937

namespace A048149

/-- `A000592(A157927(n+1)-1)` -/
def P12247660201880606937.Spec : Prop :=
  ∀ n, P12247660201880606937.a n = A048149 n

end A048149

/-! ## A048149.P2847141255632020796

`floor(A049723(n)²/A057961(A157927(n+1)))`
-/

namespace A048149.P2847141255632020796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049723 n ^ 2 : ℚ) / (A057961 (A157927 (n + 1)).toNat : ℚ)⌋

end

end A048149.P2847141255632020796

namespace A048149

/-- `floor(A049723(n)²/A057961(A157927(n+1)))` -/
def P2847141255632020796.Spec : Prop :=
  ∀ n, P2847141255632020796.a n = A048149 n

end A048149

/-!
# A048150: a(n)=number of numbers h^2+k^2 that are <=2n^2; equivalently, a(n)=T(n,n), array T as in A048149.

The programs for A048150, there is no canonical definition to state claims against.
-/

/-! ## A048150.P1977031675246289250

`ceil((A049728(n)+A001951(n))/2)`
-/

namespace A048150.P1977031675246289250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049728 n + A001951 n : ℚ) / 2⌉

end

end A048150.P1977031675246289250

/-! ## A048150.P16503430950135437023

`(A049728(n)+A001951(n)+1)/A020639(2*(n+1))`
-/

namespace A048150.P16503430950135437023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049728 n + A001951 n + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A048150.P16503430950135437023

/-! ## A048150.P3584339545717770259

`floor(A014963(12*n+6)+(A049728(n)+A001951(n))/2)`
-/

namespace A048150.P3584339545717770259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (12 * n + 6) : ℚ) + (A049728 n + A001951 n : ℚ) / 2⌋

end

end A048150.P3584339545717770259

/-! ## A048150.P9520286610879222516

`(A049728(n)+A001951(n)+1)/A325564(A243844(n+1))`
-/

namespace A048150.P9520286610879222516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049728 n + A001951 n + 1 : ℚ) / (A325564 (A243844 (n + 1)).toNat : ℚ)

end

end A048150.P9520286610879222516

/-! ## A048150.P168977175597510404

`A014682(A001951(n)+A049728(n)+1)`
-/

namespace A048150.P168977175597510404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001951 n + (A049728 n + 1)).toNat

end

end A048150.P168977175597510404

/-! ## A048150.P827253525381985487

`A246425(A049728(n)+A001951(n))`
-/

namespace A048150.P827253525381985487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A049728 n + A001951 n).toNat

end

end A048150.P827253525381985487

/-! ## A048150.P13754280734939874136

`A224212(2*n²)`
-/

namespace A048150.P13754280734939874136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (2 * n ^ 2)

end

end A048150.P13754280734939874136

/-! ## A048150.P3732172359963338407

`A048149(∑[4*n])`
-/

namespace A048150.P3732172359963338407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048150.P3732172359963338407

/-! ## A048150.P12012125576260014425

`(A049728(n)+A001951(n)+1)/A001222(A006094(n+1))`
-/

namespace A048150.P12012125576260014425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049728 n + A001951 n + 1 : ℚ) / (A001222 (A006094 (n + 1)).toNat : ℚ)

end

end A048150.P12012125576260014425

/-!
# A048151: Triangular array T read by rows: T(n,k)=k mod n, for k=1,2,...,n, n=1,2,...

The programs for A048151, the canonical program `A048151.P3227743321972080880` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048151 has offset 1).

The definition of A048151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)%(row(n)+1)` (program `A048151.P3227743321972080880`, by `A048151.P3227743321972080880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048151.P3227743321972080880

`(col(n)+1)%(row(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048151

/-- `(col(n)+1)%(row(n)+1)` -/
def P3227743321972080880.Spec : Prop :=
  ∀ n, (P3227743321972080880.a n : ℤ) = A048151 (n + 1)

theorem P3227743321972080880.correct : P3227743321972080880.Spec := by
  intro n
  simp only [A048151, Nat.add_sub_cancel]

end A048151

/-! ## A048151.P5845285005889712010

`col(n+1)`
-/

namespace A048151.P5845285005889712010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (n + 1)

end

end A048151.P5845285005889712010

namespace A048151

/-- `col(n+1)` -/
def P5845285005889712010.Spec : Prop :=
  ∀ n, (P5845285005889712010.a n : ℤ) = A048151 (n + 1)

end A048151

/-! ## A048151.P326047441952590740

`(a(n-1)+1)%∑[char[∑[n]]]` with `a(0)=0`
-/

namespace A048151.P326047441952590740
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048151.P326047441952590740

namespace A048151

/-- `(a(n-1)+1)%∑[char[∑[n]]]` -/
def P326047441952590740.Spec : Prop :=
  ∀ n, (P326047441952590740.a n : ℤ) = A048151 (n + 1)

end A048151

/-! ## A048151.P992612773921819524

`(a(n-1)+1)*char[comp[∑[n-1]]]` with `a(0)=0`
-/

namespace A048151.P992612773921819524
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A048151.P992612773921819524

namespace A048151

/-- `(a(n-1)+1)*char[comp[∑[n-1]]]` -/
def P992612773921819524.Spec : Prop :=
  ∀ n, (P992612773921819524.a n : ℤ) = A048151 (n + 1)

end A048151

/-! ## A048151.P9627245388715408489

`n+1-C(floor((1+sqrt(8*n+9))/2), 2)`
-/

namespace A048151.P9627245388715408489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose ⌊(1 + Real.sqrt (8 * n + 9 : ℝ)) / 2⌋.toNat 2 : ℤ)

end

end A048151.P9627245388715408489

namespace A048151

/-- `n+1-C(floor((1+sqrt(8*n+9))/2), 2)` -/
def P9627245388715408489.Spec : Prop :=
  ∀ n, P9627245388715408489.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P11743230563431184722

`log2(A059268(n+1))`
-/

namespace A048151.P11743230563431184722
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 (n + 1) : ℝ)

end

end A048151.P11743230563431184722

namespace A048151

/-- `log2(A059268(n+1))` -/
def P11743230563431184722.Spec : Prop :=
  ∀ n, P11743230563431184722.a n = (A048151 (n + 1) : ℝ)

end A048151

/-! ## A048151.P12214580815468655713

`∑[1-A127648(n)]`
-/

namespace A048151.P12214580815468655713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048151.P12214580815468655713

namespace A048151

/-- `∑[1-A127648(n)]` -/
def P12214580815468655713.Spec : Prop :=
  ∀ n, P12214580815468655713.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P9376271394073974320

`A002260(n+2)-1`
-/

namespace A048151.P9376271394073974320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) - 1

end

end A048151.P9376271394073974320

namespace A048151

/-- `A002260(n+2)-1` -/
def P9376271394073974320.Spec : Prop :=
  ∀ n, P9376271394073974320.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P1768165009736616604

`A057554(2*n+3)`
-/

namespace A048151.P1768165009736616604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * n + 3)

end

end A048151.P1768165009736616604

namespace A048151

/-- `A057554(2*n+3)` -/
def P1768165009736616604.Spec : Prop :=
  ∀ n, P1768165009736616604.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P6858690567119032812

`val(A036561(n+1), 3)`
-/

namespace A048151.P6858690567119032812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (n + 1)).toNat 3

end

end A048151.P6858690567119032812

namespace A048151

/-- `val(A036561(n+1), 3)` -/
def P6858690567119032812.Spec : Prop :=
  ∀ n, (P6858690567119032812.a n : ℤ) = A048151 (n + 1)

end A048151

/-! ## A048151.P15520193132155907322

`A059252(A163357(n+1))`
-/

namespace A048151.P15520193132155907322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163357 (n + 1)).toNat

end

end A048151.P15520193132155907322

namespace A048151

/-- `A059252(A163357(n+1))` -/
def P15520193132155907322.Spec : Prop :=
  ∀ n, P15520193132155907322.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P18356886505852039254

`A059253(A163359(n+1))`
-/

namespace A048151.P18356886505852039254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163359 (n + 1)).toNat

end

end A048151.P18356886505852039254

namespace A048151

/-- `A059253(A163359(n+1))` -/
def P18356886505852039254.Spec : Prop :=
  ∀ n, P18356886505852039254.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P3568984895877301626

`A163529(A163334(n+1))`
-/

namespace A048151.P3568984895877301626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A163334 (n + 1)).toNat

end

end A048151.P3568984895877301626

namespace A048151

/-- `A163529(A163334(n+1))` -/
def P3568984895877301626.Spec : Prop :=
  ∀ n, P3568984895877301626.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P14952453973666277541

`A128227(n)-A023531(n)`
-/

namespace A048151.P14952453973666277541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n - A023531 n

end

end A048151.P14952453973666277541

namespace A048151

/-- `A128227(n)-A023531(n)` -/
def P14952453973666277541.Spec : Prop :=
  ∀ n, P14952453973666277541.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P12945364821606836100

`A193738(n)-A134402(n)`
-/

namespace A048151.P12945364821606836100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n - A134402 n

end

end A048151.P12945364821606836100

namespace A048151

/-- `A193738(n)-A134402(n)` -/
def P12945364821606836100.Spec : Prop :=
  ∀ n, P12945364821606836100.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P2190193368184801128

`A023532(n)*A128227(n)`
-/

namespace A048151.P2190193368184801128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A128227 n

end

end A048151.P2190193368184801128

namespace A048151

/-- `A023532(n)*A128227(n)` -/
def P2190193368184801128.Spec : Prop :=
  ∀ n, P2190193368184801128.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P2665930349269857438

`A023532(n)*A193738(n)`
-/

namespace A048151.P2665930349269857438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A193738 n

end

end A048151.P2665930349269857438

namespace A048151

/-- `A023532(n)*A193738(n)` -/
def P2665930349269857438.Spec : Prop :=
  ∀ n, P2665930349269857438.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P15115791751769569932

`A128227(n)%A027465(n)`
-/

namespace A048151.P15115791751769569932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128227 n) (A027465 n)

end

end A048151.P15115791751769569932

namespace A048151

/-- `A128227(n)%A027465(n)` -/
def P15115791751769569932.Spec : Prop :=
  ∀ n, P15115791751769569932.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P7522759162040964040

`A134199(n)%A038207(n)`
-/

namespace A048151.P7522759162040964040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134199 n) (A038207 n)

end

end A048151.P7522759162040964040

namespace A048151

/-- `A134199(n)%A038207(n)` -/
def P7522759162040964040.Spec : Prop :=
  ∀ n, P7522759162040964040.a n = A048151 (n + 1)

end A048151

/-! ## A048151.P5830432087855505614

`A193738(n)%A027465(n)`
-/

namespace A048151.P5830432087855505614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193738 n) (A027465 n)

end

end A048151.P5830432087855505614

namespace A048151

/-- `A193738(n)%A027465(n)` -/
def P5830432087855505614.Spec : Prop :=
  ∀ n, P5830432087855505614.a n = A048151 (n + 1)

end A048151

/-!
# A048152: Triangular array T read by rows: T(n,k) = k^2 mod n, for 1 <= k <= n, n >= 1.

The programs for A048152, the canonical program `A048152.P18365048416677811141` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048152 has offset 1).

The definition of A048152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)²%(row(n)+1)` (program `A048152.P18365048416677811141`, by `A048152.P18365048416677811141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048152.P18365048416677811141

`(col(n)+1)²%(row(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048152

/-- `(col(n)+1)²%(row(n)+1)` -/
def P18365048416677811141.Spec : Prop :=
  ∀ n, (P18365048416677811141.a n : ℤ) = A048152 (n + 1)

theorem P18365048416677811141.correct : P18365048416677811141.Spec := by
  intro n
  simp only [A048152, Nat.add_sub_cancel]

end A048152

/-! ## A048152.P13458173667833821250

`(T(n,k-1)+2*col(n)+1)%(row(n)+1)` with `a(0)=0`
-/

namespace A048152.P13458173667833821250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.triLeft a n + (2 * SequenceMachineLib.triCol n + 1)) % (SequenceMachineLib.triRow n + 1)

end

end A048152.P13458173667833821250

namespace A048152

/-- `(T(n,k-1)+2*col(n)+1)%(row(n)+1)` -/
def P13458173667833821250.Spec : Prop :=
  ∀ n, (P13458173667833821250.a n : ℤ) = A048152 (n + 1)

end A048152

/-! ## A048152.P16395917441505634609

`A025581(n)²%∑[char[∑[n]]]`
-/

namespace A048152.P16395917441505634609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048152.P16395917441505634609

namespace A048152

/-- `A025581(n)²%∑[char[∑[n]]]` -/
def P16395917441505634609.Spec : Prop :=
  ∀ n, P16395917441505634609.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P3734796669129799308

`A070216(n+1)%∑[char[∑[n]]]`
-/

namespace A048152.P3734796669129799308
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070216 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048152.P3734796669129799308

namespace A048152

/-- `A070216(n+1)%∑[char[∑[n]]]` -/
def P3734796669129799308.Spec : Prop :=
  ∀ n, P3734796669129799308.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P4505150388889245057

`A215630(n+1)%∑[char[∑[n]]]`
-/

namespace A048152.P4505150388889245057
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215630 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048152.P4505150388889245057

namespace A048152

/-- `A215630(n+1)%∑[char[∑[n]]]` -/
def P4505150388889245057.Spec : Prop :=
  ∀ n, P4505150388889245057.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P13865971613753129040

`A215631(n+1)%∑[char[∑[n]]]`
-/

namespace A048152.P13865971613753129040
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215631 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048152.P13865971613753129040

namespace A048152

/-- `A215631(n+1)%∑[char[∑[n]]]` -/
def P13865971613753129040.Spec : Prop :=
  ∀ n, P13865971613753129040.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P5212061443811385817

`A002260(n+1)²%∑[char[∑[n]]]`
-/

namespace A048152.P5212061443811385817
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048152.P5212061443811385817

namespace A048152

/-- `A002260(n+1)²%∑[char[∑[n]]]` -/
def P5212061443811385817.Spec : Prop :=
  ∀ n, P5212061443811385817.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P3067903884446115937

`A140756(n+1)²%(comp[C(n, 2)]-(n+1))`
-/

namespace A048152.P3067903884446115937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140756 (n + 1) ^ 2) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))

end

end A048152.P3067903884446115937

namespace A048152

/-- `A140756(n+1)²%(comp[C(n, 2)]-(n+1))` -/
def P3067903884446115937.Spec : Prop :=
  ∀ n, P3067903884446115937.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P17152225056162803268

`(C(comp[∑[n]]-n, 2)+1+n)²%A002024(n+1)`
-/

namespace A048152.P17152225056162803268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n) ^ 2 : ℤ) (A002024 (n + 1))

end

end A048152.P17152225056162803268

namespace A048152

/-- `(C(comp[∑[n]]-n, 2)+1+n)²%A002024(n+1)` -/
def P17152225056162803268.Spec : Prop :=
  ∀ n, P17152225056162803268.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P18345963959307192646

`A049767(n+1)-A049759(n+1)`
-/

namespace A048152.P18345963959307192646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049767 (n + 1) - A049759 (n + 1)

end

end A048152.P18345963959307192646

namespace A048152

/-- `A049767(n+1)-A049759(n+1)` -/
def P18345963959307192646.Spec : Prop :=
  ∀ n, P18345963959307192646.a n = A048152 (n + 1)

theorem P18345963959307192646.correct : P18345963959307192646.Spec := by
  intro n
  simp only [A048152, Nat.add_sub_cancel, A048152.P18345963959307192646.a, A048152.P18365048416677811141.a, A049759, A049759.P13035336099111662661.a, A049767, A049767.P11208720705094384557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048152

/-! ## A048152.P16493165294676843202

`A092283(n+1)%A002024(n+1)`
-/

namespace A048152.P16493165294676843202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092283 (n + 1)) (A002024 (n + 1))

end

end A048152.P16493165294676843202

namespace A048152

/-- `A092283(n+1)%A002024(n+1)` -/
def P16493165294676843202.Spec : Prop :=
  ∀ n, P16493165294676843202.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P13934921605133991182

`A095831(n+1)%A002024(n+1)`
-/

namespace A048152.P13934921605133991182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095831 (n + 1)) (A002024 (n + 1))

end

end A048152.P13934921605133991182

namespace A048152

/-- `A095831(n+1)%A002024(n+1)` -/
def P13934921605133991182.Spec : Prop :=
  ∀ n, P13934921605133991182.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P2889685028021730636

`A133819(n+1)%A002024(n+1)`
-/

namespace A048152.P2889685028021730636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133819 (n + 1)) (A002024 (n + 1))

end

end A048152.P2889685028021730636

namespace A048152

/-- `A133819(n+1)%A002024(n+1)` -/
def P2889685028021730636.Spec : Prop :=
  ∀ n, P2889685028021730636.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P2833726449597687178

`(A004736(n+1)-1)²%A002024(n+1)`
-/

namespace A048152.P2833726449597687178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A004736 (n + 1) - 1) ^ 2) (A002024 (n + 1))

end

end A048152.P2833726449597687178

namespace A048152

/-- `(A004736(n+1)-1)²%A002024(n+1)` -/
def P2833726449597687178.Spec : Prop :=
  ∀ n, P2833726449597687178.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P11125368162671749334

`(A000217(round(sqrt(2*n+1)))-(n+1))²%A002024(n+1)`
-/

namespace A048152.P11125368162671749334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ)) ^ 2) (A002024 (n + 1))

end

end A048152.P11125368162671749334

namespace A048152

/-- `(A000217(round(sqrt(2*n+1)))-(n+1))²%A002024(n+1)` -/
def P11125368162671749334.Spec : Prop :=
  ∀ n, P11125368162671749334.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P2082543059282330903

`(n-A000096(A003056(n)))²%A002024(n+1)`
-/

namespace A048152.P2082543059282330903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - A000096 (A003056 n).toNat) ^ 2) (A002024 (n + 1))

end

end A048152.P2082543059282330903

namespace A048152

/-- `(n-A000096(A003056(n)))²%A002024(n+1)` -/
def P2082543059282330903.Spec : Prop :=
  ∀ n, P2082543059282330903.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P691555001092617465

`(A002262(n)-A003056(n))²%A002024(n+1)`
-/

namespace A048152.P691555001092617465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A002262 n - A003056 n) ^ 2) (A002024 (n + 1))

end

end A048152.P691555001092617465

namespace A048152

/-- `(A002262(n)-A003056(n))²%A002024(n+1)` -/
def P691555001092617465.Spec : Prop :=
  ∀ n, P691555001092617465.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P7093135700618461099

`A341736(n+1)%A123578(n+1)`
-/

namespace A048152.P7093135700618461099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341736 (n + 1)) (A123578 (n + 1))

end

end A048152.P7093135700618461099

namespace A048152

/-- `A341736(n+1)%A123578(n+1)` -/
def P7093135700618461099.Spec : Prop :=
  ∀ n, P7093135700618461099.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P9047544891566395284

`(A004736(n+2)%A004736(n+1))²%A002024(n+1)`
-/

namespace A048152.P9047544891566395284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004736 (n + 2)) (A004736 (n + 1)) ^ 2) (A002024 (n + 1))

end

end A048152.P9047544891566395284

namespace A048152

/-- `(A004736(n+2)%A004736(n+1))²%A002024(n+1)` -/
def P9047544891566395284.Spec : Prop :=
  ∀ n, P9047544891566395284.a n = A048152 (n + 1)

end A048152

/-! ## A048152.P6677019783614151904

`A336302(A004201(n+1))`
-/

namespace A048152.P6677019783614151904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336302 (A004201 (n + 1)).toNat

end

end A048152.P6677019783614151904

namespace A048152

/-- `A336302(A004201(n+1))` -/
def P6677019783614151904.Spec : Prop :=
  ∀ n, P6677019783614151904.a n = A048152 (n + 1)

end A048152

/-!
# A048153: a(n) = Sum_{k=1..n} (k^2 mod n).

The programs for A048153, the canonical program `A048153.P11070946179227361385` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048153 has offset 1).

The definition of A048153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)²%(n+1)]` (program `A048153.P11070946179227361385`, by `A048153.P11070946179227361385.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048153.P11070946179227361385

`∑{#}[n, (#+1)²%(n+1)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048153

/-- `∑{#}[n, (#+1)²%(n+1)]` -/
def P11070946179227361385.Spec : Prop :=
  ∀ n, (P11070946179227361385.a n : ℤ) = A048153 (n + 1)

theorem P11070946179227361385.correct : P11070946179227361385.Spec := by
  intro n
  simp only [A048153, Nat.add_sub_cancel]

end A048153

/-! ## A048153.P571292001592625583

`∑[(n+1)²]-(n+1)*A014817(n+1)`
-/

namespace A048153.P571292001592625583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ) * A014817 (n + 1)

end

end A048153.P571292001592625583

namespace A048153

/-- `∑[(n+1)²]-(n+1)*A014817(n+1)` -/
def P571292001592625583.Spec : Prop :=
  ∀ n, P571292001592625583.a n = A048153 (n + 1)

end A048153

/-! ## A048153.P16477316397692166597

`A231589(n+1)+A230366(n+1)`
-/

namespace A048153.P16477316397692166597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231589 (n + 1) + A230366 (n + 1)

end

end A048153.P16477316397692166597

namespace A048153

/-- `A231589(n+1)+A230366(n+1)` -/
def P16477316397692166597.Spec : Prop :=
  ∀ n, P16477316397692166597.a n = A048153 (n + 1)

theorem P16477316397692166597.correct : P16477316397692166597.Spec := by
  intro n
  simp only [A048153, Nat.add_sub_cancel, A048153.P16477316397692166597.a, A048153.P11070946179227361385.f1, A048153.P11070946179227361385.a, A230366, A230366.P11808188151073460038.f1, A230366.P11808188151073460038.a, A231589, A231589.P10000512444880285996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048153

/-! ## A048153.P6132921233487676137

`A049768(n+1)-A049760(n+1)`
-/

namespace A048153.P6132921233487676137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) - A049760 (n + 1)

end

end A048153.P6132921233487676137

namespace A048153

/-- `A049768(n+1)-A049760(n+1)` -/
def P6132921233487676137.Spec : Prop :=
  ∀ n, P6132921233487676137.a n = A048153 (n + 1)

theorem P6132921233487676137.correct : P6132921233487676137.Spec := by
  intro n
  simp only [A048153, Nat.add_sub_cancel, A048153.P6132921233487676137.a, A048153.P11070946179227361385.f1, A048153.P11070946179227361385.a, A049760, A049760.P1597653930587330474.f1, A049760.P1597653930587330474.a, A049768, A049768.P12397298444946621357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048153

/-! ## A048153.P15516990569919351069

`A195938(n+1)+2*A231589(n+1)`
-/

namespace A048153.P15516990569919351069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195938 (n + 1) + 2 * A231589 (n + 1)

end

end A048153.P15516990569919351069

namespace A048153

/-- `A195938(n+1)+2*A231589(n+1)` -/
def P15516990569919351069.Spec : Prop :=
  ∀ n, P15516990569919351069.a n = A048153 (n + 1)

end A048153

/-! ## A048153.P6331802560210479142

`2*A230366(n+1)-A195938(n+1)`
-/

namespace A048153.P6331802560210479142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230366 (n + 1) - A195938 (n + 1)

end

end A048153.P6331802560210479142

namespace A048153

/-- `2*A230366(n+1)-A195938(n+1)` -/
def P6331802560210479142.Spec : Prop :=
  ∀ n, P6331802560210479142.a n = A048153 (n + 1)

end A048153

/-! ## A048153.P12672450491797319519

`A049768(n+1)+A049760(n+1)*A153881(n+1)`
-/

namespace A048153.P12672450491797319519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) + A049760 (n + 1) * A153881 (n + 1)

end

end A048153.P12672450491797319519

namespace A048153

/-- `A049768(n+1)+A049760(n+1)*A153881(n+1)` -/
def P12672450491797319519.Spec : Prop :=
  ∀ n, P12672450491797319519.a n = A048153 (n + 1)

end A048153

/-! ## A048153.P605888753289725739

`A195938(n+1)+A005843(A231589(n+1))`
-/

namespace A048153.P605888753289725739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195938 (n + 1) + A005843 (A231589 (n + 1)).toNat

end

end A048153.P605888753289725739

namespace A048153

/-- `A195938(n+1)+A005843(A231589(n+1))` -/
def P605888753289725739.Spec : Prop :=
  ∀ n, P605888753289725739.a n = A048153 (n + 1)

end A048153

/-!
# A048154: Triangular array T read by rows: T(n,k)=k^3 mod n, for k=1,2,...,n, n=1,2,...

The programs for A048154, the canonical program `A048154.P11837491053237582354` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048154 has offset 1).

The definition of A048154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((col(n)+1)^3)%(row(n)+1)` (program `A048154.P11837491053237582354`, by `A048154.P11837491053237582354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048154.P11837491053237582354

`((col(n)+1)^3)%(row(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048154

/-- `((col(n)+1)^3)%(row(n)+1)` -/
def P11837491053237582354.Spec : Prop :=
  ∀ n, (P11837491053237582354.a n : ℤ) = A048154 (n + 1)

theorem P11837491053237582354.correct : P11837491053237582354.Spec := by
  intro n
  simp only [A048154, Nat.add_sub_cancel]

end A048154

/-! ## A048154.P13480645078820432040

`A049769(n+1)-A049761(n+1)`
-/

namespace A048154.P13480645078820432040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049769 (n + 1) - A049761 (n + 1)

end

end A048154.P13480645078820432040

namespace A048154

/-- `A049769(n+1)-A049761(n+1)` -/
def P13480645078820432040.Spec : Prop :=
  ∀ n, P13480645078820432040.a n = A048154 (n + 1)

theorem P13480645078820432040.correct : P13480645078820432040.Spec := by
  intro n
  simp only [A048154, Nat.add_sub_cancel, A048154.P13480645078820432040.a, A048154.P11837491053237582354.a, A049761, A049761.P9714289951654746769.a, A049769, A049769.P7463120430097931802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048154

/-! ## A048154.P17876347572302122847

`A133820(n+1)%A002024(n+1)`
-/

namespace A048154.P17876347572302122847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133820 (n + 1)) (A002024 (n + 1))

end

end A048154.P17876347572302122847

namespace A048154

/-- `A133820(n+1)%A002024(n+1)` -/
def P17876347572302122847.Spec : Prop :=
  ∀ n, P17876347572302122847.a n = A048154 (n + 1)

end A048154

/-! ## A048154.P528000947910542438

`A321490(n+1)%A002024(n+1)`
-/

namespace A048154.P528000947910542438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321490 (n + 1)) (A002024 (n + 1))

end

end A048154.P528000947910542438

namespace A048154

/-- `A321490(n+1)%A002024(n+1)` -/
def P528000947910542438.Spec : Prop :=
  ∀ n, P528000947910542438.a n = A048154 (n + 1)

end A048154

/-! ## A048154.P5860400217735100456

`A000578(A002260(n+1))%A002024(n+1)`
-/

namespace A048154.P5860400217735100456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A002260 (n + 1)).toNat) (A002024 (n + 1))

end

end A048154.P5860400217735100456

namespace A048154

/-- `A000578(A002260(n+1))%A002024(n+1)` -/
def P5860400217735100456.Spec : Prop :=
  ∀ n, P5860400217735100456.a n = A048154 (n + 1)

end A048154

/-! ## A048154.P14446352970257010768

`A143150(n+1)%A002024(n+1)`
-/

namespace A048154.P14446352970257010768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143150 (n + 1)) (A002024 (n + 1))

end

end A048154.P14446352970257010768

namespace A048154

/-- `A143150(n+1)%A002024(n+1)` -/
def P14446352970257010768.Spec : Prop :=
  ∀ n, P14446352970257010768.a n = A048154 (n + 1)

end A048154

/-! ## A048154.P4442634167077933899

`A000578(A002262(n+1))%A000194(2*(n+1))`
-/

namespace A048154.P4442634167077933899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A002262 (n + 1)).toNat) (A000194 (2 * (n + 1)))

end

end A048154.P4442634167077933899

namespace A048154

/-- `A000578(A002262(n+1))%A000194(2*(n+1))` -/
def P4442634167077933899.Spec : Prop :=
  ∀ n, P4442634167077933899.a n = A048154 (n + 1)

end A048154

/-!
# A048155: a(n)=Sum{T(n,k): k=1,2,...,n}, array T as in A048154.

The programs for A048155, the canonical program `A048155.P7922395243510409823` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048155 has offset 1).

The definition of A048155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048155.P7922395243510409823

`∑{#}[n, (#+1)*(1-floor((#+1)^3/(n+1))+floor(((#+1)^3-1)/(n+1)))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048155

/-- `∑{#}[n, (#+1)*(1-floor((#+1)^3/(n+1))+floor(((#+1)^3-1)/(n+1)))]` -/
def P7922395243510409823.Spec : Prop :=
  ∀ n, P7922395243510409823.a n = A048155 (n + 1)

theorem P7922395243510409823.correct : P7922395243510409823.Spec := by
  intro n
  simp only [A048155, Nat.add_sub_cancel]

end A048155

/-! ## A048155.P2488115011374404788

`∑[n+1]²%A014818(n+1)`
-/

namespace A048155.P2488115011374404788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A014818 (n + 1))

end

end A048155.P2488115011374404788

namespace A048155

/-- `∑[n+1]²%A014818(n+1)` -/
def P2488115011374404788.Spec : Prop :=
  ∀ n, P2488115011374404788.a n = A048155 (n + 1)

end A048155

/-! ## A048155.P3540207468128250828

`(n+1)*(n+1-A000189(n+1))/2`
-/

namespace A048155.P3540207468128250828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((n + 1 : ℤ) - A000189 (n + 1) : ℚ) / 2)

end

end A048155.P3540207468128250828

namespace A048155

/-- `(n+1)*(n+1-A000189(n+1))/2` -/
def P3540207468128250828.Spec : Prop :=
  ∀ n, P3540207468128250828.a n = (A048155 (n + 1) : ℚ)

end A048155

/-! ## A048155.P9167563942558243642

`A049770(n+1)-A049762(n+1)`
-/

namespace A048155.P9167563942558243642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049770 (n + 1) - A049762 (n + 1)

end

end A048155.P9167563942558243642

namespace A048155

/-- `A049770(n+1)-A049762(n+1)` -/
def P9167563942558243642.Spec : Prop :=
  ∀ n, P9167563942558243642.a n = A048155 (n + 1)

theorem P9167563942558243642.correct : P9167563942558243642.Spec := by
  intro n
  simp only [A048155, Nat.add_sub_cancel, A048155.P9167563942558243642.a, A048155.P7922395243510409823.f1, A048155.P7922395243510409823.a, A049762, A049762.P1721772609132714128.f1, A049762.P1721772609132714128.a, A049770, A049770.P17306687827743446217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048155

/-! ## A048155.P900962608832236591

`A000290(∑[n+1])-(n+1)*A014818(n+1)`
-/

namespace A048155.P900962608832236591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ) * A014818 (n + 1)

end

end A048155.P900962608832236591

namespace A048155

/-- `A000290(∑[n+1])-(n+1)*A014818(n+1)` -/
def P900962608832236591.Spec : Prop :=
  ∀ n, P900962608832236591.a n = A048155 (n + 1)

end A048155

/-! ## A048155.P13140234901813398165

`A004525((n+1)*(n+1-A000189(n+1)))`
-/

namespace A048155.P13140234901813398165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * ((n + 1 : ℤ) - A000189 (n + 1))).toNat

end

end A048155.P13140234901813398165

namespace A048155

/-- `A004525((n+1)*(n+1-A000189(n+1)))` -/
def P13140234901813398165.Spec : Prop :=
  ∀ n, P13140234901813398165.a n = A048155 (n + 1)

end A048155

/-!
# A048156: Triangular array T read by rows: T(n,k)=k^4 mod n, for k=1,2,...,n, n=1,2,...

The programs for A048156, the canonical program `A048156.P17805607225871025132` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048156 has offset 1).

The definition of A048156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((col(n)+1)^4)%(row(n)+1)` (program `A048156.P17805607225871025132`, by `A048156.P17805607225871025132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048156.P17805607225871025132

`((col(n)+1)^4)%(row(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048156

/-- `((col(n)+1)^4)%(row(n)+1)` -/
def P17805607225871025132.Spec : Prop :=
  ∀ n, (P17805607225871025132.a n : ℤ) = A048156 (n + 1)

theorem P17805607225871025132.correct : P17805607225871025132.Spec := by
  intro n
  simp only [A048156, Nat.add_sub_cancel]

end A048156

/-! ## A048156.P4974996972731251244

`A048152(n+1)²%∑[char[∑[n]]]`
-/

namespace A048156.P4974996972731251244
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048152 (n + 1) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048156.P4974996972731251244

namespace A048156

/-- `A048152(n+1)²%∑[char[∑[n]]]` -/
def P4974996972731251244.Spec : Prop :=
  ∀ n, P4974996972731251244.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P5820444265887075656

`A070216(n+1)²%∑[char[∑[n]]]`
-/

namespace A048156.P5820444265887075656
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070216 (n + 1) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048156.P5820444265887075656

namespace A048156

/-- `A070216(n+1)²%∑[char[∑[n]]]` -/
def P5820444265887075656.Spec : Prop :=
  ∀ n, P5820444265887075656.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P12297499725927842236

`A215630(n+1)²%∑[char[∑[n]]]`
-/

namespace A048156.P12297499725927842236
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215630 (n + 1) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048156.P12297499725927842236

namespace A048156

/-- `A215630(n+1)²%∑[char[∑[n]]]` -/
def P12297499725927842236.Spec : Prop :=
  ∀ n, P12297499725927842236.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P6145727718145866773

`A215631(n+1)²%∑[char[∑[n]]]`
-/

namespace A048156.P6145727718145866773
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215631 (n + 1) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048156.P6145727718145866773

namespace A048156

/-- `A215631(n+1)²%∑[char[∑[n]]]` -/
def P6145727718145866773.Spec : Prop :=
  ∀ n, P6145727718145866773.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P3613049017266627793

`(n+1-C(comp[∑[n]]-n, 2))²²%A002024(n+1)`
-/

namespace A048156.P3613049017266627793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2) ^ 2) (A002024 (n + 1))

end

end A048156.P3613049017266627793

namespace A048156

/-- `(n+1-C(comp[∑[n]]-n, 2))²²%A002024(n+1)` -/
def P3613049017266627793.Spec : Prop :=
  ∀ n, P3613049017266627793.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P10138784819788623494

`A049771(n+1)-A049763(n+1)`
-/

namespace A048156.P10138784819788623494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049771 (n + 1) - A049763 (n + 1)

end

end A048156.P10138784819788623494

namespace A048156

/-- `A049771(n+1)-A049763(n+1)` -/
def P10138784819788623494.Spec : Prop :=
  ∀ n, P10138784819788623494.a n = A048156 (n + 1)

theorem P10138784819788623494.correct : P10138784819788623494.Spec := by
  intro n
  simp only [A048156, Nat.add_sub_cancel, A048156.P10138784819788623494.a, A048156.P17805607225871025132.a, A049763, A049763.P7840748025539565048.a, A049771, A049771.P1884432723839077167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048156

/-! ## A048156.P1755571058724605846

`A133821(n+1)%A002024(n+1)`
-/

namespace A048156.P1755571058724605846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133821 (n + 1)) (A002024 (n + 1))

end

end A048156.P1755571058724605846

namespace A048156

/-- `A133821(n+1)%A002024(n+1)` -/
def P1755571058724605846.Spec : Prop :=
  ∀ n, P1755571058724605846.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P8656253553954478123

`A219069(n+1)%A002024(n+1)`
-/

namespace A048156.P8656253553954478123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219069 (n + 1)) (A002024 (n + 1))

end

end A048156.P8656253553954478123

namespace A048156

/-- `A219069(n+1)%A002024(n+1)` -/
def P8656253553954478123.Spec : Prop :=
  ∀ n, P8656253553954478123.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P12441066913203114991

`A133819(n+1)²%A002024(n+1)`
-/

namespace A048156.P12441066913203114991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133819 (n + 1) ^ 2) (A002024 (n + 1))

end

end A048156.P12441066913203114991

namespace A048156

/-- `A133819(n+1)²%A002024(n+1)` -/
def P12441066913203114991.Spec : Prop :=
  ∀ n, P12441066913203114991.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P5678008124741459907

`(A002260(n+1)^4)%A002024(n+1)`
-/

namespace A048156.P5678008124741459907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1) ^ 4) (A002024 (n + 1))

end

end A048156.P5678008124741459907

namespace A048156

/-- `(A002260(n+1)^4)%A002024(n+1)` -/
def P5678008124741459907.Spec : Prop :=
  ∀ n, P5678008124741459907.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P18200220872422998520

`∑[A185869(n+1)]²%A002024(n+1)`
-/

namespace A048156.P18200220872422998520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (A002024 (n + 1))

end

end A048156.P18200220872422998520

namespace A048156

/-- `∑[A185869(n+1)]²%A002024(n+1)` -/
def P18200220872422998520.Spec : Prop :=
  ∀ n, P18200220872422998520.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P12359430857060391330

`(A025581(n)²%A002024(n+1))²%A002024(n+1)`
-/

namespace A048156.P12359430857060391330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A025581 n ^ 2) (A002024 (n + 1)) ^ 2) (A002024 (n + 1))

end

end A048156.P12359430857060391330

namespace A048156

/-- `(A025581(n)²%A002024(n+1))²%A002024(n+1)` -/
def P12359430857060391330.Spec : Prop :=
  ∀ n, P12359430857060391330.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P2193063562940608409

`(A004202(n+1)²%A002024(n+1))²%A002024(n+1)`
-/

namespace A048156.P2193063562940608409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004202 (n + 1) ^ 2) (A002024 (n + 1)) ^ 2) (A002024 (n + 1))

end

end A048156.P2193063562940608409

namespace A048156

/-- `(A004202(n+1)²%A002024(n+1))²%A002024(n+1)` -/
def P2193063562940608409.Spec : Prop :=
  ∀ n, P2193063562940608409.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P6982905137482484463

`((A004736(n+1)-1)²%A002024(n+1))²%A002024(n+1)`
-/

namespace A048156.P6982905137482484463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((A004736 (n + 1) - 1) ^ 2) (A002024 (n + 1)) ^ 2) (A002024 (n + 1))

end

end A048156.P6982905137482484463

namespace A048156

/-- `((A004736(n+1)-1)²%A002024(n+1))²%A002024(n+1)` -/
def P6982905137482484463.Spec : Prop :=
  ∀ n, P6982905137482484463.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P326829558677721323

`((n-A000096(A003056(n)))²%A002024(n+1))²%A002024(n+1)`
-/

namespace A048156.P326829558677721323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (((n : ℤ) - A000096 (A003056 n).toNat) ^ 2) (A002024 (n + 1)) ^ 2) (A002024 (n + 1))

end

end A048156.P326829558677721323

namespace A048156

/-- `((n-A000096(A003056(n)))²%A002024(n+1))²%A002024(n+1)` -/
def P326829558677721323.Spec : Prop :=
  ∀ n, P326829558677721323.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P14048848797565073454

`((A002262(n)-A003056(n))²%A002024(n+1))²%A002024(n+1)`
-/

namespace A048156.P14048848797565073454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((A002262 n - A003056 n) ^ 2) (A002024 (n + 1)) ^ 2) (A002024 (n + 1))

end

end A048156.P14048848797565073454

namespace A048156

/-- `((A002262(n)-A003056(n))²%A002024(n+1))²%A002024(n+1)` -/
def P14048848797565073454.Spec : Prop :=
  ∀ n, P14048848797565073454.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P5250961125400521927

`A048152(A038722(n+1)+A002262(n)-A048152(n+1))`
-/

namespace A048156.P5250961125400521927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A038722 (n + 1) + (A002262 n - A048152 (n + 1))).toNat

end

end A048156.P5250961125400521927

namespace A048156

/-- `A048152(A038722(n+1)+A002262(n)-A048152(n+1))` -/
def P5250961125400521927.Spec : Prop :=
  ∀ n, P5250961125400521927.a n = A048156 (n + 1)

end A048156

/-! ## A048156.P17015496420467159257

`((A057555(2*(n+1))-1)²%A002024(n+1))²%A002024(n+1)`
-/

namespace A048156.P17015496420467159257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((A057555 (2 * (n + 1)) - 1) ^ 2) (A002024 (n + 1)) ^ 2) (A002024 (n + 1))

end

end A048156.P17015496420467159257

namespace A048156

/-- `((A057555(2*(n+1))-1)²%A002024(n+1))²%A002024(n+1)` -/
def P17015496420467159257.Spec : Prop :=
  ∀ n, P17015496420467159257.a n = A048156 (n + 1)

end A048156

/-!
# A048157: a(n)=Sum{T(n,k): k=1,2,...,n}, array T as in A048156.

The programs for A048157, there is no canonical definition to state claims against.
-/

/-! ## A048157.P1070176428159355037

`A049772(n+1)-A049764(n+1)`
-/

namespace A048157.P1070176428159355037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049772 (n + 1) - A049764 (n + 1)

end

end A048157.P1070176428159355037

/-!
# A048158: Triangular array T read by rows: T(n,k) = n mod k, for k=1,2,...,n, n=1,2,...

The programs for A048158, the canonical program `A048158.P1757030368331788429` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048158 has offset 1).

The definition of A048158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)%(col(n)+1)` (program `A048158.P1757030368331788429`, by `A048158.P1757030368331788429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048158.P1757030368331788429

`(row(n)+1)%(col(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048158

/-- `(row(n)+1)%(col(n)+1)` -/
def P1757030368331788429.Spec : Prop :=
  ∀ n, (P1757030368331788429.a n : ℤ) = A048158 (n + 1)

theorem P1757030368331788429.correct : P1757030368331788429.Spec := by
  intro n
  simp only [A048158, Nat.add_sub_cancel]

end A048158

/-! ## A048158.P3866262779130988730

`(row(n)-col(n))%(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048158.P3866262779130988730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A048158.P3866262779130988730

namespace A048158

/-- `(row(n)-col(n))%(col(n)+1)` -/
def P3866262779130988730.Spec : Prop :=
  ∀ n, P3866262779130988730.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P326615038120233327

`A051777(∑[char[∑[n]]]²-n)`
-/

namespace A048158.P326615038120233327
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A048158.P326615038120233327

namespace A048158

/-- `A051777(∑[char[∑[n]]]²-n)` -/
def P326615038120233327.Spec : Prop :=
  ∀ n, P326615038120233327.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P9549543359561625612

`∑[char[∑[n]]]%A002260(n+1)`
-/

namespace A048158.P9549543359561625612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A002260 (n + 1))

end

end A048158.P9549543359561625612

namespace A048158

/-- `∑[char[∑[n]]]%A002260(n+1)` -/
def P9549543359561625612.Spec : Prop :=
  ∀ n, P9549543359561625612.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P2637130934890774766

`(comp[C(n, 2)]-(n+1))%A140756(n+1)`
-/

namespace A048158.P2637130934890774766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)) (A140756 (n + 1))

end

end A048158.P2637130934890774766

namespace A048158

/-- `(comp[C(n, 2)]-(n+1))%A140756(n+1)` -/
def P2637130934890774766.Spec : Prop :=
  ∀ n, P2637130934890774766.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P8088152637755595768

`A002024(n+1)%(n+1-C(round(sqrt(2*n)), 2))`
-/

namespace A048158.P8088152637755595768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2 : ℤ))

end

end A048158.P8088152637755595768

namespace A048158

/-- `A002024(n+1)%(n+1-C(round(sqrt(2*n)), 2))` -/
def P8088152637755595768.Spec : Prop :=
  ∀ n, P8088152637755595768.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P4471089285572350089

`(C(comp[∑[n]]-n, 2)-(n+1))%(A002262(n)+1)`
-/

namespace A048158.P4471089285572350089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) (A002262 n + 1)

end

end A048158.P4471089285572350089

namespace A048158

/-- `(C(comp[∑[n]]-n, 2)-(n+1))%(A002262(n)+1)` -/
def P4471089285572350089.Spec : Prop :=
  ∀ n, P4471089285572350089.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P5985551271054969895

`A051127(A122797(n+1))`
-/

namespace A048158.P5985551271054969895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (A122797 (n + 1)).toNat

end

end A048158.P5985551271054969895

namespace A048158

/-- `A051127(A122797(n+1))` -/
def P5985551271054969895.Spec : Prop :=
  ∀ n, P5985551271054969895.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P11447589084606922931

`A372727(A014132(n+1))`
-/

namespace A048158.P11447589084606922931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372727 (A014132 (n + 1)).toNat

end

end A048158.P11447589084606922931

namespace A048158

/-- `A372727(A014132(n+1))` -/
def P11447589084606922931.Spec : Prop :=
  ∀ n, P11447589084606922931.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P288270727496003463

`A025581(n)%A128227(n)`
-/

namespace A048158.P288270727496003463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n) (A128227 n)

end

end A048158.P288270727496003463

namespace A048158

/-- `A025581(n)%A128227(n)` -/
def P288270727496003463.Spec : Prop :=
  ∀ n, P288270727496003463.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P13324187197258739661

`A123578(n)%A128227(n)`
-/

namespace A048158.P13324187197258739661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 n) (A128227 n)

end

end A048158.P13324187197258739661

namespace A048158

/-- `A123578(n)%A128227(n)` -/
def P13324187197258739661.Spec : Prop :=
  ∀ n, P13324187197258739661.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P16543936580887095858

`A130855(n)%A128227(n)`
-/

namespace A048158.P16543936580887095858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130855 n) (A128227 n)

end

end A048158.P16543936580887095858

namespace A048158

/-- `A130855(n)%A128227(n)` -/
def P16543936580887095858.Spec : Prop :=
  ∀ n, P16543936580887095858.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P10712293118804364941

`A002024(n+1)%A128227(n)`
-/

namespace A048158.P10712293118804364941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (A128227 n)

end

end A048158.P10712293118804364941

namespace A048158

/-- `A002024(n+1)%A128227(n)` -/
def P10712293118804364941.Spec : Prop :=
  ∀ n, P10712293118804364941.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P5520144535990451684

`A049765(n+1)%A128227(n)`
-/

namespace A048158.P5520144535990451684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049765 (n + 1)) (A128227 n)

end

end A048158.P5520144535990451684

namespace A048158

/-- `A049765(n+1)%A128227(n)` -/
def P5520144535990451684.Spec : Prop :=
  ∀ n, P5520144535990451684.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P10705024484900584760

`A083487(n+1)%A128227(n)`
-/

namespace A048158.P10705024484900584760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083487 (n + 1)) (A128227 n)

end

end A048158.P10705024484900584760

namespace A048158

/-- `A083487(n+1)%A128227(n)` -/
def P10705024484900584760.Spec : Prop :=
  ∀ n, P10705024484900584760.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P13694751271312543559

`A084855(n+1)%A128227(n)`
-/

namespace A048158.P13694751271312543559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084855 (n + 1)) (A128227 n)

end

end A048158.P13694751271312543559

namespace A048158

/-- `A084855(n+1)%A128227(n)` -/
def P13694751271312543559.Spec : Prop :=
  ∀ n, P13694751271312543559.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P202137111980490583

`A092283(n+1)%A128227(n)`
-/

namespace A048158.P202137111980490583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092283 (n + 1)) (A128227 n)

end

end A048158.P202137111980490583

namespace A048158

/-- `A092283(n+1)%A128227(n)` -/
def P202137111980490583.Spec : Prop :=
  ∀ n, P202137111980490583.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P9022630734636125091

`A108872(n+1)%A128227(n)`
-/

namespace A048158.P9022630734636125091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108872 (n + 1)) (A128227 n)

end

end A048158.P9022630734636125091

namespace A048158

/-- `A108872(n+1)%A128227(n)` -/
def P9022630734636125091.Spec : Prop :=
  ∀ n, P9022630734636125091.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P6671629903201362801

`A002260(A286158(n+1)+1)-1`
-/

namespace A048158.P6671629903201362801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286158 (n + 1) + 1).toNat - 1

end

end A048158.P6671629903201362801

namespace A048158

/-- `A002260(A286158(n+1)+1)-1` -/
def P6671629903201362801.Spec : Prop :=
  ∀ n, P6671629903201362801.a n = A048158 (n + 1)

end A048158

/-! ## A048158.P9304528463129066906

`A049765(n+1)-A048151(n+1)`
-/

namespace A048158.P9304528463129066906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049765 (n + 1) - A048151 (n + 1)

end

end A048158.P9304528463129066906

namespace A048158

/-- `A049765(n+1)-A048151(n+1)` -/
def P9304528463129066906.Spec : Prop :=
  ∀ n, P9304528463129066906.a n = A048158 (n + 1)

theorem P9304528463129066906.correct : P9304528463129066906.Spec := by
  intro n
  simp only [A048158, Nat.add_sub_cancel, A048158.P9304528463129066906.a, A048158.P1757030368331788429.a, A048151, A048151.P3227743321972080880.a, A049765, A049765.P15350466797058362361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048158

/-!
# A048159: Triangle giving a(n,k) = number of (n,k) labeled Greg trees (n >= 2, 0 <= k <= n-2).

The programs for A048159, there is no canonical definition to state claims against.
-/

/-! ## A048159.P15323706897299357055

`n^a(n-2)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=16, a(4)=13, a(5)=3, a(6)=125, a(7)=171`
-/

namespace A048159.P15323706897299357055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 16, 13, 3, 125, 171] fun n a =>
  n ^ a (n - 2)

end

end A048159.P15323706897299357055

/-! ## A048159.P15186520327812602965

`A002260(A057548(n)^A194968(n+2))`
-/

namespace A048159.P15186520327812602965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A057548 n : ℚ) ^ (A194968 (n + 2) : ℤ))).toNat

end

end A048159.P15186520327812602965

/-! ## A048159.P10342283887392469641

`A259841(n+1)+A056654(A240642(n+1))`
-/

namespace A048159.P10342283887392469641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259841 (n + 1) + A056654 (A240642 (n + 1)).toNat

end

end A048159.P10342283887392469641

/-!
# A048161: Primes p such that q = (p^2 + 1)/2 is also a prime.

The programs for A048161, there is no canonical definition to state claims against.
-/

/-! ## A048161.P11303538518492387403

`sqrt(A263951(n+1))`
-/

namespace A048161.P11303538518492387403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A263951 (n + 1) : ℝ)

end

end A048161.P11303538518492387403

/-! ## A048161.P7852853119676643199

`floor(sqrt(A259979(n+1)))`
-/

namespace A048161.P7852853119676643199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A259979 (n + 1))

end

end A048161.P7852853119676643199

/-! ## A048161.P8642838634394281992

`2*A068501(n+1)+1`
-/

namespace A048161.P8642838634394281992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068501 (n + 1) + 1

end

end A048161.P8642838634394281992

/-! ## A048161.P11919489743885786823

`2*A178659(n+1)-1`
-/

namespace A048161.P11919489743885786823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178659 (n + 1) - 1

end

end A048161.P11919489743885786823

/-! ## A048161.P13687375372393189671

`round(sqrt(2*A067755(n+1)))`
-/

namespace A048161.P13687375372393189671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A067755 (n + 1) : ℝ))

end

end A048161.P13687375372393189671

/-! ## A048161.P18357555154688828133

`round(sqrt(2*A067756(n+1)))`
-/

namespace A048161.P18357555154688828133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A067756 (n + 1) : ℝ))

end

end A048161.P18357555154688828133

/-! ## A048161.P12591655911989473860

`A178659(n+1)+A068501(n+1)`
-/

namespace A048161.P12591655911989473860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1) + A068501 (n + 1)

end

end A048161.P12591655911989473860

/-! ## A048161.P9417834840394934697

`A334802(n+1)/A067756(n+1)`
-/

namespace A048161.P9417834840394934697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334802 (n + 1) : ℚ) / (A067756 (n + 1) : ℚ)

end

end A048161.P9417834840394934697

/-! ## A048161.P5682012006249119498

`A334802(n+1)%A067755(n+1)`
-/

namespace A048161.P5682012006249119498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334802 (n + 1)) (A067755 (n + 1))

end

end A048161.P5682012006249119498

/-! ## A048161.P251733604726916701

`gcd(A263951(n+1), A334802(n+1))`
-/

namespace A048161.P251733604726916701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263951 (n + 1)) (A334802 (n + 1))

end

end A048161.P251733604726916701

/-! ## A048161.P5172402234108794846

`A067755(n+1)/A178659(n+1)+1`
-/

namespace A048161.P5172402234108794846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067755 (n + 1) : ℚ) / (A178659 (n + 1) : ℚ) + 1

end

end A048161.P5172402234108794846

/-! ## A048161.P11998652187148526467

`A067755(n+1)/A068501(n+1)-1`
-/

namespace A048161.P11998652187148526467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067755 (n + 1) : ℚ) / (A068501 (n + 1) : ℚ) - 1

end

end A048161.P11998652187148526467

/-! ## A048161.P10705405783615798193

`2/A259979(n+1)*A334802(n+1)`
-/

namespace A048161.P10705405783615798193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A259979 (n + 1) : ℚ) * (A334802 (n + 1) : ℚ)

end

end A048161.P10705405783615798193

/-! ## A048161.P17004850287526062972

`p?[A281575(n+1)]`
-/

namespace A048161.P17004850287526062972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048161.P17004850287526062972

/-! ## A048161.P10058632471162356275

`p?[A172438(n+1)]`
-/

namespace A048161.P10058632471162356275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048161.P10058632471162356275

/-! ## A048161.P9522746730318065193

`∩[A172438(n+1), A281575(n+1)]`
-/

namespace A048161.P9522746730318065193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048161.P9522746730318065193

/-! ## A048161.P11364758885168842743

`∩[A281575(n+1), A378441(n+1)]`
-/

namespace A048161.P11364758885168842743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048161.P11364758885168842743

/-! ## A048161.P8926934552233076521

`p?[A002731(n+1)]`
-/

namespace A048161.P8926934552233076521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048161.P8926934552233076521

/-! ## A048161.P7850410351990654754

`p?[2*A027861(n+1)+1]`
-/

namespace A048161.P7850410351990654754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027861 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048161.P7850410351990654754

/-! ## A048161.P15063649208262434511

`∩[A002731(n+1), A172438(n+1)]`
-/

namespace A048161.P15063649208262434511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048161.P15063649208262434511

/-!
# A048162: Expansion of (1 - x + 3*x^3 - 2*x^4 - 3*x^5)/(1 - 2*x + x^3).

The programs for A048162, the canonical program `A048162.P13090348840923650393` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048162 has offset 0).

The definition of A048162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+3x^3-2x^4-3x^5)/(1-2x+x^3))` (program `A048162.P13090348840923650393`, by `A048162.P13090348840923650393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048162.P13090348840923650393

`ogf((1-x+3x^3-2x^4-3x^5)/(1-2x+x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048162

/-- `ogf((1-x+3x^3-2x^4-3x^5)/(1-2x+x^3))` -/
def P13090348840923650393.Spec : Prop :=
  ∀ n, P13090348840923650393.a n = A048162 n

theorem P13090348840923650393.correct : P13090348840923650393.Spec := by
  intro n
  simp only [A048162]

end A048162

/-! ## A048162.P2868790477840933760

`a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=9`
-/

namespace A048162.P2868790477840933760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 9] fun n a =>
  a (n - 1) + a (n - 2) - 2

end

end A048162.P2868790477840933760

namespace A048162

/-- `a(n-1)+a(n-2)-2` -/
def P2868790477840933760.Spec : Prop :=
  ∀ n, P2868790477840933760.a n = A048162 n

end A048162

/-! ## A048162.P4544986144483275083

`a(n-1)-(2-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=9`
-/

namespace A048162.P4544986144483275083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 9] fun n a =>
  a (n - 1) - (2 - a (n - 2))

end

end A048162.P4544986144483275083

namespace A048162

/-- `a(n-1)-(2-a(n-2))` -/
def P4544986144483275083.Spec : Prop :=
  ∀ n, P4544986144483275083.a n = A048162 n

end A048162

/-! ## A048162.P10058204830625334707

`A000032(n)+a(2%n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A048162.P10058204830625334707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000032 n + a (2 % n)

end

end A048162.P10058204830625334707

namespace A048162

/-- `A000032(n)+a(2%n)` -/
def P10058204830625334707.Spec : Prop :=
  ∀ n, P10058204830625334707.a n = A048162 n

end A048162

/-! ## A048162.P12954184691586569146

`A000032(n)+a(A176895(2*n)-1)+1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A048162.P12954184691586569146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000032 n + a (A176895 (2 * n) - 1).toNat + 1

end

end A048162.P12954184691586569146

namespace A048162

/-- `A000032(n)+a(A176895(2*n)-1)+1` -/
def P12954184691586569146.Spec : Prop :=
  ∀ n, P12954184691586569146.a n = A048162 n

end A048162

/-! ## A048162.P9768508057438332679

`Δ[A000032(n+1)]+3%(n+1)-1`
-/

namespace A048162.P9768508057438332679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (((3 % (n + 1) : ℕ) : ℤ) - 1)

end

end A048162.P9768508057438332679

namespace A048162

/-- `Δ[A000032(n+1)]+3%(n+1)-1` -/
def P9768508057438332679.Spec : Prop :=
  ∀ n, P9768508057438332679.a n = A048162 n

end A048162

/-! ## A048162.P8453658491853936941

`A001612(n)%A247907(2*n)+1`
-/

namespace A048162.P8453658491853936941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001612 n) (A247907 (2 * n)) + 1

end

end A048162.P8453658491853936941

namespace A048162

/-- `A001612(n)%A247907(2*n)+1` -/
def P8453658491853936941.Spec : Prop :=
  ∀ n, P8453658491853936941.a n = A048162 n

end A048162

/-! ## A048162.P7623470098797585681

`A000211(n)%A191628(n+1)`
-/

namespace A048162.P7623470098797585681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000211 n) (A191628 (n + 1))

end

end A048162.P7623470098797585681

namespace A048162

/-- `A000211(n)%A191628(n+1)` -/
def P7623470098797585681.Spec : Prop :=
  ∀ n, P7623470098797585681.a n = A048162 n

end A048162

/-!
# A048163: a(n) = Sum_{k=1..n} ((k-1)!)^2*Stirling2(n,k)^2.

The programs for A048163, there is no canonical definition to state claims against.
-/

/-! ## A048163.P13783350083776273505

`A266695(2*n)`
-/

namespace A048163.P13783350083776273505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266695 (2 * n)

end

end A048163.P13783350083776273505

/-! ## A048163.P14674286855349898290

`A306267(2*n)`
-/

namespace A048163.P14674286855349898290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306267 (2 * n)

end

end A048163.P14674286855349898290

/-! ## A048163.P14285985008446798388

`A099594(∑[4*n])`
-/

namespace A048163.P14285985008446798388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048163.P14285985008446798388

/-! ## A048163.P7506440281192547091

`A372254(∑[n]+n)`
-/

namespace A048163.P7506440281192547091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A048163.P7506440281192547091

/-!
# A048164: a(0)=1, a(n+1)=1+(2^(2^n)+1)*a(n).

The programs for A048164, the canonical program `A048164.P5441213250154009917` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048164 has offset 0).

The definition of A048164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048164.P5441213250154009917

`1+(2^2^(n-1)+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048164

/-- `1+(2^2^(n-1)+1)*a(n-1)` -/
def P5441213250154009917.Spec : Prop :=
  ∀ n, P5441213250154009917.a n = (A048164 n : ℝ)

end A048164

/-!
# A048165: Expansion of Product_{k > 0} 1/(1 + x^prime(k)).

The programs for A048165, there is no canonical definition to state claims against.
-/

/-! ## A048165.P16758756144480176841

`A184198(n)-A184199(n)`
-/

namespace A048165.P16758756144480176841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n - A184199 n

end

end A048165.P16758756144480176841

/-! ## A048165.P4697612152166355597

`2*A184198(n)-A000607(n)`
-/

namespace A048165.P4697612152166355597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184198 n - A000607 n

end

end A048165.P4697612152166355597

/-! ## A048165.P14829914681109269368

`A000607(n)-2*A184199(n)`
-/

namespace A048165.P14829914681109269368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - 2 * A184199 n

end

end A048165.P14829914681109269368

/-! ## A048165.P6902558698658094530

`A184198(n)+A184199(n)*A260196(n)`
-/

namespace A048165.P6902558698658094530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n + A184199 n * A260196 n

end

end A048165.P6902558698658094530

/-! ## A048165.P4852602265168455045

`A184198(n)-A184198(xor(1, A014681(n)))`
-/

namespace A048165.P4852602265168455045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n - A184198 (Int.xor 1 (A014681 n)).toNat

end

end A048165.P4852602265168455045

/-! ## A048165.P18115342173719288143

`A005843(A184198(n))-A000607(n)`
-/

namespace A048165.P18115342173719288143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A184198 n).toNat - A000607 n

end

end A048165.P18115342173719288143

/-!
# A048166: Numbers k that are divisible by the number of unitary divisors of k (A034444).

The programs for A048166, the canonical program `A048166.P12188423200704413564` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048166 has offset 1).

The definition of A048166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048166.P12188423200704413564

`lt[(n+1)%A000005(A007947(n+1)), 1]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A048166

/-- `lt[(n+1)%A000005(A007947(n+1)), 1]+1` -/
def P12188423200704413564.Spec : Prop :=
  ∀ n, (P12188423200704413564.a n : ℤ) = A048166 (n + 1)

theorem P12188423200704413564.correct : P12188423200704413564.Spec := by
  intro n
  simp only [A048166, Nat.add_sub_cancel]

end A048166

/-! ## A048166.P2879380753497587468

`eq[0, (n+1)%A034444(n+1)]+1`
-/

namespace A048166.P2879380753497587468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A034444 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048166.P2879380753497587468

namespace A048166

/-- `eq[0, (n+1)%A034444(n+1)]+1` -/
def P2879380753497587468.Spec : Prop :=
  ∀ n, (P2879380753497587468.a n : ℤ) = A048166 (n + 1)

end A048166

/-! ## A048166.P12976340192923087904

`lt[A001221(n+1), A001511(n+1)]+1`
-/

namespace A048166.P12976340192923087904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048166.P12976340192923087904

namespace A048166

/-- `lt[A001221(n+1), A001511(n+1)]+1` -/
def P12976340192923087904.Spec : Prop :=
  ∀ n, (P12976340192923087904.a n : ℤ) = A048166 (n + 1)

end A048166

/-! ## A048166.P2299700634441117068

`record[gcd(n+1, A005940(n+1)%A034444(n+1))]`
-/

namespace A048166.P2299700634441117068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A005940 (n + 1)) (A034444 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048166.P2299700634441117068

namespace A048166

/-- `record[gcd(n+1, A005940(n+1)%A034444(n+1))]` -/
def P2299700634441117068.Spec : Prop :=
  ∀ n, (P2299700634441117068.a n : ℤ) = A048166 (n + 1)

end A048166

/-! ## A048166.P17889626968050130664

`record[n+1-A204094(A133265(n)%A100008(n+1))]`
-/

namespace A048166.P17889626968050130664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A204094 (Int.tmod (A133265 n) (A100008 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048166.P17889626968050130664

namespace A048166

/-- `record[n+1-A204094(A133265(n)%A100008(n+1))]` -/
def P17889626968050130664.Spec : Prop :=
  ∀ n, P17889626968050130664.a n = A048166 (n + 1)

end A048166

/-! ## A048166.P9072137220740222844

`lt[A001221(n+1), A089247(A007814(n+1)+1)]+1`
-/

namespace A048166.P9072137220740222844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A007814 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048166.P9072137220740222844

namespace A048166

/-- `lt[A001221(n+1), A089247(A007814(n+1)+1)]+1` -/
def P9072137220740222844.Spec : Prop :=
  ∀ n, (P9072137220740222844.a n : ℤ) = A048166 (n + 1)

end A048166

/-!
# A048167: Integer quotients of numbers k divisible by the number of unitary divisors of k (A034444).

The programs for A048167, the canonical program `A048167.P12277590638734498144` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048167 has offset 1).

The definition of A048167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048166, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048167.P12277590638734498144

`A048166(n+1)/A034444(A048166(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048167

/-- `A048166(n+1)/A034444(A048166(n+1))` -/
def P12277590638734498144.Spec : Prop :=
  ∀ n, P12277590638734498144.a n = (A048167 (n + 1) : ℚ)

end A048167

/-! ## A048167.P16536610003251230941

`A048166(n+1)/A158522(A048166(n+1)²)`
-/

namespace A048167.P16536610003251230941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048166 (n + 1) : ℚ) / (A158522 (A048166 (n + 1) ^ 2).toNat : ℚ)

end

end A048167.P16536610003251230941

namespace A048167

/-- `A048166(n+1)/A158522(A048166(n+1)²)` -/
def P16536610003251230941.Spec : Prop :=
  ∀ n, P16536610003251230941.a n = (A048167 (n + 1) : ℚ)

end A048167

/-! ## A048167.P11018706220649771119

`A153151(A089840(C(n, 2)))+1`
-/

namespace A048167.P11018706220649771119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A089840 (Nat.choose n 2)).toNat + 1

end

end A048167.P11018706220649771119

namespace A048167

/-- `A153151(A089840(C(n, 2)))+1` -/
def P11018706220649771119.Spec : Prop :=
  ∀ n, P11018706220649771119.a n = A048167 (n + 1)

end A048167

/-! ## A048167.P3860565861117268742

`A153151(A087117(ceil(2^(n-1))))+1`
-/

namespace A048167.P3860565861117268742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A087117 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat + 1

end

end A048167.P3860565861117268742

namespace A048167

/-- `A153151(A087117(ceil(2^(n-1))))+1` -/
def P3860565861117268742.Spec : Prop :=
  ∀ n, P3860565861117268742.a n = A048167 (n + 1)

end A048167

/-! ## A048167.P8786951642239193829

`A153151(A085144(round(2^(n-1))))+1`
-/

namespace A048167.P8786951642239193829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A085144 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat).toNat + 1

end

end A048167.P8786951642239193829

namespace A048167

/-- `A153151(A085144(round(2^(n-1))))+1` -/
def P8786951642239193829.Spec : Prop :=
  ∀ n, P8786951642239193829.a n = A048167 (n + 1)

end A048167

/-!
# A048168: n is divisible by the square of the number of unitary divisors of n (A034444).

The programs for A048168, the canonical program `A048168.P17831030899034331783` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048168 has offset 1).

The definition of A048168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048168.P17831030899034331783

`record[gcd(A048167(n+1)², A048166(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048168

/-- `record[gcd(A048167(n+1)², A048166(n+1))]` -/
def P17831030899034331783.Spec : Prop :=
  ∀ n, (P17831030899034331783.a n : ℤ) = A048168 (n + 1)

theorem P17831030899034331783.correct : P17831030899034331783.Spec := by
  intro n
  simp only [A048168, Nat.add_sub_cancel]

end A048168

/-! ## A048168.P6707309173837325157

`record[and(A071561(n+1), A085635(n+1))]`
-/

namespace A048168.P6707309173837325157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071561 (n + 1)) (A085635 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048168.P6707309173837325157

namespace A048168

/-- `record[and(A071561(n+1), A085635(n+1))]` -/
def P6707309173837325157.Spec : Prop :=
  ∀ n, P6707309173837325157.a n = A048168 (n + 1)

end A048168

/-! ## A048168.P2238859341619266397

`record[and(A085635(n+1), A214990(n+1))]`
-/

namespace A048168.P2238859341619266397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085635 (n + 1)) (A214990 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048168.P2238859341619266397

namespace A048168

/-- `record[and(A085635(n+1), A214990(n+1))]` -/
def P2238859341619266397.Spec : Prop :=
  ∀ n, P2238859341619266397.a n = A048168 (n + 1)

end A048168

/-! ## A048168.P10615277020168288856

`record[and(A001951(n+1)+2, A085635(n+1))]`
-/

namespace A048168.P10615277020168288856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001951 (n + 1) + 2) (A085635 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048168.P10615277020168288856

namespace A048168

/-- `record[and(A001951(n+1)+2, A085635(n+1))]` -/
def P10615277020168288856.Spec : Prop :=
  ∀ n, P10615277020168288856.a n = A048168 (n + 1)

end A048168

/-! ## A048168.P4090032134629183757

`A008574(lt[A151726(2*n+1), A151551(n+1)])`
-/

namespace A048168.P4090032134629183757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151726 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048168.P4090032134629183757

namespace A048168

/-- `A008574(lt[A151726(2*n+1), A151551(n+1)])` -/
def P4090032134629183757.Spec : Prop :=
  ∀ n, P4090032134629183757.a n = A048168 (n + 1)

end A048168

/-!
# A048169: n is divisible by the cube of the number of unitary divisors of n (A034444).

The programs for A048169, there is no canonical definition to state claims against.
-/

/-! ## A048169.P6013762262591809759

`A022144(lt[A000118(n), A125164(n+1)])`
-/

namespace A048169.P6013762262591809759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048169.P6013762262591809759

/-! ## A048169.P837958278250739696

`lt[A000695(A151706(n)), A139251(n)]`
-/

namespace A048169.P837958278250739696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A151706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048169.P837958278250739696

/-! ## A048169.P7284831433597153299

`A081611(A276118(n+1)*A301708(2*n+1))`
-/

namespace A048169.P7284831433597153299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A276118 (n + 1) * A301708 (2 * n + 1)).toNat

end

end A048169.P7284831433597153299

/-! ## A048169.P9244353351806093422

`record[and(A000118(n), A256261(n))]`
-/

namespace A048169.P9244353351806093422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000118 n) (A256261 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048169.P9244353351806093422

/-! ## A048169.P5725726159608435951

`record[and(A028599(n), A277004(n))]`
-/

namespace A048169.P5725726159608435951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028599 n) (A277004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048169.P5725726159608435951

/-!
# A048170: n is divisible by the 4th power of the number of unitary divisors of n (A034444).

The programs for A048170, there is no canonical definition to state claims against.
-/

/-! ## A048170.P1633211275952382868

`∩[A369170(n+1), A140642(n)]`
-/

namespace A048170.P1633211275952382868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140642 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048170.P1633211275952382868

/-! ## A048170.P17267756768397000531

`record[A028572(n)*A207872(n+1)]`
-/

namespace A048170.P17267756768397000531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 n * A207872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048170.P17267756768397000531

/-! ## A048170.P16214522342627269208

`∩[A228354(n+1), A369170(n+1)]`
-/

namespace A048170.P16214522342627269208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048170.P16214522342627269208

/-!
# A048172: Number of labeled series-parallel graphs with n edges.

The programs for A048172, there is no canonical definition to state claims against.
-/

/-! ## A048172.P6157805465603596446

`A058349(n+1)+A048174(n+1)%A058349(n+1)`
-/

namespace A048172.P6157805465603596446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058349 (n + 1) + Int.tmod (A048174 (n + 1)) (A058349 (n + 1))

end

end A048172.P6157805465603596446

/-! ## A048172.P13650111745899775718

`A339228(∑[n+1])`
-/

namespace A048172.P13650111745899775718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048172.P13650111745899775718

/-! ## A048172.P4376992027360772830

`record[A339228(abs(A145063(n)))]`
-/

namespace A048172.P4376992027360772830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048172.P4376992027360772830

/-! ## A048172.P4909929192798523677

`record[A339228(A091018(n+1))]`
-/

namespace A048172.P4909929192798523677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 (A091018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048172.P4909929192798523677

/-!
# A048174: Number of labeled chains with n edges.

The programs for A048174, there is no canonical definition to state claims against.
-/

/-! ## A048174.P17369319860744329571

`A048172(n+1)%lcm(2, A058349(n+1))`
-/

namespace A048174.P17369319860744329571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048172 (n + 1)) (Int.lcm 2 (A058349 (n + 1)) : ℤ)

end

end A048174.P17369319860744329571

/-! ## A048174.P2481723052644219512

`A048172(n+1)%A058349(A028310(n)+1)`
-/

namespace A048174.P2481723052644219512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048172 (n + 1)) (A058349 (A028310 n + 1).toNat)

end

end A048174.P2481723052644219512

/-! ## A048174.P11597508424755361593

`A048172(n+1)-A058349(n+1)%A339229(n+1)`
-/

namespace A048174.P11597508424755361593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048172 (n + 1) - Int.tmod (A058349 (n + 1)) (A339229 (n + 1))

end

end A048174.P11597508424755361593

/-! ## A048174.P16675870626939168677

`A048172(n+1)-A058349(n+1)%A048164(n)`
-/

namespace A048174.P16675870626939168677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048172 (n + 1) - Int.tmod (A058349 (n + 1)) (A048164 n)

end

end A048174.P16675870626939168677

/-!
# A048175: Size of range 1..m generatable from the digits of an n-digit integer and + - x /.

The programs for A048175, there is no canonical definition to state claims against.
-/

/-! ## A048175.P5203593332185011257

`A195770(A000041(n)*A003210(n))`
-/

namespace A048175.P5203593332185011257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195770 (A000041 n * A003210 n).toNat

end

end A048175.P5203593332185011257

/-!
# A048176: Triangle read by rows: T(n, m) = S1(n, m)*10^(n-m), where S1 are the signed Stirling numbers of first kind A008275 (n >= 1, 1 <= m <= n).

The programs for A048176, the canonical program `A048176.P5714185907056233945` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048176 has offset 1).

The definition of A048176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048176.P5714185907056233945

`T(n-1,k-1)-10*row(n)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048176

/-- `T(n-1,k-1)-10*row(n)*T(n-1,k)` -/
def P5714185907056233945.Spec : Prop :=
  ∀ n, P5714185907056233945.a n = A048176 (n + 1)

theorem P5714185907056233945.correct : P5714185907056233945.Spec := by
  intro n
  simp only [A048176, Nat.add_sub_cancel]

end A048176

/-! ## A048176.P14641452895185063034

`A051150(n+1)*A130321(n)`
-/

namespace A048176.P14641452895185063034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051150 (n + 1) * A130321 n

end

end A048176.P14641452895185063034

namespace A048176

/-- `A051150(n+1)*A130321(n)` -/
def P14641452895185063034.Spec : Prop :=
  ∀ n, P14641452895185063034.a n = A048176 (n + 1)

end A048176

/-! ## A048176.P6782868617104571702

`A008275(n+1)*A011557(A025581(n))`
-/

namespace A048176.P6782868617104571702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A011557 (A025581 n).toNat

end

end A048176.P6782868617104571702

namespace A048176

/-- `A008275(n+1)*A011557(A025581(n))` -/
def P6782868617104571702.Spec : Prop :=
  ∀ n, P6782868617104571702.a n = A048176 (n + 1)

end A048176

/-! ## A048176.P16903606753516216621

`A000351(A025581(n))*A039683(n+1)`
-/

namespace A048176.P16903606753516216621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A039683 (n + 1)

end

end A048176.P16903606753516216621

namespace A048176

/-- `A000351(A025581(n))*A039683(n+1)` -/
def P16903606753516216621.Spec : Prop :=
  ∀ n, P16903606753516216621.a n = A048176 (n + 1)

end A048176

/-! ## A048176.P1646523994745453319

`A008275(n+1)*A017936(A099375(n))`
-/

namespace A048176.P1646523994745453319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A017936 (A099375 n).toNat

end

end A048176.P1646523994745453319

namespace A048176

/-- `A008275(n+1)*A017936(A099375(n))` -/
def P1646523994745453319.Spec : Prop :=
  ∀ n, P1646523994745453319.a n = A048176 (n + 1)

end A048176

/-! ## A048176.P1517884214304335229

`A039683(n+1)/A008275(n+1)*A051150(n+1)`
-/

namespace A048176.P1517884214304335229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A051150 (n + 1) : ℚ)

end

end A048176.P1517884214304335229

namespace A048176

/-- `A039683(n+1)/A008275(n+1)*A051150(n+1)` -/
def P1517884214304335229.Spec : Prop :=
  ∀ n, P1517884214304335229.a n = (A048176 (n + 1) : ℚ)

end A048176

/-! ## A048176.P14768418686160018078

`A051142(n+1)/A039683(n+1)*A051150(n+1)`
-/

namespace A048176.P14768418686160018078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051142 (n + 1) : ℚ) / (A039683 (n + 1) : ℚ) * (A051150 (n + 1) : ℚ)

end

end A048176.P14768418686160018078

namespace A048176

/-- `A051142(n+1)/A039683(n+1)*A051150(n+1)` -/
def P14768418686160018078.Spec : Prop :=
  ∀ n, P14768418686160018078.a n = (A048176 (n + 1) : ℚ)

end A048176

/-! ## A048176.P2998871064415081583

`A051150(n+1)/A051141(n+1)*A051151(n+1)`
-/

namespace A048176.P2998871064415081583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051150 (n + 1) : ℚ) / (A051141 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A048176.P2998871064415081583

namespace A048176

/-- `A051150(n+1)/A051141(n+1)*A051151(n+1)` -/
def P2998871064415081583.Spec : Prop :=
  ∀ n, P2998871064415081583.a n = (A048176 (n + 1) : ℚ)

end A048176

/-! ## A048176.P15939872004829997459

`A007088(A130321(n))*A008275(n+1)`
-/

namespace A048176.P15939872004829997459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A130321 n).toNat * A008275 (n + 1)

end

end A048176.P15939872004829997459

namespace A048176

/-- `A007088(A130321(n))*A008275(n+1)` -/
def P15939872004829997459.Spec : Prop :=
  ∀ n, P15939872004829997459.a n = A048176 (n + 1)

end A048176

/-! ## A048176.P4685851742101590911

`A039683(n+1)*A064988(A140303(n))`
-/

namespace A048176.P4685851742101590911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 1) * A064988 (A140303 n).toNat

end

end A048176.P4685851742101590911

namespace A048176

/-- `A039683(n+1)*A064988(A140303(n))` -/
def P4685851742101590911.Spec : Prop :=
  ∀ n, P4685851742101590911.a n = A048176 (n + 1)

end A048176

/-!
# A048179: Number of graphs with n nodes and n+1 edges.

The programs for A048179, there is no canonical definition to state claims against.
-/

/-! ## A048179.P5527110151003892542

`A008406(Δ[A005718(n)])`
-/

namespace A048179.P5527110151003892542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (f1 (n + 1) - f1 n).toNat

end

end A048179.P5527110151003892542

/-! ## A048179.P10216636955057260552

`A008406(A062748(n+1))`
-/

namespace A048179.P10216636955057260552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A062748 (n + 1)).toNat

end

end A048179.P10216636955057260552

/-! ## A048179.P9947800645463304543

`A008406(A166830(n+2)+1)`
-/

namespace A048179.P9947800645463304543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A166830 (n + 2) + 1).toNat

end

end A048179.P9947800645463304543

/-! ## A048179.P12385977008646521736

`A008406(A026041(n+4)+1)`
-/

namespace A048179.P12385977008646521736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A026041 (n + 4) + 1).toNat

end

end A048179.P12385977008646521736

/-! ## A048179.P8046763261699903871

`A008406(A005718(n+1)-A005718(n))`
-/

namespace A048179.P8046763261699903871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A005718 (n + 1) - A005718 n).toNat

end

end A048179.P8046763261699903871

/-!
# A048180: Number of graphs with n nodes and n+2 edges.

The programs for A048180, there is no canonical definition to state claims against.
-/

/-! ## A048180.P2451824758653577098

`A008406(A166830(n+2))`
-/

namespace A048180.P2451824758653577098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A166830 (n + 2)).toNat

end

end A048180.P2451824758653577098

/-! ## A048180.P7713065766123332536

`A008406(Δ[A005718(n)]-1)`
-/

namespace A048180.P7713065766123332536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (f1 (n + 1) - f1 n - 1).toNat

end

end A048180.P7713065766123332536

/-! ## A048180.P11546884485502679214

`A008406(A062748(n+1)-1)`
-/

namespace A048180.P11546884485502679214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A062748 (n + 1) - 1).toNat

end

end A048180.P11546884485502679214

/-! ## A048180.P9022231518567626666

`A008406(A026041(n+4)+2)`
-/

namespace A048180.P9022231518567626666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A026041 (n + 4) + 2).toNat

end

end A048180.P9022231518567626666

/-! ## A048180.P4709619871504983403

`A008406(eq[5, A054733(2*n+3)])`
-/

namespace A048180.P4709619871504983403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054733 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048180.P4709619871504983403

/-!
# A048182: Variation on A047988, where division by d costs d points instead of 0 points.

The programs for A048182, there is no canonical definition to state claims against.
-/

/-! ## A048182.P12350081543233590309

`A091333(n+2)-A087230(A054735(n+1))`
-/

namespace A048182.P12350081543233590309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 2) - A087230 (A054735 (n + 1)).toNat

end

end A048182.P12350081543233590309

/-! ## A048182.P12319900796984087465

`A091333(n+2)-A349483(A349459(3*n+5))`
-/

namespace A048182.P12319900796984087465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 2) - A349483 (A349459 (3 * n + 5)).toNat

end

end A048182.P12319900796984087465

/-! ## A048182.P11196468954006089287

`A091333(n+2)-A037445(A204919(n+1))`
-/

namespace A048182.P11196468954006089287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 2) - A037445 (A204919 (n + 1)).toNat

end

end A048182.P11196468954006089287

/-! ## A048182.P7630509715696592530

`A091333(n+2)-A046523(A005385(n+1))`
-/

namespace A048182.P7630509715696592530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 2) - A046523 (A005385 (n + 1)).toNat

end

end A048182.P7630509715696592530

/-! ## A048182.P13000330580745577975

`A091333(n+2)-A037445(A005383(n+1))`
-/

namespace A048182.P13000330580745577975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 2) - A037445 (A005383 (n + 1)).toNat

end

end A048182.P13000330580745577975

/-! ## A048182.P16363891039362010347

`A091333(n+2)-A037445(A006512(2*n+1))`
-/

namespace A048182.P16363891039362010347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 2) - A037445 (A006512 (2 * n + 1)).toNat

end

end A048182.P16363891039362010347

/-! ## A048182.P13445738099984302305

`A091333(n+2)-A046523(A210479(n+1))`
-/

namespace A048182.P13445738099984302305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 2) - A046523 (A210479 (n + 1)).toNat

end

end A048182.P13445738099984302305

/-! ## A048182.P3510214423710079965

`A091333(n+2)-A046523(A031925(3*n+2))`
-/

namespace A048182.P3510214423710079965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 2) - A046523 (A031925 (3 * n + 2)).toNat

end

end A048182.P3510214423710079965

/-! ## A048182.P12629985770844694284

`ceil(A005245((n+2)²)/2)-2`
-/

namespace A048182.P12629985770844694284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005245 ((n + 2) ^ 2) : ℚ) / 2⌉ - 2

end

end A048182.P12629985770844694284

/-! ## A048182.P3856866872790933121

`floor(A213923((n+2)²)/4)-1`
-/

namespace A048182.P3856866872790933121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213923 ((n + 2) ^ 2) : ℚ) / 4⌋ - 1

end

end A048182.P3856866872790933121

/-!
# A048183: Least inverse of A048182.

The programs for A048183, there is no canonical definition to state claims against.
-/

/-! ## A048183.P6032024065903827817

`A255641(A055645(n)+2)`
-/

namespace A048183.P6032024065903827817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255641 (A055645 n + 2).toNat

end

end A048183.P6032024065903827817

/-! ## A048183.P3423924631522641302

`∩[A116000(n+1), A255641(n+1)]`
-/

namespace A048183.P3423924631522641302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048183.P3423924631522641302

/-! ## A048183.P96820573183741547

`∩[A178156(n+1), A255641(n+1)]`
-/

namespace A048183.P96820573183741547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048183.P96820573183741547

/-! ## A048183.P5342008960372851941

`A255641(A043320(n+2))`
-/

namespace A048183.P5342008960372851941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255641 (A043320 (n + 2)).toNat

end

end A048183.P5342008960372851941

/-! ## A048183.P13804316244007696181

`A255641(A044917(n+2))`
-/

namespace A048183.P13804316244007696181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255641 (A044917 (n + 2)).toNat

end

end A048183.P13804316244007696181

/-!
# A048184: Primes with nontrivial omnipower group.

The programs for A048184, there is no canonical definition to state claims against.
-/

/-! ## A048184.P17828056965713582091

`2*A364926(n+1)+1`
-/

namespace A048184.P17828056965713582091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364926 (n + 1) + 1

end

end A048184.P17828056965713582091

/-! ## A048184.P8317800256092873388

`p?[A138929(n+1)+1]`
-/

namespace A048184.P8317800256092873388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P8317800256092873388

/-! ## A048184.P11439493015603216503

`p?[∑[A237709(n+1)]+2]`
-/

namespace A048184.P11439493015603216503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P11439493015603216503

/-! ## A048184.P16004806804972988893

`p?[2*A000961(n+1)+1]`
-/

namespace A048184.P16004806804972988893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000961 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P16004806804972988893

/-! ## A048184.P14359933705019758702

`p?[A001221(n+1)!+2*(n+1)]`
-/

namespace A048184.P14359933705019758702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001221 (n + 1)).toNat + 2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A048184.P14359933705019758702

/-! ## A048184.P4409027938913596374

`record[A020639(A138929(n+1)+1)]`
-/

namespace A048184.P4409027938913596374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A138929 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048184.P4409027938913596374

/-! ## A048184.P17990863893719468201

`record[A006530(2*A000961(n+1)+1)]`
-/

namespace A048184.P17990863893719468201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000961 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048184.P17990863893719468201

/-! ## A048184.P6090650375102035538

`p?[2*record[A354933(n+1)]+1]`
-/

namespace A048184.P6090650375102035538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P6090650375102035538

/-! ## A048184.P108991982626406015

`p?[2*record[A345993(n+1)]+1]`
-/

namespace A048184.P108991982626406015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P108991982626406015

/-! ## A048184.P6175688431952463359

`p?[A028234(n+1)+2*(n+1)]`
-/

namespace A048184.P6175688431952463359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P6175688431952463359

/-! ## A048184.P8569995885031419316

`A037287(A364926(n+1))`
-/

namespace A048184.P8569995885031419316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037287 (A364926 (n + 1)).toNat

end

end A048184.P8569995885031419316

/-! ## A048184.P17052136014226486373

`record[A076565(A000961(n+1))]`
-/

namespace A048184.P17052136014226486373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048184.P17052136014226486373

/-! ## A048184.P12562985633929687753

`p?[A005408(sqrt(A056798(n+1)))]`
-/

namespace A048184.P12562985633929687753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P12562985633929687753

/-! ## A048184.P16114463525628261699

`p?[A004273(A000961(n+1)+1)]`
-/

namespace A048184.P16114463525628261699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000961 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P16114463525628261699

/-! ## A048184.P9405548946107025957

`p?[A008486(A034699(n+1))-n]`
-/

namespace A048184.P9405548946107025957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A034699 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P9405548946107025957

/-! ## A048184.P9426012625439043781

`p?[A000027(A028234(n+1)+1)+n+n+1]`
-/

namespace A048184.P9426012625439043781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A028234 (n + 1) + 1).toNat + (n : ℤ) + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P9426012625439043781

/-! ## A048184.P15027766459607098397

`p?[(2*(n+1)+1)*A345994(n+1)]`
-/

namespace A048184.P15027766459607098397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 1 : ℤ) * A345994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048184.P15027766459607098397

/-! ## A048184.P16932783498510868300

`record[A014963(A138929(n+1)+1)]`
-/

namespace A048184.P16932783498510868300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A138929 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048184.P16932783498510868300

/-! ## A048184.P11399649269845523074

`record[A014963(2*A000961(n+1)+1)]`
-/

namespace A048184.P11399649269845523074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A000961 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048184.P11399649269845523074

/-!
# A048187: Palindromic untouchable numbers.

The programs for A048187, there is no canonical definition to state claims against.
-/

/-! ## A048187.P4566770599867944067

`∩[A002113(n+1), A005114(n+1)]`
-/

namespace A048187.P4566770599867944067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048187.P4566770599867944067

/-! ## A048187.P15429164273652833724

`∩[A005114(n+1), A083158(n+1)]`
-/

namespace A048187.P15429164273652833724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048187.P15429164273652833724

/-! ## A048187.P12411273952509049811

`record[A047813(A005114(n+1))]`
-/

namespace A048187.P12411273952509049811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A005114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048187.P12411273952509049811

/-! ## A048187.P9611337154092519151

`filter[A005114(n+1), A136522(#)]`
-/

namespace A048187.P9611337154092519151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A048187.P9611337154092519151

/-! ## A048187.P17880611733996171631

`record[A047813(A048995(n+1)+1)]`
-/

namespace A048187.P17880611733996171631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A048995 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048187.P17880611733996171631

/-!
# A048188: a(n) = phi(n-th untouchable number).

The programs for A048188, there is no canonical definition to state claims against.
-/

/-! ## A048188.P8701952329420468148

`A000010(A005114(n+1))`
-/

namespace A048188.P8701952329420468148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005114 (n + 1)).toNat

end

end A048188.P8701952329420468148

/-! ## A048188.P12290440147614736947

`A000010(A048995(n+1)+1)`
-/

namespace A048188.P12290440147614736947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048995 (n + 1) + 1).toNat

end

end A048188.P12290440147614736947

/-! ## A048188.P5431372926683344266

`∑{d}[A005114(n+1), A007431(#)]`
-/

namespace A048188.P5431372926683344266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A048188.P5431372926683344266

/-! ## A048188.P6944216232308281491

`A055034(lcm(2, A005114(n+1)))`
-/

namespace A048188.P6944216232308281491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lcm 2 (A005114 (n + 1)))

end

end A048188.P6944216232308281491

/-! ## A048188.P8603934227871310762

`A039649(A048995(n+1)+1)-1`
-/

namespace A048188.P8603934227871310762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A048995 (n + 1) + 1).toNat - 1

end

end A048188.P8603934227871310762

/-! ## A048188.P2288730826710397150

`A000010(eq[0, A070016(n+1)]+2)`
-/

namespace A048188.P2288730826710397150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A048188.P2288730826710397150

/-! ## A048188.P15084344008436348584

`A000010(eq[0, A048138(n+2)]+2)`
-/

namespace A048188.P15084344008436348584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A048188.P15084344008436348584

/-! ## A048188.P3696892594596856841

`A039649(A005114(n+1))-A057427(n+1)`
-/

namespace A048188.P3696892594596856841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A005114 (n + 1)).toNat - A057427 (n + 1)

end

end A048188.P3696892594596856841

/-! ## A048188.P84921589631884041

`A039649(A005114(n+1))-abs(A062157(n+2))`
-/

namespace A048188.P84921589631884041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A005114 (n + 1)).toNat - |A062157 (n + 2)|

end

end A048188.P84921589631884041

/-! ## A048188.P117261942480867548

`A039649(A005114(n+1))-(1-A000122(n))²!`
-/

namespace A048188.P117261942480867548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A005114 (n + 1)).toNat - (Nat.factorial ((1 - A000122 n) ^ 2).toNat : ℤ)

end

end A048188.P117261942480867548

/-! ## A048188.P1013685560138751591

`A039649(A005114(n+1))-A118106(A000040(n+1))`
-/

namespace A048188.P1013685560138751591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A005114 (n + 1)).toNat - A118106 (A000040 (n + 1)).toNat

end

end A048188.P1013685560138751591

/-! ## A048188.P4024286174112548067

`A039649(A005114(n+1))+A008683(A006005(n+3))`
-/

namespace A048188.P4024286174112548067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A005114 (n + 1)).toNat + A008683 (A006005 (n + 3)).toNat

end

end A048188.P4024286174112548067

/-! ## A048188.P6683008800452394673

`A039649(A005114(n+1))-A014963(A000217(n+7))`
-/

namespace A048188.P6683008800452394673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A005114 (n + 1)).toNat - A014963 (A000217 (n + 7)).toNat

end

end A048188.P6683008800452394673

/-!
# A048191: Let (u1,u2) be successive untouchable numbers such that phi(u1) = phi(u2) = k; sequence gives values of k.

The programs for A048191, there is no canonical definition to state claims against.
-/

/-! ## A048191.P2434422212377898110

`A000010(A048189(n+1))`
-/

namespace A048191.P2434422212377898110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048189 (n + 1)).toNat

end

end A048191.P2434422212377898110

/-! ## A048191.P14861629712313475059

`A000010(A048190(n+1))`
-/

namespace A048191.P14861629712313475059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048190 (n + 1)).toNat

end

end A048191.P14861629712313475059

/-! ## A048191.P9920393388243230279

`A062570(A048189(n+1)/2)`
-/

namespace A048191.P9920393388243230279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (SequenceMachineLib.roundAway ((A048189 (n + 1) : ℚ) / 2)).toNat

end

end A048191.P9920393388243230279

/-! ## A048191.P5517518698114396590

`A062570(A048190(n+1)/2)`
-/

namespace A048191.P5517518698114396590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (SequenceMachineLib.roundAway ((A048190 (n + 1) : ℚ) / 2)).toNat

end

end A048191.P5517518698114396590

/-! ## A048191.P1869941343559616501

`A109606(A048189(n+1))+A007318(∑[n])`
-/

namespace A048191.P1869941343559616501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A048189 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048191.P1869941343559616501

/-!
# A048192: Number of connected chordal graphs on n vertices.

The programs for A048192, there is no canonical definition to state claims against.
-/

/-! ## A048192.P6086019951631790478

`A048193(n+1)-A287427(n+1)`
-/

namespace A048192.P6086019951631790478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048193 (n + 1) - A287427 (n + 1)

end

end A048192.P6086019951631790478

/-! ## A048192.P10680089388697994337

`A001349(n+1)-A241843(n+1)`
-/

namespace A048192.P10680089388697994337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A241843 (n + 1)

end

end A048192.P10680089388697994337

/-! ## A048192.P8051288727981111289

`∑[A079456(n+1)]-A287427(n+1)`
-/

namespace A048192.P8051288727981111289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287427 (n + 1)

end

end A048192.P8051288727981111289

/-! ## A048192.P7915074621867471914

`A201922(A000124(n))-A241843(n+1)`
-/

namespace A048192.P7915074621867471914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A241843 (n + 1)

end

end A048192.P7915074621867471914

/-! ## A048192.P5372683762131559888

`A007146(n+1)+A052446(n+1)-A241843(n+1)`
-/

namespace A048192.P5372683762131559888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007146 (n + 1) + (A052446 (n + 1) - A241843 (n + 1))

end

end A048192.P5372683762131559888

/-!
# A048193: Number of chordal graphs (or triangulated graphs) on n vertices.

The programs for A048193, there is no canonical definition to state claims against.
-/

/-! ## A048193.P14991201648251224657

`A048192(n+1)+A287427(n+1)`
-/

namespace A048193.P14991201648251224657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + A287427 (n + 1)

end

end A048193.P14991201648251224657

/-! ## A048193.P5272363874707584448

`∑[A079456(n+1)]`
-/

namespace A048193.P5272363874707584448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048193.P5272363874707584448

/-! ## A048193.P2719892247707795249

`A000088(n+1)-A287481(n+1)`
-/

namespace A048193.P2719892247707795249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A287481 (n + 1)

end

end A048193.P2719892247707795249

/-! ## A048193.P2765479722149537958

`A287427(n+1)+A048192(A291769(n))`
-/

namespace A048193.P2765479722149537958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287427 (n + 1) + A048192 (A291769 n).toNat

end

end A048193.P2765479722149537958

/-! ## A048193.P4821259168320510314

`A287427(n+1)+A048192(A348553(n))`
-/

namespace A048193.P4821259168320510314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287427 (n + 1) + A048192 (A348553 n).toNat

end

end A048193.P4821259168320510314

/-!
# A048194: Total number of split graphs (chordal + chordal complement) on n vertices.

The programs for A048194, there is no canonical definition to state claims against.
-/

/-! ## A048194.P16396491893485805027

`A049312(n+1)-A049312(n)`
-/

namespace A048194.P16396491893485805027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049312 (n + 1) - A049312 n

end

end A048194.P16396491893485805027

/-! ## A048194.P13778793602511790147

`Δ[A049312(n)]`
-/

namespace A048194.P13778793602511790147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048194.P13778793602511790147

/-! ## A048194.P14932402976037292625

`A055192(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A048194.P14932402976037292625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055192 (n + 1) + a (n - 1)

end

end A048194.P14932402976037292625

/-! ## A048194.P16509403003070852904

`∑[A055192(A028310(n)+1)]`
-/

namespace A048194.P16509403003070852904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055192 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048194.P16509403003070852904

/-! ## A048194.P17994709497395738918

`∑[A055192(A233583(n+2))]`
-/

namespace A048194.P17994709497395738918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055192 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048194.P17994709497395738918

/-!
# A048195: Numbers k for which binomial(k, floor(k/2)) has fewer unitary than non-unitary divisors.

The programs for A048195, there is no canonical definition to state claims against.
-/

/-! ## A048195.P12758515671893410042

`lt[2, A056061(n+1)]+1`
-/

namespace A048195.P12758515671893410042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048195.P12758515671893410042

/-!
# A048196: Numbers k for which binomial(k, floor(k/2)) has the same number of unitary and non-unitary divisors.

The programs for A048196, there is no canonical definition to state claims against.
-/

/-! ## A048196.P13036026182553967602

`eq[0, A048244(n+1)]+1`
-/

namespace A048196.P13036026182553967602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048196.P13036026182553967602

/-! ## A048196.P8238524518155946346

`eq[0, A048244(A028310(n))]`
-/

namespace A048196.P8238524518155946346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048196.P8238524518155946346

/-! ## A048196.P261372261167936290

`A020725(eq[0, A048244(n+1)])`
-/

namespace A048196.P261372261167936290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048196.P261372261167936290

/-! ## A048196.P3115964012327892193

`eq[0, A048244(A138153(n+1))]`
-/

namespace A048196.P3115964012327892193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048196.P3115964012327892193

/-! ## A048196.P15810880721943447651

`A326178(eq[0, A048244(n+1)])`
-/

namespace A048196.P15810880721943447651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048196.P15810880721943447651

/-!
# A048197: Numbers k for which binomial(k, floor(k/2)) has more unitary than non-unitary divisors.

The programs for A048197, there is no canonical definition to state claims against.
-/

/-! ## A048197.P5883285913180062389

`lt[0, A048244(n+1)]+1`
-/

namespace A048197.P5883285913180062389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048197.P5883285913180062389

/-! ## A048197.P7329886551459451475

`eq[A048243(n+1), A056676(n+1)]+1`
-/

namespace A048197.P7329886551459451475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048197.P7329886551459451475

/-! ## A048197.P9035415591182600863

`lt[A048243(n+1), A039593(n+1)]+1`
-/

namespace A048197.P9035415591182600863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048197.P9035415591182600863

/-! ## A048197.P11003694874813115988

`lt[A048243(n+1), A000079(A034973(n+1))]+1`
-/

namespace A048197.P11003694874813115988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048197.P11003694874813115988

/-! ## A048197.P1051644786117467574

`eq[A056061(n+1)!, A056648(n+1)]+1`
-/

namespace A048197.P1051644786117467574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A056061 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048197.P1051644786117467574

/-!
# A048198: Number of primes between successive n's, where n mod 10 = 5.

The programs for A048198, the canonical program `A048198.P7338182187871704518` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048198 has offset 0).

The definition of A048198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048198.P7338182187871704518

`Δ[A000720(A298033(n)+A004442(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048198

/-- `Δ[A000720(A298033(n)+A004442(n))]` -/
def P7338182187871704518.Spec : Prop :=
  ∀ n, P7338182187871704518.a n = A048198 n

theorem P7338182187871704518.correct : P7338182187871704518.Spec := by
  intro n
  simp only [A048198]

end A048198

/-! ## A048198.P14737461472555120400

`Δ[A000720(A135042(2*n)+1)]`
-/

namespace A048198.P14737461472555120400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A135042 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048198.P14737461472555120400

namespace A048198

/-- `Δ[A000720(A135042(2*n)+1)]` -/
def P14737461472555120400.Spec : Prop :=
  ∀ n, P14737461472555120400.a n = A048198 n

end A048198

/-! ## A048198.P3922629502909675838

`Δ[A000720(A135042(A004277(n)))]`
-/

namespace A048198.P3922629502909675838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A135042 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048198.P3922629502909675838

namespace A048198

/-- `Δ[A000720(A135042(A004277(n)))]` -/
def P3922629502909675838.Spec : Prop :=
  ∀ n, P3922629502909675838.a n = A048198 n

end A048198

/-! ## A048198.P13449777679365054036

`Δ[A084360(A135042(2*n)+2)]`
-/

namespace A048198.P13449777679365054036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A135042 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048198.P13449777679365054036

namespace A048198

/-- `Δ[A084360(A135042(2*n)+2)]` -/
def P13449777679365054036.Spec : Prop :=
  ∀ n, P13449777679365054036.a n = A048198 n

end A048198

/-! ## A048198.P9227243437014768917

`Δ[A084360(A004280(A008706(n)))]`
-/

namespace A048198.P9227243437014768917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A004280 (A008706 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048198.P9227243437014768917

namespace A048198

/-- `Δ[A084360(A004280(A008706(n)))]` -/
def P9227243437014768917.Spec : Prop :=
  ∀ n, P9227243437014768917.a n = A048198 n

end A048198

/-! ## A048198.P2647884906894638429

`Δ[A082460(A008706(A004273(n)))]`
-/

namespace A048198.P2647884906894638429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A008706 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048198.P2647884906894638429

namespace A048198

/-- `Δ[A082460(A008706(A004273(n)))]` -/
def P2647884906894638429.Spec : Prop :=
  ∀ n, P2647884906894638429.a n = A048198 n

end A048198

/-! ## A048198.P18264745877726747183

`Δ[A033270(A135042(2*n))]`
-/

namespace A048198.P18264745877726747183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A135042 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048198.P18264745877726747183

namespace A048198

/-- `Δ[A033270(A135042(2*n))]` -/
def P18264745877726747183.Spec : Prop :=
  ∀ n, P18264745877726747183.a n = A048198 n

end A048198

/-! ## A048198.P13991087269679804509

`Δ[A056172(A008706(A111284(n+1)))]`
-/

namespace A048198.P13991087269679804509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A008706 (A111284 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048198.P13991087269679804509

namespace A048198

/-- `Δ[A056172(A008706(A111284(n+1)))]` -/
def P13991087269679804509.Spec : Prop :=
  ∀ n, P13991087269679804509.a n = A048198 n

end A048198

/-!
# A048199: Distance of primes to next odd multiple of 5 (where n mod 10 = 5).

The programs for A048199, the canonical program `A048199.P12937279598145165576` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048199 has offset 1).

The definition of A048199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048199.P5212798973027671195

`8-A113935(n+1)%10`
-/

namespace A048199.P5212798973027671195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - Int.tmod (A113935 (n + 1)) 10

end

end A048199.P5212798973027671195

namespace A048199

/-- `8-A113935(n+1)%10` -/
def P5212798973027671195.Spec : Prop :=
  ∀ n, P5212798973027671195.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P15273254468403803192

`9-A175221(n+1)%10`
-/

namespace A048199.P15273254468403803192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.tmod (A175221 (n + 1)) 10

end

end A048199.P15273254468403803192

namespace A048199

/-- `9-A175221(n+1)%10` -/
def P15273254468403803192.Spec : Prop :=
  ∀ n, P15273254468403803192.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P2499747658638606759

`(9*A175222(n+1))%10`
-/

namespace A048199.P2499747658638606759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A175222 (n + 1)) 10

end

end A048199.P2499747658638606759

namespace A048199

/-- `(9*A175222(n+1))%10` -/
def P2499747658638606759.Spec : Prop :=
  ∀ n, P2499747658638606759.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P17353742008113888688

`(A072003(n+1)+15)%10`
-/

namespace A048199.P17353742008113888688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072003 (n + 1) + 15) 10

end

end A048199.P17353742008113888688

namespace A048199

/-- `(A072003(n+1)+15)%10` -/
def P17353742008113888688.Spec : Prop :=
  ∀ n, P17353742008113888688.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P12937279598145165576

`8-(A000040(n+1)+3)%10`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048199

/-- `8-(A000040(n+1)+3)%10` -/
def P12937279598145165576.Spec : Prop :=
  ∀ n, P12937279598145165576.a n = A048199 (n + 1)

theorem P12937279598145165576.correct : P12937279598145165576.Spec := by
  intro n
  simp only [A048199, Nat.add_sub_cancel]

end A048199

/-! ## A048199.P18094986180544269799

`A001749(n+1)%A040020(n)`
-/

namespace A048199.P18094986180544269799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001749 (n + 1)) (A040020 n)

end

end A048199.P18094986180544269799

namespace A048199

/-- `A001749(n+1)%A040020(n)` -/
def P18094986180544269799.Spec : Prop :=
  ∀ n, P18094986180544269799.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P2505270556189915546

`A017221(Δ[A007504(n)])%10`
-/

namespace A048199.P2505270556189915546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 (f1 (n + 1) - f1 n).toNat) 10

end

end A048199.P2505270556189915546

namespace A048199

/-- `A017221(Δ[A007504(n)])%10` -/
def P2505270556189915546.Spec : Prop :=
  ∀ n, P2505270556189915546.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P10352948332675755111

`A017221(p?[A014681(n)])%10`
-/

namespace A048199.P10352948332675755111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A048199.P10352948332675755111

namespace A048199

/-- `A017221(p?[A014681(n)])%10` -/
def P10352948332675755111.Spec : Prop :=
  ∀ n, P10352948332675755111.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P15584092506016385979

`A017221(p?[A064429(n)])%10`
-/

namespace A048199.P15584092506016385979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A048199.P15584092506016385979

namespace A048199

/-- `A017221(p?[A064429(n)])%10` -/
def P15584092506016385979.Spec : Prop :=
  ∀ n, P15584092506016385979.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P499341857389132070

`A017221(p?[A143051(n)])%10`
-/

namespace A048199.P499341857389132070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A048199.P499341857389132070

namespace A048199

/-- `A017221(p?[A143051(n)])%10` -/
def P499341857389132070.Spec : Prop :=
  ∀ n, P499341857389132070.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P912413195959085767

`A017221(p?[A259153(n)])%10`
-/

namespace A048199.P912413195959085767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A048199.P912413195959085767

namespace A048199

/-- `A017221(p?[A259153(n)])%10` -/
def P912413195959085767.Spec : Prop :=
  ∀ n, P912413195959085767.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P16007963184955681228

`A017221(A000040(n+1))%10`
-/

namespace A048199.P16007963184955681228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 (A000040 (n + 1)).toNat) 10

end

end A048199.P16007963184955681228

namespace A048199

/-- `A017221(A000040(n+1))%10` -/
def P16007963184955681228.Spec : Prop :=
  ∀ n, P16007963184955681228.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P15345793618813502769

`A017209(A006093(n+1))%10`
-/

namespace A048199.P15345793618813502769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017209 (A006093 (n + 1)).toNat) 10

end

end A048199.P15345793618813502769

namespace A048199

/-- `A017209(A006093(n+1))%10` -/
def P15345793618813502769.Spec : Prop :=
  ∀ n, P15345793618813502769.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P6634052390478594926

`A017233(A008864(n+1))%10`
-/

namespace A048199.P6634052390478594926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017233 (A008864 (n + 1)).toNat) 10

end

end A048199.P6634052390478594926

namespace A048199

/-- `A017233(A008864(n+1))%10` -/
def P6634052390478594926.Spec : Prop :=
  ∀ n, P6634052390478594926.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P17145772542904309419

`A017221(record[A006530(n+2)])%10`
-/

namespace A048199.P17145772542904309419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 10

end

end A048199.P17145772542904309419

namespace A048199

/-- `A017221(record[A006530(n+2)])%10` -/
def P17145772542904309419.Spec : Prop :=
  ∀ n, P17145772542904309419.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P15592304201525481100

`A251984(A000040(n+1)+4)-1`
-/

namespace A048199.P15592304201525481100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A000040 (n + 1) + 4).toNat - 1

end

end A048199.P15592304201525481100

namespace A048199

/-- `A251984(A000040(n+1)+4)-1` -/
def P15592304201525481100.Spec : Prop :=
  ∀ n, P15592304201525481100.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P3563473471502882655

`∏{digits}[A251984(A000040(n+1)+5), #]`
-/

namespace A048199.P3563473471502882655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A000040 (n + 1) + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A048199.P3563473471502882655

namespace A048199

/-- `∏{digits}[A251984(A000040(n+1)+5), #]` -/
def P3563473471502882655.Spec : Prop :=
  ∀ n, (P3563473471502882655.a n : ℤ) = A048199 (n + 1)

end A048199

/-! ## A048199.P12907535883323208815

`A160737(A000040(Δ[n²]-n))%10`
-/

namespace A048199.P12907535883323208815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160737 (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat) 10

end

end A048199.P12907535883323208815

namespace A048199

/-- `A160737(A000040(Δ[n²]-n))%10` -/
def P12907535883323208815.Spec : Prop :=
  ∀ n, P12907535883323208815.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P1128254347289425890

`A017221(p?[A056847(n)])%10`
-/

namespace A048199.P1128254347289425890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A048199.P1128254347289425890

namespace A048199

/-- `A017221(p?[A056847(n)])%10` -/
def P1128254347289425890.Spec : Prop :=
  ∀ n, P1128254347289425890.a n = A048199 (n + 1)

end A048199

/-! ## A048199.P9889719393592101113

`A131579(A132227(n+1))`
-/

namespace A048199.P9889719393592101113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131579 (A132227 (n + 1)).toNat

end

end A048199.P9889719393592101113

namespace A048199

/-- `A131579(A132227(n+1))` -/
def P9889719393592101113.Spec : Prop :=
  ∀ n, P9889719393592101113.a n = A048199 (n + 1)

end A048199

