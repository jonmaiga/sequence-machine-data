import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A374700: Triangle read by rows where T(n,k) is the number of integer compositions of n whose leaders of strictly increasing runs sum to k.

The programs for A374700, there is no canonical definition to state claims against.
-/

/-! ## A374700.P17429829454595492674

`A284588(A145899(n+1)+4)*A344612(A245300(n))`
-/

namespace A374700.P17429829454595492674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284588 (A145899 (n + 1) + 4).toNat * A344612 (A245300 n).toNat

end

end A374700.P17429829454595492674

/-! ## A374700.P12779314688933735894

`A105243(A386351(n+2))`
-/

namespace A374700.P12779314688933735894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105243 (A386351 (n + 2)).toNat

end

end A374700.P12779314688933735894

/-! ## A374700.P14006640683229968210

`A007814(A302150(n+1)+A186949(n))`
-/

namespace A374700.P14006640683229968210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302150 (n + 1) + A186949 n).toNat

end

end A374700.P14006640683229968210

/-! ## A374700.P4589491438612502181

`A036043(C(A309973(n), A119502(n+2)))`
-/

namespace A374700.P4589491438612502181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (Nat.choose (A309973 n).toNat (A119502 (n + 2)).toNat)

end

end A374700.P4589491438612502181

/-! ## A374700.P3459032834239242292

`A007814(A006094(n+1)*A302150(n+1))`
-/

namespace A374700.P3459032834239242292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006094 (n + 1) * A302150 (n + 1)).toNat

end

end A374700.P3459032834239242292

/-!
# A374702: Number of integer compositions of n whose leaders of maximal weakly decreasing runs sum to 3. Column k = 3 of A374748.

The programs for A374702, the canonical program `A374702.P15639217034664883611` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374702 has offset 0).

The definition of A374702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374702.P15639217034664883611

`floor(n²/3-floor(n/2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374702

/-- `floor(n²/3-floor(n/2))` -/
def P15639217034664883611.Spec : Prop :=
  ∀ n, P15639217034664883611.a n = A374702 n

theorem P15639217034664883611.correct : P15639217034664883611.Spec := by
  intro n
  simp only [A374702]

end A374702

/-! ## A374702.P15610090952067248305

`A000982(n)-A001840(n)`
-/

namespace A374702.P15610090952067248305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A001840 n

end

end A374702.P15610090952067248305

namespace A374702

/-- `A000982(n)-A001840(n)` -/
def P15610090952067248305.Spec : Prop :=
  ∀ n, P15610090952067248305.a n = A374702 n

end A374702

/-! ## A374702.P3444620466667740777

`A000212(n)-A004526(n)`
-/

namespace A374702.P3444620466667740777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n - A004526 n

end

end A374702.P3444620466667740777

namespace A374702

/-- `A000212(n)-A004526(n)` -/
def P3444620466667740777.Spec : Prop :=
  ∀ n, P3444620466667740777.a n = A374702 n

end A374702

/-! ## A374702.P10797642436615142278

`A014848(n)-A071619(n)`
-/

namespace A374702.P10797642436615142278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n - A071619 n

end

end A374702.P10797642436615142278

namespace A374702

/-- `A014848(n)-A071619(n)` -/
def P10797642436615142278.Spec : Prop :=
  ∀ n, P10797642436615142278.a n = A374702 n

end A374702

/-! ## A374702.P1746502912628930426

`A008810(n)-A105637(n)`
-/

namespace A374702.P1746502912628930426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n - A105637 n

end

end A374702.P1746502912628930426

namespace A374702

/-- `A008810(n)-A105637(n)` -/
def P1746502912628930426.Spec : Prop :=
  ∀ n, P1746502912628930426.a n = A374702 n

end A374702

/-! ## A374702.P1275315485453087918

`A236771(n)-A042948(n)`
-/

namespace A374702.P1275315485453087918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236771 n - A042948 n

end

end A374702.P1275315485453087918

namespace A374702

/-- `A236771(n)-A042948(n)` -/
def P1275315485453087918.Spec : Prop :=
  ∀ n, P1275315485453087918.a n = A374702 n

end A374702

/-! ## A374702.P10979942084028256132

`A256320(n)-A035608(n)`
-/

namespace A374702.P10979942084028256132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - A035608 n

end

end A374702.P10979942084028256132

namespace A374702

/-- `A256320(n)-A035608(n)` -/
def P10979942084028256132.Spec : Prop :=
  ∀ n, P10979942084028256132.a n = A374702 n

end A374702

/-! ## A374702.P20045876447663734

`A281333(n)-A109613(n)`
-/

namespace A374702.P20045876447663734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 n - A109613 n

end

end A374702.P20045876447663734

namespace A374702

/-- `A281333(n)-A109613(n)` -/
def P20045876447663734.Spec : Prop :=
  ∀ n, P20045876447663734.a n = A374702 n

end A374702

/-! ## A374702.P4301188257543768215

`A212964(n)-A349975(n)`
-/

namespace A374702.P4301188257543768215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n - A349975 n

end

end A374702.P4301188257543768215

namespace A374702

/-- `A212964(n)-A349975(n)` -/
def P4301188257543768215.Spec : Prop :=
  ∀ n, P4301188257543768215.a n = A374702 n

end A374702

/-! ## A374702.P10651387855464267283

`A389614(n)-A393677(n)`
-/

namespace A374702.P10651387855464267283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389614 n - A393677 n

end

end A374702.P10651387855464267283

namespace A374702

/-- `A389614(n)-A393677(n)` -/
def P10651387855464267283.Spec : Prop :=
  ∀ n, P10651387855464267283.a n = A374702 n

end A374702

/-! ## A374702.P12557197408093540928

`A397980(n)-A393678(n)`
-/

namespace A374702.P12557197408093540928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n - A393678 n

end

end A374702.P12557197408093540928

namespace A374702

/-- `A397980(n)-A393678(n)` -/
def P12557197408093540928.Spec : Prop :=
  ∀ n, P12557197408093540928.a n = A374702 n

end A374702

/-! ## A374702.P1972250369883665626

`∑[A004523(n)]-A004526(n)`
-/

namespace A374702.P1972250369883665626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 n

end

end A374702.P1972250369883665626

namespace A374702

/-- `∑[A004523(n)]-A004526(n)` -/
def P1972250369883665626.Spec : Prop :=
  ∀ n, P1972250369883665626.a n = A374702 n

end A374702

/-! ## A374702.P9639820983173951702

`A000212(n)+1-A008619(n)`
-/

namespace A374702.P9639820983173951702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + (1 - A008619 n)

end

end A374702.P9639820983173951702

namespace A374702

/-- `A000212(n)+1-A008619(n)` -/
def P9639820983173951702.Spec : Prop :=
  ∀ n, P9639820983173951702.a n = A374702 n

end A374702

/-! ## A374702.P18129849756333730042

`A007980(n)-A001651(n+1)`
-/

namespace A374702.P18129849756333730042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - A001651 (n + 1)

end

end A374702.P18129849756333730042

namespace A374702

/-- `A007980(n)-A001651(n+1)` -/
def P18129849756333730042.Spec : Prop :=
  ∀ n, P18129849756333730042.a n = A374702 n

end A374702

/-! ## A374702.P17711718599975701161

`A007980(n)-(A032766(n)+1)`
-/

namespace A374702.P17711718599975701161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - (A032766 n + 1)

end

end A374702.P17711718599975701161

namespace A374702

/-- `A007980(n)-(A032766(n)+1)` -/
def P17711718599975701161.Spec : Prop :=
  ∀ n, P17711718599975701161.a n = A374702 n

end A374702

/-! ## A374702.P13120861049546981692

`A238705(n+1)-A213398(n)`
-/

namespace A374702.P13120861049546981692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1) - A213398 n

end

end A374702.P13120861049546981692

namespace A374702

/-- `A238705(n+1)-A213398(n)` -/
def P13120861049546981692.Spec : Prop :=
  ∀ n, P13120861049546981692.a n = A374702 n

end A374702

/-! ## A374702.P10420548826271960415

`A238410(n+1)-A397975(n)`
-/

namespace A374702.P10420548826271960415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1) - A397975 n

end

end A374702.P10420548826271960415

namespace A374702

/-- `A238410(n+1)-A397975(n)` -/
def P10420548826271960415.Spec : Prop :=
  ∀ n, P10420548826271960415.a n = A374702 n

end A374702

/-! ## A374702.P17143712490205563181

`A007980(n)-(A008619(n)+n)`
-/

namespace A374702.P17143712490205563181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - (A008619 n + (n : ℤ))

end

end A374702.P17143712490205563181

namespace A374702

/-- `A007980(n)-(A008619(n)+n)` -/
def P17143712490205563181.Spec : Prop :=
  ∀ n, P17143712490205563181.a n = A374702 n

end A374702

/-! ## A374702.P6246787831080750092

`A000212(n)+n-A032766(n)`
-/

namespace A374702.P6246787831080750092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + ((n : ℤ) - A032766 n)

end

end A374702.P6246787831080750092

namespace A374702

/-- `A000212(n)+n-A032766(n)` -/
def P6246787831080750092.Spec : Prop :=
  ∀ n, P6246787831080750092.a n = A374702 n

end A374702

/-! ## A374702.P9748045823963272278

`A000212(n)+A110654(n)-n`
-/

namespace A374702.P9748045823963272278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + (A110654 n - (n : ℤ))

end

end A374702.P9748045823963272278

namespace A374702

/-- `A000212(n)+A110654(n)-n` -/
def P9748045823963272278.Spec : Prop :=
  ∀ n, P9748045823963272278.a n = A374702 n

end A374702

/-!
# A374704: Number of ways to choose an integer partition of each part of an integer composition of n (A055887) such that the minima are identical.

The programs for A374704, there is no canonical definition to state claims against.
-/

/-! ## A374704.P1491974639119970684

`A193832(A036650(n)*A046717(n))`
-/

namespace A374704.P1491974639119970684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A036650 n * A046717 n).toNat

end

end A374704.P1491974639119970684

/-! ## A374704.P15408952935898739090

`A078528(n+7)+A047988(A299415(n))`
-/

namespace A374704.P15408952935898739090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078528 (n + 7) + A047988 (A299415 n).toNat

end

end A374704.P15408952935898739090

/-! ## A374704.P84451623594564494

`A091247(A267175(n))+A078528(n+7)`
-/

namespace A374704.P84451623594564494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A267175 n).toNat + A078528 (n + 7)

end

end A374704.P84451623594564494

/-! ## A374704.P5624770963437929062

`A328585(A283877(n)%A128075(n+1))`
-/

namespace A374704.P5624770963437929062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (Int.tmod (A283877 n) (A128075 (n + 1))).toNat

end

end A374704.P5624770963437929062

/-!
# A374705: Number of integer compositions of n whose leaders of maximal strictly increasing runs sum to 2.

The programs for A374705, there is no canonical definition to state claims against.
-/

/-! ## A374705.P5937994580244010365

`A374700(∑[char[1]+1+n]-n)`
-/

namespace A374705.P5937994580244010365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374700 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A374705.P5937994580244010365

/-! ## A374705.P9219958526435939365

`A374700(A133263(n))%A104454(n)`
-/

namespace A374705.P9219958526435939365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374700 (A133263 n).toNat) (A104454 n)

end

end A374705.P9219958526435939365

/-! ## A374705.P18128991649613675480

`xor(A010673(2*(n+2)), A374700(A133263(n)))`
-/

namespace A374705.P18128991649613675480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 (2 * (n + 2))) (A374700 (A133263 n).toNat)

end

end A374705.P18128991649613675480

/-!
# A374706: Sum of minima of the maximal strictly increasing runs in the weakly increasing prime indices of n.

The programs for A374706, there is no canonical definition to state claims against.
-/

/-! ## A374706.P142657278867183172

`A380955(A285109(n+1))`
-/

namespace A374706.P142657278867183172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 (A285109 (n + 1)).toNat

end

end A374706.P142657278867183172

/-! ## A374706.P2957113268017543156

`A380955(n+1)+A055396(n+1)`
-/

namespace A374706.P2957113268017543156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 (n + 1) + A055396 (n + 1)

end

end A374706.P2957113268017543156

/-! ## A374706.P7742530105017852708

`A380955((n+1)*A020639(n+1))`
-/

namespace A374706.P7742530105017852708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 ((n + 1 : ℤ) * A020639 (n + 1)).toNat

end

end A374706.P7742530105017852708

/-! ## A374706.P17692357871146612693

`A380955(n+1)+A277697(∏{p}[n+1, #])`
-/

namespace A374706.P17692357871146612693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 (n + 1) + A277697 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A374706.P17692357871146612693

/-! ## A374706.P1609096278499605581

`A056239((n+1)/∏{p}[n+1, #])+A055396(n+1)`
-/

namespace A374706.P1609096278499605581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat + A055396 (n + 1)

end

end A374706.P1609096278499605581

/-! ## A374706.P6298517756994498311

`A056239((n+1)/∏{p}[n+1, #]*A020639(n+1))`
-/

namespace A374706.P6298517756994498311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A020639 (n + 1) : ℚ))).toNat

end

end A374706.P6298517756994498311

/-! ## A374706.P1049458402600145014

`A056239(A003557(n+1))+A055396(n+1)`
-/

namespace A374706.P1049458402600145014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A003557 (n + 1)).toNat + A055396 (n + 1)

end

end A374706.P1049458402600145014

/-! ## A374706.P13977163355526328239

`A380955(n+1)+A000720(A020639(n+1))`
-/

namespace A374706.P13977163355526328239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 (n + 1) + A000720 (A020639 (n + 1)).toNat

end

end A374706.P13977163355526328239

/-! ## A374706.P9592951748630960936

`A056239(n+1)-A066328(A028234(n+1))`
-/

namespace A374706.P9592951748630960936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A066328 (A028234 (n + 1)).toNat

end

end A374706.P9592951748630960936

/-!
# A374707: Number of distinct sums i^3 + j^3 for 0<=i<=j<=n.

The programs for A374707, there is no canonical definition to state claims against.
-/

/-! ## A374707.P8420954764589374962

`∑[A369963(A000043(n+1))%2+n]`
-/

namespace A374707.P8420954764589374962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369963 (A000043 (n + 1)).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374707.P8420954764589374962

/-! ## A374707.P5653857085750515110

`∑[A287417(C(A051137(n), 3))+n]`
-/

namespace A374707.P5653857085750515110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (Nat.choose (A051137 n).toNat 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374707.P5653857085750515110

/-! ## A374707.P16914790835405570602

`∑[A001221(A293214(2*n+1)+1)%2+n]`
-/

namespace A374707.P16914790835405570602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (A293214 (2 * n + 1) + 1).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374707.P16914790835405570602

/-! ## A374707.P3966651094044454839

`∑[A287769(A365731(n)+1)+n]`
-/

namespace A374707.P3966651094044454839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (A365731 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374707.P3966651094044454839

/-! ## A374707.P10411564008362202848

`∑[A094954(A036554(n+1))%2+n]`
-/

namespace A374707.P10411564008362202848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094954 (A036554 (n + 1)).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374707.P10411564008362202848

/-!
# A374709: a(n) = n*(6*n^4 + 8*n^3 + 1 - (-1)^n)/16.

The programs for A374709, the canonical program `A374709.P11449870126856442390` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374709 has offset 0).

The definition of A374709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374709.P11449870126856442390

`n*(6*n^4+8*n^3+1-(-1)^n)/16`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374709

/-- `n*(6*n^4+8*n^3+1-(-1)^n)/16` -/
def P11449870126856442390.Spec : Prop :=
  ∀ n, P11449870126856442390.a n = (A374709 n : ℚ)

end A374709

/-!
# A374710: Number of distinct sums i^3 + j^3 + k^3 for 0<=i<=j<=k<=n.

The programs for A374710, there is no canonical definition to state claims against.
-/

/-! ## A374710.P8191956672370115259

`A002024(A341070(n))`
-/

namespace A374710.P8191956672370115259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A341070 (n + 10)).toNat

end

end A374710.P8191956672370115259

/-! ## A374710.P962592316775013764

`∑[∑[A046823(A219947(n))]]`
-/

namespace A374710.P962592316775013764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (A219947 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374710.P962592316775013764

/-! ## A374710.P5790666725836435964

`A103128(A341070(n)+n²)`
-/

namespace A374710.P5790666725836435964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A341070 (n + 10) + (n ^ 2 : ℤ)).toNat

end

end A374710.P5790666725836435964

/-! ## A374710.P287875638263429058

`A003056(A341070(n)-1)+1`
-/

namespace A374710.P287875638263429058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A341070 (n + 10) - 1).toNat + 1

end

end A374710.P287875638263429058

/-!
# A374711: Number of distinct sums i^3 + j^3 + k^3 + l^3 for 0<=i<=j<=k<=l<=n.

The programs for A374711, there is no canonical definition to state claims against.
-/

/-! ## A374711.P4319604608890500794

`xor(A005894(n), A279210(A319209(n+1)))`
-/

namespace A374711.P4319604608890500794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005894 n) (A279210 (A319209 (n + 1)).toNat)

end

end A374711.P4319604608890500794

/-! ## A374711.P16579593888896004555

`∑[A378266(3*(n+1))]`
-/

namespace A374711.P16579593888896004555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378266 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374711.P16579593888896004555

/-!
# A374713: Number of distinct sums i^3 + j^3 + k^3 for 1<=i<=j<=k<=n.

The programs for A374713, there is no canonical definition to state claims against.
-/

/-! ## A374713.P17631387549797684398

`∑[∑[A244580(A007434(n+1))]]`
-/

namespace A374713.P17631387549797684398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244580 (A007434 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374713.P17631387549797684398

/-! ## A374713.P16827766444025210381

`∑[∑[A191228(A315893(2*n+1))]]`
-/

namespace A374713.P16827766444025210381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A315893 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374713.P16827766444025210381

/-! ## A374713.P6125949570544813786

`A026035(n+2)-A084558(A247680(n))`
-/

namespace A374713.P6125949570544813786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026035 (n + 2) - A084558 (A247680 n).toNat

end

end A374713.P6125949570544813786

/-! ## A374713.P4055040534182595247

`∑[∑[n+1]]-A266441(A213093(n))`
-/

namespace A374713.P4055040534182595247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A266441 (A213093 n).toNat

end

end A374713.P4055040534182595247

/-! ## A374713.P10760841071849874133

`A000292(n+1)-A333382(A166297(n))`
-/

namespace A374713.P10760841071849874133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A333382 (A166297 n).toNat

end

end A374713.P10760841071849874133

/-!
# A374714: Number of distinct sums i^3 + j^3 + k^3 + l^3 for 1<=i<=j<=k<=l<=n.

The programs for A374714, there is no canonical definition to state claims against.
-/

/-! ## A374714.P8864725104324068146

`A342213(n+4)-A130520(A007091(n))`
-/

namespace A374714.P8864725104324068146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342213 (n + 4) - A130520 (A007091 n).toNat

end

end A374714.P8864725104324068146

/-! ## A374714.P9249647035527170672

`A317717(∑[4*n]+1)`
-/

namespace A374714.P9249647035527170672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A374714.P9249647035527170672

/-!
# A374721: Number of nonisomorphic spanning trees of the triangular snake graph nC_3.

The programs for A374721, the canonical program `A374721.P8786458338222523466` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374721 has offset 1).

The definition of A374721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374721.P8786458338222523466

`2*3^(n-1)+3^floor((n-1)/2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374721

/-- `2*3^(n-1)+3^floor((n-1)/2)` -/
def P8786458338222523466.Spec : Prop :=
  ∀ n, P8786458338222523466.a n = (A374721 (n + 1) : ℚ)

end A374721

/-! ## A374721.P3195031136615605107

`ogf((1-5x^2)/(1-3x-3x^2+9x^3))`
-/

namespace A374721.P3195031136615605107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -5] [1, -3, -3, 9] n

end

end A374721.P3195031136615605107

namespace A374721

/-- `ogf((1-5x^2)/(1-3x-3x^2+9x^3))` -/
def P3195031136615605107.Spec : Prop :=
  ∀ n, P3195031136615605107.a n = A374721 (n + 1)

end A374721

/-! ## A374721.P10099100532081840033

`Δ[A254006(n)+A122007(n+1)]`
-/

namespace A374721.P10099100532081840033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A122007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A374721.P10099100532081840033

namespace A374721

/-- `Δ[A254006(n)+A122007(n+1)]` -/
def P10099100532081840033.Spec : Prop :=
  ∀ n, P10099100532081840033.a n = A374721 (n + 1)

end A374721

/-! ## A374721.P5441360085067372221

`Δ[A122006(n+1)+Δ[A038754(n)]]`
-/

namespace A374721.P5441360085067372221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A374721.P5441360085067372221

namespace A374721

/-- `Δ[A122006(n+1)+Δ[A038754(n)]]` -/
def P5441360085067372221.Spec : Prop :=
  ∀ n, P5441360085067372221.a n = A374721 (n + 1)

end A374721

/-! ## A374721.P2134761561172363424

`A279912(A038754(n))`
-/

namespace A374721.P2134761561172363424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279912 (A038754 n).toNat

end

end A374721.P2134761561172363424

namespace A374721

/-- `A279912(A038754(n))` -/
def P2134761561172363424.Spec : Prop :=
  ∀ n, P2134761561172363424.a n = A374721 (n + 1)

end A374721

/-!
# A374722: Number of nonisomorphic spanning trees of the nC_5-snake graph with constant distance between cutpoints.

The programs for A374722, there is no canonical definition to state claims against.
-/

/-! ## A374722.P4272029844273291395

`A301646(A066186(n+1))`
-/

namespace A374722.P4272029844273291395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301646 (A066186 (n + 1)).toNat

end

end A374722.P4272029844273291395

/-!
# A374728: Number of n-color gap-free compositions of n.

The programs for A374728, there is no canonical definition to state claims against.
-/

/-! ## A374728.P10338076614561085863

`A157966(A084637(n))`
-/

namespace A374728.P10338076614561085863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A084637 n).toNat

end

end A374728.P10338076614561085863

/-! ## A374728.P1009135328938625416

`A364882(A102881(n))`
-/

namespace A374728.P1009135328938625416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364882 (A102881 n).toNat

end

end A374728.P1009135328938625416

/-! ## A374728.P2117836260672992076

`A157966(A367652(n))`
-/

namespace A374728.P2117836260672992076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A367652 n).toNat

end

end A374728.P2117836260672992076

/-! ## A374728.P2139723657684832800

`A358062(A218575(n))`
-/

namespace A374728.P2139723657684832800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358062 (A218575 n).toNat

end

end A374728.P2139723657684832800

/-!
# A374729: Number of tilings using squares, dominos, and flexible trominos of a strip of length n-1 and with an n-th cell placed on top of the middle of the strip.

The programs for A374729, there is no canonical definition to state claims against.
-/

/-! ## A374729.P13682991528416533443

`A378048(A361721(n))`
-/

namespace A374729.P13682991528416533443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378048 (A361721 n).toNat

end

end A374729.P13682991528416533443

/-! ## A374729.P17491919832751698660

`A191932(A156145(n+1))`
-/

namespace A374729.P17491919832751698660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (A156145 (n + 1)).toNat

end

end A374729.P17491919832751698660

/-! ## A374729.P9361830581247471520

`A340134(A148563(n+1))`
-/

namespace A374729.P9361830581247471520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340134 (A148563 (n + 1)).toNat

end

end A374729.P9361830581247471520

/-! ## A374729.P15682746057853198300

`A378048(A173597(n+1))`
-/

namespace A374729.P15682746057853198300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378048 (A173597 (n + 1)).toNat

end

end A374729.P15682746057853198300

/-! ## A374729.P11503530016661107500

`A191932(∑[A239880(2*n+1)])`
-/

namespace A374729.P11503530016661107500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A374729.P11503530016661107500

/-!
# A374730: a(n) = n * binomial(floor(log_2(n)) + 1, 2).

The programs for A374730, the canonical program `A374730.P15477775403620783569` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374730 has offset 0).

The definition of A374730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374730.P15477775403620783569

`n*C(A070939(n), 2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374730

/-- `n*C(A070939(n), 2)` -/
def P15477775403620783569.Spec : Prop :=
  ∀ n, (P15477775403620783569.a n : ℤ) = A374730 n

theorem P15477775403620783569.correct : P15477775403620783569.Spec := by
  intro n
  simp only [A374730]

end A374730

/-! ## A374730.P5014005836925111408

`n*∑[A182660(2*n)]`
-/

namespace A374730.P5014005836925111408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182660 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374730.P5014005836925111408

namespace A374730

/-- `n*∑[A182660(2*n)]` -/
def P5014005836925111408.Spec : Prop :=
  ∀ n, P5014005836925111408.a n = A374730 n

end A374730

/-! ## A374730.P2341276406104077314

`n*C(A029837(n+1), 2)`
-/

namespace A374730.P2341276406104077314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A029837 (n + 1)).toNat 2

end

end A374730.P2341276406104077314

namespace A374730

/-- `n*C(A029837(n+1), 2)` -/
def P2341276406104077314.Spec : Prop :=
  ∀ n, (P2341276406104077314.a n : ℤ) = A374730 n

end A374730

/-! ## A374730.P1716144620821827346

`n*A161680(A070939(n))`
-/

namespace A374730.P1716144620821827346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A161680 (A070939 n).toNat

end

end A374730.P1716144620821827346

namespace A374730

/-- `n*A161680(A070939(n))` -/
def P1716144620821827346.Spec : Prop :=
  ∀ n, P1716144620821827346.a n = A374730 n

theorem P1716144620821827346.correct : P1716144620821827346.Spec := by
  intro n
  simp only [A374730, Nat.add_sub_cancel, A374730.P1716144620821827346.a, A374730.P15477775403620783569.a, A070939, A070939.P14677302147902843740.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A374730

/-! ## A374730.P17867892756926482039

`n*(A359400(n)+A124757(n))`
-/

namespace A374730.P17867892756926482039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A359400 n + A124757 n)

end

end A374730.P17867892756926482039

namespace A374730

/-- `n*(A359400(n)+A124757(n))` -/
def P17867892756926482039.Spec : Prop :=
  ∀ n, P17867892756926482039.a n = A374730 n

end A374730

/-! ## A374730.P16036733866187590469

`n*A073642(A003817(n))`
-/

namespace A374730.P16036733866187590469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073642 (A003817 n).toNat

end

end A374730.P16036733866187590469

namespace A374730

/-- `n*A073642(A003817(n))` -/
def P16036733866187590469.Spec : Prop :=
  ∀ n, P16036733866187590469.a n = A374730 n

end A374730

/-!
# A374735: a(n) is the least k > 0 such that n and k*n can be added without carries in decimal.

The programs for A374735, there is no canonical definition to state claims against.
-/

/-! ## A374735.P8514655253622971680

`A374736(A028310(n))/A028310(n)`
-/

namespace A374735.P8514655253622971680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374736 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A374735.P8514655253622971680

/-! ## A374735.P8244339069009188739

`A004277(A374736(n))/A004277(n)`
-/

namespace A374735.P8244339069009188739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A374736 n).toNat : ℚ) / (A004277 n : ℚ)

end

end A374735.P8244339069009188739

/-! ## A374735.P17928813195899447612

`A008458(A374736(n))/A008458(n)`
-/

namespace A374735.P17928813195899447612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A374736 n).toNat : ℚ) / (A008458 n : ℚ)

end

end A374735.P17928813195899447612

/-!
# A374736: a(n) is the least number of the form k*n for some k > 0 that can be added to n without carries in decimal.

The programs for A374736, there is no canonical definition to state claims against.
-/

/-! ## A374736.P15219497750203407388

`A374735(n)*n`
-/

namespace A374736.P15219497750203407388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374735 n * (n : ℤ)

end

end A374736.P15219497750203407388

/-! ## A374736.P9333515859005216477

`n*A134332(A007021(n+3))`
-/

namespace A374736.P9333515859005216477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134332 (A007021 (n + 3)).toNat

end

end A374736.P9333515859005216477

/-! ## A374736.P6819793560162979863

`A298486(A348811(n)+A046092(n))`
-/

namespace A374736.P6819793560162979863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298486 (A348811 n + A046092 n).toNat

end

end A374736.P6819793560162979863

/-! ## A374736.P15590223867581063698

`A326823(A000079(n))*A360299(n+1)`
-/

namespace A374736.P15590223867581063698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326823 (A000079 n).toNat * A360299 (n + 1)

end

end A374736.P15590223867581063698

/-! ## A374736.P12508700057474886814

`n*A032548(3^(n+1))`
-/

namespace A374736.P12508700057474886814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032548 (3 ^ (n + 1))

end

end A374736.P12508700057474886814

/-!
# A374737: Number of subsets of {1,2,...,n} such that no two elements differ by 1 or 5.

The programs for A374737, there is no canonical definition to state claims against.
-/

/-! ## A374737.P17566961730457664604

`A137735(A127985(n+1))`
-/

namespace A374737.P17566961730457664604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A127985 (n + 1)).toNat

end

end A374737.P17566961730457664604

/-! ## A374737.P5161202933464403321

`A351061(A226917(n+2))`
-/

namespace A374737.P5161202933464403321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351061 (A226917 (n + 2)).toNat

end

end A374737.P5161202933464403321

/-! ## A374737.P12896129362446575980

`A056924(n+1)+A000196(A033844(n))`
-/

namespace A374737.P12896129362446575980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) + A000196 (A033844 n).toNat

end

end A374737.P12896129362446575980

/-! ## A374737.P6702286315586131409

`A229300(A175539(n+1))`
-/

namespace A374737.P6702286315586131409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A175539 (n + 1)).toNat

end

end A374737.P6702286315586131409

/-! ## A374737.P8530498386592292149

`A374519(A303667(n+1))`
-/

namespace A374737.P8530498386592292149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374519 (A303667 (n + 1)).toNat

end

end A374737.P8530498386592292149

/-!
# A374738: Table read by ascending antidiagonals: T(m,n) = number of (n-1)-metered (m,n)-parking functions.

The programs for A374738, there is no canonical definition to state claims against.
-/

/-! ## A374738.P11191234557234870817

`A002858(A057145(n+2))%A173353(n+1)`
-/

namespace A374738.P11191234557234870817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (A057145 (n + 2)).toNat) (A173353 (n + 1))

end

end A374738.P11191234557234870817

/-! ## A374738.P3820559096757645643

`A003586(A373169(n+2)%A137390(n+1))`
-/

namespace A374738.P3820559096757645643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (Int.tmod (A373169 (n + 2)) (A137390 (n + 1))).toNat

end

end A374738.P3820559096757645643

/-! ## A374738.P978794366331922922

`A003586(A373169(n+2))%A147790(3*n+1)`
-/

namespace A374738.P978794366331922922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003586 (A373169 (n + 2)).toNat) (A147790 (3 * n + 1))

end

end A374738.P978794366331922922

/-! ## A374738.P18394909655388921728

`A002858((A004247(n)+A139600(n)+1)%A387761(3*n+5))`
-/

namespace A374738.P18394909655388921728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (Int.tmod (A004247 n + (A139600 n + 1)) (A387761 (3 * n + 5))).toNat

end

end A374738.P18394909655388921728

/-! ## A374738.P13006882208358007164

`A002858((A086271(n+1)-A112367(n))%A387761(3*n+5))`
-/

namespace A374738.P13006882208358007164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (Int.tmod (A086271 (n + 1) - A112367 n) (A387761 (3 * n + 5))).toNat

end

end A374738.P13006882208358007164

/-!
# A374740: Irregular triangle read by rows where row n lists the leaders of weakly decreasing runs in the n-th composition in standard order.

The programs for A374740, there is no canonical definition to state claims against.
-/

/-! ## A374740.P14504172344138463046

`A374251(lt[A246142(n+1), A000002(n+1)])`
-/

namespace A374740.P14504172344138463046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374740.P14504172344138463046

/-! ## A374740.P13436144612547790233

`A374757(lt[A027907(3*n+1), A273903(3*n+5)])`
-/

namespace A374740.P13436144612547790233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273903 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374757 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374740.P13436144612547790233

/-! ## A374740.P1166648413905262502

`A001222(A318369(3*n+1)+A292265(n))`
-/

namespace A374740.P1166648413905262502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318369 (3 * n + 1) + A292265 n).toNat

end

end A374740.P1166648413905262502

/-! ## A374740.P222258635220210295

`A066099(lt[A120617(n), A136733(2*(n+1))])`
-/

namespace A374740.P222258635220210295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136733 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374740.P222258635220210295

/-! ## A374740.P12386844971269287310

`A089209(A118767(n+2))`
-/

namespace A374740.P12386844971269287310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089209 (A118767 (n + 2)).toNat

end

end A374740.P12386844971269287310

/-!
# A374741: Sum of leaders of weakly decreasing runs in the n-th composition in standard order.

The programs for A374741, there is no canonical definition to state claims against.
-/

/-! ## A374741.P14931388631929205005

`A374758(n)-A373954(n)`
-/

namespace A374741.P14931388631929205005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n - A373954 n

end

end A374741.P14931388631929205005

/-! ## A374741.P17458047792766272998

`A374758(n)-(A374684(n)-A374630(n))`
-/

namespace A374741.P17458047792766272998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n - (A374684 n - A374630 n)

end

end A374741.P17458047792766272998

/-! ## A374741.P17977312389563882321

`A374758(n)-(A374516(n)-val(A057335(n), 2))`
-/

namespace A374741.P17977312389563882321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n - (A374516 n - (SequenceMachineLib.valuation (A057335 n).toNat 2 : ℤ))

end

end A374741.P17977312389563882321

/-! ## A374741.P14351889117784730904

`A374758(n)-A374249(A070939(2*n)-A373953(n))`
-/

namespace A374741.P14351889117784730904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n - A374249 (A070939 (2 * n) - A373953 n).toNat

end

end A374741.P14351889117784730904

/-! ## A374741.P3374079260383868739

`A029837(A375124(n)+1)`
-/

namespace A374741.P3374079260383868739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A375124 n + 1).toNat

end

end A374741.P3374079260383868739

/-! ## A374741.P16389279137007786405

`A070939(A375124(n))-A000007(n)`
-/

namespace A374741.P16389279137007786405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A375124 n).toNat - A000007 n

end

end A374741.P16389279137007786405

/-! ## A374741.P7028913448891476309

`A070939(A375124(n))%A008000(n)`
-/

namespace A374741.P7028913448891476309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A375124 n).toNat) (A008000 n)

end

end A374741.P7028913448891476309

/-! ## A374741.P11626133249746005968

`A070939(A375124(n))-char[A327450(2*(n+2))]`
-/

namespace A374741.P11626133249746005968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327450 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A375124 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374741.P11626133249746005968

/-! ## A374741.P13931437354652855331

`A070939(A375124(n))-char[A327449(3*n+2)]`
-/

namespace A374741.P13931437354652855331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327449 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A375124 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374741.P13931437354652855331

/-! ## A374741.P9236984722090603597

`A070939(A375124(n))-char[A158118(3*n+5)]`
-/

namespace A374741.P9236984722090603597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158118 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A375124 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374741.P9236984722090603597

/-!
# A374742: Number of integer compositions of n whose leaders of weakly decreasing runs are identical.

The programs for A374742, there is no canonical definition to state claims against.
-/

/-! ## A374742.P3627124741813586830

`A005041(A339156(n+2))`
-/

namespace A374742.P3627124741813586830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A339156 (n + 2)).toNat

end

end A374742.P3627124741813586830

/-! ## A374742.P16828572113193144835

`A103128(A193649(n))`
-/

namespace A374742.P16828572113193144835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A193649 n).toNat

end

end A374742.P16828572113193144835

/-! ## A374742.P9664226824517942206

`A055086(A191693(n+1))`
-/

namespace A374742.P9664226824517942206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A191693 (n + 1)).toNat

end

end A374742.P9664226824517942206

/-! ## A374742.P2606930436157546583

`A071860(A335562(n+2))`
-/

namespace A374742.P2606930436157546583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A335562 (n + 2)).toNat

end

end A374742.P2606930436157546583

/-! ## A374742.P6856705729307837048

`A003056(A193649(n)+A000041(n))`
-/

namespace A374742.P6856705729307837048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A193649 n + A000041 n).toNat

end

end A374742.P6856705729307837048

/-!
# A374743: Number of integer compositions of n whose leaders of weakly decreasing runs are distinct.

The programs for A374743, there is no canonical definition to state claims against.
-/

/-! ## A374743.P16248642811248515618

`A055086(A088327(n)-A050232(n+1))`
-/

namespace A374743.P16248642811248515618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A088327 n - A050232 (n + 1)).toNat

end

end A374743.P16248642811248515618

/-! ## A374743.P7254822602565538162

`A224959(C(3*n, C(10, n))+n)`
-/

namespace A374743.P7254822602565538162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224959 (Nat.choose (3 * n) (Nat.choose 10 n) + n)

end

end A374743.P7254822602565538162

/-! ## A374743.P12613528060910169370

`A006670(A047012(n))`
-/

namespace A374743.P12613528060910169370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A047012 n).toNat

end

end A374743.P12613528060910169370

/-! ## A374743.P10526415441422528152

`A100617(A005566(n))`
-/

namespace A374743.P10526415441422528152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A005566 n).toNat

end

end A374743.P10526415441422528152

/-! ## A374743.P5789114844014386337

`A006670(A128082(n))`
-/

namespace A374743.P5789114844014386337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A128082 n).toNat

end

end A374743.P5789114844014386337

/-!
# A374744: Numbers k such that the leaders of weakly decreasing runs in the k-th composition in standard order (A066099) are identical.

The programs for A374744, there is no canonical definition to state claims against.
-/

/-! ## A374744.P3022211421403718432

`eq[A124766(A375123(n)), A351014(n)]`
-/

namespace A374744.P3022211421403718432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A375123 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374744.P3022211421403718432

/-! ## A374744.P2766725107093137315

`eq[A334028(n), A334028(A375123(n))]`
-/

namespace A374744.P2766725107093137315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A375123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374744.P2766725107093137315

/-! ## A374744.P14454486014436888628

`eq[0, A333382(A375124(n))]`
-/

namespace A374744.P14454486014436888628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374744.P14454486014436888628

/-! ## A374744.P4051901359564871704

`eq[A124760(n), A124762(A375124(n))]`
-/

namespace A374744.P4051901359564871704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374744.P4051901359564871704

/-! ## A374744.P3985581894375337348

`eq[A124765(n), A333381(A375124(n))]`
-/

namespace A374744.P3985581894375337348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A375124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374744.P3985581894375337348

/-!
# A374745: Number of unlabeled (3,6)-tight graphs with n vertices.

The programs for A374745, there is no canonical definition to state claims against.
-/

/-! ## A374745.P5934509988652350607

`A102465(A006452(n))`
-/

namespace A374745.P5934509988652350607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102465 (A006452 n).toNat

end

end A374745.P5934509988652350607

/-! ## A374745.P669450218037709718

`A023055(A293510(n))`
-/

namespace A374745.P669450218037709718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023055 (A293510 n).toNat

end

end A374745.P669450218037709718

/-!
# A374746: Number of integer compositions of n whose leaders of weakly decreasing runs are strictly decreasing.

The programs for A374746, there is no canonical definition to state claims against.
-/

/-! ## A374746.P9896595690626363558

`A319769(n)+A218470(A064173(n+1))`
-/

namespace A374746.P9896595690626363558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319769 n + A218470 (A064173 (n + 1)).toNat

end

end A374746.P9896595690626363558

/-! ## A374746.P2519331668529090870

`A003056(A006647(n+4))-A144553(n+1)`
-/

namespace A374746.P2519331668529090870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A006647 (n + 4)).toNat - A144553 (n + 1)

end

end A374746.P2519331668529090870

/-! ## A374746.P12558034717652607902

`A002024(A373749(3*n)+A320177(n+1))`
-/

namespace A374746.P12558034717652607902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A373749 (3 * n) + A320177 (n + 1)).toNat

end

end A374746.P12558034717652607902

/-! ## A374746.P4340331904319138464

`A251719(A123611(n))`
-/

namespace A374746.P4340331904319138464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (A123611 n).toNat

end

end A374746.P4340331904319138464

/-! ## A374746.P18100246918962305761

`A245636(A065178(n+1))`
-/

namespace A374746.P18100246918962305761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A065178 (n + 1)).toNat

end

end A374746.P18100246918962305761

/-!
# A374747: Number of integer compositions of n whose leaders of weakly decreasing runs are themselves weakly decreasing.

The programs for A374747, there is no canonical definition to state claims against.
-/

/-! ## A374747.P10402015721830547110

`A100795(A148289(n))`
-/

namespace A374747.P10402015721830547110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A148289 n).toNat

end

end A374747.P10402015721830547110

/-! ## A374747.P99242168228504323

`A100795(A148290(n))`
-/

namespace A374747.P99242168228504323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A148290 n).toNat

end

end A374747.P99242168228504323

/-! ## A374747.P13149295984519129251

`A074198(A390135(n))`
-/

namespace A374747.P13149295984519129251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A390135 n).toNat

end

end A374747.P13149295984519129251

/-! ## A374747.P13087640732468549880

`A103128(A148289(n)+1)`
-/

namespace A374747.P13087640732468549880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A148289 n + 1).toNat

end

end A374747.P13087640732468549880

/-! ## A374747.P17143307243883723647

`A194287(A339294(n+2))`
-/

namespace A374747.P17143307243883723647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A339294 (n + 2)).toNat

end

end A374747.P17143307243883723647

/-!
# A374748: Triangle read by rows where T(n,k) is the number of integer compositions of n whose leaders of weakly decreasing runs sum to k.

The programs for A374748, there is no canonical definition to state claims against.
-/

/-! ## A374748.P3562975270830614613

`A294204(A293961(n)+1)-A151755(A293961(n))`
-/

namespace A374748.P3562975270830614613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294204 (A293961 n + 1).toNat - A151755 (A293961 n).toNat

end

end A374748.P3562975270830614613

/-! ## A374748.P2855356863888157550

`A178487(A318602(n+1)^3)-A086016(A000009(n))`
-/

namespace A374748.P2855356863888157550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A318602 (n + 1) ^ 3).toNat - A086016 (A000009 n).toNat

end

end A374748.P2855356863888157550

/-! ## A374748.P956349335956165070

`A178487(A318602(n+1)^3)-A001883(A001227(n+1))`
-/

namespace A374748.P956349335956165070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A318602 (n + 1) ^ 3).toNat - A001883 (A001227 (n + 1)).toNat

end

end A374748.P956349335956165070

/-! ## A374748.P15018419347204213933

`A126387(A340556(n))`
-/

namespace A374748.P15018419347204213933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A340556 n).toNat

end

end A374748.P15018419347204213933

/-! ## A374748.P17603466011546038024

`A124768(A390723(n))`
-/

namespace A374748.P17603466011546038024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A390723 n).toNat

end

end A374748.P17603466011546038024

/-!
# A374749: Number of zygodrome numbers in base-10 (A033023) with n or fewer digits.

The programs for A374749, the canonical program `A374749.P9126795584612520576` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374749 has offset 1).

The definition of A374749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374749.P9126795584612520576

`A015445(n+1)-1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374749

/-- `A015445(n+1)-1` -/
def P9126795584612520576.Spec : Prop :=
  ∀ n, P9126795584612520576.a n = A374749 (n + 1)

theorem P9126795584612520576.correct : P9126795584612520576.Spec := by
  intro n
  simp only [A374749, Nat.add_sub_cancel]

end A374749

/-! ## A374749.P65571953086381417

`ogf(9x/(1-2x-8x^2+9x^3))`
-/

namespace A374749.P65571953086381417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -2, -8, 9] n

end

end A374749.P65571953086381417

namespace A374749

/-- `ogf(9x/(1-2x-8x^2+9x^3))` -/
def P65571953086381417.Spec : Prop :=
  ∀ n, P65571953086381417.a n = A374749 (n + 1)

end A374749

/-! ## A374749.P14663074317587045148

`∑[a(n-1)+9*a(n-2)]` with `a(0)=0, a(1)=9`
-/

namespace A374749.P14663074317587045148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 9 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374749.P14663074317587045148

namespace A374749

/-- `∑[a(n-1)+9*a(n-2)]` -/
def P14663074317587045148.Spec : Prop :=
  ∀ n, (P14663074317587045148.a n : ℤ) = A374749 (n + 1)

end A374749

/-! ## A374749.P7581714674635276824

`∑[abs(Δ[A015445(n)])]`
-/

namespace A374749.P7581714674635276824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374749.P7581714674635276824

namespace A374749

/-- `∑[abs(Δ[A015445(n)])]` -/
def P7581714674635276824.Spec : Prop :=
  ∀ n, P7581714674635276824.a n = A374749 (n + 1)

end A374749

/-! ## A374749.P5687225679957901410

`A057428(n+1)+A015445(n+1)`
-/

namespace A374749.P5687225679957901410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A015445 (n + 1)

end

end A374749.P5687225679957901410

namespace A374749

/-- `A057428(n+1)+A015445(n+1)` -/
def P5687225679957901410.Spec : Prop :=
  ∀ n, P5687225679957901410.a n = A374749 (n + 1)

theorem P5687225679957901410.correct : P5687225679957901410.Spec := by
  intro n
  simp only [A374749, Nat.add_sub_cancel, A374749.P5687225679957901410.a, A374749.P9126795584612520576.a, A015445, A015445.P17561431580129353232.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374749

/-!
# A374756: Triangle read by rows: T(n,k) is the number of parking functions of order n where the k-th car is lucky.

The programs for A374756, there is no canonical definition to state claims against.
-/

/-! ## A374756.P10910583746239409731

`A055864(n+1)-A295875(A000351(n))`
-/

namespace A374756.P10910583746239409731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055864 (n + 1) - A295875 (A000351 n).toNat

end

end A374756.P10910583746239409731

/-! ## A374756.P16699278834600398231

`A055864(n+1)-A169672(A319155(n))`
-/

namespace A374756.P16699278834600398231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055864 (n + 1) - A169672 (A319155 n).toNat

end

end A374756.P16699278834600398231

/-! ## A374756.P47115024471195952

`A055864(n+1)-A307598(A225467(n))`
-/

namespace A374756.P47115024471195952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055864 (n + 1) - A307598 (A225467 n).toNat

end

end A374756.P47115024471195952

/-!
# A374757: Irregular triangle read by rows where row n lists the leaders of strictly decreasing runs in the n-th composition in standard order.

The programs for A374757, there is no canonical definition to state claims against.
-/

/-! ## A374757.P3455353975462701642

`A066099(lt[A357630(3*(n+1)), 1])`
-/

namespace A374757.P3455353975462701642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357630 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A374757.P3455353975462701642

/-! ## A374757.P12872455913470721671

`A374515(A187338(n+2))`
-/

namespace A374757.P12872455913470721671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A187338 (n + 2)).toNat

end

end A374757.P12872455913470721671

/-! ## A374757.P279018339741736740

`A374515(A190368(n+2))`
-/

namespace A374757.P279018339741736740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A190368 (n + 2)).toNat

end

end A374757.P279018339741736740

/-! ## A374757.P10226219955788330388

`A374515(A207673(n+2))`
-/

namespace A374757.P10226219955788330388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A207673 (n + 2)).toNat

end

end A374757.P10226219955788330388

/-! ## A374757.P13512077079448493989

`A374515(A247128(n+2))`
-/

namespace A374757.P13512077079448493989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A247128 (n + 2)).toNat

end

end A374757.P13512077079448493989

/-!
# A374758: Sum of leaders of strictly decreasing runs in the n-th composition in standard order.

The programs for A374758, there is no canonical definition to state claims against.
-/

/-! ## A374758.P12711053739260623905

`A374741(n)+A373954(n)`
-/

namespace A374758.P12711053739260623905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 n + A373954 n

end

end A374758.P12711053739260623905

/-! ## A374758.P18131360705836643002

`A374516(n)+A374741(n)-A065120(n)`
-/

namespace A374758.P18131360705836643002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 n + (A374741 n - A065120 n)

end

end A374758.P18131360705836643002

/-! ## A374758.P8409538508879432743

`A374741(n)+A374684(n)-A374630(n)`
-/

namespace A374758.P8409538508879432743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 n + (A374684 n - A374630 n)

end

end A374758.P8409538508879432743

/-! ## A374758.P11772529352778798718

`A374741(n)+A029837(n+1)-A373953(n)`
-/

namespace A374758.P11772529352778798718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 n + (A029837 (n + 1) - A373953 n)

end

end A374758.P11772529352778798718

/-! ## A374758.P9065056780422991047

`A374741(n)+A374516(n)-A090996(A334727(n))`
-/

namespace A374758.P9065056780422991047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 n + (A374516 n - A090996 (A334727 n).toNat)

end

end A374758.P9065056780422991047

/-! ## A374758.P18088523596886165466

`A374741(n)+A374249(A070939(2*n)-A373953(n))`
-/

namespace A374758.P18088523596886165466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 n + A374249 (A070939 (2 * n) - A373953 n).toNat

end

end A374758.P18088523596886165466

/-! ## A374758.P3434812334238034418

`A373954(n)+A029837(A375124(n)+1)`
-/

namespace A374758.P3434812334238034418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + A029837 (A375124 n + 1).toNat

end

end A374758.P3434812334238034418

/-! ## A374758.P1316457111369445331

`A029837(A375126(n)+1)`
-/

namespace A374758.P1316457111369445331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A375126 n + 1).toNat

end

end A374758.P1316457111369445331

/-! ## A374758.P13300319664161787879

`A070939(A375126(n)%(n+1))%(n+1)`
-/

namespace A374758.P13300319664161787879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (Int.tmod (A375126 n) (n + 1 : ℤ)).toNat) (n + 1 : ℤ)

end

end A374758.P13300319664161787879

/-! ## A374758.P8859179498049387993

`A070939(A375126(n))%A001311(n)`
-/

namespace A374758.P8859179498049387993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A375126 n).toNat) (A001311 n)

end

end A374758.P8859179498049387993

/-!
# A374759: Numbers k such that the leaders of strictly decreasing runs in the k-th composition in standard order are identical.

The programs for A374759, there is no canonical definition to state claims against.
-/

/-! ## A374759.P12774463951300426810

`∩[A374519(n+1), A374744(n+1)]`
-/

namespace A374759.P12774463951300426810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374759.P12774463951300426810

/-! ## A374759.P8492620003995086717

`lt[A333382(A375126(n)), 1]`
-/

namespace A374759.P8492620003995086717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375126 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A374759.P8492620003995086717

/-! ## A374759.P9988220816225754728

`eq[A124762(A375126(n)), A124764(n)]`
-/

namespace A374759.P9988220816225754728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374759.P9988220816225754728

/-! ## A374759.P14639734888413064157

`eq[A065120(n), A373953(A375126(n))]`
-/

namespace A374759.P14639734888413064157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A375126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374759.P14639734888413064157

/-! ## A374759.P12517250923669771180

`eq[A124769(n), A333381(A375126(n))]`
-/

namespace A374759.P12517250923669771180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A375126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374759.P12517250923669771180

/-!
# A374760: Number of integer compositions of n whose leaders of strictly decreasing runs are identical.

The programs for A374760, there is no canonical definition to state claims against.
-/

/-! ## A374760.P12163563216443664465

`A003056(A367217(n)+A000032(n))`
-/

namespace A374760.P12163563216443664465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A367217 n + A000032 n).toNat

end

end A374760.P12163563216443664465

/-! ## A374760.P8797727381445079365

`A003056(A367217(n)+A014217(n))`
-/

namespace A374760.P8797727381445079365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A367217 n + A014217 n).toNat

end

end A374760.P8797727381445079365

/-! ## A374760.P2819246606607146385

`A003056(A367217(n)+A329723(n+2))`
-/

namespace A374760.P2819246606607146385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A367217 n + A329723 (n + 2)).toNat

end

end A374760.P2819246606607146385

/-! ## A374760.P12727704502499800188

`A003056(A002703(n+3)+A000032(n))`
-/

namespace A374760.P12727704502499800188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A002703 (n + 3) + A000032 n).toNat

end

end A374760.P12727704502499800188

/-! ## A374760.P5704769176024832764

`A003056(A367217(n)+A000211(n)-2)`
-/

namespace A374760.P5704769176024832764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A367217 n + (A000211 n - 2)).toNat

end

end A374760.P5704769176024832764

/-!
# A374761: Number of integer compositions of n whose leaders of strictly decreasing runs are distinct.

The programs for A374761, there is no canonical definition to state claims against.
-/

/-! ## A374761.P10004565731227180715

`A130399(A317639(n))`
-/

namespace A374761.P10004565731227180715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130399 (A317639 n).toNat

end

end A374761.P10004565731227180715

/-! ## A374761.P6218542919598123299

`A194978(A362057(n))`
-/

namespace A374761.P6218542919598123299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194978 (A362057 n).toNat

end

end A374761.P6218542919598123299

/-! ## A374761.P17945323102900150755

`A396665(A302180(n))`
-/

namespace A374761.P17945323102900150755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396665 (A302180 n).toNat

end

end A374761.P17945323102900150755

/-! ## A374761.P1158877286110873479

`A094681(A049884(n+1))`
-/

namespace A374761.P1158877286110873479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094681 (A049884 (n + 1)).toNat

end

end A374761.P1158877286110873479

/-! ## A374761.P3007589642347138990

`A156726(A063886(n))+1`
-/

namespace A374761.P3007589642347138990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A063886 n).toNat + 1

end

end A374761.P3007589642347138990

/-!
# A374762: Number of integer compositions of n whose leaders of strictly decreasing runs are strictly increasing.

The programs for A374762, there is no canonical definition to state claims against.
-/

/-! ## A374762.P6258635767885083722

`A302930(A000041(n))+A179070(n+1)`
-/

namespace A374762.P6258635767885083722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302930 (A000041 n).toNat + A179070 (n + 1)

end

end A374762.P6258635767885083722

/-! ## A374762.P17390921742561634828

`A070082(A035349(n))-A143731(2*(n+1))`
-/

namespace A374762.P17390921742561634828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A035349 n).toNat - A143731 (2 * (n + 1))

end

end A374762.P17390921742561634828

/-!
# A374763: Number of integer compositions of n whose leaders of strictly decreasing runs are themselves strictly decreasing.

The programs for A374763, there is no canonical definition to state claims against.
-/

/-! ## A374763.P14497456931146691009

`A261990(A034691(n))+A073941(n+1)`
-/

namespace A374763.P14497456931146691009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261990 (A034691 n).toNat + A073941 (n + 1)

end

end A374763.P14497456931146691009

/-! ## A374763.P14104658471228506763

`A259899(A295679(n)+A232466(n+1))`
-/

namespace A374763.P14104658471228506763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A295679 n + A232466 (n + 1)).toNat

end

end A374763.P14104658471228506763

/-! ## A374763.P15358271017088946570

`A259899(A232466(n+1)+A080936(n+1))`
-/

namespace A374763.P15358271017088946570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A232466 (n + 1) + A080936 (n + 1)).toNat

end

end A374763.P15358271017088946570

/-! ## A374763.P153667029284898788

`A056556(A079225(n))`
-/

namespace A374763.P153667029284898788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A079225 n).toNat

end

end A374763.P153667029284898788

/-! ## A374763.P7492786530854748493

`A056556(A106337(n))`
-/

namespace A374763.P7492786530854748493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A106337 n).toNat

end

end A374763.P7492786530854748493

/-!
# A374764: Number of integer compositions of n whose leaders of strictly decreasing runs are weakly increasing.

The programs for A374764, there is no canonical definition to state claims against.
-/

/-! ## A374764.P10990228663747998916

`A226762(A192304(n+1))`
-/

namespace A374764.P10990228663747998916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A192304 (n + 1)).toNat

end

end A374764.P10990228663747998916

/-! ## A374764.P6136152520042136852

`A274312(A178354(n+1)+n)`
-/

namespace A374764.P6136152520042136852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274312 (A178354 (n + 1) + (n : ℤ)).toNat

end

end A374764.P6136152520042136852

/-! ## A374764.P17647854428202133488

`A374632(n)-A044940(A049606(n))`
-/

namespace A374764.P17647854428202133488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374632 n - A044940 (A049606 n).toNat

end

end A374764.P17647854428202133488

/-! ## A374764.P4019135548860095780

`A374632(n)-A085978(A319782(n))`
-/

namespace A374764.P4019135548860095780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374632 n - A085978 (A319782 n).toNat

end

end A374764.P4019135548860095780

/-!
# A374765: Number of integer compositions of n whose leaders of strictly decreasing runs are weakly decreasing.

The programs for A374765, there is no canonical definition to state claims against.
-/

/-! ## A374765.P2440790451691981576

`A000045(n+1)-A075172(A324095(n+1))`
-/

namespace A374765.P2440790451691981576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A075172 (A324095 (n + 1)).toNat

end

end A374765.P2440790451691981576

/-! ## A374765.P16694203007819796532

`A074198(A118311(n+1))`
-/

namespace A374765.P16694203007819796532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A118311 (n + 1)).toNat

end

end A374765.P16694203007819796532

/-! ## A374765.P14476278721460460008

`A257639(A052960(n+1))`
-/

namespace A374765.P14476278721460460008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A052960 (n + 1)).toNat

end

end A374765.P14476278721460460008

/-! ## A374765.P6084039975656458268

`A206139(A004896(n+2))`
-/

namespace A374765.P6084039975656458268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206139 (A004896 (n + 2)).toNat

end

end A374765.P6084039975656458268

/-! ## A374765.P8337249904775416157

`A206139(A004907(n+2))`
-/

namespace A374765.P8337249904775416157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206139 (A004907 (n + 2)).toNat

end

end A374765.P8337249904775416157

/-!
# A374766: Triangle read by rows where T(n,k) is the number of integer compositions of n whose leaders of maximal strictly decreasing runs sum to k.

The programs for A374766, there is no canonical definition to state claims against.
-/

/-! ## A374766.P608106760268930690

`C(A056885(n), A270831(A220632(n+1)))`
-/

namespace A374766.P608106760268930690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056885 n).toNat (A270831 (A220632 (n + 1)).toNat).toNat

end

end A374766.P608106760268930690

/-! ## A374766.P11366518966363731696

`∑{e}[A069271(A122950(n)), #]`
-/

namespace A374766.P11366518966363731696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 (A122950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A374766.P11366518966363731696

/-! ## A374766.P3269509857454461211

`A010888(A122950(n)*A256384(2*n))`
-/

namespace A374766.P3269509857454461211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A122950 n * A256384 (2 * n)).toNat

end

end A374766.P3269509857454461211

/-!
# A374767: Numbers k such that the leaders of strictly decreasing runs in the k-th composition in standard order are distinct.

The programs for A374767, there is no canonical definition to state claims against.
-/

/-! ## A374767.P17841842931220413432

`lt[n, A088516(A120861(n+1))]`
-/

namespace A374767.P17841842931220413432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088516 (A120861 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374767.P17841842931220413432

/-! ## A374767.P1751345031262522458

`lt[A124764(n), A353854(3*(n+1))]`
-/

namespace A374767.P1751345031262522458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374767.P1751345031262522458

/-! ## A374767.P12573491798891370977

`lt[A025875(n+1), A213800(A008949(n))]`
-/

namespace A374767.P12573491798891370977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A008949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374767.P12573491798891370977

/-! ## A374767.P3924872319865078142

`lt[A373954(n), A378387(A374520(2*(n+1)))]`
-/

namespace A374767.P3924872319865078142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378387 (A374520 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374767.P3924872319865078142

/-! ## A374767.P3762074174056584239

`lt[A124764(n), A090079(A333627(3*(n+1)))]`
-/

namespace A374767.P3762074174056584239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A333627 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374767.P3762074174056584239

/-!
# A374769: Second center column of elementary triangular automaton rule 45, from a lone 1 cell.

The programs for A374769, there is no canonical definition to state claims against.
-/

/-! ## A374769.P15282551560039980623

`A089809(A270223(n+1))`
-/

namespace A374769.P15282551560039980623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (A270223 (n + 1)).toNat

end

end A374769.P15282551560039980623

/-! ## A374769.P7958205356078492709

`(∑[A140130(3*n+5)*A268463(n)-7]+9)%2`
-/

namespace A374769.P7958205356078492709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140130 (3 * n + 5) * A268463 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 9) 2

end

end A374769.P7958205356078492709

/-! ## A374769.P9202492124540185265

`A359820(A342509(n+3)+A187162(2*n+3))`
-/

namespace A374769.P9202492124540185265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A342509 (n + 3) + A187162 (2 * n + 3)).toNat

end

end A374769.P9202492124540185265

/-! ## A374769.P15182797567239846698

`A010060(A231855(n+1)+16)`
-/

namespace A374769.P15182797567239846698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A231855 (n + 1) + 16).toNat

end

end A374769.P15182797567239846698

/-! ## A374769.P12184542319171084470

`A368990(A266033(n+2))`
-/

namespace A374769.P12184542319171084470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368990 (A266033 (n + 2)).toNat

end

end A374769.P12184542319171084470

/-!
# A374773: a(n):= #G_{2n}(3n+1) for n >= 1, where G_{2n}(3n+1) is the set of all pure (2n)-sparse gapset of genus 3n+1 and n a positive integer.

The programs for A374773, there is no canonical definition to state claims against.
-/

/-! ## A374773.P14701935050975805775

`A348619(n+2)-A000079(n+1)`
-/

namespace A374773.P14701935050975805775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348619 (n + 2) - A000079 (n + 1)

end

end A374773.P14701935050975805775

/-! ## A374773.P9565565336393720689

`A210357(A269083(n+1))`
-/

namespace A374773.P9565565336393720689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A269083 (n + 1)).toNat

end

end A374773.P9565565336393720689

/-!
# A374775: Decimal expansion of (2 + gamma - log(Pi))/2.

The programs for A374775, there is no canonical definition to state claims against.
-/

/-! ## A374775.P15436505419064140304

`9-A256921(n)`
-/

namespace A374775.P15436505419064140304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A256921 n

end

end A374775.P15436505419064140304

/-!
# A374777: Numerator of the mean abundancy index of the divisors of n.

The programs for A374777, there is no canonical definition to state claims against.
-/

/-! ## A374777.P8434357994189768623

`A318491(n+1)%A350854(n+1)`
-/

namespace A374777.P8434357994189768623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318491 (n + 1)) (A350854 (n + 1))

end

end A374777.P8434357994189768623

/-! ## A374777.P16011739834874220163

`and(A318491(n+1), A383046(n+3))`
-/

namespace A374777.P16011739834874220163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318491 (n + 1)) (A383046 (n + 3))

end

end A374777.P16011739834874220163

/-! ## A374777.P13175906644413623280

`A318491(n+1)+A240467(A032020(n))`
-/

namespace A374777.P13175906644413623280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318491 (n + 1) + A240467 (A032020 n).toNat

end

end A374777.P13175906644413623280

/-! ## A374777.P14112073494745816288

`A318491(n+1)+A000007(A303667(n))`
-/

namespace A374777.P14112073494745816288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318491 (n + 1) + A000007 (A303667 n).toNat

end

end A374777.P14112073494745816288

/-! ## A374777.P13278155275532403647

`A033630(A336130(n))*A318491(n+1)`
-/

namespace A374777.P13278155275532403647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A336130 n).toNat * A318491 (n + 1)

end

end A374777.P13278155275532403647

/-!
# A374778: Denominator of the mean abundancy index of the divisors of n.

The programs for A374778, there is no canonical definition to state claims against.
-/

/-! ## A374778.P4132436642460857198

`A038040(n+1)/A060640(n+1)*A374777(n+1)`
-/

namespace A374778.P4132436642460857198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A060640 (n + 1) : ℚ) * (A374777 (n + 1) : ℚ)

end

end A374778.P4132436642460857198

/-! ## A374778.P5447732065677498107

`A038040(n+1)%A047842(A088274(n+1))`
-/

namespace A374778.P5447732065677498107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038040 (n + 1)) (A047842 (A088274 (n + 1)).toNat)

end

end A374778.P5447732065677498107

/-! ## A374778.P5100592236870864772

`∑{d}[n+1, lcm(#, n+1)]%A114813(A085595(n+3))`
-/

namespace A374778.P5100592236870864772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℤ) (A114813 (A085595 (n + 3)).toNat)

end

end A374778.P5100592236870864772

/-! ## A374778.P4481517955512058306

`A038040(n+1)%A366621(A008000(n))`
-/

namespace A374778.P4481517955512058306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038040 (n + 1)) (A366621 (A008000 n).toNat)

end

end A374778.P4481517955512058306

/-! ## A374778.P6103200045123882041

`A038040(n+1)/A000110(A327449(n+1))`
-/

namespace A374778.P6103200045123882041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A000110 (A327449 (n + 1)).toNat : ℚ)

end

end A374778.P6103200045123882041

/-!
# A374781: Numbers whose divisors have a record value of the mean abundancy index.

The programs for A374781, there is no canonical definition to state claims against.
-/

/-! ## A374781.P4405356555877406994

`∩[A092824(n+1), A333953(n+1)]`
-/

namespace A374781.P4405356555877406994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374781.P4405356555877406994

/-! ## A374781.P8024042936923141463

`∩[A092824(n+1), A333963(n+1)]`
-/

namespace A374781.P8024042936923141463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374781.P8024042936923141463

/-! ## A374781.P15846956646154667163

`∩[A087086(n), A301414(n+1)]`
-/

namespace A374781.P15846956646154667163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374781.P15846956646154667163

/-! ## A374781.P4288590167512071859

`∩[A087086(n), A333953(n+1)]`
-/

namespace A374781.P4288590167512071859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374781.P4288590167512071859

/-! ## A374781.P17494130504771275047

`∩[A087086(n), A333963(n+1)]`
-/

namespace A374781.P17494130504771275047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374781.P17494130504771275047

/-!
# A374782: Number of partitions of n that do not have a fixed point that is also a fixed point of the conjugate partition.

The programs for A374782, there is no canonical definition to state claims against.
-/

/-! ## A374782.P7368613635272359069

`A064428(n)+A064428(n)-A188674(n+1)`
-/

namespace A374782.P7368613635272359069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064428 n + (A064428 n - A188674 (n + 1))

end

end A374782.P7368613635272359069

/-! ## A374782.P8798751055101757666

`A352833(A004277(n))+A118199(n)`
-/

namespace A374782.P8798751055101757666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352833 (A004277 n).toNat + A118199 n

end

end A374782.P8798751055101757666

/-! ## A374782.P8110609253310455958

`A012265(or(A000070(n), A048720(3*n)))`
-/

namespace A374782.P8110609253310455958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (Int.lor (A000070 n) (A048720 (3 * n))).toNat

end

end A374782.P8110609253310455958

/-!
# A374783: Numerator of the mean unitary abundancy index of the unitary divisors of n.

The programs for A374783, there is no canonical definition to state claims against.
-/

/-! ## A374783.P5802229707480167643

`lcm(n+1, A343525(n+1))/(n+1)`
-/

namespace A374783.P5802229707480167643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A343525 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A374783.P5802229707480167643

/-!
# A374784: Denominator of the mean unitary abundancy index of the unitary divisors of n.

The programs for A374784, there is no canonical definition to state claims against.
-/

/-! ## A374784.P10974190615570109573

`A374787(n+1)/A325837(A010352(n+1))`
-/

namespace A374784.P10974190615570109573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374787 (n + 1) : ℚ) / (A325837 (A010352 (n + 1)).toNat : ℚ)

end

end A374784.P10974190615570109573

/-! ## A374784.P394658414896686393

`A374787(n+1)/A124766(A238279(2*n+3))`
-/

namespace A374784.P394658414896686393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374787 (n + 1) : ℚ) / (A124766 (A238279 (2 * n + 3)).toNat : ℚ)

end

end A374784.P394658414896686393

/-!
# A374787: Denominator of the mean infinitary abundancy index of the infinitary divisors of n.

The programs for A374787, there is no canonical definition to state claims against.
-/

/-! ## A374787.P736577792098360164

`A124010(A324703(3*n+2))*A374784(n+1)`
-/

namespace A374787.P736577792098360164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A324703 (3 * n + 2)).toNat * A374784 (n + 1)

end

end A374787.P736577792098360164

/-! ## A374787.P4840883243663286904

`A138904(A344653(n+1))*A374784(n+1)`
-/

namespace A374787.P4840883243663286904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A344653 (n + 1)).toNat * A374784 (n + 1)

end

end A374787.P4840883243663286904

/-! ## A374787.P17174389299271191660

`A051340(A006820(n))*A374784(n+1)`
-/

namespace A374787.P17174389299271191660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A006820 n).toNat * A374784 (n + 1)

end

end A374787.P17174389299271191660

/-! ## A374787.P6948322508394796331

`A124010(A000225(n+2))*A374784(n+1)`
-/

namespace A374787.P6948322508394796331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A000225 (n + 2)).toNat * A374784 (n + 1)

end

end A374787.P6948322508394796331

/-! ## A374787.P6393728695087157767

`A053797(A209100(n+5))*A374784(n+1)`
-/

namespace A374787.P6393728695087157767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A209100 (n + 5)).toNat * A374784 (n + 1)

end

end A374787.P6393728695087157767

/-!
# A374794: Number of deco polyominoes of height 2n and vertical height n.

The programs for A374794, there is no canonical definition to state claims against.
-/

/-! ## A374794.P16422516999856566418

`A121692(gcd(A001105(n), A141092(n+1)))`
-/

namespace A374794.P16422516999856566418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121692 (Int.gcd (A001105 n) (A141092 (n + 1)))

end

end A374794.P16422516999856566418

/-! ## A374794.P9419861493350903741

`A121692(∏{e}[A001021(n), #])`
-/

namespace A374794.P9419861493350903741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121692 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A374794.P9419861493350903741

/-!
# A374795: The minimum diameter of a chordal ring mixed graph with 2*n vertices.

The programs for A374795, there is no canonical definition to state claims against.
-/

/-! ## A374795.P13918621525417752656

`A329697(A308546(n+4)+A000040(n+1))`
-/

namespace A374795.P13918621525417752656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A308546 (n + 4) + A000040 (n + 1)).toNat

end

end A374795.P13918621525417752656

