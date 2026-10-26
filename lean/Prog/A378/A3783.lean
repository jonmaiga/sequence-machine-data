import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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
# A378300: Number of NPN-equivalence classes of balanced monotone Boolean functions of n or fewer variables.

The programs for A378300, there is no canonical definition to state claims against.
-/

/-! ## A378300.P14465148425904165529

`A074659(A148847(n))`
-/

namespace A378300.P14465148425904165529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074659 (A148847 n).toNat

end

end A378300.P14465148425904165529

/-!
# A378301: a(n) is the number of triangular numbers (A000217) in the interval [n^2, (n + 1)^2].

The programs for A378301, the canonical program `A378301.P12860967816760152657` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378301 has offset 0).

The definition of A378301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378301.P12860967816760152657

`A214857(n+1)-A022846(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A378301

/-- `A214857(n+1)-A022846(n)` -/
def P12860967816760152657.Spec : Prop :=
  ∀ n, P12860967816760152657.a n = A378301 n

theorem P12860967816760152657.correct : P12860967816760152657.Spec := by
  intro n
  simp only [A378301]

end A378301

/-! ## A378301.P10548441440028359214

`A214848(A186220(n+1)-A049473(2*(n+1)))`
-/

namespace A378301.P10548441440028359214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 (A186220 (n + 1) - A049473 (2 * (n + 1))).toNat

end

end A378301.P10548441440028359214

namespace A378301

/-- `A214848(A186220(n+1)-A049473(2*(n+1)))` -/
def P10548441440028359214.Spec : Prop :=
  ∀ n, P10548441440028359214.a n = A378301 n

end A378301

/-! ## A378301.P5270157146783467855

`A002024(A002522(n+1))-A049473(2*n)`
-/

namespace A378301.P5270157146783467855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A002522 (n + 1)).toNat - A049473 (2 * n)

end

end A378301.P5270157146783467855

namespace A378301

/-- `A002024(A002522(n+1))-A049473(2*n)` -/
def P5270157146783467855.Spec : Prop :=
  ∀ n, P5270157146783467855.a n = A378301 n

end A378301

/-! ## A378301.P13544098630337556617

`A214848(n)+A010815(A098850(3*n))`
-/

namespace A378301.P13544098630337556617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n + A010815 (A098850 (3 * n)).toNat

end

end A378301.P13544098630337556617

namespace A378301

/-- `A214848(n)+A010815(A098850(3*n))` -/
def P13544098630337556617.Spec : Prop :=
  ∀ n, P13544098630337556617.a n = A378301 n

end A378301

/-! ## A378301.P11589064714557350337

`A214848(n)+A008683(A051586(n+1))`
-/

namespace A378301.P11589064714557350337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n + A008683 (A051586 (n + 1)).toNat

end

end A378301.P11589064714557350337

namespace A378301

/-- `A214848(n)+A008683(A051586(n+1))` -/
def P11589064714557350337.Spec : Prop :=
  ∀ n, P11589064714557350337.a n = A378301 n

end A378301

/-!
# A378303: Irregular triangular T: (row 1) = (1); (row n+1) = inverse runlength sequence of row n, starting with 1 if r = 3k for some k, and 2 otherwise. See Comments.

The programs for A378303, there is no canonical definition to state claims against.
-/

/-! ## A378303.P4326075208468740411

`A338884(A338881(n)+A338842(n+1))`
-/

namespace A378303.P4326075208468740411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338884 (A338881 n + A338842 (n + 1)).toNat

end

end A378303.P4326075208468740411

/-! ## A378303.P7779750148934169301

`A049705(A237627(n+5)%A278960(n+1))`
-/

namespace A378303.P7779750148934169301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (Int.tmod (A237627 (n + 5)) (A278960 (n + 1))).toNat

end

end A378303.P7779750148934169301

/-! ## A378303.P6607910204961655127

`A000002(A007955(n+1)-A361017(3*n+4))`
-/

namespace A378303.P6607910204961655127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A007955 (n + 1) - A361017 (3 * n + 4)).toNat

end

end A378303.P6607910204961655127

/-! ## A378303.P15986342116992632471

`A000002(A324703(2*(n+2))+A229154(3*n+5))`
-/

namespace A378303.P15986342116992632471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A324703 (2 * (n + 2)) + A229154 (3 * n + 5)).toNat

end

end A378303.P15986342116992632471

/-! ## A378303.P1787669092908654519

`A000002(A008292(n+1)*A019565(n))`
-/

namespace A378303.P1787669092908654519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A008292 (n + 1) * A019565 n).toNat

end

end A378303.P1787669092908654519

/-!
# A378304: Unique sequence s starting with 1,1,2,2 such that if r(r(r(s))) = s and r(s) != s and r(r(s)) != s, where r(#) denotes the runlength sequence of a sequence #.

The programs for A378304, there is no canonical definition to state claims against.
-/

/-! ## A378304.P4737994593740759265

`A270643(A061082(n+1)+4)`
-/

namespace A378304.P4737994593740759265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 (A061082 (n + 1) + 4).toNat

end

end A378304.P4737994593740759265

/-! ## A378304.P8148620423001879002

`A001285(xor(A020639(2*n+3), A024918(3*n+2)))`
-/

namespace A378304.P8148620423001879002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Int.xor (A020639 (2 * n + 3)) (A024918 (3 * n + 2))).toNat

end

end A378304.P8148620423001879002

/-! ## A378304.P15400511318816468128

`A087890(n+22)`
-/

namespace A378304.P15400511318816468128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (n + 22)

end

end A378304.P15400511318816468128

/-!
# A378305: Unique sequence s starting with 2,1,2 such that if r(r(r(s))) = s and r(s) != s and r(r(s)) != s, where r(#) denotes the runlength sequence of a sequence #.

The programs for A378305, there is no canonical definition to state claims against.
-/

/-! ## A378305.P554139208362401777

`A270642(A134496(n+1))`
-/

namespace A378305.P554139208362401777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270642 (A134496 (n + 1)).toNat

end

end A378305.P554139208362401777

/-! ## A378305.P10176136179167640017

`A078572(3*n+1)*A270641(A000837(n+4))`
-/

namespace A378305.P10176136179167640017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078572 (3 * n + 1) * A270641 (A000837 (n + 4)).toNat

end

end A378305.P10176136179167640017

/-! ## A378305.P7361773139701602588

`A250005(n+6+A010893(2*n+1))`
-/

namespace A378305.P7361773139701602588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250005 ((n + 6 : ℤ) + A010893 (2 * n + 1 + 13)).toNat

end

end A378305.P7361773139701602588

/-!
# A378306: Unique sequence s starting with 2,2 such that if r(r(r(s))) = s and r(s) != s and r(r(s)) != s, where r(#) denotes the runlength sequence of a sequence #.

The programs for A378306, there is no canonical definition to state claims against.
-/

/-! ## A378306.P1594558497178703872

`A378303(n+59)`
-/

namespace A378306.P1594558497178703872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378303 (n + 59)

end

end A378306.P1594558497178703872

/-! ## A378306.P2598273746775179514

`A246144(A266916(n+1))`
-/

namespace A378306.P2598273746775179514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246144 (A266916 (n + 1)).toNat

end

end A378306.P2598273746775179514

/-! ## A378306.P15401179043671036463

`A246144(A296766(n+1)-2)`
-/

namespace A378306.P15401179043671036463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246144 (A296766 (n + 1) - 2).toNat

end

end A378306.P15401179043671036463

/-!
# A378307: a(n) is the number of terms in row n of the array A378303.

The programs for A378307, there is no canonical definition to state claims against.
-/

/-! ## A378307.P637785457728748849

`A084827(A048585(n))`
-/

namespace A378307.P637785457728748849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084827 (A048585 n).toNat

end

end A378307.P637785457728748849

/-! ## A378307.P11441783211332873361

`A322901(A097197(n))`
-/

namespace A378307.P11441783211332873361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A097197 n).toNat

end

end A378307.P11441783211332873361

/-! ## A378307.P14242609025857810622

`A257212(A318482(n))`
-/

namespace A378307.P14242609025857810622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A318482 n).toNat

end

end A378307.P14242609025857810622

/-! ## A378307.P2866945759676059834

`A322901(A260600(n+1))`
-/

namespace A378307.P2866945759676059834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A260600 (n + 1)).toNat

end

end A378307.P2866945759676059834

/-! ## A378307.P10918564194393434910

`A071626(A230551(n+1)+1)`
-/

namespace A378307.P10918564194393434910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A230551 (n + 1) + 1).toNat

end

end A378307.P10918564194393434910

/-!
# A378308: Array read by antidiagonals: For k >= 3, row k-2 consists of the numbers with no digits 0 in bases 3 to k.

The programs for A378308, there is no canonical definition to state claims against.
-/

/-! ## A378308.P17284101534613626225

`A141425(A122284(n)^A076831(n)+1)`
-/

namespace A378308.P17284101534613626225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141425 (SequenceMachineLib.roundAway ((A122284 n : ℚ) ^ (A076831 n : ℤ) + 1)).toNat

end

end A378308.P17284101534613626225

/-! ## A378308.P13763912768324479067

`A336424(A304206(n+1))+A122200(n)`
-/

namespace A378308.P13763912768324479067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (A304206 (n + 1)).toNat + A122200 n

end

end A378308.P13763912768324479067

/-! ## A378308.P8401399201668414780

`A347066(n+1)-A345197(A322222(n))`
-/

namespace A378308.P8401399201668414780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347066 (n + 1) - A345197 (A322222 n).toNat

end

end A378308.P8401399201668414780

/-! ## A378308.P3517020449653113150

`A058399(n+1)+A011740(A071153(2*n))`
-/

namespace A378308.P3517020449653113150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (n + 1) + A011740 (A071153 (2 * n)).toNat

end

end A378308.P3517020449653113150

/-!
# A378309: a(n) = A010051(n) + A001222(n).

The programs for A378309, the canonical program `A378309.P13305048339565942399` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378309 has offset 1).

The definition of A378309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378309.P780278087452136242

`A113903(n+1)-A113903(n)`
-/

namespace A378309.P780278087452136242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113903 (n + 1) - A113903 n

end

end A378309.P780278087452136242

namespace A378309

/-- `A113903(n+1)-A113903(n)` -/
def P780278087452136242.Spec : Prop :=
  ∀ n, P780278087452136242.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P13305048339565942399

`A010051(n+1)+A001222(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A378309

/-- `A010051(n+1)+A001222(n+1)` -/
def P13305048339565942399.Spec : Prop :=
  ∀ n, P13305048339565942399.a n = A378309 (n + 1)

theorem P13305048339565942399.correct : P13305048339565942399.Spec := by
  intro n
  simp only [A378309, Nat.add_sub_cancel]

end A378309

/-! ## A378309.P9165122416749146740

`∑{e}[∑{p}[n+1, C(#, n)]+1+n, #]`
-/

namespace A378309.P9165122416749146740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A378309.P9165122416749146740

namespace A378309

/-- `∑{e}[∑{p}[n+1, C(#, n)]+1+n, #]` -/
def P9165122416749146740.Spec : Prop :=
  ∀ n, (P9165122416749146740.a n : ℤ) = A378309 (n + 1)

end A378309

/-! ## A378309.P6837179692757350068

`Δ[A113903(n)]`
-/

namespace A378309.P6837179692757350068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378309.P6837179692757350068

namespace A378309

/-- `Δ[A113903(n)]` -/
def P6837179692757350068.Spec : Prop :=
  ∀ n, P6837179692757350068.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P12357768427677780615

`∑{e}[A143545(n+1), #]`
-/

namespace A378309.P12357768427677780615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A378309.P12357768427677780615

namespace A378309

/-- `∑{e}[A143545(n+1), #]` -/
def P12357768427677780615.Spec : Prop :=
  ∀ n, (P12357768427677780615.a n : ℤ) = A378309 (n + 1)

end A378309

/-! ## A378309.P10915206177173603296

`A254667(∑{e}[n+1, #])`
-/

namespace A378309.P10915206177173603296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A378309.P10915206177173603296

namespace A378309

/-- `A254667(∑{e}[n+1, #])` -/
def P10915206177173603296.Spec : Prop :=
  ∀ n, P10915206177173603296.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P9312389310122439883

`∑{e}[A256415(n+1), #]`
-/

namespace A378309.P9312389310122439883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A378309.P9312389310122439883

namespace A378309

/-- `∑{e}[A256415(n+1), #]` -/
def P9312389310122439883.Spec : Prop :=
  ∀ n, (P9312389310122439883.a n : ℤ) = A378309 (n + 1)

end A378309

/-! ## A378309.P13205308542277249870

`A053399(A061142(n+1))`
-/

namespace A378309.P13205308542277249870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053399 (A061142 (n + 1)).toNat

end

end A378309.P13205308542277249870

namespace A378309

/-- `A053399(A061142(n+1))` -/
def P13205308542277249870.Spec : Prop :=
  ∀ n, P13205308542277249870.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P8273504453611589301

`A001222(A143545(n+1))`
-/

namespace A378309.P8273504453611589301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A143545 (n + 1)).toNat

end

end A378309.P8273504453611589301

namespace A378309

/-- `A001222(A143545(n+1))` -/
def P8273504453611589301.Spec : Prop :=
  ∀ n, P8273504453611589301.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P4847152537595044585

`A070803(A105560(n+1))`
-/

namespace A378309.P4847152537595044585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (A105560 (n + 1)).toNat

end

end A378309.P4847152537595044585

namespace A378309

/-- `A070803(A105560(n+1))` -/
def P4847152537595044585.Spec : Prop :=
  ∀ n, P4847152537595044585.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P14997990531649394509

`A254667(A001222(n+1))`
-/

namespace A378309.P14997990531649394509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A001222 (n + 1)).toNat

end

end A378309.P14997990531649394509

namespace A378309

/-- `A254667(A001222(n+1))` -/
def P14997990531649394509.Spec : Prop :=
  ∀ n, P14997990531649394509.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P10905362869542146831

`A001222(A256415(n+1))`
-/

namespace A378309.P10905362869542146831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A256415 (n + 1)).toNat

end

end A378309.P10905362869542146831

namespace A378309

/-- `A001222(A256415(n+1))` -/
def P10905362869542146831.Spec : Prop :=
  ∀ n, P10905362869542146831.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P16862561245287935191

`A073093(n+1)-A005171(n+1)`
-/

namespace A378309.P16862561245287935191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A005171 (n + 1)

end

end A378309.P16862561245287935191

namespace A378309

/-- `A073093(n+1)-A005171(n+1)` -/
def P16862561245287935191.Spec : Prop :=
  ∀ n, P16862561245287935191.a n = A378309 (n + 1)

theorem P16862561245287935191.correct : P16862561245287935191.Spec := by
  intro n
  simp only [A378309, Nat.add_sub_cancel, A378309.P16862561245287935191.a, A378309.P13305048339565942399.a, A001222, A001222.P11318177267732088261.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P15078252821583414300.a, A073093, A073093.P258081957281391684.a, A061395, A061395.P8431317036300486107.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A122111, A122111.P18124015185857335041.a, A193056, A193056.P6449544040074946363.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A378309

/-! ## A378309.P16386515154711652188

`A064800(n+1)-A014684(n+1)`
-/

namespace A378309.P16386515154711652188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A014684 (n + 1)

end

end A378309.P16386515154711652188

namespace A378309

/-- `A064800(n+1)-A014684(n+1)` -/
def P16386515154711652188.Spec : Prop :=
  ∀ n, P16386515154711652188.a n = A378309 (n + 1)

theorem P16386515154711652188.correct : P16386515154711652188.Spec := by
  intro n
  simp only [A378309, Nat.add_sub_cancel, A378309.P16386515154711652188.a, A378309.P13305048339565942399.a, A001222, A001222.P11318177267732088261.a, A010051, A010051.P15078252821583414300.a, A014684, A014684.P14857736222881351984.a, A064800, A064800.P9178262813478475092.a, A005171, A005171.P15860856746370777121.a, A061395, A061395.P8431317036300486107.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A122111, A122111.P18124015185857335041.a, A193056, A193056.P6449544040074946363.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A378309

/-! ## A378309.P11704008153650356785

`A014683(n+1)-A069345(n+1)`
-/

namespace A378309.P11704008153650356785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) - A069345 (n + 1)

end

end A378309.P11704008153650356785

namespace A378309

/-- `A014683(n+1)-A069345(n+1)` -/
def P11704008153650356785.Spec : Prop :=
  ∀ n, P11704008153650356785.a n = A378309 (n + 1)

theorem P11704008153650356785.correct : P11704008153650356785.Spec := by
  intro n
  simp only [A378309, Nat.add_sub_cancel, A378309.P11704008153650356785.a, A378309.P13305048339565942399.a, A001222, A001222.P11318177267732088261.a, A010051, A010051.P15078252821583414300.a, A014683, A014683.P4274130993241959458.a, A069345, A069345.P4010349656515474516.a, A061395, A061395.P8431317036300486107.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A122111, A122111.P18124015185857335041.a, A193056, A193056.P6449544040074946363.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A378309

/-! ## A378309.P8851977096265897127

`A080256(n+1)-A087624(n+1)`
-/

namespace A378309.P8851977096265897127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (n + 1) - A087624 (n + 1)

end

end A378309.P8851977096265897127

namespace A378309

/-- `A080256(n+1)-A087624(n+1)` -/
def P8851977096265897127.Spec : Prop :=
  ∀ n, P8851977096265897127.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P18165365010392281441

`A113637(n+1)-A075795(n+1)`
-/

namespace A378309.P18165365010392281441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113637 (n + 1) - A075795 (n + 1)

end

end A378309.P18165365010392281441

namespace A378309

/-- `A113637(n+1)-A075795(n+1)` -/
def P18165365010392281441.Spec : Prop :=
  ∀ n, P18165365010392281441.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P7888319015675719935

`A255201(n+1)-A144494(n+1)`
-/

namespace A378309.P7888319015675719935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A144494 (n + 1)

end

end A378309.P7888319015675719935

namespace A378309

/-- `A255201(n+1)-A144494(n+1)` -/
def P7888319015675719935.Spec : Prop :=
  ∀ n, P7888319015675719935.a n = A378309 (n + 1)

end A378309

/-! ## A378309.P10884979619300925679

`A001222(n+1)+1-A005171(n+1)`
-/

namespace A378309.P10884979619300925679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (1 - A005171 (n + 1))

end

end A378309.P10884979619300925679

namespace A378309

/-- `A001222(n+1)+1-A005171(n+1)` -/
def P10884979619300925679.Spec : Prop :=
  ∀ n, P10884979619300925679.a n = A378309 (n + 1)

theorem P10884979619300925679.correct : P10884979619300925679.Spec := by
  intro n
  simp only [A378309, Nat.add_sub_cancel, A378309.P10884979619300925679.a, A378309.P13305048339565942399.a, A001222, A001222.P11318177267732088261.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P15078252821583414300.a, A061395, A061395.P8431317036300486107.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A122111, A122111.P18124015185857335041.a, A193056, A193056.P6449544040074946363.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A378309

/-! ## A378309.P13955452838317860038

`A010051(n+1)+A073093(n+1)-1`
-/

namespace A378309.P13955452838317860038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A073093 (n + 1) - 1)

end

end A378309.P13955452838317860038

namespace A378309

/-- `A010051(n+1)+A073093(n+1)-1` -/
def P13955452838317860038.Spec : Prop :=
  ∀ n, P13955452838317860038.a n = A378309 (n + 1)

theorem P13955452838317860038.correct : P13955452838317860038.Spec := by
  intro n
  simp only [A378309, Nat.add_sub_cancel, A378309.P13955452838317860038.a, A378309.P13305048339565942399.a, A001222, A001222.P11318177267732088261.a, A010051, A010051.P15078252821583414300.a, A073093, A073093.P258081957281391684.a, A061395, A061395.P8431317036300486107.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A122111, A122111.P18124015185857335041.a, A193056, A193056.P6449544040074946363.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A378309

/-!
# A378311: Number of cyclic edge cuts in the n-prism graph.

The programs for A378311, there is no canonical definition to state claims against.
-/

/-! ## A378311.P1792634874991457986

`A378312(n+3)+1`
-/

namespace A378311.P1792634874991457986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378312 (n + 3) + 1

end

end A378311.P1792634874991457986

/-!
# A378312: Number of cyclic edge cuts in the n-Moebius ladder graph.

The programs for A378312, there is no canonical definition to state claims against.
-/

/-! ## A378312.P12033067395125937605

`A378311(n+3)-1`
-/

namespace A378312.P12033067395125937605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378311 (n + 3) - 1

end

end A378312.P12033067395125937605

/-! ## A378312.P4175055466940424439

`xor(A000041(floor(1/(n+1))), A378311(n+3))`
-/

namespace A378312.P4175055466940424439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat) (A378311 (n + 3))

end

end A378312.P4175055466940424439

/-! ## A378312.P7871336160938515221

`xor(A000142(floor(1/(n+1))), A378311(n+3))`
-/

namespace A378312.P7871336160938515221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000142 ⌊1 / (n + 1 : ℚ)⌋.toNat) (A378311 (n + 3))

end

end A378312.P7871336160938515221

/-! ## A378312.P17438091601747484477

`xor(A001333(floor(1/(n+1))), A378311(n+3))`
-/

namespace A378312.P17438091601747484477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001333 ⌊1 / (n + 1 : ℚ)⌋.toNat) (A378311 (n + 3))

end

end A378312.P17438091601747484477

/-! ## A378312.P13275920030040956003

`xor(A326189(A082079(n+1)), A378311(n+3))`
-/

namespace A378312.P13275920030040956003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A326189 (A082079 (n + 1)).toNat) (A378311 (n + 3))

end

end A378312.P13275920030040956003

/-!
# A378314: a(n) = number of subsets of {1, 2, ..., n} that represent the first k divisors of m for some positive integers m and 1 <= k <= A000005(m).

The programs for A378314, the canonical program `A378314.P16230530394060533899` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378314 has offset 0).

The definition of A378314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378314.P16230530394060533899

`A190940(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378314

/-- `A190940(n)+a(n-1)` -/
def P16230530394060533899.Spec : Prop :=
  ∀ n, P16230530394060533899.a n = A378314 n

theorem P16230530394060533899.correct : P16230530394060533899.Spec := by
  intro n
  simp only [A378314]

end A378314

/-! ## A378314.P5112689499512825986

`∑[A190940(n+1)]-A190940(n+1)`
-/

namespace A378314.P5112689499512825986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A190940 (n + 1)

end

end A378314.P5112689499512825986

namespace A378314

/-- `∑[A190940(n+1)]-A190940(n+1)` -/
def P5112689499512825986.Spec : Prop :=
  ∀ n, P5112689499512825986.a n = A378314 n

end A378314

/-! ## A378314.P4117528277102036067

`∑[A190940(A233583(n+1))]-1`
-/

namespace A378314.P4117528277102036067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190940 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A378314.P4117528277102036067

namespace A378314

/-- `∑[A190940(A233583(n+1))]-1` -/
def P4117528277102036067.Spec : Prop :=
  ∀ n, P4117528277102036067.a n = A378314 n

end A378314

/-! ## A378314.P9746019512527556719

`eq[A236833(n), A326582(n)]`
-/

namespace A378314.P9746019512527556719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236833 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378314.P9746019512527556719

namespace A378314

/-- `eq[A236833(n), A326582(n)]` -/
def P9746019512527556719.Spec : Prop :=
  ∀ n, (P9746019512527556719.a n : ℤ) = A378314 n

end A378314

/-! ## A378314.P15606329746581873905

`eq[A236853(n), A326582(n)]`
-/

namespace A378314.P15606329746581873905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378314.P15606329746581873905

namespace A378314

/-- `eq[A236853(n), A326582(n)]` -/
def P15606329746581873905.Spec : Prop :=
  ∀ n, (P15606329746581873905.a n : ℤ) = A378314 n

end A378314

/-!
# A378317: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(n,r) * binomial(2*r+k,n)/(2*r+k) for k > 0.

The programs for A378317, there is no canonical definition to state claims against.
-/

/-! ## A378317.P977316196178954131

`A053797(A342890(n))*A265609(n)`
-/

namespace A378317.P977316196178954131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A342890 n).toNat * A265609 n

end

end A378317.P977316196178954131

/-! ## A378317.P3632040994757003114

`A265609(n)*A305437(A209330(n))`
-/

namespace A378317.P3632040994757003114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 n * A305437 (A209330 n).toNat

end

end A378317.P3632040994757003114

/-! ## A378317.P15686938294079022871

`A124766(A288496(n))*A265609(n)`
-/

namespace A378317.P15686938294079022871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A288496 n).toNat * A265609 n

end

end A378317.P15686938294079022871

/-! ## A378317.P4656711087031270800

`A034444(A214676(n+1))*A246935(n)`
-/

namespace A378317.P4656711087031270800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A214676 (n + 1)).toNat * A246935 n

end

end A378317.P4656711087031270800

/-!
# A378318: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(n,r) * binomial(3*r+k,n)/(3*r+k) for k > 0.

The programs for A378318, there is no canonical definition to state claims against.
-/

/-! ## A378318.P3887385019731379381

`A374519(A111528(n+1))+A261835(n)`
-/

namespace A378318.P3887385019731379381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374519 (A111528 (n + 1)).toNat + A261835 n

end

end A378318.P3887385019731379381

/-! ## A378318.P184378445422278758

`A172309(A381569(n))`
-/

namespace A378318.P184378445422278758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172309 (A381569 n).toNat

end

end A378318.P184378445422278758

/-! ## A378318.P16665992100491460936

`A106579(n+1)+A000007(A000081(n))`
-/

namespace A378318.P16665992100491460936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (n + 1) + A000007 (A000081 n).toNat

end

end A378318.P16665992100491460936

/-! ## A378318.P15835267415035523642

`A138904(A104601(n+1))*A358050(n)`
-/

namespace A378318.P15835267415035523642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A104601 (n + 1)).toNat * A358050 n

end

end A378318.P15835267415035523642

/-! ## A378318.P16435113950565607736

`A287318(n)%A003314(A366719(n+3))`
-/

namespace A378318.P16435113950565607736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287318 n) (A003314 (A366719 (n + 3)).toNat)

end

end A378318.P16435113950565607736

/-!
# A378320: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(2*n-2*r+k,r) * binomial(r,n-r)/(2*n-2*r+k) for k > 0.

The programs for A378320, there is no canonical definition to state claims against.
-/

/-! ## A378320.P2229480960630779240

`A291652(n)+A010051(A034082(n+2))`
-/

namespace A378320.P2229480960630779240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n + A010051 (A034082 (n + 2)).toNat

end

end A378320.P2229480960630779240

/-!
# A378321: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(3*n-3*r+k,r) * binomial(r,n-r)/(3*n-3*r+k) for k > 0.

The programs for A378321, there is no canonical definition to state claims against.
-/

/-! ## A378321.P4589347972656149544

`A392378(n)%A072643(A005109(n+4))`
-/

namespace A378321.P4589347972656149544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392378 n) (A072643 (A005109 (n + 4)).toNat)

end

end A378321.P4589347972656149544

/-!
# A378323: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(3r+k,r) * binomial(r,n-r)/(3*r+k) for k > 0.

The programs for A378323, there is no canonical definition to state claims against.
-/

/-! ## A378323.P15254542446624494936

`and(A080860(A080862(n+3)), A381602(n))`
-/

namespace A378323.P15254542446624494936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080860 (A080862 (n + 3)).toNat) (A381602 n)

end

end A378323.P15254542446624494936

/-!
# A378324: Number of cyclic edge cuts in the complete graph K_n.

The programs for A378324, there is no canonical definition to state claims against.
-/

/-! ## A378324.P13339071069782851962

`(4/3*C(n², 2))%A300980((n²+1)*C(n, 2))`
-/

namespace A378324.P13339071069782851962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (Nat.choose (n ^ 2) 2 : ℚ))) (A300980 ((n ^ 2 + 1) * Nat.choose n 2))

end

end A378324.P13339071069782851962

/-! ## A378324.P12767875998544907981

`A182882(A097122(n))`
-/

namespace A378324.P12767875998544907981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182882 (A097122 n).toNat

end

end A378324.P12767875998544907981

/-! ## A378324.P13771158539130436476

`A080844(A149307(n+1))`
-/

namespace A378324.P13771158539130436476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 (A149307 (n + 1)).toNat

end

end A378324.P13771158539130436476

/-!
# A378325: G.f. A(x) = Sum_{n>=0} a(n)*x^n, where a(n) = Sum_{k=0..n-1} [x^k] A(x)^k for n >= 1 with a(0) = 1.

The programs for A378325, there is no canonical definition to state claims against.
-/

/-! ## A378325.P5756218497187102576

`A373114(A256342(n!))`
-/

namespace A378325.P5756218497187102576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373114 (A256342 (Nat.factorial n)).toNat

end

end A378325.P5756218497187102576

/-! ## A378325.P16736807576798813382

`A294442(A001045(∑[n]))`
-/

namespace A378325.P16736807576798813382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A001045 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A378325.P16736807576798813382

/-!
# A378326: a(n) = Sum_{k=0..n} binomial(n-1,k-1) * binomial(n*k,k) / ((n-1)*k+1).

The programs for A378326, there is no canonical definition to state claims against.
-/

/-! ## A378326.P17717288759929613956

`A057355(A336712(n)+∏{p}[(n+1)/∏{p}[n+1, #], #+1])`
-/

namespace A378326.P17717288759929613956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A336712 n + ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (p + 1) : ℕ) : ℤ)).toNat

end

end A378326.P17717288759929613956

/-!
# A378327: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n*k,k) / ((n-1)*k + 1).

The programs for A378327, there is no canonical definition to state claims against.
-/

/-! ## A378327.P3664889625568191592

`A008619(A109884(n+1)*A331957(n))`
-/

namespace A378327.P3664889625568191592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109884 (n + 1) * A331957 n).toNat

end

end A378327.P3664889625568191592

/-! ## A378327.P159387813079617815

`A133622(A002202(n+1)*A331957(n))`
-/

namespace A378327.P159387813079617815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A002202 (n + 1) * A331957 n).toNat

end

end A378327.P159387813079617815

/-!
# A378334: Number of n-node connected sensed planar maps with an external face, whose internal faces are triangles and which is rooted at a node on the external face.

The programs for A378334, there is no canonical definition to state claims against.
-/

/-! ## A378334.P16319870071669126219

`A063677(A086615(2*n))`
-/

namespace A378334.P16319870071669126219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A086615 (2 * n)).toNat

end

end A378334.P16319870071669126219

/-!
# A378335: Number of n-node connected sensed planar maps with an external face in which all internal faces are triangles.

The programs for A378335, there is no canonical definition to state claims against.
-/

/-! ## A378335.P3861508575649739190

`2*A377785(n+3)-A378339(n+3)`
-/

namespace A378335.P3861508575649739190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A377785 (n + 3) - A378339 (n + 3)

end

end A378335.P3861508575649739190

/-! ## A378335.P4534712030410418901

`A187180(A047098(n)+A005161(n+1))`
-/

namespace A378335.P4534712030410418901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A047098 n + A005161 (n + 1)).toNat

end

end A378335.P4534712030410418901

/-!
# A378336: Triangle read by rows: T(n,k) is the number of n node connected sensed planar maps with an external face and k triangular internal faces, n >= 3, 1 <= k <= 2*n - 5.

The programs for A378336, there is no canonical definition to state claims against.
-/

/-! ## A378336.P5055113092064383697

`2*A378103(n+3)-A378340(n+3)`
-/

namespace A378336.P5055113092064383697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378103 (n + 3) - A378340 (n + 3)

end

end A378336.P5055113092064383697

/-! ## A378336.P14728521741749299408

`A277022(A378340(n+3)%A261311(3*n+4))`
-/

namespace A378336.P14728521741749299408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277022 (Int.tmod (A378340 (n + 3)) (A261311 (3 * n + 4))).toNat

end

end A378336.P14728521741749299408

/-! ## A378336.P1653946662312676023

`A277022(and(A261311(3*n+4), A378340(n+3)))`
-/

namespace A378336.P1653946662312676023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277022 (Int.land (A261311 (3 * n + 4)) (A378340 (n + 3))).toNat

end

end A378336.P1653946662312676023

/-! ## A378336.P3829422205161064271

`A100073(8^A378103(n+3))`
-/

namespace A378336.P3829422205161064271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A378103 (n + 3) : ℤ))).toNat

end

end A378336.P3829422205161064271

/-! ## A378336.P7056069582917622062

`A378103(n+3)+A369640(A380459(n+2))`
-/

namespace A378336.P7056069582917622062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378103 (n + 3) + A369640 (A380459 (n + 2)).toNat

end

end A378336.P7056069582917622062

/-!
# A378337: Number of connected sensed planar maps with an external face and n internal triangular faces.

The programs for A378337, there is no canonical definition to state claims against.
-/

/-! ## A378337.P10457425121905530405

`2*A378190(n+1)-A378341(n+1)`
-/

namespace A378337.P10457425121905530405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378190 (n + 1) - A378341 (n + 1)

end

end A378337.P10457425121905530405

/-!
# A378338: Number of n edge connected sensed planar maps with an external face in which all internal faces are triangles.

The programs for A378338, there is no canonical definition to state claims against.
-/

/-! ## A378338.P11235983673667041559

`2*A378343(n+3)-A378342(n+3)`
-/

namespace A378338.P11235983673667041559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378343 (n + 3) - A378342 (n + 3)

end

end A378338.P11235983673667041559

/-!
# A378339: Number of n-node connected achiral planar maps with an external face in which all internal faces are triangles.

The programs for A378339, there is no canonical definition to state claims against.
-/

/-! ## A378339.P779416507216972971

`2*A377785(n+3)-A378335(n+3)`
-/

namespace A378339.P779416507216972971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A377785 (n + 3) - A378335 (n + 3)

end

end A378339.P779416507216972971

/-! ## A378339.P15463927943957099467

`A143094(n)-A000389(n+1)`
-/

namespace A378339.P15463927943957099467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143094 n - A000389 (n + 1)

end

end A378339.P15463927943957099467

/-! ## A378339.P17167852600274223941

`A047086(n)-A333750(A126568(n))`
-/

namespace A378339.P17167852600274223941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 n - A333750 (A126568 n).toNat

end

end A378339.P17167852600274223941

/-!
# A378340: Triangle read by rows: T(n,k) is the number of n node connected achiral planar maps with an external face and k triangular internal faces, n >= 3, 1 <= k <= 2*n - 5.

The programs for A378340, there is no canonical definition to state claims against.
-/

/-! ## A378340.P5887344619741529251

`2*A378103(n+3)-A378336(n+3)`
-/

namespace A378340.P5887344619741529251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378103 (n + 3) - A378336 (n + 3)

end

end A378340.P5887344619741529251

/-! ## A378340.P8578683023075518460

`A107015(A325095(n)+A084623(n+1))`
-/

namespace A378340.P8578683023075518460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (A325095 n + A084623 (n + 1)).toNat

end

end A378340.P8578683023075518460

/-! ## A378340.P9666780110917244425

`A378103(n+3)-A369640(A380459(n+2))`
-/

namespace A378340.P9666780110917244425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378103 (n + 3) - A369640 (A380459 (n + 2)).toNat

end

end A378340.P9666780110917244425

/-! ## A378340.P16002059808985879784

`A329362(A378103(n+3)^A182742(n+2))`
-/

namespace A378340.P16002059808985879784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (SequenceMachineLib.roundAway ((A378103 (n + 3) : ℚ) ^ (A182742 (n + 2) : ℤ))).toNat

end

end A378340.P16002059808985879784

/-! ## A378340.P12902153967553149536

`A143824(A378336(n+3)%A102634(n+1))`
-/

namespace A378340.P12902153967553149536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (Int.tmod (A378336 (n + 3)) (A102634 (n + 1))).toNat

end

end A378340.P12902153967553149536

/-!
# A378341: Number of connected achiral planar maps with an external face and n internal triangular faces.

The programs for A378341, there is no canonical definition to state claims against.
-/

/-! ## A378341.P10392865773131226573

`2*A378190(n+1)-A378337(n+1)`
-/

namespace A378341.P10392865773131226573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378190 (n + 1) - A378337 (n + 1)

end

end A378341.P10392865773131226573

/-! ## A378341.P11917220344087445034

`A248227(A018043(n))`
-/

namespace A378341.P11917220344087445034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A018043 n).toNat

end

end A378341.P11917220344087445034

/-!
# A378342: Number of n edge connected achiral planar maps with an external face in which all internal faces are triangles.

The programs for A378342, there is no canonical definition to state claims against.
-/

/-! ## A378342.P15391886971575314378

`2*A378343(n+3)-A378338(n+3)`
-/

namespace A378342.P15391886971575314378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378343 (n + 3) - A378338 (n + 3)

end

end A378342.P15391886971575314378

/-!
# A378343: Number of n edge connected unsensed planar maps with an external face in which all internal faces are triangles.

The programs for A378343, there is no canonical definition to state claims against.
-/

/-! ## A378343.P1480687946184528582

`(A378338(n+3)+A378342(n+3))/2`
-/

namespace A378343.P1480687946184528582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378338 (n + 3) + A378342 (n + 3) : ℚ) / 2

end

end A378343.P1480687946184528582

/-! ## A378343.P6691647150190278513

`A174221(A378342(n+3)+A378338(n+3))`
-/

namespace A378343.P6691647150190278513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A378342 (n + 3) + A378338 (n + 3)).toNat

end

end A378343.P6691647150190278513

/-!
# A378344: Number of fixed site animals with n nodes on the nodes of the prismatic pentagonal tiling.

The programs for A378344, there is no canonical definition to state claims against.
-/

/-! ## A378344.P16531866070939252048

`A248229(A304121(n+1))`
-/

namespace A378344.P16531866070939252048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248229 (A304121 (n + 1)).toNat

end

end A378344.P16531866070939252048

/-! ## A378344.P13769823634613506932

`A190782(n)+A038567(A093137(n))`
-/

namespace A378344.P13769823634613506932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 n + A038567 (A093137 n).toNat

end

end A378344.P13769823634613506932

/-!
# A378352: Decimal expansion of the volume of a (small) triakis octahedron with unit shorter edge length.

The programs for A378352, there is no canonical definition to state claims against.
-/

/-! ## A378352.P17682603723963100378

`A152623(n)+A002193(n)`
-/

namespace A378352.P17682603723963100378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152623 (n + 1) + A002193 (n + 1)

end

end A378352.P17682603723963100378

/-! ## A378352.P18366014056657480547

`A002193(n)+A000045(C(5, 4*n))`
-/

namespace A378352.P18366014056657480547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1) + A000045 (Nat.choose 5 (4 * n))

end

end A378352.P18366014056657480547

/-! ## A378352.P17113425745455881003

`A007954(C(5, 4*n))+A002193(n)`
-/

namespace A378352.P17113425745455881003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Nat.choose 5 (4 * n)) + A002193 (n + 1)

end

end A378352.P17113425745455881003

/-! ## A378352.P31084943630086156

`A152623(n)+A120731(n+1)`
-/

namespace A378352.P31084943630086156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152623 (n + 1) + A120731 (n + 1 + 1)

end

end A378352.P31084943630086156

/-! ## A378352.P4197647044210321531

`A020821(2*n)+A002193(n)`
-/

namespace A378352.P4197647044210321531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020821 (2 * n) + A002193 (n + 1)

end

end A378352.P4197647044210321531

/-!
# A378355: Numbers appearing exactly once in A378035 (greatest perfect power < prime(n)).

The programs for A378355, there is no canonical definition to state claims against.
-/

/-! ## A378355.P15156713641530340864

`A001597(A378368(n+1))`
-/

namespace A378355.P15156713641530340864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A378368 (n + 1)).toNat

end

end A378355.P15156713641530340864

/-!
# A378356: Prime index of the next prime after the n-th perfect power.

The programs for A378356, there is no canonical definition to state claims against.
-/

/-! ## A378356.P2122596361618142051

`A000720(A001597(n+1))+1`
-/

namespace A378356.P2122596361618142051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001597 (n + 1)).toNat + 1

end

end A378356.P2122596361618142051

/-! ## A378356.P1329124998579037058

`A080769(n)+a(n-1)` with `a(0)=1`
-/

namespace A378356.P1329124998579037058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080769 n + a (n - 1)

end

end A378356.P1329124998579037058

/-! ## A378356.P6865598742152029309

`A000720(∑[A076412(n)])+1`
-/

namespace A378356.P6865598742152029309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A378356.P6865598742152029309

/-! ## A378356.P6762308218873577391

`A000720(abs(A157985(n+1)))+1`
-/

namespace A378356.P6762308218873577391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |A157985 (n + 1)|.toNat + 1

end

end A378356.P6762308218873577391

/-! ## A378356.P10101990247274831568

`A000720(sqrt(A340588(n+1)))+1`
-/

namespace A378356.P10101990247274831568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat + 1

end

end A378356.P10101990247274831568

/-! ## A378356.P1214396724170042239

`A000720(∪[(n+1)², A070265(n+1)])+1`
-/

namespace A378356.P1214396724170042239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A378356.P1214396724170042239

/-! ## A378356.P6165447106292156519

`A000720(∪[(n+1)², A076467(n+1)])+1`
-/

namespace A378356.P6165447106292156519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A378356.P6165447106292156519

/-! ## A378356.P14659616087631384040

`A000720(A075146(n+1)+A000040(n+1))+1`
-/

namespace A378356.P14659616087631384040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A075146 (n + 1) + A000040 (n + 1)).toNat + 1

end

end A378356.P14659616087631384040

/-! ## A378356.P2676471842289191230

`A000720(∪[A076467(n+1), A030140(n+1)])+1`
-/

namespace A378356.P2676471842289191230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A378356.P2676471842289191230

/-! ## A378356.P476200533540542548

`A036234(A001597(n+1))`
-/

namespace A378356.P476200533540542548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A001597 (n + 1)).toNat

end

end A378356.P476200533540542548

/-! ## A378356.P9746409699625406740

`A036234(abs(A157985(n+1)))`
-/

namespace A378356.P9746409699625406740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 |A157985 (n + 1)|.toNat

end

end A378356.P9746409699625406740

/-!
# A378357: Distance from n to the least non perfect power >= n.

The programs for A378357, there is no canonical definition to state claims against.
-/

/-! ## A378357.P18439223476584285264

`A075802(n+1)+char[7]`
-/

namespace A378357.P18439223476584285264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A378357.P18439223476584285264

/-! ## A378357.P15355045045890872681

`char[7]+char[∑[A076412(n)]-1]`
-/

namespace A378357.P15355045045890872681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A378357.P15355045045890872681

/-! ## A378357.P10225468437194316386

`A185017(n)+A075802(n+1)`
-/

namespace A378357.P10225468437194316386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 n + A075802 (n + 1)

end

end A378357.P10225468437194316386

/-! ## A378357.P12868677026962476344

`A075802(n+1)*A130782(n)`
-/

namespace A378357.P12868677026962476344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A130782 n

end

end A378357.P12868677026962476344

/-! ## A378357.P13826893591174925867

`Δ[A053241(A076411(n+1)+2)]`
-/

namespace A378357.P13826893591174925867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053241 (A076411 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378357.P13826893591174925867

/-! ## A378357.P12690537491801357615

`A052409(n+2)*A075802(n+1)`
-/

namespace A378357.P12690537491801357615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 2) * A075802 (n + 1)

end

end A378357.P12690537491801357615

/-! ## A378357.P1025919479341444356

`A075802(n+1)*A253641(n+2)`
-/

namespace A378357.P1025919479341444356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A253641 (n + 2)

end

end A378357.P1025919479341444356

/-! ## A378357.P3134752807001915196

`and(A030358(n+1), A355683(n+1))`
-/

namespace A378357.P3134752807001915196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030358 (n + 1)) (A355683 (n + 1))

end

end A378357.P3134752807001915196

/-! ## A378357.P5780119361601906033

`and(A030358(n+1), A355684(n+1))`
-/

namespace A378357.P5780119361601906033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030358 (n + 1)) (A355684 (n + 1))

end

end A378357.P5780119361601906033

/-! ## A378357.P1373530144736787224

`(A075802(n+2)+1)*A075802(n+1)`
-/

namespace A378357.P1373530144736787224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075802 (n + 2) + 1) * A075802 (n + 1)

end

end A378357.P1373530144736787224

/-!
# A378358: Least non-perfect-power >= n.

The programs for A378358, there is no canonical definition to state claims against.
-/

/-! ## A378358.P17184515748441902996

`∏{e}[n+1, gcd(2*n+1, n+3)%#]+1+n`
-/

namespace A378358.P17184515748441902996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (2 * n + 1) (n + 3) % Nat.factorization (f1 n) p + 1 + n

end

end A378358.P17184515748441902996

/-! ## A378358.P4396644040976867814

`A378357(n+1)+1+n`
-/

namespace A378358.P4396644040976867814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378357 (n + 1) + 1 + (n : ℤ)

end

end A378358.P4396644040976867814

/-! ## A378358.P5125291144231853131

`n+1+A075802(n+1)+char[7]`
-/

namespace A378358.P5125291144231853131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A075802 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A378358.P5125291144231853131

/-! ## A378358.P17017171215815359899

`char[7]+char[∑[A076412(n)]-1]+1+n`
-/

namespace A378358.P17017171215815359899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 + n

end

end A378358.P17017171215815359899

/-! ## A378358.P7303130150827449048

`A020725(A378357(n+1)+n)`
-/

namespace A378358.P7303130150827449048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A378357 (n + 1) + (n : ℤ)).toNat

end

end A378358.P7303130150827449048

/-! ## A378358.P4283587380581266310

`A007916(n+1-A076411(n+1))`
-/

namespace A378358.P4283587380581266310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 ((n + 1 : ℤ) - A076411 (n + 1)).toNat

end

end A378358.P4283587380581266310

/-! ## A378358.P183370481343842821

`A007916(∑[char[A007916(n+1)]]+1)`
-/

namespace A378358.P183370481343842821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378358.P183370481343842821

/-!
# A378361: Octagonal indices of numbers that are both octagonal and octagonal pyramidal.

The programs for A378361, there is no canonical definition to state claims against.
-/

/-! ## A378361.P6264059287708692025

`ceil(sqrt(A344376(n+1)/3))`
-/

namespace A378361.P6264059287708692025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A344376 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A378361.P6264059287708692025

/-!
# A378362: Number of fixed site animals containing n nodes on the nodes of the cairo pentagonal tiling.

The programs for A378362, there is no canonical definition to state claims against.
-/

/-! ## A378362.P16665385247792921318

`A373676(∑[∑[n²]]+2)`
-/

namespace A378362.P16665385247792921318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373676 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A378362.P16665385247792921318

/-!
# A378363: Greatest number <= n that is 1 or not a perfect-power.

The programs for A378363, there is no canonical definition to state claims against.
-/

/-! ## A378363.P17464748637177279018

`A175082(A132351(n+1))`
-/

namespace A378363.P17464748637177279018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (A132351 (n + 1)).toNat

end

end A378363.P17464748637177279018

/-! ## A378363.P2822591184041649820

`A175082(∑[A132350(n+1)])`
-/

namespace A378363.P2822591184041649820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378363.P2822591184041649820

/-! ## A378363.P4155964925765548392

`A175081(∑[A175083(n+1)])`
-/

namespace A378363.P4155964925765548392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378363.P4155964925765548392

/-! ## A378363.P16820049244253539707

`A143064(n)^A188585(n+1)+n`
-/

namespace A378363.P16820049244253539707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143064 n : ℚ) ^ (A188585 (n + 1) : ℤ) + (n : ℚ)

end

end A378363.P16820049244253539707

/-! ## A378363.P3177294171729737439

`n+2-A014963(A007956(n+1))`
-/

namespace A378363.P3177294171729737439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A014963 (A007956 (n + 1)).toNat

end

end A378363.P3177294171729737439

/-!
# A378364: Prime numbers such that the interval from the previous prime number contains a unique perfect power.

The programs for A378364, there is no canonical definition to state claims against.
-/

/-! ## A378364.P8437424772472885341

`∩[A007491(n+1), A326853(n+1)]`
-/

namespace A378364.P8437424772472885341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378364.P8437424772472885341

/-! ## A378364.P1908518591990548914

`∩[A156611(n+1), A326853(n+1)]`
-/

namespace A378364.P1908518591990548914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378364.P1908518591990548914

/-! ## A378364.P5849821064202404274

`∩[A156611(n+1), A368533(n+1)]`
-/

namespace A378364.P5849821064202404274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378364.P5849821064202404274

/-!
# A378365: Next prime index after each perfect power, duplicates removed.

The programs for A378365, there is no canonical definition to state claims against.
-/

/-! ## A378365.P18412154801547363058

`A377283(n+1)+1`
-/

namespace A378365.P18412154801547363058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377283 (n + 1) + 1

end

end A378365.P18412154801547363058

/-! ## A378365.P9093852940535422686

`eq[1, char[A378356(n+1)]]`
-/

namespace A378365.P9093852940535422686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378365.P9093852940535422686

/-! ## A378365.P9235252349459183732

`A378251(n)+a(n-1)` with `a(0)=1`
-/

namespace A378365.P9235252349459183732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A378251 n + a (n - 1)

end

end A378365.P9235252349459183732

/-! ## A378365.P17076598148798066434

`record[A378356(A152271(n))]`
-/

namespace A378365.P17076598148798066434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378365.P17076598148798066434

/-! ## A378365.P16576367593975816912

`record[A378356(A263017(n))]`
-/

namespace A378365.P16576367593975816912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A263017 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378365.P16576367593975816912

/-! ## A378365.P3174743600675272804

`record[A378356(A324343(n))]`
-/

namespace A378365.P3174743600675272804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A324343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378365.P3174743600675272804

/-! ## A378365.P6642292946469139943

`record[A378356(A026272(n+1))]`
-/

namespace A378365.P6642292946469139943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A026272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378365.P6642292946469139943

/-! ## A378365.P16648526681483323186

`record[A378356(A027751(n+1))]`
-/

namespace A378365.P16648526681483323186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A027751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378365.P16648526681483323186

/-! ## A378365.P11386570020821062339

`record[A378356(A104706(n+1))]`
-/

namespace A378365.P11386570020821062339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A104706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378365.P11386570020821062339

/-! ## A378365.P1021349871083765018

`record[A378356(A305801(n+1))]`
-/

namespace A378365.P1021349871083765018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (A305801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378365.P1021349871083765018

/-!
# A378366: Difference between n and the greatest non prime power <= n (allowing 1).

The programs for A378366, the canonical program `A378366.P5705427883801254966` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378366 has offset 1).

The definition of A378366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378367, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378366.P5705427883801254966

`n+1-A378367(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378366

/-- `n+1-A378367(n+1)` -/
def P5705427883801254966.Spec : Prop :=
  ∀ n, P5705427883801254966.a n = A378366 (n + 1)

theorem P5705427883801254966.correct : P5705427883801254966.Spec := by
  intro n
  simp only [A378366, Nat.add_sub_cancel]

end A378366

/-! ## A378366.P11777072855088689039

`n+1-A361102(A356068(n+1))`
-/

namespace A378366.P11777072855088689039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A361102 (A356068 (n + 1)).toNat

end

end A378366.P11777072855088689039

namespace A378366

/-- `n+1-A361102(A356068(n+1))` -/
def P11777072855088689039.Spec : Prop :=
  ∀ n, P11777072855088689039.a n = A378366 (n + 1)

end A378366

/-! ## A378366.P15806954944508693214

`n-A023443(A378367(n+1))`
-/

namespace A378366.P15806954944508693214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A378367 (n + 1)).toNat

end

end A378366.P15806954944508693214

namespace A378366

/-- `n-A023443(A378367(n+1))` -/
def P15806954944508693214.Spec : Prop :=
  ∀ n, P15806954944508693214.a n = A378366 (n + 1)

end A378366

/-! ## A378366.P16470845882206327913

`A378371(A378371(n+1)+A378367(n+1))`
-/

namespace A378366.P16470845882206327913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378371 (A378371 (n + 1) + A378367 (n + 1)).toNat

end

end A378366.P16470845882206327913

namespace A378366

/-- `A378371(A378371(n+1)+A378367(n+1))` -/
def P16470845882206327913.Spec : Prop :=
  ∀ n, P16470845882206327913.a n = A378366 (n + 1)

end A378366

/-! ## A378366.P4016684484044737491

`A007920(A378367(n+1)+A309877(n+1))`
-/

namespace A378366.P4016684484044737491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A378367 (n + 1) + A309877 (n + 1)).toNat

end

end A378366.P4016684484044737491

namespace A378366

/-- `A007920(A378367(n+1)+A309877(n+1))` -/
def P4016684484044737491.Spec : Prop :=
  ∀ n, P4016684484044737491.a n = A378366 (n + 1)

end A378366

/-!
# A378367: Greatest non prime power <= n, allowing 1.

The programs for A378367, the canonical program `A378367.P15446087870678905426` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378367 has offset 1).

The definition of A378367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356068, A361102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378367.P2795696676906213580

`n+1-A378366(n+1)`
-/

namespace A378367.P2795696676906213580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378366 (n + 1)

end

end A378367.P2795696676906213580

namespace A378367

/-- `n+1-A378366(n+1)` -/
def P2795696676906213580.Spec : Prop :=
  ∀ n, P2795696676906213580.a n = A378367 (n + 1)

theorem P2795696676906213580.correct : P2795696676906213580.Spec := by
  intro n
  simp only [A378367, Nat.add_sub_cancel, A378367.P2795696676906213580.a, A378367.P15446087870678905426.a, A356068, A356068.P11051328716831346612.a, A361102, A361102.P11083175850878873480.f1, A361102.P11083175850878873480.f2, A361102.P11083175850878873480.a, A378366, A378366.P5705427883801254966.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A085970, A085970.P2562174614589588878.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A085972, A085972.P16995804362626951935.f2, A085972.P16995804362626951935.f1, A085972.P16995804362626951935.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378367

/-! ## A378367.P15446087870678905426

`A361102(A356068(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378367

/-- `A361102(A356068(n+1))` -/
def P15446087870678905426.Spec : Prop :=
  ∀ n, P15446087870678905426.a n = A378367 (n + 1)

theorem P15446087870678905426.correct : P15446087870678905426.Spec := by
  intro n
  simp only [A378367, Nat.add_sub_cancel]

end A378367

/-! ## A378367.P9054181634485201602

`A361102(A085970(n+1)+1)`
-/

namespace A378367.P9054181634485201602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A085970 (n + 1) + 1).toNat

end

end A378367.P9054181634485201602

namespace A378367

/-- `A361102(A085970(n+1)+1)` -/
def P9054181634485201602.Spec : Prop :=
  ∀ n, P9054181634485201602.a n = A378367 (n + 1)

end A378367

/-! ## A378367.P2862364662405502047

`A361102(n+1-A025528(n+1))`
-/

namespace A378367.P2862364662405502047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 ((n + 1 : ℤ) - A025528 (n + 1)).toNat

end

end A378367.P2862364662405502047

namespace A378367

/-- `A361102(n+1-A025528(n+1))` -/
def P2862364662405502047.Spec : Prop :=
  ∀ n, P2862364662405502047.a n = A378367 (n + 1)

end A378367

/-! ## A378367.P6518906224137036861

`A361102(n+2-A065515(n+1))`
-/

namespace A378367.P6518906224137036861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 ((n + 2 : ℤ) - A065515 (n + 1)).toNat

end

end A378367.P6518906224137036861

namespace A378367

/-- `A361102(n+2-A065515(n+1))` -/
def P6518906224137036861.Spec : Prop :=
  ∀ n, P6518906224137036861.a n = A378367 (n + 1)

end A378367

/-! ## A378367.P11766570527339234567

`A361102(∑[char[A361102(n+1)-1]])`
-/

namespace A378367.P11766570527339234567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378367.P11766570527339234567

namespace A378367

/-- `A361102(∑[char[A361102(n+1)-1]])` -/
def P11766570527339234567.Spec : Prop :=
  ∀ n, P11766570527339234567.a n = A378367 (n + 1)

end A378367

/-!
# A378369: Distance between n and the least nonsquarefree number >= n.

The programs for A378369, there is no canonical definition to state claims against.
-/

/-! ## A378369.P16320352227413282998

`A120327(n+1)-(n+1)`
-/

namespace A378369.P16320352227413282998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (n + 1) - (n + 1 : ℤ)

end

end A378369.P16320352227413282998

/-! ## A378369.P10894503304878813269

`A000378(A120327(n+1)-n)`
-/

namespace A378369.P10894503304878813269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P10894503304878813269

/-! ## A378369.P14300291240130147836

`A001630(A120327(n+1)-n)`
-/

namespace A378369.P14300291240130147836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P14300291240130147836

/-! ## A378369.P8818313586537335291

`A002113(A120327(n+1)-n)`
-/

namespace A378369.P8818313586537335291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P8818313586537335291

/-! ## A378369.P15472971906873258685

`A002235(A120327(n+1)-n)`
-/

namespace A378369.P15472971906873258685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P15472971906873258685

/-! ## A378369.P10491394793506851178

`A002778(A120327(n+1)-n)`
-/

namespace A378369.P10491394793506851178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P10491394793506851178

/-! ## A378369.P8534962942257371328

`A002981(A120327(n+1)-n)`
-/

namespace A378369.P8534962942257371328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P8534962942257371328

/-! ## A378369.P13966396543294302498

`A003726(A120327(n+1)-n)`
-/

namespace A378369.P13966396543294302498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P13966396543294302498

/-! ## A378369.P2869675119939031920

`A004762(A120327(n+1)-n)`
-/

namespace A378369.P2869675119939031920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P2869675119939031920

/-! ## A378369.P7190553794249597880

`A004825(A120327(n+1)-n)`
-/

namespace A378369.P7190553794249597880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004825 (A120327 (n + 1) - (n : ℤ)).toNat

end

end A378369.P7190553794249597880

/-!
# A378370: Distance between n and the least prime power >= n, allowing 1.

The programs for A378370, the canonical program `A378370.P12947003761999164007` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378370 has offset 1).

The definition of A378370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378370.P12947003761999164007

`A000015(n+1)-(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378370

/-- `A000015(n+1)-(n+1)` -/
def P12947003761999164007.Spec : Prop :=
  ∀ n, P12947003761999164007.a n = A378370 (n + 1)

theorem P12947003761999164007.correct : P12947003761999164007.Spec := by
  intro n
  simp only [A378370, Nat.add_sub_cancel]

end A378370

/-! ## A378370.P13183227311965437314

`A023443(A000015(n+1)-n)`
-/

namespace A378370.P13183227311965437314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000015 (n + 1) - (n : ℤ)).toNat

end

end A378370.P13183227311965437314

namespace A378370

/-- `A023443(A000015(n+1)-n)` -/
def P13183227311965437314.Spec : Prop :=
  ∀ n, P13183227311965437314.a n = A378370 (n + 1)

end A378370

/-! ## A378370.P13007722941222582443

`A000015(n+1)%A030640(n)`
-/

namespace A378370.P13007722941222582443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000015 (n + 1)) (A030640 n)

end

end A378370.P13007722941222582443

namespace A378370

/-- `A000015(n+1)%A030640(n)` -/
def P13007722941222582443.Spec : Prop :=
  ∀ n, P13007722941222582443.a n = A378370 (n + 1)

end A378370

/-! ## A378370.P13930648183384846585

`A001478(n+1)+A000015(n+1)`
-/

namespace A378370.P13930648183384846585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A000015 (n + 1)

end

end A378370.P13930648183384846585

namespace A378370

/-- `A001478(n+1)+A000015(n+1)` -/
def P13930648183384846585.Spec : Prop :=
  ∀ n, P13930648183384846585.a n = A378370 (n + 1)

theorem P13930648183384846585.correct : P13930648183384846585.Spec := by
  intro n
  simp only [A378370, Nat.add_sub_cancel, A378370.P13930648183384846585.a, A378370.P12947003761999164007.a, A000015, A000015.P2530082583010810879.a, A001478, A001478.P11279598861711037921.a, A031218, A031218.P11079871404618641815.a, A097106, A097106.P14132093488680178125.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A057820, A057820.P915405789854175386.a, A065515, A065515.P15129427044826637405.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378370

/-! ## A378370.P14657623820806711620

`A097106(n+1)-A378457(n+1)`
-/

namespace A378370.P14657623820806711620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097106 (n + 1) - A378457 (n + 1)

end

end A378370.P14657623820806711620

namespace A378370

/-- `A097106(n+1)-A378457(n+1)` -/
def P14657623820806711620.Spec : Prop :=
  ∀ n, P14657623820806711620.a n = A378370 (n + 1)

theorem P14657623820806711620.correct : P14657623820806711620.Spec := by
  intro n
  simp only [A378370, Nat.add_sub_cancel, A378370.P14657623820806711620.a, A378370.P12947003761999164007.a, A000015, A000015.P2530082583010810879.a, A097106, A097106.P14132093488680178125.a, A378457, A378457.P16628396355233593541.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A031218, A031218.P11079871404618641815.a, A057820, A057820.P915405789854175386.a, A276781, A276781.P2604158077506703315.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378370

/-! ## A378370.P5124079939749119213

`A188666(A238898(n+1))-(n+1)`
-/

namespace A378370.P5124079939749119213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (A238898 (n + 1)).toNat - (n + 1 : ℤ)

end

end A378370.P5124079939749119213

namespace A378370

/-- `A188666(A238898(n+1))-(n+1)` -/
def P5124079939749119213.Spec : Prop :=
  ∀ n, P5124079939749119213.a n = A378370 (n + 1)

end A378370

/-! ## A378370.P10984573419319691619

`A188666(Δ[n²])-(n+1)`
-/

namespace A378370.P10984573419319691619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A378370.P10984573419319691619

namespace A378370

/-- `A188666(Δ[n²])-(n+1)` -/
def P10984573419319691619.Spec : Prop :=
  ∀ n, P10984573419319691619.a n = A378370 (n + 1)

end A378370

/-! ## A378370.P15627058249376827800

`A188666(2*n+1)-1-n`
-/

namespace A378370.P15627058249376827800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (2 * n + 1) - 1 - (n : ℤ)

end

end A378370.P15627058249376827800

namespace A378370

/-- `A188666(2*n+1)-1-n` -/
def P15627058249376827800.Spec : Prop :=
  ∀ n, P15627058249376827800.a n = A378370 (n + 1)

end A378370

/-! ## A378370.P7783288156715141245

`A377282(abs(1-n)+1)-1`
-/

namespace A378370.P7783288156715141245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377282 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A378370.P7783288156715141245

namespace A378370

/-- `A377282(abs(1-n)+1)-1` -/
def P7783288156715141245.Spec : Prop :=
  ∀ n, P7783288156715141245.a n = A378370 (n + 1)

end A378370

/-! ## A378370.P10575917969359956808

`lcm(A079872(n+1), A377282(n+1))`
-/

namespace A378370.P10575917969359956808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079872 (n + 1)) (A377282 (n + 1))

end

end A378370.P10575917969359956808

namespace A378370

/-- `lcm(A079872(n+1), A377282(n+1))` -/
def P10575917969359956808.Spec : Prop :=
  ∀ n, (P10575917969359956808.a n : ℤ) = A378370 (n + 1)

end A378370

/-!
# A378371: Distance between n and the least non prime power >= n, allowing 1.

The programs for A378371, there is no canonical definition to state claims against.
-/

/-! ## A378371.P9016339118341454725

`A378372(n+1)-(n+1)`
-/

namespace A378371.P9016339118341454725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378372 (n + 1) - (n + 1 : ℤ)

end

end A378371.P9016339118341454725

/-! ## A378371.P16405208210092831226

`A001221(ceil((n+1)/∏{p}[n+1, (n+1)/#]))*A294280(n+1)`
-/

namespace A378371.P16405208210092831226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat * A294280 (n + 1)

end

end A378371.P16405208210092831226

/-! ## A378371.P8893694982353841828

`A001222(ceil((n+1)/∏{p}[n+1, (n+1)/#]))*A294280(n+1)`
-/

namespace A378371.P8893694982353841828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat * A294280 (n + 1)

end

end A378371.P8893694982353841828

/-! ## A378371.P10261734309458540739

`A001222(ceil((n+1)/∏{p}[n+1, (n+1)/#])^A294280(n+1))`
-/

namespace A378371.P10261734309458540739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ) ^ (A294280 (n + 1) : ℤ))).toNat

end

end A378371.P10261734309458540739

/-! ## A378371.P10129844608945845970

`A002113(A378372(n+1)-n)`
-/

namespace A378371.P10129844608945845970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A378372 (n + 1) - (n : ℤ)).toNat

end

end A378371.P10129844608945845970

/-! ## A378371.P7950056397325327404

`A023775(A378372(n+1)-n)`
-/

namespace A378371.P7950056397325327404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023775 (A378372 (n + 1) - (n : ℤ)).toNat

end

end A378371.P7950056397325327404

/-! ## A378371.P1442904257745013583

`A029966(A378372(n+1)-n)`
-/

namespace A378371.P1442904257745013583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029966 (A378372 (n + 1) - (n : ℤ)).toNat

end

end A378371.P1442904257745013583

/-! ## A378371.P10649483295834778595

`A029969(A378372(n+1)-n)`
-/

namespace A378371.P10649483295834778595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029969 (A378372 (n + 1) - (n : ℤ)).toNat

end

end A378371.P10649483295834778595

/-! ## A378371.P10433956162313499371

`A030141(A378372(n+1)-n)`
-/

namespace A378371.P10433956162313499371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (A378372 (n + 1) - (n : ℤ)).toNat

end

end A378371.P10433956162313499371

/-! ## A378371.P1299043541412683892

`A033619(A378372(n+1)-n)`
-/

namespace A378371.P1299043541412683892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A378372 (n + 1) - (n : ℤ)).toNat

end

end A378371.P1299043541412683892

/-!
# A378372: Least non prime power >= n, allowing 1.

The programs for A378372, there is no canonical definition to state claims against.
-/

/-! ## A378372.P8419745490359079822

`A378371(n+1)+n+1`
-/

namespace A378372.P8419745490359079822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378371 (n + 1) + (n + 1 : ℤ)

end

end A378372.P8419745490359079822

/-! ## A378372.P8146034207821058831

`A361102(∑[char[A361102(n+1)]]+1)`
-/

namespace A378372.P8146034207821058831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378372.P8146034207821058831

/-!
# A378373: Number of composite numbers (A002808) between consecutive nonsquarefree numbers (A013929), exclusive.

The programs for A378373, there is no canonical definition to state claims against.
-/

/-! ## A378373.P17461338732996690347

`Δ[A062298(A013929(n+1))]-1`
-/

namespace A378373.P17461338732996690347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A013929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A378373.P17461338732996690347

/-! ## A378373.P17062402962088142111

`A375707(n+1)-A236575(n+1)`
-/

namespace A378373.P17062402962088142111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1) - A236575 (n + 1)

end

end A378373.P17062402962088142111

/-! ## A378373.P2936904819856314363

`A280748(A310853(2*n+1)-n)`
-/

namespace A378373.P2936904819856314363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 (A310853 (2 * n + 1) - (n : ℤ)).toNat

end

end A378373.P2936904819856314363

/-! ## A378373.P10639852445117678311

`A196563(A377048(n+2))-A112765(n+3)`
-/

namespace A378373.P10639852445117678311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A377048 (n + 2)).toNat - A112765 (n + 3)

end

end A378373.P10639852445117678311

/-! ## A378373.P8136335956667849335

`A254990(A228765(n))`
-/

namespace A378373.P8136335956667849335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 (A228765 n).toNat

end

end A378373.P8136335956667849335

/-!
# A378374: Perfect powers p such that the interval from the previous perfect power to p contains a unique prime.

The programs for A378374, there is no canonical definition to state claims against.
-/

/-! ## A378374.P17876209817916928964

`A001597(A378368(n+1)+1)`
-/

namespace A378374.P17876209817916928964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A378368 (n + 1) + 1).toNat

end

end A378374.P17876209817916928964

/-!
# A378377: Triangle read by rows: T(n,k) is the number of non-descending sequences with length k such that the maximum of the length and the last number is n.

The programs for A378377, the canonical program `A378377.P1377304433949360129` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378377 has offset 1).

The definition of A378377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378377.P1377304433949360129

`A176992(A056943(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A378377

/-- `A176992(A056943(n+1))` -/
def P1377304433949360129.Spec : Prop :=
  ∀ n, P1377304433949360129.a n = A378377 (n + 1)

theorem P1377304433949360129.correct : P1377304433949360129.Spec := by
  intro n
  simp only [A378377, Nat.add_sub_cancel]

end A378377

/-! ## A378377.P10635951698206990507

`A059481(A181133(n+1))`
-/

namespace A378377.P10635951698206990507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A181133 (n + 1)).toNat

end

end A378377.P10635951698206990507

namespace A378377

/-- `A059481(A181133(n+1))` -/
def P10635951698206990507.Spec : Prop :=
  ∀ n, P10635951698206990507.a n = A378377 (n + 1)

end A378377

/-! ## A378377.P2264930929379289147

`A046899(A127648(n)+n)`
-/

namespace A378377.P2264930929379289147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A127648 n + (n : ℤ)).toNat

end

end A378377.P2264930929379289147

namespace A378377

/-- `A046899(A127648(n)+n)` -/
def P2264930929379289147.Spec : Prop :=
  ∀ n, P2264930929379289147.a n = A378377 (n + 1)

end A378377

/-! ## A378377.P49380776443483020

`A059481(A007401(n+2)-1)`
-/

namespace A378377.P49380776443483020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A007401 (n + 2) - 1).toNat

end

end A378377.P49380776443483020

namespace A378377

/-- `A059481(A007401(n+2)-1)` -/
def P49380776443483020.Spec : Prop :=
  ∀ n, P49380776443483020.a n = A378377 (n + 1)

end A378377

/-! ## A378377.P12627735524210914958

`A059481(A014132(n+2)-2)`
-/

namespace A378377.P12627735524210914958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A014132 (n + 2) - 2).toNat

end

end A378377.P12627735524210914958

namespace A378377

/-- `A059481(A014132(n+2)-2)` -/
def P12627735524210914958.Spec : Prop :=
  ∀ n, P12627735524210914958.a n = A378377 (n + 1)

end A378377

/-!
# A378378: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+3*k-1,3*k).

The programs for A378378, there is no canonical definition to state claims against.
-/

/-! ## A378378.P3088500670891396398

`A378318(∑[4*n])`
-/

namespace A378378.P3088500670891396398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378378.P3088500670891396398

/-!
# A378379: Minimal x such that there is a partition of (x, x) into sums of distinct pairs of nonnegative integers with size at least n, excluding (0, 0).

The programs for A378379, there is no canonical definition to state claims against.
-/

/-! ## A378379.P8112515482845372481

`round(∑[(comp[∑[n-2]]-n)/2])`
-/

namespace A378379.P8112515482845372481
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378379.P8112515482845372481

/-! ## A378379.P7253817739800967170

`ceil(A006463(n+2)/2)`
-/

namespace A378379.P7253817739800967170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006463 (n + 2) : ℚ) / 2⌉

end

end A378379.P7253817739800967170

/-! ## A378379.P14942555348772685738

`∑[A274701(n+2)-1]`
-/

namespace A378379.P14942555348772685738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378379.P14942555348772685738

/-! ## A378379.P3199737221890997125

`ceil(∑[∑[A023531(n)]]/2)`
-/

namespace A378379.P3199737221890997125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A378379.P3199737221890997125

/-! ## A378379.P10944875510295745488

`A259280(n+3)-(n+3)`
-/

namespace A378379.P10944875510295745488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259280 (n + 3) - (n + 3 : ℤ)

end

end A378379.P10944875510295745488

/-! ## A378379.P732874986885860103

`ceil(∑[A003056(n+1)]/2)`
-/

namespace A378379.P732874986885860103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A378379.P732874986885860103

/-! ## A378379.P5437795024706671620

`ceil(∑[∑[A010054(n+1)]]/2)`
-/

namespace A378379.P5437795024706671620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A378379.P5437795024706671620

/-! ## A378379.P7943722876843500331

`A008624(A340520(n+2))`
-/

namespace A378379.P7943722876843500331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A340520 (n + 2)).toNat

end

end A378379.P7943722876843500331

/-! ## A378379.P2753454487135944318

`A065033(∑[∑[A023531(n)]])`
-/

namespace A378379.P2753454487135944318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378379.P2753454487135944318

/-! ## A378379.P18275330497946562771

`A065033(∑[A003056(n+1)])`
-/

namespace A378379.P18275330497946562771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378379.P18275330497946562771

/-!
# A378380: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A378380, the canonical program `A378380.P9757006306424432664` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378380 has offset 0).

The definition of A378380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378380.P9757006306424432664

`(A002315(n)+1)*(2*A002315(n)+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A378380

/-- `(A002315(n)+1)*(2*A002315(n)+1)` -/
def P9757006306424432664.Spec : Prop :=
  ∀ n, P9757006306424432664.a n = A378380 n

theorem P9757006306424432664.correct : P9757006306424432664.Spec := by
  intro n
  simp only [A378380]

end A378380

/-! ## A378380.P9554719485274888550

`(A377725(n)+2*A385977(n)+1)/2`
-/

namespace A378380.P9554719485274888550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377725 n + 2 * A385977 n + 1 : ℚ) / 2

end

end A378380.P9554719485274888550

namespace A378380

/-- `(A377725(n)+2*A385977(n)+1)/2` -/
def P9554719485274888550.Spec : Prop :=
  ∀ n, P9554719485274888550.a n = (A378380 n : ℚ)

theorem P9554719485274888550.correct : P9554719485274888550.Spec := by
  intro n
  simp only [A378380, Nat.add_sub_cancel, A378380.P9554719485274888550.a, A378380.P9757006306424432664.a, A002315, A002315.P5084403563182278193.a, A377725, A377725.P10966813579059079895.a, A385977, A385977.P16877403268120504790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378380

/-! ## A378380.P17107507168742315004

`A379509(n)-A002315(n)`
-/

namespace A378380.P17107507168742315004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379509 n - A002315 n

end

end A378380.P17107507168742315004

namespace A378380

/-- `A379509(n)-A002315(n)` -/
def P17107507168742315004.Spec : Prop :=
  ∀ n, P17107507168742315004.a n = A378380 n

theorem P17107507168742315004.correct : P17107507168742315004.Spec := by
  intro n
  simp only [A378380, Nat.add_sub_cancel, A378380.P17107507168742315004.a, A378380.P9757006306424432664.a, A002315, A002315.P5084403563182278193.a, A379509, A379509.P8727841292093369161.a, A377725, A377725.P10966813579059079895.a, A385977, A385977.P16877403268120504790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378380

/-! ## A378380.P17331140360920257846

`∑[A002203(2*n)]*A124696(2*n+1)`
-/

namespace A378380.P17331140360920257846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A124696 (2 * n + 1)

end

end A378380.P17331140360920257846

namespace A378380

/-- `∑[A002203(2*n)]*A124696(2*n+1)` -/
def P17331140360920257846.Spec : Prop :=
  ∀ n, P17331140360920257846.a n = A378380 n

end A378380

/-! ## A378380.P18005397032435666765

`A377725(n)+A002315(n)*A377725(n)`
-/

namespace A378380.P18005397032435666765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377725 n + A002315 n * A377725 n

end

end A378380.P18005397032435666765

namespace A378380

/-- `A377725(n)+A002315(n)*A377725(n)` -/
def P18005397032435666765.Spec : Prop :=
  ∀ n, P18005397032435666765.a n = A378380 n

theorem P18005397032435666765.correct : P18005397032435666765.Spec := by
  intro n
  simp only [A378380, Nat.add_sub_cancel, A378380.P18005397032435666765.a, A378380.P9757006306424432664.a, A002315, A002315.P5084403563182278193.a, A377725, A377725.P10966813579059079895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378380

/-! ## A378380.P4319332745528208756

`C(A077444(n+1)+2, 2)`
-/

namespace A378380.P4319332745528208756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077444 (n + 1) + 2).toNat 2

end

end A378380.P4319332745528208756

namespace A378380

/-- `C(A077444(n+1)+2, 2)` -/
def P4319332745528208756.Spec : Prop :=
  ∀ n, (P4319332745528208756.a n : ℤ) = A378380 n

end A378380

/-! ## A378380.P12285653181104196249

`C(A162485(2*n+1), 2)`
-/

namespace A378380.P12285653181104196249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A162485 (2 * n + 1)).toNat 2

end

end A378380.P12285653181104196249

namespace A378380

/-- `C(A162485(2*n+1), 2)` -/
def P12285653181104196249.Spec : Prop :=
  ∀ n, (P12285653181104196249.a n : ℤ) = A378380 n

end A378380

/-! ## A378380.P16384958846857849616

`C(A182143(2*n+1)+1, 2)`
-/

namespace A378380.P16384958846857849616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182143 (2 * n + 1) + 1).toNat 2

end

end A378380.P16384958846857849616

namespace A378380

/-- `C(A182143(2*n+1)+1, 2)` -/
def P16384958846857849616.Spec : Prop :=
  ∀ n, (P16384958846857849616.a n : ℤ) = A378380 n

end A378380

/-!
# A378381: Lexicographically earliest sequence such that each set of terms enclosed by two equal values, including the endpoints, contains a distinct number of elements.

The programs for A378381, there is no canonical definition to state claims against.
-/

/-! ## A378381.P5369694172989377063

`A336472(A005117(n+1))%A134563(2*(n+1))`
-/

namespace A378381.P5369694172989377063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336472 (A005117 (n + 1)).toNat) (A134563 (2 * (n + 1)))

end

end A378381.P5369694172989377063

/-! ## A378381.P1840033622429397000

`A336472(A005117(n+1)%A333284(2*(n+1)))`
-/

namespace A378381.P1840033622429397000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336472 (Int.tmod (A005117 (n + 1)) (A333284 (2 * (n + 1)))).toNat

end

end A378381.P1840033622429397000

/-! ## A378381.P6076437545711797347

`A336472(A005117(n+1))*A336472(A000079(n))`
-/

namespace A378381.P6076437545711797347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336472 (A005117 (n + 1)).toNat * A336472 (A000079 n).toNat

end

end A378381.P6076437545711797347

/-! ## A378381.P10779793915795441793

`A336472(A005117(n+1)%A151913(n+1))`
-/

namespace A378381.P10779793915795441793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336472 (Int.tmod (A005117 (n + 1)) (A151913 (n + 1))).toNat

end

end A378381.P10779793915795441793

/-! ## A378381.P3039396103285066615

`A336472(A005117(n+1)*A011782(n))`
-/

namespace A378381.P3039396103285066615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336472 (A005117 (n + 1) * A011782 n).toNat

end

end A378381.P3039396103285066615

/-!
# A378382: Number of maximal chains in the poset of compositions with weight <= n and parts of size <= 2, ordered by A covers B iff A_i >= B_{i+k} for all i in B and some k >= 0.

The programs for A378382, there is no canonical definition to state claims against.
-/

/-! ## A378382.P5299386073112247333

`A378588(∑[n-1]+3)`
-/

namespace A378382.P5299386073112247333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378588 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A378382.P5299386073112247333

/-! ## A378382.P1662537430875603559

`A020912(A240613(n+1))`
-/

namespace A378382.P1662537430875603559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020912 (A240613 (n + 1)).toNat

end

end A378382.P1662537430875603559

/-! ## A378382.P105881229395589651

`A026834(A105871(n))`
-/

namespace A378382.P105881229395589651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A105871 n).toNat

end

end A378382.P105881229395589651

/-!
# A378383: Number of subwords of the form UDDD in nondecreasing Dyck paths of length 2*n.

The programs for A378383, there is no canonical definition to state claims against.
-/

/-! ## A378383.P7094350715832784057

`A377679(n)-A377867(n)`
-/

namespace A378383.P7094350715832784057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377679 n - A377867 n

end

end A378383.P7094350715832784057

/-! ## A378383.P8669690851873117925

`record[A147293(n)]%A077985(n)`
-/

namespace A378383.P8669690851873117925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A077985 n)

end

end A378383.P8669690851873117925

/-! ## A378383.P13457575948239799873

`A051377(A000045(2*n+1))%A077985(n)`
-/

namespace A378383.P13457575948239799873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051377 (A000045 (2 * n + 1)).toNat) (A077985 n)

end

end A378383.P13457575948239799873

/-! ## A378383.P14824165497727502374

`A006370(A126358(n))%A135153(2*n+3)`
-/

namespace A378383.P14824165497727502374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006370 (A126358 n).toNat) (A135153 (2 * n + 3))

end

end A378383.P14824165497727502374

/-!
# A378384: Digital root of the sum of the previous 3 terms; a(0) = a(1) = a(2) = 1.

The programs for A378384, the canonical program `A378384.P16639726357393477` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378384 has offset 0).

The definition of A378384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378384.P16639726357393477

`dr(A112661(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378384

/-- `dr(A112661(n))` -/
def P16639726357393477.Spec : Prop :=
  ∀ n, (P16639726357393477.a n : ℤ) = A378384 n

theorem P16639726357393477.correct : P16639726357393477.Spec := by
  intro n
  simp only [A378384]

end A378384

/-!
# A378386: Area of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A378386, the canonical program `A378386.P10678097254079986643` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378386 has offset 0).

The definition of A378386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378386.P4472892201452731916

`A377725(n)*A385977(n)/2`
-/

namespace A378386.P4472892201452731916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377725 n * A385977 n : ℚ) / 2

end

end A378386.P4472892201452731916

namespace A378386

/-- `A377725(n)*A385977(n)/2` -/
def P4472892201452731916.Spec : Prop :=
  ∀ n, P4472892201452731916.a n = (A378386 n : ℚ)

theorem P4472892201452731916.correct : P4472892201452731916.Spec := by
  intro n
  simp only [A378386, Nat.add_sub_cancel, A378386.P4472892201452731916.a, A378386.P10678097254079986643.a, A002315, A002315.P5084403563182278193.a, A377725, A377725.P10966813579059079895.a, A385977, A385977.P16877403268120504790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378386

/-! ## A378386.P10678097254079986643

`A002315(n)*(A002315(n)+1)*(2*A002315(n)+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A378386

/-- `A002315(n)*(A002315(n)+1)*(2*A002315(n)+1)` -/
def P10678097254079986643.Spec : Prop :=
  ∀ n, P10678097254079986643.a n = A378386 n

theorem P10678097254079986643.correct : P10678097254079986643.Spec := by
  intro n
  simp only [A378386]

end A378386

/-! ## A378386.P16062301582082283366

`A002315(n)*A378380(n)`
-/

namespace A378386.P16062301582082283366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * A378380 n

end

end A378386.P16062301582082283366

namespace A378386

/-- `A002315(n)*A378380(n)` -/
def P16062301582082283366.Spec : Prop :=
  ∀ n, P16062301582082283366.a n = A378386 n

theorem P16062301582082283366.correct : P16062301582082283366.Spec := by
  intro n
  simp only [A378386, Nat.add_sub_cancel, A378386.P16062301582082283366.a, A378386.P10678097254079986643.a, A002315, A002315.P5084403563182278193.a, A378380, A378380.P9757006306424432664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378386

/-! ## A378386.P10352254891956912714

`lcm(A377016(n), A378380(n))`
-/

namespace A378386.P10352254891956912714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A377016 n) (A378380 n)

end

end A378386.P10352254891956912714

namespace A378386

/-- `lcm(A377016(n), A378380(n))` -/
def P10352254891956912714.Spec : Prop :=
  ∀ n, (P10352254891956912714.a n : ℤ) = A378386 n

end A378386

/-! ## A378386.P6236253279715040169

`C(A077444(n+1)+2, 2)*A078057(2*n)`
-/

namespace A378386.P6236253279715040169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A077444 (n + 1) + 2).toNat 2 : ℤ) * A078057 (2 * n)

end

end A378386.P6236253279715040169

namespace A378386

/-- `C(A077444(n+1)+2, 2)*A078057(2*n)` -/
def P6236253279715040169.Spec : Prop :=
  ∀ n, P6236253279715040169.a n = A378386 n

end A378386

/-!
# A378387: a(n) is the number of proper divisors d of n such that (-d)^n == -d (mod n).

The programs for A378387, there is no canonical definition to state claims against.
-/

/-! ## A378387.P6868708815214329618

`A371883(n+1)+A380656(n+1)-A380833(n+1)`
-/

namespace A378387.P6868708815214329618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371883 (n + 1) + (A380656 (n + 1) - A380833 (n + 1))

end

end A378387.P6868708815214329618

/-! ## A378387.P13251433232267371901

`A005087(A119350(3*n+5)+n)`
-/

namespace A378387.P13251433232267371901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A119350 (3 * n + 5) + (n : ℤ)).toNat

end

end A378387.P13251433232267371901

/-! ## A378387.P289672626224196847

`A001221(2*(n+1))-A288864(A272375(n+2))`
-/

namespace A378387.P289672626224196847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1)) - A288864 (A272375 (n + 2)).toNat

end

end A378387.P289672626224196847

/-! ## A378387.P2261692096927084288

`A001221(n+1)-A267423(A096898(n+1))`
-/

namespace A378387.P2261692096927084288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A267423 (A096898 (n + 1)).toNat

end

end A378387.P2261692096927084288

/-! ## A378387.P14940336102902476788

`A023531(A242680(n+3))+A005087(n+1)`
-/

namespace A378387.P14940336102902476788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A242680 (n + 3)).toNat + A005087 (n + 1)

end

end A378387.P14940336102902476788

/-!
# A378396: Rectangular array read by descending antidiagonals: (row 1) = u, and for n >= 2, (row n) = u-inverse runlength sequence of u, where u = 1 + A010060. See Comments.

The programs for A378396, there is no canonical definition to state claims against.
-/

/-! ## A378396.P13895088410521902189

`A000034(A292549(n)%A265093(n))`
-/

namespace A378396.P13895088410521902189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.tmod (A292549 n) (A265093 n)).toNat

end

end A378396.P13895088410521902189

/-! ## A378396.P11612949843414448554

`A006928(A295297(2*n+3)+A100705(n))`
-/

namespace A378396.P11612949843414448554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A295297 (2 * n + 3) + A100705 n).toNat

end

end A378396.P11612949843414448554

/-! ## A378396.P9662678527053239562

`A143331(A353530(3*(n+1))-A137178(n))`
-/

namespace A378396.P9662678527053239562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (A353530 (3 * (n + 1)) - A137178 n).toNat

end

end A378396.P9662678527053239562

/-! ## A378396.P10595191567098218253

`A136690(A226167(n+1)+n)`
-/

namespace A378396.P10595191567098218253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 (A226167 (n + 1) + (n : ℤ)).toNat

end

end A378396.P10595191567098218253

/-! ## A378396.P17282153712745170523

`A078880((A213750(n+1)+1)²+n²)`
-/

namespace A378396.P17282153712745170523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 ((A213750 (n + 1) + 1) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A378396.P17282153712745170523

/-!
# A378398: Rectangular array read by descending antidiagonals: (row 1) = u, and for n >= 2, (row n) = u-inverse runlength sequence of u, where u = A014675 (an infinite Fibonacci word). See Comments.

The programs for A378398, there is no canonical definition to state claims against.
-/

/-! ## A378398.P1523213238453084392

`A130196(A112798(2*n+5)*A212888(n+4))`
-/

namespace A378398.P1523213238453084392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (A112798 (2 * n + 5) * A212888 (n + 4)).toNat

end

end A378398.P1523213238453084392

/-! ## A378398.P687985061714489505

`A022303(A222300(n+1)+∑[A024320(n+1)])`
-/

namespace A378398.P687985061714489505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A222300 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378398.P687985061714489505

/-! ## A378398.P12781029958060109101

`A331349(A018676(n+2))`
-/

namespace A378398.P12781029958060109101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331349 (A018676 (n + 2)).toNat

end

end A378398.P12781029958060109101

/-! ## A378398.P16403403910172582654

`A140083(A138665(n+2))`
-/

namespace A378398.P16403403910172582654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (A138665 (n + 2)).toNat

end

end A378398.P16403403910172582654

/-! ## A378398.P12968497120123612593

`A104248(A071159(n+1)-A073200(n))`
-/

namespace A378398.P12968497120123612593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (A071159 (n + 1) - A073200 n).toNat

end

end A378398.P12968497120123612593

/-!
# A378399: Rectangular array read by descending antidiagonals: (row 1) = u, and for n >= 2, (row n) = u-inverse runlength sequence of u, where u = A006337 (a Beatty difference sequence). See Comments.

The programs for A378399, there is no canonical definition to state claims against.
-/

/-! ## A378399.P12357937021750272368

`A088569(A000040(n+4)^A270647(2*n+5))`
-/

namespace A378399.P12357937021750272368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (SequenceMachineLib.roundAway ((A000040 (n + 4) : ℚ) ^ (A270647 (2 * n + 5) : ℤ))).toNat

end

end A378399.P12357937021750272368

/-! ## A378399.P11041919532696037874

`A000002(or(A284847(2*(n+2)), A294675(n+1)))`
-/

namespace A378399.P11041919532696037874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Int.lor (A284847 (2 * (n + 2))) (A294675 (n + 1))).toNat

end

end A378399.P11041919532696037874

/-! ## A378399.P8981439573994508719

`gcd(2, A124533(∑{p}[n+1, #^val(n+1, #)]))`
-/

namespace A378399.P8981439573994508719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A124533 (∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p))

end

end A378399.P8981439573994508719

/-! ## A378399.P15178223840144297247

`gcd(2, A124533(A001414(n+1)))`
-/

namespace A378399.P15178223840144297247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A124533 (A001414 (n + 1)).toNat)

end

end A378399.P15178223840144297247

