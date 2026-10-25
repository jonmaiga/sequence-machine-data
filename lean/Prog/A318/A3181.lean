import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A318100: Exponential pseudoperfect numbers: numbers equal to the sum of a subset of their proper exponential divisors.

The programs for A318100, there is no canonical definition to state claims against.
-/

/-! ## A318100.P12180422616194217660

`∪[A054979(n+1), A321206(n+1)]`
-/

namespace A318100.P12180422616194217660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P12180422616194217660

/-! ## A318100.P7676750218807958658

`∩[A335218(n+1), A044102(n)]`
-/

namespace A318100.P7676750218807958658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P7676750218807958658

/-! ## A318100.P17357901037846549709

`∩[A335218(n+1), A167632(n)]`
-/

namespace A318100.P17357901037846549709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P17357901037846549709

/-! ## A318100.P12113408090593421093

`∩[2*A008600(n), A335218(n+1)]`
-/

namespace A318100.P12113408090593421093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P12113408090593421093

/-! ## A318100.P10467914630916637673

`∩[A335218(n+1), A008600(n)]`
-/

namespace A318100.P10467914630916637673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P10467914630916637673

/-! ## A318100.P16726328809549207589

`∩[2*A008591(n), A335218(n+1)]`
-/

namespace A318100.P16726328809549207589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P16726328809549207589

/-! ## A318100.P11217915409902164690

`∩[2*A118510(n+1), A335218(n+1)]`
-/

namespace A318100.P11217915409902164690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P11217915409902164690

/-! ## A318100.P16597047049961398484

`∩[A249726(n+1), A335218(n+1)]`
-/

namespace A318100.P16597047049961398484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P16597047049961398484

/-! ## A318100.P12749540174453109535

`filter[A335218(n+1), A366289(#)]`
-/

namespace A318100.P12749540174453109535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A318100.P12749540174453109535

/-! ## A318100.P13682502129825569365

`∩[A335218(n+1), A008591(n)]`
-/

namespace A318100.P13682502129825569365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P13682502129825569365

/-! ## A318100.P11717320262741519863

`∩[A335218(n+1), A168103(n)]`
-/

namespace A318100.P11717320262741519863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168103 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P11717320262741519863

/-! ## A318100.P12587650079073523353

`∩[A118510(n+1), A335218(n+1)]`
-/

namespace A318100.P12587650079073523353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P12587650079073523353

/-! ## A318100.P958576983019859475

`∩[2*A301291(n), A335218(n+1)]`
-/

namespace A318100.P958576983019859475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P958576983019859475

/-! ## A318100.P17241447201983001018

`∩[A335218(n+1), A072835(n)]`
-/

namespace A318100.P17241447201983001018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072835 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P17241447201983001018

/-! ## A318100.P7552234776556186014

`∩[A335218(n+1), A245094(n)]`
-/

namespace A318100.P7552234776556186014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P7552234776556186014

/-! ## A318100.P3334798429974685778

`∩[A335218(n+1), A301291(n)]`
-/

namespace A318100.P3334798429974685778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P3334798429974685778

/-! ## A318100.P813403324369975826

`∩[A335218(n+1), A281899(n)]`
-/

namespace A318100.P813403324369975826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P813403324369975826

/-! ## A318100.P4340010410862966342

`∩[A335218(n+1), A315754(n)]`
-/

namespace A318100.P4340010410862966342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P4340010410862966342

/-! ## A318100.P8662386821011551649

`∩[A335218(n+1), A315737(n)]`
-/

namespace A318100.P8662386821011551649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315737 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P8662386821011551649

/-! ## A318100.P10082962155887448232

`∩[A335218(n+1), A315634(n)]`
-/

namespace A318100.P10082962155887448232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315634 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318100.P10082962155887448232

/-!
# A318101: Number of rooted 2-connected 4-regular planar maps, which may have loops, with n inner faces.

The programs for A318101, there is no canonical definition to state claims against.
-/

/-! ## A318101.P8655097548517134081

`A003022(n+2)*A005041(A318532(n+1))`
-/

namespace A318101.P8655097548517134081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003022 (n + 2) * A005041 (A318532 (n + 1)).toNat

end

end A318101.P8655097548517134081

/-!
# A318105: Triangle read by rows: T(n,k) = (4*n - 3*k)!/((n-k)!^4*k!).

The programs for A318105, there is no canonical definition to state claims against.
-/

/-! ## A318105.P13232357558504601363

`A264773(n)*A318107(n)`
-/

namespace A318105.P13232357558504601363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 n * A318107 n

end

end A318105.P13232357558504601363

/-! ## A318105.P7786615881374030955

`A104684(n)*A264772(n)*A264773(n)`
-/

namespace A318105.P7786615881374030955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 n * A264772 n * A264773 n

end

end A318105.P7786615881374030955

/-! ## A318105.P4830055715674031717

`A063007(A061579(n))*A264772(n)*A264773(n)`
-/

namespace A318105.P4830055715674031717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A061579 n).toNat * A264772 n * A264773 n

end

end A318105.P4830055715674031717

/-! ## A318105.P2593324842838975962

`(A156763(n)-A063007(n))*A264772(n)*A264773(n)`
-/

namespace A318105.P2593324842838975962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156763 n - A063007 n) * A264772 n * A264773 n

end

end A318105.P2593324842838975962

/-! ## A318105.P10372098074238231660

`A007318(n)*A092392(n)*A264772(n)*A264773(n)`
-/

namespace A318105.P10372098074238231660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A092392 n * A264772 n * A264773 n

end

end A318105.P10372098074238231660

/-! ## A318105.P2862755343127708251

`A033184(n+1)*A135278(n)*A264772(n)*A264773(n)`
-/

namespace A318105.P2862755343127708251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) * A135278 n * A264772 n * A264773 n

end

end A318105.P2862755343127708251

/-!
# A318107: Triangle read by rows: T(n,k) = (3*n - 2*k)!/((n-k)!^3*k!).

The programs for A318107, the canonical program `A318107.P12439522984960775908` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318107 has offset 0).

The definition of A318107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318107.P12439522984960775908

`A104684(n)*A264772(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A318107

/-- `A104684(n)*A264772(n)` -/
def P12439522984960775908.Spec : Prop :=
  ∀ n, P12439522984960775908.a n = A318107 n

theorem P12439522984960775908.correct : P12439522984960775908.Spec := by
  intro n
  simp only [A318107]

end A318107

/-! ## A318107.P3584068487275364530

`A063007(A061579(n))*A264772(n)`
-/

namespace A318107.P3584068487275364530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A061579 n).toNat * A264772 n

end

end A318107.P3584068487275364530

namespace A318107

/-- `A063007(A061579(n))*A264772(n)` -/
def P3584068487275364530.Spec : Prop :=
  ∀ n, P3584068487275364530.a n = A318107 n

end A318107

/-! ## A318107.P772476913591685937

`A007318(n)*A092392(n)*A264772(n)`
-/

namespace A318107.P772476913591685937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A092392 n * A264772 n

end

end A318107.P772476913591685937

namespace A318107

/-- `A007318(n)*A092392(n)*A264772(n)` -/
def P772476913591685937.Spec : Prop :=
  ∀ n, P772476913591685937.a n = A318107 n

end A318107

/-! ## A318107.P9631876519426289750

`A069466(n)/A062344(n)*A264772(n)`
-/

namespace A318107.P9631876519426289750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A062344 n : ℚ) * (A264772 n : ℚ)

end

end A318107.P9631876519426289750

namespace A318107

/-- `A069466(n)/A062344(n)*A264772(n)` -/
def P9631876519426289750.Spec : Prop :=
  ∀ n, P9631876519426289750.a n = (A318107 n : ℚ)

end A318107

/-! ## A318107.P9034131323342978423

`A033184(n+1)*A135278(n)*A264772(n)`
-/

namespace A318107.P9034131323342978423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) * A135278 n * A264772 n

end

end A318107.P9034131323342978423

namespace A318107

/-- `A033184(n+1)*A135278(n)*A264772(n)` -/
def P9034131323342978423.Spec : Prop :=
  ∀ n, P9034131323342978423.a n = A318107 n

end A318107

/-! ## A318107.P17721544611322851717

`(A156763(n)-A063007(n))*A264772(n)`
-/

namespace A318107.P17721544611322851717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156763 n - A063007 n) * A264772 n

end

end A318107.P17721544611322851717

namespace A318107

/-- `(A156763(n)-A063007(n))*A264772(n)` -/
def P17721544611322851717.Spec : Prop :=
  ∀ n, P17721544611322851717.a n = A318107 n

theorem P17721544611322851717.correct : P17721544611322851717.Spec := by
  intro n
  simp only [A318107, Nat.add_sub_cancel, A318107.P17721544611322851717.a, A318107.P12439522984960775908.a, A063007, A063007.P6440228480596318052.a, A104684, A104684.P11433889178168133031.a, A156763, A156763.P18275565687023349415.a, A264772, A264772.P6309471126076613792.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A054142, A054142.P6369338685803904687.a, A056040, A056040.P782074390748687976.a, A085478, A085478.P12258921806039720689.a, A106187, A106187.P575274589459937692.a, A294317, A294317.P12504463466195048187.a, A000984, A000984.P7946844122574426130.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A061579, A061579.P7462537595056690109.a, A076756, A076756.P16032784192735833623.a, A128076, A128076.P748054847711115254.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A318107

/-! ## A318107.P4357181270152339478

`A318105(n)/A264773(n)`
-/

namespace A318107.P4357181270152339478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318105 n : ℚ) / (A264773 n : ℚ)

end

end A318107.P4357181270152339478

namespace A318107

/-- `A318105(n)/A264773(n)` -/
def P4357181270152339478.Spec : Prop :=
  ∀ n, P4357181270152339478.a n = (A318107 n : ℚ)

end A318107

/-!
# A318108: a(n) = Sum_{k=0..n} (3*n-2*k)!/((n-k)!^3*k!)*(-3)^k, n >= 0.

The programs for A318108, there is no canonical definition to state claims against.
-/

/-! ## A318108.P18185285412560303702

`or(A001481(A047855(n)), A032443(n))`
-/

namespace A318108.P18185285412560303702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001481 (A047855 n).toNat) (A032443 n)

end

end A318108.P18185285412560303702

/-!
# A318111: Number of maximal 1-intersecting families of 2-sets of [n] = {1,2,...,n}.

The programs for A318111, the canonical program `A318111.P6936500897394316462` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318111 has offset 1).

The definition of A318111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318111.P6936500897394316462

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=8, a(4)=15, a(5)=26, a(6)=42`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318111

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6936500897394316462.Spec : Prop :=
  ∀ n, P6936500897394316462.a n = A318111 (n + 1)

theorem P6936500897394316462.correct : P6936500897394316462.Spec := by
  intro n
  simp only [A318111, Nat.add_sub_cancel]

end A318111

/-! ## A318111.P7251900150233870647

`A000125(C(n, A000125(C(3, n))))`
-/

namespace A318111.P7251900150233870647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (Nat.choose n (A000125 (Nat.choose 3 n)).toNat)

end

end A318111.P7251900150233870647

namespace A318111

/-- `A000125(C(n, A000125(C(3, n))))` -/
def P7251900150233870647.Spec : Prop :=
  ∀ n, P7251900150233870647.a n = A318111 (n + 1)

end A318111

/-! ## A318111.P12909653945957017125

`gcd(∑[A152947(n+1)], A263013(n))`
-/

namespace A318111.P12909653945957017125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A263013 n)

end

end A318111.P12909653945957017125

namespace A318111

/-- `gcd(∑[A152947(n+1)], A263013(n))` -/
def P12909653945957017125.Spec : Prop :=
  ∀ n, (P12909653945957017125.a n : ℤ) = A318111 (n + 1)

end A318111

/-! ## A318111.P6422450635838396686

`A000125(n/a(A287524(n)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A318111.P6422450635838396686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000125 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A287524 n).toNat : ℚ))).toNat

end

end A318111.P6422450635838396686

namespace A318111

/-- `A000125(n/a(A287524(n)))` -/
def P6422450635838396686.Spec : Prop :=
  ∀ n, P6422450635838396686.a n = A318111 (n + 1)

end A318111

/-! ## A318111.P3469792946903786690

`A004006(n)%(1-A005900(n)+n)+1`
-/

namespace A318111.P3469792946903786690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004006 n) (1 - A005900 n + (n : ℤ)) + 1

end

end A318111.P3469792946903786690

namespace A318111

/-- `A004006(n)%(1-A005900(n)+n)+1` -/
def P3469792946903786690.Spec : Prop :=
  ∀ n, P3469792946903786690.a n = A318111 (n + 1)

end A318111

/-! ## A318111.P4677827669194723175

`A000125(n*A319703(A007918(n)))`
-/

namespace A318111.P4677827669194723175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 ((n : ℤ) * A319703 (A007918 n).toNat).toNat

end

end A318111.P4677827669194723175

namespace A318111

/-- `A000125(n*A319703(A007918(n)))` -/
def P4677827669194723175.Spec : Prop :=
  ∀ n, P4677827669194723175.a n = A318111 (n + 1)

end A318111

/-! ## A318111.P3254157586317403737

`A000125(n)^A319703(A007918(n))`
-/

namespace A318111.P3254157586317403737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000125 n : ℚ) ^ (A319703 (A007918 n).toNat : ℤ)

end

end A318111.P3254157586317403737

namespace A318111

/-- `A000125(n)^A319703(A007918(n))` -/
def P3254157586317403737.Spec : Prop :=
  ∀ n, P3254157586317403737.a n = (A318111 (n + 1) : ℚ)

end A318111

/-! ## A318111.P15501199236292521225

`A000125(n*A130543(n+1))`
-/

namespace A318111.P15501199236292521225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 ((n : ℤ) * A130543 (n + 1)).toNat

end

end A318111.P15501199236292521225

namespace A318111

/-- `A000125(n*A130543(n+1))` -/
def P15501199236292521225.Spec : Prop :=
  ∀ n, P15501199236292521225.a n = A318111 (n + 1)

end A318111

/-! ## A318111.P9937296787081776807

`gcd(A000125(n), A143737(n+2))`
-/

namespace A318111.P9937296787081776807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000125 n) (A143737 (n + 2))

end

end A318111.P9937296787081776807

namespace A318111

/-- `gcd(A000125(n), A143737(n+2))` -/
def P9937296787081776807.Spec : Prop :=
  ∀ n, (P9937296787081776807.a n : ℤ) = A318111 (n + 1)

end A318111

/-! ## A318111.P11604998709543595870

`A000125(n)-A049084(A278084(n+1))`
-/

namespace A318111.P11604998709543595870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - A049084 (A278084 (n + 1)).toNat

end

end A318111.P11604998709543595870

namespace A318111

/-- `A000125(n)-A049084(A278084(n+1))` -/
def P11604998709543595870.Spec : Prop :=
  ∀ n, P11604998709543595870.a n = A318111 (n + 1)

end A318111

/-! ## A318111.P12899071703747835734

`gcd(A000125(n), A010816(A165157(n)))`
-/

namespace A318111.P12899071703747835734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000125 n) (A010816 (A165157 n).toNat)

end

end A318111.P12899071703747835734

namespace A318111

/-- `gcd(A000125(n), A010816(A165157(n)))` -/
def P12899071703747835734.Spec : Prop :=
  ∀ n, (P12899071703747835734.a n : ℤ) = A318111 (n + 1)

end A318111

/-! ## A318111.P9151133131444324283

`A000125(n*A288936(A000124(n+1)+1))`
-/

namespace A318111.P9151133131444324283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 ((n : ℤ) * A288936 (A000124 (n + 1) + 1).toNat).toNat

end

end A318111.P9151133131444324283

namespace A318111

/-- `A000125(n*A288936(A000124(n+1)+1))` -/
def P9151133131444324283.Spec : Prop :=
  ∀ n, P9151133131444324283.a n = A318111 (n + 1)

end A318111

/-! ## A318111.P2952487747040267663

`A000125(n)/A000125(n*A094497(n))`
-/

namespace A318111.P2952487747040267663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000125 n : ℚ) / (A000125 ((n : ℤ) * A094497 n).toNat : ℚ)

end

end A318111.P2952487747040267663

namespace A318111

/-- `A000125(n)/A000125(n*A094497(n))` -/
def P2952487747040267663.Spec : Prop :=
  ∀ n, P2952487747040267663.a n = (A318111 (n + 1) : ℚ)

end A318111

/-! ## A318111.P12434379354914739687

`A000125(n*(1-A023533(n²)))`
-/

namespace A318111.P12434379354914739687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 ((n : ℤ) * (1 - A023533 (n ^ 2))).toNat

end

end A318111.P12434379354914739687

namespace A318111

/-- `A000125(n*(1-A023533(n²)))` -/
def P12434379354914739687.Spec : Prop :=
  ∀ n, P12434379354914739687.a n = A318111 (n + 1)

end A318111

/-! ## A318111.P7729465629609189047

`A000125(n)^(1-A023533(n²))`
-/

namespace A318111.P7729465629609189047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000125 n : ℚ) ^ (1 - A023533 (n ^ 2) : ℤ)

end

end A318111.P7729465629609189047

namespace A318111

/-- `A000125(n)^(1-A023533(n²))` -/
def P7729465629609189047.Spec : Prop :=
  ∀ n, P7729465629609189047.a n = (A318111 (n + 1) : ℚ)

end A318111

/-!
# A318113: Number of compositions of n into exactly n nonnegative parts <= five.

The programs for A318113, there is no canonical definition to state claims against.
-/

/-! ## A318113.P6376519931668721299

`A305161(Δ[A023551(n+1)])`
-/

namespace A318113.P6376519931668721299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (f1 (n + 1) - f1 n).toNat

end

end A318113.P6376519931668721299

/-! ## A318113.P11767408739269837225

`A305161(A000217(n+6)-6)`
-/

namespace A318113.P11767408739269837225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A000217 (n + 6) - 6).toNat

end

end A318113.P11767408739269837225

/-! ## A318113.P17148845883031007235

`A305161(A167487(n+5)-13)`
-/

namespace A318113.P17148845883031007235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A167487 (n + 5) - 13).toNat

end

end A318113.P17148845883031007235

/-! ## A318113.P12261602960377078491

`A305161(A000124(n+5)+n-1)`
-/

namespace A318113.P12261602960377078491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A318113.P12261602960377078491

/-! ## A318113.P4116197414925028419

`A213744(∑[n]+n)`
-/

namespace A318113.P4116197414925028419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213744 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A318113.P4116197414925028419

/-! ## A318113.P17079833019873351760

`A305161(eq[5, A025581(n)])`
-/

namespace A318113.P17079833019873351760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318113.P17079833019873351760

/-! ## A318113.P4863496230116946825

`A305161(eq[6, A193739(n)])`
-/

namespace A318113.P4863496230116946825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318113.P4863496230116946825

/-! ## A318113.P6203916964559920418

`A213889(∑[4*n])`
-/

namespace A318113.P6203916964559920418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213889 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318113.P6203916964559920418

/-! ## A318113.P17588549900307399694

`A063260(A005476(n))`
-/

namespace A318113.P17588549900307399694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063260 (A005476 n).toNat

end

end A318113.P17588549900307399694

/-! ## A318113.P9788251562247366975

`A063260(∑[5*n])`
-/

namespace A318113.P9788251562247366975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318113.P9788251562247366975

/-!
# A318114: Number of compositions of n into exactly n nonnegative parts <= six.

The programs for A318114, there is no canonical definition to state claims against.
-/

/-! ## A318114.P9883811775243969447

`A305161(A253145(n+6)-7)`
-/

namespace A318114.P9883811775243969447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A253145 (n + 6) - 7).toNat

end

end A318114.P9883811775243969447

/-! ## A318114.P6421150621590577953

`A305161(Δ[A023551(n+2)]-1)`
-/

namespace A318114.P6421150621590577953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (f1 (n + 1) - f1 n - 1).toNat

end

end A318114.P6421150621590577953

/-! ## A318114.P4307595213539319904

`A305161(2*n+A167499(n+4)+1)`
-/

namespace A318114.P4307595213539319904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 ((2 * n : ℤ) + (A167499 (n + 4) + 1)).toNat

end

end A318114.P4307595213539319904

/-! ## A318114.P7449860362722285638

`A305161(2*n+A000124(n+5)+5)`
-/

namespace A318114.P7449860362722285638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 ((2 * n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A318114.P7449860362722285638

/-! ## A318114.P9469512587673193636

`A213745(∑[n]+n)`
-/

namespace A318114.P9469512587673193636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213745 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A318114.P9469512587673193636

/-! ## A318114.P12835026188491624040

`A305161(eq[6, A025581(n)])`
-/

namespace A318114.P12835026188491624040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318114.P12835026188491624040

/-! ## A318114.P7871643401076506050

`A305161(eq[7, A193739(n)])`
-/

namespace A318114.P7871643401076506050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318114.P7871643401076506050

/-! ## A318114.P179040851138625176

`A063265(3*(n²+n))`
-/

namespace A318114.P179040851138625176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063265 (3 * (n ^ 2 + n))

end

end A318114.P179040851138625176

/-!
# A318115: Number of compositions of n into exactly n nonnegative parts <= seven.

The programs for A318115, there is no canonical definition to state claims against.
-/

/-! ## A318115.P4480447675050982088

`A305161(A155212(n+4))`
-/

namespace A318115.P4480447675050982088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A155212 (n + 4)).toNat

end

end A318115.P4480447675050982088

/-! ## A318115.P11996396291928328188

`A305161(A167487(n+5)+2*n)`
-/

namespace A318115.P11996396291928328188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A167487 (n + 5) + (2 * n : ℤ)).toNat

end

end A318115.P11996396291928328188

/-! ## A318115.P2625888177601205898

`A305161(2*n+A161680(n+7)+7)`
-/

namespace A318115.P2625888177601205898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 ((2 * n : ℤ) + (A161680 (n + 7) + 7)).toNat

end

end A318115.P2625888177601205898

/-! ## A318115.P4841320501106929102

`A213808(∑[n]+n)`
-/

namespace A318115.P4841320501106929102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213808 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A318115.P4841320501106929102

/-! ## A318115.P1987282238537558759

`A305161(eq[7, A025581(n)])`
-/

namespace A318115.P1987282238537558759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318115.P1987282238537558759

/-! ## A318115.P17362965237971739418

`A305161(eq[8, A004736(n+1)])`
-/

namespace A318115.P17362965237971739418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318115.P17362965237971739418

/-!
# A318116: Number of compositions of n into exactly n nonnegative parts <= eight.

The programs for A318116, there is no canonical definition to state claims against.
-/

/-! ## A318116.P10790476182924191933

`A305161(A051936(n+9))`
-/

namespace A318116.P10790476182924191933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A051936 (n + 9)).toNat

end

end A318116.P10790476182924191933

/-! ## A318116.P2965097155126685674

`A305161(A000217(n+9)-9)`
-/

namespace A318116.P2965097155126685674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A000217 (n + 9) - 9).toNat

end

end A318116.P2965097155126685674

/-! ## A318116.P16300903630432204635

`A305161(A000124(n+8)+n-1)`
-/

namespace A318116.P16300903630432204635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A318116.P16300903630432204635

/-! ## A318116.P11952501496225220135

`A305161(eq[8, A025581(n)])`
-/

namespace A318116.P11952501496225220135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318116.P11952501496225220135

/-! ## A318116.P2983703266097994132

`A305161(eq[9, A004736(n+1)])`
-/

namespace A318116.P2983703266097994132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318116.P2983703266097994132

/-! ## A318116.P12850760761040342306

`A213652((2*n+1)²-1)`
-/

namespace A318116.P12850760761040342306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213652 ((2 * n + 1) ^ 2 - 1)

end

end A318116.P12850760761040342306

/-!
# A318117: Number of compositions of n into exactly n nonnegative parts <= ten.

The programs for A318117, there is no canonical definition to state claims against.
-/

/-! ## A318117.P406599015444498244

`A305161(A000217(n+11)-11)`
-/

namespace A318117.P406599015444498244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A000217 (n + 11) - 11).toNat

end

end A318117.P406599015444498244

/-! ## A318117.P11643380241993537263

`A305161(A002378(n+7)-A052905(n))`
-/

namespace A318117.P11643380241993537263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A002378 (n + 7) - A052905 n).toNat

end

end A318117.P11643380241993537263

/-! ## A318117.P7360488016026705111

`A305161(A016969(n+6)+A000096(n+4))`
-/

namespace A318117.P7360488016026705111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A016969 (n + 6) + A000096 (n + 4)).toNat

end

end A318117.P7360488016026705111

/-! ## A318117.P3016968276096528832

`A305161(A046691(n+7)+A005843(n+7))`
-/

namespace A318117.P3016968276096528832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A046691 (n + 7) + A005843 (n + 7)).toNat

end

end A318117.P3016968276096528832

/-! ## A318117.P7375659533371702289

`A305161(eq[10, A025581(n)])`
-/

namespace A318117.P7375659533371702289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318117.P7375659533371702289

/-!
# A318118: a(n) = [x^n] exp(Sum_{k>=1} x^k*(1 + (n - 3)*x^k)/(k*(1 - x^k)^3)).

The programs for A318118, there is no canonical definition to state claims against.
-/

/-! ## A318118.P9665431319579563299

`A098162(floor(sqrt(A151055(n))))`
-/

namespace A318118.P9665431319579563299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098162 (Int.sqrt (A151055 n)).toNat

end

end A318118.P9665431319579563299

/-! ## A318118.P17539605291595145392

`A319514(A015461(n))+A149022(n)`
-/

namespace A318118.P17539605291595145392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (A015461 n).toNat + A149022 n

end

end A318118.P17539605291595145392

/-!
# A318119: Constant term in the expansion of (Sum_{k=0..n} k*(x^k + x^(-k)))^5.

The programs for A318119, there is no canonical definition to state claims against.
-/

/-! ## A318119.P3641173576187562650

`A322549(eq[5, A025581(n)])`
-/

namespace A318119.P3641173576187562650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318119.P3641173576187562650

/-! ## A318119.P13824346959064050968

`A322549(eq[11, A099375(n)])`
-/

namespace A318119.P13824346959064050968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318119.P13824346959064050968

/-! ## A318119.P509776523791763184

`A322549(Δ[A023551(n+1)])`
-/

namespace A318119.P509776523791763184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (f1 (n + 1) - f1 n).toNat

end

end A318119.P509776523791763184

/-! ## A318119.P10730267092037478333

`A322549(Δ[A026054(n+3)])`
-/

namespace A318119.P10730267092037478333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (f1 (n + 1) - f1 n).toNat

end

end A318119.P10730267092037478333

/-! ## A318119.P17045684049794408123

`A322549(eq[6, A004736(n+1)])`
-/

namespace A318119.P17045684049794408123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318119.P17045684049794408123

/-!
# A318120: Number of set partitions of {1,...,n} with relatively prime block sizes.

The programs for A318120, there is no canonical definition to state claims against.
-/

/-! ## A318120.P16625177911064074853

`A056273(n)-A278987(A028872(n+2))`
-/

namespace A318120.P16625177911064074853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 n - A278987 (A028872 (n + 2)).toNat

end

end A318120.P16625177911064074853

/-! ## A318120.P1463592433321932929

`A263110(A149584(n+1))`
-/

namespace A318120.P1463592433321932929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (A149584 (n + 1)).toNat

end

end A318120.P1463592433321932929

/-! ## A318120.P10147491602652164045

`A091380(A087897(n)+A053561(n+1))`
-/

namespace A318120.P10147491602652164045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091380 (A087897 n + A053561 (n + 1)).toNat

end

end A318120.P10147491602652164045

/-!
# A318121: a(n) = [x^n] exp(Sum_{k>=1} x^k*(1 + (n - 3)*x^k)/(k*(1 - x^k)^4)).

The programs for A318121, there is no canonical definition to state claims against.
-/

/-! ## A318121.P7734990099956029208

`A090606(A007718(n))`
-/

namespace A318121.P7734990099956029208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090606 (A007718 n).toNat

end

end A318121.P7734990099956029208

/-! ## A318121.P13164007571272735045

`A323789(n)-A074290(A006125(n))`
-/

namespace A318121.P13164007571272735045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323789 n - A074290 (A006125 n).toNat

end

end A318121.P13164007571272735045

/-!
# A318123: a(0) = a(1) = 1; a(n) = Sum_{k=0..n-2} lcm(a(k), a(n-k-2)).

The programs for A318123, there is no canonical definition to state claims against.
-/

/-! ## A318123.P11578194865921166995

`A241843(A105602(n+1))+A002083(n+1)`
-/

namespace A318123.P11578194865921166995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241843 (A105602 (n + 1)).toNat + A002083 (n + 1)

end

end A318123.P11578194865921166995

/-! ## A318123.P17620966773469634197

`A241843(A105602(n+1))+A037254(C(n, 2)+1)`
-/

namespace A318123.P17620966773469634197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241843 (A105602 (n + 1)).toNat + A037254 (Nat.choose n 2 + 1)

end

end A318123.P17620966773469634197

/-! ## A318123.P4717828286148991354

`A241843(A105602(n+1))+A030625(n+1)/(n+1)-(n+1)`
-/

namespace A318123.P4717828286148991354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241843 (A105602 (n + 1)).toNat : ℚ) + ((A030625 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ))

end

end A318123.P4717828286148991354

/-! ## A318123.P12712701702868797780

`A241843(A105602(n+1))+A155092(A000217(n)+1)`
-/

namespace A318123.P12712701702868797780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241843 (A105602 (n + 1)).toNat + A155092 (A000217 n + 1).toNat

end

end A318123.P12712701702868797780

/-! ## A318123.P8099397081004461808

`A241843(A105602(n+1))+A005255(n)+1-A062178(n)`
-/

namespace A318123.P8099397081004461808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241843 (A105602 (n + 1)).toNat + (A005255 n + (1 - A062178 n))

end

end A318123.P8099397081004461808

/-!
# A318124: a(n) = [x^n] exp(Sum_{k>=1} (-1)^(k+1)*x^k*(1 + (n - 3)*x^k)/(k*(1 - x^k)^3)).

The programs for A318124, there is no canonical definition to state claims against.
-/

/-! ## A318124.P17496194349245283289

`A258049(A350649(n)+A350648(n))`
-/

namespace A318124.P17496194349245283289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258049 (A350649 n + A350648 n).toNat

end

end A318124.P17496194349245283289

/-! ## A318124.P661206871162579059

`or(A108863(n), A185216(A155212(n)))`
-/

namespace A318124.P661206871162579059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108863 n) (A185216 (A155212 n).toNat)

end

end A318124.P661206871162579059

/-! ## A318124.P2217122063880298411

`or(A172471(A081143(n)), A323613(n))`
-/

namespace A318124.P2217122063880298411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A172471 (A081143 n).toNat) (A323613 n)

end

end A318124.P2217122063880298411

/-!
# A318125: a(n) = [x^n] exp(Sum_{k>=1} (-1)^(k+1)*x^k*(1 + (n - 3)*x^k)/(k*(1 - x^k)^4)).

The programs for A318125, there is no canonical definition to state claims against.
-/

/-! ## A318125.P8935720805919350637

`or(6, A316470(a(n-1)+3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A318125.P8935720805919350637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Int.lor 6 (A316470 (a (n - 1) + 3).toNat)

end

end A318125.P8935720805919350637

/-! ## A318125.P4928984450798324571

`A060749(A227038(n²))`
-/

namespace A318125.P4928984450798324571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (A227038 (n ^ 2)).toNat

end

end A318125.P4928984450798324571

/-!
# A318127: Expansion of (1/(1 - x)) * Product_{k>=1} 1/(1 - k*x^k/(1 - x)^k).

The programs for A318127, there is no canonical definition to state claims against.
-/

/-! ## A318127.P16564545193469757490

`∑[A307261(n)]`
-/

namespace A318127.P16564545193469757490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318127.P16564545193469757490

/-! ## A318127.P11922403032075628254

`∑{d}[2^n, A307261(log2(#))]`
-/

namespace A318127.P11922403032075628254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307261 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A318127.P11922403032075628254

/-! ## A318127.P1084405698039793560

`A062300(ceil(sqrt(A199301(n))))`
-/

namespace A318127.P1084405698039793560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 ⌈Real.sqrt (A199301 n : ℝ)⌉.toNat

end

end A318127.P1084405698039793560

/-!
# A318128: Number of set-systems (finite sets of finite nonempty sets) with union {1,2,...,n} and intersection {}.

The programs for A318128, there is no canonical definition to state claims against.
-/

/-! ## A318128.P8782412761709937428

`A131288(n)-A003465(n)`
-/

namespace A318128.P8782412761709937428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131288 n - A003465 n

end

end A318128.P8782412761709937428

/-! ## A318128.P7833675331447132670

`A131288(n)-A000371(n)/2`
-/

namespace A318128.P7833675331447132670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131288 n : ℚ) - (A000371 n : ℚ) / 2

end

end A318128.P7833675331447132670

/-!
# A318129: Number of sets of nonempty subsets of {1,...,n} with intersection {}.

The programs for A318129, there is no canonical definition to state claims against.
-/

/-! ## A318129.P2082137825606821684

`A318130(n)-2^(2^n-1)`
-/

namespace A318129.P2082137825606821684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318130 n : ℚ) - (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ)

end

end A318129.P2082137825606821684

/-! ## A318129.P9878172728460424885

`abs(A058891(n+1)-A318130(n))`
-/

namespace A318129.P9878172728460424885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058891 (n + 1) - A318130 n|

end

end A318129.P9878172728460424885

/-! ## A318129.P8232303035371231430

`abs(A318130(n)-(A332203(n)-1))`
-/

namespace A318129.P8232303035371231430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318130 n - (A332203 n - 1)|

end

end A318129.P8232303035371231430

/-! ## A318129.P4573019066417704180

`abs(A318130(n)-A001146(n)/2)`
-/

namespace A318129.P4573019066417704180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A318130 n : ℚ) - (A001146 n : ℚ) / 2|

end

end A318129.P4573019066417704180

/-! ## A318129.P14585300327968916516

`abs(A011782(2^n)-A318130(n))`
-/

namespace A318129.P14585300327968916516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (2 ^ n) - A318130 n|

end

end A318129.P14585300327968916516

/-!
# A318130: Number of sets of subsets of {1,...,n} with intersection {}.

The programs for A318130, there is no canonical definition to state claims against.
-/

/-! ## A318130.P15842038615051708652

`ceil(A000371(n)+sin(n)²)`
-/

namespace A318130.P15842038615051708652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000371 n : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A318130.P15842038615051708652

/-! ## A318130.P9367980167521421704

`A318129(n)+2^(2^n-1)`
-/

namespace A318130.P9367980167521421704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318129 n : ℚ) + (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ)

end

end A318130.P9367980167521421704

/-! ## A318130.P1594362829451567460

`A255270(n)+A000371(n)`
-/

namespace A318130.P1594362829451567460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 n + A000371 n

end

end A318130.P1594362829451567460

/-! ## A318130.P14657537916419137695

`A000371(n)+char[A007318(n)]`
-/

namespace A318130.P14657537916419137695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000371 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318130.P14657537916419137695

/-!
# A318131: Number of non-isomorphic sets of finite (possibly empty) sets with union {1,2,...,n} and intersection {}.

The programs for A318131, there is no canonical definition to state claims against.
-/

/-! ## A318131.P8162958702054692335

`A318132(A028310(n))+A055621(n)`
-/

namespace A318131.P8162958702054692335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318132 (A028310 n).toNat + A055621 n

end

end A318131.P8162958702054692335

/-!
# A318132: Number of non-isomorphic set-systems (finite sets of finite nonempty sets) with union {1,2,...,n} and intersection {}.

The programs for A318132, there is no canonical definition to state claims against.
-/

/-! ## A318132.P1022043102938341669

`A000027(A319637(n))-lcm(20, n)/20`
-/

namespace A318132.P1022043102938341669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A319637 n).toNat : ℚ) - (Nat.lcm 20 n : ℚ) / 20

end

end A318132.P1022043102938341669

/-!
# A318133: G.f.: A(x) = Sum_{n>=1} a(n)*x^n = x*Product_{n>=1} (1 + x^(2*n-1))^a(n).

The programs for A318133, there is no canonical definition to state claims against.
-/

/-! ## A318133.P16815186457363194292

`and(A228349(n+1), A237593(A030037(n)))`
-/

namespace A318133.P16815186457363194292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228349 (n + 1)) (A237593 (A030037 n).toNat)

end

end A318133.P16815186457363194292

/-! ## A318133.P127535359782394038

`A392629(A218576(n+1))`
-/

namespace A318133.P127535359782394038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392629 (A218576 (n + 1)).toNat

end

end A318133.P127535359782394038

/-! ## A318133.P5663514662940652004

`A309144(A100032(n+2))`
-/

namespace A318133.P5663514662940652004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309144 (A100032 (n + 2)).toNat

end

end A318133.P5663514662940652004

/-! ## A318133.P9582895167941312152

`A340607(A118647(n+1)+1)`
-/

namespace A318133.P9582895167941312152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A118647 (n + 1) + 1).toNat

end

end A318133.P9582895167941312152

/-! ## A318133.P16854784161622860896

`A316771(A246675(n+1)+1)`
-/

namespace A318133.P16854784161622860896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316771 (A246675 (n + 1) + 1).toNat

end

end A318133.P16854784161622860896

/-!
# A318142: a(n) = denominator(n!*[z^n]((cosh(x*z) + cos(x*z))*z/(1 - exp(-z)))(1)).

The programs for A318142, there is no canonical definition to state claims against.
-/

/-! ## A318142.P13884822577438167232

`gcd(A027642(3*n), A038572(A144845(n)))`
-/

namespace A318142.P13884822577438167232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 (3 * n)) (A038572 (A144845 n).toNat)

end

end A318142.P13884822577438167232

/-! ## A318142.P6566911790688012226

`gcd(A144845(n), A195159(A027642(n)))`
-/

namespace A318142.P6566911790688012226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A195159 (A027642 n).toNat)

end

end A318142.P6566911790688012226

/-! ## A318142.P11866350796530429132

`gcd(A176727(n), A317314(A027642(n)))`
-/

namespace A318142.P11866350796530429132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176727 n) (A317314 (A027642 n).toNat)

end

end A318142.P11866350796530429132

/-! ## A318142.P9228526496854966105

`gcd(A005843(A144845(n)), A141459(3*n))`
-/

namespace A318142.P9228526496854966105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A144845 n).toNat) (A141459 (3 * n))

end

end A318142.P9228526496854966105

/-! ## A318142.P4603990533678141362

`gcd(A166120(3*n+1), A176447(A326579(n+1)))`
-/

namespace A318142.P4603990533678141362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166120 (3 * n + 1)) (A176447 (A326579 (n + 1)).toNat)

end

end A318142.P4603990533678141362

/-!
# A318144: T(n, k) = (-1)^k*k!*P(n, k), where P(n, k) is the number of partitions of n of length k. Triangle read by rows, 0 <= k <= n.

The programs for A318144, there is no canonical definition to state claims against.
-/

/-! ## A318144.P15882027032035128766

`A072233(n)*A133942(A002262(n))`
-/

namespace A318144.P15882027032035128766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A133942 (A002262 n).toNat

end

end A318144.P15882027032035128766

/-! ## A318144.P1707133453070729276

`A072233(n)*A133942(A329221(n))`
-/

namespace A318144.P1707133453070729276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A133942 (A329221 n).toNat

end

end A318144.P1707133453070729276

/-! ## A318144.P2550806301548231025

`A072233(n)*A133942(log2(A059268(n)))`
-/

namespace A318144.P2550806301548231025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A133942 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A318144.P2550806301548231025

/-! ## A318144.P17489667966745575513

`A072233(n)/A008277(n+1)*A163626(n)`
-/

namespace A318144.P17489667966745575513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072233 n : ℚ) / (A008277 (n + 1) : ℚ) * (A163626 n : ℚ)

end

end A318144.P17489667966745575513

/-! ## A318144.P15196334499701940070

`A072233(n)*A264753(∑[A008284(n+1)])`
-/

namespace A318144.P15196334499701940070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A264753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318144.P15196334499701940070

/-!
# A318145: Numbers m such that 2^phi(m) mod m is a perfect power other than 1.

The programs for A318145, there is no canonical definition to state claims against.
-/

/-! ## A318145.P13944368176141497019

`A318262(C(round(atan(n+3)+n), n))`
-/

namespace A318145.P13944368176141497019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318262 (Nat.choose (SequenceMachineLib.roundAway (Real.arctan (n + 3 : ℝ) + (n : ℝ))).toNat n)

end

end A318145.P13944368176141497019

/-! ## A318145.P14632044654833138348

`A318262(A043317(n+1))`
-/

namespace A318145.P14632044654833138348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318262 (A043317 (n + 1)).toNat

end

end A318145.P14632044654833138348

/-! ## A318145.P14747443123985218967

`A318262(A044914(n+1))`
-/

namespace A318145.P14747443123985218967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318262 (A044914 (n + 1)).toNat

end

end A318145.P14747443123985218967

/-! ## A318145.P12160512958913884657

`A318262(A055648(n+1))`
-/

namespace A318145.P12160512958913884657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318262 (A055648 (n + 1)).toNat

end

end A318145.P12160512958913884657

/-! ## A318145.P13014052273159804344

`A131516(A318262(n+1))`
-/

namespace A318145.P13014052273159804344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (A318262 (n + 1)).toNat

end

end A318145.P13014052273159804344

/-!
# A318146: Coefficients of the Omega polynomials of order 2, triangle T(n,k) read by rows with 0<=k<=n.

The programs for A318146, there is no canonical definition to state claims against.
-/

/-! ## A318146.P7283306499977326911

`A088874(n)*A097807(n)`
-/

namespace A318146.P7283306499977326911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088874 n * A097807 n

end

end A318146.P7283306499977326911

/-! ## A318146.P13141823700867535533

`A094665(n)*A122803(A025581(n))`
-/

namespace A318146.P13141823700867535533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 n * A122803 (A025581 n).toNat

end

end A318146.P13141823700867535533

/-! ## A318146.P11007233081156591505

`A094665(n)*A097807(n)*A130321(n)`
-/

namespace A318146.P11007233081156591505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 n * A097807 n * A130321 n

end

end A318146.P11007233081156591505

/-! ## A318146.P8155698971490204632

`A094665(n)*A122803(log2(A057728(n+1)))`
-/

namespace A318146.P8155698971490204632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 n * A122803 (SequenceMachineLib.roundAway (Real.logb 2 (A057728 (n + 1) : ℝ))).toNat

end

end A318146.P8155698971490204632

/-! ## A318146.P11665483716460469732

`A057728(n+1)*A094665(n)*A097807(n)`
-/

namespace A318146.P11665483716460469732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A094665 n * A097807 n

end

end A318146.P11665483716460469732

/-! ## A318146.P9406806044481066743

`A033999(A025581(n))*A094665(n)*A130321(n)`
-/

namespace A318146.P9406806044481066743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A094665 n * A130321 n

end

end A318146.P9406806044481066743

/-!
# A318149: e-numbers of free pure symmetric multifunctions with one atom.

The programs for A318149, there is no canonical definition to state claims against.
-/

/-! ## A318149.P14936756625742710637

`A232635(10*n^5/5)`
-/

namespace A318149.P14936756625742710637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232635 (SequenceMachineLib.roundAway (10 * ((n ^ 5 : ℚ) / 5))).toNat

end

end A318149.P14936756625742710637

/-! ## A318149.P10985087200235914695

`record[and(∏{p}[n+1, 1-#]², A029726(n))]`
-/

namespace A318149.P10985087200235914695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ))) ^ 2) (A029726 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318149.P10985087200235914695

/-!
# A318150: e-numbers of free pure functions with one atom.

The programs for A318150, there is no canonical definition to state claims against.
-/

/-! ## A318150.P6570433757486206441

`∩[A099055(n), A318149(n+1)]`
-/

namespace A318150.P6570433757486206441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318150.P6570433757486206441

/-!
# A318151: e-numbers of unlabeled rooted trees with empty leaves o[] allowed. A number n is in the sequence iff n = 2^(prime(y_1) * ... * prime(y_k)) for some k >= 0 and y_1, ..., y_k already in the sequence.

The programs for A318151, there is no canonical definition to state claims against.
-/

/-! ## A318151.P6721089461755907772

`A000079(record[A025480(A318400(n+1))])`
-/

namespace A318151.P6721089461755907772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A318400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318151.P6721089461755907772

/-! ## A318151.P14288249564201985762

`A000079(record[A142150(A318400(n+1))])`
-/

namespace A318151.P14288249564201985762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A318400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318151.P14288249564201985762

/-! ## A318151.P3327114320146819227

`(A000038(n)+2)^record[A142150(A318400(n+1))]`
-/

namespace A318151.P3327114320146819227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A318400 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n + 2 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A318151.P3327114320146819227

/-! ## A318151.P16903340340778318555

`(A028310(n)+2-n)^record[A142150(A318400(n+1))]`
-/

namespace A318151.P16903340340778318555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A318400 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n + (2 - (n : ℤ)) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A318151.P16903340340778318555

/-!
# A318152: e-numbers of unlabeled rooted trees. A number n is in the sequence iff n = 2^(prime(y_1) * ... * prime(y_k)) for some k > 0 and y_1, ..., y_k already in the sequence.

The programs for A318152, there is no canonical definition to state claims against.
-/

/-! ## A318152.P2640962437997738731

`∩[A318149(n+1), A000079(n)]`
-/

namespace A318152.P2640962437997738731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318152.P2640962437997738731

/-! ## A318152.P7636865051864757559

`∩[A318149(n+1), A018195(n)]`
-/

namespace A318152.P7636865051864757559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018195 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318152.P7636865051864757559

/-! ## A318152.P5784558826075700231

`∩[A318149(n+1), A029746(n)]`
-/

namespace A318152.P5784558826075700231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318152.P5784558826075700231

/-! ## A318152.P14771074689739772146

`∩[A029748(n), A318149(n+1)]`
-/

namespace A318152.P14771074689739772146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318152.P14771074689739772146

/-! ## A318152.P2001007735643672592

`∩[A029749(n), A318149(n+1)]`
-/

namespace A318152.P2001007735643672592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318152.P2001007735643672592

/-!
# A318153: Number of antichain covers of the free pure symmetric multifunction (with empty expressions allowed) with e-number n.

The programs for A318153, there is no canonical definition to state claims against.
-/

/-! ## A318153.P14659547529049773879

`A317056(n+1)+A295931(A239127(n+4))`
-/

namespace A318153.P14659547529049773879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317056 (n + 1) + A295931 (A239127 (n + 4)).toNat

end

end A318153.P14659547529049773879

/-! ## A318153.P1922816651345969047

`A317056(A007916(n+1))+A132349(A000326(3*(n+1)))`
-/

namespace A318153.P1922816651345969047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317056 (A007916 (n + 1)).toNat + A132349 (A000326 (3 * (n + 1))).toNat

end

end A318153.P1922816651345969047

/-!
# A318154: Number of non-isomorphic directed graphs reachable by n agents using the ANY protocol.

The programs for A318154, there is no canonical definition to state claims against.
-/

/-! ## A318154.P11009899795443341375

`A167008(n)+A014085(A185193(n+1))`
-/

namespace A318154.P11009899795443341375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167008 n + A014085 (A185193 (n + 1)).toNat

end

end A318154.P11009899795443341375

/-! ## A318154.P18407139943625308689

`A058338(n+1)-A292274(A362205(n))`
-/

namespace A318154.P18407139943625308689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058338 (n + 1) - A292274 (A362205 n).toNat

end

end A318154.P18407139943625308689

/-!
# A318155: Expansion of (1/(1 - x)) * Sum_{k>=0} x^(k*(2*k+1)) / Product_{j=1..2*k} (1 - x^j).

The programs for A318155, there is no canonical definition to state claims against.
-/

/-! ## A318155.P5311341501898527449

`A318156(n)+A078616(n)`
-/

namespace A318155.P5311341501898527449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318156 n + A078616 n

end

end A318155.P5311341501898527449

/-! ## A318155.P3053479352894707216

`A036469(n)-A318156(n)`
-/

namespace A318155.P3053479352894707216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - A318156 n

end

end A318155.P3053479352894707216

/-! ## A318155.P14764027591971333142

`∑[A067661(n)]`
-/

namespace A318155.P14764027591971333142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318155.P14764027591971333142

/-! ## A318155.P12378710963524931969

`A067661(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A318155.P12378710963524931969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067661 (2 * n - n) + a (n - 1)

end

end A318155.P12378710963524931969

/-! ## A318155.P7213906372193836726

`∑[A067659(n)+A010815(n)]`
-/

namespace A318155.P7213906372193836726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + A010815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318155.P7213906372193836726

/-! ## A318155.P8354699565712274680

`A078616(n)+∑[A067659(n)]`
-/

namespace A318155.P8354699565712274680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318155.P8354699565712274680

/-! ## A318155.P11255005701531543827

`A318156(n)+∑[A010815(n)]`
-/

namespace A318155.P11255005701531543827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318156 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318155.P11255005701531543827

/-! ## A318155.P4766790046407664579

`∑[A000009(n)-A067659(n)]`
-/

namespace A318155.P4766790046407664579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A067659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318155.P4766790046407664579

/-! ## A318155.P549590041924851575

`A036469(n)-∑[A067659(n)]`
-/

namespace A318155.P549590041924851575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318155.P549590041924851575

/-! ## A318155.P304589550185319043

`∑[A238215(n)+A238208(n+1)]`
-/

namespace A318155.P304589550185319043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n + A238208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318155.P304589550185319043

/-! ## A318155.P6262893798820683380

`A246575(n+1)+A318156(n)-A246575(n)`
-/

namespace A318155.P6262893798820683380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246575 (n + 1) + (A318156 n - A246575 n)

end

end A318155.P6262893798820683380

/-!
# A318156: Expansion of (1/(1 - x)) * Sum_{k>=1} x^(k*(2*k-1)) / Product_{j=1..2*k-1} (1 - x^j).

The programs for A318156, there is no canonical definition to state claims against.
-/

/-! ## A318156.P2856884381733140912

`A036469(n)-A318155(n)`
-/

namespace A318156.P2856884381733140912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - A318155 n

end

end A318156.P2856884381733140912

/-! ## A318156.P18339202403075543788

`A318155(n)-A078616(n)`
-/

namespace A318156.P18339202403075543788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318155 n - A078616 n

end

end A318156.P18339202403075543788

/-! ## A318156.P10092403673909531185

`∑[A067659(n)]`
-/

namespace A318156.P10092403673909531185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318156.P10092403673909531185

/-! ## A318156.P2249769600270624331

`∑[A000009(n)-A067661(n)]`
-/

namespace A318156.P2249769600270624331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A067661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318156.P2249769600270624331

/-! ## A318156.P15901618811249733176

`∑[A067661(n)-A010815(n)]`
-/

namespace A318156.P15901618811249733176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A010815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318156.P15901618811249733176

/-! ## A318156.P7795478356341354835

`∑[abs(A081360(n))-A067661(n)]`
-/

namespace A318156.P7795478356341354835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A067661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318156.P7795478356341354835

/-! ## A318156.P18325085867664013328

`∑[∑[A087897(n)]-A067661(n)]`
-/

namespace A318156.P18325085867664013328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A067661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318156.P18325085867664013328

/-! ## A318156.P4640817501010573106

`A246575(n)+A318155(n)-A246575(n+1)`
-/

namespace A318156.P4640817501010573106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246575 n + (A318155 n - A246575 (n + 1))

end

end A318156.P4640817501010573106

/-!
# A318157: Primes that are one more or one less than the sum of four consecutive composite numbers.

The programs for A318157, there is no canonical definition to state claims against.
-/

/-! ## A318157.P2624436300300920456

`A156284(A304488(n+1))`
-/

namespace A318157.P2624436300300920456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (A304488 (n + 1)).toNat

end

end A318157.P2624436300300920456

/-!
# A318158: Prime numbers of the form p1^4 + p2^3 + p3^2 + p4, where p1, p2, p3 and p4 are distinct primes.

The programs for A318158, there is no canonical definition to state claims against.
-/

/-! ## A318158.P14936875399135119242

`p?[A002181(A345480(n+1))]`
-/

namespace A318158.P14936875399135119242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (A345480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318158.P14936875399135119242

/-! ## A318158.P2674830159198172496

`p?[A344799(n+1)-A014788(A008619(n))]`
-/

namespace A318158.P2674830159198172496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344799 (n + 1) - A014788 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318158.P2674830159198172496

/-! ## A318158.P7782403794121106334

`p?[A345476(n+1)+A008621(n)]`
-/

namespace A318158.P7782403794121106334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345476 (n + 1) + A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318158.P7782403794121106334

/-! ## A318158.P632439377654776522

`∩[A000040(n+1), A345476(n+1)+A008621(n)]`
-/

namespace A318158.P632439377654776522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345476 (n + 1) + A008621 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318158.P632439377654776522

/-! ## A318158.P10498498187148925327

`p?[A345482(n+1)+A345480(n+2)]`
-/

namespace A318158.P10498498187148925327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345482 (n + 1) + A345480 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318158.P10498498187148925327

/-!
# A318159: Figurate numbers based on the small stellated dodecahedron: a(n) = n*(21*n^2 - 33*n + 14)/2.

The programs for A318159, the canonical program `A318159.P11414605381316597763` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318159 has offset 1).

The definition of A318159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(21*(n+1)²-33*(n+1)+14)/2` (program `A318159.P1502578145470523866`, by `A318159.P1502578145470523866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318159.P15368985829962216489

`(n+1)*(14-33*(n+1)+21*(n+1)²)/2`
-/

namespace A318159.P15368985829962216489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (14 - (33 * (n + 1) : ℤ) + (21 * (n + 1) ^ 2 : ℤ)) : ℚ) / 2

end

end A318159.P15368985829962216489

namespace A318159

/-- `(n+1)*(14-33*(n+1)+21*(n+1)²)/2` -/
def P15368985829962216489.Spec : Prop :=
  ∀ n, P15368985829962216489.a n = (A318159 (n + 1) : ℚ)

theorem P15368985829962216489.correct : P15368985829962216489.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A318159, Nat.add_sub_cancel, A318159.P15368985829962216489.a, A318159.P11414605381316597763.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A318159, Nat.add_sub_cancel, A318159.P15368985829962216489.a, A318159.P11414605381316597763.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A318159

/-! ## A318159.P1502578145470523866

`(n+1)*(21*(n+1)²-33*(n+1)+14)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318159.P1502578145470523866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((21 * (n + 1) ^ 2 : ℤ) - (33 * (n + 1) : ℤ) + 14) : ℚ) / 2

end

end A318159.P1502578145470523866

namespace A318159

/-- `(n+1)*(21*(n+1)²-33*(n+1)+14)/2` -/
def P1502578145470523866.Spec : Prop :=
  ∀ n, P1502578145470523866.a n = (A318159 (n + 1) : ℚ)

theorem P1502578145470523866.correct : P1502578145470523866.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A318159, Nat.add_sub_cancel, A318159.P1502578145470523866.a, A318159.P11414605381316597763.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A318159, Nat.add_sub_cancel, A318159.P1502578145470523866.a, A318159.P11414605381316597763.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A318159

/-! ## A318159.P11414605381316597763

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=32, a(2)=156, a(3)=436`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318159

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11414605381316597763.Spec : Prop :=
  ∀ n, P11414605381316597763.a n = A318159 (n + 1)

theorem P11414605381316597763.correct : P11414605381316597763.Spec := by
  intro n
  simp only [A318159, Nat.add_sub_cancel]

end A318159

/-! ## A318159.P16862089304746140141

`A006566(n+1)+12*A002411(n)`
-/

namespace A318159.P16862089304746140141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 (n + 1) + 12 * A002411 n

end

end A318159.P16862089304746140141

namespace A318159

/-- `A006566(n+1)+12*A002411(n)` -/
def P16862089304746140141.Spec : Prop :=
  ∀ n, P16862089304746140141.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P18200977563753925254

`(n+1)*A381109(n)`
-/

namespace A318159.P18200977563753925254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A381109 n

end

end A318159.P18200977563753925254

namespace A318159

/-- `(n+1)*A381109(n)` -/
def P18200977563753925254.Spec : Prop :=
  ∀ n, P18200977563753925254.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P13879108923341109292

`∑[A158575(n)-(∑[n]+n)]`
-/

namespace A318159.P13879108923341109292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158575 n - ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318159.P13879108923341109292

namespace A318159

/-- `∑[A158575(n)-(∑[n]+n)]` -/
def P13879108923341109292.Spec : Prop :=
  ∀ n, P13879108923341109292.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P9343086755818736359

`∑[7*A022266(n)]+(n+1)²`
-/

namespace A318159.P9343086755818736359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A022266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A318159.P9343086755818736359

namespace A318159

/-- `∑[7*A022266(n)]+(n+1)²` -/
def P9343086755818736359.Spec : Prop :=
  ∀ n, P9343086755818736359.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P10360177602556083666

`∑[A010021(n)-∑[n+1]]+1`
-/

namespace A318159.P10360177602556083666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010021 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A318159.P10360177602556083666

namespace A318159

/-- `∑[A010021(n)-∑[n+1]]+1` -/
def P10360177602556083666.Spec : Prop :=
  ∀ n, P10360177602556083666.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P16975900343903502974

`3*(7*n+3)*A000217(n)+n+1`
-/

namespace A318159.P16975900343903502974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (7 * n + 3) : ℤ) * A000217 n + (n + 1 : ℤ)

end

end A318159.P16975900343903502974

namespace A318159

/-- `3*(7*n+3)*A000217(n)+n+1` -/
def P16975900343903502974.Spec : Prop :=
  ∀ n, P16975900343903502974.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P1500221405071564211

`A100168(n+1)-A028896(n)`
-/

namespace A318159.P1500221405071564211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100168 (n + 1) - A028896 n

end

end A318159.P1500221405071564211

namespace A318159

/-- `A100168(n+1)-A028896(n)` -/
def P1500221405071564211.Spec : Prop :=
  ∀ n, P1500221405071564211.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P16313083414692190688

`A100172(n+1)+2*A135503(n)`
-/

namespace A318159.P16313083414692190688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100172 (n + 1) + 2 * A135503 n

end

end A318159.P16313083414692190688

namespace A318159

/-- `A100172(n+1)+2*A135503(n)` -/
def P16313083414692190688.Spec : Prop :=
  ∀ n, P16313083414692190688.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P1626362862606606123

`A000326(n+1)+n*A152759(n+1)`
-/

namespace A318159.P1626362862606606123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) + (n : ℤ) * A152759 (n + 1)

end

end A318159.P1626362862606606123

namespace A318159

/-- `A000326(n+1)+n*A152759(n+1)` -/
def P1626362862606606123.Spec : Prop :=
  ∀ n, P1626362862606606123.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P550424073572770949

`A000447(2*n+1)+1-A000292(n+1)`
-/

namespace A318159.P550424073572770949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (2 * n + 1) + (1 - A000292 (n + 1))

end

end A318159.P550424073572770949

namespace A318159

/-- `A000447(2*n+1)+1-A000292(n+1)` -/
def P550424073572770949.Spec : Prop :=
  ∀ n, P550424073572770949.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P11712041217185541594

`2*A056640(2*n+1)-A000292(n+1)`
-/

namespace A318159.P11712041217185541594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056640 (2 * n + 1) - A000292 (n + 1)

end

end A318159.P11712041217185541594

namespace A318159

/-- `2*A056640(2*n+1)-A000292(n+1)` -/
def P11712041217185541594.Spec : Prop :=
  ∀ n, P11712041217185541594.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P11120147220601133550

`A000447(2*n+1)-(A005581(n+1)+n)`
-/

namespace A318159.P11120147220601133550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (2 * n + 1) - (A005581 (n + 1) + (n : ℤ))

end

end A318159.P11120147220601133550

namespace A318159

/-- `A000447(2*n+1)-(A005581(n+1)+n)` -/
def P11120147220601133550.Spec : Prop :=
  ∀ n, P11120147220601133550.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P10672255366229119951

`A118277(2*n+1)+n*A303303(2*n+1)`
-/

namespace A318159.P10672255366229119951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 (2 * n + 1) + (n : ℤ) * A303303 (2 * n + 1)

end

end A318159.P10672255366229119951

namespace A318159

/-- `A118277(2*n+1)+n*A303303(2*n+1)` -/
def P10672255366229119951.Spec : Prop :=
  ∀ n, P10672255366229119951.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P16228987620255090426

`∑[A140063(3*n)]`
-/

namespace A318159.P16228987620255090426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140063 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318159.P16228987620255090426

namespace A318159

/-- `∑[A140063(3*n)]` -/
def P16228987620255090426.Spec : Prop :=
  ∀ n, P16228987620255090426.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P11405875657854401607

`∑[A022264(3*n)+1]`
-/

namespace A318159.P11405875657854401607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318159.P11405875657854401607

namespace A318159

/-- `∑[A022264(3*n)+1]` -/
def P11405875657854401607.Spec : Prop :=
  ∀ n, P11405875657854401607.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P15094208931439997686

`A005915(2*n)-(A006002(3*n)+n)`
-/

namespace A318159.P15094208931439997686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 (2 * n) - (A006002 (3 * n) + (n : ℤ))

end

end A318159.P15094208931439997686

namespace A318159

/-- `A005915(2*n)-(A006002(3*n)+n)` -/
def P15094208931439997686.Spec : Prop :=
  ∀ n, P15094208931439997686.a n = A318159 (n + 1)

end A318159

/-! ## A318159.P5967150356740343297

`A007584(2*n)+A007584(n+1)+A002378(3*n)`
-/

namespace A318159.P5967150356740343297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (2 * n) + (A007584 (n + 1) + A002378 (3 * n))

end

end A318159.P5967150356740343297

namespace A318159

/-- `A007584(2*n)+A007584(n+1)+A002378(3*n)` -/
def P5967150356740343297.Spec : Prop :=
  ∀ n, P5967150356740343297.a n = A318159 (n + 1)

end A318159

/-!
# A318160: Number of compositions of n into exactly n nonnegative parts with largest part ceiling(n/2).

The programs for A318160, there is no canonical definition to state claims against.
-/

/-! ## A318160.P12816083227120708725

`A180281(A000982(or(n, A036987(n))))`
-/

namespace A318160.P12816083227120708725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000982 (Int.lor (n : ℤ) (A036987 n)).toNat).toNat

end

end A318160.P12816083227120708725

/-! ## A318160.P17272166056940493575

`A180281(A000982(A036987(n²)+n))`
-/

namespace A318160.P17272166056940493575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000982 (A036987 (n ^ 2) + (n : ℤ)).toNat).toNat

end

end A318160.P17272166056940493575

/-! ## A318160.P8208003528167326036

`A180281(A179865(n+1)-A004526(n))`
-/

namespace A318160.P8208003528167326036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A179865 (n + 1) - A004526 n).toNat

end

end A318160.P8208003528167326036

/-! ## A318160.P14273353059845884843

`A180281(A036987(2*n)+A000982(n))`
-/

namespace A318160.P14273353059845884843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A036987 (2 * n) + A000982 n).toNat

end

end A318160.P14273353059845884843

/-! ## A318160.P1592004715056177330

`A180281(A065033(n²))`
-/

namespace A318160.P1592004715056177330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A065033 (n ^ 2)).toNat

end

end A318160.P1592004715056177330

/-!
# A318161: Number of compositions of 2n into exactly 2n nonnegative parts with largest part n.

The programs for A318161, there is no canonical definition to state claims against.
-/

/-! ## A318161.P13068209985887076066

`A318160(2*n)`
-/

namespace A318161.P13068209985887076066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318160 (2 * n)

end

end A318161.P13068209985887076066

/-! ## A318161.P8707436259506043688

`abs(A318160(A004277(n))-n)+n`
-/

namespace A318161.P8707436259506043688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318160 (A004277 n).toNat - (n : ℤ)| + (n : ℤ)

end

end A318161.P8707436259506043688

/-! ## A318161.P3071170418598611894

`or(A000007(n), A318160(A004277(n)))`
-/

namespace A318161.P3071170418598611894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318160 (A004277 n).toNat)

end

end A318161.P3071170418598611894

/-! ## A318161.P7420812955895471360

`or(A036987(n), A318160(A004277(n)))`
-/

namespace A318161.P7420812955895471360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A318160 (A004277 n).toNat)

end

end A318161.P7420812955895471360

/-! ## A318161.P6062081152194353299

`A318160(A004277(n))+A005843(n)%2`
-/

namespace A318161.P6062081152194353299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318160 (A004277 n).toNat + Int.tmod (A005843 n) 2

end

end A318161.P6062081152194353299

/-! ## A318161.P8924351188819224304

`A318160(A004277(n))/A007318(A000217(n))`
-/

namespace A318161.P8924351188819224304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318160 (A004277 n).toNat : ℚ) / (A007318 (A000217 n).toNat : ℚ)

end

end A318161.P8924351188819224304

/-! ## A318161.P3139846274453982496

`A318160(A005843(n))%A232078(n+1)`
-/

namespace A318161.P3139846274453982496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318160 (A005843 n).toNat) (A232078 (n + 1))

end

end A318161.P3139846274453982496

/-! ## A318161.P756391137406413308

`A180281(A004277(n²))`
-/

namespace A318161.P756391137406413308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A004277 (n ^ 2)).toNat

end

end A318161.P756391137406413308

/-! ## A318161.P5441269497491795229

`A180281(2*A123108(2*n)²)`
-/

namespace A318161.P5441269497491795229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (2 * A123108 (2 * n) ^ 2).toNat

end

end A318161.P5441269497491795229

/-! ## A318161.P13790137886707965118

`A180281(A179865(2*n+1)-n)`
-/

namespace A318161.P13790137886707965118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A179865 (2 * n + 1) - (n : ℤ)).toNat

end

end A318161.P13790137886707965118

/-!
# A318162: Number of compositions of 2n-1 into exactly 2n-1 nonnegative parts with largest part n.

The programs for A318162, the canonical program `A318162.P10619803318737600839` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318162 has offset 1).

The definition of A318162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318162.P3301289851818191946

`A318160(Δ[n²])`
-/

namespace A318162.P3301289851818191946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318160 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A318162.P3301289851818191946

namespace A318162

/-- `A318160(Δ[n²])` -/
def P3301289851818191946.Spec : Prop :=
  ∀ n, P3301289851818191946.a n = A318162 (n + 1)

end A318162

/-! ## A318162.P10619803318737600839

`Δ[n²]*A165817(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318162

/-- `Δ[n²]*A165817(n)` -/
def P10619803318737600839.Spec : Prop :=
  ∀ n, P10619803318737600839.a n = A318162 (n + 1)

theorem P10619803318737600839.correct : P10619803318737600839.Spec := by
  intro n
  simp only [A318162, Nat.add_sub_cancel]

end A318162

/-! ## A318162.P9088664001699569102

`lcm(2*n+1, A318160(2*n+1))`
-/

namespace A318162.P9088664001699569102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A318160 (2 * n + 1))

end

end A318162.P9088664001699569102

namespace A318162

/-- `lcm(2*n+1, A318160(2*n+1))` -/
def P9088664001699569102.Spec : Prop :=
  ∀ n, (P9088664001699569102.a n : ℤ) = A318162 (n + 1)

end A318162

/-! ## A318162.P3638378248952029127

`record[A318160(A026741(n))]`
-/

namespace A318162.P3638378248952029127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318160 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318162.P3638378248952029127

namespace A318162

/-- `record[A318160(A026741(n))]` -/
def P3638378248952029127.Spec : Prop :=
  ∀ n, P3638378248952029127.a n = A318162 (n + 1)

end A318162

/-! ## A318162.P973300369127775658

`(A303259(2*n)+n)*A141310(2*n)`
-/

namespace A318162.P973300369127775658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A303259 (2 * n) + (n : ℤ)) * A141310 (2 * n)

end

end A318162.P973300369127775658

namespace A318162

/-- `(A303259(2*n)+n)*A141310(2*n)` -/
def P973300369127775658.Spec : Prop :=
  ∀ n, P973300369127775658.a n = A318162 (n + 1)

end A318162

/-! ## A318162.P11025230350716855945

`A004273(n+1)*A081204(A004273(n))`
-/

namespace A318162.P11025230350716855945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) * A081204 (A004273 n).toNat

end

end A318162.P11025230350716855945

namespace A318162

/-- `A004273(n+1)*A081204(A004273(n))` -/
def P11025230350716855945.Spec : Prop :=
  ∀ n, P11025230350716855945.a n = A318162 (n + 1)

end A318162

/-! ## A318162.P15426647744003279052

`or(A000007(n), A318160(A004277(n)+1))`
-/

namespace A318162.P15426647744003279052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318160 (A004277 n + 1).toNat)

end

end A318162.P15426647744003279052

namespace A318162

/-- `or(A000007(n), A318160(A004277(n)+1))` -/
def P15426647744003279052.Spec : Prop :=
  ∀ n, P15426647744003279052.a n = A318162 (n + 1)

end A318162

/-! ## A318162.P14076208879486039044

`A004277(n+1)*A318160(2*n+1)/A005843(n+1)`
-/

namespace A318162.P14076208879486039044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) * A318160 (2 * n + 1) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A318162.P14076208879486039044

namespace A318162

/-- `A004277(n+1)*A318160(2*n+1)/A005843(n+1)` -/
def P14076208879486039044.Spec : Prop :=
  ∀ n, P14076208879486039044.a n = (A318162 (n + 1) : ℚ)

end A318162

/-! ## A318162.P9337986029266068836

`C(abs(1-3*n), n)*Δ[n²]`
-/

namespace A318162.P9337986029266068836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose |1 - (3 * n : ℤ)|.toNat n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A318162.P9337986029266068836

namespace A318162

/-- `C(abs(1-3*n), n)*Δ[n²]` -/
def P9337986029266068836.Spec : Prop :=
  ∀ n, P9337986029266068836.a n = A318162 (n + 1)

end A318162

/-! ## A318162.P6325679384478764684

`(2*n+1)*C(abs(1-3*n), n)`
-/

namespace A318162.P6325679384478764684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose |1 - (3 * n : ℤ)|.toNat n

end

end A318162.P6325679384478764684

namespace A318162

/-- `(2*n+1)*C(abs(1-3*n), n)` -/
def P6325679384478764684.Spec : Prop :=
  ∀ n, (P6325679384478764684.a n : ℤ) = A318162 (n + 1)

end A318162

/-!
# A318163: a(0) = a(3) = 0, a(1) = a(2) = 1; for n >= 2, a(2*n) = -a(n-1) and a(2*n+1) = -a(n-1)-a(n).

The programs for A318163, the canonical program `A318163.P4570111851606319831` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318163 has offset 0).

The definition of A318163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318163.P4570111851606319831

`a(n-1)-a(A029578(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318163

/-- `a(n-1)-a(A029578(n-1))` -/
def P4570111851606319831.Spec : Prop :=
  ∀ n, P4570111851606319831.a n = A318163 n

theorem P4570111851606319831.correct : P4570111851606319831.Spec := by
  intro n
  simp only [A318163]

end A318163

/-!
# A318164: a(n) = A000225(n)^A000217(n-1), n > 0.

The programs for A318164, the canonical program `A318164.P17398041665830414596` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318164 has offset 1).

The definition of A318164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318164.P17398041665830414596

`(2^(n+1)-1)^((n+1)*n/2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318164

/-- `(2^(n+1)-1)^((n+1)*n/2)` -/
def P17398041665830414596.Spec : Prop :=
  ∀ n, P17398041665830414596.a n = (A318164 (n + 1) : ℝ)

end A318164

/-! ## A318164.P4071855543052429236

`A000225(n+1)^A000217(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318164.P4071855543052429236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) ^ (A000217 n : ℤ)

end

end A318164.P4071855543052429236

namespace A318164

/-- `A000225(n+1)^A000217(n)` -/
def P4071855543052429236.Spec : Prop :=
  ∀ n, P4071855543052429236.a n = (A318164 (n + 1) : ℚ)

end A318164

/-! ## A318164.P17144316719304295027

`ceil((2^C(n+1, n)-1)^(n²-C(n, 2)))`
-/

namespace A318164.P17144316719304295027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ Nat.choose (n + 1) n : ℤ) - 1 : ℚ) ^ ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) : ℤ)⌉

end

end A318164.P17144316719304295027

namespace A318164

/-- `ceil((2^C(n+1, n)-1)^(n²-C(n, 2)))` -/
def P17144316719304295027.Spec : Prop :=
  ∀ n, P17144316719304295027.a n = A318164 (n + 1)

end A318164

/-! ## A318164.P692328243658154955

`ceil((2^C(n+1, n)-1)^(lcm(n, n+1)/2))`
-/

namespace A318164.P692328243658154955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ Nat.choose (n + 1) n : ℤ) - 1 : ℝ) ^ ((Nat.lcm n (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A318164.P692328243658154955

namespace A318164

/-- `ceil((2^C(n+1, n)-1)^(lcm(n, n+1)/2))` -/
def P692328243658154955.Spec : Prop :=
  ∀ n, P692328243658154955.a n = A318164 (n + 1)

end A318164

/-! ## A318164.P2480215196938372737

`ceil((2^C(n+1, n)-1)^(n-Δ[-C(n, 3)]))`
-/

namespace A318164.P2480215196938372737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ Nat.choose (n + 1) n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - (f1 (n + 1) - f1 n) : ℤ)⌉

end

end A318164.P2480215196938372737

namespace A318164

/-- `ceil((2^C(n+1, n)-1)^(n-Δ[-C(n, 3)]))` -/
def P2480215196938372737.Spec : Prop :=
  ∀ n, P2480215196938372737.a n = A318164 (n + 1)

end A318164

/-!
# A318166: a(n) begins the first run of at least n consecutive numbers with the same number of infinitary divisors.

The programs for A318166, there is no canonical definition to state claims against.
-/

/-! ## A318166.P13316362682125950797

`A376597(A087628(n))`
-/

namespace A318166.P13316362682125950797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376597 (A087628 n).toNat

end

end A318166.P13316362682125950797

/-! ## A318166.P5342014399928837211

`A061670(A000712(∑[n]))+1`
-/

namespace A318166.P5342014399928837211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A000712 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A318166.P5342014399928837211

/-!
# A318167: Numbers k such that both k and k+1 are bi-unitary abundant numbers.

The programs for A318167, there is no canonical definition to state claims against.
-/

/-! ## A318167.P13506838341453370548

`A096399(lt[A157409(n+4), A157412(3*(n+2))])`
-/

namespace A318167.P13506838341453370548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157409 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157412 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A318167.P13506838341453370548

/-!
# A318168: Reverse Erdős-Nicolas numbers: abundant numbers m such that the sum of the last k proper divisors of m is equal to m for some k.

The programs for A318168, there is no canonical definition to state claims against.
-/

/-! ## A318168.P17725542674553188668

`∩[a(n-4)+60, A328189(n+1)]` with `a(0)=6, a(1)=18, a(2)=42, a(3)=54`
-/

namespace A318168.P17725542674553188668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 18, 42, 54] fun n f1 =>
  f1 (n - 4) + 60

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318168.P17725542674553188668

/-! ## A318168.P11195218583751031885

`record[A074837(A161358(n+3))]`
-/

namespace A318168.P11195218583751031885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074837 (A161358 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318168.P11195218583751031885

/-! ## A318168.P4717862477563185960

`A286308((n+2)^A250662(n))`
-/

namespace A318168.P4717862477563185960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286308 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A250662 n : ℤ))).toNat

end

end A318168.P4717862477563185960

/-! ## A318168.P12562667671216362436

`∩[A328189(n+1), A017593(n)]`
-/

namespace A318168.P12562667671216362436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318168.P12562667671216362436

/-! ## A318168.P5905708589676796217

`∩[A074837(n+1), A328189(n+1)]`
-/

namespace A318168.P5905708589676796217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318168.P5905708589676796217

/-!
# A318171: Least prime p such that Sum_{q prime <= p} q is divisible by the first n primes.

The programs for A318171, there is no canonical definition to state claims against.
-/

/-! ## A318171.P6529189808691126418

`A000040(A053050(A002110(n+1)))`
-/

namespace A318171.P6529189808691126418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A053050 (A002110 (n + 1)).toNat).toNat

end

end A318171.P6529189808691126418

/-!
# A318174: Expansion of Hypergeometric function F(5/12, 13/12; 2; 1728*x) in powers of x.

The programs for A318174, there is no canonical definition to state claims against.
-/

/-! ## A318174.P13851811197000741654

`(12*n+1)*A092870(n)/(n+1)`
-/

namespace A318174.P13851811197000741654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 * n + 1 : ℤ) * A092870 n : ℚ) / (n + 1 : ℚ)

end

end A318174.P13851811197000741654

/-!
# A318175: Numbers m such that A188999(A188999(m)) = k*m for some k where A188999 is the bi-unitary sigma function.

The programs for A318175, there is no canonical definition to state claims against.
-/

/-! ## A318175.P10261930947104046780

`record[gcd(n+1, A188999(A188999(n+1)))]`
-/

namespace A318175.P10261930947104046780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A188999 (A188999 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318175.P10261930947104046780

/-!
# A318179: Expansion of e.g.f. exp((1 - exp(-4*x))/4).

The programs for A318179, there is no canonical definition to state claims against.
-/

/-! ## A318179.P5236773220248652570

`A309386(A052905(n+2))`
-/

namespace A318179.P5236773220248652570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A052905 (n + 2)).toNat

end

end A318179.P5236773220248652570

/-! ## A318179.P310252114057491885

`A309386(A056115(n)+10)`
-/

namespace A318179.P310252114057491885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A056115 n + 10).toNat

end

end A318179.P310252114057491885

/-! ## A318179.P13981432191679088012

`A309386(eq[4, A025581(n)])`
-/

namespace A318179.P13981432191679088012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318179.P13981432191679088012

/-! ## A318179.P850392376585657859

`A309386(eq[5, A193739(n)])`
-/

namespace A318179.P850392376585657859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318179.P850392376585657859

/-! ## A318179.P13972179363328166596

`A309386(eq[9, A099375(n)])`
-/

namespace A318179.P13972179363328166596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318179.P13972179363328166596

/-! ## A318179.P8669262402963430525

`A309386(eq[16, A130321(n)])`
-/

namespace A318179.P8669262402963430525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318179.P8669262402963430525

/-! ## A318179.P1941129178750008335

`A309386(A055998(n+3)-2)`
-/

namespace A318179.P1941129178750008335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A055998 (n + 3) - 2).toNat

end

end A318179.P1941129178750008335

/-! ## A318179.P3741102387688879507

`A309386(A167499(n)+4*(n+1))`
-/

namespace A318179.P3741102387688879507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A167499 n + (4 * (n + 1) : ℤ)).toNat

end

end A318179.P3741102387688879507

/-!
# A318180: Expansion of e.g.f. exp((1 - exp(-5*x))/5).

The programs for A318180, there is no canonical definition to state claims against.
-/

/-! ## A318180.P372280331668070792

`A309386(A055999(n+3))`
-/

namespace A318180.P372280331668070792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A055999 (n + 3)).toNat

end

end A318180.P372280331668070792

/-! ## A318180.P14691017499431234563

`A309386(eq[5, A025581(n)])`
-/

namespace A318180.P14691017499431234563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318180.P14691017499431234563

/-! ## A318180.P10691313047541425596

`A309386(eq[6, A193739(n)])`
-/

namespace A318180.P10691313047541425596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318180.P10691313047541425596

/-! ## A318180.P15679903396504696241

`A309386(eq[32, A130321(n)])`
-/

namespace A318180.P15679903396504696241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318180.P15679903396504696241

/-! ## A318180.P15283179562257530123

`A309386(A000217(n+6)-6)`
-/

namespace A318180.P15283179562257530123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A000217 (n + 6) - 6).toNat

end

end A318180.P15283179562257530123

/-!
# A318181: Expansion of e.g.f. exp((1 - exp(-6*x))/6).

The programs for A318181, there is no canonical definition to state claims against.
-/

/-! ## A318181.P5627750992787953879

`A309386(eq[6, A025581(n)])`
-/

namespace A318181.P5627750992787953879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318181.P5627750992787953879

/-! ## A318181.P360711383937194855

`A309386(eq[7, A193739(n)])`
-/

namespace A318181.P360711383937194855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318181.P360711383937194855

/-! ## A318181.P3579573881813088929

`A309386(eq[64, A130321(n)])`
-/

namespace A318181.P3579573881813088929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318181.P3579573881813088929

/-! ## A318181.P2404086605212696543

`A309386(A000217(n+7)-7)`
-/

namespace A318181.P2404086605212696543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A000217 (n + 7) - 7).toNat

end

end A318181.P2404086605212696543

/-! ## A318181.P14700125566038902655

`A309386(A000124(n+7)-8)`
-/

namespace A318181.P14700125566038902655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A000124 (n + 7) - 8).toNat

end

end A318181.P14700125566038902655

/-!
# A318182: Numbers m such that A049417(A049417(m)) = k*m for some k where A049417 is the infinitary sigma function.

The programs for A318182, there is no canonical definition to state claims against.
-/

/-! ## A318182.P8813243128156061264

`record[A180409(A318175(n+1))]`
-/

namespace A318182.P8813243128156061264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180409 (A318175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318182.P8813243128156061264

/-! ## A318182.P6732542023751079295

`∩[A318175(n+1), A102823(n)]`
-/

namespace A318182.P6732542023751079295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318182.P6732542023751079295

/-! ## A318182.P14123670938864137767

`∩[A318175(n+1), A138234(n)]`
-/

namespace A318182.P14123670938864137767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318182.P14123670938864137767

/-! ## A318182.P6741857047215274720

`∩[A010432(n+1), A318175(n+1)]`
-/

namespace A318182.P6741857047215274720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318182.P6741857047215274720

/-! ## A318182.P18401843259178510681

`∩[A255724(n+1), A318175(n+1)]`
-/

namespace A318182.P18401843259178510681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318182.P18401843259178510681

/-!
# A318183: a(n) = [x^n] Sum_{k>=0} x^k/Product_{j=1..k} (1 + n*j*x).

The programs for A318183, there is no canonical definition to state claims against.
-/

/-! ## A318183.P9050600512597507983

`A309386(∑[4*n])`
-/

namespace A318183.P9050600512597507983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318183.P9050600512597507983

/-! ## A318183.P13673780979684554552

`or(A000007(n), A309386(A046092(n)))`
-/

namespace A318183.P13673780979684554552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A309386 (A046092 n).toNat)

end

end A318183.P13673780979684554552

/-! ## A318183.P16740371557529970479

`A309386(A046092(n))^A007318(∑[n])`
-/

namespace A318183.P16740371557529970479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309386 (A046092 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A318183.P16740371557529970479

/-! ## A318183.P5157555883872440127

`A007318(C(n, 2))*A309386(A046092(n))`
-/

namespace A318183.P5157555883872440127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A309386 (A046092 n).toNat

end

end A318183.P5157555883872440127

/-! ## A318183.P17501841893920365399

`A000203(gcd(n, n+1))*A309386(A046092(n))`
-/

namespace A318183.P17501841893920365399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A309386 (A046092 n).toNat

end

end A318183.P17501841893920365399

/-!
# A318184: a(n) = 2^(n * (n - 1)/2) * 3^((n - 1) * (n - 2)) * n^(n - 3).

The programs for A318184, the canonical program `A318184.P7912762068390479777` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318184 has offset 1).

The definition of A318184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318184.P7912762068390479777

`2^((n+1)*n/2)*3^(n*(n-1))*(n+1)^(n-2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318184

/-- `2^((n+1)*n/2)*3^(n*(n-1))*(n+1)^(n-2)` -/
def P7912762068390479777.Spec : Prop :=
  ∀ n, P7912762068390479777.a n = (A318184 (n + 1) : ℝ)

end A318184

/-!
# A318185: Number of totally transitive rooted trees with n nodes.

The programs for A318185, there is no canonical definition to state claims against.
-/

/-! ## A318185.P212593033334352451

`A000196(A304961(n)-A047775(n+1))`
-/

namespace A318185.P212593033334352451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A304961 n - A047775 (n + 1)).toNat

end

end A318185.P212593033334352451

/-! ## A318185.P4147951744740498929

`A003056(A004149(n)*A067086(n+1))`
-/

namespace A318185.P4147951744740498929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004149 n * A067086 (n + 1)).toNat

end

end A318185.P4147951744740498929

/-! ## A318185.P5700595239867659499

`A317492(floor(sqrt(A339159(n+1))))`
-/

namespace A318185.P5700595239867659499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (Int.sqrt (A339159 (n + 1))).toNat

end

end A318185.P5700595239867659499

/-! ## A318185.P17626399627523423772

`A000196(A192672(n)+A100982(n+1))`
-/

namespace A318185.P17626399627523423772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A192672 n + A100982 (n + 1)).toNat

end

end A318185.P17626399627523423772

/-! ## A318185.P15901105374258272037

`round(A311549(A078408(2*n))/A310213(3*n+2))`
-/

namespace A318185.P15901105374258272037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A311549 (A078408 (2 * n)).toNat : ℚ) / (A310213 (3 * n + 2) : ℚ))

end

end A318185.P15901105374258272037

/-!
# A318186: Totally transitive numbers. Matula-Goebel numbers of totally transitive rooted trees.

The programs for A318186, there is no canonical definition to state claims against.
-/

/-! ## A318186.P2496578946073167326

`∩[A290822(n+1), A318991(n+1)]`
-/

namespace A318186.P2496578946073167326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318186.P2496578946073167326

/-! ## A318186.P9352667464376716747

`∩[A290822(n+1), A316470(n+1)]`
-/

namespace A318186.P9352667464376716747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318186.P9352667464376716747

/-! ## A318186.P5505556175805734867

`∩[A290822(n+1), A356955(n+1)]`
-/

namespace A318186.P5505556175805734867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318186.P5505556175805734867

/-! ## A318186.P13705717078031972948

`∩[A290822(n+1), A330943(n+1)]`
-/

namespace A318186.P13705717078031972948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318186.P13705717078031972948

/-! ## A318186.P11983220164406130436

`∩[A290822(n+1), A344543(n+1)]`
-/

namespace A318186.P11983220164406130436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318186.P11983220164406130436

/-!
# A318187: Number of totally transitive rooted trees with n leaves.

The programs for A318187, there is no canonical definition to state claims against.
-/

/-! ## A318187.P7021161390096627203

`A279891(A149425(n))`
-/

namespace A318187.P7021161390096627203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (A149425 n).toNat

end

end A318187.P7021161390096627203

/-! ## A318187.P10995487963927722898

`A279891(A108153(n)+1)`
-/

namespace A318187.P10995487963927722898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (A108153 n + 1).toNat

end

end A318187.P10995487963927722898

/-! ## A318187.P15811383586433989968

`2*A257639(A006253(n))`
-/

namespace A318187.P15811383586433989968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257639 (A006253 n).toNat

end

end A318187.P15811383586433989968

/-! ## A318187.P16109116893234180586

`2*A202304(A165526(n))`
-/

namespace A318187.P16109116893234180586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202304 (A165526 n).toNat

end

end A318187.P16109116893234180586

/-! ## A318187.P6647126447003546409

`A279891(or(1, A108153(n)))`
-/

namespace A318187.P6647126447003546409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (Int.lor 1 (A108153 n)).toNat

end

end A318187.P6647126447003546409

/-!
# A318188: Number of nonisomorphic 2-connected circle graphs of order n.

The programs for A318188, there is no canonical definition to state claims against.
-/

/-! ## A318188.P10545003944097606707

`A281903(A298935(n)+n)`
-/

namespace A318188.P10545003944097606707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281903 (A298935 n + (n : ℤ)).toNat

end

end A318188.P10545003944097606707

/-! ## A318188.P3155226452199032036

`or(A002265(A080831(n)), A051889(n))`
-/

namespace A318188.P3155226452199032036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002265 (A080831 n).toNat) (A051889 n)

end

end A318188.P3155226452199032036

/-! ## A318188.P4080726179709676574

`or(A002265(A080831(n)), A100196(n))`
-/

namespace A318188.P4080726179709676574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002265 (A080831 n).toNat) (A100196 n)

end

end A318188.P4080726179709676574

/-!
# A318192: a(n) = U_{n}(n)/(n+1) where U_{n}(x) is a Chebyshev polynomial of the second kind.

The programs for A318192, there is no canonical definition to state claims against.
-/

/-! ## A318192.P11543261783247672527

`A323118(n)/(n+1)`
-/

namespace A318192.P11543261783247672527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323118 n : ℚ) / (n + 1 : ℚ)

end

end A318192.P11543261783247672527

/-! ## A318192.P2187396353014716994

`A228161(∑[4*n])/(n+1)`
-/

namespace A318192.P2187396353014716994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228161 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A318192.P2187396353014716994

/-! ## A318192.P15284136607373114943

`A323182(∑[4*n])/(n+1)`
-/

namespace A318192.P15284136607373114943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323182 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A318192.P15284136607373114943

/-! ## A318192.P15353506876096877648

`abs(A228161(∑[A008586(n)]))/(n+1)`
-/

namespace A318192.P15353506876096877648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A228161 (∑ j ∈ Finset.range (n + 1), f1 j).toNat| : ℚ) / (n + 1 : ℚ)

end

end A318192.P15353506876096877648

/-! ## A318192.P7233724801281331123

`A179943(A117625(n))/(n+1)`
-/

namespace A318192.P7233724801281331123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179943 (A117625 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A318192.P7233724801281331123

/-!
# A318199: a(n) is the largest integer m such that m^n <= n^prime(n).

The programs for A318199, the canonical program `A318199.P14107098161994921365` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318199 has offset 1).

The definition of A318199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318199.P14107098161994921365

`floor(A062481(n+1)^(1/(n+1)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A318199

/-- `floor(A062481(n+1)^(1/(n+1)))` -/
def P14107098161994921365.Spec : Prop :=
  ∀ n, P14107098161994921365.a n = A318199 (n + 1)

theorem P14107098161994921365.correct : P14107098161994921365.Spec := by
  intro n
  simp only [A318199, Nat.add_sub_cancel]

end A318199

/-! ## A318199.P4643735546786839582

`floor((n+1)^(A000040(n+1)/(n+1)))`
-/

namespace A318199.P4643735546786839582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A318199.P4643735546786839582

namespace A318199

/-- `floor((n+1)^(A000040(n+1)/(n+1)))` -/
def P4643735546786839582.Spec : Prop :=
  ∀ n, P4643735546786839582.a n = A318199 (n + 1)

end A318199

/-! ## A318199.P5715879851296406264

`floor((n+1)^(A008578(n+2)/(n+1)))`
-/

namespace A318199.P5715879851296406264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((A008578 (n + 2) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A318199.P5715879851296406264

namespace A318199

/-- `floor((n+1)^(A008578(n+2)/(n+1)))` -/
def P5715879851296406264.Spec : Prop :=
  ∀ n, P5715879851296406264.a n = A318199 (n + 1)

end A318199

/-! ## A318199.P1416138613319306915

`floor((n+1)^(p?[A316476(n+1)]/(n+1)))`
-/

namespace A318199.P1416138613319306915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A318199.P1416138613319306915

namespace A318199

/-- `floor((n+1)^(p?[A316476(n+1)]/(n+1)))` -/
def P1416138613319306915.Spec : Prop :=
  ∀ n, P1416138613319306915.a n = A318199 (n + 1)

end A318199

/-! ## A318199.P17011403827279750850

`floor((n+1)^(p?[A336224(n+1)]/(n+1)))`
-/

namespace A318199.P17011403827279750850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A318199.P17011403827279750850

namespace A318199

/-- `floor((n+1)^(p?[A336224(n+1)]/(n+1)))` -/
def P17011403827279750850.Spec : Prop :=
  ∀ n, P17011403827279750850.a n = A318199 (n + 1)

end A318199

/-! ## A318199.P10804700912526740328

`floor((n+1)^(p?[A057979(n)]/(n+1)))`
-/

namespace A318199.P10804700912526740328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A318199.P10804700912526740328

namespace A318199

/-- `floor((n+1)^(p?[A057979(n)]/(n+1)))` -/
def P10804700912526740328.Spec : Prop :=
  ∀ n, P10804700912526740328.a n = A318199 (n + 1)

end A318199

