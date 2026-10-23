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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A160700: a(n) = if n

The programs for A160700, there is no canonical definition to state claims against.
-/

/-! ## A160700.P17383101871024991210

`A161440(n+1)-A008598(n)`
-/

namespace A160700.P17383101871024991210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) - A008598 n

end

end A160700.P17383101871024991210

/-! ## A160700.P11931545387235381477

`A125169(n)-A161455(n+1)`
-/

namespace A160700.P11931545387235381477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n - A161455 (n + 1)

end

end A160700.P11931545387235381477

/-! ## A160700.P15821763679890394605

`A161440(n+1)%A004277(n)`
-/

namespace A160700.P15821763679890394605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161440 (n + 1)) (A004277 n)

end

end A160700.P15821763679890394605

/-! ## A160700.P4052356368063217053

`xor(A051062(n), A161448(n+1))`
-/

namespace A160700.P4052356368063217053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051062 n) (A161448 (n + 1))

end

end A160700.P4052356368063217053

/-! ## A160700.P7560958217287884814

`xor(A082285(n), A161453(n+1))`
-/

namespace A160700.P7560958217287884814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082285 n) (A161453 (n + 1))

end

end A160700.P7560958217287884814

/-! ## A160700.P17368396064242031932

`xor(A106839(n), A161451(n+1))`
-/

namespace A160700.P17368396064242031932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106839 n) (A161451 (n + 1))

end

end A160700.P17368396064242031932

/-! ## A160700.P17859035368610345174

`xor(A158057(n), A161441(n+1))`
-/

namespace A160700.P17859035368610345174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158057 n) (A161441 (n + 1))

end

end A160700.P17859035368610345174

/-! ## A160700.P13345776090877657929

`and(A161440(n+1), A181404(n+1))`
-/

namespace A160700.P13345776090877657929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161440 (n + 1)) (A181404 (n + 1))

end

end A160700.P13345776090877657929

/-! ## A160700.P15198063310826771119

`xor(A098502(n+1), A161452(n+1))`
-/

namespace A160700.P15198063310826771119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098502 (n + 1)) (A161452 (n + 1))

end

end A160700.P15198063310826771119

/-! ## A160700.P15400278259267296141

`xor(A119413(n+1), A161444(n+1))`
-/

namespace A160700.P15400278259267296141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119413 (n + 1)) (A161444 (n + 1))

end

end A160700.P15400278259267296141

/-! ## A160700.P10246715251472516767

`A130909(A161440(n+1))`
-/

namespace A160700.P10246715251472516767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A161440 (n + 1)).toNat

end

end A160700.P10246715251472516767

/-!
# A160702: Sequence such that the Hankel transform of a(n+1) satisfies a generalized Somos-4 recurrence.

The programs for A160702, there is no canonical definition to state claims against.
-/

/-! ## A160702.P17915298182153135150

`A008647(Δ[A149760(n)])`
-/

namespace A160702.P17915298182153135150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (f1 (n + 1) - f1 n).toNat

end

end A160702.P17915298182153135150

/-! ## A160702.P14320020427380552188

`A162226(A143464(n)+1)`
-/

namespace A160702.P14320020427380552188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A143464 n + 1).toNat

end

end A160702.P14320020427380552188

/-! ## A160702.P12343496941837802283

`A008676(A102129(n)+4)`
-/

namespace A160702.P12343496941837802283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A102129 n + 4).toNat

end

end A160702.P12343496941837802283

/-!
# A160703: Generalized Somos-4 Hankel determinant recurrence sequence.

The programs for A160703, the canonical program `A160703.P14833704579567330649` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160703 has offset 0).

The definition of A160703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160703.P14833704579567330649

`(4*a(n-1)*a(n-3)+24*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=4, a(2)=20, a(3)=464`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160703

/-- `(4*a(n-1)*a(n-3)+24*a(n-2)²)/a(n-4)` -/
def P14833704579567330649.Spec : Prop :=
  ∀ n, P14833704579567330649.a n = (A160703 n : ℚ)

end A160703

/-!
# A160704: Jacobsthal sequence A001045 convolved with A139251 (first differences of toothpick numbers).

The programs for A160704, there is no canonical definition to state claims against.
-/

/-! ## A160704.P11507638538142082219

`Δ[A255747(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A160704.P11507638538142082219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A160704.P11507638538142082219

/-! ## A160704.P5267553416270114780

`A160552(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A160704.P5267553416270114780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160552 (n + 1) + 2 * a (n - 1)

end

end A160704.P5267553416270114780

/-! ## A160704.P15117654515581865680

`A266529(2*(n+2))+2*a(n-1)` with `a(0)=1`
-/

namespace A160704.P15117654515581865680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266529 (2 * (n + 2)) + 2 * a (n - 1)

end

end A160704.P15117654515581865680

/-!
# A160706: Hankel transform of A052702(n+1).

The programs for A160706, the canonical program `A160706.P11268429903863111269` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160706 has offset 0).

The definition of A160706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160706.P11268429903863111269

`(A057079(n)-A099254(n))*A057078(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160706

/-- `(A057079(n)-A099254(n))*A057078(n)` -/
def P11268429903863111269.Spec : Prop :=
  ∀ n, P11268429903863111269.a n = A160706 n

theorem P11268429903863111269.correct : P11268429903863111269.Spec := by
  intro n
  simp only [A160706]

end A160706

/-! ## A160706.P4011501812895838606

`(2-A194960(n+2))*A010892(n+1)`
-/

namespace A160706.P4011501812895838606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A194960 (n + 2)) * A010892 (n + 1)

end

end A160706.P4011501812895838606

namespace A160706

/-- `(2-A194960(n+2))*A010892(n+1)` -/
def P4011501812895838606.Spec : Prop :=
  ∀ n, P4011501812895838606.a n = A160706 n

end A160706

/-! ## A160706.P5629074614428556605

`(A004523(n+1)-n)*A010892(n+1)`
-/

namespace A160706.P5629074614428556605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004523 (n + 1) - (n : ℤ)) * A010892 (n + 1)

end

end A160706.P5629074614428556605

namespace A160706

/-- `(A004523(n+1)-n)*A010892(n+1)` -/
def P5629074614428556605.Spec : Prop :=
  ∀ n, P5629074614428556605.a n = A160706 n

end A160706

/-! ## A160706.P16253708849131888418

`(n-2*A004396(n))*A010892(n+1)`
-/

namespace A160706.P16253708849131888418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 * A004396 n) * A010892 (n + 1)

end

end A160706.P16253708849131888418

namespace A160706

/-- `(n-2*A004396(n))*A010892(n+1)` -/
def P16253708849131888418.Spec : Prop :=
  ∀ n, P16253708849131888418.a n = A160706 n

end A160706

/-! ## A160706.P12692211927917401998

`(A010892(n)-A057079(n+1))*A002264(n)`
-/

namespace A160706.P12692211927917401998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010892 n - A057079 (n + 1)) * A002264 n

end

end A160706.P12692211927917401998

namespace A160706

/-- `(A010892(n)-A057079(n+1))*A002264(n)` -/
def P12692211927917401998.Spec : Prop :=
  ∀ n, P12692211927917401998.a n = A160706 n

end A160706

/-! ## A160706.P9764874206247766898

`A010892(n+1)-A057078(n)*A099254(n)`
-/

namespace A160706.P9764874206247766898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) - A057078 n * A099254 n

end

end A160706.P9764874206247766898

namespace A160706

/-- `A010892(n+1)-A057078(n)*A099254(n)` -/
def P9764874206247766898.Spec : Prop :=
  ∀ n, P9764874206247766898.a n = A160706 n

end A160706

/-! ## A160706.P5277107133073649410

`(A099254(n)-A057079(n))*A049347(n+1)`
-/

namespace A160706.P5277107133073649410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099254 n - A057079 n) * A049347 (n + 1)

end

end A160706.P5277107133073649410

namespace A160706

/-- `(A099254(n)-A057079(n))*A049347(n+1)` -/
def P5277107133073649410.Spec : Prop :=
  ∀ n, P5277107133073649410.a n = A160706 n

end A160706

/-! ## A160706.P4922723943944432728

`(A049347(n)-A171088(n))*A010892(n+1)`
-/

namespace A160706.P4922723943944432728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 n - A171088 n) * A010892 (n + 1)

end

end A160706.P4922723943944432728

namespace A160706

/-- `(A049347(n)-A171088(n))*A010892(n+1)` -/
def P4922723943944432728.Spec : Prop :=
  ∀ n, P4922723943944432728.a n = A160706 n

end A160706

/-! ## A160706.P4674185939896649987

`(A130151(n)-A132798(n+1))*A002264(n)`
-/

namespace A160706.P4674185939896649987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130151 n - A132798 (n + 1)) * A002264 n

end

end A160706.P4674185939896649987

namespace A160706

/-- `(A130151(n)-A132798(n+1))*A002264(n)` -/
def P4674185939896649987.Spec : Prop :=
  ∀ n, P4674185939896649987.a n = A160706 n

end A160706

/-! ## A160706.P13063790854561922689

`A010892(n+1)+A049347(n+1)*A099254(n)`
-/

namespace A160706.P13063790854561922689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + A049347 (n + 1) * A099254 n

end

end A160706.P13063790854561922689

namespace A160706

/-- `A010892(n+1)+A049347(n+1)*A099254(n)` -/
def P13063790854561922689.Spec : Prop :=
  ∀ n, P13063790854561922689.a n = A160706 n

end A160706

/-! ## A160706.P12433794296752310330

`A010892(n+1)+A057078(n)*A099470(n+1)`
-/

namespace A160706.P12433794296752310330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + A057078 n * A099470 (n + 1)

end

end A160706.P12433794296752310330

namespace A160706

/-- `A010892(n+1)+A057078(n)*A099470(n+1)` -/
def P12433794296752310330.Spec : Prop :=
  ∀ n, P12433794296752310330.a n = A160706 n

end A160706

/-! ## A160706.P15908015647987935773

`(A011655(n)-A002264(n+1))*A010892(n+1)`
-/

namespace A160706.P15908015647987935773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 n - A002264 (n + 1)) * A010892 (n + 1)

end

end A160706.P15908015647987935773

namespace A160706

/-- `(A011655(n)-A002264(n+1))*A010892(n+1)` -/
def P15908015647987935773.Spec : Prop :=
  ∀ n, P15908015647987935773.a n = A160706 n

end A160706

/-! ## A160706.P2979632898554295190

`A010892(n+1)-A008611(n)*A010892(n+1)`
-/

namespace A160706.P2979632898554295190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) - A008611 n * A010892 (n + 1)

end

end A160706.P2979632898554295190

namespace A160706

/-- `A010892(n+1)-A008611(n)*A010892(n+1)` -/
def P2979632898554295190.Spec : Prop :=
  ∀ n, P2979632898554295190.a n = A160706 n

end A160706

/-! ## A160706.P10733028448035164211

`A010892(n+1)-A008620(n)*A010892(n+1)`
-/

namespace A160706.P10733028448035164211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) - A008620 n * A010892 (n + 1)

end

end A160706.P10733028448035164211

namespace A160706

/-- `A010892(n+1)-A008620(n)*A010892(n+1)` -/
def P10733028448035164211.Spec : Prop :=
  ∀ n, P10733028448035164211.a n = A160706 n

end A160706

/-! ## A160706.P13705524845739414255

`(A022003(n+1)-A002264(n))*A010892(n+1)`
-/

namespace A160706.P13705524845739414255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022003 (n + 1) - A002264 n) * A010892 (n + 1)

end

end A160706.P13705524845739414255

namespace A160706

/-- `(A022003(n+1)-A002264(n))*A010892(n+1)` -/
def P13705524845739414255.Spec : Prop :=
  ∀ n, P13705524845739414255.a n = A160706 n

end A160706

/-! ## A160706.P4449709363142955100

`(A128834(n+1)-A057079(n+1))*A002264(n)`
-/

namespace A160706.P4449709363142955100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128834 (n + 1) - A057079 (n + 1)) * A002264 n

end

end A160706.P4449709363142955100

namespace A160706

/-- `(A128834(n+1)-A057079(n+1))*A002264(n)` -/
def P4449709363142955100.Spec : Prop :=
  ∀ n, P4449709363142955100.a n = A160706 n

end A160706

/-! ## A160706.P10349889138075343819

`(A057078(n+1)-A002264(n+1))*A010892(n+1)`
-/

namespace A160706.P10349889138075343819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 (n + 1) - A002264 (n + 1)) * A010892 (n + 1)

end

end A160706.P10349889138075343819

namespace A160706

/-- `(A057078(n+1)-A002264(n+1))*A010892(n+1)` -/
def P10349889138075343819.Spec : Prop :=
  ∀ n, P10349889138075343819.a n = A160706 n

end A160706

/-! ## A160706.P11385560362708350739

`A010892(n+1)-A049347(n+1)*A099470(n+1)`
-/

namespace A160706.P11385560362708350739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) - A049347 (n + 1) * A099470 (n + 1)

end

end A160706.P11385560362708350739

namespace A160706

/-- `A010892(n+1)-A049347(n+1)*A099470(n+1)` -/
def P11385560362708350739.Spec : Prop :=
  ∀ n, P11385560362708350739.a n = A160706 n

end A160706

/-! ## A160706.P4954057258447689010

`(1-A002264(n+3))*A010892(n+1)`
-/

namespace A160706.P4954057258447689010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002264 (n + 3)) * A010892 (n + 1)

end

end A160706.P4954057258447689010

namespace A160706

/-- `(1-A002264(n+3))*A010892(n+1)` -/
def P4954057258447689010.Spec : Prop :=
  ∀ n, P4954057258447689010.a n = A160706 n

end A160706

/-! ## A160706.P9206177181231798564

`A002264(n)*A010892(n+4)`
-/

namespace A160706.P9206177181231798564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A010892 (n + 4)

end

end A160706.P9206177181231798564

namespace A160706

/-- `A002264(n)*A010892(n+4)` -/
def P9206177181231798564.Spec : Prop :=
  ∀ n, P9206177181231798564.a n = A160706 n

end A160706

/-!
# A160707: Convolution square root of the Robbins sequence, A005130, starting with offset 1.

The programs for A160707, there is no canonical definition to state claims against.
-/

/-! ## A160707.P2785214748370681187

`A160708(∑[n+1])`
-/

namespace A160707.P2785214748370681187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160708 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160707.P2785214748370681187

/-! ## A160707.P13719911650157839464

`A081418(n)*A160708(A000217(n+1))`
-/

namespace A160707.P13719911650157839464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081418 n * A160708 (A000217 (n + 1)).toNat

end

end A160707.P13719911650157839464

/-! ## A160707.P11415805411354443178

`A160708(A000096(n)+1)-A269850(n+1)`
-/

namespace A160707.P11415805411354443178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160708 (A000096 n + 1).toNat - A269850 (n + 1)

end

end A160707.P11415805411354443178

/-! ## A160707.P4963276843426871020

`A160708(A000217(n+1))-A269850(n+1)`
-/

namespace A160707.P4963276843426871020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160708 (A000217 (n + 1)).toNat - A269850 (n + 1)

end

end A160707.P4963276843426871020

/-!
# A160708: Convolution triangle by rows, row sums = the Robbins sequence, A005130 starting with offset 1.

The programs for A160708, there is no canonical definition to state claims against.
-/

/-! ## A160708.P17684209526018784944

`A323622(A098361(n))`
-/

namespace A160708.P17684209526018784944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323622 (A098361 n).toNat

end

end A160708.P17684209526018784944

/-!
# A160709: Centuries containing a prime number of primes.

The programs for A160709, there is no canonical definition to state claims against.
-/

/-! ## A160709.P17821594411475444705

`eq[1, ∑{e}[A038822(abs(1-n)), #]]`
-/

namespace A160709.P17821594411475444705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160709.P17821594411475444705

/-! ## A160709.P12152853991635567993

`eq[2, A000005(A038822(n))]+1`
-/

namespace A160709.P12152853991635567993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038822 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160709.P12152853991635567993

/-! ## A160709.P17143228669877377868

`eq[2, A000005(A038822(abs(1-n)))]`
-/

namespace A160709.P17143228669877377868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038822 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160709.P17143228669877377868

/-! ## A160709.P14722302727189392599

`eq[2, A001222(A038822(abs(1-n))²)]`
-/

namespace A160709.P14722302727189392599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038822 |1 - (n : ℤ)|.toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160709.P14722302727189392599

/-! ## A160709.P11904748456654221751

`eq[2, A001222(A038822(n+1)²)]+2`
-/

namespace A160709.P11904748456654221751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038822 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A160709.P11904748456654221751

/-!
# A160711: Cyclops squares: squares (A000290) that are also cyclops numbers (A134808).

The programs for A160711, there is no canonical definition to state claims against.
-/

/-! ## A160711.P11629499519030842418

`A239589(n+1)²`
-/

namespace A160711.P11629499519030842418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239589 (n + 1) ^ 2

end

end A160711.P11629499519030842418

/-! ## A160711.P16172540488299037398

`A239589(2*n+1-n)*A239589(n+1)`
-/

namespace A160711.P16172540488299037398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239589 (2 * n + 1 - n) * A239589 (n + 1)

end

end A160711.P16172540488299037398

/-! ## A160711.P11248829144786544010

`A239589(n+1)^A020639(A017293(n))`
-/

namespace A160711.P11248829144786544010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239589 (n + 1) : ℚ) ^ (A020639 (A017293 n).toNat : ℤ)

end

end A160711.P11248829144786544010

/-! ## A160711.P8889538412214893171

`A239589(n+1)^A000122(A008833(n+1))`
-/

namespace A160711.P8889538412214893171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239589 (n + 1) : ℚ) ^ (A000122 (A008833 (n + 1)).toNat : ℤ)

end

end A160711.P8889538412214893171

/-! ## A160711.P1371809756381462819

`A239589(n+1)^A020639(A001223(n+1))`
-/

namespace A160711.P1371809756381462819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239589 (n + 1) : ℚ) ^ (A020639 (A001223 (n + 1)).toNat : ℤ)

end

end A160711.P1371809756381462819

/-! ## A160711.P7665807158032768

`A239589(n+1)%A239589(n+2)*A239589(n+1)`
-/

namespace A160711.P7665807158032768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239589 (n + 1)) (A239589 (n + 2)) * A239589 (n + 1)

end

end A160711.P7665807158032768

/-! ## A160711.P3529697185892076538

`A239589(n+1)^A020639(A008864(n+1))`
-/

namespace A160711.P3529697185892076538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239589 (n + 1) : ℚ) ^ (A020639 (A008864 (n + 1)).toNat : ℤ)

end

end A160711.P3529697185892076538

/-! ## A160711.P16424679188933956972

`A239589(n+1)^A000005(A091209(n+1))`
-/

namespace A160711.P16424679188933956972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239589 (n + 1) : ℚ) ^ (A000005 (A091209 (n + 1)).toNat : ℤ)

end

end A160711.P16424679188933956972

/-! ## A160711.P14368041604523262678

`A239589(n+1)^A000005(A091206(n+1))`
-/

namespace A160711.P14368041604523262678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239589 (n + 1) : ℚ) ^ (A000005 (A091206 (n + 1)).toNat : ℤ)

end

end A160711.P14368041604523262678

/-! ## A160711.P16348275498270256579

`A000290(A239589(1+n))`
-/

namespace A160711.P16348275498270256579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A239589 (1 + n)).toNat

end

end A160711.P16348275498270256579

/-! ## A160711.P16820554109705392209

`A008794(2*A239589(n+1))`
-/

namespace A160711.P16820554109705392209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A239589 (n + 1)).toNat

end

end A160711.P16820554109705392209

/-! ## A160711.P2003183925980772736

`A008794(A239589(n+1)+A239589(n+1)+1)`
-/

namespace A160711.P2003183925980772736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A239589 (n + 1) + (A239589 (n + 1) + 1)).toNat

end

end A160711.P2003183925980772736

/-!
# A160712: Composite cyclops numbers (A134808).

The programs for A160712, there is no canonical definition to state claims against.
-/

/-! ## A160712.P8865049461522137652

`filter[A134808(n+2), A005171(#)]`
-/

namespace A160712.P8865049461522137652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A160712.P8865049461522137652

/-! ## A160712.P7623285438762375523

`filter[A134808(n+2), A066247(#)]`
-/

namespace A160712.P7623285438762375523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A160712.P7623285438762375523

/-! ## A160712.P12523228184927524896

`filter[A134808(n+2), A202238(#)]`
-/

namespace A160712.P12523228184927524896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A160712.P12523228184927524896

/-! ## A160712.P13424165372743750106

`∩[A134808(n+1), A199991(n+1)]`
-/

namespace A160712.P13424165372743750106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P13424165372743750106

/-! ## A160712.P11620669784576537128

`filter[A134808(n+2), A174898(#)]`
-/

namespace A160712.P11620669784576537128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A160712.P11620669784576537128

/-! ## A160712.P12862396842413132213

`∩[A002808(n+1), A134808(n+1)]`
-/

namespace A160712.P12862396842413132213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P12862396842413132213

/-! ## A160712.P11115998903053392979

`∩[A018252(n+1), A134808(n+1)]`
-/

namespace A160712.P11115998903053392979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P11115998903053392979

/-! ## A160712.P10005526302351888571

`∩[A134808(n+1), A199978(n+1)]`
-/

namespace A160712.P10005526302351888571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P10005526302351888571

/-! ## A160712.P11717749208972064534

`∩[A024619(n+1), A134808(n+1)]`
-/

namespace A160712.P11717749208972064534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P11717749208972064534

/-! ## A160712.P1692963948916518842

`∩[A056653(n+1), A134808(n+1)]`
-/

namespace A160712.P1692963948916518842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P1692963948916518842

/-! ## A160712.P368133756735540303

`∩[A065090(n+1), A134808(n+1)]`
-/

namespace A160712.P368133756735540303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P368133756735540303

/-! ## A160712.P3345191358689589532

`∩[A080257(n+1), A134808(n+1)]`
-/

namespace A160712.P3345191358689589532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P3345191358689589532

/-! ## A160712.P16881817908967081508

`∩[A134808(n+1), A138592(n+1)]`
-/

namespace A160712.P16881817908967081508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P16881817908967081508

/-! ## A160712.P14069862085611490705

`∩[A134808(n+1), A139118(n+1)]`
-/

namespace A160712.P14069862085611490705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P14069862085611490705

/-! ## A160712.P13414372242378661662

`∩[A134808(n+1), A171581(n+1)]`
-/

namespace A160712.P13414372242378661662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P13414372242378661662

/-! ## A160712.P9237651854240156670

`∩[A268388(n+1), A134808(n+1)]`
-/

namespace A160712.P9237651854240156670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160712.P9237651854240156670

/-!
# A160713: 3 times numbers of Gould's sequence: a(n) = A001316(n)*3.

The programs for A160713, the canonical program `A160713.P13545516001355508578` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160713 has offset 0).

The definition of A160713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160713.P13545516001355508578

`A001316(n)*3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160713

/-- `A001316(n)*3` -/
def P13545516001355508578.Spec : Prop :=
  ∀ n, P13545516001355508578.a n = A160713 n

theorem P13545516001355508578.correct : P13545516001355508578.Spec := by
  intro n
  simp only [A160713]

end A160713

/-! ## A160713.P17995156331491745849

`2*a(and(n, n-1))` with `a(0)=3`
-/

namespace A160713.P17995156331491745849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A160713.P17995156331491745849

namespace A160713

/-- `2*a(and(n, n-1))` -/
def P17995156331491745849.Spec : Prop :=
  ∀ n, (P17995156331491745849.a n : ℤ) = A160713 n

end A160713

/-! ## A160713.P11416421168368363627

`2*a(or(n, -n)+n)` with `a(0)=3`
-/

namespace A160713.P11416421168368363627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (Int.lor (n : ℤ) (-(n : ℤ)) + (n : ℤ)).toNat

end

end A160713.P11416421168368363627

namespace A160713

/-- `2*a(or(n, -n)+n)` -/
def P11416421168368363627.Spec : Prop :=
  ∀ n, (P11416421168368363627.a n : ℤ) = A160713 n

end A160713

/-! ## A160713.P17406663592484188614

`2*a(n-2^val(n, 2))` with `a(0)=3`
-/

namespace A160713.P17406663592484188614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 2 ^ SequenceMachineLib.valuation n 2)

end

end A160713.P17406663592484188614

namespace A160713

/-- `2*a(n-2^val(n, 2))` -/
def P17406663592484188614.Spec : Prop :=
  ∀ n, (P17406663592484188614.a n : ℤ) = A160713 n

end A160713

/-! ## A160713.P17471921239780259369

`2*a(n-2^floor(log2(n)))` with `a(0)=3`
-/

namespace A160713.P17471921239780259369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 2 ^ Nat.log 2 n)

end

end A160713.P17471921239780259369

namespace A160713

/-- `2*a(n-2^floor(log2(n)))` -/
def P17471921239780259369.Spec : Prop :=
  ∀ n, (P17471921239780259369.a n : ℤ) = A160713 n

end A160713

/-! ## A160713.P5299425019365888032

`floor(2/acot(a(and(n, n-1))))` with `a(0)=3`
-/

namespace A160713.P5299425019365888032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊2 / SequenceMachineLib.acot (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℝ)⌋

end

end A160713.P5299425019365888032

namespace A160713

/-- `floor(2/acot(a(and(n, n-1))))` -/
def P5299425019365888032.Spec : Prop :=
  ∀ n, P5299425019365888032.a n = A160713 n

end A160713

/-! ## A160713.P8921811075667499468

`4/abs(2/a(and(n, n-1)))` with `a(0)=3`
-/

namespace A160713.P8921811075667499468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 / |2 / a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

end

end A160713.P8921811075667499468

namespace A160713

/-- `4/abs(2/a(and(n, n-1)))` -/
def P8921811075667499468.Spec : Prop :=
  ∀ n, P8921811075667499468.a n = (A160713 n : ℚ)

end A160713

/-! ## A160713.P4197684887423732956

`-(2*2*a(n-1)/xor(n, -n))` with `a(0)=3`
-/

namespace A160713.P4197684887423732956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  -(2 * (2 * (a (n - 1) / (Int.xor (n : ℤ) (-(n : ℤ)) : ℚ))))

end

end A160713.P4197684887423732956

namespace A160713

/-- `-(2*2*a(n-1)/xor(n, -n))` -/
def P4197684887423732956.Spec : Prop :=
  ∀ n, P4197684887423732956.a n = (A160713 n : ℚ)

end A160713

/-! ## A160713.P4734685119888971739

`A256257(n)/2`
-/

namespace A160713.P4734685119888971739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256257 n : ℚ) / 2

end

end A160713.P4734685119888971739

namespace A160713

/-- `A256257(n)/2` -/
def P4734685119888971739.Spec : Prop :=
  ∀ n, P4734685119888971739.a n = (A160713 n : ℚ)

end A160713

/-! ## A160713.P13497697622181926369

`3*sqrt(A102376(n))`
-/

namespace A160713.P13497697622181926369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A102376 n : ℝ)

end

end A160713.P13497697622181926369

namespace A160713

/-- `3*sqrt(A102376(n))` -/
def P13497697622181926369.Spec : Prop :=
  ∀ n, P13497697622181926369.a n = (A160713 n : ℝ)

end A160713

/-! ## A160713.P4991894500290886855

`Δ[A256256(n)/2]`
-/

namespace A160713.P4991894500290886855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256256 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160713.P4991894500290886855

namespace A160713

/-- `Δ[A256256(n)/2]` -/
def P4991894500290886855.Spec : Prop :=
  ∀ n, P4991894500290886855.a n = (A160713 n : ℚ)

end A160713

/-! ## A160713.P15267475999820656082

`A160723(n+1)+2`
-/

namespace A160713.P15267475999820656082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160723 (n + 1) + 2

end

end A160713.P15267475999820656082

namespace A160713

/-- `A160723(n+1)+2` -/
def P15267475999820656082.Spec : Prop :=
  ∀ n, P15267475999820656082.a n = A160713 n

end A160713

/-! ## A160713.P3703963168686729529

`3*(A038573(n)+1)`
-/

namespace A160713.P3703963168686729529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A038573 n + 1)

end

end A160713.P3703963168686729529

namespace A160713

/-- `3*(A038573(n)+1)` -/
def P3703963168686729529.Spec : Prop :=
  ∀ n, P3703963168686729529.a n = A160713 n

end A160713

/-! ## A160713.P482051197592362293

`3*A060632(2*n)`
-/

namespace A160713.P482051197592362293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060632 (2 * n)

end

end A160713.P482051197592362293

namespace A160713

/-- `3*A060632(2*n)` -/
def P482051197592362293.Spec : Prop :=
  ∀ n, P482051197592362293.a n = A160713 n

end A160713

/-! ## A160713.P12831626397234291938

`3/2*A117973(n)`
-/

namespace A160713.P12831626397234291938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A117973 n : ℚ)

end

end A160713.P12831626397234291938

namespace A160713

/-- `3/2*A117973(n)` -/
def P12831626397234291938.Spec : Prop :=
  ∀ n, P12831626397234291938.a n = (A160713 n : ℚ)

end A160713

/-! ## A160713.P4013314107884625324

`3*2^A000120(n)`
-/

namespace A160713.P4013314107884625324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A000120 n : ℤ)

end

end A160713.P4013314107884625324

namespace A160713

/-- `3*2^A000120(n)` -/
def P4013314107884625324.Spec : Prop :=
  ∀ n, P4013314107884625324.a n = (A160713 n : ℚ)

end A160713

/-! ## A160713.P10307353688636063078

`3*(n+1-A048967(n))`
-/

namespace A160713.P10307353688636063078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) - A048967 n)

end

end A160713.P10307353688636063078

namespace A160713

/-- `3*(n+1-A048967(n))` -/
def P10307353688636063078.Spec : Prop :=
  ∀ n, P10307353688636063078.a n = A160713 n

end A160713

/-! ## A160713.P15722179933243153458

`A002516(A001316(n))`
-/

namespace A160713.P15722179933243153458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002516 (A001316 n).toNat

end

end A160713.P15722179933243153458

namespace A160713

/-- `A002516(A001316(n))` -/
def P15722179933243153458.Spec : Prop :=
  ∀ n, P15722179933243153458.a n = A160713 n

end A160713

/-! ## A160713.P87962338408662825

`A007283(A000120(n))`
-/

namespace A160713.P87962338408662825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A000120 n).toNat

end

end A160713.P87962338408662825

namespace A160713

/-- `A007283(A000120(n))` -/
def P87962338408662825.Spec : Prop :=
  ∀ n, P87962338408662825.a n = A160713 n

end A160713

/-! ## A160713.P6330891518053245219

`A003945(A000120(n)+1)`
-/

namespace A160713.P6330891518053245219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A000120 n + 1).toNat

end

end A160713.P6330891518053245219

namespace A160713

/-- `A003945(A000120(n)+1)` -/
def P6330891518053245219.Spec : Prop :=
  ∀ n, P6330891518053245219.a n = A160713 n

end A160713

/-!
# A160714: T-toothpick sequence starting at the corner of an infinite square, but with angle = Pi/4.

The programs for A160714, there is no canonical definition to state claims against.
-/

/-! ## A160714.P6270098169757027395

`A160716(n)/2`
-/

namespace A160714.P6270098169757027395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160716 n : ℚ) / 2

end

end A160714.P6270098169757027395

/-! ## A160714.P40763344708772517

`A160724(n)/3`
-/

namespace A160714.P40763344708772517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160724 n : ℚ) / 3

end

end A160714.P40763344708772517

/-! ## A160714.P4890520763292370017

`A160726(n)/4`
-/

namespace A160714.P4890520763292370017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160726 n : ℚ) / 4

end

end A160714.P4890520763292370017

/-! ## A160714.P7515021577881151383

`A001281(A160716(n))`
-/

namespace A160714.P7515021577881151383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160716 n).toNat

end

end A160714.P7515021577881151383

/-! ## A160714.P14043108970135748376

`A002264(A160724(n))`
-/

namespace A160714.P14043108970135748376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A160724 n).toNat

end

end A160714.P14043108970135748376

/-!
# A160715: Y-toothpick sequence (as A160120) but without internal propagation in the structure.

The programs for A160715, there is no canonical definition to state claims against.
-/

/-! ## A160715.P13679088282249328106

`A160120(n)-A173068(n)`
-/

namespace A160715.P13679088282249328106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n - A173068 n

end

end A160715.P13679088282249328106

/-! ## A160715.P7273636859594824440

`A160157(n)/2-A173068(n)`
-/

namespace A160715.P7273636859594824440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160157 n : ℚ) / 2 - (A173068 n : ℚ)

end

end A160715.P7273636859594824440

/-! ## A160715.P16510951689550454264

`A160167(n)/3-A173068(n)`
-/

namespace A160715.P16510951689550454264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160167 n : ℚ) / 3 - (A173068 n : ℚ)

end

end A160715.P16510951689550454264

/-! ## A160715.P15312236095308157312

`A253770(n)/6-A173068(n)`
-/

namespace A160715.P15312236095308157312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253770 n : ℚ) / 6 - (A173068 n : ℚ)

end

end A160715.P15312236095308157312

/-! ## A160715.P17461569600411215393

`∑[A253771(n)/6]-A173068(n)`
-/

namespace A160715.P17461569600411215393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253771 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A173068 n : ℚ)

end

end A160715.P17461569600411215393

/-!
# A160716: a(n) = A160714(n)*2.

The programs for A160716, there is no canonical definition to state claims against.
-/

/-! ## A160716.P12456375982103128815

`A160714(n)*2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160716.P12456375982103128815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160714 n * 2

end

end A160716.P12456375982103128815

/-! ## A160716.P7008512076274589930

`A160726(n)/2`
-/

namespace A160716.P7008512076274589930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160726 n : ℚ) / 2

end

end A160716.P7008512076274589930

/-! ## A160716.P12774535163760229023

`2/3*A160724(n)`
-/

namespace A160716.P12774535163760229023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A160724 n : ℚ)

end

end A160716.P12774535163760229023

/-! ## A160716.P11140277558839050751

`A001281(A160726(n))`
-/

namespace A160716.P11140277558839050751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160726 n).toNat

end

end A160716.P11140277558839050751

/-! ## A160716.P3877723869020389873

`A004396(A160724(n))`
-/

namespace A160716.P3877723869020389873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A160724 n).toNat

end

end A160716.P3877723869020389873

/-!
# A160717: Cyclops triangular numbers.

The programs for A160717, there is no canonical definition to state claims against.
-/

/-! ## A160717.P1257107881841284302

`∩[A134808(n+1), A000217(n)]`
-/

namespace A160717.P1257107881841284302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160717.P1257107881841284302

/-! ## A160717.P9707266407660941347

`∩[A134808(n+1), A253145(n)]`
-/

namespace A160717.P9707266407660941347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160717.P9707266407660941347

/-! ## A160717.P8409741564467967581

`∩[A134808(n+1), A186783(n+1)]`
-/

namespace A160717.P8409741564467967581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160717.P8409741564467967581

/-! ## A160717.P6019455984987668555

`∩[2*A000292(n)-A000330(n), A134808(n+1)]`
-/

namespace A160717.P6019455984987668555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n - A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160717.P6019455984987668555

/-!
# A160718: a(n) = A160406(n+2)/2.

The programs for A160718, there is no canonical definition to state claims against.
-/

/-! ## A160718.P12512396298180787142

`A160719(n)+1`
-/

namespace A160718.P12512396298180787142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160719 n + 1

end

end A160718.P12512396298180787142

/-! ## A160718.P17929046049916695773

`A160406(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160718.P17929046049916695773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160406 (n + 2) : ℚ) / 2

end

end A160718.P17929046049916695773

/-! ## A160718.P9215490463470840649

`A160740(n+2)/8`
-/

namespace A160718.P9215490463470840649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160740 (n + 2) : ℚ) / 8

end

end A160718.P9215490463470840649

/-! ## A160718.P14163500967921902346

`∑[A160418(round(acot(n)+n))]`
-/

namespace A160718.P14163500967921902346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160418 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160718.P14163500967921902346

/-! ## A160718.P12856942218087047516

`A160418(n)+a(n-1)` with `a(0)=1`
-/

namespace A160718.P12856942218087047516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160418 n + a (n - 1)

end

end A160718.P12856942218087047516

/-! ## A160718.P7502787547033540423

`record[A160406(abs(2-n))/2]`
-/

namespace A160718.P7502787547033540423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160406 |2 - (n : ℤ)|.toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160718.P7502787547033540423

/-! ## A160718.P17055164812111868788

`∑[ceil(A255045(n+1)/2)]`
-/

namespace A160718.P17055164812111868788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A255045 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160718.P17055164812111868788

/-! ## A160718.P5630220484109986893

`∑[ceil(A160407(n+2)/2)]`
-/

namespace A160718.P5630220484109986893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160407 (n + 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160718.P5630220484109986893

/-! ## A160718.P2244311294816486620

`A001281(A160406(n+2))`
-/

namespace A160718.P2244311294816486620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160406 (n + 2)).toNat

end

end A160718.P2244311294816486620

/-! ## A160718.P8766229210139322328

`∑[A008621(A151704(n+1))]`
-/

namespace A160718.P8766229210139322328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A151704 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160718.P8766229210139322328

/-!
# A160719: a(n) = A160406(n+2)/2 - 1.

The programs for A160719, there is no canonical definition to state claims against.
-/

/-! ## A160719.P14426638624620935585

`A160406(n+2)/2-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160719.P14426638624620935585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160406 (n + 2) : ℚ) / 2 - 1

end

end A160719.P14426638624620935585

/-! ## A160719.P2248539555744270271

`A160718(n)-1`
-/

namespace A160719.P2248539555744270271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160718 n - 1

end

end A160719.P2248539555744270271

/-! ## A160719.P11902414326870190269

`A160418(n)+a(n-1)` with `a(0)=0`
-/

namespace A160719.P11902414326870190269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160418 n + a (n - 1)

end

end A160719.P11902414326870190269

/-! ## A160719.P7000087982996146657

`∑[floor(A160407(n+2)/2)]`
-/

namespace A160719.P7000087982996146657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160407 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160719.P7000087982996146657

/-! ## A160719.P10235362260962025956

`∑[round(A151704(n+1)/4)]`
-/

namespace A160719.P10235362260962025956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A151704 (n + 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160719.P10235362260962025956

/-! ## A160719.P12297546243151917

`∑[A160418(round(acot(n)+n))]-1`
-/

namespace A160719.P12297546243151917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160418 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160719.P12297546243151917

/-! ## A160719.P16269356727088879573

`∑[ceil(A255045(n+1)/2)]-1`
-/

namespace A160719.P16269356727088879573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A255045 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160719.P16269356727088879573

/-! ## A160719.P5468646141046547749

`A023443(A160718(n))`
-/

namespace A160719.P5468646141046547749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A160718 n).toNat

end

end A160719.P5468646141046547749

/-! ## A160719.P13898586502309215477

`∑[A008647(A151569(n+1))]`
-/

namespace A160719.P13898586502309215477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A151569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160719.P13898586502309215477

/-! ## A160719.P438283303220724985

`A004524(∑[A160407(n+2)])`
-/

namespace A160719.P438283303220724985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160719.P438283303220724985

/-!
# A160720: Number of "ON" cells at n-th stage in 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A160720, the canonical program `A160720.P4472755102912290844` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160720 has offset 0).

The definition of A160720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160720.P2326368281427578903

`2*A151566(2*n)-A004273(2*n)`
-/

namespace A160720.P2326368281427578903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151566 (2 * n) - A004273 (2 * n)

end

end A160720.P2326368281427578903

namespace A160720

/-- `2*A151566(2*n)-A004273(2*n)` -/
def P2326368281427578903.Spec : Prop :=
  ∀ n, P2326368281427578903.a n = A160720 n

end A160720

/-! ## A160720.P5282490655184634113

`A004273(n)²-A266384(A004273(n))`
-/

namespace A160720.P5282490655184634113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 2 - A266384 (A004273 n).toNat

end

end A160720.P5282490655184634113

namespace A160720

/-- `A004273(n)²-A266384(A004273(n))` -/
def P5282490655184634113.Spec : Prop :=
  ∀ n, P5282490655184634113.a n = A160720 n

end A160720

/-! ## A160720.P10221973016167680366

`A266532(n)+A267700(n)-A038573(n)`
-/

namespace A160720.P10221973016167680366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266532 n + (A267700 n - A038573 n)

end

end A160720.P10221973016167680366

namespace A160720

/-- `A266532(n)+A267700(n)-A038573(n)` -/
def P10221973016167680366.Spec : Prop :=
  ∀ n, P10221973016167680366.a n = A160720 n

end A160720

/-! ## A160720.P4472755102912290844

`∑[A001316(A008574(n)-1)]-A008574(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160720

/-- `∑[A001316(A008574(n)-1)]-A008574(n)` -/
def P4472755102912290844.Spec : Prop :=
  ∀ n, P4472755102912290844.a n = A160720 n

theorem P4472755102912290844.correct : P4472755102912290844.Spec := by
  intro n
  simp only [A160720]

end A160720

/-! ## A160720.P556009843119436013

`A006046(2*n)+A006046(n)-A004273(2*n)`
-/

namespace A160720.P556009843119436013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (2 * n) + (A006046 n - A004273 (2 * n))

end

end A160720.P556009843119436013

namespace A160720

/-- `A006046(2*n)+A006046(n)-A004273(2*n)` -/
def P556009843119436013.Spec : Prop :=
  ∀ n, P556009843119436013.a n = A160720 n

end A160720

/-! ## A160720.P11092605672232321006

`2*A151566(2*n)-A266664(2*n)`
-/

namespace A160720.P11092605672232321006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151566 (2 * n) - A266664 (2 * n)

end

end A160720.P11092605672232321006

namespace A160720

/-- `2*A151566(2*n)-A266664(2*n)` -/
def P11092605672232321006.Spec : Prop :=
  ∀ n, P11092605672232321006.a n = A160720 n

end A160720

/-! ## A160720.P11716042604583542916

`A004277(A080978(n)-A004277(n))-1`
-/

namespace A160720.P11716042604583542916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A080978 n - A004277 n).toNat - 1

end

end A160720.P11716042604583542916

namespace A160720

/-- `A004277(A080978(n)-A004277(n))-1` -/
def P11716042604583542916.Spec : Prop :=
  ∀ n, P11716042604583542916.a n = A160720 n

end A160720

/-! ## A160720.P17947199186922940241

`A004273(2*A006046(n)-A004273(n))`
-/

namespace A160720.P17947199186922940241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A006046 n - A004273 n).toNat

end

end A160720.P17947199186922940241

namespace A160720

/-- `A004273(2*A006046(n)-A004273(n))` -/
def P17947199186922940241.Spec : Prop :=
  ∀ n, P17947199186922940241.a n = A160720 n

end A160720

/-! ## A160720.P14424576341344219997

`A004273(A151566(2*n)-A004273(n))`
-/

namespace A160720.P14424576341344219997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151566 (2 * n) - A004273 n).toNat

end

end A160720.P14424576341344219997

namespace A160720

/-- `A004273(A151566(2*n)-A004273(n))` -/
def P14424576341344219997.Spec : Prop :=
  ∀ n, P14424576341344219997.a n = A160720 n

end A160720

/-! ## A160720.P16974437210579397256

`A004273(A006046(n)+A006046(n)-A004273(n))`
-/

namespace A160720.P16974437210579397256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A006046 n + (A006046 n - A004273 n)).toNat

end

end A160720.P16974437210579397256

namespace A160720

/-- `A004273(A006046(n)+A006046(n)-A004273(n))` -/
def P16974437210579397256.Spec : Prop :=
  ∀ n, P16974437210579397256.a n = A160720 n

end A160720

/-! ## A160720.P9188297333266923573

`A004273(A006046(n)-(A004273(n)-A006046(n)))`
-/

namespace A160720.P9188297333266923573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A006046 n - (A004273 n - A006046 n)).toNat

end

end A160720.P9188297333266923573

namespace A160720

/-- `A004273(A006046(n)-(A004273(n)-A006046(n)))` -/
def P9188297333266923573.Spec : Prop :=
  ∀ n, P9188297333266923573.a n = A160720 n

end A160720

/-! ## A160720.P441637952417439990

`A004773(A266532(n))`
-/

namespace A160720.P441637952417439990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A266532 n).toNat

end

end A160720.P441637952417439990

namespace A160720

/-- `A004773(A266532(n))` -/
def P441637952417439990.Spec : Prop :=
  ∀ n, P441637952417439990.a n = A160720 n

end A160720

/-! ## A160720.P15282205671221468783

`record[A286473(A006046(n+1))-A286473(n+1)]`
-/

namespace A160720.P15282205671221468783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286473 (A006046 (n + 1)).toNat - A286473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160720.P15282205671221468783

namespace A160720

/-- `record[A286473(A006046(n+1))-A286473(n+1)]` -/
def P15282205671221468783.Spec : Prop :=
  ∀ n, P15282205671221468783.a n = A160720 n

end A160720

/-! ## A160720.P4672895888802300262

`A004396(∑[A295559(2*n+1)]-A295559(2*n+1))`
-/

namespace A160720.P4672895888802300262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295559 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j - A295559 (2 * n + 1)).toNat

end

end A160720.P4672895888802300262

namespace A160720

/-- `A004396(∑[A295559(2*n+1)]-A295559(2*n+1))` -/
def P4672895888802300262.Spec : Prop :=
  ∀ n, P4672895888802300262.a n = A160720 n

end A160720

/-!
# A160721: First differences of A160720.

The programs for A160721, there is no canonical definition to state claims against.
-/

/-! ## A160721.P14566176453623732003

`lcm(2, a(and(n, n-1))+1)+2` with `a(0)=1`
-/

namespace A160721.P14566176453623732003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1) + 2

end

end A160721.P14566176453623732003

/-! ## A160721.P4480505741041489278

`or(2, 2*a(and(n, n-1)))+2` with `a(0)=1`
-/

namespace A160721.P4480505741041489278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 2 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + 2

end

end A160721.P4480505741041489278

/-! ## A160721.P16755722864159290966

`or(4, lcm(4, 2*a(and(n, n-1))))` with `a(0)=1`
-/

namespace A160721.P16755722864159290966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 4 (Nat.lcm 4 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A160721.P16755722864159290966

/-! ## A160721.P5714382140881343899

`and(2*(a(and(n, n-1))+2), -3)` with `a(0)=1`
-/

namespace A160721.P5714382140881343899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (2 * (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 2)) (-3)

end

end A160721.P5714382140881343899

/-! ## A160721.P6277738866783920792

`4*ceil((a(and(n, n-1))+1)/2)` with `a(0)=1`
-/

namespace A160721.P6277738866783920792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ⌈(a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1 : ℚ) / 2⌉

end

end A160721.P6277738866783920792

/-! ## A160721.P5730653757938334776

`or(4, (n%2+1)*a(floor(n/2)))` with `a(0)=1, a(1)=4`
-/

namespace A160721.P5730653757938334776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lor 4 ((n % 2 + 1) * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A160721.P5730653757938334776

/-! ## A160721.P8439214236003996008

`∑{d}[char[2^n]+2*a(and(n, n-1)), #]` with `a(0)=1`
-/

namespace A160721.P8439214236003996008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A160721.P8439214236003996008

/-! ## A160721.P5757908064404945254

`Δ[A160720(n)]`
-/

namespace A160721.P5757908064404945254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160721.P5757908064404945254

/-! ## A160721.P3320274830176178043

`∑{d}[A151787(n+1), #]`
-/

namespace A160721.P3320274830176178043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A160721.P3320274830176178043

/-! ## A160721.P14267676057793635874

`∑{d}[3*A000010(2*a(and(n, n-1))), #]` with `a(0)=1`
-/

namespace A160721.P14267676057793635874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * A000010 (2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A160721.P14267676057793635874

/-!
# A160722: Number of "ON" cells at n-th stage in a certain 2-dimensional cellular automaton based on Sierpinski triangles (see Comments for precise definition).

The programs for A160722, the canonical program `A160722.P10602755746573012121` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160722 has offset 0).

The definition of A160722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160722.P10602755746573012121

`3*A006046(n)-2*n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160722

/-- `3*A006046(n)-2*n` -/
def P10602755746573012121.Spec : Prop :=
  ∀ n, P10602755746573012121.a n = A160722 n

theorem P10602755746573012121.correct : P10602755746573012121.Spec := by
  intro n
  simp only [A160722]

end A160722

/-! ## A160722.P18422753113002668846

`3*∑[n-A261366(n)]+n`
-/

namespace A160722.P18422753113002668846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A160722.P18422753113002668846

namespace A160722

/-- `3*∑[n-A261366(n)]+n` -/
def P18422753113002668846.Spec : Prop :=
  ∀ n, P18422753113002668846.a n = A160722 n

end A160722

/-! ## A160722.P16616823435433959906

`∑[A160723(A000007(n)+n)]-1`
-/

namespace A160722.P16616823435433959906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160723 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160722.P16616823435433959906

namespace A160722

/-- `∑[A160723(A000007(n)+n)]-1` -/
def P16616823435433959906.Spec : Prop :=
  ∀ n, P16616823435433959906.a n = A160722 n

end A160722

/-! ## A160722.P4245793939775321319

`∑[A160723(n+1)]-A160723(n+1)`
-/

namespace A160722.P4245793939775321319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160723 (n + 1)

end

end A160722.P4245793939775321319

namespace A160722

/-- `∑[A160723(n+1)]-A160723(n+1)` -/
def P4245793939775321319.Spec : Prop :=
  ∀ n, P4245793939775321319.a n = A160722 n

end A160722

/-! ## A160722.P9096156608810948702

`A159912(n)+A267700(n)-A038573(n)`
-/

namespace A160722.P9096156608810948702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159912 n + (A267700 n - A038573 n)

end

end A160722.P9096156608810948702

namespace A160722

/-- `A159912(n)+A267700(n)-A038573(n)` -/
def P9096156608810948702.Spec : Prop :=
  ∀ n, P9096156608810948702.a n = A160722 n

end A160722

/-! ## A160722.P10851747806720266671

`record[A006046(n)-lcm(2, n)]`
-/

namespace A160722.P10851747806720266671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160722.P10851747806720266671

namespace A160722

/-- `record[A006046(n)-lcm(2, n)]` -/
def P10851747806720266671.Spec : Prop :=
  ∀ n, P10851747806720266671.a n = A160722 n

end A160722

/-! ## A160722.P8820940762975948886

`A006046(2*n)-A005843(n)`
-/

namespace A160722.P8820940762975948886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (2 * n) - A005843 n

end

end A160722.P8820940762975948886

namespace A160722

/-- `A006046(2*n)-A005843(n)` -/
def P8820940762975948886.Spec : Prop :=
  ∀ n, P8820940762975948886.a n = A160722 n

end A160722

/-! ## A160722.P3181834668430420882

`A267700(comp[2*(n+1)])`
-/

namespace A160722.P3181834668430420882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A160722.P3181834668430420882

namespace A160722

/-- `A267700(comp[2*(n+1)])` -/
def P3181834668430420882.Spec : Prop :=
  ∀ n, P3181834668430420882.a n = A160722 n

end A160722

/-! ## A160722.P4640690835765197178

`record[and(1, n)*A267700(n)]`
-/

namespace A160722.P4640690835765197178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A267700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160722.P4640690835765197178

namespace A160722

/-- `record[and(1, n)*A267700(n)]` -/
def P4640690835765197178.Spec : Prop :=
  ∀ n, P4640690835765197178.a n = A160722 n

end A160722

/-! ## A160722.P4681850786219494595

`record[A006046(n)-A059029(n)]`
-/

namespace A160722.P4681850786219494595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n - A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160722.P4681850786219494595

namespace A160722

/-- `record[A006046(n)-A059029(n)]` -/
def P4681850786219494595.Spec : Prop :=
  ∀ n, P4681850786219494595.a n = A160722 n

end A160722

/-! ## A160722.P4775884376264851593

`record[A006046(n)-A026741(n)]-n`
-/

namespace A160722.P4775884376264851593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A160722.P4775884376264851593

namespace A160722

/-- `record[A006046(n)-A026741(n)]-n` -/
def P4775884376264851593.Spec : Prop :=
  ∀ n, P4775884376264851593.a n = A160722 n

end A160722

/-! ## A160722.P17736515819647911695

`A159912(n)+A160720(n)-A266532(n)`
-/

namespace A160722.P17736515819647911695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159912 n + (A160720 n - A266532 n)

end

end A160722.P17736515819647911695

namespace A160722

/-- `A159912(n)+A160720(n)-A266532(n)` -/
def P17736515819647911695.Spec : Prop :=
  ∀ n, P17736515819647911695.a n = A160722 n

end A160722

/-! ## A160722.P15081014445197126930

`A267700(2*n)-A038573(n)`
-/

namespace A160722.P15081014445197126930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 (2 * n) - A038573 n

end

end A160722.P15081014445197126930

namespace A160722

/-- `A267700(2*n)-A038573(n)` -/
def P15081014445197126930.Spec : Prop :=
  ∀ n, P15081014445197126930.a n = A160722 n

end A160722

/-! ## A160722.P4406522568564438352

`2*A048967(n)+A267700(2*n)-A048967(2*n)`
-/

namespace A160722.P4406522568564438352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048967 n + (A267700 (2 * n) - A048967 (2 * n))

end

end A160722.P4406522568564438352

namespace A160722

/-- `2*A048967(n)+A267700(2*n)-A048967(2*n)` -/
def P4406522568564438352.Spec : Prop :=
  ∀ n, P4406522568564438352.a n = A160722 n

end A160722

/-! ## A160722.P3539385777745613192

`record[A006046(A087627(n))-A087627(n)]`
-/

namespace A160722.P3539385777745613192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A087627 n).toNat - A087627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160722.P3539385777745613192

namespace A160722

/-- `record[A006046(A087627(n))-A087627(n)]` -/
def P3539385777745613192.Spec : Prop :=
  ∀ n, P3539385777745613192.a n = A160722 n

end A160722

/-! ## A160722.P15699526338513090565

`A160720(2*n)-A266532(2*n)`
-/

namespace A160722.P15699526338513090565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160720 (2 * n) - A266532 (2 * n)

end

end A160722.P15699526338513090565

namespace A160722

/-- `A160720(2*n)-A266532(2*n)` -/
def P15699526338513090565.Spec : Prop :=
  ∀ n, P15699526338513090565.a n = A160722 n

end A160722

/-! ## A160722.P3294658700266761304

`(A151566(A008574(n))-A008574(n))/2`
-/

namespace A160722.P3294658700266761304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151566 (A008574 n).toNat - A008574 n : ℚ) / 2

end

end A160722.P3294658700266761304

namespace A160722

/-- `(A151566(A008574(n))-A008574(n))/2` -/
def P3294658700266761304.Spec : Prop :=
  ∀ n, P3294658700266761304.a n = (A160722 n : ℚ)

end A160722

/-! ## A160722.P7670810507767398283

`(A151566(A008586(n))-A008586(n))/2`
-/

namespace A160722.P7670810507767398283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151566 (A008586 n).toNat - A008586 n : ℚ) / 2

end

end A160722.P7670810507767398283

namespace A160722

/-- `(A151566(A008586(n))-A008586(n))/2` -/
def P7670810507767398283.Spec : Prop :=
  ∀ n, P7670810507767398283.a n = (A160722 n : ℚ)

end A160722

/-! ## A160722.P13523536447103245113

`∩[A004273(n), A267700(n)]`
-/

namespace A160722.P13523536447103245113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160722.P13523536447103245113

namespace A160722

/-- `∩[A004273(n), A267700(n)]` -/
def P13523536447103245113.Spec : Prop :=
  ∀ n, (P13523536447103245113.a n : ℤ) = A160722 n

end A160722

/-! ## A160722.P13953926105075114028

`A032766(A080978(n))-(2*n+1)`
-/

namespace A160722.P13953926105075114028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A080978 n).toNat - (2 * n + 1 : ℤ)

end

end A160722.P13953926105075114028

namespace A160722

/-- `A032766(A080978(n))-(2*n+1)` -/
def P13953926105075114028.Spec : Prop :=
  ∀ n, P13953926105075114028.a n = A160722 n

end A160722

/-!
# A160723: First differences of A160722.

The programs for A160723, the canonical program `A160723.P3417646803809005033` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160723 has offset 1).

The definition of A160723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160723.P3417646803809005033

`3*A001316(n)-2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160723

/-- `3*A001316(n)-2` -/
def P3417646803809005033.Spec : Prop :=
  ∀ n, P3417646803809005033.a n = A160723 (n + 1)

theorem P3417646803809005033.correct : P3417646803809005033.Spec := by
  intro n
  simp only [A160723, Nat.add_sub_cancel]

end A160723

/-! ## A160723.P15423004422413474091

`2*(a(and(n, n-1))+1)` with `a(0)=1`
-/

namespace A160723.P15423004422413474091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

end

end A160723.P15423004422413474091

namespace A160723

/-- `2*(a(and(n, n-1))+1)` -/
def P15423004422413474091.Spec : Prop :=
  ∀ n, (P15423004422413474091.a n : ℤ) = A160723 (n + 1)

end A160723

/-! ## A160723.P8598699472155116089

`2*a(n-2^floor(log2(n)))+2` with `a(0)=1`
-/

namespace A160723.P8598699472155116089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 2 ^ Nat.log 2 n) + 2

end

end A160723.P8598699472155116089

namespace A160723

/-- `2*a(n-2^floor(log2(n)))+2` -/
def P8598699472155116089.Spec : Prop :=
  ∀ n, (P8598699472155116089.a n : ℤ) = A160723 (n + 1)

end A160723

/-! ## A160723.P586458797949201117

`2*(1-floor(-a(and(n, n-1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A160723.P586458797949201117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (-a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A160723.P586458797949201117

namespace A160723

/-- `2*(1-floor(-a(and(n, n-1))))` -/
def P586458797949201117.Spec : Prop :=
  ∀ n, P586458797949201117.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P1263569725827721134

`2*(1-ceil(-a(and(n, n-1))))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A160723.P1263569725827721134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (-a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A160723.P1263569725827721134

namespace A160723

/-- `2*(1-ceil(-a(and(n, n-1))))` -/
def P1263569725827721134.Spec : Prop :=
  ∀ n, P1263569725827721134.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P14485953462781919442

`2*(1-round(-a(and(n, n-1))))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A160723.P14485953462781919442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (-a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A160723.P14485953462781919442

namespace A160723

/-- `2*(1-round(-a(and(n, n-1))))` -/
def P14485953462781919442.Spec : Prop :=
  ∀ n, P14485953462781919442.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P3854247644693925031

`4/abs(2/a(and(n, n-1)))+2` with `a(0)=1`
-/

namespace A160723.P3854247644693925031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 / |2 / a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat| + 2

end

end A160723.P3854247644693925031

namespace A160723

/-- `4/abs(2/a(and(n, n-1)))+2` -/
def P3854247644693925031.Spec : Prop :=
  ∀ n, P3854247644693925031.a n = (A160723 (n + 1) : ℚ)

end A160723

/-! ## A160723.P15331393702875000150

`A160713(n)-2`
-/

namespace A160723.P15331393702875000150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160713 n - 2

end

end A160723.P15331393702875000150

namespace A160723

/-- `A160713(n)-2` -/
def P15331393702875000150.Spec : Prop :=
  ∀ n, P15331393702875000150.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P8336851403049829724

`3*A038573(n)+1`
-/

namespace A160723.P8336851403049829724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038573 n + 1

end

end A160723.P8336851403049829724

namespace A160723

/-- `3*A038573(n)+1` -/
def P8336851403049829724.Spec : Prop :=
  ∀ n, P8336851403049829724.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P4970231333983451400

`A256257(n)/2-2`
-/

namespace A160723.P4970231333983451400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256257 n : ℚ) / 2 - 2

end

end A160723.P4970231333983451400

namespace A160723

/-- `A256257(n)/2-2` -/
def P4970231333983451400.Spec : Prop :=
  ∀ n, P4970231333983451400.a n = (A160723 (n + 1) : ℚ)

end A160723

/-! ## A160723.P1961905365263799213

`Δ[A256256(n)/2]-2`
-/

namespace A160723.P1961905365263799213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256256 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A160723.P1961905365263799213

namespace A160723

/-- `Δ[A256256(n)/2]-2` -/
def P1961905365263799213.Spec : Prop :=
  ∀ n, P1961905365263799213.a n = (A160723 (n + 1) : ℚ)

end A160723

/-! ## A160723.P16976464718890399586

`3*2^A000120(n)-2`
-/

namespace A160723.P16976464718890399586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A000120 n : ℤ) - 2

end

end A160723.P16976464718890399586

namespace A160723

/-- `3*2^A000120(n)-2` -/
def P16976464718890399586.Spec : Prop :=
  ∀ n, P16976464718890399586.a n = (A160723 (n + 1) : ℚ)

end A160723

/-! ## A160723.P3295685599374251578

`2*(a(A006257(n)-1)+1)` with `a(0)=1`
-/

namespace A160723.P3295685599374251578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (A006257 n - 1).toNat + 1)

end

end A160723.P3295685599374251578

namespace A160723

/-- `2*(a(A006257(n)-1)+1)` -/
def P3295685599374251578.Spec : Prop :=
  ∀ n, (P3295685599374251578.a n : ℤ) = A160723 (n + 1)

end A160723

/-! ## A160723.P10513852417061140833

`2*(a(n%A053644(n))+1)` with `a(0)=1`
-/

namespace A160723.P10513852417061140833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (Int.tmod (n : ℤ) (A053644 n)).toNat + 1)

end

end A160723.P10513852417061140833

namespace A160723

/-- `2*(a(n%A053644(n))+1)` -/
def P10513852417061140833.Spec : Prop :=
  ∀ n, (P10513852417061140833.a n : ℤ) = A160723 (n + 1)

end A160723

/-! ## A160723.P1256764470135752952

`A028837(A001316(n))`
-/

namespace A160723.P1256764470135752952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (A001316 n).toNat

end

end A160723.P1256764470135752952

namespace A160723

/-- `A028837(A001316(n))` -/
def P1256764470135752952.Spec : Prop :=
  ∀ n, P1256764470135752952.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P4779861590561810350

`A033484(A000120(n))`
-/

namespace A160723.P4779861590561810350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (A000120 n).toNat

end

end A160723.P4779861590561810350

namespace A160723

/-- `A033484(A000120(n))` -/
def P4779861590561810350.Spec : Prop :=
  ∀ n, P4779861590561810350.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P11341461462067197630

`A016777(A038573(n))`
-/

namespace A160723.P11341461462067197630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A038573 n).toNat

end

end A160723.P11341461462067197630

namespace A160723

/-- `A016777(A038573(n))` -/
def P11341461462067197630.Spec : Prop :=
  ∀ n, P11341461462067197630.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P8843015449842647048

`A296953(A063787(n+1))`
-/

namespace A160723.P8843015449842647048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 (A063787 (n + 1)).toNat

end

end A160723.P8843015449842647048

namespace A160723

/-- `A296953(A063787(n+1))` -/
def P8843015449842647048.Spec : Prop :=
  ∀ n, P8843015449842647048.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P16050060677542555043

`A016777(A001316(n)-1)`
-/

namespace A160723.P16050060677542555043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A001316 n - 1).toNat

end

end A160723.P16050060677542555043

namespace A160723

/-- `A016777(A001316(n)-1)` -/
def P16050060677542555043.Spec : Prop :=
  ∀ n, P16050060677542555043.a n = A160723 (n + 1)

end A160723

/-! ## A160723.P17723087882750435632

`A027383(2*A000120(n))`
-/

namespace A160723.P17723087882750435632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * A000120 n).toNat

end

end A160723.P17723087882750435632

namespace A160723

/-- `A027383(2*A000120(n))` -/
def P17723087882750435632.Spec : Prop :=
  ∀ n, P17723087882750435632.a n = A160723 (n + 1)

end A160723

/-!
# A160724: a(n) = A160714(n)*3.

The programs for A160724, there is no canonical definition to state claims against.
-/

/-! ## A160724.P11240734295128476015

`A160714(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160724.P11240734295128476015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160714 n * 3

end

end A160724.P11240734295128476015

/-! ## A160724.P1997041445122893694

`3/2*A160716(n)`
-/

namespace A160724.P1997041445122893694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A160716 n : ℚ)

end

end A160724.P1997041445122893694

/-! ## A160724.P4094538297851728653

`3/4*A160726(n)`
-/

namespace A160724.P4094538297851728653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A160726 n : ℚ)

end

end A160724.P4094538297851728653

/-! ## A160724.P1432092563400266388

`A006368(A160716(n))`
-/

namespace A160724.P1432092563400266388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A160716 n).toNat

end

end A160724.P1432092563400266388

/-! ## A160724.P9997587460566353441

`A008585(A160714(n))`
-/

namespace A160724.P9997587460566353441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A160714 n).toNat

end

end A160724.P9997587460566353441

/-!
# A160725: Cyclops semiprimes.

The programs for A160725, there is no canonical definition to state claims against.
-/

/-! ## A160725.P3842840028764632405

`∩[A001358(n+1), A134808(n+1)]`
-/

namespace A160725.P3842840028764632405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P3842840028764632405

/-! ## A160725.P13419107025520894353

`∩[A001358(n+1), A160712(n+1)]`
-/

namespace A160725.P13419107025520894353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P13419107025520894353

/-! ## A160725.P12829769179521395298

`filter[A160712(n+1), A064911(#)]`
-/

namespace A160725.P12829769179521395298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A160725.P12829769179521395298

/-! ## A160725.P2166194733658535824

`filter[A160712(n+1), A101040(#)]`
-/

namespace A160725.P2166194733658535824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A160725.P2166194733658535824

/-! ## A160725.P679687571751046522

`filter[A160712(n+1), A353799(#)]`
-/

namespace A160725.P679687571751046522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A160725.P679687571751046522

/-! ## A160725.P13698621578939425392

`filter[A134808(n+2), A064911(#)]`
-/

namespace A160725.P13698621578939425392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A160725.P13698621578939425392

/-! ## A160725.P17215610570025666790

`∩[A176540(n+1), A134808(n+1)]`
-/

namespace A160725.P17215610570025666790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P17215610570025666790

/-! ## A160725.P17402281585823332413

`∩[A134808(n+1), A323644(n+1)]`
-/

namespace A160725.P17402281585823332413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P17402281585823332413

/-! ## A160725.P1252545001667956631

`∩[A134808(n+1), A346041(n+1)]`
-/

namespace A160725.P1252545001667956631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P1252545001667956631

/-! ## A160725.P4837510820074820055

`∩[A160712(n+1), A346041(n+1)]`
-/

namespace A160725.P4837510820074820055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P4837510820074820055

/-! ## A160725.P3626292967258468794

`∩[A007964(n+1), A160712(n+1)]`
-/

namespace A160725.P3626292967258468794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P3626292967258468794

/-! ## A160725.P6612898156248430256

`∩[A037143(n+1), A160712(n+1)]`
-/

namespace A160725.P6612898156248430256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P6612898156248430256

/-! ## A160725.P1072509884022675594

`∩[A084116(n+1), A160712(n+1)]`
-/

namespace A160725.P1072509884022675594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P1072509884022675594

/-! ## A160725.P2780357163663325320

`∩[A160712(n+1), A167171(n+1)]`
-/

namespace A160725.P2780357163663325320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P2780357163663325320

/-! ## A160725.P9014655491874427982

`∩[A160712(n+1), A354144(n+1)]`
-/

namespace A160725.P9014655491874427982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160725.P9014655491874427982

/-!
# A160726: a(n) = A160714(n)*4.

The programs for A160726, there is no canonical definition to state claims against.
-/

/-! ## A160726.P10204803669607165975

`A160714(n)*4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160726.P10204803669607165975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160714 n * 4

end

end A160726.P10204803669607165975

/-! ## A160726.P5028614289907580311

`2*A160716(n)`
-/

namespace A160726.P5028614289907580311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160716 n

end

end A160726.P5028614289907580311

/-! ## A160726.P6686026938207734077

`4/3*A160724(n)`
-/

namespace A160726.P6686026938207734077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A160724 n : ℚ)

end

end A160726.P6686026938207734077

/-! ## A160726.P1996862277013867805

`A005843(A160716(n))`
-/

namespace A160726.P1996862277013867805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160716 n).toNat

end

end A160726.P1996862277013867805

/-! ## A160726.P13744739665670678762

`A008586(A160714(n))`
-/

namespace A160726.P13744739665670678762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A160714 n).toNat

end

end A160726.P13744739665670678762

/-!
# A160727: a(n) = A161415(n+1)/4.

The programs for A160727, the canonical program `A160727.P938032724718537716` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160727 has offset 1).

The definition of A160727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160727.P3581856249073713495

`A161415(n+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160727.P3581856249073713495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161415 (n + 2) : ℚ) / 4

end

end A160727.P3581856249073713495

namespace A160727

/-- `A161415(n+2)/4` -/
def P3581856249073713495.Spec : Prop :=
  ∀ n, P3581856249073713495.a n = (A160727 (n + 1) : ℚ)

end A160727

/-! ## A160727.P5014243769616488788

`Δ[A130665(n)-2^floor(log2(n+1))]`
-/

namespace A160727.P5014243769616488788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n - (2 ^ Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160727.P5014243769616488788

namespace A160727

/-- `Δ[A130665(n)-2^floor(log2(n+1))]` -/
def P5014243769616488788.Spec : Prop :=
  ∀ n, P5014243769616488788.a n = A160727 (n + 1)

end A160727

/-! ## A160727.P15904578867898350683

`A048883(n+1)-Δ[2^floor(log2(n+1))]`
-/

namespace A160727.P15904578867898350683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A160727.P15904578867898350683

namespace A160727

/-- `A048883(n+1)-Δ[2^floor(log2(n+1))]` -/
def P15904578867898350683.Spec : Prop :=
  ∀ n, P15904578867898350683.a n = A160727 (n + 1)

end A160727

/-! ## A160727.P938032724718537716

`Δ[A130665(n)]-A135416(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A160727

/-- `Δ[A130665(n)]-A135416(n+1)` -/
def P938032724718537716.Spec : Prop :=
  ∀ n, P938032724718537716.a n = A160727 (n + 1)

theorem P938032724718537716.correct : P938032724718537716.Spec := by
  intro n
  simp only [A160727, Nat.add_sub_cancel]

end A160727

/-! ## A160727.P11980277154150235115

`Δ[A219954(n+1)]`
-/

namespace A160727.P11980277154150235115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160727.P11980277154150235115

namespace A160727

/-- `Δ[A219954(n+1)]` -/
def P11980277154150235115.Spec : Prop :=
  ∀ n, P11980277154150235115.a n = A160727 (n + 1)

end A160727

/-! ## A160727.P15728941223276702976

`Δ[A160414(n+1)/4]`
-/

namespace A160727.P15728941223276702976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160414 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160727.P15728941223276702976

namespace A160727

/-- `Δ[A160414(n+1)/4]` -/
def P15728941223276702976.Spec : Prop :=
  ∀ n, P15728941223276702976.a n = (A160727 (n + 1) : ℚ)

end A160727

/-! ## A160727.P17064388999141254057

`A219954(n+2)-A219954(n+1)`
-/

namespace A160727.P17064388999141254057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219954 (n + 2) - A219954 (n + 1)

end

end A160727.P17064388999141254057

namespace A160727

/-- `A219954(n+2)-A219954(n+1)` -/
def P17064388999141254057.Spec : Prop :=
  ∀ n, P17064388999141254057.a n = A160727 (n + 1)

end A160727

/-! ## A160727.P8861951212021758839

`A151566(A071051(n+1))/2`
-/

namespace A160727.P8861951212021758839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151566 (A071051 (n + 1)).toNat : ℚ) / 2

end

end A160727.P8861951212021758839

namespace A160727

/-- `A151566(A071051(n+1))/2` -/
def P8861951212021758839.Spec : Prop :=
  ∀ n, P8861951212021758839.a n = (A160727 (n + 1) : ℚ)

end A160727

/-! ## A160727.P3014843344828864720

`Δ[A271016(2*n)/4]`
-/

namespace A160727.P3014843344828864720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271016 (2 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160727.P3014843344828864720

namespace A160727

/-- `Δ[A271016(2*n)/4]` -/
def P3014843344828864720.Spec : Prop :=
  ∀ n, P3014843344828864720.a n = (A160727 (n + 1) : ℚ)

end A160727

/-! ## A160727.P1809800843021112537

`Δ[A271016(A005843(n))]/4`
-/

namespace A160727.P1809800843021112537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271016 (A005843 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 4

end

end A160727.P1809800843021112537

namespace A160727

/-- `Δ[A271016(A005843(n))]/4` -/
def P1809800843021112537.Spec : Prop :=
  ∀ n, P1809800843021112537.a n = (A160727 (n + 1) : ℚ)

end A160727

/-! ## A160727.P4358356457716448819

`A002265(Δ[A271016(2*n)])`
-/

namespace A160727.P4358356457716448819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271016 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A160727.P4358356457716448819

namespace A160727

/-- `A002265(Δ[A271016(2*n)])` -/
def P4358356457716448819.Spec : Prop :=
  ∀ n, P4358356457716448819.a n = A160727 (n + 1)

end A160727

/-! ## A160727.P7489864651749615228

`A054576(Δ[A271016(2*n)])`
-/

namespace A160727.P7489864651749615228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271016 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f1 (n + 1) - f1 n).toNat

end

end A160727.P7489864651749615228

namespace A160727

/-- `A054576(Δ[A271016(2*n)])` -/
def P7489864651749615228.Spec : Prop :=
  ∀ n, P7489864651749615228.a n = A160727 (n + 1)

end A160727

/-!
# A160728: Toothpick cube: a(n) = A160408(n)*6.

The programs for A160728, there is no canonical definition to state claims against.
-/

/-! ## A160728.P965954604069668978

`A160408(n)*6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160728.P965954604069668978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160408 n * 6

end

end A160728.P965954604069668978

/-! ## A160728.P14984360694546586561

`∑[6*A173531(round(2*n/3))]`
-/

namespace A160728.P14984360694546586561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A173531 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160728.P14984360694546586561

/-! ## A160728.P16639172508902837194

`A008588(A160408(n))`
-/

namespace A160728.P16639172508902837194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A160408 n).toNat

end

end A160728.P16639172508902837194

/-! ## A160728.P11771830185867111055

`A145569(lcm(7, A160408(n)))`
-/

namespace A160728.P11771830185867111055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (Int.lcm 7 (A160408 n))

end

end A160728.P11771830185867111055

/-! ## A160728.P2622594522537473441

`6*∪[A125991(n+1), A368430(n)]`
-/

namespace A160728.P2622594522537473441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160728.P2622594522537473441

/-!
# A160729: First differences of A160728.

The programs for A160729, there is no canonical definition to state claims against.
-/

/-! ## A160729.P3050419033447003699

`A160409(n+1)*6`
-/

namespace A160729.P3050419033447003699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160409 (n + 1) * 6

end

end A160729.P3050419033447003699

/-! ## A160729.P726755640972343189

`Δ[A160728(n)]`
-/

namespace A160729.P726755640972343189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160729.P726755640972343189

/-! ## A160729.P583908197681192187

`Δ[6*A160408(n)]`
-/

namespace A160729.P583908197681192187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A160408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160729.P583908197681192187

/-! ## A160729.P5125252917570435758

`A008458(Δ[A160408(n)])`
-/

namespace A160729.P5125252917570435758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (f1 (n + 1) - f1 n).toNat

end

end A160729.P5125252917570435758

/-! ## A160729.P10734352434378664287

`A008588(Δ[A160408(n)])`
-/

namespace A160729.P10734352434378664287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (f1 (n + 1) - f1 n).toNat

end

end A160729.P10734352434378664287

/-!
# A160730: Toothpick sequence starting from a right angle formed by two toothpicks.

The programs for A160730, there is no canonical definition to state claims against.
-/

/-! ## A160730.P6489251360653964171

`∑[floor(A140472(A187211(n+1))/2)]`
-/

namespace A160730.P6489251360653964171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140472 (A187211 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160730.P6489251360653964171

/-! ## A160730.P16523874031552184088

`∑[A140472(A187211(n+1))/(A057427(n)+1)]-1`
-/

namespace A160730.P16523874031552184088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140472 (A187211 (n + 1)).toNat : ℚ) / (A057427 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160730.P16523874031552184088

/-! ## A160730.P15250356506946406532

`∑[A140472(A187211(n+1))/(2-A000007(n))]-1`
-/

namespace A160730.P15250356506946406532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140472 (A187211 (n + 1)).toNat : ℚ) / (2 - A000007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160730.P15250356506946406532

/-! ## A160730.P17701572633523638454

`∑[A054977(n)/2*A140472(A187211(n+1))]-1`
-/

namespace A160730.P17701572633523638454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054977 n : ℚ) / 2 * (A140472 (A187211 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160730.P17701572633523638454

/-! ## A160730.P1690994228287771513

`∑[A323647(n+1)]-1`
-/

namespace A160730.P1690994228287771513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160730.P1690994228287771513

/-! ## A160730.P5411650235485433635

`A004442(∑[A323647(n+1)])`
-/

namespace A160730.P5411650235485433635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160730.P5411650235485433635

/-! ## A160730.P15315213113464051166

`A273724(∑[A323647(n+1)])`
-/

namespace A160730.P15315213113464051166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160730.P15315213113464051166

/-! ## A160730.P12158276989030374663

`∑[A178334(n)*A323647(n+1)]`
-/

namespace A160730.P12158276989030374663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A323647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160730.P12158276989030374663

/-! ## A160730.P15299741194944598454

`∑[A000040(n+1)%2*A323647(n+1)]`
-/

namespace A160730.P15299741194944598454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A323647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160730.P15299741194944598454

/-!
# A160731: First differences of A160730.

The programs for A160731, there is no canonical definition to state claims against.
-/

/-! ## A160731.P7301494833389485610

`2*A168113(n+1)`
-/

namespace A160731.P7301494833389485610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168113 (n + 1)

end

end A160731.P7301494833389485610

/-! ## A160731.P8243238930581076124

`Δ[A160730(n)]`
-/

namespace A160731.P8243238930581076124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160731.P8243238930581076124

/-! ## A160731.P9452393498319818478

`A323647(n+2)`
-/

namespace A160731.P9452393498319818478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 2)

end

end A160731.P9452393498319818478

/-! ## A160731.P16465325175361708062

`Δ[A323646(n+1)]`
-/

namespace A160731.P16465325175361708062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160731.P16465325175361708062

/-! ## A160731.P8676021328662266213

`abs(Δ[A323646(-xor(n, -1))])`
-/

namespace A160731.P8676021328662266213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323646 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A160731.P8676021328662266213

/-! ## A160731.P15516220451325836470

`A004277(A168113(n+1))`
-/

namespace A160731.P15516220451325836470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A168113 (n + 1)).toNat

end

end A160731.P15516220451325836470

/-! ## A160731.P4582900509579360247

`A000267(A168113(n+1)²)`
-/

namespace A160731.P4582900509579360247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A168113 (n + 1) ^ 2).toNat

end

end A160731.P4582900509579360247

/-! ## A160731.P16447474502051520309

`A160730(n+1)-A160730(n)`
-/

namespace A160731.P16447474502051520309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 (n + 1) - A160730 n

end

end A160731.P16447474502051520309

/-! ## A160731.P2368479908399144405

`A170893(n+1)+A160407(n+1)`
-/

namespace A160731.P2368479908399144405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 (n + 1) + A160407 (n + 1)

end

end A160731.P2368479908399144405

/-! ## A160731.P9187560496418332232

`A323646(n+2)-A323646(n+1)`
-/

namespace A160731.P9187560496418332232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323646 (n + 2) - A323646 (n + 1)

end

end A160731.P9187560496418332232

/-!
# A160732: Toothpick sequence starting from a T formed by three toothpicks.

The programs for A160732, there is no canonical definition to state claims against.
-/

/-! ## A160732.P10038409555141380428

`A160733(n)+a(n-1)` with `a(0)=0`
-/

namespace A160732.P10038409555141380428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160733 n + a (n - 1)

end

end A160732.P10038409555141380428

/-! ## A160732.P9272355583569935027

`∑[A160733(A028310(n))]-3`
-/

namespace A160732.P9272355583569935027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160733 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A160732.P9272355583569935027

/-! ## A160732.P2617130403438399017

`∑[A160733(A233583(n+1))]-3`
-/

namespace A160732.P2617130403438399017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160733 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A160732.P2617130403438399017

/-! ## A160732.P13658188269217982494

`∑[A160733(A233583(n+1))%A160747(n)]`
-/

namespace A160732.P13658188269217982494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160733 (A233583 (n + 1)).toNat) (A160747 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160732.P13658188269217982494

/-! ## A160732.P4098459711933272686

`∑[A160733(n+1)]-A160733(n+1)`
-/

namespace A160732.P4098459711933272686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160733 (n + 1)

end

end A160732.P4098459711933272686

/-! ## A160732.P1804967077178676190

`A160162(n)+2*A160406(n)`
-/

namespace A160732.P1804967077178676190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n + 2 * A160406 n

end

end A160732.P1804967077178676190

/-! ## A160732.P14402171784774535821

`A160162(n)+A160740(n)/2`
-/

namespace A160732.P14402171784774535821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160162 n : ℚ) + (A160740 n : ℚ) / 2

end

end A160732.P14402171784774535821

/-! ## A160732.P9729301022027292029

`A160162(n)+A001281(A160740(n))`
-/

namespace A160732.P9729301022027292029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n + A001281 (A160740 n).toNat

end

end A160732.P9729301022027292029

/-! ## A160732.P4146129156696980951

`A160162(n)+A005843(A160406(n))`
-/

namespace A160732.P4146129156696980951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n + A005843 (A160406 n).toNat

end

end A160732.P4146129156696980951

/-! ## A160732.P15100592975200194611

`A160162(n)+A004396(A160738(n))`
-/

namespace A160732.P15100592975200194611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n + A004396 (A160738 n).toNat

end

end A160732.P15100592975200194611

/-!
# A160733: First differences of A160732.

The programs for A160733, there is no canonical definition to state claims against.
-/

/-! ## A160733.P1873785839119013553

`Δ[A160732(n)]`
-/

namespace A160733.P1873785839119013553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160733.P1873785839119013553

/-! ## A160733.P7997601124384510989

`A160732(n+1)-A160732(n)`
-/

namespace A160733.P7997601124384510989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160732 (n + 1) - A160732 n

end

end A160733.P7997601124384510989

/-! ## A160733.P1019881699758679676

`Δ[A160162(n)+2*A160406(n)]`
-/

namespace A160733.P1019881699758679676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n + 2 * A160406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160733.P1019881699758679676

/-! ## A160733.P13074092539061283995

`Δ[A160162(n)+A160740(n)/2]`
-/

namespace A160733.P13074092539061283995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160162 n : ℚ) + (A160740 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160733.P13074092539061283995

/-! ## A160733.P6313579468599005328

`A160163(n+1)+Δ[2*A160406(n)]`
-/

namespace A160733.P6313579468599005328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160163 (n + 1) + (f1 (n + 1) - f1 n)

end

end A160733.P6313579468599005328

/-! ## A160733.P9567476587856475674

`A160163(n+1)+Δ[A160740(n)/2]`
-/

namespace A160733.P9567476587856475674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160740 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160163 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A160733.P9567476587856475674

/-! ## A160733.P5389160950756235711

`A160163(n+1)+2*A160407(n+1)`
-/

namespace A160733.P5389160950756235711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160163 (n + 1) + 2 * A160407 (n + 1)

end

end A160733.P5389160950756235711

/-! ## A160733.P17733591113954698360

`Δ[A160162(n)+A001281(A160740(n))]`
-/

namespace A160733.P17733591113954698360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n + A001281 (A160740 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160733.P17733591113954698360

/-! ## A160733.P6637030936179429073

`Δ[A160162(n)+A005843(A160406(n))]`
-/

namespace A160733.P6637030936179429073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n + A005843 (A160406 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160733.P6637030936179429073

/-! ## A160733.P8834099665977542337

`A160163(n+1)+A004277(A160407(n+1))`
-/

namespace A160733.P8834099665977542337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160163 (n + 1) + A004277 (A160407 (n + 1)).toNat

end

end A160733.P8834099665977542337

/-!
# A160734: a(n) = (A160158(n+2)-4)/4.

The programs for A160734, there is no canonical definition to state claims against.
-/

/-! ## A160734.P3049816577223339005

`(A160158(n+2)-4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160734.P3049816577223339005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160158 (n + 2) - 4 : ℚ) / 4

end

end A160734.P3049816577223339005

/-! ## A160734.P15514635572194202467

`floor(sinh(log(A160162(n+2))))`
-/

namespace A160734.P15514635572194202467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A160162 (n + 2) : ℝ))⌋

end

end A160734.P15514635572194202467

/-! ## A160734.P9175465811591668616

`A160735(n)+a(n-1)` with `a(0)=0`
-/

namespace A160734.P9175465811591668616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160735 n + a (n - 1)

end

end A160734.P9175465811591668616

/-! ## A160734.P14505251276105205732

`∑[floor(A160163(n+2)/2)]`
-/

namespace A160734.P14505251276105205732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160163 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160734.P14505251276105205732

/-! ## A160734.P6591605798920970851

`floor(∑[A160159(n+2)]/4)`
-/

namespace A160734.P6591605798920970851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160159 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A160734.P6591605798920970851

/-!
# A160735: First differences of A160734.

The programs for A160735, there is no canonical definition to state claims against.
-/

/-! ## A160735.P14685649046354028423

`Δ[A160734(n)]`
-/

namespace A160735.P14685649046354028423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160735.P14685649046354028423

/-! ## A160735.P14503645771243694022

`A160163(n+3)/2`
-/

namespace A160735.P14503645771243694022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160163 (n + 3) : ℚ) / 2

end

end A160735.P14503645771243694022

/-! ## A160735.P10398362245197153499

`A160159(n+3)/4`
-/

namespace A160735.P10398362245197153499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160159 (n + 3) : ℚ) / 4

end

end A160735.P10398362245197153499

/-! ## A160735.P16036453984356612457

`Δ[A160162(n+2)/2]`
-/

namespace A160735.P16036453984356612457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160162 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160735.P16036453984356612457

/-! ## A160735.P17361324652709821578

`Δ[A160158(n+2)/4]`
-/

namespace A160735.P17361324652709821578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160158 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160735.P17361324652709821578

/-!
# A160736: Toothpick sequence starting from a right angle formed by 2 toothpicks: a(n)=A160406(n)*2.

The programs for A160736, there is no canonical definition to state claims against.
-/

/-! ## A160736.P11413049973797803939

`A160406(n)*2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160736.P11413049973797803939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n * 2

end

end A160736.P11413049973797803939

/-! ## A160736.P219918237664828309

`A160740(n)/2`
-/

namespace A160736.P219918237664828309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160740 n : ℚ) / 2

end

end A160736.P219918237664828309

/-! ## A160736.P7400919041714435064

`2/3*A160738(n)`
-/

namespace A160736.P7400919041714435064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A160738 n : ℚ)

end

end A160736.P7400919041714435064

/-! ## A160736.P8242728277719701212

`2*(∑[A160407(floor(acot(n)+n))]-1)`
-/

namespace A160736.P8242728277719701212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160736.P8242728277719701212

/-! ## A160736.P1385237670757934837

`2*(∑[A160407(round(acot(n)+n))]-1)`
-/

namespace A160736.P1385237670757934837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160736.P1385237670757934837

/-!
# A160737: 4*P_5(n), 4 times the Legendre Polynomial of order 5 at n.

The programs for A160737, the canonical program `A160737.P1513511003193026920` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160737 has offset 0).

The definition of A160737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160737.P1513511003193026920

`n*(63*n^4-70*n²+15)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160737

/-- `n*(63*n^4-70*n²+15)/2` -/
def P1513511003193026920.Spec : Prop :=
  ∀ n, P1513511003193026920.a n = (A160737 n : ℚ)

end A160737

/-!
# A160738: Toothpick sequence starting from a T formed by 3 toothpicks: a(n)=A160406(n)*3.

The programs for A160738, there is no canonical definition to state claims against.
-/

/-! ## A160738.P10460565060422327582

`A160406(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160738.P10460565060422327582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n * 3

end

end A160738.P10460565060422327582

/-! ## A160738.P7394424647146867122

`3/4*A160740(n)`
-/

namespace A160738.P7394424647146867122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A160740 n : ℚ)

end

end A160738.P7394424647146867122

/-! ## A160738.P10469830937656093700

`3*(∑[A160407(floor(acot(n)+n))]-1)`
-/

namespace A160738.P10469830937656093700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160738.P10469830937656093700

/-! ## A160738.P5950954115428640559

`3*(∑[A160407(round(acot(n)+n))]-1)`
-/

namespace A160738.P5950954115428640559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160738.P5950954115428640559

/-! ## A160738.P13565094640370324524

`3*(∑[A160407(abs(1-n)+1)]-1)`
-/

namespace A160738.P13565094640370324524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160738.P13565094640370324524

/-! ## A160738.P11971520405280217011

`A008585(A160406(n))`
-/

namespace A160738.P11971520405280217011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A160406 n).toNat

end

end A160738.P11971520405280217011

/-! ## A160738.P3820005853258299848

`A057353(A160740(n))`
-/

namespace A160738.P3820005853258299848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A160740 n).toNat

end

end A160738.P3820005853258299848

/-! ## A160738.P8240507586144297633

`A187321(A160740(n)+1)`
-/

namespace A160738.P8240507586144297633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (A160740 n + 1).toNat

end

end A160738.P8240507586144297633

/-! ## A160738.P5370731121691413094

`A002265(3*A160740(n))`
-/

namespace A160738.P5370731121691413094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * A160740 n).toNat

end

end A160738.P5370731121691413094

/-! ## A160738.P2093642342288296643

`A006368(A160740(n)/2)`
-/

namespace A160738.P2093642342288296643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (SequenceMachineLib.roundAway ((A160740 n : ℚ) / 2)).toNat

end

end A160738.P2093642342288296643

/-!
# A160739: 16*P_6(n), 16 times the Legendre Polynomial of order 6 at n.

The programs for A160739, the canonical program `A160739.P17961205384458170292` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160739 has offset 0).

The definition of A160739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160739.P17961205384458170292

`231*n^6-315*n^4+105*n²-5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160739

/-- `231*n^6-315*n^4+105*n²-5` -/
def P17961205384458170292.Spec : Prop :=
  ∀ n, P17961205384458170292.a n = A160739 n

theorem P17961205384458170292.correct : P17961205384458170292.Spec := by
  intro n
  simp only [A160739]

end A160739

/-!
# A160740: Toothpick sequence starting from a cross formed by 4 toothpicks.

The programs for A160740, there is no canonical definition to state claims against.
-/

/-! ## A160740.P15434532696343467576

`4*A160406(n)`
-/

namespace A160740.P15434532696343467576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A160406 n

end

end A160740.P15434532696343467576

/-! ## A160740.P18269898474496353975

`4*(∑[A160407(floor(acot(n)+n))]-1)`
-/

namespace A160740.P18269898474496353975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160740.P18269898474496353975

/-! ## A160740.P10608764848348544829

`4*(∑[A160407(abs(1-n)+1)]-1)`
-/

namespace A160740.P10608764848348544829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160740.P10608764848348544829

/-! ## A160740.P3797809345885503757

`A008586(A160406(n))`
-/

namespace A160740.P3797809345885503757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A160406 n).toNat

end

end A160740.P3797809345885503757

/-! ## A160740.P15444686632074787805

`4/3*A160738(n)`
-/

namespace A160740.P15444686632074787805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A160738 n : ℚ)

end

end A160740.P15444686632074787805

/-! ## A160740.P15640444355389479669

`A004773(A160738(n))`
-/

namespace A160740.P15640444355389479669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A160738 n).toNat

end

end A160740.P15640444355389479669

/-! ## A160740.P12269522964185834606

`A042965(A160738(n)+1)`
-/

namespace A160740.P12269522964185834606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A160738 n + 1).toNat

end

end A160740.P12269522964185834606

/-! ## A160740.P7321596780475312505

`A047517(A160738(n)+1)`
-/

namespace A160740.P7321596780475312505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047517 (A160738 n + 1).toNat

end

end A160740.P7321596780475312505

/-! ## A160740.P15077914250187280125

`A004396(2*A160738(n))`
-/

namespace A160740.P15077914250187280125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A160738 n).toNat

end

end A160740.P15077914250187280125

/-! ## A160740.P17232114744427161816

`A004523(2*A160738(n))`
-/

namespace A160740.P17232114744427161816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (2 * A160738 n).toNat

end

end A160740.P17232114744427161816

/-!
# A160741: Numerator of P_6(2n), the Legendre polynomial of order 6 at 2n.

The programs for A160741, the canonical program `A160741.P12067086175370630114` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160741 has offset 0).

The definition of A160741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160741.P12067086175370630114

`A160739(2*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160741

/-- `A160739(2*n)` -/
def P12067086175370630114.Spec : Prop :=
  ∀ n, P12067086175370630114.a n = A160741 n

theorem P12067086175370630114.correct : P12067086175370630114.Spec := by
  intro n
  simp only [A160741]

end A160741

/-! ## A160741.P11852218409552689727

`2-4/2+A160739(n+n)`
-/

namespace A160741.P11852218409552689727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A160739 (n + n) : ℚ)

end

end A160741.P11852218409552689727

namespace A160741

/-- `2-4/2+A160739(n+n)` -/
def P11852218409552689727.Spec : Prop :=
  ∀ n, P11852218409552689727.a n = (A160741 n : ℚ)

theorem P11852218409552689727.correct : P11852218409552689727.Spec := by
  intro n
  simp only [A160741, Nat.add_sub_cancel, A160741.P11852218409552689727.a, A160741.P12067086175370630114.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160741

/-! ## A160741.P4050534875622812164

`or(1, A160739(n%(n+1)+n))`
-/

namespace A160741.P4050534875622812164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A160739 (n % (n + 1) + n))

end

end A160741.P4050534875622812164

namespace A160741

/-- `or(1, A160739(n%(n+1)+n))` -/
def P4050534875622812164.Spec : Prop :=
  ∀ n, P4050534875622812164.a n = A160741 n

end A160741

/-! ## A160741.P7800299719944716777

`record[A160739(A014681(n))]`
-/

namespace A160741.P7800299719944716777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160739 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160741.P7800299719944716777

namespace A160741

/-- `record[A160739(A014681(n))]` -/
def P7800299719944716777.Spec : Prop :=
  ∀ n, P7800299719944716777.a n = A160741 n

end A160741

/-! ## A160741.P4454898030640235839

`A160739(n+n)%A160739(A063774(n+1))`
-/

namespace A160741.P4454898030640235839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160739 (n + n)) (A160739 (A063774 (n + 1)).toNat)

end

end A160741.P4454898030640235839

namespace A160741

/-- `A160739(n+n)%A160739(A063774(n+1))` -/
def P4454898030640235839.Spec : Prop :=
  ∀ n, P4454898030640235839.a n = A160741 n

end A160741

/-!
# A160742: a(n) = A151566(n)*2.

The programs for A160742, the canonical program `A160742.P554087851942868596` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160742 has offset 0).

The definition of A160742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160742.P554087851942868596

`A151566(n)*2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A160742

/-- `A151566(n)*2` -/
def P554087851942868596.Spec : Prop :=
  ∀ n, P554087851942868596.a n = A160742 n

theorem P554087851942868596.correct : P554087851942868596.Spec := by
  intro n
  simp only [A160742]

end A160742

/-! ## A160742.P7288090934383649065

`A160746(n)/2`
-/

namespace A160742.P7288090934383649065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160746 n : ℚ) / 2

end

end A160742.P7288090934383649065

namespace A160742

/-- `A160746(n)/2` -/
def P7288090934383649065.Spec : Prop :=
  ∀ n, P7288090934383649065.a n = (A160742 n : ℚ)

end A160742

/-! ## A160742.P844271457671710314

`2/3*A160744(n)`
-/

namespace A160742.P844271457671710314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A160744 n : ℚ)

end

end A160742.P844271457671710314

namespace A160742

/-- `2/3*A160744(n)` -/
def P844271457671710314.Spec : Prop :=
  ∀ n, P844271457671710314.a n = (A160742 n : ℚ)

end A160742

/-! ## A160742.P13597375655568857539

`A266383(n)-A001316(n)`
-/

namespace A160742.P13597375655568857539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266383 n - A001316 n

end

end A160742.P13597375655568857539

namespace A160742

/-- `A266383(n)-A001316(n)` -/
def P13597375655568857539.Spec : Prop :=
  ∀ n, P13597375655568857539.a n = A160742 n

end A160742

/-! ## A160742.P11553739283205131174

`A160744(n)-A151566(n)`
-/

namespace A160742.P11553739283205131174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160744 n - A151566 n

end

end A160742.P11553739283205131174

namespace A160742

/-- `A160744(n)-A151566(n)` -/
def P11553739283205131174.Spec : Prop :=
  ∀ n, P11553739283205131174.a n = A160742 n

end A160742

/-! ## A160742.P14181349302462185012

`∑[A071044(n)]-A001316(n)`
-/

namespace A160742.P14181349302462185012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001316 n

end

end A160742.P14181349302462185012

namespace A160742

/-- `∑[A071044(n)]-A001316(n)` -/
def P14181349302462185012.Spec : Prop :=
  ∀ n, P14181349302462185012.a n = A160742 n

end A160742

/-! ## A160742.P3259901595722979343

`2*A160744(n)-A160746(n)`
-/

namespace A160742.P3259901595722979343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160744 n - A160746 n

end

end A160742.P3259901595722979343

namespace A160742

/-- `2*A160744(n)-A160746(n)` -/
def P3259901595722979343.Spec : Prop :=
  ∀ n, P3259901595722979343.a n = A160742 n

end A160742

/-! ## A160742.P137943606948134695

`A006046(n)+A006046(A110654(n))`
-/

namespace A160742.P137943606948134695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n + A006046 (A110654 n).toNat

end

end A160742.P137943606948134695

namespace A160742

/-- `A006046(n)+A006046(A110654(n))` -/
def P137943606948134695.Spec : Prop :=
  ∀ n, P137943606948134695.a n = A160742 n

end A160742

/-! ## A160742.P16433387374229239891

`A160746(n)-(A151566(n)+A151566(n))`
-/

namespace A160742.P16433387374229239891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160746 n - (A151566 n + A151566 n)

end

end A160742.P16433387374229239891

namespace A160742

/-- `A160746(n)-(A151566(n)+A151566(n))` -/
def P16433387374229239891.Spec : Prop :=
  ∀ n, P16433387374229239891.a n = A160742 n

end A160742

/-! ## A160742.P5311722403109052525

`A151566(n+1)+A151566(n)-A060632(n)`
-/

namespace A160742.P5311722403109052525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (n + 1) + (A151566 n - A060632 n)

end

end A160742.P5311722403109052525

namespace A160742

/-- `A151566(n+1)+A151566(n)-A060632(n)` -/
def P5311722403109052525.Spec : Prop :=
  ∀ n, P5311722403109052525.a n = A160742 n

end A160742

/-! ## A160742.P380871046046273806

`A006046(n+1)+A006046(n)-A151566(n+1)`
-/

namespace A160742.P380871046046273806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1) + (A006046 n - A151566 (n + 1))

end

end A160742.P380871046046273806

namespace A160742

/-- `A006046(n+1)+A006046(n)-A151566(n+1)` -/
def P380871046046273806.Spec : Prop :=
  ∀ n, P380871046046273806.a n = A160742 n

end A160742

/-! ## A160742.P7022274261895921228

`A006046(A004526(n+1))+A006046(n)`
-/

namespace A160742.P7022274261895921228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A004526 (n + 1)).toNat + A006046 n

end

end A160742.P7022274261895921228

namespace A160742

/-- `A006046(A004526(n+1))+A006046(n)` -/
def P7022274261895921228.Spec : Prop :=
  ∀ n, P7022274261895921228.a n = A160742 n

end A160742

/-! ## A160742.P15824018356150696553

`A266383(n)-A048896(2*n)`
-/

namespace A160742.P15824018356150696553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266383 n - A048896 (2 * n)

end

end A160742.P15824018356150696553

namespace A160742

/-- `A266383(n)-A048896(2*n)` -/
def P15824018356150696553.Spec : Prop :=
  ∀ n, P15824018356150696553.a n = A160742 n

end A160742

/-! ## A160742.P6973285925779132048

`A266383(n)-A071044(2*n)`
-/

namespace A160742.P6973285925779132048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266383 n - A071044 (2 * n)

end

end A160742.P6973285925779132048

namespace A160742

/-- `A266383(n)-A071044(2*n)` -/
def P6973285925779132048.Spec : Prop :=
  ∀ n, P6973285925779132048.a n = A160742 n

end A160742

/-! ## A160742.P4141576287980171725

`A245550(n+1)+A006046(n)-A001316(n)`
-/

namespace A160742.P4141576287980171725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245550 (n + 1) + (A006046 n - A001316 n)

end

end A160742.P4141576287980171725

namespace A160742

/-- `A245550(n+1)+A006046(n)-A001316(n)` -/
def P4141576287980171725.Spec : Prop :=
  ∀ n, P4141576287980171725.a n = A160742 n

end A160742

/-! ## A160742.P4815646797282218410

`A005843(A151566(n))`
-/

namespace A160742.P4815646797282218410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151566 n).toNat

end

end A160742.P4815646797282218410

namespace A160742

/-- `A005843(A151566(n))` -/
def P4815646797282218410.Spec : Prop :=
  ∀ n, P4815646797282218410.a n = A160742 n

end A160742

/-! ## A160742.P2906865008102879793

`A004273(A151566(n)+1)-1`
-/

namespace A160742.P2906865008102879793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151566 n + 1).toNat - 1

end

end A160742.P2906865008102879793

namespace A160742

/-- `A004273(A151566(n)+1)-1` -/
def P2906865008102879793.Spec : Prop :=
  ∀ n, P2906865008102879793.a n = A160742 n

end A160742

/-! ## A160742.P15110138346362206622

`A004396(A160744(n))`
-/

namespace A160742.P15110138346362206622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A160744 n).toNat

end

end A160742.P15110138346362206622

namespace A160742

/-- `A004396(A160744(n))` -/
def P15110138346362206622.Spec : Prop :=
  ∀ n, P15110138346362206622.a n = A160742 n

end A160742

/-! ## A160742.P17755397335021259739

`A001281(A160746(n))`
-/

namespace A160742.P17755397335021259739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160746 n).toNat

end

end A160742.P17755397335021259739

namespace A160742

/-- `A001281(A160746(n))` -/
def P17755397335021259739.Spec : Prop :=
  ∀ n, P17755397335021259739.a n = A160742 n

end A160742

/-! ## A160742.P14853392695142622944

`A002264(2*A160744(n))`
-/

namespace A160742.P14853392695142622944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A160744 n).toNat

end

end A160742.P14853392695142622944

namespace A160742

/-- `A002264(2*A160744(n))` -/
def P14853392695142622944.Spec : Prop :=
  ∀ n, P14853392695142622944.a n = A160742 n

end A160742

/-!
# A160743: 8*P_7(n), 8 times the Legendre Polynomial of order 7 at n.

The programs for A160743, the canonical program `A160743.P17087667314267452594` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160743 has offset 0).

The definition of A160743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160743.P17087667314267452594

`n*(429*n^6-693*n^4+315*n²-35)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160743

/-- `n*(429*n^6-693*n^4+315*n²-35)/2` -/
def P17087667314267452594.Spec : Prop :=
  ∀ n, P17087667314267452594.a n = (A160743 n : ℚ)

end A160743

/-!
# A160744: a(n) = A151566(n)*3.

The programs for A160744, the canonical program `A160744.P10798283293530994526` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160744 has offset 0).

The definition of A160744 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160744.P10798283293530994526

`A151566(n)*3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A160744

/-- `A151566(n)*3` -/
def P10798283293530994526.Spec : Prop :=
  ∀ n, P10798283293530994526.a n = A160744 n

theorem P10798283293530994526.correct : P10798283293530994526.Spec := by
  intro n
  simp only [A160744]

end A160744

/-! ## A160744.P9538373715759690572

`3/2*A160742(n)`
-/

namespace A160744.P9538373715759690572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A160742 n : ℚ)

end

end A160744.P9538373715759690572

namespace A160744

/-- `3/2*A160742(n)` -/
def P9538373715759690572.Spec : Prop :=
  ∀ n, P9538373715759690572.a n = (A160744 n : ℚ)

end A160744

/-! ## A160744.P3940474767920727256

`3/4*A160746(n)`
-/

namespace A160744.P3940474767920727256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A160746 n : ℚ)

end

end A160744.P3940474767920727256

namespace A160744

/-- `3/4*A160746(n)` -/
def P3940474767920727256.Spec : Prop :=
  ∀ n, P3940474767920727256.a n = (A160744 n : ℚ)

end A160744

/-! ## A160744.P15727530033956374977

`A160742(n)+A151566(n)`
-/

namespace A160744.P15727530033956374977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160742 n + A151566 n

end

end A160744.P15727530033956374977

namespace A160744

/-- `A160742(n)+A151566(n)` -/
def P15727530033956374977.Spec : Prop :=
  ∀ n, P15727530033956374977.a n = A160744 n

end A160744

/-! ## A160744.P8255917496448147617

`A160746(n)-A151566(n)`
-/

namespace A160744.P8255917496448147617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160746 n - A151566 n

end

end A160744.P8255917496448147617

namespace A160744

/-- `A160746(n)-A151566(n)` -/
def P8255917496448147617.Spec : Prop :=
  ∀ n, P8255917496448147617.a n = A160744 n

end A160744

/-! ## A160744.P5615684220550417715

`A006046(n+1)+A006046(n)-A060632(n)`
-/

namespace A160744.P5615684220550417715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1) + (A006046 n - A060632 n)

end

end A160744.P5615684220550417715

namespace A160744

/-- `A006046(n+1)+A006046(n)-A060632(n)` -/
def P5615684220550417715.Spec : Prop :=
  ∀ n, P5615684220550417715.a n = A160744 n

end A160744

/-! ## A160744.P13332515616551206145

`3*∑[sqrt(A177241(n))/gcd(2, n)]`
-/

namespace A160744.P13332515616551206145
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177241 n : ℝ) / (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160744.P13332515616551206145

namespace A160744

/-- `3*∑[sqrt(A177241(n))/gcd(2, n)]` -/
def P13332515616551206145.Spec : Prop :=
  ∀ n, P13332515616551206145.a n = (A160744 n : ℝ)

end A160744

/-! ## A160744.P1058996240427936275

`A006046(2*n)-A006046(A004524(2*n))`
-/

namespace A160744.P1058996240427936275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (2 * n) - A006046 (A004524 (2 * n)).toNat

end

end A160744.P1058996240427936275

namespace A160744

/-- `A006046(2*n)-A006046(A004524(2*n))` -/
def P1058996240427936275.Spec : Prop :=
  ∀ n, P1058996240427936275.a n = A160744 n

end A160744

/-! ## A160744.P13905359975564972001

`A008585(A151566(n))`
-/

namespace A160744.P13905359975564972001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A151566 n).toNat

end

end A160744.P13905359975564972001

namespace A160744

/-- `A008585(A151566(n))` -/
def P13905359975564972001.Spec : Prop :=
  ∀ n, P13905359975564972001.a n = A160744 n

end A160744

/-! ## A160744.P3032400891600815022

`A006368(A160742(n))`
-/

namespace A160744.P3032400891600815022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A160742 n).toNat

end

end A160744.P3032400891600815022

namespace A160744

/-- `A006368(A160742(n))` -/
def P3032400891600815022.Spec : Prop :=
  ∀ n, P3032400891600815022.a n = A160744 n

end A160744

/-! ## A160744.P11841873623445735723

`A057353(A160746(n))`
-/

namespace A160744.P11841873623445735723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A160746 n).toNat

end

end A160744.P11841873623445735723

namespace A160744

/-- `A057353(A160746(n))` -/
def P11841873623445735723.Spec : Prop :=
  ∀ n, P11841873623445735723.a n = A160744 n

end A160744

/-! ## A160744.P14021767006247530148

`A001281(3*A160742(n))`
-/

namespace A160744.P14021767006247530148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (3 * A160742 n).toNat

end

end A160744.P14021767006247530148

namespace A160744

/-- `A001281(3*A160742(n))` -/
def P14021767006247530148.Spec : Prop :=
  ∀ n, P14021767006247530148.a n = A160744 n

end A160744

/-!
# A160745: First differences of A160744.

The programs for A160745, the canonical program `A160745.P15092458154072212321` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160745 has offset 1).

The definition of A160745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160745.P15092458154072212321

`3*A060632(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A160745

/-- `3*A060632(n)` -/
def P15092458154072212321.Spec : Prop :=
  ∀ n, P15092458154072212321.a n = A160745 (n + 1)

theorem P15092458154072212321.correct : P15092458154072212321.Spec := by
  intro n
  simp only [A160745, Nat.add_sub_cancel]

end A160745

/-! ## A160745.P1153915330059114986

`2*a(and(n, n-2))` with `a(0)=3, a(1)=3`
-/

namespace A160745.P1153915330059114986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

end

end A160745.P1153915330059114986

namespace A160745

/-- `2*a(and(n, n-2))` -/
def P1153915330059114986.Spec : Prop :=
  ∀ n, (P1153915330059114986.a n : ℤ) = A160745 (n + 1)

end A160745

/-! ## A160745.P11488394829286492115

`and(2, n)!*a(floor(n/2))` with `a(0)=3`
-/

namespace A160745.P11488394829286492115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.factorial (Nat.land 2 n) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A160745.P11488394829286492115

namespace A160745

/-- `and(2, n)!*a(floor(n/2))` -/
def P11488394829286492115.Spec : Prop :=
  ∀ n, (P11488394829286492115.a n : ℤ) = A160745 (n + 1)

end A160745

/-! ## A160745.P3842976162800842522

`2*a(n-2^floor(log2(n)))` with `a(0)=3, a(1)=3`
-/

namespace A160745.P3842976162800842522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  2 * a (n - 2 ^ Nat.log 2 n)

end

end A160745.P3842976162800842522

namespace A160745

/-- `2*a(n-2^floor(log2(n)))` -/
def P3842976162800842522.Spec : Prop :=
  ∀ n, (P3842976162800842522.a n : ℤ) = A160745 (n + 1)

end A160745

/-! ## A160745.P5587901920715765016

`a(n-2^floor(log2(n)))/sqrt(1/4)` with `a(0)=3, a(1)=3`
-/

namespace A160745.P5587901920715765016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2 ^ Nat.log 2 n) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A160745.P5587901920715765016

namespace A160745

/-- `a(n-2^floor(log2(n)))/sqrt(1/4)` -/
def P5587901920715765016.Spec : Prop :=
  ∀ n, P5587901920715765016.a n = (A160745 (n + 1) : ℝ)

end A160745

/-! ## A160745.P15563498478982041747

`lcm(2^(n-∑[val(n+1, 2)]), a((n-1)^(n%2)))` with `a(0)=3`
-/

namespace A160745.P15563498478982041747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))) (a (((n : ℤ) - 1) ^ (n % 2)).toNat : ℤ)

end

end A160745.P15563498478982041747

namespace A160745

/-- `lcm(2^(n-∑[val(n+1, 2)]), a((n-1)^(n%2)))` -/
def P15563498478982041747.Spec : Prop :=
  ∀ n, (P15563498478982041747.a n : ℤ) = A160745 (n + 1)

end A160745

/-! ## A160745.P3007661446494593066

`lcm(3, A071044(n))`
-/

namespace A160745.P3007661446494593066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A071044 n)

end

end A160745.P3007661446494593066

namespace A160745

/-- `lcm(3, A071044(n))` -/
def P3007661446494593066.Spec : Prop :=
  ∀ n, (P3007661446494593066.a n : ℤ) = A160745 (n + 1)

end A160745

/-! ## A160745.P18185068061440644466

`A071044(or(1, n))`
-/

namespace A160745.P18185068061440644466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (Nat.lor 1 n)

end

end A160745.P18185068061440644466

namespace A160745

/-- `A071044(or(1, n))` -/
def P18185068061440644466.Spec : Prop :=
  ∀ n, P18185068061440644466.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P14214191324085394288

`A105321(or(1, n))`
-/

namespace A160745.P14214191324085394288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (Nat.lor 1 n)

end

end A160745.P14214191324085394288

namespace A160745

/-- `A105321(or(1, n))` -/
def P14214191324085394288.Spec : Prop :=
  ∀ n, P14214191324085394288.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P10794712329720188985

`A160713(floor(n/2))`
-/

namespace A160745.P10794712329720188985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160713 ⌊(n : ℚ) / 2⌋.toNat

end

end A160745.P10794712329720188985

namespace A160745

/-- `A160713(floor(n/2))` -/
def P10794712329720188985.Spec : Prop :=
  ∀ n, P10794712329720188985.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P7506053901876258432

`Δ[3*A151566(n)]`
-/

namespace A160745.P7506053901876258432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A151566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160745.P7506053901876258432

namespace A160745

/-- `Δ[3*A151566(n)]` -/
def P7506053901876258432.Spec : Prop :=
  ∀ n, P7506053901876258432.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P16040899159010880620

`3*(1-A309255(n)+n)`
-/

namespace A160745.P16040899159010880620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - A309255 n + (n : ℤ))

end

end A160745.P16040899159010880620

namespace A160745

/-- `3*(1-A309255(n)+n)` -/
def P16040899159010880620.Spec : Prop :=
  ∀ n, P16040899159010880620.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P12720848020367376757

`A002516(A060632(n))`
-/

namespace A160745.P12720848020367376757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002516 (A060632 n).toNat

end

end A160745.P12720848020367376757

namespace A160745

/-- `A002516(A060632(n))` -/
def P12720848020367376757.Spec : Prop :=
  ∀ n, P12720848020367376757.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P14139080582742119343

`A071044(A109613(n))`
-/

namespace A160745.P14139080582742119343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A109613 n).toNat

end

end A160745.P14139080582742119343

namespace A160745

/-- `A071044(A109613(n))` -/
def P14139080582742119343.Spec : Prop :=
  ∀ n, P14139080582742119343.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P2806693587039282354

`A071044(n)*A176040(n)`
-/

namespace A160745.P2806693587039282354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n * A176040 n

end

end A160745.P2806693587039282354

namespace A160745

/-- `A071044(n)*A176040(n)` -/
def P2806693587039282354.Spec : Prop :=
  ∀ n, P2806693587039282354.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P15329686069421008538

`A160713(n)/A000034(n)`
-/

namespace A160745.P15329686069421008538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160713 n : ℚ) / (A000034 n : ℚ)

end

end A160745.P15329686069421008538

namespace A160745

/-- `A160713(n)/A000034(n)` -/
def P15329686069421008538.Spec : Prop :=
  ∀ n, P15329686069421008538.a n = (A160745 (n + 1) : ℚ)

end A160745

/-! ## A160745.P8825251177420506985

`A256257(n)/A010694(n)`
-/

namespace A160745.P8825251177420506985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256257 n : ℚ) / (A010694 n : ℚ)

end

end A160745.P8825251177420506985

namespace A160745

/-- `A256257(n)/A010694(n)` -/
def P8825251177420506985.Spec : Prop :=
  ∀ n, P8825251177420506985.a n = (A160745 (n + 1) : ℚ)

end A160745

/-! ## A160745.P10736843546678239488

`lcm(A040007(n), A060632(n))`
-/

namespace A160745.P10736843546678239488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040007 n) (A060632 n)

end

end A160745.P10736843546678239488

namespace A160745

/-- `lcm(A040007(n), A060632(n))` -/
def P10736843546678239488.Spec : Prop :=
  ∀ n, (P10736843546678239488.a n : ℤ) = A160745 (n + 1)

end A160745

/-! ## A160745.P1594765838210459992

`A071044(∑[1-A062157(n)])`
-/

namespace A160745.P1594765838210459992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160745.P1594765838210459992

namespace A160745

/-- `A071044(∑[1-A062157(n)])` -/
def P1594765838210459992.Spec : Prop :=
  ∀ n, P1594765838210459992.a n = A160745 (n + 1)

end A160745

/-! ## A160745.P16153331556057715922

`(A033999(n)+2)*A071044(n)`
-/

namespace A160745.P16153331556057715922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 2) * A071044 n

end

end A160745.P16153331556057715922

namespace A160745

/-- `(A033999(n)+2)*A071044(n)` -/
def P16153331556057715922.Spec : Prop :=
  ∀ n, P16153331556057715922.a n = A160745 (n + 1)

end A160745

/-!
# A160746: a(n) = A151566(n)*4.

The programs for A160746, the canonical program `A160746.P2805536965338767188` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160746 has offset 0).

The definition of A160746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160746.P2805536965338767188

`A151566(n)*4`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A160746

/-- `A151566(n)*4` -/
def P2805536965338767188.Spec : Prop :=
  ∀ n, P2805536965338767188.a n = A160746 n

theorem P2805536965338767188.correct : P2805536965338767188.Spec := by
  intro n
  simp only [A160746]

end A160746

/-! ## A160746.P2972431374879445806

`2*A160742(n)`
-/

namespace A160746.P2972431374879445806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160742 n

end

end A160746.P2972431374879445806

namespace A160746

/-- `2*A160742(n)` -/
def P2972431374879445806.Spec : Prop :=
  ∀ n, P2972431374879445806.a n = A160746 n

end A160746

/-! ## A160746.P695797161799645676

`4/3*A160744(n)`
-/

namespace A160746.P695797161799645676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A160744 n : ℚ)

end

end A160746.P695797161799645676

namespace A160746

/-- `4/3*A160744(n)` -/
def P695797161799645676.Spec : Prop :=
  ∀ n, P695797161799645676.a n = (A160746 n : ℚ)

end A160746

/-! ## A160746.P3930332069455825263

`A160744(n)+A151566(n)`
-/

namespace A160746.P3930332069455825263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160744 n + A151566 n

end

end A160746.P3930332069455825263

namespace A160746

/-- `A160744(n)+A151566(n)` -/
def P3930332069455825263.Spec : Prop :=
  ∀ n, P3930332069455825263.a n = A160746 n

end A160746

/-! ## A160746.P11905885662900789856

`2*(A266383(n)-A001316(n))`
-/

namespace A160746.P11905885662900789856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A266383 n - A001316 n)

end

end A160746.P11905885662900789856

namespace A160746

/-- `2*(A266383(n)-A001316(n))` -/
def P11905885662900789856.Spec : Prop :=
  ∀ n, P11905885662900789856.a n = A160746 n

end A160746

/-! ## A160746.P13228238491153914949

`A160744(n)+A160742(n)/2`
-/

namespace A160746.P13228238491153914949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160744 n : ℚ) + (A160742 n : ℚ) / 2

end

end A160746.P13228238491153914949

namespace A160746

/-- `A160744(n)+A160742(n)/2` -/
def P13228238491153914949.Spec : Prop :=
  ∀ n, P13228238491153914949.a n = (A160746 n : ℚ)

end A160746

/-! ## A160746.P9399666019742387978

`A151566(n)+A160742(n)+A151566(n)`
-/

namespace A160746.P9399666019742387978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n + (A160742 n + A151566 n)

end

end A160746.P9399666019742387978

namespace A160746

/-- `A151566(n)+A160742(n)+A151566(n)` -/
def P9399666019742387978.Spec : Prop :=
  ∀ n, P9399666019742387978.a n = A160746 n

end A160746

/-! ## A160746.P15425581647217076967

`A160742(n)-(A151566(n)-A160744(n))`
-/

namespace A160746.P15425581647217076967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160742 n - (A151566 n - A160744 n)

end

end A160746.P15425581647217076967

namespace A160746

/-- `A160742(n)-(A151566(n)-A160744(n))` -/
def P15425581647217076967.Spec : Prop :=
  ∀ n, P15425581647217076967.a n = A160746 n

end A160746

/-! ## A160746.P13937829670739762934

`A006046(2*n+1)-A006046(A110654(n+1))`
-/

namespace A160746.P13937829670739762934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (2 * n + 1) - A006046 (A110654 (n + 1)).toNat

end

end A160746.P13937829670739762934

namespace A160746

/-- `A006046(2*n+1)-A006046(A110654(n+1))` -/
def P13937829670739762934.Spec : Prop :=
  ∀ n, P13937829670739762934.a n = A160746 n

end A160746

/-! ## A160746.P11821922639984006188

`∑[(and(1, n)+1)*sqrt(A177241(2*n))]`
-/

namespace A160746.P11821922639984006188
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℝ) * Real.sqrt (A177241 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160746.P11821922639984006188

namespace A160746

/-- `∑[(and(1, n)+1)*sqrt(A177241(2*n))]` -/
def P11821922639984006188.Spec : Prop :=
  ∀ n, P11821922639984006188.a n = (A160746 n : ℝ)

end A160746

/-! ## A160746.P16661661220219883795

`A008586(A151566(n))`
-/

namespace A160746.P16661661220219883795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A151566 n).toNat

end

end A160746.P16661661220219883795

namespace A160746

/-- `A008586(A151566(n))` -/
def P16661661220219883795.Spec : Prop :=
  ∀ n, P16661661220219883795.a n = A160746 n

end A160746

/-! ## A160746.P14953349985886662340

`A005843(A160742(n))`
-/

namespace A160746.P14953349985886662340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160742 n).toNat

end

end A160746.P14953349985886662340

namespace A160746

/-- `A005843(A160742(n))` -/
def P14953349985886662340.Spec : Prop :=
  ∀ n, P14953349985886662340.a n = A160746 n

end A160746

/-! ## A160746.P13938176751200544787

`A004773(A160744(n))`
-/

namespace A160746.P13938176751200544787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A160744 n).toNat

end

end A160746.P13938176751200544787

namespace A160746

/-- `A004773(A160744(n))` -/
def P13938176751200544787.Spec : Prop :=
  ∀ n, P13938176751200544787.a n = A160746 n

end A160746

/-! ## A160746.P11605984557235482328

`A004396(2*A160744(n))`
-/

namespace A160746.P11605984557235482328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A160744 n).toNat

end

end A160746.P11605984557235482328

namespace A160746

/-- `A004396(2*A160744(n))` -/
def P11605984557235482328.Spec : Prop :=
  ∀ n, P11605984557235482328.a n = A160746 n

end A160746

/-!
# A160747: Expansion of (1 + 10*x + 20*x^2 + 10*x^3 + x^4)/(1-x)^5.

The programs for A160747, the canonical program `A160747.P16618003973295066476` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160747 has offset 0).

The definition of A160747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+10x+20x^2+10x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A160747.P16618003973295066476`, by `A160747.P16618003973295066476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160747.P16618003973295066476

`ogf((1+10x+20x^2+10x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160747

/-- `ogf((1+10x+20x^2+10x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16618003973295066476.Spec : Prop :=
  ∀ n, P16618003973295066476.a n = A160747 n

theorem P16618003973295066476.correct : P16618003973295066476.Spec := by
  intro n
  simp only [A160747]

end A160747

/-! ## A160747.P18445857040379976945

`1+7*n*(n+1)*(n²+n+2)/4`
-/

namespace A160747.P18445857040379976945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (7 * n * (n + 1) * (n ^ 2 + n + 2) : ℚ) / 4

end

end A160747.P18445857040379976945

namespace A160747

/-- `1+7*n*(n+1)*(n²+n+2)/4` -/
def P18445857040379976945.Spec : Prop :=
  ∀ n, P18445857040379976945.a n = (A160747 n : ℚ)

end A160747

/-! ## A160747.P10709060610248939358

`or(1, 7*A001621(n))`
-/

namespace A160747.P10709060610248939358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (7 * A001621 n)

end

end A160747.P10709060610248939358

namespace A160747

/-- `or(1, 7*A001621(n))` -/
def P10709060610248939358.Spec : Prop :=
  ∀ n, P10709060610248939358.a n = A160747 n

end A160747

/-! ## A160747.P16418614687208313674

`abs(A001621(n)-A008514(n))`
-/

namespace A160747.P16418614687208313674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001621 n - A008514 n|

end

end A160747.P16418614687208313674

namespace A160747

/-- `abs(A001621(n)-A008514(n))` -/
def P16418614687208313674.Spec : Prop :=
  ∀ n, P16418614687208313674.a n = A160747 n

end A160747

/-! ## A160747.P767139481936935838

`abs(A000537(n)-A294433(n))`
-/

namespace A160747.P767139481936935838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000537 n - A294433 n|

end

end A160747.P767139481936935838

namespace A160747

/-- `abs(A000537(n)-A294433(n))` -/
def P767139481936935838.Spec : Prop :=
  ∀ n, P767139481936935838.a n = A160747 n

end A160747

/-! ## A160747.P5022883191832593972

`abs(A160767(n)-A163102(n))`
-/

namespace A160747.P5022883191832593972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160767 n - A163102 n|

end

end A160747.P5022883191832593972

namespace A160747

/-- `abs(A160767(n)-A163102(n))` -/
def P5022883191832593972.Spec : Prop :=
  ∀ n, P5022883191832593972.a n = A160747 n

end A160747

/-! ## A160747.P17816683787135263785

`abs(A247112(n)+A179298(n+1))`
-/

namespace A160747.P17816683787135263785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247112 n + A179298 (n + 1)|

end

end A160747.P17816683787135263785

namespace A160747

/-- `abs(A247112(n)+A179298(n+1))` -/
def P17816683787135263785.Spec : Prop :=
  ∀ n, P17816683787135263785.a n = A160747 n

end A160747

/-! ## A160747.P7544962713640394553

`abs(A297662(n+1)-A160765(n))`
-/

namespace A160747.P7544962713640394553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A297662 (n + 1) - A160765 n|

end

end A160747.P7544962713640394553

namespace A160747

/-- `abs(A297662(n+1)-A160765(n))` -/
def P7544962713640394553.Spec : Prop :=
  ∀ n, P7544962713640394553.a n = A160747 n

end A160747

/-! ## A160747.P791496093521356925

`∑[(A022144(n)-n)*A002522(n)]`
-/

namespace A160747.P791496093521356925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022144 n - (n : ℤ)) * A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160747.P791496093521356925

namespace A160747

/-- `∑[(A022144(n)-n)*A002522(n)]` -/
def P791496093521356925.Spec : Prop :=
  ∀ n, P791496093521356925.a n = A160747 n

end A160747

/-! ## A160747.P5535730788566608088

`∑[(A008574(2*n)-n)/sin(acot(n))²]`
-/

namespace A160747.P5535730788566608088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008574 (2 * n) - (n : ℤ) : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160747.P5535730788566608088

namespace A160747

/-- `∑[(A008574(2*n)-n)/sin(acot(n))²]` -/
def P5535730788566608088.Spec : Prop :=
  ∀ n, P5535730788566608088.a n = (A160747 n : ℝ)

end A160747

/-! ## A160747.P5374066678836145666

`∑[(A008574(2*n)-n)*A002522(n)]`
-/

namespace A160747.P5374066678836145666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 (2 * n) - (n : ℤ)) * A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160747.P5374066678836145666

namespace A160747

/-- `∑[(A008574(2*n)-n)*A002522(n)]` -/
def P5374066678836145666.Spec : Prop :=
  ∀ n, P5374066678836145666.a n = A160747 n

end A160747

/-! ## A160747.P2796316991868360180

`A069127(∑[n]+1)`
-/

namespace A160747.P2796316991868360180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A160747.P2796316991868360180

namespace A160747

/-- `A069127(∑[n]+1)` -/
def P2796316991868360180.Spec : Prop :=
  ∀ n, P2796316991868360180.a n = A160747 n

end A160747

/-! ## A160747.P8323912238189203722

`or(1, A163756(∑[n]))`
-/

namespace A160747.P8323912238189203722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A163756 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A160747.P8323912238189203722

namespace A160747

/-- `or(1, A163756(∑[n]))` -/
def P8323912238189203722.Spec : Prop :=
  ∀ n, P8323912238189203722.a n = A160747 n

end A160747

/-! ## A160747.P3964918729856870142

`or(1, A069127(A000124(n)))`
-/

namespace A160747.P3964918729856870142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069127 (A000124 n).toNat)

end

end A160747.P3964918729856870142

namespace A160747

/-- `or(1, A069127(A000124(n)))` -/
def P3964918729856870142.Spec : Prop :=
  ∀ n, P3964918729856870142.a n = A160747 n

end A160747

/-! ## A160747.P13135312820202679535

`record[A010054(n)*A069127(n+1)]`
-/

namespace A160747.P13135312820202679535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A069127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160747.P13135312820202679535

namespace A160747

/-- `record[A010054(n)*A069127(n+1)]` -/
def P13135312820202679535.Spec : Prop :=
  ∀ n, P13135312820202679535.a n = A160747 n

end A160747

/-! ## A160747.P14508747949885013363

`record[gcd(A002262(n), A069127(n+1))]`
-/

namespace A160747.P14508747949885013363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A069127 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160747.P14508747949885013363

namespace A160747

/-- `record[gcd(A002262(n), A069127(n+1))]` -/
def P14508747949885013363.Spec : Prop :=
  ∀ n, (P14508747949885013363.a n : ℤ) = A160747 n

end A160747

/-! ## A160747.P7883498676850344287

`A069127(A000124(n))%A160768(n)`
-/

namespace A160747.P7883498676850344287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069127 (A000124 n).toNat) (A160768 n)

end

end A160747.P7883498676850344287

namespace A160747

/-- `A069127(A000124(n))%A160768(n)` -/
def P7883498676850344287.Spec : Prop :=
  ∀ n, P7883498676850344287.a n = A160747 n

end A160747

/-! ## A160747.P4067509649917074212

`A195041(∑[2*n]+1)`
-/

namespace A160747.P4067509649917074212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A160747.P4067509649917074212

namespace A160747

/-- `A195041(∑[2*n]+1)` -/
def P4067509649917074212.Spec : Prop :=
  ∀ n, P4067509649917074212.a n = A160747 n

end A160747

/-!
# A160748: Primes whose digits are primes and reverse is prime.

The programs for A160748, there is no canonical definition to state claims against.
-/

/-! ## A160748.P2135330537633283199

`∩[A007500(n+1), A019546(n+1)]`
-/

namespace A160748.P2135330537633283199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160748.P2135330537633283199

/-! ## A160748.P17859741133252078364

`∩[A007500(n+1), A046034(n+1)]`
-/

namespace A160748.P17859741133252078364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160748.P17859741133252078364

/-! ## A160748.P805611875422236051

`∩[A007500(n+1), A062087(n+1)]`
-/

namespace A160748.P805611875422236051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160748.P805611875422236051

/-! ## A160748.P2297667932482371324

`∩[A019546(n+1), A095179(n+1)]`
-/

namespace A160748.P2297667932482371324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160748.P2297667932482371324

/-! ## A160748.P10291354374298027089

`∩[A019546(n+1), A062895(n+1)]`
-/

namespace A160748.P10291354374298027089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160748.P10291354374298027089

/-!
# A160749: a(n) = (11*n^2 + 19*n + 10)/2.

The programs for A160749, the canonical program `A160749.P14653260408238183573` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160749 has offset 0).

The definition of A160749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n²+19*n+10)/2` (program `A160749.P8529827007535214573`, by `A160749.P8529827007535214573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160749.P14653260408238183573

`a(n-1)+11*n+4` with `a(0)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160749

/-- `a(n-1)+11*n+4` -/
def P14653260408238183573.Spec : Prop :=
  ∀ n, (P14653260408238183573.a n : ℤ) = A160749 n

theorem P14653260408238183573.correct : P14653260408238183573.Spec := by
  intro n
  simp only [A160749]

end A160749

/-! ## A160749.P8529827007535214573

`(11*n²+19*n+10)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160749.P8529827007535214573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * n ^ 2 + 19 * n + 10 : ℚ) / 2

end

end A160749.P8529827007535214573

namespace A160749

/-- `(11*n²+19*n+10)/2` -/
def P8529827007535214573.Spec : Prop :=
  ∀ n, P8529827007535214573.a n = (A160749 n : ℚ)

theorem P8529827007535214573.correct : P8529827007535214573.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A160749, Nat.add_sub_cancel, A160749.P8529827007535214573.a, A160749.P14653260408238183573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A160749, Nat.add_sub_cancel, A160749.P8529827007535214573.a, A160749.P14653260408238183573.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A160749

/-! ## A160749.P13705839558250245351

`∑[a(n-1)+11]` with `a(0)=5, a(1)=15`
-/

namespace A160749.P13705839558250245351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 15] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160749.P13705839558250245351

namespace A160749

/-- `∑[a(n-1)+11]` -/
def P13705839558250245351.Spec : Prop :=
  ∀ n, (P13705839558250245351.a n : ℤ) = A160749 n

end A160749

/-! ## A160749.P6106309562617897880

`∑[ogf((5+5x+x^2)/(1-2x+x^2))]`
-/

namespace A160749.P6106309562617897880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160749.P6106309562617897880

namespace A160749

/-- `∑[ogf((5+5x+x^2)/(1-2x+x^2))]` -/
def P6106309562617897880.Spec : Prop :=
  ∀ n, P6106309562617897880.a n = A160749 n

end A160749

/-! ## A160749.P17014987808505887739

`ogf((5+5x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A160749.P17014987808505887739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5, 1] [1, -3, 3, -1] n

end

end A160749.P17014987808505887739

namespace A160749

/-- `ogf((5+5x+x^2)/(1-3x+3x^2-x^3))` -/
def P17014987808505887739.Spec : Prop :=
  ∀ n, P17014987808505887739.a n = A160749 n

end A160749

/-! ## A160749.P9137868750606642718

`C(n, 2)+5*(n+1)²`
-/

namespace A160749.P9137868750606642718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 5 * (n + 1) ^ 2

end

end A160749.P9137868750606642718

namespace A160749

/-- `C(n, 2)+5*(n+1)²` -/
def P9137868750606642718.Spec : Prop :=
  ∀ n, (P9137868750606642718.a n : ℤ) = A160749 n

end A160749

/-! ## A160749.P8666891401024284845

`∑[5*(2*n+1)]+C(n, 2)`
-/

namespace A160749.P8666891401024284845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2

end

end A160749.P8666891401024284845

namespace A160749

/-- `∑[5*(2*n+1)]+C(n, 2)` -/
def P8666891401024284845.Spec : Prop :=
  ∀ n, (P8666891401024284845.a n : ℤ) = A160749 n

end A160749

/-! ## A160749.P3869929363753183571

`∑[A017437(n)]+1`
-/

namespace A160749.P3869929363753183571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A160749.P3869929363753183571

namespace A160749

/-- `∑[A017437(n)]+1` -/
def P3869929363753183571.Spec : Prop :=
  ∀ n, P3869929363753183571.a n = A160749 n

end A160749

/-! ## A160749.P10092743734248354327

`∑[A017449(n)]-n`
-/

namespace A160749.P10092743734248354327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A160749.P10092743734248354327

namespace A160749

/-- `∑[A017449(n)]-n` -/
def P10092743734248354327.Spec : Prop :=
  ∀ n, P10092743734248354327.a n = A160749 n

end A160749

/-! ## A160749.P183113489063283189

`A201279(n)-∑[n]`
-/

namespace A160749.P183113489063283189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201279 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A160749.P183113489063283189

namespace A160749

/-- `A201279(n)-∑[n]` -/
def P183113489063283189.Spec : Prop :=
  ∀ n, P183113489063283189.a n = A160749 n

end A160749

/-! ## A160749.P17103821738017216084

`∑[A017221(n)]+n²`
-/

namespace A160749.P17103821738017216084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A160749.P17103821738017216084

namespace A160749

/-- `∑[A017221(n)]+n²` -/
def P17103821738017216084.Spec : Prop :=
  ∀ n, P17103821738017216084.a n = A160749 n

end A160749

/-! ## A160749.P11836310480846443342

`A022267(n+1)+n²`
-/

namespace A160749.P11836310480846443342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 (n + 1) + (n ^ 2 : ℤ)

end

end A160749.P11836310480846443342

namespace A160749

/-- `A022267(n+1)+n²` -/
def P11836310480846443342.Spec : Prop :=
  ∀ n, P11836310480846443342.a n = A160749 n

end A160749

/-! ## A160749.P6375641488802154789

`A026817(n+1)-Δ[n²]`
-/

namespace A160749.P6375641488802154789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026817 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A160749.P6375641488802154789

namespace A160749

/-- `A026817(n+1)-Δ[n²]` -/
def P6375641488802154789.Spec : Prop :=
  ∀ n, P6375641488802154789.a n = A160749 n

end A160749

/-! ## A160749.P17962997048916222083

`abs(∑[5-A017509(n)]+n)`
-/

namespace A160749.P17962997048916222083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)|

end

end A160749.P17962997048916222083

namespace A160749

/-- `abs(∑[5-A017509(n)]+n)` -/
def P17962997048916222083.Spec : Prop :=
  ∀ n, P17962997048916222083.a n = A160749 n

end A160749

/-! ## A160749.P1255956100650536516

`∑[Δ[A005897(n)]-(n+2)]`
-/

namespace A160749.P1255956100650536516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160749.P1255956100650536516

namespace A160749

/-- `∑[Δ[A005897(n)]-(n+2)]` -/
def P1255956100650536516.Spec : Prop :=
  ∀ n, P1255956100650536516.a n = A160749 n

end A160749

/-! ## A160749.P13860272055505611829

`∑[record[A019429(n+1)]-n]`
-/

namespace A160749.P13860272055505611829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160749.P13860272055505611829

namespace A160749

/-- `∑[record[A019429(n+1)]-n]` -/
def P13860272055505611829.Spec : Prop :=
  ∀ n, P13860272055505611829.a n = A160749 n

end A160749

/-! ## A160749.P14908581995334966872

`∑[A063098(n+1)+2-n]`
-/

namespace A160749.P14908581995334966872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063098 (n + 1) + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160749.P14908581995334966872

namespace A160749

/-- `∑[A063098(n+1)+2-n]` -/
def P14908581995334966872.Spec : Prop :=
  ∀ n, P14908581995334966872.a n = A160749 n

end A160749

/-! ## A160749.P13759308728962825340

`A069125(n+1)+4*(n+1)`
-/

namespace A160749.P13759308728962825340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1) + (4 * (n + 1) : ℤ)

end

end A160749.P13759308728962825340

namespace A160749

/-- `A069125(n+1)+4*(n+1)` -/
def P13759308728962825340.Spec : Prop :=
  ∀ n, P13759308728962825340.a n = A160749 n

end A160749

/-! ## A160749.P1036402875847497032

`A180223(n+1)+2*n+3`
-/

namespace A160749.P1036402875847497032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 (n + 1) + (2 * n + 3 : ℤ)

end

end A160749.P1036402875847497032

namespace A160749

/-- `A180223(n+1)+2*n+3` -/
def P1036402875847497032.Spec : Prop :=
  ∀ n, P1036402875847497032.a n = A160749 n

end A160749

/-! ## A160749.P15230987788685503039

`A022269(n)+A017221(n)`
-/

namespace A160749.P15230987788685503039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n + A017221 n

end

end A160749.P15230987788685503039

namespace A160749

/-- `A022269(n)+A017221(n)` -/
def P15230987788685503039.Spec : Prop :=
  ∀ n, P15230987788685503039.a n = A160749 n

end A160749

/-!
# A160750: Expansion of (1+11*x+24*x^2+11*x^3+10*x^4)/(1-x)^5.

The programs for A160750, the canonical program `A160750.P7280425459242969047` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160750 has offset 0).

The definition of A160750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+11x+24x^2+11x^3+10x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A160750.P7280425459242969047`, by `A160750.P7280425459242969047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160750.P7280425459242969047

`ogf((1+11x+24x^2+11x^3+10x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160750

/-- `ogf((1+11x+24x^2+11x^3+10x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P7280425459242969047.Spec : Prop :=
  ∀ n, P7280425459242969047.a n = A160750 n

theorem P7280425459242969047.correct : P7280425459242969047.Spec := by
  intro n
  simp only [A160750]

end A160750

/-! ## A160750.P3268399288301138505

`19*n^4/8+7*n^3/4+77*n²/8+5*n/4+1`
-/

namespace A160750.P3268399288301138505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 * n ^ 4 : ℚ) / 8 + (7 * n ^ 3 : ℚ) / 4 + (77 * n ^ 2 : ℚ) / 8 + (5 * n : ℚ) / 4 + 1

end

end A160750.P3268399288301138505

namespace A160750

/-- `19*n^4/8+7*n^3/4+77*n²/8+5*n/4+1` -/
def P3268399288301138505.Spec : Prop :=
  ∀ n, P3268399288301138505.a n = (A160750 n : ℚ)

end A160750

/-!
# A160752: a(n) is the number of sets of (distinct, not necessarily consecutive) positive divisors of n where each set has all of its elements in arithmetic progression, and where each set contains exactly A067131(n) elements.

The programs for A160752, there is no canonical definition to state claims against.
-/

/-! ## A160752.P3268277644527502429

`val(A319354(n+1), A000040(A067131(n+1)))`
-/

namespace A160752.P3268277644527502429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319354 (n + 1)).toNat (A000040 (A067131 (n + 1)).toNat).toNat

end

end A160752.P3268277644527502429

/-! ## A160752.P8358029543354638540

`C(A329612(n+1), A020639(A000079(n)))`
-/

namespace A160752.P8358029543354638540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329612 (n + 1)).toNat (A020639 (A000079 n).toNat).toNat

end

end A160752.P8358029543354638540

/-! ## A160752.P3070801644385060376

`gcd(A054534(A065218(n+2)), A066446(n+1))`
-/

namespace A160752.P3070801644385060376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054534 (A065218 (n + 2)).toNat) (A066446 (n + 1))

end

end A160752.P3070801644385060376

/-! ## A160752.P13677685308831997678

`C(A329612(n+1), A071189(A247905(n)))`
-/

namespace A160752.P13677685308831997678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329612 (n + 1)).toNat (A071189 (A247905 n).toNat).toNat

end

end A160752.P13677685308831997678

/-!
# A160753: Binary expansion of the Chaitin halting probability Omega_L for a certain programming language L.

The programs for A160753, there is no canonical definition to state claims against.
-/

/-! ## A160753.P12092477000843174817

`A264442(A053645(n+5)^A367006(n+1))`
-/

namespace A160753.P12092477000843174817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264442 (SequenceMachineLib.roundAway ((A053645 (n + 5) : ℚ) ^ (A367006 (n + 1) : ℤ))).toNat

end

end A160753.P12092477000843174817

/-! ## A160753.P17029998700491828680

`A116178(A136789(A257639(n+1))*A186977(n))`
-/

namespace A160753.P17029998700491828680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (A136789 (A257639 (n + 1)).toNat * A186977 (n + 11)).toNat

end

end A160753.P17029998700491828680

/-! ## A160753.P11678667571085023341

`A008624(A340040(2*n+5))%2`
-/

namespace A160753.P11678667571085023341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008624 (A340040 (2 * n + 5)).toNat) 2

end

end A160753.P11678667571085023341

/-! ## A160753.P18258144591998642941

`A254990(A035686(4*(n+1)))-char[1]`
-/

namespace A160753.P18258144591998642941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 (A035686 (4 * (n + 1))).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A160753.P18258144591998642941

/-! ## A160753.P7300124019491175906

`abs(A134323(n+1)*A254990(A035686(4*(n+1))))`
-/

namespace A160753.P7300124019491175906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134323 (n + 1) * A254990 (A035686 (4 * (n + 1))).toNat|

end

end A160753.P7300124019491175906

/-!
# A160755: Number of correct digits of the MRB constant derived from the sequence of partial sums up to m=10^n terms as defined by S[n]= Sum[(-1)^k*(k^(1/k)-1),{k,m}].

The programs for A160755, there is no canonical definition to state claims against.
-/

/-! ## A160755.P11244304059286231449

`C(7, n)%2+n`
-/

namespace A160755.P11244304059286231449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 n % 2 + n

end

end A160755.P11244304059286231449

/-!
# A160756: Triangle read by rows, infinite lower triangular Toeplitz matrix with A078008 in every column convolved with A001333.

The programs for A160756, there is no canonical definition to state claims against.
-/

/-! ## A160756.P13409781548877781389

`A113678(n)*A207032(A222317(n+3))`
-/

namespace A160756.P13409781548877781389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113678 n * A207032 (A222317 (n + 3)).toNat

end

end A160756.P13409781548877781389

/-! ## A160756.P14680734044129620155

`A330957(lcm(A080036(n), A180196(n)))`
-/

namespace A160756.P14680734044129620155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330957 (Int.lcm (A080036 n) (A180196 n))

end

end A160756.P14680734044129620155

/-! ## A160756.P454218998903229101

`A105569(xor(A000124(n), A070439(n)))`
-/

namespace A160756.P454218998903229101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105569 (Int.xor (A000124 n) (A070439 n)).toNat

end

end A160756.P454218998903229101

/-!
# A160757: Averages of the Fibonacci numbers which take integer values.

The programs for A160757, there is no canonical definition to state claims against.
-/

/-! ## A160757.P15190548564567009278

`A000071(A111035(n+1)+2)/A111035(n+1)`
-/

namespace A160757.P15190548564567009278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (A111035 (n + 1) + 2).toNat : ℚ) / (A111035 (n + 1) : ℚ)

end

end A160757.P15190548564567009278

/-! ## A160757.P5945733493769625379

`A078620(A111035(n+1))`
-/

namespace A160757.P5945733493769625379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078620 (A111035 (n + 1)).toNat

end

end A160757.P5945733493769625379

/-! ## A160757.P17647904381592866362

`(A000045(A111035(n+1)+2)-1)/A111035(n+1)`
-/

namespace A160757.P17647904381592866362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A111035 (n + 1) + 2).toNat - 1 : ℚ) / (A111035 (n + 1) : ℚ)

end

end A160757.P17647904381592866362

/-!
# A160758: Integer averages of first n nonprime numbers for some n.

The programs for A160758, there is no canonical definition to state claims against.
-/

/-! ## A160758.P15042573282907333956

`A164280(n+1)/A129749(n+1)`
-/

namespace A160758.P15042573282907333956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164280 (n + 1) : ℚ) / (A129749 (n + 1) : ℚ)

end

end A160758.P15042573282907333956

/-! ## A160758.P3732782846362941683

`(A175967(A129749(n+1)+1)-1)/A129749(n+1)`
-/

namespace A160758.P3732782846362941683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175967 (A129749 (n + 1) + 1).toNat - 1 : ℚ) / (A129749 (n + 1) : ℚ)

end

end A160758.P3732782846362941683

/-! ## A160758.P1254655496952705263

`A051349(A129749(n+1))/A129749(A010351(n+1))`
-/

namespace A160758.P1254655496952705263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051349 (A129749 (n + 1)).toNat : ℚ) / (A129749 (A010351 (n + 1)).toNat : ℚ)

end

end A160758.P1254655496952705263

/-!
# A160759: Integer averages of n values of pi(n^2) for some n, where pi(n) is the number of primes <= n.

The programs for A160759, there is no canonical definition to state claims against.
-/

/-! ## A160759.P13309115853177740095

`A060715(A185045(2*n+1)*A326864(n))`
-/

namespace A160759.P13309115853177740095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A185045 (2 * n + 1) * A326864 n).toNat

end

end A160759.P13309115853177740095

/-!
# A160760: Triangle read by rows, binomial transform of an infinite lower triangular Toeplitz matrix with A078008 in every column.

The programs for A160760, there is no canonical definition to state claims against.
-/

/-! ## A160760.P2235264242862182009

`A067337(A061579(n))`
-/

namespace A160760.P2235264242862182009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067337 (A061579 n).toNat

end

end A160760.P2235264242862182009

/-! ## A160760.P11989081725861566843

`A067337(A114327(n)+n)`
-/

namespace A160760.P11989081725861566843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067337 (A114327 n + (n : ℤ)).toNat

end

end A160760.P11989081725861566843

/-! ## A160760.P1117656149443528848

`A067337(A038722(n+1)-1)`
-/

namespace A160760.P1117656149443528848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067337 (A038722 (n + 1) - 1).toNat

end

end A160760.P1117656149443528848

/-! ## A160760.P4471619845227834249

`A067337(A093995(n+1)-(n+1))`
-/

namespace A160760.P4471619845227834249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067337 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A160760.P4471619845227834249

/-! ## A160760.P7830626619749805700

`A067337(A038722(n+2))`
-/

namespace A160760.P7830626619749805700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067337 (A038722 (n + 2)).toNat

end

end A160760.P7830626619749805700

/-!
# A160761: The Kaprekar binary numbers in decimal.

The programs for A160761, there is no canonical definition to state claims against.
-/

/-! ## A160761.P14823408883830576902

`A164884(A158581(n+1))`
-/

namespace A160761.P14823408883830576902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (A158581 (n + 1)).toNat

end

end A160761.P14823408883830576902

/-! ## A160761.P13884866300856972524

`filter[A164884(n), A043545(#)]`
-/

namespace A160761.P13884866300856972524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A160761.P13884866300856972524

/-! ## A160761.P17378394041505014866

`filter[A164884(n), A231600(#)]`
-/

namespace A160761.P17378394041505014866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231600 (f1 j).toNat = 1) n)

end

end A160761.P17378394041505014866

/-! ## A160761.P15441511727057979168

`filter[A164884(n), A252744(#)]`
-/

namespace A160761.P15441511727057979168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252744 (f1 j).toNat = 1) n)

end

end A160761.P15441511727057979168

/-! ## A160761.P10937638989929610654

`A164884(lt[1, A152723(n+1)]+1)`
-/

namespace A160761.P10937638989929610654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A160761.P10937638989929610654

/-! ## A160761.P423819101748110211

`filter[A073139(2*n+1), A043545(#)]`
-/

namespace A160761.P423819101748110211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A160761.P423819101748110211

/-! ## A160761.P15025367544898629627

`filter[A073139(2*n+1), A231600(#)]`
-/

namespace A160761.P15025367544898629627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231600 (f1 j).toNat = 1) n)

end

end A160761.P15025367544898629627

/-! ## A160761.P2286149616099697181

`filter[A073139(2*n+1), A252744(#)]`
-/

namespace A160761.P2286149616099697181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252744 (f1 j).toNat = 1) n)

end

end A160761.P2286149616099697181

/-! ## A160761.P10315117333073661888

`A004396(p?[A032766(A164884(n))])`
-/

namespace A160761.P10315117333073661888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A164884 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160761.P10315117333073661888

/-! ## A160761.P15026818948007736908

`A164884(lt[0, A164884(A164884(n))])`
-/

namespace A160761.P15026818948007736908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (A164884 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A160761.P15026818948007736908

/-!
# A160762: Convolved with the toothpick sequence A139250 = (2*n - 1): (1, 3, 5, 7, ...).

The programs for A160762, there is no canonical definition to state claims against.
-/

/-! ## A160762.P5514447920932146444

`Δ[A160552(n)]`
-/

namespace A160762.P5514447920932146444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160762.P5514447920932146444

/-! ## A160762.P17317492556523164974

`Δ[A266529(Δ[n²])]`
-/

namespace A160762.P17317492556523164974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160762.P17317492556523164974

/-! ## A160762.P17624069010925403218

`Δ[floor(A169708(n)/4)]`
-/

namespace A160762.P17624069010925403218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169708 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160762.P17624069010925403218

/-! ## A160762.P761209864899261952

`Δ[round(A151569(n)/3)]`
-/

namespace A160762.P761209864899261952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A151569 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160762.P761209864899261952

/-! ## A160762.P998667928027382701

`A160552(n+1)-A160552(n)`
-/

namespace A160762.P998667928027382701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1) - A160552 n

end

end A160762.P998667928027382701

/-! ## A160762.P11656484257720381142

`A139251(n+1)-A255049(n)`
-/

namespace A160762.P11656484257720381142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) - A255049 n

end

end A160762.P11656484257720381142

/-! ## A160762.P272893939873717539

`A139250(n+1)-(A255049(n)+A139250(n))`
-/

namespace A160762.P272893939873717539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) - (A255049 n + A139250 n)

end

end A160762.P272893939873717539

/-! ## A160762.P9099134567379057300

`Δ[A255049(n)/2]`
-/

namespace A160762.P9099134567379057300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255049 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160762.P9099134567379057300

/-!
# A160765: Expansion of (1+13*x+32*x^2+13*x^3+x^4)/(1-x)^5.

The programs for A160765, the canonical program `A160765.P17549546965664754088` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160765 has offset 0).

The definition of A160765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+13x+32x^2+13x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A160765.P17549546965664754088`, by `A160765.P17549546965664754088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160765.P17549546965664754088

`ogf((1+13x+32x^2+13x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160765

/-- `ogf((1+13x+32x^2+13x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P17549546965664754088.Spec : Prop :=
  ∀ n, P17549546965664754088.a n = A160765 n

theorem P17549546965664754088.correct : P17549546965664754088.Spec := by
  intro n
  simp only [A160765]

end A160765

/-! ## A160765.P685078347123375672

`(n²+n+1)*(5*n²+5*n+2)/2`
-/

namespace A160765.P685078347123375672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n + 1) * (5 * n ^ 2 + 5 * n + 2) : ℚ) / 2

end

end A160765.P685078347123375672

namespace A160765

/-- `(n²+n+1)*(5*n²+5*n+2)/2` -/
def P685078347123375672.Spec : Prop :=
  ∀ n, P685078347123375672.a n = (A160765 n : ℚ)

end A160765

/-! ## A160765.P4811336750049470211

`A000566(A002061(n+1))`
-/

namespace A160765.P4811336750049470211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A002061 (n + 1)).toNat

end

end A160765.P4811336750049470211

namespace A160765

/-- `A000566(A002061(n+1))` -/
def P4811336750049470211.Spec : Prop :=
  ∀ n, P4811336750049470211.a n = A160765 n

end A160765

/-! ## A160765.P1151877092366270649

`A160767(n)+∑[n]²`
-/

namespace A160765.P1151877092366270649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160767 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A160765.P1151877092366270649

namespace A160765

/-- `A160767(n)+∑[n]²` -/
def P1151877092366270649.Spec : Prop :=
  ∀ n, P1151877092366270649.a n = A160765 n

end A160765

/-! ## A160765.P16870313778796228677

`∑[n*A061722(n)]+1`
-/

namespace A160765.P16870313778796228677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A160765.P16870313778796228677

namespace A160765

/-- `∑[n*A061722(n)]+1` -/
def P16870313778796228677.Spec : Prop :=
  ∀ n, P16870313778796228677.a n = A160765 n

end A160765

/-! ## A160765.P3394775976327649164

`∑[A008528(n)]-∑[n]²`
-/

namespace A160765.P3394775976327649164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008528 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A160765.P3394775976327649164

namespace A160765

/-- `∑[A008528(n)]-∑[n]²` -/
def P3394775976327649164.Spec : Prop :=
  ∀ n, P3394775976327649164.a n = A160765 n

end A160765

/-! ## A160765.P238194493584179873

`A070302(n+1)-∑[n]²`
-/

namespace A160765.P238194493584179873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070302 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A160765.P238194493584179873

namespace A160765

/-- `A070302(n+1)-∑[n]²` -/
def P238194493584179873.Spec : Prop :=
  ∀ n, P238194493584179873.a n = A160765 n

end A160765

/-! ## A160765.P15094033044466624043

`Δ[n*(n^4-C(n², 2))]-A000217(n)`
-/

namespace A160765.P15094033044466624043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 4 : ℤ) - (Nat.choose (n ^ 2) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000217 n

end

end A160765.P15094033044466624043

namespace A160765

/-- `Δ[n*(n^4-C(n², 2))]-A000217(n)` -/
def P15094033044466624043.Spec : Prop :=
  ∀ n, P15094033044466624043.a n = A160765 n

end A160765

/-! ## A160765.P8574867836358250205

`A062392(n)+A008514(n)`
-/

namespace A160765.P8574867836358250205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + A008514 n

end

end A160765.P8574867836358250205

namespace A160765

/-- `A062392(n)+A008514(n)` -/
def P8574867836358250205.Spec : Prop :=
  ∀ n, P8574867836358250205.a n = A160765 n

end A160765

/-! ## A160765.P17479043273198063746

`A219086(n)+A143008(n)`
-/

namespace A160765.P17479043273198063746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n + A143008 n

end

end A160765.P17479043273198063746

namespace A160765

/-- `A219086(n)+A143008(n)` -/
def P17479043273198063746.Spec : Prop :=
  ∀ n, P17479043273198063746.a n = A160765 n

end A160765

/-! ## A160765.P17439954236819713761

`A294433(n)+A163102(n)`
-/

namespace A160765.P17439954236819713761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n + A163102 n

end

end A160765.P17439954236819713761

namespace A160765

/-- `A294433(n)+A163102(n)` -/
def P17439954236819713761.Spec : Prop :=
  ∀ n, P17439954236819713761.a n = A160765 n

end A160765

/-! ## A160765.P17319507688380617311

`A243201(n)-A110450(n)`
-/

namespace A160765.P17319507688380617311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243201 n - A110450 n

end

end A160765.P17319507688380617311

namespace A160765

/-- `A243201(n)-A110450(n)` -/
def P17319507688380617311.Spec : Prop :=
  ∀ n, P17319507688380617311.a n = A160765 n

end A160765

/-! ## A160765.P17111831868163014579

`A229146(n)+A100171(n+1)`
-/

namespace A160765.P17111831868163014579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229146 n + A100171 (n + 1)

end

end A160765.P17111831868163014579

namespace A160765

/-- `A229146(n)+A100171(n+1)` -/
def P17111831868163014579.Spec : Prop :=
  ∀ n, P17111831868163014579.a n = A160765 n

end A160765

/-! ## A160765.P10183705978234794280

`A237516(n+1)+A110450(n)`
-/

namespace A160765.P10183705978234794280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 1) + A110450 n

end

end A160765.P10183705978234794280

namespace A160765

/-- `A237516(n+1)+A110450(n)` -/
def P10183705978234794280.Spec : Prop :=
  ∀ n, P10183705978234794280.a n = A160765 n

end A160765

/-! ## A160765.P6741986062618753987

`A297662(n+1)+A160747(n)`
-/

namespace A160765.P6741986062618753987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 1) + A160747 n

end

end A160765.P6741986062618753987

namespace A160765

/-- `A297662(n+1)+A160747(n)` -/
def P6741986062618753987.Spec : Prop :=
  ∀ n, P6741986062618753987.a n = A160765 n

end A160765

/-! ## A160765.P3805161422831177184

`A384288(n)+A336535(n+1)`
-/

namespace A160765.P3805161422831177184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384288 n + A336535 (n + 1)

end

end A160765.P3805161422831177184

namespace A160765

/-- `A384288(n)+A336535(n+1)` -/
def P3805161422831177184.Spec : Prop :=
  ∀ n, P3805161422831177184.a n = A160765 n

end A160765

/-! ## A160765.P8697762061880550782

`A365205(n+1)-A045943(n)`
-/

namespace A160765.P8697762061880550782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365205 (n + 1) - A045943 n

end

end A160765.P8697762061880550782

namespace A160765

/-- `A365205(n+1)-A045943(n)` -/
def P8697762061880550782.Spec : Prop :=
  ∀ n, P8697762061880550782.a n = A160765 n

end A160765

/-! ## A160765.P10997821192346722975

`A294433(n)+2*A000537(n)`
-/

namespace A160765.P10997821192346722975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n + 2 * A000537 n

end

end A160765.P10997821192346722975

namespace A160765

/-- `A294433(n)+2*A000537(n)` -/
def P10997821192346722975.Spec : Prop :=
  ∀ n, P10997821192346722975.a n = A160765 n

end A160765

/-! ## A160765.P9407965055940122572

`A294433(n)+2*A000217(n)²`
-/

namespace A160765.P9407965055940122572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n + 2 * A000217 n ^ 2

end

end A160765.P9407965055940122572

namespace A160765

/-- `A294433(n)+2*A000217(n)²` -/
def P9407965055940122572.Spec : Prop :=
  ∀ n, P9407965055940122572.a n = A160765 n

end A160765

/-!
# A160767: Expansion of (1+12*x+28*x^2+12*x^3+x^4)/(1-x)^5.

The programs for A160767, the canonical program `A160767.P14500375587831296469` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160767 has offset 0).

The definition of A160767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+12x+28x^2+12x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A160767.P14500375587831296469`, by `A160767.P14500375587831296469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160767.P14500375587831296469

`ogf((1+12x+28x^2+12x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160767

/-- `ogf((1+12x+28x^2+12x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14500375587831296469.Spec : Prop :=
  ∀ n, P14500375587831296469.a n = A160767 n

theorem P14500375587831296469.correct : P14500375587831296469.Spec := by
  intro n
  simp only [A160767]

end A160767

/-! ## A160767.P14645878005605124845

`(9*n^4+18*n^3+23*n²+14*n+4)/4`
-/

namespace A160767.P14645878005605124845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 4 + 18 * n ^ 3 + 23 * n ^ 2 + 14 * n + 4 : ℚ) / 4

end

end A160767.P14645878005605124845

namespace A160767

/-- `(9*n^4+18*n^3+23*n²+14*n+4)/4` -/
def P14645878005605124845.Spec : Prop :=
  ∀ n, P14645878005605124845.a n = (A160767 n : ℚ)

end A160767

/-! ## A160767.P334710674370654259

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=17, a(2)=103, a(3)=367, a(4)=971`
-/

namespace A160767.P334710674370654259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17, 103, 367, 971] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A160767.P334710674370654259

namespace A160767

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P334710674370654259.Spec : Prop :=
  ∀ n, P334710674370654259.a n = A160767 n

end A160767

/-! ## A160767.P15414657365807877042

`A294433(n)+∑[n]²`
-/

namespace A160767.P15414657365807877042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A160767.P15414657365807877042

namespace A160767

/-- `A294433(n)+∑[n]²` -/
def P15414657365807877042.Spec : Prop :=
  ∀ n, P15414657365807877042.a n = A160767 n

end A160767

/-! ## A160767.P9261104807165697450

`A160765(n)-∑[n]²`
-/

namespace A160767.P9261104807165697450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160765 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A160767.P9261104807165697450

namespace A160767

/-- `A160765(n)-∑[n]²` -/
def P9261104807165697450.Spec : Prop :=
  ∀ n, P9261104807165697450.a n = A160767 n

end A160767

/-! ## A160767.P13261824193417168704

`∑[n]+A005448(n+1)²`
-/

namespace A160767.P13261824193417168704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A005448 (n + 1) ^ 2

end

end A160767.P13261824193417168704

namespace A160767

/-- `∑[n]+A005448(n+1)²` -/
def P13261824193417168704.Spec : Prop :=
  ∀ n, P13261824193417168704.a n = A160767 n

end A160767

/-! ## A160767.P14498917842653598961

`A247112(n)+∑[n+1]²`
-/

namespace A160767.P14498917842653598961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247112 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A160767.P14498917842653598961

namespace A160767

/-- `A247112(n)+∑[n+1]²` -/
def P14498917842653598961.Spec : Prop :=
  ∀ n, P14498917842653598961.a n = A160767 n

end A160767

/-! ## A160767.P15919077071119896291

`A163102(n)+A160747(n)`
-/

namespace A160767.P15919077071119896291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n + A160747 n

end

end A160767.P15919077071119896291

namespace A160767

/-- `A163102(n)+A160747(n)` -/
def P15919077071119896291.Spec : Prop :=
  ∀ n, P15919077071119896291.a n = A160767 n

end A160767

/-! ## A160767.P12485611186831414328

`A007204(n)-A008893(n)`
-/

namespace A160767.P12485611186831414328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - A008893 n

end

end A160767.P12485611186831414328

namespace A160767

/-- `A007204(n)-A008893(n)` -/
def P12485611186831414328.Spec : Prop :=
  ∀ n, P12485611186831414328.a n = A160767 n

end A160767

/-! ## A160767.P15726644534354929619

`abs(A000537(n)-A160765(n))`
-/

namespace A160767.P15726644534354929619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000537 n - A160765 n|

end

end A160767.P15726644534354929619

namespace A160767

/-- `abs(A000537(n)-A160765(n))` -/
def P15726644534354929619.Spec : Prop :=
  ∀ n, P15726644534354929619.a n = A160767 n

end A160767

/-! ## A160767.P16773284029361016017

`∑[A061804(n)+A008531(n)]`
-/

namespace A160767.P16773284029361016017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A008531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160767.P16773284029361016017

namespace A160767

/-- `∑[A061804(n)+A008531(n)]` -/
def P16773284029361016017.Spec : Prop :=
  ∀ n, P16773284029361016017.a n = A160767 n

end A160767

/-! ## A160767.P323315199845514985

`A237516(n+1)+A001621(n)`
-/

namespace A160767.P323315199845514985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 1) + A001621 n

end

end A160767.P323315199845514985

namespace A160767

/-- `A237516(n+1)+A001621(n)` -/
def P323315199845514985.Spec : Prop :=
  ∀ n, P323315199845514985.a n = A160767 n

end A160767

/-! ## A160767.P9615405085484783129

`A380353(n+1)+A219086(n)`
-/

namespace A160767.P9615405085484783129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380353 (n + 1) + A219086 n

end

end A160767.P9615405085484783129

namespace A160767

/-- `A380353(n+1)+A219086(n)` -/
def P9615405085484783129.Spec : Prop :=
  ∀ n, P9615405085484783129.a n = A160767 n

end A160767

/-! ## A160767.P1965200398698618798

`A070302(n+1)-A163102(n)`
-/

namespace A160767.P1965200398698618798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070302 (n + 1) - A163102 n

end

end A160767.P1965200398698618798

namespace A160767

/-- `A070302(n+1)-A163102(n)` -/
def P1965200398698618798.Spec : Prop :=
  ∀ n, P1965200398698618798.a n = A160767 n

end A160767

/-! ## A160767.P1665855694300566099

`or(1, A294433(n)+A000537(n))`
-/

namespace A160767.P1665855694300566099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294433 n + A000537 n)

end

end A160767.P1665855694300566099

namespace A160767

/-- `or(1, A294433(n)+A000537(n))` -/
def P1665855694300566099.Spec : Prop :=
  ∀ n, P1665855694300566099.a n = A160767 n

end A160767

/-! ## A160767.P5242569831145713121

`A000537(n)+A339483(n)+A003215(n)`
-/

namespace A160767.P5242569831145713121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (A339483 n + A003215 n)

end

end A160767.P5242569831145713121

namespace A160767

/-- `A000537(n)+A339483(n)+A003215(n)` -/
def P5242569831145713121.Spec : Prop :=
  ∀ n, P5242569831145713121.a n = A160767 n

end A160767

/-! ## A160767.P2933674387215437875

`A008514(n)+A154323(n)-A000124(n)`
-/

namespace A160767.P2933674387215437875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n + (A154323 n - A000124 n)

end

end A160767.P2933674387215437875

namespace A160767

/-- `A008514(n)+A154323(n)-A000124(n)` -/
def P2933674387215437875.Spec : Prop :=
  ∀ n, P2933674387215437875.a n = A160767 n

end A160767

/-! ## A160767.P8702555018360224085

`A060544(n+1)+A000326(n)*A005449(n+1)`
-/

namespace A160767.P8702555018360224085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) + A000326 n * A005449 (n + 1)

end

end A160767.P8702555018360224085

namespace A160767

/-- `A060544(n+1)+A000326(n)*A005449(n+1)` -/
def P8702555018360224085.Spec : Prop :=
  ∀ n, P8702555018360224085.a n = A160767 n

end A160767

/-! ## A160767.P13748039724478978881

`∑[A086605(n)+A000384(A008486(n))]`
-/

namespace A160767.P13748039724478978881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086605 n + A000384 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160767.P13748039724478978881

namespace A160767

/-- `∑[A086605(n)+A000384(A008486(n))]` -/
def P13748039724478978881.Spec : Prop :=
  ∀ n, P13748039724478978881.a n = A160767 n

end A160767

/-! ## A160767.P4931845568662492814

`A214660(∑[n]+1)`
-/

namespace A160767.P4931845568662492814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214660 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A160767.P4931845568662492814

namespace A160767

/-- `A214660(∑[n]+1)` -/
def P4931845568662492814.Spec : Prop :=
  ∀ n, P4931845568662492814.a n = A160767 n

end A160767

/-!
# A160768: G.f.: (21+98*x+91*x^2+21*x^3+x^4)/(1-x)^5.

The programs for A160768, the canonical program `A160768.P11312123768202108584` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160768 has offset 0).

The definition of A160768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160768.P11312123768202108584

`(58*n^4+233*n^3+428*n²+373*n+126)/6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160768

/-- `(58*n^4+233*n^3+428*n²+373*n+126)/6` -/
def P11312123768202108584.Spec : Prop :=
  ∀ n, P11312123768202108584.a n = (A160768 n : ℚ)

end A160768

/-! ## A160768.P14361571187431509901

`A160769(n)-A368046(n)`
-/

namespace A160768.P14361571187431509901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160769 n - A368046 n

end

end A160768.P14361571187431509901

namespace A160768

/-- `A160769(n)-A368046(n)` -/
def P14361571187431509901.Spec : Prop :=
  ∀ n, P14361571187431509901.a n = A160768 n

end A160768

/-! ## A160768.P13575095459958919357

`2*A160769(n)-A160787(n)`
-/

namespace A160768.P13575095459958919357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160769 n - A160787 n

end

end A160768.P13575095459958919357

namespace A160768

/-- `2*A160769(n)-A160787(n)` -/
def P13575095459958919357.Spec : Prop :=
  ∀ n, P13575095459958919357.a n = A160768 n

end A160768

/-! ## A160768.P2603000470861285919

`A160787(n)-2*A368046(n)`
-/

namespace A160768.P2603000470861285919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160787 n - 2 * A368046 n

end

end A160768.P2603000470861285919

namespace A160768

/-- `A160787(n)-2*A368046(n)` -/
def P2603000470861285919.Spec : Prop :=
  ∀ n, P2603000470861285919.a n = A160768 n

end A160768

/-!
# A160769: G.f.: (21 + 101*x + 97*x^2 + 22*x^3 + x^4)/(1 - x)^5.

The programs for A160769, the canonical program `A160769.P6172139870785364519` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160769 has offset 0).

The definition of A160769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160769.P6172139870785364519

`(121*n^4+480*n^3+869*n²+750*n+252)/12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160769

/-- `(121*n^4+480*n^3+869*n²+750*n+252)/12` -/
def P6172139870785364519.Spec : Prop :=
  ∀ n, P6172139870785364519.a n = (A160769 n : ℚ)

end A160769

/-! ## A160769.P16540513863591040591

`A368046(n)+A160768(n)`
-/

namespace A160769.P16540513863591040591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n + A160768 n

end

end A160769.P16540513863591040591

namespace A160769

/-- `A368046(n)+A160768(n)` -/
def P16540513863591040591.Spec : Prop :=
  ∀ n, P16540513863591040591.a n = A160769 n

end A160769

/-! ## A160769.P5132042057171812194

`A160787(n)-A368046(n)`
-/

namespace A160769.P5132042057171812194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160787 n - A368046 n

end

end A160769.P5132042057171812194

namespace A160769

/-- `A160787(n)-A368046(n)` -/
def P5132042057171812194.Spec : Prop :=
  ∀ n, P5132042057171812194.a n = A160769 n

end A160769

/-! ## A160769.P3241229960694091682

`A160768(n)+∑[A174814(n)-n²]`
-/

namespace A160769.P3241229960694091682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160768 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160769.P3241229960694091682

namespace A160769

/-- `A160768(n)+∑[A174814(n)-n²]` -/
def P3241229960694091682.Spec : Prop :=
  ∀ n, P3241229960694091682.a n = A160769 n

end A160769

/-! ## A160769.P9997578747074185540

`A160768(n)+A008911(n+1)+∑[n]²`
-/

namespace A160769.P9997578747074185540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160768 n + (A008911 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ))

end

end A160769.P9997578747074185540

namespace A160769

/-- `A160768(n)+A008911(n+1)+∑[n]²` -/
def P9997578747074185540.Spec : Prop :=
  ∀ n, P9997578747074185540.a n = A160769 n

end A160769

/-! ## A160769.P13560803129022541486

`A160768(n)+A117066(n+1)-(n+1)^3`
-/

namespace A160769.P13560803129022541486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160768 n + (A117066 (n + 1) - ((n + 1) ^ 3 : ℤ))

end

end A160769.P13560803129022541486

namespace A160769

/-- `A160768(n)+A117066(n+1)-(n+1)^3` -/
def P13560803129022541486.Spec : Prop :=
  ∀ n, P13560803129022541486.a n = A160769 n

end A160769

/-! ## A160769.P2504504631666528494

`A160768(n)+A236770(n)+A005582(n)`
-/

namespace A160769.P2504504631666528494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160768 n + (A236770 n + A005582 n)

end

end A160769.P2504504631666528494

namespace A160769

/-- `A160768(n)+A236770(n)+A005582(n)` -/
def P2504504631666528494.Spec : Prop :=
  ∀ n, P2504504631666528494.a n = A160769 n

end A160769

/-! ## A160769.P11241242220168919893

`A160768(n)+A289643(n)+A002415(n)`
-/

namespace A160769.P11241242220168919893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160768 n + (A289643 n + A002415 n)

end

end A160769.P11241242220168919893

namespace A160769

/-- `A160768(n)+A289643(n)+A002415(n)` -/
def P11241242220168919893.Spec : Prop :=
  ∀ n, P11241242220168919893.a n = A160769 n

end A160769

/-!
# A160772: Number of nodes (or order) of a graph model obtained using an automata scheme on sets of order prime(n) >= 5 and in which all not halt states are linked by arcs (edges).

The programs for A160772, the canonical program `A160772.P11829451033604453223` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160772 has offset 3).

The definition of A160772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160772.P11829451033604453223

`2*A087397(n+3)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160772

/-- `2*A087397(n+3)+1` -/
def P11829451033604453223.Spec : Prop :=
  ∀ n, P11829451033604453223.a n = A160772 (n + 3)

theorem P11829451033604453223.correct : P11829451033604453223.Spec := by
  intro n
  simp only [A160772, Nat.add_sub_cancel]

end A160772

/-! ## A160772.P12536544423984908669

`ceil((3/2-A000040(n+3))²)`
-/

namespace A160772.P12536544423984908669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) / 2 - (A000040 (n + 3) : ℚ)) ^ 2⌉

end

end A160772.P12536544423984908669

namespace A160772

/-- `ceil((3/2-A000040(n+3))²)` -/
def P12536544423984908669.Spec : Prop :=
  ∀ n, P12536544423984908669.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P8186163976893293796

`A006093(n+3)²+1-A006093(n+3)`
-/

namespace A160772.P8186163976893293796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3) ^ 2 + 1 - A006093 (n + 3)

end

end A160772.P8186163976893293796

namespace A160772

/-- `A006093(n+3)²+1-A006093(n+3)` -/
def P8186163976893293796.Spec : Prop :=
  ∀ n, P8186163976893293796.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P13753723219430330430

`A008578(n+4)*A086801(n+3)+3`
-/

namespace A160772.P13753723219430330430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 4) * A086801 (n + 3) + 3

end

end A160772.P13753723219430330430

namespace A160772

/-- `A008578(n+4)*A086801(n+3)+3` -/
def P13753723219430330430.Spec : Prop :=
  ∀ n, P13753723219430330430.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P12864911978073804971

`record[A000010(n+5)²-(n+3)]`
-/

namespace A160772.P12864911978073804971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 5) ^ 2 - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160772.P12864911978073804971

namespace A160772

/-- `record[A000010(n+5)²-(n+3)]` -/
def P12864911978073804971.Spec : Prop :=
  ∀ n, P12864911978073804971.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P9307476587290003100

`2*A000217(A040976(n+3))+1`
-/

namespace A160772.P9307476587290003100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A040976 (n + 3)).toNat + 1

end

end A160772.P9307476587290003100

namespace A160772

/-- `2*A000217(A040976(n+3))+1` -/
def P9307476587290003100.Spec : Prop :=
  ∀ n, P9307476587290003100.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P2172790401264158171

`A054554(A006254(n+2))`
-/

namespace A160772.P2172790401264158171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (A006254 (n + 2)).toNat

end

end A160772.P2172790401264158171

namespace A160772

/-- `A054554(A006254(n+2))` -/
def P2172790401264158171.Spec : Prop :=
  ∀ n, P2172790401264158171.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P15581682002604961833

`2*C(p?[comp[A056839(n)]]-1, 2)+1`
-/

namespace A160772.P15581682002604961833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056839 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1).toNat 2 + 1

end

end A160772.P15581682002604961833

namespace A160772

/-- `2*C(p?[comp[A056839(n)]]-1, 2)+1` -/
def P15581682002604961833.Spec : Prop :=
  ∀ n, (P15581682002604961833.a n : ℤ) = A160772 (n + 3)

end A160772

/-! ## A160772.P12474085386546686842

`record[A167345(n+5)+1]`
-/

namespace A160772.P12474085386546686842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167345 (n + 5) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160772.P12474085386546686842

namespace A160772

/-- `record[A167345(n+5)+1]` -/
def P12474085386546686842.Spec : Prop :=
  ∀ n, P12474085386546686842.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P3676889631004685208

`A002061(A165972(n+2))`
-/

namespace A160772.P3676889631004685208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A165972 (n + 2)).toNat

end

end A160772.P3676889631004685208

namespace A160772

/-- `A002061(A165972(n+2))` -/
def P3676889631004685208.Spec : Prop :=
  ∀ n, P3676889631004685208.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P10326213197198363608

`A081353(A154115(n+2))`
-/

namespace A160772.P10326213197198363608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 (A154115 (n + 2)).toNat

end

end A160772.P10326213197198363608

namespace A160772

/-- `A081353(A154115(n+2))` -/
def P10326213197198363608.Spec : Prop :=
  ∀ n, P10326213197198363608.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P14912761506738501433

`A002061(A006093(n+3))`
-/

namespace A160772.P14912761506738501433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A006093 (n + 3)).toNat

end

end A160772.P14912761506738501433

namespace A160772

/-- `A002061(A006093(n+3))` -/
def P14912761506738501433.Spec : Prop :=
  ∀ n, P14912761506738501433.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P2089725760258003270

`A002061(A000040(n+3)-1)`
-/

namespace A160772.P2089725760258003270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000040 (n + 3) - 1).toNat

end

end A160772.P2089725760258003270

namespace A160772

/-- `A002061(A000040(n+3)-1)` -/
def P2089725760258003270.Spec : Prop :=
  ∀ n, P2089725760258003270.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P1486449802294266853

`A081347(A000040(n+3)-1)`
-/

namespace A160772.P1486449802294266853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081347 (A000040 (n + 3) - 1).toNat

end

end A160772.P1486449802294266853

namespace A160772

/-- `A081347(A000040(n+3)-1)` -/
def P1486449802294266853.Spec : Prop :=
  ∀ n, P1486449802294266853.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P1367322610905052719

`A002061(A008864(n+3)-2)`
-/

namespace A160772.P1367322610905052719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A008864 (n + 3) - 2).toNat

end

end A160772.P1367322610905052719

namespace A160772

/-- `A002061(A008864(n+3)-2)` -/
def P1367322610905052719.Spec : Prop :=
  ∀ n, P1367322610905052719.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P143286554589489204

`A046163(A000040(n+3)-2)`
-/

namespace A160772.P143286554589489204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (A000040 (n + 3) - 2).toNat

end

end A160772.P143286554589489204

namespace A160772

/-- `A046163(A000040(n+3)-2)` -/
def P143286554589489204.Spec : Prop :=
  ∀ n, P143286554589489204.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P6991466993397410320

`A130770(A000040(n+3)-2)`
-/

namespace A160772.P6991466993397410320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (A000040 (n + 3) - 2).toNat

end

end A160772.P6991466993397410320

namespace A160772

/-- `A130770(A000040(n+3)-2)` -/
def P6991466993397410320.Spec : Prop :=
  ∀ n, P6991466993397410320.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P3542702098754047422

`A158622(A000040(n+3)-2)`
-/

namespace A160772.P3542702098754047422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158622 (A000040 (n + 3) - 2).toNat

end

end A160772.P3542702098754047422

namespace A160772

/-- `A158622(A000040(n+3)-2)` -/
def P3542702098754047422.Spec : Prop :=
  ∀ n, P3542702098754047422.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P1647987274217878421

`A081353(A000040(n+3)-3)`
-/

namespace A160772.P1647987274217878421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 (A000040 (n + 3) - 3).toNat

end

end A160772.P1647987274217878421

namespace A160772

/-- `A081353(A000040(n+3)-3)` -/
def P1647987274217878421.Spec : Prop :=
  ∀ n, P1647987274217878421.a n = A160772 (n + 3)

end A160772

/-! ## A160772.P18266084527321864152

`A002061(lt[3, A089026(n+1)])`
-/

namespace A160772.P18266084527321864152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A160772.P18266084527321864152

namespace A160772

/-- `A002061(lt[3, A089026(n+1)])` -/
def P18266084527321864152.Spec : Prop :=
  ∀ n, P18266084527321864152.a n = A160772 (n + 3)

end A160772

/-!
# A160773: Numbers k such that 3^k + 5^k + 7^k is prime.

The programs for A160773, there is no canonical definition to state claims against.
-/

/-! ## A160773.P11504107078596578181

`eq[A176613(n), A392099(n)]`
-/

namespace A160773.P11504107078596578181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160773.P11504107078596578181

/-! ## A160773.P1259644029390111680

`eq[A157532(n+1), A176613(n)]`
-/

namespace A160773.P1259644029390111680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160773.P1259644029390111680

/-! ## A160773.P7081255530149295822

`eq[A171135(n+1), A176613(n)]`
-/

namespace A160773.P7081255530149295822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160773.P7081255530149295822

/-!
# A160779: Numbers that have an "n" in the middle of their names in Spanish.

The programs for A160779, there is no canonical definition to state claims against.
-/

/-! ## A160779.P13360093307292620172

`A162254(n+1)%A240153(A000070(2*n+1))`
-/

namespace A160779.P13360093307292620172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162254 (n + 1)) (A240153 (A000070 (2 * n + 1)).toNat)

end

end A160779.P13360093307292620172

/-!
# A160781: Numbers that have an "r" in the middle of their names in Spanish.

The programs for A160781, there is no canonical definition to state claims against.
-/

/-! ## A160781.P11705309628270314472

`A293755(A057568(3*(n+1))+A006996(2*(n+1)))`
-/

namespace A160781.P11705309628270314472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293755 (A057568 (3 * (n + 1)) + A006996 (2 * (n + 1))).toNat

end

end A160781.P11705309628270314472

/-!
# A160785: Even squarefree numbers plus 1.

The programs for A160785, the canonical program `A160785.P2444679081168475481` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160785 has offset 1).

The definition of A160785 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160785.P2444679081168475481

`A039956(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160785

/-- `A039956(n+1)+1` -/
def P2444679081168475481.Spec : Prop :=
  ∀ n, P2444679081168475481.a n = A160785 (n + 1)

theorem P2444679081168475481.correct : P2444679081168475481.Spec := by
  intro n
  simp only [A160785, Nat.add_sub_cancel]

end A160785

/-! ## A160785.P12193446359343024222

`eq[0, A105234(n)]+1`
-/

namespace A160785.P12193446359343024222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160785.P12193446359343024222

namespace A160785

/-- `eq[0, A105234(n)]+1` -/
def P12193446359343024222.Spec : Prop :=
  ∀ n, (P12193446359343024222.a n : ℤ) = A160785 (n + 1)

end A160785

/-! ## A160785.P10273991099699610277

`2*A056911(n+1)+1`
-/

namespace A160785.P10273991099699610277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056911 (n + 1) + 1

end

end A160785.P10273991099699610277

namespace A160785

/-- `2*A056911(n+1)+1` -/
def P10273991099699610277.Spec : Prop :=
  ∀ n, P10273991099699610277.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P10085966896514053892

`A081770(n+1)/2+1`
-/

namespace A160785.P10085966896514053892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081770 (n + 1) : ℚ) / 2 + 1

end

end A160785.P10085966896514053892

namespace A160785

/-- `A081770(n+1)/2+1` -/
def P10085966896514053892.Spec : Prop :=
  ∀ n, P10085966896514053892.a n = (A160785 (n + 1) : ℚ)

end A160785

/-! ## A160785.P13730735281325386470

`4*A264387(n+1)+3`
-/

namespace A160785.P13730735281325386470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A264387 (n + 1) + 3

end

end A160785.P13730735281325386470

namespace A160785

/-- `4*A264387(n+1)+3` -/
def P13730735281325386470.Spec : Prop :=
  ∀ n, P13730735281325386470.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P7639225816878713152

`or(1, 2*eq[1, A323239(n)])`
-/

namespace A160785.P7639225816878713152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160785.P7639225816878713152

namespace A160785

/-- `or(1, 2*eq[1, A323239(n)])` -/
def P7639225816878713152.Spec : Prop :=
  ∀ n, (P7639225816878713152.a n : ℤ) = A160785 (n + 1)

end A160785

/-! ## A160785.P3083016831972024236

`record[A007913(2*(n+1))+1]`
-/

namespace A160785.P3083016831972024236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160785.P3083016831972024236

namespace A160785

/-- `record[A007913(2*(n+1))+1]` -/
def P3083016831972024236.Spec : Prop :=
  ∀ n, P3083016831972024236.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P16621420511427646639

`record[A007947(2*(n+1))+1]`
-/

namespace A160785.P16621420511427646639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160785.P16621420511427646639

namespace A160785

/-- `record[A007947(2*(n+1))+1]` -/
def P16621420511427646639.Spec : Prop :=
  ∀ n, P16621420511427646639.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P12853466828681614257

`record[lcm(2, A005117(n+1))+1]`
-/

namespace A160785.P12853466828681614257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005117 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160785.P12853466828681614257

namespace A160785

/-- `record[lcm(2, A005117(n+1))+1]` -/
def P12853466828681614257.Spec : Prop :=
  ∀ n, (P12853466828681614257.a n : ℤ) = A160785 (n + 1)

end A160785

/-! ## A160785.P10914760650405985349

`eq[A008683(n+1)², gcd(2, n)]+2`
-/

namespace A160785.P10914760650405985349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 2

end

end A160785.P10914760650405985349

namespace A160785

/-- `eq[A008683(n+1)², gcd(2, n)]+2` -/
def P10914760650405985349.Spec : Prop :=
  ∀ n, (P10914760650405985349.a n : ℤ) = A160785 (n + 1)

end A160785

/-! ## A160785.P4150996397606376224

`A007947(A081770(n+1))+1`
-/

namespace A160785.P4150996397606376224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A081770 (n + 1)).toNat + 1

end

end A160785.P4150996397606376224

namespace A160785

/-- `A007947(A081770(n+1))+1` -/
def P4150996397606376224.Spec : Prop :=
  ∀ n, P4150996397606376224.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P11606659708469808756

`A005117(A383008(n+1))+1`
-/

namespace A160785.P11606659708469808756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A383008 (n + 1)).toNat + 1

end

end A160785.P11606659708469808756

namespace A160785

/-- `A005117(A383008(n+1))+1` -/
def P11606659708469808756.Spec : Prop :=
  ∀ n, P11606659708469808756.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P8764181855851784921

`record[A000265(A005117(n+2)+1)]`
-/

namespace A160785.P8764181855851784921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005117 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160785.P8764181855851784921

namespace A160785

/-- `record[A000265(A005117(n+2)+1)]` -/
def P8764181855851784921.Spec : Prop :=
  ∀ n, P8764181855851784921.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P18086291036809759448

`record[2*∏{p}[2*n+1, #]+1]`
-/

namespace A160785.P18086291036809759448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160785.P18086291036809759448

namespace A160785

/-- `record[2*∏{p}[2*n+1, #]+1]` -/
def P18086291036809759448.Spec : Prop :=
  ∀ n, (P18086291036809759448.a n : ℤ) = A160785 (n + 1)

end A160785

/-! ## A160785.P4321991050021794411

`record[A099985(n+1)+1]`
-/

namespace A160785.P4321991050021794411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160785.P4321991050021794411

namespace A160785

/-- `record[A099985(n+1)+1]` -/
def P4321991050021794411.Spec : Prop :=
  ∀ n, P4321991050021794411.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P6228375549338606483

`A004767(A264387(n+1))`
-/

namespace A160785.P6228375549338606483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A264387 (n + 1)).toNat

end

end A160785.P6228375549338606483

namespace A160785

/-- `A004767(A264387(n+1))` -/
def P6228375549338606483.Spec : Prop :=
  ∀ n, P6228375549338606483.a n = A160785 (n + 1)

end A160785

/-! ## A160785.P14239236934222938062

`∩[A192863(n+1), A004767(n)]`
-/

namespace A160785.P14239236934222938062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160785.P14239236934222938062

namespace A160785

/-- `∩[A192863(n+1), A004767(n)]` -/
def P14239236934222938062.Spec : Prop :=
  ∀ n, (P14239236934222938062.a n : ℤ) = A160785 (n + 1)

end A160785

/-! ## A160785.P17100769793321670044

`∩[A047528(n+1), A192863(n+1)]`
-/

namespace A160785.P17100769793321670044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160785.P17100769793321670044

namespace A160785

/-- `∩[A047528(n+1), A192863(n+1)]` -/
def P17100769793321670044.Spec : Prop :=
  ∀ n, (P17100769793321670044.a n : ℤ) = A160785 (n + 1)

end A160785

/-! ## A160785.P13093411992528702016

`∩[A047531(n+1), A192863(n+1)]`
-/

namespace A160785.P13093411992528702016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160785.P13093411992528702016

namespace A160785

/-- `∩[A047531(n+1), A192863(n+1)]` -/
def P13093411992528702016.Spec : Prop :=
  ∀ n, (P13093411992528702016.a n : ℤ) = A160785 (n + 1)

end A160785

/-! ## A160785.P8249405990605883925

`∩[A047543(n+1), A192863(n+1)]`
-/

namespace A160785.P8249405990605883925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160785.P8249405990605883925

namespace A160785

/-- `∩[A047543(n+1), A192863(n+1)]` -/
def P8249405990605883925.Spec : Prop :=
  ∀ n, (P8249405990605883925.a n : ℤ) = A160785 (n + 1)

end A160785

/-!
# A160786: The number of odd partitions of consecutive odd integers.

The programs for A160786, there is no canonical definition to state claims against.
-/

/-! ## A160786.P13047808886649977417

`A027193(2*n+1)`
-/

namespace A160786.P13047808886649977417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (2 * n + 1)

end

end A160786.P13047808886649977417

/-! ## A160786.P3814983325799233945

`A046682(Δ[n²])`
-/

namespace A160786.P3814983325799233945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160786.P3814983325799233945

/-! ## A160786.P8825677811824314122

`∑{d}[2*n+1, A339398(#)]`
-/

namespace A160786.P8825677811824314122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339398 d

end

end A160786.P8825677811824314122

/-! ## A160786.P12066046772630850883

`A236914(n)+A069911(n)`
-/

namespace A160786.P12066046772630850883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236914 n + A069911 n

end

end A160786.P12066046772630850883

/-! ## A160786.P12932625187927368812

`record[gcd(A027193(n), A035363(n))]`
-/

namespace A160786.P12932625187927368812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027193 n) (A035363 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160786.P12932625187927368812

/-! ## A160786.P10044749273899028702

`A236914(n)+A000700(2*n+1)`
-/

namespace A160786.P10044749273899028702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236914 n + A000700 (2 * n + 1)

end

end A160786.P10044749273899028702

/-! ## A160786.P7459561847465212896

`A000701(2*n+1)+A000700(2*n+1)`
-/

namespace A160786.P7459561847465212896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n + 1) + A000700 (2 * n + 1)

end

end A160786.P7459561847465212896

/-! ## A160786.P289649578560874598

`A027187(2*n+1)+A000700(2*n+1)`
-/

namespace A160786.P289649578560874598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n + 1) + A000700 (2 * n + 1)

end

end A160786.P289649578560874598

/-! ## A160786.P9051744840452992784

`A000701(2*n+1)-A081362(2*n+1)`
-/

namespace A160786.P9051744840452992784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n + 1) - A081362 (2 * n + 1)

end

end A160786.P9051744840452992784

/-! ## A160786.P105618769492371573

`A027187(2*n+1)-A081362(2*n+1)`
-/

namespace A160786.P105618769492371573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n + 1) - A081362 (2 * n + 1)

end

end A160786.P105618769492371573

/-! ## A160786.P6313463811231978860

`A058695(n)-A236914(n)`
-/

namespace A160786.P6313463811231978860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A236914 n

end

end A160786.P6313463811231978860

/-! ## A160786.P7573277834350857004

`A058695(n)-A000701(2*n+1)`
-/

namespace A160786.P7573277834350857004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A000701 (2 * n + 1)

end

end A160786.P7573277834350857004

/-! ## A160786.P16063017375362551927

`A058695(n)-A027187(2*n+1)`
-/

namespace A160786.P16063017375362551927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A027187 (2 * n + 1)

end

end A160786.P16063017375362551927

/-! ## A160786.P52303634856865966

`A000041(2*n+1)-A000701(2*n+1)`
-/

namespace A160786.P52303634856865966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A000701 (2 * n + 1)

end

end A160786.P52303634856865966

/-! ## A160786.P2689268019131657133

`A000041(2*n+1)-A027187(2*n+1)`
-/

namespace A160786.P2689268019131657133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A027187 (2 * n + 1)

end

end A160786.P2689268019131657133

/-! ## A160786.P11746365687550269074

`A086543(2*n+1)-A000701(2*n+1)`
-/

namespace A160786.P11746365687550269074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (2 * n + 1) - A000701 (2 * n + 1)

end

end A160786.P11746365687550269074

/-! ## A160786.P6525954064756238054

`A306145(2*n+1)-A306145(2*n)`
-/

namespace A160786.P6525954064756238054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306145 (2 * n + 1) - A306145 (2 * n)

end

end A160786.P6525954064756238054

/-!
# A160787: G.f.: (21+104*x+103*x^2+23*x^3+x^4)/(1-x)^5.

The programs for A160787, the canonical program `A160787.P11173986009072225972` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160787 has offset 0).

The definition of A160787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160787.P11173986009072225972

`(63*n^4+247*n^3+441*n²+377*n+126)/6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160787

/-- `(63*n^4+247*n^3+441*n²+377*n+126)/6` -/
def P11173986009072225972.Spec : Prop :=
  ∀ n, P11173986009072225972.a n = (A160787 n : ℚ)

end A160787

/-! ## A160787.P702884446950066239

`A368046(n)+A160769(n)`
-/

namespace A160787.P702884446950066239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n + A160769 n

end

end A160787.P702884446950066239

namespace A160787

/-- `A368046(n)+A160769(n)` -/
def P702884446950066239.Spec : Prop :=
  ∀ n, P702884446950066239.a n = A160787 n

end A160787

/-! ## A160787.P14806798806651378883

`A160768(n)+2*A368046(n)`
-/

namespace A160787.P14806798806651378883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160768 n + 2 * A368046 n

end

end A160787.P14806798806651378883

namespace A160787

/-- `A160768(n)+2*A368046(n)` -/
def P14806798806651378883.Spec : Prop :=
  ∀ n, P14806798806651378883.a n = A160787 n

end A160787

/-! ## A160787.P9684800838326532366

`2*A160769(n)-A160768(n)`
-/

namespace A160787.P9684800838326532366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160769 n - A160768 n

end

end A160787.P9684800838326532366

namespace A160787

/-- `2*A160769(n)-A160768(n)` -/
def P9684800838326532366.Spec : Prop :=
  ∀ n, P9684800838326532366.a n = A160787 n

end A160787

/-!
# A160788: G.f.: (1+62*x+561*x^2+1014*x^3+449*x^4+48*x^5+x^6)/(1-x)^7.

The programs for A160788, the canonical program `A160788.P1866869141177683774` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160788 has offset 0).

The definition of A160788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160788.P17342539585421100088

`A160836(n)-A169801(n)`
-/

namespace A160788.P17342539585421100088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160836 n - A169801 n

end

end A160788.P17342539585421100088

namespace A160788

/-- `A160836(n)-A169801(n)` -/
def P17342539585421100088.Spec : Prop :=
  ∀ n, P17342539585421100088.a n = A160788 n

end A160788

/-! ## A160788.P622644085594366984

`A160831(n)-A135503(n)²`
-/

namespace A160788.P622644085594366984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - A135503 n ^ 2

end

end A160788.P622644085594366984

namespace A160788

/-- `A160831(n)-A135503(n)²` -/
def P622644085594366984.Spec : Prop :=
  ∀ n, P622644085594366984.a n = A160788 n

end A160788

/-! ## A160788.P12015467051601049523

`A160834(n)-A179058(n+1)`
-/

namespace A160788.P12015467051601049523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n - A179058 (n + 1)

end

end A160788.P12015467051601049523

namespace A160788

/-- `A160834(n)-A179058(n+1)` -/
def P12015467051601049523.Spec : Prop :=
  ∀ n, P12015467051601049523.a n = A160788 n

end A160788

/-! ## A160788.P12676023878011441634

`2*A160815(n)-A160816(n)`
-/

namespace A160788.P12676023878011441634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160815 n - A160816 n

end

end A160788.P12676023878011441634

namespace A160788

/-- `2*A160815(n)-A160816(n)` -/
def P12676023878011441634.Spec : Prop :=
  ∀ n, P12676023878011441634.a n = A160788 n

end A160788

/-! ## A160788.P17101804633636902942

`2*A160816(n)-A160836(n)`
-/

namespace A160788.P17101804633636902942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160816 n - A160836 n

end

end A160788.P17101804633636902942

namespace A160788

/-- `2*A160816(n)-A160836(n)` -/
def P17101804633636902942.Spec : Prop :=
  ∀ n, P17101804633636902942.a n = A160788 n

end A160788

/-! ## A160788.P6123449019203981134

`2*A160817(n)-A160834(n)`
-/

namespace A160788.P6123449019203981134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160817 n - A160834 n

end

end A160788.P6123449019203981134

namespace A160788

/-- `2*A160817(n)-A160834(n)` -/
def P6123449019203981134.Spec : Prop :=
  ∀ n, P6123449019203981134.a n = A160788 n

end A160788

/-! ## A160788.P4159404241969252416

`2*A160836(n)-A160833(n)`
-/

namespace A160788.P4159404241969252416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160836 n - A160833 n

end

end A160788.P4159404241969252416

namespace A160788

/-- `2*A160836(n)-A160833(n)` -/
def P4159404241969252416.Spec : Prop :=
  ∀ n, P4159404241969252416.a n = A160788 n

end A160788

/-! ## A160788.P6103628643774625523

`A160833(n)-2*A169801(n)`
-/

namespace A160788.P6103628643774625523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - 2 * A169801 n

end

end A160788.P6103628643774625523

namespace A160788

/-- `A160833(n)-2*A169801(n)` -/
def P6103628643774625523.Spec : Prop :=
  ∀ n, P6103628643774625523.a n = A160788 n

end A160788

/-! ## A160788.P3301902819131860117

`A160816(n)-A169801(n)/2`
-/

namespace A160788.P3301902819131860117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160816 n : ℚ) - (A169801 n : ℚ) / 2

end

end A160788.P3301902819131860117

namespace A160788

/-- `A160816(n)-A169801(n)/2` -/
def P3301902819131860117.Spec : Prop :=
  ∀ n, P3301902819131860117.a n = (A160788 n : ℚ)

end A160788

/-! ## A160788.P7203079746671745525

`A160817(n)-A179058(n+1)/2`
-/

namespace A160788.P7203079746671745525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160817 n : ℚ) - (A179058 (n + 1) : ℚ) / 2

end

end A160788.P7203079746671745525

namespace A160788

/-- `A160817(n)-A179058(n+1)/2` -/
def P7203079746671745525.Spec : Prop :=
  ∀ n, P7203079746671745525.a n = (A160788 n : ℚ)

end A160788

/-! ## A160788.P8389056037505015538

`A160816(n)-A179058(n+1)/3`
-/

namespace A160788.P8389056037505015538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160816 n : ℚ) - (A179058 (n + 1) : ℚ) / 3

end

end A160788.P8389056037505015538

namespace A160788

/-- `A160816(n)-A179058(n+1)/3` -/
def P8389056037505015538.Spec : Prop :=
  ∀ n, P8389056037505015538.a n = (A160788 n : ℚ)

end A160788

/-! ## A160788.P7411582330467504360

`A160816(n)+A160834(n)-A160833(n)`
-/

namespace A160788.P7411582330467504360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (A160834 n - A160833 n)

end

end A160788.P7411582330467504360

namespace A160788

/-- `A160816(n)+A160834(n)-A160833(n)` -/
def P7411582330467504360.Spec : Prop :=
  ∀ n, P7411582330467504360.a n = A160788 n

end A160788

/-! ## A160788.P5231332066573579450

`A160817(n)+A160834(n)-A160831(n)`
-/

namespace A160788.P5231332066573579450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (A160834 n - A160831 n)

end

end A160788.P5231332066573579450

namespace A160788

/-- `A160817(n)+A160834(n)-A160831(n)` -/
def P5231332066573579450.Spec : Prop :=
  ∀ n, P5231332066573579450.a n = A160788 n

end A160788

/-! ## A160788.P10848675622657142115

`A160817(n)-A002415(n)*A132411(n)`
-/

namespace A160788.P10848675622657142115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n - A002415 n * A132411 n

end

end A160788.P10848675622657142115

namespace A160788

/-- `A160817(n)-A002415(n)*A132411(n)` -/
def P10848675622657142115.Spec : Prop :=
  ∀ n, P10848675622657142115.a n = A160788 n

end A160788

/-! ## A160788.P1866869141177683774

`A160834(n)-A008911(n)*A132411(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160788

/-- `A160834(n)-A008911(n)*A132411(n)` -/
def P1866869141177683774.Spec : Prop :=
  ∀ n, P1866869141177683774.a n = A160788 n

theorem P1866869141177683774.correct : P1866869141177683774.Spec := by
  intro n
  simp only [A160788]

end A160788

/-! ## A160788.P14899839899637393510

`A160817(n)-A002415(n)*A106230(n+1)`
-/

namespace A160788.P14899839899637393510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n - A002415 n * A106230 (n + 1)

end

end A160788.P14899839899637393510

namespace A160788

/-- `A160817(n)-A002415(n)*A106230(n+1)` -/
def P14899839899637393510.Spec : Prop :=
  ∀ n, P14899839899637393510.a n = A160788 n

end A160788

/-! ## A160788.P1007620479689535425

`A160834(n)-A161680(n)*A288961(n+1)`
-/

namespace A160788.P1007620479689535425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n - A161680 n * A288961 (n + 1)

end

end A160788.P1007620479689535425

namespace A160788

/-- `A160834(n)-A161680(n)*A288961(n+1)` -/
def P1007620479689535425.Spec : Prop :=
  ∀ n, P1007620479689535425.a n = A160788 n

end A160788

/-! ## A160788.P1112434590796750361

`A160834(n)-lcm(A002415(n), A303212(n+1))`
-/

namespace A160788.P1112434590796750361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n - (Int.lcm (A002415 n) (A303212 (n + 1)) : ℤ)

end

end A160788.P1112434590796750361

namespace A160788

/-- `A160834(n)-lcm(A002415(n), A303212(n+1))` -/
def P1112434590796750361.Spec : Prop :=
  ∀ n, P1112434590796750361.a n = A160788 n

end A160788

/-!
# A160790: Vertex number of a rectangular spiral. The first differences (A160791) are the edge lengths of the spiral. The distances between two nearest edges, that are parallel to the initial edge, are the natural numbers.

The programs for A160790, the canonical program `A160790.P7793593589149320109` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160790 has offset 0).

The definition of A160790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160790.P8779416962086992243

`∪[∑[∑[n+2]], ∑[∑[n]]]`
-/

namespace A160790.P8779416962086992243
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A160790.P8779416962086992243

namespace A160790

/-- `∪[∑[∑[n+2]], ∑[∑[n]]]` -/
def P8779416962086992243.Spec : Prop :=
  ∀ n, (P8779416962086992243.a n : ℤ) = A160790 n

end A160790

/-! ## A160790.P7793593589149320109

`∑[a(n-2)+gcd(n, a(n-1))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160790

/-- `∑[a(n-2)+gcd(n, a(n-1))]` -/
def P7793593589149320109.Spec : Prop :=
  ∀ n, (P7793593589149320109.a n : ℤ) = A160790 n

theorem P7793593589149320109.correct : P7793593589149320109.Spec := by
  intro n
  simp only [A160790]

end A160790

/-! ## A160790.P12798627845315489765

`∑[a(n-2)+(n+1)%2]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A160790.P12798627845315489765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A160790.P12798627845315489765

namespace A160790

/-- `∑[a(n-2)+(n+1)%2]+a(n-2)` -/
def P12798627845315489765.Spec : Prop :=
  ∀ n, (P12798627845315489765.a n : ℤ) = A160790 n

end A160790

/-! ## A160790.P14205926117718885497

`∑[A160791(n)]`
-/

namespace A160790.P14205926117718885497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160790.P14205926117718885497

namespace A160790

/-- `∑[A160791(n)]` -/
def P14205926117718885497.Spec : Prop :=
  ∀ n, P14205926117718885497.a n = A160790 n

end A160790

/-! ## A160790.P1322843313655268359

`∑[n+1]-A081499(n+1)`
-/

namespace A160790.P1322843313655268359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081499 (n + 1)

end

end A160790.P1322843313655268359

namespace A160790

/-- `∑[n+1]-A081499(n+1)` -/
def P1322843313655268359.Spec : Prop :=
  ∀ n, P1322843313655268359.a n = A160790 n

end A160790

/-! ## A160790.P17463911624740844896

`C(floor(n/2)+3, 3)-A027656(n)`
-/

namespace A160790.P17463911624740844896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (⌊(n : ℚ) / 2⌋ + 3).toNat 3 : ℤ) - A027656 n

end

end A160790.P17463911624740844896

namespace A160790

/-- `C(floor(n/2)+3, 3)-A027656(n)` -/
def P17463911624740844896.Spec : Prop :=
  ∀ n, P17463911624740844896.a n = A160790 n

end A160790

/-! ## A160790.P11824419776177711088

`A058187(n)-A027656(n)`
-/

namespace A160790.P11824419776177711088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n - A027656 n

end

end A160790.P11824419776177711088

namespace A160790

/-- `A058187(n)-A027656(n)` -/
def P11824419776177711088.Spec : Prop :=
  ∀ n, P11824419776177711088.a n = A160790 n

end A160790

/-! ## A160790.P17368039313203195187

`A000096(n)+1-A081499(n+1)`
-/

namespace A160790.P17368039313203195187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A081499 (n + 1))

end

end A160790.P17368039313203195187

namespace A160790

/-- `A000096(n)+1-A081499(n+1)` -/
def P17368039313203195187.Spec : Prop :=
  ∀ n, P17368039313203195187.a n = A160790 n

end A160790

/-! ## A160790.P1867535786611472709

`A000292(n+1)-(A081499(n+1)+A000292(n))`
-/

namespace A160790.P1867535786611472709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A081499 (n + 1) + A000292 n)

end

end A160790.P1867535786611472709

namespace A160790

/-- `A000292(n+1)-(A081499(n+1)+A000292(n))` -/
def P1867535786611472709.Spec : Prop :=
  ∀ n, P1867535786611472709.a n = A160790 n

end A160790

/-! ## A160790.P6116790291436210319

`A080956(n+1)+A005563(n)-A081499(n+1)`
-/

namespace A160790.P6116790291436210319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (n + 1) + (A005563 n - A081499 (n + 1))

end

end A160790.P6116790291436210319

namespace A160790

/-- `A080956(n+1)+A005563(n)-A081499(n+1)` -/
def P6116790291436210319.Spec : Prop :=
  ∀ n, P6116790291436210319.a n = A160790 n

end A160790

/-! ## A160790.P10560383329911170029

`∑[A161680(A057979(n+1))+A004526(n+1)]`
-/

namespace A160790.P10560383329911170029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A057979 (n + 1)).toNat + A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160790.P10560383329911170029

namespace A160790

/-- `∑[A161680(A057979(n+1))+A004526(n+1)]` -/
def P10560383329911170029.Spec : Prop :=
  ∀ n, P10560383329911170029.a n = A160790 n

end A160790

/-! ## A160790.P656022408062604374

`∑[A161680(A057979(n+1))+A123108(n+1)]`
-/

namespace A160790.P656022408062604374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A057979 (n + 1)).toNat + A123108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160790.P656022408062604374

namespace A160790

/-- `∑[A161680(A057979(n+1))+A123108(n+1)]` -/
def P656022408062604374.Spec : Prop :=
  ∀ n, P656022408062604374.a n = A160790 n

end A160790

/-! ## A160790.P5807526776300552197

`A002620(n+1)+A055803(n+4)-A055802(n+3)`
-/

namespace A160790.P5807526776300552197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A055803 (n + 4) - A055802 (n + 3))

end

end A160790.P5807526776300552197

namespace A160790

/-- `A002620(n+1)+A055803(n+4)-A055802(n+3)` -/
def P5807526776300552197.Spec : Prop :=
  ∀ n, P5807526776300552197.a n = A160790 n

end A160790

/-! ## A160790.P1931724524763040232

`∑[C(A103221(3*n), A059841(n)+1)]`
-/

namespace A160790.P1931724524763040232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A103221 (3 * n)).toNat (A059841 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160790.P1931724524763040232

namespace A160790

/-- `∑[C(A103221(3*n), A059841(n)+1)]` -/
def P1931724524763040232.Spec : Prop :=
  ∀ n, (P1931724524763040232.a n : ℤ) = A160790 n

end A160790

/-! ## A160790.P5159302225245293372

`eq[1, A007318(n)]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A160790.P5159302225245293372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + a (n - 2)

end

end A160790.P5159302225245293372

namespace A160790

/-- `eq[1, A007318(n)]+a(n-2)` -/
def P5159302225245293372.Spec : Prop :=
  ∀ n, (P5159302225245293372.a n : ℤ) = A160790 n

end A160790

/-! ## A160790.P8083852012682192518

`record[∑[A002260(n+1)]-A141419(n+1)]`
-/

namespace A160790.P8083852012682192518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A141419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160790.P8083852012682192518

namespace A160790

/-- `record[∑[A002260(n+1)]-A141419(n+1)]` -/
def P8083852012682192518.Spec : Prop :=
  ∀ n, P8083852012682192518.a n = A160790 n

end A160790

/-! ## A160790.P14142200315788111754

`A111138(A117142(n+2))`
-/

namespace A160790.P14142200315788111754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111138 (A117142 (n + 2)).toNat

end

end A160790.P14142200315788111754

namespace A160790

/-- `A111138(A117142(n+2))` -/
def P14142200315788111754.Spec : Prop :=
  ∀ n, P14142200315788111754.a n = A160790 n

end A160790

/-! ## A160790.P17606238130890775799

`∑[A026729(∑[A109613(n)])]`
-/

namespace A160790.P17606238130890775799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160790.P17606238130890775799

namespace A160790

/-- `∑[A026729(∑[A109613(n)])]` -/
def P17606238130890775799.Spec : Prop :=
  ∀ n, P17606238130890775799.a n = A160790 n

end A160790

/-!
# A160791: a(n) = binomial(N, n - N) where N = 1 + floor(n/2).

The programs for A160791, the canonical program `A160791.P15117197116735870967` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160791 has offset 0).

The definition of A160791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160791.P15117197116735870967

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160791

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P15117197116735870967.Spec : Prop :=
  ∀ n, P15117197116735870967.a n = A160791 n

theorem P15117197116735870967.correct : P15117197116735870967.Spec := by
  intro n
  simp only [A160791]

end A160791

/-! ## A160791.P16048993564872033261

`(n²+6*n+4+(n²-2*n-4)*(-1)^n)/16`
-/

namespace A160791.P16048993564872033261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 6 * n + 4 : ℤ) + ((n ^ 2 : ℤ) - (2 * n : ℤ) - 4) * (-1) ^ n : ℚ) / 16

end

end A160791.P16048993564872033261

namespace A160791

/-- `(n²+6*n+4+(n²-2*n-4)*(-1)^n)/16` -/
def P16048993564872033261.Spec : Prop :=
  ∀ n, P16048993564872033261.a n = (A160791 n : ℚ)

theorem P16048993564872033261.correct : P16048993564872033261.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A160791, Nat.add_sub_cancel, A160791.P16048993564872033261.a, A160791.P15117197116735870967.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A160791, Nat.add_sub_cancel, A160791.P16048993564872033261.a, A160791.P15117197116735870967.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A160791

/-! ## A160791.P15190737944037970576

`C(floor((n+2)/2), gcd(2, n))`
-/

namespace A160791.P15190737944037970576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n + 2 : ℚ) / 2⌋.toNat (Nat.gcd 2 n)

end

end A160791.P15190737944037970576

namespace A160791

/-- `C(floor((n+2)/2), gcd(2, n))` -/
def P15190737944037970576.Spec : Prop :=
  ∀ n, (P15190737944037970576.a n : ℤ) = A160791 n

end A160791

/-! ## A160791.P10881326404099577745

`∑[floor(n/(a(n-1)+1))]-a(n-1)` with `a(0)=0`
-/

namespace A160791.P10881326404099577745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(n : ℚ) / (f1 (n - 1) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A160791.P10881326404099577745

namespace A160791

/-- `∑[floor(n/(a(n-1)+1))]-a(n-1)` -/
def P10881326404099577745.Spec : Prop :=
  ∀ n, P10881326404099577745.a n = A160791 n

end A160791

/-! ## A160791.P16219162041266152136

`A106247(n)-A152271(n)`
-/

namespace A160791.P16219162041266152136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 n - A152271 n

end

end A160791.P16219162041266152136

namespace A160791

/-- `A106247(n)-A152271(n)` -/
def P16219162041266152136.Spec : Prop :=
  ∀ n, P16219162041266152136.a n = A160791 n

end A160791

/-! ## A160791.P2556166114749466945

`gcd(A083392(n), A131259(n))`
-/

namespace A160791.P2556166114749466945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083392 n) (A131259 n)

end

end A160791.P2556166114749466945

namespace A160791

/-- `gcd(A083392(n), A131259(n))` -/
def P2556166114749466945.Spec : Prop :=
  ∀ n, (P2556166114749466945.a n : ℤ) = A160791 n

end A160791

/-! ## A160791.P15296165906228796476

`gcd(A109900(n), A110660(n))`
-/

namespace A160791.P15296165906228796476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109900 n) (A110660 n)

end

end A160791.P15296165906228796476

namespace A160791

/-- `gcd(A109900(n), A110660(n))` -/
def P15296165906228796476.Spec : Prop :=
  ∀ n, (P15296165906228796476.a n : ℤ) = A160791 n

end A160791

/-! ## A160791.P16348897522028966826

`A131174(n+1)-A142150(n+1)²`
-/

namespace A160791.P16348897522028966826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131174 (n + 1) - A142150 (n + 1) ^ 2

end

end A160791.P16348897522028966826

namespace A160791

/-- `A131174(n+1)-A142150(n+1)²` -/
def P16348897522028966826.Spec : Prop :=
  ∀ n, P16348897522028966826.a n = A160791 n

end A160791

/-! ## A160791.P10264254806699622277

`A142150(n+1)+A000217(A142150(n))`
-/

namespace A160791.P10264254806699622277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A000217 (A142150 n).toNat

end

end A160791.P10264254806699622277

namespace A160791

/-- `A142150(n+1)+A000217(A142150(n))` -/
def P10264254806699622277.Spec : Prop :=
  ∀ n, P10264254806699622277.a n = A160791 n

end A160791

/-! ## A160791.P9251446890584013661

`A161680(A057979(n+1))+A004526(n+1)`
-/

namespace A160791.P9251446890584013661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A057979 (n + 1)).toNat + A004526 (n + 1)

end

end A160791.P9251446890584013661

namespace A160791

/-- `A161680(A057979(n+1))+A004526(n+1)` -/
def P9251446890584013661.Spec : Prop :=
  ∀ n, P9251446890584013661.a n = A160791 n

end A160791

/-! ## A160791.P11097172619038535044

`A161680(A057979(n+1))+A123108(n+1)`
-/

namespace A160791.P11097172619038535044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A057979 (n + 1)).toNat + A123108 (n + 1)

end

end A160791.P11097172619038535044

namespace A160791

/-- `A161680(A057979(n+1))+A123108(n+1)` -/
def P11097172619038535044.Spec : Prop :=
  ∀ n, P11097172619038535044.a n = A160791 n

end A160791

/-! ## A160791.P1607135537687323689

`A002620(n+2)-A124093(n+2)`
-/

namespace A160791.P1607135537687323689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A124093 (n + 2)

end

end A160791.P1607135537687323689

namespace A160791

/-- `A002620(n+2)-A124093(n+2)` -/
def P1607135537687323689.Spec : Prop :=
  ∀ n, P1607135537687323689.a n = A160791 n

end A160791

/-! ## A160791.P1692110289751053663

`A141418(A134519(n+1))`
-/

namespace A160791.P1692110289751053663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (A134519 (n + 1)).toNat

end

end A160791.P1692110289751053663

namespace A160791

/-- `A141418(A134519(n+1))` -/
def P1692110289751053663.Spec : Prop :=
  ∀ n, P1692110289751053663.a n = A160791 n

end A160791

/-! ## A160791.P15813173746090352689

`A139600(A165157(n)+1)`
-/

namespace A160791.P15813173746090352689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A165157 n + 1).toNat

end

end A160791.P15813173746090352689

namespace A160791

/-- `A139600(A165157(n)+1)` -/
def P15813173746090352689.Spec : Prop :=
  ∀ n, P15813173746090352689.a n = A160791 n

end A160791

/-! ## A160791.P10708290537575930882

`A171731(A165157(n))`
-/

namespace A160791.P10708290537575930882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 (A165157 n).toNat

end

end A160791.P10708290537575930882

namespace A160791

/-- `A171731(A165157(n))` -/
def P10708290537575930882.Spec : Prop :=
  ∀ n, P10708290537575930882.a n = A160791 n

end A160791

/-! ## A160791.P3428496357051456513

`A103438(A101881(n))`
-/

namespace A160791.P3428496357051456513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (A101881 n).toNat

end

end A160791.P3428496357051456513

namespace A160791

/-- `A103438(A101881(n))` -/
def P3428496357051456513.Spec : Prop :=
  ∀ n, P3428496357051456513.a n = A160791 n

end A160791

/-! ## A160791.P17010407500970111559

`A152815(A316671(n+2))`
-/

namespace A160791.P17010407500970111559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (A316671 (n + 2)).toNat

end

end A160791.P17010407500970111559

namespace A160791

/-- `A152815(A316671(n+2))` -/
def P17010407500970111559.Spec : Prop :=
  ∀ n, P17010407500970111559.a n = A160791 n

end A160791

/-! ## A160791.P15367979289293996720

`A152815(A183575(n+2))`
-/

namespace A160791.P15367979289293996720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (A183575 (n + 2)).toNat

end

end A160791.P15367979289293996720

namespace A160791

/-- `A152815(A183575(n+2))` -/
def P15367979289293996720.Spec : Prop :=
  ∀ n, P15367979289293996720.a n = A160791 n

end A160791

/-! ## A160791.P3641393094037555741

`A124072(A240134(n+1))`
-/

namespace A160791.P3641393094037555741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A240134 (n + 1)).toNat

end

end A160791.P3641393094037555741

namespace A160791

/-- `A124072(A240134(n+1))` -/
def P3641393094037555741.Spec : Prop :=
  ∀ n, P3641393094037555741.a n = A160791 n

end A160791

/-! ## A160791.P16598610604717038604

`A026729(A000982(n+1))`
-/

namespace A160791.P16598610604717038604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (A000982 (n + 1)).toNat

end

end A160791.P16598610604717038604

namespace A160791

/-- `A026729(A000982(n+1))` -/
def P16598610604717038604.Spec : Prop :=
  ∀ n, P16598610604717038604.a n = A160791 n

end A160791

/-!
# A160792: Vertex number of a rectangular spiral related to prime numbers. The distances between nearest edges of the spiral that are parallel to the initial edge are the prime numbers, while the distances between nearest edges perpendicular to the initial edge are all one.

The programs for A160792, the canonical program `A160792.P10104784036141985292` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160792 has offset 0).

The definition of A160792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160792.P1061058298818359356

`A160793(n)+a(n-1)` with `a(0)=0`
-/

namespace A160792.P1061058298818359356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160793 n + a (n - 1)

end

end A160792.P1061058298818359356

namespace A160792

/-- `A160793(n)+a(n-1)` -/
def P1061058298818359356.Spec : Prop :=
  ∀ n, P1061058298818359356.a n = A160792 n

end A160792

/-! ## A160792.P17279585855174089986

`∑[A160793(A028310(n))]-1`
-/

namespace A160792.P17279585855174089986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160792.P17279585855174089986

namespace A160792

/-- `∑[A160793(A028310(n))]-1` -/
def P17279585855174089986.Spec : Prop :=
  ∀ n, P17279585855174089986.a n = A160792 n

end A160792

/-! ## A160792.P3968749449305801341

`∑[A160793(n+1)]-A160793(n+1)`
-/

namespace A160792.P3968749449305801341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160793 (n + 1)

end

end A160792.P3968749449305801341

namespace A160792

/-- `∑[A160793(n+1)]-A160793(n+1)` -/
def P3968749449305801341.Spec : Prop :=
  ∀ n, P3968749449305801341.a n = A160792 n

end A160792

/-! ## A160792.P10104784036141985292

`∑[A142150(n+1)+A007504(A142150(n))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160792

/-- `∑[A142150(n+1)+A007504(A142150(n))]` -/
def P10104784036141985292.Spec : Prop :=
  ∀ n, P10104784036141985292.a n = A160792 n

theorem P10104784036141985292.correct : P10104784036141985292.Spec := by
  intro n
  simp only [A160792]

end A160792

/-! ## A160792.P14961784045383301821

`∑[A160793(A028310(n))%A000070(n)]`
-/

namespace A160792.P14961784045383301821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160793 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160792.P14961784045383301821

namespace A160792

/-- `∑[A160793(A028310(n))%A000070(n)]` -/
def P14961784045383301821.Spec : Prop :=
  ∀ n, P14961784045383301821.a n = A160792 n

end A160792

/-!
# A160793: Natural numbers and the sum of first n primes interleaved.

The programs for A160793, the canonical program `A160793.P11956426580748944804` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160793 has offset 1).

The definition of A160793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160793.P11956426580748944804

`A027656(n)+A007504(∑[A001057(n)])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160793

/-- `A027656(n)+A007504(∑[A001057(n)])` -/
def P11956426580748944804.Spec : Prop :=
  ∀ n, P11956426580748944804.a n = A160793 (n + 1)

theorem P11956426580748944804.correct : P11956426580748944804.Spec := by
  intro n
  simp only [A160793, Nat.add_sub_cancel]

end A160793

/-! ## A160793.P16941844097162196229

`Δ[A160792(n)]`
-/

namespace A160793.P16941844097162196229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160793.P16941844097162196229

namespace A160793

/-- `Δ[A160792(n)]` -/
def P16941844097162196229.Spec : Prop :=
  ∀ n, P16941844097162196229.a n = A160793 (n + 1)

end A160793

/-! ## A160793.P8773503243681814013

`A160792(n+1)-A160792(n)`
-/

namespace A160793.P8773503243681814013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160792 (n + 1) - A160792 n

end

end A160793.P8773503243681814013

namespace A160793

/-- `A160792(n+1)-A160792(n)` -/
def P8773503243681814013.Spec : Prop :=
  ∀ n, P8773503243681814013.a n = A160793 (n + 1)

end A160793

/-! ## A160793.P6926104839593462165

`A142150(n+2)+A007504(A142150(n+1))`
-/

namespace A160793.P6926104839593462165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 2) + A007504 (A142150 (n + 1)).toNat

end

end A160793.P6926104839593462165

namespace A160793

/-- `A142150(n+2)+A007504(A142150(n+1))` -/
def P6926104839593462165.Spec : Prop :=
  ∀ n, P6926104839593462165.a n = A160793 (n + 1)

end A160793

/-! ## A160793.P6631049741873183111

`abs(A160792(A029579(2*n))-A160792(n))`
-/

namespace A160793.P6631049741873183111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160792 (A029579 (2 * n)).toNat - A160792 n|

end

end A160793.P6631049741873183111

namespace A160793

/-- `abs(A160792(A029579(2*n))-A160792(n))` -/
def P6631049741873183111.Spec : Prop :=
  ∀ n, P6631049741873183111.a n = A160793 (n + 1)

end A160793

/-!
# A160794: Vertex number of a rectangular spiral related to Fibonacci numbers and prime numbers. The distances between nearest edges of the spiral that are parallel to the initial edge are the Fibonacci numbers, while the distances between nearest edges perpendicular to the initial edge are the prime numbers.

The programs for A160794, there is no canonical definition to state claims against.
-/

/-! ## A160794.P18407405330013819416

`A160795(n)+a(n-1)` with `a(0)=0`
-/

namespace A160794.P18407405330013819416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160795 n + a (n - 1)

end

end A160794.P18407405330013819416

/-! ## A160794.P8618581496705230856

`∑[A160795(floor(acot(n)+n))]-1`
-/

namespace A160794.P8618581496705230856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160795 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160794.P8618581496705230856

/-! ## A160794.P5798508119920450734

`∑[A160795(round(acot(n)+n))]-1`
-/

namespace A160794.P5798508119920450734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160795 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160794.P5798508119920450734

/-! ## A160794.P10229378138925051795

`∑[A160795(floor(sqrt(n²+1)))]-1`
-/

namespace A160794.P10229378138925051795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160795 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160794.P10229378138925051795

/-! ## A160794.P5428146640744731474

`A160795(n)-(n*A000007(n)-a(n-1))` with `a(0)=0`
-/

namespace A160794.P5428146640744731474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160795 n - ((n : ℤ) * A000007 n - a (n - 1))

end

end A160794.P5428146640744731474

/-! ## A160794.P8543439572929287700

`∑[A057427(n)*A160795(A233583(n+1))]`
-/

namespace A160794.P8543439572929287700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A160795 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160794.P8543439572929287700

/-! ## A160794.P5805106291180643391

`∑[A160795(A233583(n+1))*A178334(n)]`
-/

namespace A160794.P5805106291180643391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160795 (A233583 (n + 1)).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160794.P5805106291180643391

/-! ## A160794.P3234804862741850200

`∑[A160795(A233583(n+1))%A000079(n)]`
-/

namespace A160794.P3234804862741850200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160795 (A233583 (n + 1)).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160794.P3234804862741850200

/-!
# A160795: First differences of A160794.

The programs for A160795, there is no canonical definition to state claims against.
-/

/-! ## A160795.P2969420713711168092

`Δ[A160794(n)]`
-/

namespace A160795.P2969420713711168092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160795.P2969420713711168092

/-! ## A160795.P9078643438907891872

`A160794(n+1)-A160794(n)`
-/

namespace A160795.P9078643438907891872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160794 (n + 1) - A160794 n

end

end A160795.P9078643438907891872

/-! ## A160795.P3970958589214022967

`record[A160794(abs(1-n))]-A160794(n)`
-/

namespace A160795.P3970958589214022967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160794 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A160794 n

end

end A160795.P3970958589214022967

/-! ## A160795.P17479317930136125489

`A160794(n+1)+A160794(n)/A138952(A001316(n+1))`
-/

namespace A160795.P17479317930136125489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160794 (n + 1) : ℚ) + (A160794 n : ℚ) / (A138952 (A001316 (n + 1)).toNat : ℚ)

end

end A160795.P17479317930136125489

/-!
# A160796: Total number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton which is the "corner" structure corresponding to A160118.

The programs for A160796, the canonical program `A160796.P3091951535364728411` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160796 has offset 0).

The definition of A160796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160796.P3091951535364728411

`∑[A160797(A028310(n))]-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160796

/-- `∑[A160797(A028310(n))]-1` -/
def P3091951535364728411.Spec : Prop :=
  ∀ n, P3091951535364728411.a n = A160796 n

theorem P3091951535364728411.correct : P3091951535364728411.Spec := by
  intro n
  simp only [A160796]

end A160796

/-! ## A160796.P15951928450240560337

`∑[A160797(A028310(n))%A001844(n)]`
-/

namespace A160796.P15951928450240560337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160797 (A028310 n).toNat) (A001844 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160796.P15951928450240560337

namespace A160796

/-- `∑[A160797(A028310(n))%A001844(n)]` -/
def P15951928450240560337.Spec : Prop :=
  ∀ n, P15951928450240560337.a n = A160796 n

end A160796

/-! ## A160796.P10901800139886203976

`∑[A160797(n+1)]-A160797(n+1)`
-/

namespace A160796.P10901800139886203976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160797 (n + 1)

end

end A160796.P10901800139886203976

namespace A160796

/-- `∑[A160797(n+1)]-A160797(n+1)` -/
def P10901800139886203976.Spec : Prop :=
  ∀ n, P10901800139886203976.a n = A160796 n

end A160796

/-! ## A160796.P3159106291130852466

`∑[A160417(A047566(n+1))]-A160417(A047566(n+1))`
-/

namespace A160796.P3159106291130852466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A047566 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160417 (A047566 (n + 1)).toNat

end

end A160796.P3159106291130852466

namespace A160796

/-- `∑[A160417(A047566(n+1))]-A160417(A047566(n+1))` -/
def P3159106291130852466.Spec : Prop :=
  ∀ n, P3159106291130852466.a n = A160796 n

end A160796

/-! ## A160796.P15921997122674300343

`∑[A160798(A047425(n+1))]-A160417(A115419(n+1))`
-/

namespace A160796.P15921997122674300343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160798 (A047425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160417 (A115419 (n + 1)).toNat

end

end A160796.P15921997122674300343

namespace A160796

/-- `∑[A160798(A047425(n+1))]-A160417(A115419(n+1))` -/
def P15921997122674300343.Spec : Prop :=
  ∀ n, P15921997122674300343.a n = A160796 n

end A160796

/-! ## A160796.P17865056227900437134

`∑[A160417(A341522(n))]-A160417(A341522(n))`
-/

namespace A160796.P17865056227900437134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A341522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160417 (A341522 n).toNat

end

end A160796.P17865056227900437134

namespace A160796

/-- `∑[A160417(A341522(n))]-A160417(A341522(n))` -/
def P17865056227900437134.Spec : Prop :=
  ∀ n, P17865056227900437134.a n = A160796 n

end A160796

/-! ## A160796.P14265442180190147638

`A119733(A062880(n)-and(1, n))`
-/

namespace A160796.P14265442180190147638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A062880 n - (Nat.land 1 n : ℤ)).toNat

end

end A160796.P14265442180190147638

namespace A160796

/-- `A119733(A062880(n)-and(1, n))` -/
def P14265442180190147638.Spec : Prop :=
  ∀ n, P14265442180190147638.a n = A160796 n

end A160796

/-! ## A160796.P7321494401288760246

`A119733(A062880(n)-A000035(n))`
-/

namespace A160796.P7321494401288760246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A062880 n - A000035 n).toNat

end

end A160796.P7321494401288760246

namespace A160796

/-- `A119733(A062880(n)-A000035(n))` -/
def P7321494401288760246.Spec : Prop :=
  ∀ n, P7321494401288760246.a n = A160796 n

end A160796

/-!
# A160797: First differences of A160796.

The programs for A160797, the canonical program `A160797.P8421237475811936038` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160797 has offset 1).

The definition of A160797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160797.P8421237475811936038

`3*a(and(n, n-2))` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160797

/-- `3*a(and(n, n-2))` -/
def P8421237475811936038.Spec : Prop :=
  ∀ n, (P8421237475811936038.a n : ℤ) = A160797 (n + 1)

theorem P8421237475811936038.correct : P8421237475811936038.Spec := by
  intro n
  simp only [A160797, Nat.add_sub_cancel]

end A160797

/-! ## A160797.P13463301489117536072

`Δ[A160796(n)]`
-/

namespace A160797.P13463301489117536072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160797.P13463301489117536072

namespace A160797

/-- `Δ[A160796(n)]` -/
def P13463301489117536072.Spec : Prop :=
  ∀ n, P13463301489117536072.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P9518578823216371630

`A064194(A071044(n))`
-/

namespace A160797.P9518578823216371630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064194 (A071044 n).toNat

end

end A160797.P9518578823216371630

namespace A160797

/-- `A064194(A071044(n))` -/
def P9518578823216371630.Spec : Prop :=
  ∀ n, P9518578823216371630.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P6918658198204372254

`A160796(n+1)-A160796(n)`
-/

namespace A160797.P6918658198204372254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160796 (n + 1) - A160796 n

end

end A160797.P6918658198204372254

namespace A160797

/-- `A160796(n+1)-A160796(n)` -/
def P6918658198204372254.Spec : Prop :=
  ∀ n, P6918658198204372254.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P5866446828996109703

`A160417(or(n, n+2))`
-/

namespace A160797.P5866446828996109703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (Nat.lor n (n + 2))

end

end A160797.P5866446828996109703

namespace A160797

/-- `A160417(or(n, n+2))` -/
def P5866446828996109703.Spec : Prop :=
  ∀ n, P5866446828996109703.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P1870848380026923878

`A160798(A042963(n+1))`
-/

namespace A160797.P1870848380026923878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160798 (A042963 (n + 1)).toNat

end

end A160797.P1870848380026923878

namespace A160797

/-- `A160798(A042963(n+1))` -/
def P1870848380026923878.Spec : Prop :=
  ∀ n, P1870848380026923878.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P16512117092070195811

`A160798(A047425(n+1))`
-/

namespace A160797.P16512117092070195811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160798 (A047425 (n + 1)).toNat

end

end A160797.P16512117092070195811

namespace A160797

/-- `A160798(A047425(n+1))` -/
def P16512117092070195811.Spec : Prop :=
  ∀ n, P16512117092070195811.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P6200618041574769878

`A160798(A047431(n+1))`
-/

namespace A160797.P6200618041574769878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160798 (A047431 (n + 1)).toNat

end

end A160797.P6200618041574769878

namespace A160797

/-- `A160798(A047431(n+1))` -/
def P6200618041574769878.Spec : Prop :=
  ∀ n, P6200618041574769878.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P9606711325532405447

`A160417(A042964(n+1))`
-/

namespace A160797.P9606711325532405447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A042964 (n + 1)).toNat

end

end A160797.P9606711325532405447

namespace A160797

/-- `A160417(A042964(n+1))` -/
def P9606711325532405447.Spec : Prop :=
  ∀ n, P9606711325532405447.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P6972965150656747035

`A160417(A047566(n+1))`
-/

namespace A160797.P6972965150656747035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A047566 (n + 1)).toNat

end

end A160797.P6972965150656747035

namespace A160797

/-- `A160417(A047566(n+1))` -/
def P6972965150656747035.Spec : Prop :=
  ∀ n, P6972965150656747035.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P7134078940951280994

`A160417(A047578(n+1))`
-/

namespace A160797.P7134078940951280994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A047578 (n + 1)).toNat

end

end A160797.P7134078940951280994

namespace A160797

/-- `A160417(A047578(n+1))` -/
def P7134078940951280994.Spec : Prop :=
  ∀ n, P7134078940951280994.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P1138776553201283201

`A160417(A053438(n+1))`
-/

namespace A160797.P1138776553201283201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A053438 (n + 1)).toNat

end

end A160797.P1138776553201283201

namespace A160797

/-- `A160417(A053438(n+1))` -/
def P1138776553201283201.Spec : Prop :=
  ∀ n, P1138776553201283201.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P930296707521698041

`A160417(A115419(n+1))`
-/

namespace A160797.P930296707521698041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A115419 (n + 1)).toNat

end

end A160797.P930296707521698041

namespace A160797

/-- `A160417(A115419(n+1))` -/
def P930296707521698041.Spec : Prop :=
  ∀ n, P930296707521698041.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P2276269789684982531

`A160417(A047425(n+1)+1)`
-/

namespace A160797.P2276269789684982531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A047425 (n + 1) + 1).toNat

end

end A160797.P2276269789684982531

namespace A160797

/-- `A160417(A047425(n+1)+1)` -/
def P2276269789684982531.Spec : Prop :=
  ∀ n, P2276269789684982531.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P7772987010880455413

`A160417(A047617(n+1)-2*n)`
-/

namespace A160797.P7772987010880455413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A047617 (n + 1) - (2 * n : ℤ)).toNat

end

end A160797.P7772987010880455413

namespace A160797

/-- `A160417(A047617(n+1)-2*n)` -/
def P7772987010880455413.Spec : Prop :=
  ∀ n, P7772987010880455413.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P1960131143823201574

`A160417(A047617(n+1)-n-n)`
-/

namespace A160797.P1960131143823201574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A047617 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A160797.P1960131143823201574

namespace A160797

/-- `A160417(A047617(n+1)-n-n)` -/
def P1960131143823201574.Spec : Prop :=
  ∀ n, P1960131143823201574.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P1430921095379896377

`A160417(A115421(n+1))`
-/

namespace A160797.P1430921095379896377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A115421 (n + 1)).toNat

end

end A160797.P1430921095379896377

namespace A160797

/-- `A160417(A115421(n+1))` -/
def P1430921095379896377.Spec : Prop :=
  ∀ n, P1430921095379896377.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P17642306445464566145

`A160417(A341522(n))`
-/

namespace A160797.P17642306445464566145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A341522 n).toNat

end

end A160797.P17642306445464566145

namespace A160797

/-- `A160417(A341522(n))` -/
def P17642306445464566145.Spec : Prop :=
  ∀ n, P17642306445464566145.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P2102461359109974487

`A160417(A206332(n+1))`
-/

namespace A160797.P2102461359109974487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A206332 (n + 1)).toNat

end

end A160797.P2102461359109974487

namespace A160797

/-- `A160417(A206332(n+1))` -/
def P2102461359109974487.Spec : Prop :=
  ∀ n, P2102461359109974487.a n = A160797 (n + 1)

end A160797

/-! ## A160797.P14257765471631264028

`A160798(A047457(n+1))`
-/

namespace A160797.P14257765471631264028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160798 (A047457 (n + 1)).toNat

end

end A160797.P14257765471631264028

namespace A160797

/-- `A160798(A047457(n+1))` -/
def P14257765471631264028.Spec : Prop :=
  ∀ n, P14257765471631264028.a n = A160797 (n + 1)

end A160797

/-!
# A160798: a(n) = A160797(n+2)/3.

The programs for A160798, the canonical program `A160798.P4220499149327281104` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160798 has offset 1).

The definition of A160798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160797, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160798.P4220499149327281104

`A160797(n+3)/3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160798

/-- `A160797(n+3)/3` -/
def P4220499149327281104.Spec : Prop :=
  ∀ n, P4220499149327281104.a n = (A160798 (n + 1) : ℚ)

end A160798

/-! ## A160798.P4469610552667790205

`A160415(n+3)/4`
-/

namespace A160798.P4469610552667790205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160415 (n + 3) : ℚ) / 4

end

end A160798.P4469610552667790205

namespace A160798

/-- `A160415(n+3)/4` -/
def P4469610552667790205.Spec : Prop :=
  ∀ n, P4469610552667790205.a n = (A160798 (n + 1) : ℚ)

end A160798

/-! ## A160798.P17816990783004494887

`Δ[A160796(n+2)/3]`
-/

namespace A160798.P17816990783004494887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160796 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160798.P17816990783004494887

namespace A160798

/-- `Δ[A160796(n+2)/3]` -/
def P17816990783004494887.Spec : Prop :=
  ∀ n, P17816990783004494887.a n = (A160798 (n + 1) : ℚ)

end A160798

/-! ## A160798.P9157732684963518307

`A160797(A106524(n))`
-/

namespace A160798.P9157732684963518307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (A106524 n).toNat

end

end A160798.P9157732684963518307

namespace A160798

/-- `A160797(A106524(n))` -/
def P9157732684963518307.Spec : Prop :=
  ∀ n, P9157732684963518307.a n = A160798 (n + 1)

end A160798

/-! ## A160798.P10143822776983297249

`A160797(A062050(n+2))`
-/

namespace A160798.P10143822776983297249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (A062050 (n + 2)).toNat

end

end A160798.P10143822776983297249

namespace A160798

/-- `A160797(A062050(n+2))` -/
def P10143822776983297249.Spec : Prop :=
  ∀ n, P10143822776983297249.a n = A160798 (n + 1)

end A160798

/-! ## A160798.P10355840942713345845

`A160797(A163575(n+1)+1)`
-/

namespace A160798.P10355840942713345845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (A163575 (n + 1) + 1).toNat

end

end A160798.P10355840942713345845

namespace A160798

/-- `A160797(A163575(n+1)+1)` -/
def P10355840942713345845.Spec : Prop :=
  ∀ n, P10355840942713345845.a n = A160798 (n + 1)

end A160798

/-! ## A160798.P13105486986079306692

`A160797(A053645(n+2)+1)`
-/

namespace A160798.P13105486986079306692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (A053645 (n + 2) + 1).toNat

end

end A160798.P13105486986079306692

namespace A160798

/-- `A160797(A053645(n+2)+1)` -/
def P13105486986079306692.Spec : Prop :=
  ∀ n, P13105486986079306692.a n = A160798 (n + 1)

end A160798

/-! ## A160798.P5559364303196073536

`A064194(A071044(n+2)/2)`
-/

namespace A160798.P5559364303196073536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064194 (SequenceMachineLib.roundAway ((A071044 (n + 2) : ℚ) / 2)).toNat

end

end A160798.P5559364303196073536

namespace A160798

/-- `A064194(A071044(n+2)/2)` -/
def P5559364303196073536.Spec : Prop :=
  ∀ n, P5559364303196073536.a n = A160798 (n + 1)

end A160798

/-! ## A160798.P1754375582156761734

`A191106(A071044(n+2)/2)`
-/

namespace A160798.P1754375582156761734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (SequenceMachineLib.roundAway ((A071044 (n + 2) : ℚ) / 2)).toNat

end

end A160798.P1754375582156761734

namespace A160798

/-- `A191106(A071044(n+2)/2)` -/
def P1754375582156761734.Spec : Prop :=
  ∀ n, P1754375582156761734.a n = A160798 (n + 1)

end A160798

/-! ## A160798.P16528816501156341623

`A173457(A080513(3*n+5))/4`
-/

namespace A160798.P16528816501156341623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173457 (A080513 (3 * n + 5)).toNat : ℚ) / 4

end

end A160798.P16528816501156341623

namespace A160798

/-- `A173457(A080513(3*n+5))/4` -/
def P16528816501156341623.Spec : Prop :=
  ∀ n, P16528816501156341623.a n = (A160798 (n + 1) : ℚ)

end A160798

/-! ## A160798.P3289807311451819696

`A160417(n+2)`
-/

namespace A160798.P3289807311451819696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (n + 2)

end

end A160798.P3289807311451819696

namespace A160798

/-- `A160417(n+2)` -/
def P3289807311451819696.Spec : Prop :=
  ∀ n, P3289807311451819696.a n = A160798 (n + 1)

end A160798

/-! ## A160798.P7011289062619498375

`Δ[A160118(n+2)/4]`
-/

namespace A160798.P7011289062619498375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160118 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160798.P7011289062619498375

namespace A160798

/-- `Δ[A160118(n+2)/4]` -/
def P7011289062619498375.Spec : Prop :=
  ∀ n, P7011289062619498375.a n = (A160798 (n + 1) : ℚ)

end A160798

/-! ## A160798.P7671540152636451097

`A195159(A323641(n+1))`
-/

namespace A160798.P7671540152636451097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A323641 (n + 1)).toNat

end

end A160798.P7671540152636451097

namespace A160798

/-- `A195159(A323641(n+1))` -/
def P7671540152636451097.Spec : Prop :=
  ∀ n, P7671540152636451097.a n = A160798 (n + 1)

end A160798

/-!
# A160799: Partial sums of A160410.

The programs for A160799, the canonical program `A160799.P12754781986334410166` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160799 has offset 1).

The definition of A160799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160799.P12754781986334410166

`∑[A160410(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160799

/-- `∑[A160410(n)]` -/
def P12754781986334410166.Spec : Prop :=
  ∀ n, P12754781986334410166.a n = A160799 (n + 1)

theorem P12754781986334410166.correct : P12754781986334410166.Spec := by
  intro n
  simp only [A160799, Nat.add_sub_cancel]

end A160799

/-! ## A160799.P14582984683640017328

`4*A160807(n+1)`
-/

namespace A160799.P14582984683640017328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A160807 (n + 1)

end

end A160799.P14582984683640017328

namespace A160799

/-- `4*A160807(n+1)` -/
def P14582984683640017328.Spec : Prop :=
  ∀ n, P14582984683640017328.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P5011353343607475280

`∑[∑[A161411(n+1)]-A161411(n+1)]`
-/

namespace A160799.P5011353343607475280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161411 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A161411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P5011353343607475280

namespace A160799

/-- `∑[∑[A161411(n+1)]-A161411(n+1)]` -/
def P5011353343607475280.Spec : Prop :=
  ∀ n, P5011353343607475280.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P4198608599036732953

`∑[A323650(2*n)]+n`
-/

namespace A160799.P4198608599036732953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323650 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A160799.P4198608599036732953

namespace A160799

/-- `∑[A323650(2*n)]+n` -/
def P4198608599036732953.Spec : Prop :=
  ∀ n, P4198608599036732953.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P6163947296626962600

`∑[A151917(2*n)+A147562(n)]`
-/

namespace A160799.P6163947296626962600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (2 * n) + A147562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P6163947296626962600

namespace A160799

/-- `∑[A151917(2*n)+A147562(n)]` -/
def P6163947296626962600.Spec : Prop :=
  ∀ n, P6163947296626962600.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P12495276464919697541

`∑[A130665(2*n)]-A130665(n)`
-/

namespace A160799.P12495276464919697541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130665 n

end

end A160799.P12495276464919697541

namespace A160799

/-- `∑[A130665(2*n)]-A130665(n)` -/
def P12495276464919697541.Spec : Prop :=
  ∀ n, P12495276464919697541.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P16131442296947698158

`∑[A147562(2*n)-A147562(n)]`
-/

namespace A160799.P16131442296947698158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (2 * n) - A147562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P16131442296947698158

namespace A160799

/-- `∑[A147562(2*n)-A147562(n)]` -/
def P16131442296947698158.Spec : Prop :=
  ∀ n, P16131442296947698158.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P12782155583182677895

`∑[∑[A147582(2*(n+1))]-A147582(2*(n+1))]`
-/

namespace A160799.P12782155583182677895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A147582 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P12782155583182677895

namespace A160799

/-- `∑[∑[A147582(2*(n+1))]-A147582(2*(n+1))]` -/
def P12782155583182677895.Spec : Prop :=
  ∀ n, P12782155583182677895.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P9973212425196009130

`3*A272928(n)+n`
-/

namespace A160799.P9973212425196009130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A272928 n + (n : ℤ)

end

end A160799.P9973212425196009130

namespace A160799

/-- `3*A272928(n)+n` -/
def P9973212425196009130.Spec : Prop :=
  ∀ n, P9973212425196009130.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P14142749892995080728

`∑[record[A079317(n)-1]]`
-/

namespace A160799.P14142749892995080728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P14142749892995080728

namespace A160799

/-- `∑[record[A079317(n)-1]]` -/
def P14142749892995080728.Spec : Prop :=
  ∀ n, P14142749892995080728.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P18069011265655793760

`∑[∑[A169704(2*n)]-A169704(2*n)]`
-/

namespace A160799.P18069011265655793760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169704 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A169704 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P18069011265655793760

namespace A160799

/-- `∑[∑[A169704(2*n)]-A169704(2*n)]` -/
def P18069011265655793760.Spec : Prop :=
  ∀ n, P18069011265655793760.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P6898968742224292547

`∑[A272313(2*n)-A270217(2*n)]`
-/

namespace A160799.P6898968742224292547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 (2 * n) - A270217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P6898968742224292547

namespace A160799

/-- `∑[A272313(2*n)-A270217(2*n)]` -/
def P6898968742224292547.Spec : Prop :=
  ∀ n, P6898968742224292547.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P4170843957442505694

`∑[A270217(4*n)-A270217(2*n)]`
-/

namespace A160799.P4170843957442505694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (4 * n) - A270217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P4170843957442505694

namespace A160799

/-- `∑[A270217(4*n)-A270217(2*n)]` -/
def P4170843957442505694.Spec : Prop :=
  ∀ n, P4170843957442505694.a n = A160799 (n + 1)

end A160799

/-! ## A160799.P7565572683155146726

`∑[A160796(2*n)/2]`
-/

namespace A160799.P7565572683155146726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160796 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P7565572683155146726

namespace A160799

/-- `∑[A160796(2*n)/2]` -/
def P7565572683155146726.Spec : Prop :=
  ∀ n, P7565572683155146726.a n = (A160799 (n + 1) : ℚ)

end A160799

