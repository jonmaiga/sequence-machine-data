import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A157100: Transform of Catalan numbers whose Hankel transform satisfies the Somos-4 recurrence.

The programs for A157100, there is no canonical definition to state claims against.
-/

/-! ## A157100.P12129442817707312977

`∑[A025262(n+1)]`
-/

namespace A157100.P12129442817707312977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157100.P12129442817707312977

/-! ## A157100.P15767286786922786489

`∑[A056010(abs(1-n))]`
-/

namespace A157100.P15767286786922786489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056010 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157100.P15767286786922786489

/-! ## A157100.P16027226839433951287

`A056010(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A157100.P16027226839433951287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056010 (n - 1) + a (n - 1)

end

end A157100.P16027226839433951287

/-! ## A157100.P15456110082149311951

`2*A157003(n)-A157002(n)`
-/

namespace A157100.P15456110082149311951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157003 n - A157002 n

end

end A157100.P15456110082149311951

/-! ## A157100.P16254438026605366432

`∑[A157002(abs(1-n))+A157002(n)]`
-/

namespace A157100.P16254438026605366432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157002 |1 - (n : ℤ)|.toNat + A157002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157100.P16254438026605366432

/-! ## A157100.P616976355676965565

`A157003(n+1)+A157003(n)-A056010(n)`
-/

namespace A157100.P616976355676965565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 (n + 1) + (A157003 n - A056010 n)

end

end A157100.P616976355676965565

/-! ## A157100.P14417013650562627711

`A157003(n+1)+A157003(n)-A025262(n+2)`
-/

namespace A157100.P14417013650562627711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 (n + 1) + (A157003 n - A025262 (n + 2))

end

end A157100.P14417013650562627711

/-! ## A157100.P10223108460678276407

`∑[A056010(n)]+1-A056010(n)`
-/

namespace A157100.P10223108460678276407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A056010 n)

end

end A157100.P10223108460678276407

/-!
# A157101: A Somos-4 variant.

The programs for A157101, there is no canonical definition to state claims against.
-/

/-! ## A157101.P275684754554414784

`A051138(n+2)`
-/

namespace A157101.P275684754554414784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051138 (n + 2)

end

end A157101.P275684754554414784

/-! ## A157101.P11832417538939848283

`A006769(2*(n+2))`
-/

namespace A157101.P11832417538939848283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (2 * (n + 2))

end

end A157101.P11832417538939848283

/-! ## A157101.P13122727860801060223

`A025439(n)+A006769(A103517(n+1))`
-/

namespace A157101.P13122727860801060223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A006769 (A103517 (n + 1)).toNat

end

end A157101.P13122727860801060223

/-! ## A157101.P8582682291682683272

`A025439(n)+A006769(A051755(n+3))`
-/

namespace A157101.P8582682291682683272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A006769 (A051755 (n + 3)).toNat

end

end A157101.P8582682291682683272

/-! ## A157101.P4364163771272178023

`A028937(n+2)/A006769(A103517(n+1))`
-/

namespace A157101.P4364163771272178023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028937 (n + 2) : ℚ) / (A006769 (A103517 (n + 1)).toNat : ℚ)

end

end A157101.P4364163771272178023

/-!
# A157102: Tuple-chromatic Van der Waerden numbers.

The programs for A157102, there is no canonical definition to state claims against.
-/

/-! ## A157102.P10753797801669703796

`(n+1)*A020639(n+2)+1`
-/

namespace A157102.P10753797801669703796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (n + 2) + 1

end

end A157102.P10753797801669703796

/-! ## A157102.P3326813017178298086

`lcm(n+1, A126286(n+1))+1`
-/

namespace A157102.P3326813017178298086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A126286 (n + 1)) + 1

end

end A157102.P3326813017178298086

/-! ## A157102.P3414112052396980674

`lcm(Δ[n²]-n, A020639(Δ[n²]-n+1))+1`
-/

namespace A157102.P3414112052396980674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ) + 1).toNat) + 1

end

end A157102.P3414112052396980674

/-! ## A157102.P17592737791993652459

`(n+1)*A092028(n+3)+1`
-/

namespace A157102.P17592737791993652459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A092028 (n + 3) + 1

end

end A157102.P17592737791993652459

/-! ## A157102.P12725651997281534759

`A325961((n+1)*A020639(n+2))`
-/

namespace A157102.P12725651997281534759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325961 ((n + 1 : ℤ) * A020639 (n + 2)).toNat

end

end A157102.P12725651997281534759

/-! ## A157102.P16778575697870198665

`(n+1)*A014673((n+2)²)+1`
-/

namespace A157102.P16778575697870198665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014673 ((n + 2) ^ 2) + 1

end

end A157102.P16778575697870198665

/-! ## A157102.P16483710732514570703

`A004442((n+1)*A020639(n+2))`
-/

namespace A157102.P16483710732514570703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n + 1 : ℤ) * A020639 (n + 2)).toNat

end

end A157102.P16483710732514570703

/-! ## A157102.P3333059052193388125

`A020725((n+1)*A020639(n+2))`
-/

namespace A157102.P3333059052193388125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A020639 (n + 2)).toNat

end

end A157102.P3333059052193388125

/-!
# A157103: Array A(n, k) = Fibonacci(n+1, k), with A(n, 0) = A(n, n) = 1, read by antidiagonals.

The programs for A157103, there is no canonical definition to state claims against.
-/

/-! ## A157103.P1964480138293597153

`A073133(A056943(n)+1)`
-/

namespace A157103.P1964480138293597153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (A056943 n + 1).toNat

end

end A157103.P1964480138293597153

/-! ## A157103.P4642860075670158223

`A073133(A038722(n+1)-A003056(n))`
-/

namespace A157103.P4642860075670158223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (A038722 (n + 1) - A003056 n).toNat

end

end A157103.P4642860075670158223

/-!
# A157104: Arithmetic derivative of cubefree numbers.

The programs for A157104, the canonical program `A157104.P9758464400275007178` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157104 has offset 1).

The definition of A157104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157104.P9758464400275007178

`A003415(A004709(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A157104

/-- `A003415(A004709(n+1))` -/
def P9758464400275007178.Spec : Prop :=
  ∀ n, P9758464400275007178.a n = A157104 (n + 1)

theorem P9758464400275007178.correct : P9758464400275007178.Spec := by
  intro n
  simp only [A157104, Nat.add_sub_cancel]

end A157104

/-! ## A157104.P8806416629578059497

`A003415(record[A007948(n+1)])`
-/

namespace A157104.P8806416629578059497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157104.P8806416629578059497

namespace A157104

/-- `A003415(record[A007948(n+1)])` -/
def P8806416629578059497.Spec : Prop :=
  ∀ n, P8806416629578059497.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P4609895795792364633

`A003415(record[A050985(n+1)])`
-/

namespace A157104.P4609895795792364633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157104.P4609895795792364633

namespace A157104

/-- `A003415(record[A050985(n+1)])` -/
def P4609895795792364633.Spec : Prop :=
  ∀ n, P4609895795792364633.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P15202781339673210489

`A003415(eq[1, A050361(n+1)]+1)`
-/

namespace A157104.P15202781339673210489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157104.P15202781339673210489

namespace A157104

/-- `A003415(eq[1, A050361(n+1)]+1)` -/
def P15202781339673210489.Spec : Prop :=
  ∀ n, P15202781339673210489.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P13105887642726022387

`A003415(eq[1, A053150(n+1)]+1)`
-/

namespace A157104.P13105887642726022387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157104.P13105887642726022387

namespace A157104

/-- `A003415(eq[1, A053150(n+1)]+1)` -/
def P13105887642726022387.Spec : Prop :=
  ∀ n, P13105887642726022387.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P3821495108762732625

`A003415(eq[1, A061704(n+1)]+1)`
-/

namespace A157104.P3821495108762732625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157104.P3821495108762732625

namespace A157104

/-- `A003415(eq[1, A061704(n+1)]+1)` -/
def P3821495108762732625.Spec : Prop :=
  ∀ n, P3821495108762732625.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P919543677688214101

`A003415(eq[1, A062378(n+1)]+1)`
-/

namespace A157104.P919543677688214101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157104.P919543677688214101

namespace A157104

/-- `A003415(eq[1, A062378(n+1)]+1)` -/
def P919543677688214101.Spec : Prop :=
  ∀ n, P919543677688214101.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P12321426445185896218

`A003415(eq[1, A072911(n+1)]+1)`
-/

namespace A157104.P12321426445185896218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157104.P12321426445185896218

namespace A157104

/-- `A003415(eq[1, A072911(n+1)]+1)` -/
def P12321426445185896218.Spec : Prop :=
  ∀ n, P12321426445185896218.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P14800642474978186290

`A003415(eq[1, A113061(n+1)]+1)`
-/

namespace A157104.P14800642474978186290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157104.P14800642474978186290

namespace A157104

/-- `A003415(eq[1, A113061(n+1)]+1)` -/
def P14800642474978186290.Spec : Prop :=
  ∀ n, P14800642474978186290.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P5704044706131752347

`A003415(eq[A000188(n+1), A000190(n+1)]+1)`
-/

namespace A157104.P5704044706131752347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A157104.P5704044706131752347

namespace A157104

/-- `A003415(eq[A000188(n+1), A000190(n+1)]+1)` -/
def P5704044706131752347.Spec : Prop :=
  ∀ n, P5704044706131752347.a n = A157104 (n + 1)

end A157104

/-! ## A157104.P13799052021899407632

`A003415(eq[A000188(n+1), A003557(n+1)]+1)`
-/

namespace A157104.P13799052021899407632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A157104.P13799052021899407632

namespace A157104

/-- `A003415(eq[A000188(n+1), A003557(n+1)]+1)` -/
def P13799052021899407632.Spec : Prop :=
  ∀ n, P13799052021899407632.a n = A157104 (n + 1)

end A157104

/-!
# A157105: a(n) = 137842*n - 30996.

The programs for A157105, there is no canonical definition to state claims against.
-/

/-! ## A157105.P14380914600436099480

`round(A157106(n+1)/sqrt(A157010(n+1)))`
-/

namespace A157105.P14380914600436099480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157106 (n + 1) : ℝ) / Real.sqrt (A157010 (n + 1) : ℝ))

end

end A157105.P14380914600436099480

/-!
# A157106: a(n) = 5651522*n^2 - 2541672*n + 285769.

The programs for A157106, there is no canonical definition to state claims against.
-/

/-! ## A157106.P11192701387091421290

`round(sqrt(A157010(n+1))*A157105(n+1))`
-/

namespace A157106.P11192701387091421290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157010 (n + 1) : ℝ) * (A157105 (n + 1) : ℝ))

end

end A157106.P11192701387091421290

/-! ## A157106.P2805265554371203382

`A058331(A157116(2*(n+1)))`
-/

namespace A157106.P2805265554371203382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A157116 (2 * (n + 1))).toNat

end

end A157106.P2805265554371203382

/-!
# A157107: Indices of 4's in A090822.

The programs for A157107, there is no canonical definition to state claims against.
-/

/-! ## A157107.P17144405687504254072

`∑[A157673(A163511(3*n))]`
-/

namespace A157107.P17144405687504254072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157673 (A163511 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157107.P17144405687504254072

/-!
# A157108: Triangle, read by rows, T(n, k) = binomial(n*binomial(n, k), k).

The programs for A157108, the canonical program `A157108.P6977766346991396534` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157108 has offset 0).

The definition of A157108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157108.P6977766346991396534

`C(A134400(n), A002262(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A157108

/-- `C(A134400(n), A002262(n))` -/
def P6977766346991396534.Spec : Prop :=
  ∀ n, (P6977766346991396534.a n : ℤ) = A157108 n

theorem P6977766346991396534.correct : P6977766346991396534.Spec := by
  intro n
  simp only [A157108]

end A157108

/-! ## A157108.P16360456142432029131

`C(A134400(n), A002260(n+1)-1)`
-/

namespace A157108.P16360456142432029131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134400 n).toNat (A002260 (n + 1) - 1).toNat

end

end A157108.P16360456142432029131

namespace A157108

/-- `C(A134400(n), A002260(n+1)-1)` -/
def P16360456142432029131.Spec : Prop :=
  ∀ n, (P16360456142432029131.a n : ℤ) = A157108 n

end A157108

/-! ## A157108.P8894228871794135954

`C(A134400(n), A002260(A028310(n)))`
-/

namespace A157108.P8894228871794135954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134400 n).toNat (A002260 (A028310 n).toNat).toNat

end

end A157108.P8894228871794135954

namespace A157108

/-- `C(A134400(n), A002260(A028310(n)))` -/
def P8894228871794135954.Spec : Prop :=
  ∀ n, (P8894228871794135954.a n : ℤ) = A157108 n

end A157108

/-! ## A157108.P12767900791389487543

`C(A134400(n), A025581(A061579(n)))`
-/

namespace A157108.P12767900791389487543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134400 n).toNat (A025581 (A061579 n).toNat).toNat

end

end A157108.P12767900791389487543

namespace A157108

/-- `C(A134400(n), A025581(A061579(n)))` -/
def P12767900791389487543.Spec : Prop :=
  ∀ n, (P12767900791389487543.a n : ℤ) = A157108 n

end A157108

/-! ## A157108.P4844485443009511197

`C(A003056(n)*A007318(n), A002262(n))`
-/

namespace A157108.P4844485443009511197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n * A007318 n).toNat (A002262 n).toNat

end

end A157108.P4844485443009511197

namespace A157108

/-- `C(A003056(n)*A007318(n), A002262(n))` -/
def P4844485443009511197.Spec : Prop :=
  ∀ n, (P4844485443009511197.a n : ℤ) = A157108 n

end A157108

/-!
# A157109: Triangle, read by rows, T(n, k) = binomial(n*binomial(n, floor((n-k)/2)), k).

The programs for A157109, there is no canonical definition to state claims against.
-/

/-! ## A157109.P2470185418774331119

`A026692(n+1)*A136220(A331567(n))`
-/

namespace A157109.P2470185418774331119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (n + 1) * A136220 (A331567 n).toNat

end

end A157109.P2470185418774331119

/-!
# A157110: a(n) = 1681*n^2 - 2606*n + 1010.

The programs for A157110, the canonical program `A157110.P13004483062544673375` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157110 has offset 1).

The definition of A157110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157110.P5993645752840062237

`round((A157112(n+1)/A157111(n+1))²)`
-/

namespace A157110.P5993645752840062237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157112 (n + 1) : ℚ) / (A157111 (n + 1) : ℚ)) ^ 2)

end

end A157110.P5993645752840062237

namespace A157110

/-- `round((A157112(n+1)/A157111(n+1))²)` -/
def P5993645752840062237.Spec : Prop :=
  ∀ n, P5993645752840062237.a n = A157110 (n + 1)

end A157110

/-! ## A157110.P13004483062544673375

`A017209(2*n)+A155098(2*n+1)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157110

/-- `A017209(2*n)+A155098(2*n+1)²` -/
def P13004483062544673375.Spec : Prop :=
  ∀ n, P13004483062544673375.a n = A157110 (n + 1)

theorem P13004483062544673375.correct : P13004483062544673375.Spec := by
  intro n
  simp only [A157110, Nat.add_sub_cancel]

end A157110

/-! ## A157110.P10189479584690555495

`A017378(4*n)+A017185(n)²`
-/

namespace A157110.P10189479584690555495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 (4 * n) + A017185 n ^ 2

end

end A157110.P10189479584690555495

namespace A157110

/-- `A017378(4*n)+A017185(n)²` -/
def P10189479584690555495.Spec : Prop :=
  ∀ n, P10189479584690555495.a n = A157110 (n + 1)

end A157110

/-! ## A157110.P10530925932286193856

`A017186(n)+A017377(4*n)²`
-/

namespace A157110.P10530925932286193856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n + A017377 (4 * n) ^ 2

end

end A157110.P10530925932286193856

namespace A157110

/-- `A017186(n)+A017377(4*n)²` -/
def P10530925932286193856.Spec : Prop :=
  ∀ n, P10530925932286193856.a n = A157110 (n + 1)

end A157110

/-! ## A157110.P7201236930432584188

`A017377(4*n)²+A017185(n)²`
-/

namespace A157110.P7201236930432584188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (4 * n) ^ 2 + A017185 n ^ 2

end

end A157110.P7201236930432584188

namespace A157110

/-- `A017377(4*n)²+A017185(n)²` -/
def P7201236930432584188.Spec : Prop :=
  ∀ n, P7201236930432584188.a n = A157110 (n + 1)

end A157110

/-! ## A157110.P14016164701387224575

`A016789(3*n)²+A004768(5*n)²`
-/

namespace A157110.P14016164701387224575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (3 * n) ^ 2 + A004768 (5 * n) ^ 2

end

end A157110.P14016164701387224575

namespace A157110

/-- `A016789(3*n)²+A004768(5*n)²` -/
def P14016164701387224575.Spec : Prop :=
  ∀ n, P14016164701387224575.a n = A157110 (n + 1)

end A157110

/-! ## A157110.P13125309392549563495

`A017186(n)+A016898(A017077(n))`
-/

namespace A157110.P13125309392549563495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n + A016898 (A017077 n).toNat

end

end A157110.P13125309392549563495

namespace A157110

/-- `A017186(n)+A016898(A017077(n))` -/
def P13125309392549563495.Spec : Prop :=
  ∀ n, P13125309392549563495.a n = A157110 (n + 1)

end A157110

/-!
# A157111: a(n) = 137842*n - 106846.

The programs for A157111, there is no canonical definition to state claims against.
-/

/-! ## A157111.P11749788690131534277

`round(A157112(n+1)/sqrt(A157110(n+1)))`
-/

namespace A157111.P11749788690131534277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157112 (n + 1) : ℝ) / Real.sqrt (A157110 (n + 1) : ℝ))

end

end A157111.P11749788690131534277

/-!
# A157112: a(n) = 5651522*n^2 - 8761372*n + 3395619.

The programs for A157112, there is no canonical definition to state claims against.
-/

/-! ## A157112.P5333026492398846596

`round(sqrt(A157110(n+1))*A157111(n+1))`
-/

namespace A157112.P5333026492398846596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157110 (n + 1) : ℝ) * (A157111 (n + 1) : ℝ))

end

end A157112.P5333026492398846596

/-! ## A157112.P10909749623169210529

`A058331(A157116(2*n+1))`
-/

namespace A157112.P10909749623169210529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A157116 (2 * n + 1)).toNat

end

end A157112.P10909749623169210529

/-!
# A157114: Triangle T(n, k) = binomial(n*k, n-k) + binomial(n*(n-k), k), read by rows.

The programs for A157114, there is no canonical definition to state claims against.
-/

/-! ## A157114.P14014305451508996613

`A055652(n)*A081604(A174410(n))`
-/

namespace A157114.P14014305451508996613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n * A081604 (A174410 n).toNat

end

end A157114.P14014305451508996613

/-! ## A157114.P16649174159791860045

`A003056(A055652(n)²*A171229(n))`
-/

namespace A157114.P16649174159791860045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A055652 n ^ 2 * A171229 n).toNat

end

end A157114.P16649174159791860045

/-! ## A157114.P10112124399481048609

`A003056(lcm(A055652(n)², A171229(n)))`
-/

namespace A157114.P10112124399481048609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm (A055652 n ^ 2) (A171229 n))

end

end A157114.P10112124399481048609

/-! ## A157114.P16341881305267787207

`A003056(A055652(n)*A171229(n)*A055652(n))`
-/

namespace A157114.P16341881305267787207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A055652 n * A171229 n * A055652 n).toNat

end

end A157114.P16341881305267787207

/-! ## A157114.P4045124552818694099

`A055652(n)*A086617(A055645(n))`
-/

namespace A157114.P4045124552818694099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n * A086617 (A055645 n).toNat

end

end A157114.P4045124552818694099

/-!
# A157116: Numbers k such that k^2 + 1 == 0 (mod 41^2).

The programs for A157116, the canonical program `A157116.P3367610532658477289` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157116 has offset 1).

The definition of A157116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157116.P3367610532658477289

`A155098(A005408(A155098(n+1))-A000035(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157116

/-- `A155098(A005408(A155098(n+1))-A000035(n))` -/
def P3367610532658477289.Spec : Prop :=
  ∀ n, P3367610532658477289.a n = A157116 (n + 1)

theorem P3367610532658477289.correct : P3367610532658477289.Spec := by
  intro n
  simp only [A157116, Nat.add_sub_cancel]

end A157116

/-! ## A157116.P2252900921356636534

`A155098(A103517(A155098(n+1))-A000034(n))`
-/

namespace A157116.P2252900921356636534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (A103517 (A155098 (n + 1)).toNat - A000034 n).toNat

end

end A157116.P2252900921356636534

namespace A157116

/-- `A155098(A103517(A155098(n+1))-A000034(n))` -/
def P2252900921356636534.Spec : Prop :=
  ∀ n, P2252900921356636534.a n = A157116 (n + 1)

end A157116

/-! ## A157116.P9263427222986114855

`A155097(n+1)+A008594(A206526(n+1))`
-/

namespace A157116.P9263427222986114855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + A008594 (A206526 (n + 1)).toNat

end

end A157116.P9263427222986114855

namespace A157116

/-- `A155097(n+1)+A008594(A206526(n+1))` -/
def P9263427222986114855.Spec : Prop :=
  ∀ n, P9263427222986114855.a n = A157116 (n + 1)

end A157116

/-! ## A157116.P7824407868516283758

`A155097(n+1)+A008594(Δ[A195047(3*n)-(2*n)²])`
-/

namespace A157116.P7824407868516283758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195047 (3 * n) - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + A008594 (f1 (n + 1) - f1 n).toNat

end

end A157116.P7824407868516283758

namespace A157116

/-- `A155097(n+1)+A008594(Δ[A195047(3*n)-(2*n)²])` -/
def P7824407868516283758.Spec : Prop :=
  ∀ n, P7824407868516283758.a n = A157116 (n + 1)

end A157116

/-! ## A157116.P10566527487448847260

`A155097(n+1)+A008594(A155097(n+1)+A053742(n))`
-/

namespace A157116.P10566527487448847260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + A008594 (A155097 (n + 1) + A053742 n).toNat

end

end A157116.P10566527487448847260

namespace A157116

/-- `A155097(n+1)+A008594(A155097(n+1)+A053742(n))` -/
def P10566527487448847260.Spec : Prop :=
  ∀ n, P10566527487448847260.a n = A157116 (n + 1)

end A157116

/-!
# A157117: Triangle T(n, k) = f(n, k) + f(n, n-k), where f(n, k) = A008292(n*k + 1, n-k) if k <= n otherwise A008292(n*(n-k), k), read by rows.

The programs for A157117, there is no canonical definition to state claims against.
-/

/-! ## A157117.P10201735558973261900

`A323902(xor(5, A150569(n)))`
-/

namespace A157117.P10201735558973261900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (Int.xor 5 (A150569 n)).toNat

end

end A157117.P10201735558973261900

/-! ## A157117.P6871310274384771038

`A161492(xor(1, A084750(n+1)))`
-/

namespace A157117.P6871310274384771038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161492 (Int.xor 1 (A084750 (n + 1))).toNat

end

end A157117.P6871310274384771038

/-! ## A157117.P7490644705748587230

`A066657(or(4, A108235(n+1)))`
-/

namespace A157117.P7490644705748587230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (Int.lor 4 (A108235 (n + 1))).toNat

end

end A157117.P7490644705748587230

/-! ## A157117.P10330551788554547877

`A234300(A376347(n))+A121391(n)`
-/

namespace A157117.P10330551788554547877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A376347 n).toNat + A121391 n

end

end A157117.P10330551788554547877

/-!
# A157118: Triangle T(n, k) = f(n, k) + f(n, n-k), where f(n, k) = A001263(n*k+1, n-k+1) if k <= n otherwise A001263(n*(n-k)+1, k+1) and T(1, k) = 1, read by rows.

The programs for A157118, there is no canonical definition to state claims against.
-/

/-! ## A157118.P3121330448094500673

`A093717(A119307(n)+A010894(n))`
-/

namespace A157118.P3121330448094500673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093717 (A119307 n + A010894 (n + 21)).toNat

end

end A157118.P3121330448094500673

/-! ## A157118.P14796373393602654279

`A112316(n)+A093717(A119307(n))`
-/

namespace A157118.P14796373393602654279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A093717 (A119307 n).toNat

end

end A157118.P14796373393602654279

/-! ## A157118.P7904563943941320112

`A107817(A157221(n))-A057427(n)`
-/

namespace A157118.P7904563943941320112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107817 (A157221 n).toNat - A057427 n

end

end A157118.P7904563943941320112

/-! ## A157118.P3096595410464449975

`lcm(A055652(n), A093717(A119307(n)))`
-/

namespace A157118.P3096595410464449975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055652 n) (A093717 (A119307 n).toNat)

end

end A157118.P3096595410464449975

/-!
# A157119: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+103)^2 = y^2.

The programs for A157119, the canonical program `A157119.P18206226386205261388` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157119 has offset 1).

The definition of A157119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157119.P18206226386205261388

`6*a(n-3)-a(n-6)+206` with `a(0)=0, a(1)=84, a(2)=105, a(3)=309, a(4)=765, a(5)=884`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157119

/-- `6*a(n-3)-a(n-6)+206` -/
def P18206226386205261388.Spec : Prop :=
  ∀ n, P18206226386205261388.a n = A157119 (n + 1)

theorem P18206226386205261388.correct : P18206226386205261388.Spec := by
  intro n
  simp only [A157119, Nat.add_sub_cancel]

end A157119

/-! ## A157119.P9658823455790233185

`A129640(n+1)+A130610(n+1)-A101152(n+1)`
-/

namespace A157119.P9658823455790233185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129640 (n + 1) + (A130610 (n + 1) - A101152 (n + 1))

end

end A157119.P9658823455790233185

namespace A157119

/-- `A129640(n+1)+A130610(n+1)-A101152(n+1)` -/
def P9658823455790233185.Spec : Prop :=
  ∀ n, P9658823455790233185.a n = A157119 (n + 1)

end A157119

/-!
# A157122: Decimal expansion of 11 - 3*sqrt(2).

The programs for A157122, there is no canonical definition to state claims against.
-/

/-! ## A157122.P5758662201973516830

`9-A003114(A251550(a(n-1)+1))*A157121(n+1)` with `a(0)=6`
-/

namespace A157122.P5758662201973516830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  9 - A003114 (A251550 (a (n - 1) + 1).toNat).toNat * A157121 (n + 1 + 2)

end

end A157122.P5758662201973516830

/-!
# A157124: a(1)=1; a(n) = floor((n-1)*Sum_{k=1..n-1} 1/a(k)).

The programs for A157124, there is no canonical definition to state claims against.
-/

/-! ## A157124.P17321511191083201836

`A263846(A237616(n)+1)`
-/

namespace A157124.P17321511191083201836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A237616 n + 1).toNat

end

end A157124.P17321511191083201836

/-! ## A157124.P5128062094696193287

`A092535(n)+A000523(A026786(n))`
-/

namespace A157124.P5128062094696193287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n + A000523 (A026786 n).toNat

end

end A157124.P5128062094696193287

/-! ## A157124.P15782986854139949163

`A057078(A309908(n))+A033627(n+1)`
-/

namespace A157124.P15782986854139949163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A309908 n).toNat + A033627 (n + 1)

end

end A157124.P15782986854139949163

/-! ## A157124.P7267923238952798389

`A031435(n+1)-A133008(A031423(n+1))`
-/

namespace A157124.P7267923238952798389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031435 (n + 1) - A133008 (A031423 (n + 1)).toNat

end

end A157124.P7267923238952798389

/-! ## A157124.P1177564561919804380

`A008574(n)-A029837(A092269(2*n+1))`
-/

namespace A157124.P1177564561919804380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A029837 (A092269 (2 * n + 1)).toNat

end

end A157124.P1177564561919804380

/-!
# A157125: A transform of the Catalan numbers.

The programs for A157125, there is no canonical definition to state claims against.
-/

/-! ## A157125.P9388068120463349861

`Δ[A157127(abs(1-n))]`
-/

namespace A157125.P9388068120463349861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157127 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157125.P9388068120463349861

/-! ## A157125.P3242233285130370014

`A157127(n)-A157127(abs(1-n))`
-/

namespace A157125.P3242233285130370014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157127 n - A157127 |1 - (n : ℤ)|.toNat

end

end A157125.P3242233285130370014

/-!
# A157127: A transform of the Catalan numbers with a simple Hankel transform.

The programs for A157127, there is no canonical definition to state claims against.
-/

/-! ## A157127.P10513309876568026878

`∑[A157125(n)]`
-/

namespace A157127.P10513309876568026878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157127.P10513309876568026878

/-! ## A157127.P3838032861140581189

`A157125(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A157127.P3838032861140581189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157125 n + a (A023443 n).toNat

end

end A157127.P3838032861140581189

/-! ## A157127.P9261964508300207472

`A157125(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A157127.P9261964508300207472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157125 n + a (A028310 n - 1).toNat

end

end A157127.P9261964508300207472

/-! ## A157127.P11666936032143902391

`A157125(n)+a(n-A001076(((-1)^n)²))` with `a(0)=1`
-/

namespace A157127.P11666936032143902391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157125 n + a ((n : ℤ) - A001076 (((-1) ^ n) ^ 2).toNat).toNat

end

end A157127.P11666936032143902391

/-! ## A157127.P4480600787481961402

`A157125(n)+a(A025480(A004275(n)))` with `a(0)=1`
-/

namespace A157127.P4480600787481961402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157125 n + a (A025480 (A004275 n).toNat).toNat

end

end A157127.P4480600787481961402

/-!
# A157128: Expansion of (1 - x - x^2 + x^3 - x^5) / ((1 + x)^2*(1 - x + x^2)^2).

The programs for A157128, the canonical program `A157128.P3121123341214688159` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157128 has offset 0).

The definition of A157128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157128.P11038323768940358035

`∑[xor(A128615(n), A163810(n))]`
-/

namespace A157128.P11038323768940358035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A128615 n) (A163810 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157128.P11038323768940358035

namespace A157128

/-- `∑[xor(A128615(n), A163810(n))]` -/
def P11038323768940358035.Spec : Prop :=
  ∀ n, P11038323768940358035.a n = A157128 n

end A157128

/-! ## A157128.P3121123341214688159

`A099470(n+1)/Δ[abs(A099471(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157128

/-- `A099470(n+1)/Δ[abs(A099471(n))]` -/
def P3121123341214688159.Spec : Prop :=
  ∀ n, P3121123341214688159.a n = (A157128 n : ℚ)

end A157128

/-! ## A157128.P16902496760093244316

`Δ[A097140(A171088(n)+1)]`
-/

namespace A157128.P16902496760093244316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A171088 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157128.P16902496760093244316

namespace A157128

/-- `Δ[A097140(A171088(n)+1)]` -/
def P16902496760093244316.Spec : Prop :=
  ∀ n, P16902496760093244316.a n = A157128 n

end A157128

/-! ## A157128.P14625386339434483767

`Δ[A087509(n+1)]/a(n-1)` with `a(0)=1`
-/

namespace A157128.P14625386339434483767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) - f1 n : ℚ) / a (n - 1)

end

end A157128.P14625386339434483767

namespace A157128

/-- `Δ[A087509(n+1)]/a(n-1)` -/
def P14625386339434483767.Spec : Prop :=
  ∀ n, P14625386339434483767.a n = (A157128 n : ℚ)

end A157128

/-! ## A157128.P7003754247040635773

`(A076118(n+3)-A076118(n+5))%A076118(n+4)`
-/

namespace A157128.P7003754247040635773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076118 (n + 3) - A076118 (n + 5)) (A076118 (n + 4))

end

end A157128.P7003754247040635773

namespace A157128

/-- `(A076118(n+3)-A076118(n+5))%A076118(n+4)` -/
def P7003754247040635773.Spec : Prop :=
  ∀ n, P7003754247040635773.a n = A157128 n

end A157128

/-! ## A157128.P16089285214054411282

`(A099470(n+1)+A099470(n+6))%A099470(n+4)`
-/

namespace A157128.P16089285214054411282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099470 (n + 1) + A099470 (n + 6)) (A099470 (n + 4))

end

end A157128.P16089285214054411282

namespace A157128

/-- `(A099470(n+1)+A099470(n+6))%A099470(n+4)` -/
def P16089285214054411282.Spec : Prop :=
  ∀ n, P16089285214054411282.a n = A157128 n

end A157128

/-! ## A157128.P6720231102261613522

`A097140(A008620(n+1))-A097140(A008620(n+8))`
-/

namespace A157128.P6720231102261613522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A008620 (n + 1)).toNat - A097140 (A008620 (n + 8)).toNat

end

end A157128.P6720231102261613522

namespace A157128

/-- `A097140(A008620(n+1))-A097140(A008620(n+8))` -/
def P6720231102261613522.Spec : Prop :=
  ∀ n, P6720231102261613522.a n = A157128 n

end A157128

/-! ## A157128.P6878477822955416094

`A112466(A167614(A002264(n+4))+A002264(n+2))`
-/

namespace A157128.P6878477822955416094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112466 (A167614 (A002264 (n + 4)).toNat + A002264 (n + 2)).toNat

end

end A157128.P6878477822955416094

namespace A157128

/-- `A112466(A167614(A002264(n+4))+A002264(n+2))` -/
def P6878477822955416094.Spec : Prop :=
  ∀ n, P6878477822955416094.a n = A157128 n

end A157128

/-! ## A157128.P719372484293788018

`A185331(A000124(Δ[A007980(n)]))`
-/

namespace A157128.P719372484293788018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (A000124 (f1 (n + 1) - f1 n).toNat).toNat

end

end A157128.P719372484293788018

namespace A157128

/-- `A185331(A000124(Δ[A007980(n)]))` -/
def P719372484293788018.Spec : Prop :=
  ∀ n, P719372484293788018.a n = A157128 n

end A157128

/-!
# A157129: An analog of the Kolakoski sequence A000002, only now a(n) = (length of n-th run divided by 2) using 1 and 2 and starting with 1,1.

The programs for A157129, the canonical program `A157129.P1601382808116694342` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157129 has offset 1).

The definition of A157129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157129.P1601382808116694342

`A071928(n+1)/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A157129

/-- `A071928(n+1)/2` -/
def P1601382808116694342.Spec : Prop :=
  ∀ n, P1601382808116694342.a n = (A157129 (n + 1) : ℚ)

end A157129

/-! ## A157129.P6417894361129579808

`log2(A071928(n+1))`
-/

namespace A157129.P6417894361129579808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A071928 (n + 1) : ℝ)

end

end A157129.P6417894361129579808

namespace A157129

/-- `log2(A071928(n+1))` -/
def P6417894361129579808.Spec : Prop :=
  ∀ n, P6417894361129579808.a n = (A157129 (n + 1) : ℝ)

end A157129

/-! ## A157129.P12130834278448188875

`val(A071928(or(1, n)+1), 2)`
-/

namespace A157129.P12130834278448188875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071928 (Nat.lor 1 n + 1)).toNat 2

end

end A157129.P12130834278448188875

namespace A157129

/-- `val(A071928(or(1, n)+1), 2)` -/
def P12130834278448188875.Spec : Prop :=
  ∀ n, (P12130834278448188875.a n : ℤ) = A157129 (n + 1)

end A157129

/-! ## A157129.P17775958347173446464

`val(A071928(or(n, xor(1, n))), 2)`
-/

namespace A157129.P17775958347173446464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071928 (Nat.lor n (Nat.xor 1 n))).toNat 2

end

end A157129.P17775958347173446464

namespace A157129

/-- `val(A071928(or(n, xor(1, n))), 2)` -/
def P17775958347173446464.Spec : Prop :=
  ∀ n, (P17775958347173446464.a n : ℤ) = A157129 (n + 1)

end A157129

/-! ## A157129.P16359992258206754837

`A284775(∑[char[2*n]])+1`
-/

namespace A157129.P16359992258206754837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A157129.P16359992258206754837

namespace A157129

/-- `A284775(∑[char[2*n]])+1` -/
def P16359992258206754837.Spec : Prop :=
  ∀ n, P16359992258206754837.a n = A157129 (n + 1)

end A157129

/-! ## A157129.P17641653438378858232

`floor(sqrt(A071928(ϕ²-(ϕ-n))))`
-/

namespace A157129.P17641653438378858232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A071928 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A157129.P17641653438378858232

namespace A157129

/-- `floor(sqrt(A071928(ϕ²-(ϕ-n))))` -/
def P17641653438378858232.Spec : Prop :=
  ∀ n, P17641653438378858232.a n = A157129 (n + 1)

end A157129

/-! ## A157129.P4412415460096997827

`val(A071928(or(n, a(n-1))), 2)` with `a(0)=1`
-/

namespace A157129.P4412415460096997827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (A071928 (Nat.lor n (a (n - 1)))).toNat 2

end

end A157129.P4412415460096997827

namespace A157129

/-- `val(A071928(or(n, a(n-1))), 2)` -/
def P4412415460096997827.Spec : Prop :=
  ∀ n, (P4412415460096997827.a n : ℤ) = A157129 (n + 1)

end A157129

/-! ## A157129.P15382874520117298463

`A001222(A071928(n+1)+C(n, n²))`
-/

namespace A157129.P15382874520117298463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071928 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A157129.P15382874520117298463

namespace A157129

/-- `A001222(A071928(n+1)+C(n, n²))` -/
def P15382874520117298463.Spec : Prop :=
  ∀ n, P15382874520117298463.a n = A157129 (n + 1)

end A157129

/-! ## A157129.P16970709880514996705

`Δ[comp[A284795(n+1)]]`
-/

namespace A157129.P16970709880514996705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284795 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157129.P16970709880514996705

namespace A157129

/-- `Δ[comp[A284795(n+1)]]` -/
def P16970709880514996705.Spec : Prop :=
  ∀ n, P16970709880514996705.a n = A157129 (n + 1)

end A157129

/-!
# A157130: Partial sums of A128201.

The programs for A157130, the canonical program `A157130.P15334453636058034094` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157130 has offset 1).

The definition of A157130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157130.P17348306408154323304

`∑[comp[lcm(2, round(sqrt(n)+n))]]`
-/

namespace A157130.P17348306408154323304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ)))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157130.P17348306408154323304

namespace A157130

/-- `∑[comp[lcm(2, round(sqrt(n)+n))]]` -/
def P17348306408154323304.Spec : Prop :=
  ∀ n, (P17348306408154323304.a n : ℤ) = A157130 (n + 1)

end A157130

/-! ## A157130.P11289880686271577477

`∑[∪[(n+1)², Δ[n²]]]`
-/

namespace A157130.P11289880686271577477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157130.P11289880686271577477

namespace A157130

/-- `∑[∪[(n+1)², Δ[n²]]]` -/
def P11289880686271577477.Spec : Prop :=
  ∀ n, (P11289880686271577477.a n : ℤ) = A157130 (n + 1)

end A157130

/-! ## A157130.P7719639083846667348

`∑[comp[2*comp[2*(n+1)²]]]`
-/

namespace A157130.P7719639083846667348
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157130.P7719639083846667348

namespace A157130

/-- `∑[comp[2*comp[2*(n+1)²]]]` -/
def P7719639083846667348.Spec : Prop :=
  ∀ n, (P7719639083846667348.a n : ℤ) = A157130 (n + 1)

end A157130

/-! ## A157130.P2340945553606211271

`∑[∪[2*n, n*(n+2)]]+n+1`
-/

namespace A157130.P2340945553606211271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A157130.P2340945553606211271

namespace A157130

/-- `∑[∪[2*n, n*(n+2)]]+n+1` -/
def P2340945553606211271.Spec : Prop :=
  ∀ n, (P2340945553606211271.a n : ℤ) = A157130 (n + 1)

end A157130

/-! ## A157130.P7616565820622873300

`∪[comp[2*n], (n+1)²]+a(n-1)` with `a(0)=1`
-/

namespace A157130.P7616565820622873300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n + a (n - 1)

end

end A157130.P7616565820622873300

namespace A157130

/-- `∪[comp[2*n], (n+1)²]+a(n-1)` -/
def P7616565820622873300.Spec : Prop :=
  ∀ n, (P7616565820622873300.a n : ℤ) = A157130 (n + 1)

end A157130

/-! ## A157130.P2895231183535600702

`comp[2*comp[2*(n+1)²]]+a(n-1)` with `a(0)=1`
-/

namespace A157130.P2895231183535600702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 1)

end

end A157130.P2895231183535600702

namespace A157130

/-- `comp[2*comp[2*(n+1)²]]+a(n-1)` -/
def P2895231183535600702.Spec : Prop :=
  ∀ n, (P2895231183535600702.a n : ℤ) = A157130 (n + 1)

end A157130

/-! ## A157130.P12725768030793563328

`root(∑[A128201(n+1)], 2)²`
-/

namespace A157130.P12725768030793563328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A157130.P12725768030793563328

namespace A157130

/-- `root(∑[A128201(n+1)], 2)²` -/
def P12725768030793563328.Spec : Prop :=
  ∀ n, P12725768030793563328.a n = (A157130 (n + 1) : ℝ)

end A157130

/-! ## A157130.P15334453636058034094

`or(∑[A128201(n+1)], A000007(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157130

/-- `or(∑[A128201(n+1)], A000007(n))` -/
def P15334453636058034094.Spec : Prop :=
  ∀ n, P15334453636058034094.a n = A157130 (n + 1)

theorem P15334453636058034094.correct : P15334453636058034094.Spec := by
  intro n
  simp only [A157130, Nat.add_sub_cancel]

end A157130

/-! ## A157130.P17964488866517508975

`A000027(∑[A128201(n+1)])`
-/

namespace A157130.P17964488866517508975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A157130.P17964488866517508975

namespace A157130

/-- `A000027(∑[A128201(n+1)])` -/
def P17964488866517508975.Spec : Prop :=
  ∀ n, P17964488866517508975.a n = A157130 (n + 1)

end A157130

/-! ## A157130.P6173248169337350773

`∑{d}[∑[A128201(n+1)], A000010(#)]`
-/

namespace A157130.P6173248169337350773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A157130.P6173248169337350773

namespace A157130

/-- `∑{d}[∑[A128201(n+1)], A000010(#)]` -/
def P6173248169337350773.Spec : Prop :=
  ∀ n, P6173248169337350773.a n = A157130 (n + 1)

end A157130

/-!
# A157131: The first primes in centuries with three primes.

The programs for A157131, there is no canonical definition to state claims against.
-/

/-! ## A157131.P9565662967400674382

`A077501(A186395(n+1))`
-/

namespace A157131.P9565662967400674382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077501 (A186395 (n + 1)).toNat

end

end A157131.P9565662967400674382

/-!
# A157132: Factorial of primes divided by prime numbers' respective places in the sequence of primes.

The programs for A157132, there is no canonical definition to state claims against.
-/

/-! ## A157132.P12344829665557909494

`p?[comp[n²]]!/(n+1)`
-/

namespace A157132.P12344829665557909494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / (n + 1 : ℚ)

end

end A157132.P12344829665557909494

/-! ## A157132.P10681924271798887597

`eq[1, ∑{e}[n, #]]!/(n+1)`
-/

namespace A157132.P10681924271798887597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / (n + 1 : ℚ)

end

end A157132.P10681924271798887597

/-! ## A157132.P2206879046167007442

`record[∑{p}[n+2, #!]]/(n+1)`
-/

namespace A157132.P2206879046167007442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A157132.P2206879046167007442

/-! ## A157132.P692365559944355732

`record[∏{p}[n+2, #!]]/(n+1)`
-/

namespace A157132.P692365559944355732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A157132.P692365559944355732

/-! ## A157132.P15518861514048230922

`eq[n+1, ∑{d}[n, #]]!/(n+1)`
-/

namespace A157132.P15518861514048230922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / (n + 1 : ℚ)

end

end A157132.P15518861514048230922

/-!
# A157133: G.f. satisfies: A(x) = Sum_{n>=0} x^(n(n+1)/2) * A(x)^n.

The programs for A157133, there is no canonical definition to state claims against.
-/

/-! ## A157133.P14558737935145764379

`A194291(A361360(n))`
-/

namespace A157133.P14558737935145764379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194291 (A361360 n).toNat

end

end A157133.P14558737935145764379

/-! ## A157133.P3346231772633702925

`A177849(A048469(n)+8)`
-/

namespace A157133.P3346231772633702925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A048469 n + 8).toNat

end

end A157133.P3346231772633702925

/-! ## A157133.P13924914117181811433

`A367462(n)-A102683(A213092(n))`
-/

namespace A157133.P13924914117181811433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367462 n - A102683 (A213092 n).toNat

end

end A157133.P13924914117181811433

/-! ## A157133.P16135816804617699137

`A293606(n)-A328727(A351004(n))`
-/

namespace A157133.P16135816804617699137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 n - A328727 (A351004 n).toNat

end

end A157133.P16135816804617699137

/-! ## A157133.P9803356502157251182

`A330779(A213092(n)-A072609(n+1))`
-/

namespace A157133.P9803356502157251182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330779 (A213092 n - A072609 (n + 1)).toNat

end

end A157133.P9803356502157251182

/-!
# A157134: G.f. satisfies: A(x) = Sum_{n>=0} x^(n^2) * A(x)^n.

The programs for A157134, there is no canonical definition to state claims against.
-/

/-! ## A157134.P5811984712327315421

`A120401(A216116(n))`
-/

namespace A157134.P5811984712327315421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A216116 n).toNat

end

end A157134.P5811984712327315421

/-! ## A157134.P10813919462754370196

`A357873(A023426(n))`
-/

namespace A157134.P10813919462754370196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (A023426 n).toNat

end

end A157134.P10813919462754370196

/-! ## A157134.P6036563695311321359

`A120401(A023427(n+1))`
-/

namespace A157134.P6036563695311321359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A023427 (n + 1)).toNat

end

end A157134.P6036563695311321359

/-! ## A157134.P4185908798614829996

`A335469(A023426(n)+1)`
-/

namespace A157134.P4185908798614829996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A023426 n + 1).toNat

end

end A157134.P4185908798614829996

/-! ## A157134.P17900346325368998355

`A357532(n)-A005614(A000104(n))`
-/

namespace A157134.P17900346325368998355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357532 n - A005614 (A000104 n).toNat

end

end A157134.P17900346325368998355

/-!
# A157135: G.f. satisfies: A(x) = Sum_{n>=0} x^(n^2) * A(x)^(n^2+n).

The programs for A157135, there is no canonical definition to state claims against.
-/

/-! ## A157135.P6402666615361916073

`A065033(Δ[A035349(n)])`
-/

namespace A157135.P6402666615361916073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A157135.P6402666615361916073

/-! ## A157135.P7664559086306586877

`A367317(n)+A086015(A020089(n))`
-/

namespace A157135.P7664559086306586877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367317 n + A086015 (A020089 n).toNat

end

end A157135.P7664559086306586877

/-! ## A157135.P9499985419807838651

`A367317(n)+A080584(A080621(n))`
-/

namespace A157135.P9499985419807838651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367317 n + A080584 (A080621 n).toNat

end

end A157135.P9499985419807838651

/-! ## A157135.P1759967970746983787

`A367317(n)+A064911(A104858(n))`
-/

namespace A157135.P1759967970746983787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367317 n + A064911 (A104858 n).toNat

end

end A157135.P1759967970746983787

/-! ## A157135.P13054322535648921598

`A367317(n)+A086075(A124303(n))`
-/

namespace A157135.P13054322535648921598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367317 n + A086075 (A124303 n).toNat

end

end A157135.P13054322535648921598

/-!
# A157136: G.f. satisfies: A(x) = Sum_{n>=0} x^(n^2) * A(x)^(n^2).

The programs for A157136, there is no canonical definition to state claims against.
-/

/-! ## A157136.P11765899741082015020

`A045847(A056220(n+1))/(n+1)`
-/

namespace A157136.P11765899741082015020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045847 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A157136.P11765899741082015020

/-! ## A157136.P7857079689932172099

`A045847(A060626(n)/2)/(n+1)`
-/

namespace A157136.P7857079689932172099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045847 (SequenceMachineLib.roundAway ((A060626 n : ℚ) / 2)).toNat : ℚ) / (n + 1 : ℚ)

end

end A157136.P7857079689932172099

/-! ## A157136.P12949677792494995190

`A045847(A146535((n+1)²))/(n+1)`
-/

namespace A157136.P12949677792494995190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045847 (A146535 ((n + 1) ^ 2)).toNat : ℚ) / (n + 1 : ℚ)

end

end A157136.P12949677792494995190

/-! ## A157136.P10866618494679737507

`A045847(record[A188653(n+1)])/(n+1)`
-/

namespace A157136.P10866618494679737507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045847 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (n + 1 : ℚ)

end

end A157136.P10866618494679737507

/-! ## A157136.P11416365971749428466

`A045847(A058331(n+1)-2)/(n+1)`
-/

namespace A157136.P11416365971749428466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045847 (A058331 (n + 1) - 2).toNat : ℚ) / (n + 1 : ℚ)

end

end A157136.P11416365971749428466

/-!
# A157139: Odd numbers n with equal number of odd digits in n and n-th prime.

The programs for A157139, there is no canonical definition to state claims against.
-/

/-! ## A157139.P10382006791493580447

`record[A099375(A325763(Δ[n²]))]`
-/

namespace A157139.P10382006791493580447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A325763 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157139.P10382006791493580447

/-! ## A157139.P13635523810582076610

`A114270(2*(n+1))+A010167(A007097(n))`
-/

namespace A157139.P13635523810582076610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114270 (2 * (n + 1)) + A010167 (A007097 n).toNat

end

end A157139.P13635523810582076610

/-! ## A157139.P16541748597554665753

`A138904(A118918(n+1))+A114270(2*(n+1))`
-/

namespace A157139.P16541748597554665753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A118918 (n + 1)).toNat + A114270 (2 * (n + 1))

end

end A157139.P16541748597554665753

/-! ## A157139.P403852494817913837

`A322136(n+1)+A011583(A248085(3*n+2))`
-/

namespace A157139.P403852494817913837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322136 (n + 1) + A011583 (A248085 (3 * n + 2)).toNat

end

end A157139.P403852494817913837

/-!
# A157140: A091411(k+3) replicated 2^k times, k= 0, 1, 2, 3, ...

The programs for A157140, there is no canonical definition to state claims against.
-/

/-! ## A157140.P16645180416994630953

`A091411(floor(log2(n+1))+3)`
-/

namespace A157140.P16645180416994630953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091411 (Nat.log 2 (n + 1) + 3)

end

end A157140.P16645180416994630953

/-! ## A157140.P6201542282925743601

`A157217(A103517(∑[A036987(n)]))`
-/

namespace A157140.P6201542282925743601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157217 (A103517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A157140.P6201542282925743601

/-!
# A157141: Prime numbers for which the number of odd nonprime digits equals the number of even nonzero digits and both are >0.

The programs for A157141, there is no canonical definition to state claims against.
-/

/-! ## A157141.P8256215409860784727

`A118751((n+2)²+4)`
-/

namespace A157141.P8256215409860784727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 ((n + 2) ^ 2 + 4)

end

end A157141.P8256215409860784727

/-! ## A157141.P4393091327590697558

`A327783(A062691(n+1)-n)`
-/

namespace A157141.P4393091327590697558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327783 (A062691 (n + 1) - (n : ℤ)).toNat

end

end A157141.P4393091327590697558

/-!
# A157142: Signed denominators of Leibniz series for Pi/4.

The programs for A157142, the canonical program `A157142.P6038675094139632517` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157142 has offset 0).

The definition of A157142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157142.P6038675094139632517

`(2*n+1)*(-1)^n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157142

/-- `(2*n+1)*(-1)^n` -/
def P6038675094139632517.Spec : Prop :=
  ∀ n, P6038675094139632517.a n = A157142 n

theorem P6038675094139632517.correct : P6038675094139632517.Spec := by
  intro n
  simp only [A157142]

end A157142

/-! ## A157142.P10540707219578703421

`xor(2*n, (-1)^n)`
-/

namespace A157142.P10540707219578703421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) ((-1) ^ n)

end

end A157142.P10540707219578703421

namespace A157142

/-- `xor(2*n, (-1)^n)` -/
def P10540707219578703421.Spec : Prop :=
  ∀ n, P10540707219578703421.a n = A157142 n

end A157142

/-! ## A157142.P5484483892743599904

`Δ[2*lcm(2, n)]-3`
-/

namespace A157142.P5484483892743599904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 3

end

end A157142.P5484483892743599904

namespace A157142

/-- `Δ[2*lcm(2, n)]-3` -/
def P5484483892743599904.Spec : Prop :=
  ∀ n, P5484483892743599904.a n = A157142 n

end A157142

/-! ## A157142.P8273300306340222821

`record[xor(1, n)]/(-1)^n`
-/

namespace A157142.P8273300306340222821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / ((-1) ^ n : ℚ)

end

end A157142.P8273300306340222821

namespace A157142

/-- `record[xor(1, n)]/(-1)^n` -/
def P8273300306340222821.Spec : Prop :=
  ∀ n, P8273300306340222821.a n = (A157142 n : ℚ)

end A157142

/-! ## A157142.P5553631144927822496

`3-Δ[2*n*gcd(2, n)]`
-/

namespace A157142.P5553631144927822496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A157142.P5553631144927822496

namespace A157142

/-- `3-Δ[2*n*gcd(2, n)]` -/
def P5553631144927822496.Spec : Prop :=
  ∀ n, P5553631144927822496.a n = A157142 n

end A157142

/-! ## A157142.P6875081910488760524

`Δ[2*n*and(1, n)]-1`
-/

namespace A157142.P6875081910488760524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A157142.P6875081910488760524

namespace A157142

/-- `Δ[2*n*and(1, n)]-1` -/
def P6875081910488760524.Spec : Prop :=
  ∀ n, P6875081910488760524.a n = A157142 n

end A157142

/-! ## A157142.P10097134204875935822

`-(Δ[-lcm(4, 2*n)]+3)`
-/

namespace A157142.P10097134204875935822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.lcm 4 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + 3)

end

end A157142.P10097134204875935822

namespace A157142

/-- `-(Δ[-lcm(4, 2*n)]+3)` -/
def P10097134204875935822.Spec : Prop :=
  ∀ n, P10097134204875935822.a n = A157142 n

end A157142

/-! ## A157142.P17723290496046455540

`-xor(n-xor(1, n), 2*n)`
-/

namespace A157142.P17723290496046455540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) - (Nat.xor 1 n : ℤ)) (2 * n : ℤ)

end

end A157142.P17723290496046455540

namespace A157142

/-- `-xor(n-xor(1, n), 2*n)` -/
def P17723290496046455540.Spec : Prop :=
  ∀ n, P17723290496046455540.a n = A157142 n

end A157142

/-! ## A157142.P3166528209776193461

`2*(-1)^n-a(n-1)` with `a(0)=1`
-/

namespace A157142.P3166528209776193461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (-1) ^ n - a (n - 1)

end

end A157142.P3166528209776193461

namespace A157142

/-- `2*(-1)^n-a(n-1)` -/
def P3166528209776193461.Spec : Prop :=
  ∀ n, P3166528209776193461.a n = A157142 n

end A157142

/-! ## A157142.P9016867822584697942

`(1-(2*n)²)/a(n-1)` with `a(0)=1`
-/

namespace A157142.P9016867822584697942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 - ((2 * n) ^ 2 : ℤ) : ℚ) / a (n - 1)

end

end A157142.P9016867822584697942

namespace A157142

/-- `(1-(2*n)²)/a(n-1)` -/
def P9016867822584697942.Spec : Prop :=
  ∀ n, P9016867822584697942.a n = (A157142 n : ℚ)

end A157142

/-! ## A157142.P9965052728658248924

`(2*n+1)/or(1, -and(1, n))`
-/

namespace A157142.P9965052728658248924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.lor 1 (-(Nat.land 1 n : ℤ)) : ℚ)

end

end A157142.P9965052728658248924

namespace A157142

/-- `(2*n+1)/or(1, -and(1, n))` -/
def P9965052728658248924.Spec : Prop :=
  ∀ n, P9965052728658248924.a n = (A157142 n : ℚ)

end A157142

/-! ## A157142.P487390030420309372

`floor(2/(-1)^n-a(n-1))` with `a(0)=1`
-/

namespace A157142.P487390030420309372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 / ((-1) ^ n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A157142.P487390030420309372

namespace A157142

/-- `floor(2/(-1)^n-a(n-1))` -/
def P487390030420309372.Spec : Prop :=
  ∀ n, P487390030420309372.a n = A157142 n

end A157142

/-! ## A157142.P254751985140363784

`a(n-2)+4/(-1)^n` with `a(0)=1, a(1)=-3`
-/

namespace A157142.P254751985140363784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -3] fun n a =>
  a (n - 2) + 4 / ((-1) ^ n : ℚ)

end

end A157142.P254751985140363784

namespace A157142

/-- `a(n-2)+4/(-1)^n` -/
def P254751985140363784.Spec : Prop :=
  ∀ n, P254751985140363784.a n = (A157142 n : ℚ)

end A157142

/-!
# A157147: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 1, read by rows.

The programs for A157147, there is no canonical definition to state claims against.
-/

/-! ## A157147.P1915377803500467704

`A185284(A141689(n+1))+A141691(n+1)`
-/

namespace A157147.P1915377803500467704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A141689 (n + 1)).toNat + A141691 (n + 1)

end

end A157147.P1915377803500467704

/-! ## A157147.P6294409507677172841

`A328037(A323348(n))+A157523(n)`
-/

namespace A157147.P6294409507677172841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328037 (A323348 n).toNat + A157523 n

end

end A157147.P6294409507677172841

/-! ## A157147.P1660099839146745588

`A185284(A008486(n))+A141691(n+1)`
-/

namespace A157147.P1660099839146745588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008486 n).toNat + A141691 (n + 1)

end

end A157147.P1660099839146745588

/-! ## A157147.P5383315968442322951

`A185284(A008585(n))+A141691(n+1)`
-/

namespace A157147.P5383315968442322951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008585 n).toNat + A141691 (n + 1)

end

end A157147.P5383315968442322951

/-! ## A157147.P10708101930674201880

`A185284(A181385(n))+A141691(n+1)`
-/

namespace A157147.P10708101930674201880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A181385 n).toNat + A141691 (n + 1)

end

end A157147.P10708101930674201880

/-!
# A157148: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 2, read by rows.

The programs for A157148, there is no canonical definition to state claims against.
-/

/-! ## A157148.P13349205736582484446

`A033862(A185412(n))`
-/

namespace A157148.P13349205736582484446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A185412 n).toNat

end

end A157148.P13349205736582484446

/-! ## A157148.P17738945748358172527

`A115838(A168551(n))`
-/

namespace A157148.P17738945748358172527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115838 (A168551 n).toNat

end

end A157148.P17738945748358172527

/-! ## A157148.P10717810676398995629

`A238789(A081582(n))`
-/

namespace A157148.P10717810676398995629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (A081582 n).toNat

end

end A157148.P10717810676398995629

/-! ## A157148.P6069418854278569468

`A187885(A155467(n))`
-/

namespace A157148.P6069418854278569468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187885 (A155467 n).toNat

end

end A157148.P6069418854278569468

/-! ## A157148.P12002055807289004680

`A360265(A022181(n))`
-/

namespace A157148.P12002055807289004680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360265 (A022181 n).toNat

end

end A157148.P12002055807289004680

/-!
# A157149: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 3, read by rows.

The programs for A157149, there is no canonical definition to state claims against.
-/

/-! ## A157149.P14435179072867262573

`A125129(A086645(n))`
-/

namespace A157149.P14435179072867262573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125129 (A086645 n).toNat

end

end A157149.P14435179072867262573

/-! ## A157149.P8487029913610034208

`A282167(A347974(n))`
-/

namespace A157149.P8487029913610034208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282167 (A347974 n).toNat

end

end A157149.P8487029913610034208

/-! ## A157149.P14419979772751036593

`A096078(A086645(n)+1)`
-/

namespace A157149.P14419979772751036593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096078 (A086645 n + 1).toNat

end

end A157149.P14419979772751036593

/-! ## A157149.P6280489315961802910

`A112500(A086645(n)+1)`
-/

namespace A157149.P6280489315961802910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112500 (A086645 n + 1).toNat

end

end A157149.P6280489315961802910

/-! ## A157149.P11920920997310770374

`A177822(A156717(n+1))`
-/

namespace A157149.P11920920997310770374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177822 (A156717 (n + 1)).toNat

end

end A157149.P11920920997310770374

/-!
# A157150: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 4, read by rows.

The programs for A157150, there is no canonical definition to state claims against.
-/

/-! ## A157150.P18000938682453596493

`A317838(18^A004247(n))`
-/

namespace A157150.P18000938682453596493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (SequenceMachineLib.roundAway ((18 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A157150.P18000938682453596493

/-! ## A157150.P11096468280489444539

`A018252(A203443(n+1)^A004197(n))`
-/

namespace A157150.P11096468280489444539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway ((A203443 (n + 1) : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A157150.P11096468280489444539

/-! ## A157150.P5161642925658311667

`A018252(A203443(n+1)^A008616(n))`
-/

namespace A157150.P5161642925658311667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway ((A203443 (n + 1) : ℚ) ^ (A008616 n : ℤ))).toNat

end

end A157150.P5161642925658311667

/-! ## A157150.P237409085086910864

`A018252(A203443(n+1)^A025812(n))`
-/

namespace A157150.P237409085086910864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway ((A203443 (n + 1) : ℚ) ^ (A025812 n : ℤ))).toNat

end

end A157150.P237409085086910864

/-! ## A157150.P11115423010849796379

`A018252(A203443(n+1)^A029253(n))`
-/

namespace A157150.P11115423010849796379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway ((A203443 (n + 1) : ℚ) ^ (A029253 n : ℤ))).toNat

end

end A157150.P11115423010849796379

/-!
# A157151: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 5, read by rows.

The programs for A157151, there is no canonical definition to state claims against.
-/

/-! ## A157151.P9027554417589167726

`A130994(A342891(n))+A054861(A142460(n+1))`
-/

namespace A157151.P9027554417589167726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130994 (A342891 n).toNat + A054861 (A142460 (n + 1)).toNat

end

end A157151.P9027554417589167726

/-! ## A157151.P10604612300620744762

`A054895(10*A022170(n))+A054861(A142460(n+1))`
-/

namespace A157151.P10604612300620744762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (10 * A022170 n).toNat + A054861 (A142460 (n + 1)).toNat

end

end A157151.P10604612300620744762

/-! ## A157151.P14268457857164647348

`A274640(21^A276777(n))`
-/

namespace A157151.P14268457857164647348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (SequenceMachineLib.roundAway ((21 : ℚ) ^ (A276777 n : ℤ))).toNat

end

end A157151.P14268457857164647348

/-! ## A157151.P12861175404294475970

`A031213(A276777(n)!²)`
-/

namespace A157151.P12861175404294475970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031213 (Nat.factorial (A276777 n).toNat ^ 2)

end

end A157151.P12861175404294475970

/-!
# A157152: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) - m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 1, read by rows.

The programs for A157152, there is no canonical definition to state claims against.
-/

/-! ## A157152.P17779667403401974077

`A209246(A384764(n))`
-/

namespace A157152.P17779667403401974077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209246 (A384764 n).toNat

end

end A157152.P17779667403401974077

/-! ## A157152.P720258557103343328

`A209246(A385862(n))`
-/

namespace A157152.P720258557103343328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209246 (A385862 n).toNat

end

end A157152.P720258557103343328

/-! ## A157152.P4750418489338079747

`∑{d}[A099594(n), A329718(#)/2]`
-/

namespace A157152.P4750418489338079747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A329718 d : ℚ) / 2

end

end A157152.P4750418489338079747

/-! ## A157152.P8238703206665745084

`A261104(2*A060187(n+1)+1)-1`
-/

namespace A157152.P8238703206665745084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (2 * A060187 (n + 1) + 1).toNat - 1

end

end A157152.P8238703206665745084

/-! ## A157152.P8015450644616370583

`A026741(∑{d}[A099594(n), A329718(#)])`
-/

namespace A157152.P8015450644616370583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ d ∈ Nat.divisors (f1 n).natAbs, A329718 d).toNat

end

end A157152.P8015450644616370583

/-!
# A157153: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) - m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 2, read by rows.

The programs for A157153, there is no canonical definition to state claims against.
-/

/-! ## A157153.P16879580860327897127

`A309899(A022173(n))`
-/

namespace A157153.P16879580860327897127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309899 (A022173 n).toNat

end

end A157153.P16879580860327897127

/-! ## A157153.P2503802313993289664

`A147565(n)-A116564(A062275(n))`
-/

namespace A157153.P2503802313993289664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147565 n - A116564 (A062275 n).toNat

end

end A157153.P2503802313993289664

/-! ## A157153.P18375991199493020932

`A002260(or(A022173(n), A333988(n)))`
-/

namespace A157153.P18375991199493020932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.lor (A022173 n) (A333988 n)).toNat

end

end A157153.P18375991199493020932

/-! ## A157153.P10050990073626225060

`A134403(A022173(n))%A296920(n+1)`
-/

namespace A157153.P10050990073626225060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134403 (A022173 n).toNat) (A296920 (n + 1))

end

end A157153.P10050990073626225060

/-! ## A157153.P7257839112852299792

`A213500(A022173(n))%A250769(n+1)`
-/

namespace A157153.P7257839112852299792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213500 (A022173 n).toNat) (A250769 (n + 1))

end

end A157153.P7257839112852299792

/-!
# A157155: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) - m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 4, read by rows.

The programs for A157155, there is no canonical definition to state claims against.
-/

/-! ## A157155.P2057590468778871928

`A028900(A022174(n))`
-/

namespace A157155.P2057590468778871928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A022174 n).toNat

end

end A157155.P2057590468778871928

/-! ## A157155.P8825153754837682324

`A028899(A022175(n))`
-/

namespace A157155.P8825153754837682324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A022175 n).toNat

end

end A157155.P8825153754837682324

/-! ## A157155.P923846885000316070

`A109680(A022169(n))`
-/

namespace A157155.P923846885000316070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A022169 n).toNat

end

end A157155.P923846885000316070

/-! ## A157155.P4006686762983903167

`A023190(A129274(n))`
-/

namespace A157155.P4006686762983903167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A129274 n).toNat

end

end A157155.P4006686762983903167

/-!
# A157156: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) - m*k*(n-k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1 and m = 5, read by rows.

The programs for A157156, there is no canonical definition to state claims against.
-/

/-! ## A157156.P13526242272844199388

`∏{p}[A022170(n)², #]`
-/

namespace A157156.P13526242272844199388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A157156.P13526242272844199388

/-! ## A157156.P8686876749425386075

`A006984(A022170(n))`
-/

namespace A157156.P8686876749425386075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A022170 n).toNat

end

end A157156.P8686876749425386075

/-! ## A157156.P7947513752565029395

`A028901(A022174(n))`
-/

namespace A157156.P7947513752565029395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A022174 n).toNat

end

end A157156.P7947513752565029395

/-! ## A157156.P11355156872934599921

`A028900(A022175(n))`
-/

namespace A157156.P11355156872934599921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A022175 n).toNat

end

end A157156.P11355156872934599921

/-! ## A157156.P18343592125133033814

`A028898(A022184(n))`
-/

namespace A157156.P18343592125133033814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A022184 n).toNat

end

end A157156.P18343592125133033814

/-!
# A157157: Nonprime numbers containing equal number of odd nonprime digits and even prime digits.

The programs for A157157, there is no canonical definition to state claims against.
-/

/-! ## A157157.P5463035810549494737

`eq[A003132(n), A102884(A330461(n))]`
-/

namespace A157157.P5463035810549494737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102884 (A330461 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157157.P5463035810549494737

/-!
# A157158: Primes where the first digit is equal to the largest digit.

The programs for A157158, the canonical program `A157158.P9173003013204170091` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157158 has offset 1).

The definition of A157158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157158.P9173003013204170091

`p?[A072543(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157158

/-- `p?[A072543(n+1)]` -/
def P9173003013204170091.Spec : Prop :=
  ∀ n, P9173003013204170091.a n = A157158 (n + 1)

theorem P9173003013204170091.correct : P9173003013204170091.Spec := by
  intro n
  simp only [A157158, Nat.add_sub_cancel]

end A157158

/-! ## A157158.P4036570792681488369

`record[A006530(A072543(n+3))]`
-/

namespace A157158.P4036570792681488369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072543 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157158.P4036570792681488369

namespace A157158

/-- `record[A006530(A072543(n+3))]` -/
def P4036570792681488369.Spec : Prop :=
  ∀ n, P4036570792681488369.a n = A157158 (n + 1)

end A157158

/-! ## A157158.P15411396488588537340

`filter[A072543(n+2), A010051(#)]`
-/

namespace A157158.P15411396488588537340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A157158.P15411396488588537340

namespace A157158

/-- `filter[A072543(n+2), A010051(#)]` -/
def P15411396488588537340.Spec : Prop :=
  ∀ n, P15411396488588537340.a n = A157158 (n + 1)

end A157158

/-! ## A157158.P8084336820125087178

`∩[A000040(n+1), A072543(n+1)]`
-/

namespace A157158.P8084336820125087178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157158.P8084336820125087178

namespace A157158

/-- `∩[A000040(n+1), A072543(n+1)]` -/
def P8084336820125087178.Spec : Prop :=
  ∀ n, (P8084336820125087178.a n : ℤ) = A157158 (n + 1)

end A157158

/-! ## A157158.P5678960497569632398

`p?[record[A072543(A052938(n))]]`
-/

namespace A157158.P5678960497569632398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157158.P5678960497569632398

namespace A157158

/-- `p?[record[A072543(A052938(n))]]` -/
def P5678960497569632398.Spec : Prop :=
  ∀ n, P5678960497569632398.a n = A157158 (n + 1)

end A157158

/-! ## A157158.P13353840372141932476

`filter[A072543(n+3), A080339(#)]`
-/

namespace A157158.P13353840372141932476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A157158.P13353840372141932476

namespace A157158

/-- `filter[A072543(n+3), A080339(#)]` -/
def P13353840372141932476.Spec : Prop :=
  ∀ n, P13353840372141932476.a n = A157158 (n + 1)

end A157158

/-! ## A157158.P1817878654011026774

`∩[A072543(n+1), A240960(n+1)]`
-/

namespace A157158.P1817878654011026774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157158.P1817878654011026774

namespace A157158

/-- `∩[A072543(n+1), A240960(n+1)]` -/
def P1817878654011026774.Spec : Prop :=
  ∀ n, (P1817878654011026774.a n : ℤ) = A157158 (n + 1)

end A157158

/-! ## A157158.P8746053222967574731

`∩[A072543(n+1), A385492(n+1)]`
-/

namespace A157158.P8746053222967574731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157158.P8746053222967574731

namespace A157158

/-- `∩[A072543(n+1), A385492(n+1)]` -/
def P8746053222967574731.Spec : Prop :=
  ∀ n, (P8746053222967574731.a n : ℤ) = A157158 (n + 1)

end A157158

/-!
# A157161: Formal infinite product representation for the Catalan numbers (A000108) o.g.f. series.

The programs for A157161, there is no canonical definition to state claims against.
-/

/-! ## A157161.P712251677935033644

`A374748(2*n²)+A000975(n)`
-/

namespace A157161.P712251677935033644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374748 (2 * n ^ 2) + A000975 n

end

end A157161.P712251677935033644

/-! ## A157161.P14220277182279460985

`A276073(A000262(n))+A248394(n)`
-/

namespace A157161.P14220277182279460985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276073 (A000262 n).toNat + A248394 n

end

end A157161.P14220277182279460985

/-! ## A157161.P8100324472741605008

`A123432(n+1)-A040076(A209902(n))`
-/

namespace A157161.P8100324472741605008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123432 (n + 1) - A040076 (A209902 n).toNat

end

end A157161.P8100324472741605008

/-!
# A157162: 1/Product_{n>=1} (1 - a(n)*x^n) = 1 + Sum_{k>=1} F(k+1)*x^k = 1/(1-x-x^2), where F(n) = A000045(n) (Fibonacci numbers).

The programs for A157162, there is no canonical definition to state claims against.
-/

/-! ## A157162.P2535997432370703930

`A135660(A055151(n)+A026676(n))`
-/

namespace A157162.P2535997432370703930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A055151 n + A026676 n).toNat

end

end A157162.P2535997432370703930

/-! ## A157162.P6085866329447140983

`A135660(A142589(n)+A026676(n))`
-/

namespace A157162.P6085866329447140983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A142589 n + A026676 n).toNat

end

end A157162.P6085866329447140983

/-! ## A157162.P14250565651029785570

`A135660(A213217(n)+A026676(n))`
-/

namespace A157162.P14250565651029785570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A213217 n + A026676 n).toNat

end

end A157162.P14250565651029785570

/-! ## A157162.P7922057586712252027

`A135660(A274741(n)+A026676(n))`
-/

namespace A157162.P7922057586712252027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A274741 n + A026676 n).toNat

end

end A157162.P7922057586712252027

/-! ## A157162.P3086210066752537731

`A135660(A204890(n+1)+A026676(n))`
-/

namespace A157162.P3086210066752537731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A204890 (n + 1) + A026676 n).toNat

end

end A157162.P3086210066752537731

/-!
# A157163: Product_{n>=1} (1 + 2*a(n)*x^n) = Sum_{k>=0} binomial(2*k, k)*x^k = 1/sqrt(1 - 4*x), with the central binomial numbers A000984(n).

The programs for A157163, there is no canonical definition to state claims against.
-/

/-! ## A157163.P12775824237950993585

`A054404(A162551(n)+A051359(n))`
-/

namespace A157163.P12775824237950993585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A162551 n + A051359 n).toNat

end

end A157163.P12775824237950993585

/-! ## A157163.P7238465926839840458

`A008443(A002296(n)-A132882(n+1))`
-/

namespace A157163.P7238465926839840458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (A002296 n - A132882 (n + 1)).toNat

end

end A157163.P7238465926839840458

/-!
# A157166: Denominators of partial sums of a series related to Lebesgue's constant L(0) = 1.

The programs for A157166, there is no canonical definition to state claims against.
-/

/-! ## A157166.P3668365327647354103

`A000027(A229726(n))*A111877(n)`
-/

namespace A157166.P3668365327647354103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A229726 n).toNat * A111877 n

end

end A157166.P3668365327647354103

/-! ## A157166.P17818729538498045250

`A000265(A145624(n+1))*A111877(n)`
-/

namespace A157166.P17818729538498045250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A145624 (n + 1)).toNat * A111877 n

end

end A157166.P17818729538498045250

/-! ## A157166.P18035718983435947893

`A000265(A111877(n))*A025547(n+1)`
-/

namespace A157166.P18035718983435947893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A111877 n).toNat * A025547 (n + 1)

end

end A157166.P18035718983435947893

/-!
# A157169: Triangle, read by rows, T(n,k,m) = (m*(n-k)+1)*binomial(n-1, k-1) + (m*k+1)* binomial(n-1, k) + m*k*(n-k)*binomial(n-2, k-1), with m=1.

The programs for A157169, there is no canonical definition to state claims against.
-/

/-! ## A157169.P10467847519717287009

`(A157170(n)+A007318(n))/2`
-/

namespace A157169.P10467847519717287009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157170 n + A007318 n : ℚ) / 2

end

end A157169.P10467847519717287009

/-! ## A157169.P14531639071978978853

`2*A157170(n)-A157171(n)`
-/

namespace A157169.P14531639071978978853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157170 n - A157171 n

end

end A157169.P14531639071978978853

/-! ## A157169.P11770969953848587909

`(A157171(n)+A028326(n))/3`
-/

namespace A157169.P11770969953848587909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157171 n + A028326 n : ℚ) / 3

end

end A157169.P11770969953848587909

/-! ## A157169.P4997517151382360031

`A014682(A157170(n)+A007318(n))`
-/

namespace A157169.P4997517151382360031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A157170 n + A007318 n).toNat

end

end A157169.P4997517151382360031

/-! ## A157169.P12936132515520567241

`A273943(A157170(n)+A007318(n))`
-/

namespace A157169.P12936132515520567241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A157170 n + A007318 n).toNat

end

end A157169.P12936132515520567241

/-! ## A157169.P18399713576404476741

`A001281(A157170(n)+A007318(n))`
-/

namespace A157169.P18399713576404476741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A157170 n + A007318 n).toNat

end

end A157169.P18399713576404476741

/-! ## A157169.P9656751109614234074

`A004525(A157170(n)+A007318(n))`
-/

namespace A157169.P9656751109614234074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A157170 n + A007318 n).toNat

end

end A157169.P9656751109614234074

/-! ## A157169.P5749192394678031900

`A025480(A157170(n)+A007318(n))`
-/

namespace A157169.P5749192394678031900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A157170 n + A007318 n).toNat

end

end A157169.P5749192394678031900

/-! ## A157169.P2159124818703371226

`A032742(A157170(n)+A007318(n))`
-/

namespace A157169.P2159124818703371226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A157170 n + A007318 n).toNat

end

end A157169.P2159124818703371226

/-! ## A157169.P12442046282523893003

`A060681(A157170(n)+A007318(n))`
-/

namespace A157169.P12442046282523893003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A157170 n + A007318 n).toNat

end

end A157169.P12442046282523893003

/-!
# A157170: Triangle, read by rows, T(n,k,m) = (m*(n-k)+1)*binomial(n-1, k-1) + (m*k+1)* binomial(n-1, k) + m*k*(n-k)*binomial(n-2, k-1), with m=2.

The programs for A157170, there is no canonical definition to state claims against.
-/

/-! ## A157170.P15202285006042035740

`2*A157169(n)-A007318(n)`
-/

namespace A157170.P15202285006042035740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157169 n - A007318 n

end

end A157170.P15202285006042035740

/-! ## A157170.P4741681643566170499

`(A157171(n)+A157169(n))/2`
-/

namespace A157170.P4741681643566170499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157171 n + A157169 n : ℚ) / 2

end

end A157170.P4741681643566170499

/-! ## A157170.P4916696917502852996

`2*A157169(n)-abs(A130595(n))`
-/

namespace A157170.P4916696917502852996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157169 n - |A130595 n|

end

end A157170.P4916696917502852996

/-! ## A157170.P16650206982668775847

`2*A157169(n)-sqrt(A008459(n))`
-/

namespace A157170.P16650206982668775847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A157169 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A157170.P16650206982668775847

/-! ## A157170.P1307050038928728369

`A007318(n)+A157171(n)-A157169(n)`
-/

namespace A157170.P1307050038928728369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A157171 n - A157169 n)

end

end A157170.P1307050038928728369

/-! ## A157170.P3275811236329844198

`abs(A130595(n))+A157171(n)-A157169(n)`
-/

namespace A157170.P3275811236329844198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| + (A157171 n - A157169 n)

end

end A157170.P3275811236329844198

/-! ## A157170.P10700083685426420989

`sqrt(A008459(n))+A157171(n)-A157169(n)`
-/

namespace A157170.P10700083685426420989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (A157171 n - A157169 n : ℝ)

end

end A157170.P10700083685426420989

/-! ## A157170.P18119507918474556491

`2*A157169(n)-A014682(A028326(n))`
-/

namespace A157170.P18119507918474556491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157169 n - A014682 (A028326 n).toNat

end

end A157170.P18119507918474556491

/-! ## A157170.P8398338105388826933

`A157169(n)+A014682(A157171(n)-A157169(n))`
-/

namespace A157170.P8398338105388826933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157169 n + A014682 (A157171 n - A157169 n).toNat

end

end A157170.P8398338105388826933

/-! ## A157170.P12674661953493696316

`A273943(A157171(n)-A157169(n))+A157169(n)`
-/

namespace A157170.P12674661953493696316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A157171 n - A157169 n).toNat + A157169 n

end

end A157170.P12674661953493696316

/-!
# A157171: Triangle, read by rows, T(n,k,m) = (m*(n-k)+1)*binomial(n-1, k-1) + (m*k+1)* binomial(n-1, k) + m*k*(n-k)*binomial(n-2, k-1), with m = 3.

The programs for A157171, there is no canonical definition to state claims against.
-/

/-! ## A157171.P10906418494237835659

`2*A157170(n)-A157169(n)`
-/

namespace A157171.P10906418494237835659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157170 n - A157169 n

end

end A157171.P10906418494237835659

/-! ## A157171.P10339875461803277562

`3*A157169(n)-A028326(n)`
-/

namespace A157171.P10339875461803277562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157169 n - A028326 n

end

end A157171.P10339875461803277562

/-! ## A157171.P14082205093336349302

`3*A157169(n)-2*A007318(n)`
-/

namespace A157171.P14082205093336349302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157169 n - 2 * A007318 n

end

end A157171.P14082205093336349302

/-! ## A157171.P10030081032131276214

`(3*A157170(n)-A007318(n))/2`
-/

namespace A157171.P10030081032131276214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A157170 n - A007318 n : ℚ) / 2

end

end A157171.P10030081032131276214

/-! ## A157171.P7028469846656729116

`A157170(n)+A014682(A157170(n)-A007318(n))`
-/

namespace A157171.P7028469846656729116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157170 n + A014682 (A157170 n - A007318 n).toNat

end

end A157171.P7028469846656729116

/-! ## A157171.P11733489948563689704

`A008486(A157169(n))-A028326(n)`
-/

namespace A157171.P11733489948563689704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A157169 n).toNat - A028326 n

end

end A157171.P11733489948563689704

/-! ## A157171.P15107842094419436275

`A157169(n)+A005843(A157169(n)-A007318(n))`
-/

namespace A157171.P15107842094419436275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157169 n + A005843 (A157169 n - A007318 n).toNat

end

end A157171.P15107842094419436275

/-! ## A157171.P1084035663494768016

`A005843(A157170(n))-A157169(n)`
-/

namespace A157171.P1084035663494768016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A157170 n).toNat - A157169 n

end

end A157171.P1084035663494768016

/-! ## A157171.P13109308427945217662

`A157170(n)+A001281(A157170(n)-A007318(n))`
-/

namespace A157171.P13109308427945217662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157170 n + A001281 (A157170 n - A007318 n).toNat

end

end A157171.P13109308427945217662

/-! ## A157171.P9295799914664718601

`A157170(n)+A004525(A157170(n)-A007318(n))`
-/

namespace A157171.P9295799914664718601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157170 n + A004525 (A157170 n - A007318 n).toNat

end

end A157171.P9295799914664718601

/-!
# A157172: Triangle, read by rows, T(n,k,m) = (m*(n-k)+1)*binomial(n-1, k-1) + (m*k+1)* binomial(n-1, k) - m*k*(n-k)*binomial(n-2, k-1), with m = 2.

The programs for A157172, there is no canonical definition to state claims against.
-/

/-! ## A157172.P4637797275711293455

`A007318(n)+A001222(A118185(n))`
-/

namespace A157172.P4637797275711293455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A001222 (A118185 n).toNat

end

end A157172.P4637797275711293455

/-! ## A157172.P8344655626535713206

`A014473(n)+A000005(A118185(n))`
-/

namespace A157172.P8344655626535713206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A000005 (A118185 n).toNat

end

end A157172.P8344655626535713206

/-! ## A157172.P12655434904788125538

`A034932(n)+A001222(A118185(n))`
-/

namespace A157172.P12655434904788125538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 n + A001222 (A118185 n).toNat

end

end A157172.P12655434904788125538

/-! ## A157172.P16684270963000255764

`A056239(A118180(n))+A007318(n)`
-/

namespace A157172.P16684270963000255764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A118180 n).toNat + A007318 n

end

end A157172.P16684270963000255764

/-! ## A157172.P3403119447715616500

`A056239(A118180(n))+A034932(n)`
-/

namespace A157172.P3403119447715616500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A118180 n).toNat + A034932 n

end

end A157172.P3403119447715616500

/-!
# A157173: Primes with sum of smallest digit and final digit is a prime.

The programs for A157173, there is no canonical definition to state claims against.
-/

/-! ## A157173.P6413459850620741161

`∩[A102815(2*n+1), A154539(n+2)]`
-/

namespace A157173.P6413459850620741161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102815 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154539 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157173.P6413459850620741161

/-! ## A157173.P13802695338348757619

`p?[or(A007734(2*(n+1)), A174896(n+4))]`
-/

namespace A157173.P13802695338348757619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007734 (2 * (n + 1))) (A174896 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157173.P13802695338348757619

/-! ## A157173.P1287431008986551546

`A162855(lt[A094442(n), A327149(n)])`
-/

namespace A157173.P1287431008986551546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A157173.P1287431008986551546

/-!
# A157174: Triangle, read by rows, T(n,k,m) = (m*(n-k)+1)*binomial(n-1, k-1) + (m*k+1)* binomial(n-1, k) - m*k*(n-k)*binomial(n-2, k-1), with m = 3.

The programs for A157174, there is no canonical definition to state claims against.
-/

/-! ## A157174.P17158177283765570200

`A318994(A118180(n))+A007318(n)`
-/

namespace A157174.P17158177283765570200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (A118180 n).toNat + A007318 n

end

end A157174.P17158177283765570200

/-! ## A157174.P1493725089738351321

`A318994(A118180(n))+A034932(n)`
-/

namespace A157174.P1493725089738351321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (A118180 n).toNat + A034932 n

end

end A157174.P1493725089738351321

/-! ## A157174.P4054431462914015910

`A318994(A118180(n))+A108363(n)`
-/

namespace A157174.P4054431462914015910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (A118180 n).toNat + A108363 n

end

end A157174.P4054431462914015910

/-! ## A157174.P12032244142095433602

`A134398(n+1)+A001222(A118185(n))`
-/

namespace A157174.P12032244142095433602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134398 (n + 1) + A001222 (A118185 n).toNat

end

end A157174.P12032244142095433602

/-! ## A157174.P3893822372656676983

`A134398(n+1)+A056239(A118180(n))`
-/

namespace A157174.P3893822372656676983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134398 (n + 1) + A056239 (A118180 n).toNat

end

end A157174.P3893822372656676983

/-!
# A157175: Primes such that sum of first digit and smallest digit is a prime.

The programs for A157175, there is no canonical definition to state claims against.
-/

/-! ## A157175.P13019735029452189806

`p?[∑[A293515(A075180(n))]+n+7]`
-/

namespace A157175.P13019735029452189806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293515 (A075180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157175.P13019735029452189806

/-!
# A157176: a(n+1) = a(n - n mod 2) + a(n - n mod 3), a(0) = 1.

The programs for A157176, there is no canonical definition to state claims against.
-/

/-! ## A157176.P16481262977214899332

`A246029(A153237(n)+A131708(n))`
-/

namespace A157176.P16481262977214899332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A153237 n + A131708 n).toNat

end

end A157176.P16481262977214899332

/-!
# A157177: A new general triangle sequence based on the Eulerian form in three parts:m=1; t0(n,k)=If[n*k == 0, 1, Sum[(-1)^j Binomial[n + 1, j](k + 1 - j)^n, {j, 0, k + 1}]] t(n,k,m)=If[n == 0, 1, ( m*(n - k) + 1)*t0(n - 1 + 1, k - 1) + (m*k + 1)*t0(n - 1 + 1, k) + m*k*(n - k)*t0(n - 2 + 1, k - 1)].

The programs for A157177, there is no canonical definition to state claims against.
-/

/-! ## A157177.P6797624696866207808

`A176200(n)+1-A157179(n)`
-/

namespace A157177.P6797624696866207808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A157179 n)

end

end A157177.P6797624696866207808

/-! ## A157177.P8852679805753738924

`(A157178(n)+A008518(n))/2`
-/

namespace A157177.P8852679805753738924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157178 n + A008518 n : ℚ) / 2

end

end A157177.P8852679805753738924

/-! ## A157177.P10574587939394915893

`2*A008292(n+1)-A157179(n)`
-/

namespace A157177.P10574587939394915893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A157179 n

end

end A157177.P10574587939394915893

/-! ## A157177.P16853264463133716941

`A060187(n+1)+A154338(n)-A157179(n)`
-/

namespace A157177.P16853264463133716941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A154338 n - A157179 n)

end

end A157177.P16853264463133716941

/-! ## A157177.P10002001701286597572

`A176200(n)+1-(2*A157180(n)-A157181(n))`
-/

namespace A157177.P10002001701286597572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + 1 - (2 * A157180 n - A157181 n)

end

end A157177.P10002001701286597572

/-!
# A157178: A new general triangle sequence based on the Eulerian form in three parts:m=2; t0(n,k)=If[n*k == 0, 1, Sum[(-1)^j Binomial[n + 1, j](k + 1 - j)^n, {j, 0, k + 1}]] t(n,k,m)=If[n == 0, 1, ( m*(n - k) + 1)*t0(n - 1 + 1, k - 1) + (m*k + 1)*t0(n - 1 + 1, k) + m*k*(n - k)*t0(n - 2 + 1, k - 1)].

The programs for A157178, there is no canonical definition to state claims against.
-/

/-! ## A157178.P7484591912598310591

`2*A157177(n)-A008518(n)`
-/

namespace A157178.P7484591912598310591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157177 n - A008518 n

end

end A157178.P7484591912598310591

/-! ## A157178.P3105983503573115782

`A157177(A028310(n))-(A008518(n)-A157177(n))`
-/

namespace A157178.P3105983503573115782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157177 (A028310 n).toNat - (A008518 n - A157177 n)

end

end A157178.P3105983503573115782

/-! ## A157178.P455977069309925320

`A157177(A061579(n))+A157177(n)-A008518(n)`
-/

namespace A157178.P455977069309925320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157177 (A061579 n).toNat + (A157177 n - A008518 n)

end

end A157178.P455977069309925320

/-! ## A157178.P2773263340920847298

`A004277(A157177(n))-A008518(n)`
-/

namespace A157178.P2773263340920847298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A157177 n).toNat - A008518 n

end

end A157178.P2773263340920847298

/-! ## A157178.P8723999555819902530

`A005843(A157177(n))-A008518(A028310(n))`
-/

namespace A157178.P8723999555819902530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A157177 n).toNat - A008518 (A028310 n).toNat

end

end A157178.P8723999555819902530

/-!
# A157179: A new general triangle sequence based on the Eulerian form in three parts ( subtraction):m=1; t0(n,k)=If[n*k == 0, 1, Sum[(-1)^j Binomial[n + 1, j](k + 1 - j)^n, {j, 0, k + 1}]] t(n,k,m)=If[n == 0, 1, ( m*(n - k) + 1)*t0(n - 1 + 1, k - 1) + (m*k + 1)*t0(n - 1 + 1, k) - m*k*(n - k)*t0(n - 2 + 1, k - 1)].

The programs for A157179, there is no canonical definition to state claims against.
-/

/-! ## A157179.P7103028732563425475

`A176200(n)+1-A157177(n)`
-/

namespace A157179.P7103028732563425475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A157177 n)

end

end A157179.P7103028732563425475

/-! ## A157179.P13830093827444641552

`(A157180(n)+A008518(n))/2`
-/

namespace A157179.P13830093827444641552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157180 n + A008518 n : ℚ) / 2

end

end A157179.P13830093827444641552

/-! ## A157179.P12602406333310333551

`2*A008292(n+1)-A157177(n)`
-/

namespace A157179.P12602406333310333551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A157177 n

end

end A157179.P12602406333310333551

/-! ## A157179.P1110568144907230309

`A060187(n+1)+A154338(n)-A157177(n)`
-/

namespace A157179.P1110568144907230309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A154338 n - A157177 n)

end

end A157179.P1110568144907230309

/-! ## A157179.P12689821010814837638

`(A157180(n)+A008518(n))*2^A321804(A007318(n))`
-/

namespace A157179.P12689821010814837638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157180 n + A008518 n : ℚ) * (2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ)

end

end A157179.P12689821010814837638

/-! ## A157179.P10628860704749956019

`A154695(n)/A271709(n)+A154338(n)-A157177(n)`
-/

namespace A157179.P10628860704749956019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154695 n : ℚ) / (A271709 n : ℚ) + (A154338 n - A157177 n : ℚ)

end

end A157179.P10628860704749956019

/-! ## A157179.P18331714149008793364

`2*A157180(n)-A157181(n)`
-/

namespace A157179.P18331714149008793364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157180 n - A157181 n

end

end A157179.P18331714149008793364

/-!
# A157180: A new general triangle sequence based on the Eulerian form in three parts ( subtraction):m=2; t0(n,k)=If[n*k == 0, 1, Sum[(-1)^j Binomial[n + 1, j](k + 1 - j)^n, {j, 0, k + 1}]] t(n,k,m)=If[n == 0, 1, ( m*(n - k) + 1)*t0(n - 1 + 1, k - 1) + (m*k + 1)*t0(n - 1 + 1, k) - m*k*(n - k)*t0(n - 2 + 1, k - 1)].

The programs for A157180, there is no canonical definition to state claims against.
-/

/-! ## A157180.P10620824225522303804

`2*A157179(n)-A008518(n)`
-/

namespace A157180.P10620824225522303804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157179 n - A008518 n

end

end A157180.P10620824225522303804

/-! ## A157180.P3294668392534856332

`(A157181(n)+A157179(n))/2`
-/

namespace A157180.P3294668392534856332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157181 n + A157179 n : ℚ) / 2

end

end A157180.P3294668392534856332

/-! ## A157180.P14239641548721268389

`A008518(n)+A157181(n)-A157179(n)`
-/

namespace A157180.P14239641548721268389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008518 n + (A157181 n - A157179 n)

end

end A157180.P14239641548721268389

/-! ## A157180.P12462224270258482459

`A273943(A157181(n)-A157179(n))+A157179(n)`
-/

namespace A157180.P12462224270258482459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A157181 n - A157179 n).toNat + A157179 n

end

end A157180.P12462224270258482459

/-! ## A157180.P4479523572282927424

`A014682(A157181(n)+A157179(n))`
-/

namespace A157180.P4479523572282927424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A157181 n + A157179 n).toNat

end

end A157180.P4479523572282927424

/-!
# A157181: A new general triangle sequence based on the Eulerian form in three parts ( subtraction):m=3; t0(n,k)=If[n*k == 0, 1, Sum[(-1)^j Binomial[n + 1, j](k + 1 - j)^n, {j, 0, k + 1}]] t(n,k,m)=If[n == 0, 1, ( m*(n - k) + 1)*t0(n - 1 + 1, k - 1) + (m*k + 1)*t0(n - 1 + 1, k) - m*k*(n - k)*t0(n - 2 + 1, k - 1)].

The programs for A157181, there is no canonical definition to state claims against.
-/

/-! ## A157181.P1411938644035222100

`2*A157180(n)-A157179(n)`
-/

namespace A157181.P1411938644035222100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157180 n - A157179 n

end

end A157181.P1411938644035222100

/-! ## A157181.P2897109411040865522

`A157179(n)+A157180(n)-A008518(n)`
-/

namespace A157181.P2897109411040865522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157179 n + (A157180 n - A008518 n)

end

end A157181.P2897109411040865522

/-! ## A157181.P13025809984028158785

`A157180(A028310(n))+A157180(n)-A157179(n)`
-/

namespace A157181.P13025809984028158785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157180 (A028310 n).toNat + (A157180 n - A157179 n)

end

end A157181.P13025809984028158785

/-! ## A157181.P14606587493603936957

`A157180(A000007(n)+n)+A157180(n)-A157179(n)`
-/

namespace A157181.P14606587493603936957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157180 (A000007 n + (n : ℤ)).toNat + (A157180 n - A157179 n)

end

end A157181.P14606587493603936957

/-! ## A157181.P3754491167402741664

`A157180(A061579(n))+A157180(n)-A157179(n)`
-/

namespace A157181.P3754491167402741664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157180 (A061579 n).toNat + (A157180 n - A157179 n)

end

end A157181.P3754491167402741664

/-!
# A157183: Primes in A028883, p=m^2-7, such that following prime is m^2+1.

The programs for A157183, there is no canonical definition to state claims against.
-/

/-! ## A157183.P14862182076948591941

`A157935(n+1)-8`
-/

namespace A157183.P14862182076948591941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157935 (n + 1) - 8

end

end A157183.P14862182076948591941

/-! ## A157183.P10275476872028156677

`A157934(n+1)²-7`
-/

namespace A157183.P10275476872028156677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157934 (n + 1) ^ 2 - 7

end

end A157183.P10275476872028156677

/-! ## A157183.P12924638513361397326

`A028881(A157934(n+1))`
-/

namespace A157183.P12924638513361397326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (A157934 (n + 1)).toNat

end

end A157183.P12924638513361397326

/-! ## A157183.P83941227957792470

`A157934(n+1)^2-(A000203(gcd(n, n+1))+6)`
-/

namespace A157183.P83941227957792470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157934 (n + 1) ^ 2 - (A000203 (Nat.gcd n (n + 1)) + 6)

end

end A157183.P83941227957792470

/-! ## A157183.P10826148926429764958

`A157934(n+1)^2-(A000045((-1)^(2*n))+6)`
-/

namespace A157183.P10826148926429764958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157934 (n + 1) ^ 2 - (A000045 ((-1) ^ (2 * n)).toNat + 6)

end

end A157183.P10826148926429764958

/-!
# A157185: a(n) = least prime p such that there are n consecutive even numbers E < 2 sqrt(p) such that E^2-p is prime.

The programs for A157185, there is no canonical definition to state claims against.
-/

/-! ## A157185.P16628210773154487242

`A259394(A366044(n+2))`
-/

namespace A157185.P16628210773154487242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259394 (A366044 (n + 2)).toNat

end

end A157185.P16628210773154487242

/-! ## A157185.P10981577970866324487

`p?[A190055(∏[A096826(n+1)])]`
-/

namespace A157185.P10981577970866324487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096826 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190055 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157185.P10981577970866324487

/-!
# A157187: Number of ways to write n as p*q-(p+q) with primes p <= q.

The programs for A157187, there is no canonical definition to state claims against.
-/

/-! ## A157187.P15004610593355508314

`A099563(A049283(n+1)%A212122(n+1))`
-/

namespace A157187.P15004610593355508314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (Int.tmod (A049283 (n + 1)) (A212122 (n + 1))).toNat

end

end A157187.P15004610593355508314

/-! ## A157187.P9493270630130569468

`A198269(A241262(n+1))%A241235(n+1)`
-/

namespace A157187.P9493270630130569468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198269 (A241262 (n + 1)).toNat) (A241235 (n + 1))

end

end A157187.P9493270630130569468

/-! ## A157187.P14299769944302843671

`A134451(A011971(n)*A049283(n+1))`
-/

namespace A157187.P14299769944302843671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A011971 n * A049283 (n + 1)).toNat

end

end A157187.P14299769944302843671

/-! ## A157187.P578612474786941435

`A134451(lcm(A011971(n), A049283(n+1)))`
-/

namespace A157187.P578612474786941435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (Int.lcm (A011971 n) (A049283 (n + 1)))

end

end A157187.P578612474786941435

/-! ## A157187.P4587938680374860254

`A171182(A117576(n)+A117561(n+2))`
-/

namespace A157187.P4587938680374860254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171182 (A117576 n + A117561 (n + 2)).toNat

end

end A157187.P4587938680374860254

/-!
# A157188: Number of ways to write prime(n) as p*q-(p+q) with primes p<=q.

The programs for A157188, there is no canonical definition to state claims against.
-/

/-! ## A157188.P18412222506852280318

`A157187(p?[comp[n²]])`
-/

namespace A157188.P18412222506852280318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A157188.P18412222506852280318

/-! ## A157188.P4711068346630091208

`A157187(Δ[A007504(n)])`
-/

namespace A157188.P4711068346630091208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (f1 (n + 1) - f1 n).toNat

end

end A157188.P4711068346630091208

/-! ## A157188.P119828763050140158

`A157187(record[A051698(n)])`
-/

namespace A157188.P119828763050140158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157188.P119828763050140158

/-! ## A157188.P558255664542092938

`A157187(A000040(n+1))`
-/

namespace A157188.P558255664542092938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (A000040 (n + 1)).toNat

end

end A157188.P558255664542092938

/-! ## A157188.P1798000940611178908

`A157187(A161847(n+1))`
-/

namespace A157188.P1798000940611178908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (A161847 (n + 1)).toNat

end

end A157188.P1798000940611178908

/-! ## A157188.P1666246548276073022

`A157187(A008578(n+2))`
-/

namespace A157188.P1666246548276073022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (A008578 (n + 2)).toNat

end

end A157188.P1666246548276073022

/-! ## A157188.P7433797290528224349

`A157187(A182986(n+2))`
-/

namespace A157188.P7433797290528224349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (A182986 (n + 2)).toNat

end

end A157188.P7433797290528224349

/-! ## A157188.P12325804563047065515

`A157187(eq[1, A003415(n)])`
-/

namespace A157188.P12325804563047065515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157188.P12325804563047065515

/-! ## A157188.P3185090610108962831

`A157187(eq[1, A032741(n)])`
-/

namespace A157188.P3185090610108962831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157188.P3185090610108962831

/-! ## A157188.P3063189397671999565

`A157187(record[A006530(n+2)])`
-/

namespace A157188.P3063189397671999565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157188.P3063189397671999565

/-! ## A157188.P14264530264464110609

`A157187(record[A014963(n+2)])`
-/

namespace A157188.P14264530264464110609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157188.P14264530264464110609

/-! ## A157188.P2592035399003019292

`A157187(record[A020639(n+2)])`
-/

namespace A157188.P2592035399003019292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157188.P2592035399003019292

/-! ## A157188.P15303905782703784754

`A157187(A001749(n+1)/4)`
-/

namespace A157188.P15303905782703784754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 4)).toNat

end

end A157188.P15303905782703784754

/-! ## A157188.P3509737103589733397

`A157187(lt[A053989(n+1), 2])`
-/

namespace A157188.P3509737103589733397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A157188.P3509737103589733397

/-! ## A157188.P8443026083746655596

`A157187(record[A000010(n+1)+1])`
-/

namespace A157188.P8443026083746655596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157188.P8443026083746655596

/-! ## A157188.P8223124649803820465

`A157187(eq[2, A000005(n+1)]+1)`
-/

namespace A157188.P8223124649803820465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157188.P8223124649803820465

/-! ## A157188.P15537558785541366930

`A157187(eq[n, A000010(n+1)]+1)`
-/

namespace A157188.P15537558785541366930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157188.P15537558785541366930

/-! ## A157188.P9924276417373212652

`A157187(A007504(n+1)-A007504(n))`
-/

namespace A157188.P9924276417373212652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (A007504 (n + 1) - A007504 n).toNat

end

end A157188.P9924276417373212652

/-!
# A157189: Records in A157188.

The programs for A157189, there is no canonical definition to state claims against.
-/

/-! ## A157189.P5871325981280297560

`eq[1, A255274(A135311(A227547(n+1)))]`
-/

namespace A157189.P5871325981280297560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (A135311 (A227547 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157189.P5871325981280297560

/-! ## A157189.P8720638459154675580

`eq[A336040(A017986(n)), A341023(n)]`
-/

namespace A157189.P8720638459154675580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (A017986 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341023 (n + 56)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157189.P8720638459154675580

/-! ## A157189.P5768196652792598981

`eq[A116909(n+1), A116909(A201552(n+1))]`
-/

namespace A157189.P5768196652792598981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116909 (A201552 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157189.P5768196652792598981

/-! ## A157189.P9250780817841541634

`lt[A010059(n+2), A001285(A007678(n+1))]`
-/

namespace A157189.P9250780817841541634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A007678 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A157189.P9250780817841541634

/-! ## A157189.P1803068953593655787

`lt[A000045(n), A000265(A195012(2*n+3))]`
-/

namespace A157189.P1803068953593655787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A195012 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A157189.P1803068953593655787

/-!
# A157190: Primes which produce records in A157188, at index i=pi(a(n)) (pi=A000720).

The programs for A157190, there is no canonical definition to state claims against.
-/

/-! ## A157190.P9125228104215868368

`A000040(A157191(n+1))`
-/

namespace A157190.P9125228104215868368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A157191 (n + 1)).toNat

end

end A157190.P9125228104215868368

/-! ## A157190.P16620098963210145269

`A008578(A157191(n+1)+1)`
-/

namespace A157190.P16620098963210145269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A157191 (n + 1) + 1).toNat

end

end A157190.P16620098963210145269

/-! ## A157190.P8937817474259921445

`A182986(A157191(n+1)+1)`
-/

namespace A157190.P8937817474259921445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A157191 (n + 1) + 1).toNat

end

end A157190.P8937817474259921445

/-! ## A157190.P7069291517939753066

`record[A000040(A157191(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A157190.P7069291517939753066
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A157191 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157190.P7069291517939753066

/-!
# A157191: Indices of records in A157190: prime(a(n)) can be written in more ways as pq-p-q (p,q, prime) than any smaller prime.

The programs for A157191, there is no canonical definition to state claims against.
-/

/-! ## A157191.P14086041955994223416

`A000720(A157190(n+1))`
-/

namespace A157191.P14086041955994223416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A157190 (n + 1)).toNat

end

end A157191.P14086041955994223416

/-! ## A157191.P4910591395160708256

`A061395(p?[A157190(n+1)])`
-/

namespace A157191.P4910591395160708256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A157191.P4910591395160708256

/-! ## A157191.P12282845019056010098

`A061395(2*A157190(n+1))`
-/

namespace A157191.P12282845019056010098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A157190 (n + 1)).toNat

end

end A157191.P12282845019056010098

/-! ## A157191.P8828379370369138656

`A061395(lcm(2, A157190(n+1)))`
-/

namespace A157191.P8828379370369138656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A157190 (n + 1)))

end

end A157191.P8828379370369138656

/-!
# A157192: Triangle T(n, k) = 2^(n+k-2)*prime(k) + (n mod 2) if k <= floor(n/2) otherwise 2^(2*n-k-2)*prime(n-k) + (n mod 2), with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A157192, there is no canonical definition to state claims against.
-/

/-! ## A157192.P4261212699280412417

`and(-3, A274701(A154983(n)²))`
-/

namespace A157192.P4261212699280412417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A274701 (A154983 n ^ 2).toNat)

end

end A157192.P4261212699280412417

/-! ## A157192.P2928792603414492107

`and(61, A307707((A154983(n)+1)²))`
-/

namespace A157192.P2928792603414492107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 61 (A307707 ((A154983 n + 1) ^ 2).toNat)

end

end A157192.P2928792603414492107

/-! ## A157192.P237088077147616293

`A181578(A032895(A007318(n)²))`
-/

namespace A157192.P237088077147616293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A032895 (A007318 n ^ 2).toNat).toNat

end

end A157192.P237088077147616293

/-! ## A157192.P1044718672118383941

`A184944(A184944(n))+A008459(n)`
-/

namespace A157192.P1044718672118383941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 (A184944 n).toNat + A008459 n

end

end A157192.P1044718672118383941

/-!
# A157194: Fibonacci sequence beginning 41, 43.

The programs for A157194, the canonical program `A157194.P663006497138114772` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157194 has offset 0).

The definition of A157194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157194.P663006497138114772

`a(n-1)+a(n-2)` with `a(0)=41, a(1)=43`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157194

/-- `a(n-1)+a(n-2)` -/
def P663006497138114772.Spec : Prop :=
  ∀ n, (P663006497138114772.a n : ℤ) = A157194 n

theorem P663006497138114772.correct : P663006497138114772.Spec := by
  intro n
  simp only [A157194]

end A157194

/-! ## A157194.P2191077458211928958

`A022391(n+1)+A022110(n+1)`
-/

namespace A157194.P2191077458211928958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 (n + 1) + A022110 (n + 1)

end

end A157194.P2191077458211928958

namespace A157194

/-- `A022391(n+1)+A022110(n+1)` -/
def P2191077458211928958.Spec : Prop :=
  ∀ n, P2191077458211928958.a n = A157194 n

end A157194

/-! ## A157194.P7092943442787261218

`A022392(n+1)+A022109(n+1)`
-/

namespace A157194.P7092943442787261218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022392 (n + 1) + A022109 (n + 1)

end

end A157194.P7092943442787261218

namespace A157194

/-- `A022392(n+1)+A022109(n+1)` -/
def P7092943442787261218.Spec : Prop :=
  ∀ n, P7092943442787261218.a n = A157194 n

end A157194

/-! ## A157194.P11642095451699583727

`A294116(n+1)+A022354(n+1)`
-/

namespace A157194.P11642095451699583727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294116 (n + 1) + A022354 (n + 1)

end

end A157194.P11642095451699583727

namespace A157194

/-- `A294116(n+1)+A022354(n+1)` -/
def P11642095451699583727.Spec : Prop :=
  ∀ n, P11642095451699583727.a n = A157194 n

end A157194

/-! ## A157194.P14812736641042778501

`A000045(n+1)+2*A022110(n+1)`
-/

namespace A157194.P14812736641042778501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + 2 * A022110 (n + 1)

end

end A157194.P14812736641042778501

namespace A157194

/-- `A000045(n+1)+2*A022110(n+1)` -/
def P14812736641042778501.Spec : Prop :=
  ∀ n, P14812736641042778501.a n = A157194 n

end A157194

/-! ## A157194.P11612730388798546101

`A000032(n+1)+2*A022354(n+1)`
-/

namespace A157194.P11612730388798546101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 2 * A022354 (n + 1)

end

end A157194.P11612730388798546101

namespace A157194

/-- `A000032(n+1)+2*A022354(n+1)` -/
def P11612730388798546101.Spec : Prop :=
  ∀ n, P11612730388798546101.a n = A157194 n

end A157194

/-! ## A157194.P5109884537753200948

`A001060(n+1)+2*A022352(n+1)`
-/

namespace A157194.P5109884537753200948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 1) + 2 * A022352 (n + 1)

end

end A157194.P5109884537753200948

namespace A157194

/-- `A001060(n+1)+2*A022352(n+1)` -/
def P5109884537753200948.Spec : Prop :=
  ∀ n, P5109884537753200948.a n = A157194 n

end A157194

/-! ## A157194.P15548570064879674674

`A020695(n+1)+2*A022353(n+1)`
-/

namespace A157194.P15548570064879674674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + 2 * A022353 (n + 1)

end

end A157194.P15548570064879674674

namespace A157194

/-- `A020695(n+1)+2*A022353(n+1)` -/
def P15548570064879674674.Spec : Prop :=
  ∀ n, P15548570064879674674.a n = A157194 n

end A157194

/-! ## A157194.P982149011349263328

`A022086(n+1)+2*A022109(n+1)`
-/

namespace A157194.P982149011349263328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (n + 1) + 2 * A022109 (n + 1)

end

end A157194.P982149011349263328

namespace A157194

/-- `A022086(n+1)+2*A022109(n+1)` -/
def P982149011349263328.Spec : Prop :=
  ∀ n, P982149011349263328.a n = A157194 n

end A157194

/-! ## A157194.P15133277824584066743

`A022088(n+1)+2*A022108(n+1)`
-/

namespace A157194.P15133277824584066743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (n + 1) + 2 * A022108 (n + 1)

end

end A157194.P15133277824584066743

namespace A157194

/-- `A022088(n+1)+2*A022108(n+1)` -/
def P15133277824584066743.Spec : Prop :=
  ∀ n, P15133277824584066743.a n = A157194 n

end A157194

/-! ## A157194.P1017085493942307131

`A022090(n+1)+2*A022107(n+1)`
-/

namespace A157194.P1017085493942307131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 (n + 1) + 2 * A022107 (n + 1)

end

end A157194.P1017085493942307131

namespace A157194

/-- `A022090(n+1)+2*A022107(n+1)` -/
def P1017085493942307131.Spec : Prop :=
  ∀ n, P1017085493942307131.a n = A157194 n

end A157194

/-! ## A157194.P12394372824123206799

`A022092(n+1)+2*A022106(n+1)`
-/

namespace A157194.P12394372824123206799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 (n + 1) + 2 * A022106 (n + 1)

end

end A157194.P12394372824123206799

namespace A157194

/-- `A022092(n+1)+2*A022106(n+1)` -/
def P12394372824123206799.Spec : Prop :=
  ∀ n, P12394372824123206799.a n = A157194 n

end A157194

/-! ## A157194.P2855397033702130680

`A022345(n+1)+2*A022105(n+1)`
-/

namespace A157194.P2855397033702130680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) + 2 * A022105 (n + 1)

end

end A157194.P2855397033702130680

namespace A157194

/-- `A022345(n+1)+2*A022105(n+1)` -/
def P2855397033702130680.Spec : Prop :=
  ∀ n, P2855397033702130680.a n = A157194 n

end A157194

/-! ## A157194.P6765383905760811703

`A022347(n+1)+2*A022104(n+1)`
-/

namespace A157194.P6765383905760811703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 (n + 1) + 2 * A022104 (n + 1)

end

end A157194.P6765383905760811703

namespace A157194

/-- `A022347(n+1)+2*A022104(n+1)` -/
def P6765383905760811703.Spec : Prop :=
  ∀ n, P6765383905760811703.a n = A157194 n

end A157194

/-! ## A157194.P9211598979891469829

`A022349(n+1)+2*A022103(n+1)`
-/

namespace A157194.P9211598979891469829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 (n + 1) + 2 * A022103 (n + 1)

end

end A157194.P9211598979891469829

namespace A157194

/-- `A022349(n+1)+2*A022103(n+1)` -/
def P9211598979891469829.Spec : Prop :=
  ∀ n, P9211598979891469829.a n = A157194 n

end A157194

/-! ## A157194.P7375081896120188607

`A022351(n+1)+2*A022102(n+1)`
-/

namespace A157194.P7375081896120188607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 (n + 1) + 2 * A022102 (n + 1)

end

end A157194.P7375081896120188607

namespace A157194

/-- `A022351(n+1)+2*A022102(n+1)` -/
def P7375081896120188607.Spec : Prop :=
  ∀ n, P7375081896120188607.a n = A157194 n

end A157194

/-! ## A157194.P7144535237343673403

`A022353(n+1)+2*A022101(n+1)`
-/

namespace A157194.P7144535237343673403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 (n + 1) + 2 * A022101 (n + 1)

end

end A157194.P7144535237343673403

namespace A157194

/-- `A022353(n+1)+2*A022101(n+1)` -/
def P7144535237343673403.Spec : Prop :=
  ∀ n, P7144535237343673403.a n = A157194 n

end A157194

/-! ## A157194.P12561262437395118902

`2*A022391(n+1)-A000045(n+1)`
-/

namespace A157194.P12561262437395118902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022391 (n + 1) - A000045 (n + 1)

end

end A157194.P12561262437395118902

namespace A157194

/-- `2*A022391(n+1)-A000045(n+1)` -/
def P12561262437395118902.Spec : Prop :=
  ∀ n, P12561262437395118902.a n = A157194 n

end A157194

/-! ## A157194.P5104137648621614831

`2*A294116(n+1)-A000032(n+1)`
-/

namespace A157194.P5104137648621614831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294116 (n + 1) - A000032 (n + 1)

end

end A157194.P5104137648621614831

namespace A157194

/-- `2*A294116(n+1)-A000032(n+1)` -/
def P5104137648621614831.Spec : Prop :=
  ∀ n, P5104137648621614831.a n = A157194 n

end A157194

/-! ## A157194.P14046026542326773812

`A000032(n+1)+40*A000045(n+1)`
-/

namespace A157194.P14046026542326773812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 40 * A000045 (n + 1)

end

end A157194.P14046026542326773812

namespace A157194

/-- `A000032(n+1)+40*A000045(n+1)` -/
def P14046026542326773812.Spec : Prop :=
  ∀ n, P14046026542326773812.a n = A157194 n

end A157194

/-!
# A157195: a(n) = 0 if n is 1 or a prime, otherwise a(n) = product of the proper divisors of n.

The programs for A157195, there is no canonical definition to state claims against.
-/

/-! ## A157195.P9336777010972617737

`(∏{d}[n+1, #]/(n+1))%(∏{d}[n+1, #]-n)`
-/

namespace A157195.P9336777010972617737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n : ℤ))

end

end A157195.P9336777010972617737

/-! ## A157195.P16181045001603613112

`lcm(∏{d}[n+1, #]/(n+1), ∑{e}[∑{e}[n+1, #], #])`
-/

namespace A157195.P16181045001603613112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A157195.P16181045001603613112

/-! ## A157195.P14094748087211046362

`∏{d}[n+1, #]/(n+1)*floor(atan(∑{e}[n+1, #]))`
-/

namespace A157195.P14094748087211046362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) * (⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋ : ℚ)

end

end A157195.P14094748087211046362

/-! ## A157195.P4125006890320447546

`xor(∏{d}[n+1, #]/(n+1), ∑{e}[n+1, #]!%2)`
-/

namespace A157195.P4125006890320447546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2 : ℕ) : ℤ)

end

end A157195.P4125006890320447546

/-! ## A157195.P9451508637821056692

`and(∏{d}[n+1, #]/(n+1), -floor(atan(∑{e}[n+1, #])))`
-/

namespace A157195.P9451508637821056692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (-⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋)

end

end A157195.P9451508637821056692

/-! ## A157195.P880725177848085648

`∏{d}[n+1, #]/(n+1)-C(n, ∑{d}[n+1, #-1])`
-/

namespace A157195.P880725177848085648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) - (Nat.choose n (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)).toNat : ℚ)

end

end A157195.P880725177848085648

/-! ## A157195.P8250673285989944743

`∏{d}[n+1, #]/(n+1)-C(∏{p}[n+1, #], ∏{d}[n+1, #])`
-/

namespace A157195.P8250673285989944743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) - (Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) (∏ d ∈ Nat.divisors (f3 n), d) : ℚ)

end

end A157195.P8250673285989944743

/-! ## A157195.P7750769026974327663

`∏{d}[n+1, #]/(n+1)*floor(atan(∏{d}[n+1, #]/(n+1)))`
-/

namespace A157195.P7750769026974327663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) * (⌊Real.arctan (((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ) : ℝ)⌋ : ℚ)

end

end A157195.P7750769026974327663

/-! ## A157195.P13191834371864376570

`∏{d}[n+1, #]/(n+1)-A008683(∏{e}[n+1, 3*2^#])`
-/

namespace A157195.P13191834371864376570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) - (A008683 (∏ p ∈ Nat.primeFactors (f2 n), 3 * 2 ^ Nat.factorization (f2 n) p) : ℚ)

end

end A157195.P13191834371864376570

/-!
# A157196: a(n) = (1/2)*(sum of elements of n-th run) using 1 and 2 starting with 1,1.

The programs for A157196, the canonical program `A157196.P8047915011435990987` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157196 has offset 1).

The definition of A157196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157196.P8047915011435990987

`A006466(ceil(5*n/3))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157196

/-- `A006466(ceil(5*n/3))` -/
def P8047915011435990987.Spec : Prop :=
  ∀ n, P8047915011435990987.a n = A157196 (n + 1)

theorem P8047915011435990987.correct : P8047915011435990987.Spec := by
  intro n
  simp only [A157196, Nat.add_sub_cancel]

end A157196

/-! ## A157196.P4152994090643913548

`char[∑[A004200(n+1)]]+1`
-/

namespace A157196.P4152994090643913548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A157196.P4152994090643913548

namespace A157196

/-- `char[∑[A004200(n+1)]]+1` -/
def P4152994090643913548.Spec : Prop :=
  ∀ n, (P4152994090643913548.a n : ℤ) = A157196 (n + 1)

end A157196

/-!
# A157198: Integers n such that by inserting between their digits + or - or * or / or ^ or nothing (i.e., concatenate two digits) you recover n back in a nontrivial way.

The programs for A157198, there is no canonical definition to state claims against.
-/

/-! ## A157198.P9349745575460095901

`A080035(A325705(n)+A275972(3*n+4))`
-/

namespace A157198.P9349745575460095901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080035 (A325705 n + A275972 (3 * n + 4)).toNat

end

end A157198.P9349745575460095901

