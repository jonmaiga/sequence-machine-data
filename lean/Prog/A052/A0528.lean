import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A052800: E.g.f.: x^5*exp(x)-x^5.

The programs for A052800, the canonical program `A052800.P10519635716763956218` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052800 has offset 0).

The definition of A052800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052800.P10519635716763956218

`A052787(C(n, C(5, C(5, n))))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052800

/-- `A052787(C(n, C(5, C(5, n))))` -/
def P10519635716763956218.Spec : Prop :=
  ∀ n, P10519635716763956218.a n = A052800 n

theorem P10519635716763956218.correct : P10519635716763956218.Spec := by
  intro n
  simp only [A052800]

end A052800

/-! ## A052800.P16496264835966014191

`A052787(n*A185116(n))`
-/

namespace A052800.P16496264835966014191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 ((n : ℤ) * A185116 n).toNat

end

end A052800.P16496264835966014191

namespace A052800

/-- `A052787(n*A185116(n))` -/
def P16496264835966014191.Spec : Prop :=
  ∀ n, P16496264835966014191.a n = A052800 n

end A052800

/-! ## A052800.P16711980574519763989

`A052787(n)*A349595(n+1)`
-/

namespace A052800.P16711980574519763989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 n * A349595 (n + 1)

end

end A052800.P16711980574519763989

namespace A052800

/-- `A052787(n)*A349595(n+1)` -/
def P16711980574519763989.Spec : Prop :=
  ∀ n, P16711980574519763989.a n = A052800 n

end A052800

/-! ## A052800.P11135380418697904293

`A052787(n)*A078008(C(5, n))`
-/

namespace A052800.P11135380418697904293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 n * A078008 (Nat.choose 5 n)

end

end A052800.P11135380418697904293

namespace A052800

/-- `A052787(n)*A078008(C(5, n))` -/
def P11135380418697904293.Spec : Prop :=
  ∀ n, P11135380418697904293.a n = A052800 n

end A052800

/-! ## A052800.P10276552224274248145

`A053625(n)/(abs(A023448(n))+1)`
-/

namespace A052800.P10276552224274248145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053625 n : ℚ) / (|A023448 n| + 1 : ℚ)

end

end A052800.P10276552224274248145

namespace A052800

/-- `A053625(n)/(abs(A023448(n))+1)` -/
def P10276552224274248145.Spec : Prop :=
  ∀ n, P10276552224274248145.a n = (A052800 n : ℚ)

end A052800

/-! ## A052800.P1842541437863273001

`A052787(n*A060576(A002264(n)))`
-/

namespace A052800.P1842541437863273001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 ((n : ℤ) * A060576 (A002264 n).toNat).toNat

end

end A052800.P1842541437863273001

namespace A052800

/-- `A052787(n*A060576(A002264(n)))` -/
def P1842541437863273001.Spec : Prop :=
  ∀ n, P1842541437863273001.a n = A052800 n

end A052800

/-! ## A052800.P7115803359273543708

`lcm(10*12*A000389(n), 4%A297889(n+1))`
-/

namespace A052800.P7115803359273543708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (10 * (12 * A000389 n)) (Int.tmod 4 (A297889 (n + 1)))

end

end A052800.P7115803359273543708

namespace A052800

/-- `lcm(10*12*A000389(n), 4%A297889(n+1))` -/
def P7115803359273543708.Spec : Prop :=
  ∀ n, (P7115803359273543708.a n : ℤ) = A052800 n

end A052800

/-! ## A052800.P3274043310136796829

`A052787(n)%A042371(n)`
-/

namespace A052800.P3274043310136796829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052787 n) (A042371 n)

end

end A052800.P3274043310136796829

namespace A052800

/-- `A052787(n)%A042371(n)` -/
def P3274043310136796829.Spec : Prop :=
  ∀ n, P3274043310136796829.a n = A052800 n

end A052800

/-! ## A052800.P17848852181031848098

`A052787(and(n, A363160(n+1)))`
-/

namespace A052800.P17848852181031848098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 (Int.land (n : ℤ) (A363160 (n + 1))).toNat

end

end A052800.P17848852181031848098

namespace A052800

/-- `A052787(and(n, A363160(n+1)))` -/
def P17848852181031848098.Spec : Prop :=
  ∀ n, P17848852181031848098.a n = A052800 n

end A052800

/-!
# A052801: A simple grammar: labeled pairs of sequences of cycles.

The programs for A052801, there is no canonical definition to state claims against.
-/

/-! ## A052801.P16782991865443782702

`A007840(n)+A215916(n)`
-/

namespace A052801.P16782991865443782702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n + A215916 n

end

end A052801.P16782991865443782702

/-! ## A052801.P3092958533884921446

`A007840(n+1)-A218817(n)`
-/

namespace A052801.P3092958533884921446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (n + 1) - A218817 n

end

end A052801.P3092958533884921446

/-! ## A052801.P2655324312956197571

`A355652(∑[n]+n)+A215916(n)`
-/

namespace A052801.P2655324312956197571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A215916 n

end

end A052801.P2655324312956197571

/-! ## A052801.P8161573827619663700

`A007840(n+1)-n*A007840(n)`
-/

namespace A052801.P8161573827619663700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (n + 1) - (n : ℤ) * A007840 n

end

end A052801.P8161573827619663700

/-! ## A052801.P5398722318050414341

`A215916(n)+A052860(n+1)/(n+1)`
-/

namespace A052801.P5398722318050414341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215916 n : ℚ) + (A052860 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052801.P5398722318050414341

/-! ## A052801.P17211458725307383383

`A052835(n)+A052865(n)+A052864(n)`
-/

namespace A052801.P17211458725307383383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052835 n + (A052865 n + A052864 n)

end

end A052801.P17211458725307383383

/-! ## A052801.P5162970735654427717

`A052835(n)+A215916(n)-A104150(n)`
-/

namespace A052801.P5162970735654427717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052835 n + (A215916 n - A104150 n)

end

end A052801.P5162970735654427717

/-! ## A052801.P3827380960643087821

`A215916(n)+A052860(n+1)-A218817(n)`
-/

namespace A052801.P3827380960643087821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215916 n + (A052860 (n + 1) - A218817 n)

end

end A052801.P3827380960643087821

/-! ## A052801.P97558700393120919

`A007840(n+1)+A007840(n)-A052860(n+1)`
-/

namespace A052801.P97558700393120919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (n + 1) + (A007840 n - A052860 (n + 1))

end

end A052801.P97558700393120919

/-! ## A052801.P1232602152171637402

`A218817(n+1)/(n+1)-A218817(n)`
-/

namespace A052801.P1232602152171637402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218817 (n + 1) : ℚ) / (n + 1 : ℚ) - (A218817 n : ℚ)

end

end A052801.P1232602152171637402

/-!
# A052802: E.g.f. satisfies A(x) = 1/(1 + log(1 - x*A(x))).

The programs for A052802, there is no canonical definition to state claims against.
-/

/-! ## A052802.P17139627052461685977

`A052819(n+1)/(n+1)`
-/

namespace A052802.P17139627052461685977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052819 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052802.P17139627052461685977

/-!
# A052803: Expansion of e.g.f. (-1 + sqrt(1 + 4*log(1-x)))/(2*log(1-x)).

The programs for A052803, there is no canonical definition to state claims against.
-/

/-! ## A052803.P11048321764827457679

`A302540(A004213(n))`
-/

namespace A052803.P11048321764827457679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (A004213 n).toNat

end

end A052803.P11048321764827457679

/-!
# A052805: If B is a collection in which there are C(n-1) [Catalan numbers, A000108] things with n points, a(n) is the number of subsets without repetition of B with a total of n points.

The programs for A052805, there is no canonical definition to state claims against.
-/

/-! ## A052805.P11220072220384551952

`A157271(A148326(n))`
-/

namespace A052805.P11220072220384551952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148326 n).toNat

end

end A052805.P11220072220384551952

/-! ## A052805.P17995756048109600905

`A024417(A365103(n))`
-/

namespace A052805.P17995756048109600905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A365103 n).toNat

end

end A052805.P17995756048109600905

/-! ## A052805.P7833484193212301726

`A226762(A194353(n))`
-/

namespace A052805.P7833484193212301726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A194353 n).toNat

end

end A052805.P7833484193212301726

/-! ## A052805.P12774522985105597276

`A008618(A217616(n+1))`
-/

namespace A052805.P12774522985105597276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A217616 (n + 1)).toNat

end

end A052805.P12774522985105597276

/-!
# A052806: Number of sequences of rooted identity trees with a total of n nodes.

The programs for A052806, there is no canonical definition to state claims against.
-/

/-! ## A052806.P17877628841652938535

`A247357(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052806.P17877628841652938535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A247357 (a (n - 1)).toNat + a (n - 2)

end

end A052806.P17877628841652938535

/-! ## A052806.P13354052786127422335

`A001462(A307401(n))`
-/

namespace A052806.P13354052786127422335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A307401 n).toNat

end

end A052806.P13354052786127422335

/-! ## A052806.P15847838902568949354

`A157271(ceil(sqrt(A256333(n+1))))`
-/

namespace A052806.P15847838902568949354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 ⌈Real.sqrt (A256333 (n + 1) : ℝ)⌉.toNat

end

end A052806.P15847838902568949354

/-! ## A052806.P12872023947451082833

`A157271(round(sqrt(A256333(n+1))))`
-/

namespace A052806.P12872023947451082833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (SequenceMachineLib.roundAway (Real.sqrt (A256333 (n + 1) : ℝ))).toNat

end

end A052806.P12872023947451082833

/-! ## A052806.P9182701304744436041

`A001006(n)-A342383(A137745(n))`
-/

namespace A052806.P9182701304744436041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A342383 (A137745 n).toNat

end

end A052806.P9182701304744436041

/-!
# A052807: Expansion of e.g.f. -LambertW(log(1-x)).

The programs for A052807, there is no canonical definition to state claims against.
-/

/-! ## A052807.P14763060988843264015

`A004524(xor(∑[n^n]-1, round(acot(n)+n)))`
-/

namespace A052807.P14763060988843264015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)))).toNat

end

end A052807.P14763060988843264015

/-! ## A052807.P11567521727833351447

`A123108(xor(∑[n^n]-1, A028310(n)))`
-/

namespace A052807.P11567521727833351447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (A028310 n)).toNat

end

end A052807.P11567521727833351447

/-!
# A052808: E.g.f.: -log(1-x+log(1-x)).

The programs for A052808, there is no canonical definition to state claims against.
-/

/-! ## A052808.P1175581912315273352

`A002264(A107887(n))+A000045(n)`
-/

namespace A052808.P1175581912315273352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A107887 n).toNat + A000045 n

end

end A052808.P1175581912315273352

/-!
# A052809: A simple grammar: number of cycles of cycles.

The programs for A052809, there is no canonical definition to state claims against.
-/

/-! ## A052809.P13006068299884742824

`n*A003713(abs(1-n))`
-/

namespace A052809.P13006068299884742824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003713 |1 - (n : ℤ)|.toNat

end

end A052809.P13006068299884742824

/-! ## A052809.P9487650522694759300

`A003713(A004273(n)-n)*n`
-/

namespace A052809.P9487650522694759300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 (A004273 n - (n : ℤ)).toNat * (n : ℤ)

end

end A052809.P9487650522694759300

/-! ## A052809.P16262014020009282975

`A038608(n)*A325872(A000124(n)-n)`
-/

namespace A052809.P16262014020009282975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n * A325872 (A000124 n - (n : ℤ)).toNat

end

end A052809.P16262014020009282975

/-!
# A052810: a(n) = 1 + (number of partitions of n, n>0).

The programs for A052810, there is no canonical definition to state claims against.
-/

/-! ## A052810.P15571392351459861690

`A000041(n)+A057427(n)`
-/

namespace A052810.P15571392351459861690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A057427 n

end

end A052810.P15571392351459861690

/-! ## A052810.P6543389080851420815

`∑{d}[n, A000837(#)]+1`
-/

namespace A052810.P6543389080851420815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000837 d + 1

end

end A052810.P6543389080851420815

/-! ## A052810.P15087602734503240068

`∑[A002865(char[1]+n)]`
-/

namespace A052810.P15087602734503240068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052810.P15087602734503240068

/-! ## A052810.P11318956502341615481

`A000094(n+1)+1+n`
-/

namespace A052810.P11318956502341615481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + 1 + (n : ℤ)

end

end A052810.P11318956502341615481

/-! ## A052810.P5075121649907189067

`A187219(n)+a(n-1)` with `a(0)=1`
-/

namespace A052810.P5075121649907189067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187219 n + a (n - 1)

end

end A052810.P5075121649907189067

/-! ## A052810.P11405521765612986239

`A002865(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A052810.P11405521765612986239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002865 n + a (n - 1)

end

end A052810.P11405521765612986239

/-! ## A052810.P12009816870159054371

`A052839(n)+A047967(n)`
-/

namespace A052810.P12009816870159054371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n + A047967 n

end

end A052810.P12009816870159054371

/-! ## A052810.P16752679541171047610

`A000041(n)-A057428(n)`
-/

namespace A052810.P16752679541171047610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A057428 n

end

end A052810.P16752679541171047610

/-! ## A052810.P14250903365669106390

`A000041(n)+A062157(n)²`
-/

namespace A052810.P14250903365669106390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A062157 n ^ 2

end

end A052810.P14250903365669106390

/-! ## A052810.P8955128488802953812

`A060576(n+1)+A000041(n)`
-/

namespace A052810.P8955128488802953812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) + A000041 n

end

end A052810.P8955128488802953812

/-! ## A052810.P1201842972068281072

`A157928(n+1)+A000041(n)`
-/

namespace A052810.P1201842972068281072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) + A000041 n

end

end A052810.P1201842972068281072

/-! ## A052810.P4031454540474758633

`A000041(n)+1-A000007(n)`
-/

namespace A052810.P4031454540474758633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (1 - A000007 n)

end

end A052810.P4031454540474758633

/-! ## A052810.P11038730522525235371

`A179184(n+2)+A000041(n)`
-/

namespace A052810.P11038730522525235371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (n + 2) + A000041 n

end

end A052810.P11038730522525235371

/-! ## A052810.P17609425766244306254

`A005171(2*(n+1))+A000041(n)`
-/

namespace A052810.P17609425766244306254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1)) + A000041 n

end

end A052810.P17609425766244306254

/-! ## A052810.P5836566613561106402

`and(1, A000040(n+1))+A000041(n)`
-/

namespace A052810.P5836566613561106402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) + A000041 n

end

end A052810.P5836566613561106402

/-! ## A052810.P15700554579401646348

`a(A008683(4*n))+A000041(n)` with `a(0)=1`
-/

namespace A052810.P15700554579401646348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A008683 (4 * n)).toNat + A000041 n

end

end A052810.P15700554579401646348

/-! ## A052810.P9874561553909773229

`∑{e}[A020639(n+1), #]+A000041(n)`
-/

namespace A052810.P9874561553909773229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + A000041 n

end

end A052810.P9874561553909773229

/-! ## A052810.P10785098291758293034

`∏{e}[A006530(n+1), A000041(n)+#]`
-/

namespace A052810.P10785098291758293034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000041 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A052810.P10785098291758293034

/-! ## A052810.P15839802771726919245

`ceil(tanh(A001222(n+1))+A000041(n))`
-/

namespace A052810.P15839802771726919245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (A001222 (n + 1) : ℝ) + (A000041 n : ℝ)⌉

end

end A052810.P15839802771726919245

/-!
# A052811: A simple grammar: sequences of pairs of cycles.

The programs for A052811, there is no canonical definition to state claims against.
-/

/-! ## A052811.P11326671720389377989

`A357881(∑[n+3])`
-/

namespace A052811.P11326671720389377989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052811.P11326671720389377989

/-! ## A052811.P1948008427296478228

`A002562(2*n+1)-A124788(A001147(n))`
-/

namespace A052811.P1948008427296478228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002562 (2 * n + 1) - A124788 (A001147 n).toNat

end

end A052811.P1948008427296478228

/-!
# A052812: A simple grammar: power set of pairs of sequences.

The programs for A052812, there is no canonical definition to state claims against.
-/

/-! ## A052812.P16196266795493657364

`xor(Δ[A319642(n)], A085491(n))`
-/

namespace A052812.P16196266795493657364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A085491 n)

end

end A052812.P16196266795493657364

/-! ## A052812.P10985875042361755386

`xor(Δ[A319642(n)], A322860(n+1))`
-/

namespace A052812.P10985875042361755386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A322860 (n + 1))

end

end A052812.P10985875042361755386

/-! ## A052812.P9918673842710004472

`xor(Δ[A319642(n)], A326956(n+1))`
-/

namespace A052812.P9918673842710004472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A326956 (n + 1))

end

end A052812.P9918673842710004472

/-! ## A052812.P8240719810017105886

`A006355(n)-A124761(A007504(n))`
-/

namespace A052812.P8240719810017105886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n - A124761 (A007504 n).toNat

end

end A052812.P8240719810017105886

/-! ## A052812.P924608855684708447

`A066983(n+1)-A225399(A085279(n))`
-/

namespace A052812.P924608855684708447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (n + 1) - A225399 (A085279 n).toNat

end

end A052812.P924608855684708447

/-!
# A052813: Expansion of e.g.f.: LambertW(log(1-x))/log(1-x).

The programs for A052813, there is no canonical definition to state claims against.
-/

/-! ## A052813.P75642317397927901

`A025428(A048143(n))+A000312(n)`
-/

namespace A052813.P75642317397927901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A048143 n).toNat + A000312 n

end

end A052813.P75642317397927901

/-! ## A052813.P4642250979690610151

`A008620(A088506(n)+A088500(n))`
-/

namespace A052813.P4642250979690610151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A088506 n + A088500 n).toNat

end

end A052813.P4642250979690610151

/-!
# A052814: A simple grammar.

The programs for A052814, there is no canonical definition to state claims against.
-/

/-! ## A052814.P18364430888470587283

`A008616(or(2, A132790(n+1)))`
-/

namespace A052814.P18364430888470587283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lor 2 (A132790 (n + 1))).toNat

end

end A052814.P18364430888470587283

/-! ## A052814.P10352625776543073796

`A008616(xor(1, A132790(n+1)+1))`
-/

namespace A052814.P10352625776543073796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor 1 (A132790 (n + 1) + 1)).toNat

end

end A052814.P10352625776543073796

/-! ## A052814.P14352445536795559067

`A008616(A132790(n+1)+round(sqrt(n+1))-1)`
-/

namespace A052814.P14352445536795559067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A132790 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)).toNat

end

end A052814.P14352445536795559067

/-! ## A052814.P11089203666922381863

`A008616(xor(A025480(n), A132790(n+1)))`
-/

namespace A052814.P11089203666922381863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor (A025480 n) (A132790 (n + 1))).toNat

end

end A052814.P11089203666922381863

/-! ## A052814.P14359132539710879460

`A008616(xor(A132790(n+1), A132792(n)))`
-/

namespace A052814.P14359132539710879460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor (A132790 (n + 1)) (A132792 n)).toNat

end

end A052814.P14359132539710879460

/-!
# A052815: Number of objects generated by the Combstruct grammar defined in the Maple program. See the link for the grammar specification.

The programs for A052815, there is no canonical definition to state claims against.
-/

/-! ## A052815.P6119098262057306746

`A055640(n)+A002265(A347825(n))`
-/

namespace A052815.P6119098262057306746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n + A002265 (A347825 n).toNat

end

end A052815.P6119098262057306746

/-! ## A052815.P328514931563479276

`A110656(n)+A002265(A347825(n))`
-/

namespace A052815.P328514931563479276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n + A002265 (A347825 n).toNat

end

end A052815.P328514931563479276

/-! ## A052815.P6996903362227687074

`A002265(A347825(n)+A113311(n))`
-/

namespace A052815.P6996903362227687074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A347825 n + A113311 n).toNat

end

end A052815.P6996903362227687074

/-! ## A052815.P503651801785382486

`A178489(n)+A002265(A347825(n))`
-/

namespace A052815.P503651801785382486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A002265 (A347825 n).toNat

end

end A052815.P503651801785382486

/-!
# A052816: Expansion of g.f. (1+x)*Product_{m>0} (1 + x^m).

The programs for A052816, there is no canonical definition to state claims against.
-/

/-! ## A052816.P2115006448320944446

`A333147(n)+1-A087897(n)`
-/

namespace A052816.P2115006448320944446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + (1 - A087897 n)

end

end A052816.P2115006448320944446

/-! ## A052816.P8376759624940934134

`2*A000009(n)-A087897(n)`
-/

namespace A052816.P8376759624940934134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000009 n - A087897 n

end

end A052816.P8376759624940934134

/-! ## A052816.P714778083315713237

`A111133(abs(1-n))+A052839(n)`
-/

namespace A052816.P714778083315713237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 |1 - (n : ℤ)|.toNat + A052839 n

end

end A052816.P714778083315713237

/-! ## A052816.P16799947052909079239

`A096765(A028310(n)-1)+A032303(n)`
-/

namespace A052816.P16799947052909079239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (A028310 n - 1).toNat + A032303 n

end

end A052816.P16799947052909079239

/-! ## A052816.P243193787374945882

`A096765(A004273(n)-n)+A032303(n)`
-/

namespace A052816.P243193787374945882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (A004273 n - (n : ℤ)).toNat + A032303 n

end

end A052816.P243193787374945882

/-! ## A052816.P5318571600054671328

`A096765(log2(A011782(n)))+A032303(n)`
-/

namespace A052816.P5318571600054671328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A032303 n

end

end A052816.P5318571600054671328

/-! ## A052816.P6064167549074777672

`A333147(n)-A023443(A087897(n))`
-/

namespace A052816.P6064167549074777672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n - A023443 (A087897 n).toNat

end

end A052816.P6064167549074777672

/-! ## A052816.P9208996512358476280

`A070936(A090288(n))+A000009(n)`
-/

namespace A052816.P9208996512358476280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A090288 n).toNat + A000009 n

end

end A052816.P9208996512358476280

/-! ## A052816.P13387544383015247254

`A070936(A090288(n))+∑[A087897(n)]`
-/

namespace A052816.P13387544383015247254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A090288 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052816.P13387544383015247254

/-! ## A052816.P5298309599678221944

`A000009(n)+A025065(n)-A238779(n+2)`
-/

namespace A052816.P5298309599678221944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A025065 n - A238779 (n + 2))

end

end A052816.P5298309599678221944

/-!
# A052817: Cycles of rooted trees t where for each t all subtrees at root are distinct. n is total number of nodes.

The programs for A052817, there is no canonical definition to state claims against.
-/

/-! ## A052817.P3551785866493250489

`∑{d}[n, A032175(#)]`
-/

namespace A052817.P3551785866493250489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032175 d

end

end A052817.P3551785866493250489

/-! ## A052817.P14707966603069181893

`A055086(A215953(n+1)-A000007(n))`
-/

namespace A052817.P14707966603069181893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A215953 (n + 1) - A000007 n).toNat

end

end A052817.P14707966603069181893

/-! ## A052817.P9342285915459279349

`A206551(A001405(n))-A194024(n+1)`
-/

namespace A052817.P9342285915459279349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (A001405 n).toNat - A194024 (n + 1)

end

end A052817.P9342285915459279349

/-! ## A052817.P8859471118939152805

`A055086(A215953(n+1)%A000244(n))`
-/

namespace A052817.P8859471118939152805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.tmod (A215953 (n + 1)) (A000244 n)).toNat

end

end A052817.P8859471118939152805

/-! ## A052817.P12355222944611851629

`A055086(A215953(n+1))%A102214(n)`
-/

namespace A052817.P12355222944611851629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055086 (A215953 (n + 1)).toNat) (A102214 n)

end

end A052817.P12355222944611851629

/-!
# A052818: Number of objects generated by the Combstruct grammar defined in the Maple program. See the link for the grammar specification.

The programs for A052818, there is no canonical definition to state claims against.
-/

/-! ## A052818.P6503617504264317876

`A110656(A150165(n)-char[∑[n]])`
-/

namespace A052818.P6503617504264317876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A150165 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A052818.P6503617504264317876

/-! ## A052818.P1606426021180743056

`A110656(xor(A071919(n), A150165(n)))`
-/

namespace A052818.P1606426021180743056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.xor (A071919 n) (A150165 n)).toNat

end

end A052818.P1606426021180743056

/-! ## A052818.P4118055276413839802

`A110656(xor(A150165(n), A185326(n)))`
-/

namespace A052818.P4118055276413839802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.xor (A150165 n) (A185326 n)).toNat

end

end A052818.P4118055276413839802

/-! ## A052818.P811805345462835673

`A110656(xor(A150165(n), A188431(n)))`
-/

namespace A052818.P811805345462835673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.xor (A150165 n) (A188431 n)).toNat

end

end A052818.P811805345462835673

/-!
# A052819: E.g.f. equals the series reversion of x + x*log(1-x).

The programs for A052819, there is no canonical definition to state claims against.
-/

/-! ## A052819.P12608597227183534046

`n*A052802(abs(1-n))`
-/

namespace A052819.P12608597227183534046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052802 |1 - (n : ℤ)|.toNat

end

end A052819.P12608597227183534046

/-!
# A052820: Expansion of e.g.f. 1/(1 - x + log(1 - x)).

The programs for A052820, there is no canonical definition to state claims against.
-/

/-! ## A052820.P11114829593849835354

`A305306(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052820.P11114829593849835354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305306 n + (n : ℤ) * a (n - 1)

end

end A052820.P11114829593849835354

/-!
# A052821: A simple grammar: pairs of cycles of sequences.

The programs for A052821, there is no canonical definition to state claims against.
-/

/-! ## A052821.P1895331235997939241

`A073188(A103435(n)-A059929(n))`
-/

namespace A052821.P1895331235997939241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A103435 n - A059929 n).toNat

end

end A052821.P1895331235997939241

/-! ## A052821.P15621864156009339081

`or(A052837(n), A184946(A312927(n)))`
-/

namespace A052821.P15621864156009339081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052837 n) (A184946 (A312927 n).toNat)

end

end A052821.P15621864156009339081

/-! ## A052821.P6057670932813960406

`A337483(n)+A006478(A078213(n+1))`
-/

namespace A052821.P6057670932813960406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 n + A006478 (A078213 (n + 1)).toNat

end

end A052821.P6057670932813960406

/-! ## A052821.P3454385528408096584

`∑[A000196(A028243(n+1))-A334652(n)]`
-/

namespace A052821.P3454385528408096584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028243 (n + 1)).toNat - A334652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052821.P3454385528408096584

/-!
# A052822: A simple grammar: pairs of cycles of cycles.

The programs for A052822, there is no canonical definition to state claims against.
-/

/-! ## A052822.P11290979024397998568

`abs(2*A325872(A133263(n)))`
-/

namespace A052822.P11290979024397998568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A325872 (A133263 n).toNat|

end

end A052822.P11290979024397998568

/-! ## A052822.P13767323664141709212

`A280560(n)*A325872(A133263(n))`
-/

namespace A052822.P13767323664141709212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n * A325872 (A133263 n).toNat

end

end A052822.P13767323664141709212

/-! ## A052822.P16910689284176365499

`2*A033999(n)*A325872(A133263(n))`
-/

namespace A052822.P16910689284176365499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033999 n * A325872 (A133263 n).toNat)

end

end A052822.P16910689284176365499

/-! ## A052822.P4862626772790106588

`lcm(2*A325872(A133263(n)), A001221(n+1))`
-/

namespace A052822.P4862626772790106588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A325872 (A133263 n).toNat) (A001221 (n + 1))

end

end A052822.P4862626772790106588

/-! ## A052822.P1559773290182822641

`gcd(2*A325872(A133263(n)), A067180(3*(n+2)))`
-/

namespace A052822.P1559773290182822641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A325872 (A133263 n).toNat) (A067180 (3 * (n + 2)))

end

end A052822.P1559773290182822641

/-!
# A052823: A simple grammar: cycles of pairs of sequences.

The programs for A052823, the canonical program `A052823.P12858488528447412848` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052823 has offset 0).

The definition of A052823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052823.P18245098262457498312

`floor(A262232(n)+n/2)`
-/

namespace A052823.P18245098262457498312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262232 n : ℚ) + (n : ℚ) / 2⌋

end

end A052823.P18245098262457498312

namespace A052823

/-- `floor(A262232(n)+n/2)` -/
def P18245098262457498312.Spec : Prop :=
  ∀ n, P18245098262457498312.a n = A052823 n

end A052823

/-! ## A052823.P12858488528447412848

`A008965(A028310(n))-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A052823

/-- `A008965(A028310(n))-1` -/
def P12858488528447412848.Spec : Prop :=
  ∀ n, P12858488528447412848.a n = A052823 n

theorem P12858488528447412848.correct : P12858488528447412848.Spec := by
  intro n
  simp only [A052823]

end A052823

/-! ## A052823.P6646241520141447297

`A262232(n)+A004526(n)`
-/

namespace A052823.P6646241520141447297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 n + A004526 n

end

end A052823.P6646241520141447297

namespace A052823

/-- `A262232(n)+A004526(n)` -/
def P6646241520141447297.Spec : Prop :=
  ∀ n, P6646241520141447297.a n = A052823 n

end A052823

/-! ## A052823.P5669990725041969214

`A008965(A065033(2*n))-1`
-/

namespace A052823.P5669990725041969214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (A065033 (2 * n)).toNat - 1

end

end A052823.P5669990725041969214

namespace A052823

/-- `A008965(A065033(2*n))-1` -/
def P5669990725041969214.Spec : Prop :=
  ∀ n, P5669990725041969214.a n = A052823 n

end A052823

/-! ## A052823.P4498365809992655021

`A000031(A123108(2*n))-2`
-/

namespace A052823.P4498365809992655021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A123108 (2 * n)).toNat - 2

end

end A052823.P4498365809992655021

namespace A052823

/-- `A000031(A123108(2*n))-2` -/
def P4498365809992655021.Spec : Prop :=
  ∀ n, P4498365809992655021.a n = A052823 n

end A052823

/-! ## A052823.P10209538255303290391

`A008965(A000007(n)+n)-1`
-/

namespace A052823.P10209538255303290391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (A000007 n + (n : ℤ)).toNat - 1

end

end A052823.P10209538255303290391

namespace A052823

/-- `A008965(A000007(n)+n)-1` -/
def P10209538255303290391.Spec : Prop :=
  ∀ n, P10209538255303290391.a n = A052823 n

end A052823

/-! ## A052823.P7408587691063528684

`A000031(n)-A036453(n+1)`
-/

namespace A052823.P7408587691063528684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A036453 (n + 1)

end

end A052823.P7408587691063528684

namespace A052823

/-- `A000031(n)-A036453(n+1)` -/
def P7408587691063528684.Spec : Prop :=
  ∀ n, P7408587691063528684.a n = A052823 n

end A052823

/-! ## A052823.P698933556835443428

`A000031(n)-(A057427(n)+1)`
-/

namespace A052823.P698933556835443428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - (A057427 n + 1)

end

end A052823.P698933556835443428

namespace A052823

/-- `A000031(n)-(A057427(n)+1)` -/
def P698933556835443428.Spec : Prop :=
  ∀ n, P698933556835443428.a n = A052823 n

end A052823

/-! ## A052823.P10260958752779184204

`A000013(n)+A000016(n)-2`
-/

namespace A052823.P10260958752779184204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n + (A000016 n - 2)

end

end A052823.P10260958752779184204

namespace A052823

/-- `A000013(n)+A000016(n)-2` -/
def P10260958752779184204.Spec : Prop :=
  ∀ n, P10260958752779184204.a n = A052823 n

end A052823

/-! ## A052823.P9744831099980320797

`A000031(A000007(n)+n)-2`
-/

namespace A052823.P9744831099980320797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A000007 n + (n : ℤ)).toNat - 2

end

end A052823.P9744831099980320797

namespace A052823

/-- `A000031(A000007(n)+n)-2` -/
def P9744831099980320797.Spec : Prop :=
  ∀ n, P9744831099980320797.a n = A052823 n

end A052823

/-! ## A052823.P13788682409574581247

`A000007(n)-(2-A000031(n))`
-/

namespace A052823.P13788682409574581247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (2 - A000031 n)

end

end A052823.P13788682409574581247

namespace A052823

/-- `A000007(n)-(2-A000031(n))` -/
def P13788682409574581247.Spec : Prop :=
  ∀ n, P13788682409574581247.a n = A052823 n

end A052823

/-! ## A052823.P14946630832176629327

`A000031(A004277(n)-n)-2`
-/

namespace A052823.P14946630832176629327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A004277 n - (n : ℤ)).toNat - 2

end

end A052823.P14946630832176629327

namespace A052823

/-- `A000031(A004277(n)-n)-2` -/
def P14946630832176629327.Spec : Prop :=
  ∀ n, P14946630832176629327.a n = A052823 n

end A052823

/-! ## A052823.P6715491180703091681

`A000031(n)-gcd(2, A000122(n))`
-/

namespace A052823.P6715491180703091681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - (Int.gcd 2 (A000122 n) : ℤ)

end

end A052823.P6715491180703091681

namespace A052823

/-- `A000031(n)-gcd(2, A000122(n))` -/
def P6715491180703091681.Spec : Prop :=
  ∀ n, P6715491180703091681.a n = A052823 n

end A052823

/-! ## A052823.P11612607628136023169

`A000031(n)-(A062157(n)²+1)`
-/

namespace A052823.P11612607628136023169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - (A062157 n ^ 2 + 1)

end

end A052823.P11612607628136023169

namespace A052823

/-- `A000031(n)-(A062157(n)²+1)` -/
def P11612607628136023169.Spec : Prop :=
  ∀ n, P11612607628136023169.a n = A052823 n

end A052823

/-! ## A052823.P9747929684079845892

`A000031(n)-A000034(A000040(n+1))`
-/

namespace A052823.P9747929684079845892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A000034 (A000040 (n + 1)).toNat

end

end A052823.P9747929684079845892

namespace A052823

/-- `A000031(n)-A000034(A000040(n+1))` -/
def P9747929684079845892.Spec : Prop :=
  ∀ n, P9747929684079845892.a n = A052823 n

end A052823

/-! ## A052823.P16664665396250258923

`A000031(n)-A020639(A209211(n+1))`
-/

namespace A052823.P16664665396250258923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A020639 (A209211 (n + 1)).toNat

end

end A052823.P16664665396250258923

namespace A052823

/-- `A000031(n)-A020639(A209211(n+1))` -/
def P16664665396250258923.Spec : Prop :=
  ∀ n, P16664665396250258923.a n = A052823 n

end A052823

/-! ## A052823.P16825522653751940352

`A000031(n)-A000034(record[A006530(n+2)])`
-/

namespace A052823.P16825522653751940352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A000034 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052823.P16825522653751940352

namespace A052823

/-- `A000031(n)-A000034(record[A006530(n+2)])` -/
def P16825522653751940352.Spec : Prop :=
  ∀ n, P16825522653751940352.a n = A052823 n

end A052823

/-! ## A052823.P418029420560297009

`A000031(n)-A000034(eq[2, A000005(n+1)]+1)`
-/

namespace A052823.P418029420560297009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A052823.P418029420560297009

namespace A052823

/-- `A000031(n)-A000034(eq[2, A000005(n+1)]+1)` -/
def P418029420560297009.Spec : Prop :=
  ∀ n, P418029420560297009.a n = A052823 n

end A052823

/-! ## A052823.P6086761481353115052

`A000031(n)-A000034(comp[A018252(n+1)-1]+1)`
-/

namespace A052823.P6086761481353115052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A000034 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A052823.P6086761481353115052

namespace A052823

/-- `A000031(n)-A000034(comp[A018252(n+1)-1]+1)` -/
def P6086761481353115052.Spec : Prop :=
  ∀ n, P6086761481353115052.a n = A052823 n

end A052823

/-!
# A052824: A simple grammar: cycles of pairs of cycles.

The programs for A052824, there is no canonical definition to state claims against.
-/

/-! ## A052824.P3715196528884044469

`A003713(n)-A089064(n)`
-/

namespace A052824.P3715196528884044469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 n - A089064 n

end

end A052824.P3715196528884044469

/-! ## A052824.P5671294148274069711

`A052809(n+1)/(n+1)-A089064(n)`
-/

namespace A052824.P5671294148274069711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052809 (n + 1) : ℚ) / (n + 1 : ℚ) - (A089064 n : ℚ)

end

end A052824.P5671294148274069711

/-! ## A052824.P16798407678142252528

`abs(A325872(A000124(n)))-A089064(n)`
-/

namespace A052824.P16798407678142252528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A000124 n).toNat| - A089064 n

end

end A052824.P16798407678142252528

/-! ## A052824.P4424101081841199003

`A003713(n)-A308497(A175631(n+2)+1)`
-/

namespace A052824.P4424101081841199003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 n - A308497 (A175631 (n + 2) + 1).toNat

end

end A052824.P4424101081841199003

/-! ## A052824.P9082225565593906273

`A052828(n)-(A104150(n)+A089064(n))`
-/

namespace A052824.P9082225565593906273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052828 n - (A104150 n + A089064 n)

end

end A052824.P9082225565593906273

/-!
# A052825: A simple grammar: partial sums of A008965.

The programs for A052825, the canonical program `A052825.P1042105182767021070` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052825 has offset 0).

The definition of A052825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052825.P1042105182767021070

`∑[A000031(A004273(n)-n)-1]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A052825

/-- `∑[A000031(A004273(n)-n)-1]` -/
def P1042105182767021070.Spec : Prop :=
  ∀ n, P1042105182767021070.a n = A052825 n

theorem P1042105182767021070.correct : P1042105182767021070.Spec := by
  intro n
  simp only [A052825]

end A052825

/-! ## A052825.P8014387242624833257

`∑[A000031(n)]-(A000031(n)+n)`
-/

namespace A052825.P8014387242624833257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000031 n + (n : ℤ))

end

end A052825.P8014387242624833257

namespace A052825

/-- `∑[A000031(n)]-(A000031(n)+n)` -/
def P8014387242624833257.Spec : Prop :=
  ∀ n, P8014387242624833257.a n = A052825 n

end A052825

/-! ## A052825.P10439111599980938359

`∑[A008965(A028310(n))]-A000031(n)`
-/

namespace A052825.P10439111599980938359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000031 n

end

end A052825.P10439111599980938359

namespace A052825

/-- `∑[A008965(A028310(n))]-A000031(n)` -/
def P10439111599980938359.Spec : Prop :=
  ∀ n, P10439111599980938359.a n = A052825 n

end A052825

/-! ## A052825.P7483013591035236201

`∑[A008965(A065033(2*n))]-A000031(n)`
-/

namespace A052825.P7483013591035236201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000031 n

end

end A052825.P7483013591035236201

namespace A052825

/-- `∑[A008965(A065033(2*n))]-A000031(n)` -/
def P7483013591035236201.Spec : Prop :=
  ∀ n, P7483013591035236201.a n = A052825 n

end A052825

/-! ## A052825.P4088586454671641958

`∑[A000031(n)-A057427(n)]-A000031(n)`
-/

namespace A052825.P4088586454671641958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000031 n

end

end A052825.P4088586454671641958

namespace A052825

/-- `∑[A000031(n)-A057427(n)]-A000031(n)` -/
def P4088586454671641958.Spec : Prop :=
  ∀ n, P4088586454671641958.a n = A052825 n

end A052825

/-! ## A052825.P2778185459618470224

`∑[A055376(∑[n]-n)]`
-/

namespace A052825.P2778185459618470224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055376 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052825.P2778185459618470224

namespace A052825

/-- `∑[A055376(∑[n]-n)]` -/
def P2778185459618470224.Spec : Prop :=
  ∀ n, P2778185459618470224.a n = A052825 n

end A052825

/-!
# A052826: A simple grammar: product of cycles and cycles of cycles.

The programs for A052826, there is no canonical definition to state claims against.
-/

/-! ## A052826.P1202527935511227113

`A354312(n)+A240328(A333093(n))`
-/

namespace A052826.P1202527935511227113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354312 n + A240328 (A333093 n).toNat

end

end A052826.P1202527935511227113

/-! ## A052826.P5980729714040009136

`xor(A103451(A027261(n)), A354312(n))`
-/

namespace A052826.P5980729714040009136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103451 (A027261 n).toNat) (A354312 n)

end

end A052826.P5980729714040009136

/-!
# A052827: a(n) is the number of unlabeled forests of rooted trees with n nodes such that no two trees are identical.

The programs for A052827, there is no canonical definition to state claims against.
-/

/-! ## A052827.P13157751424646265997

`A261585(or(A018026(n), A189716(n+1)))`
-/

namespace A052827.P13157751424646265997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (Int.lor (A018026 n) (A189716 (n + 1))).toNat

end

end A052827.P13157751424646265997

/-! ## A052827.P28924641402923690

`A261585(or(A018026(n), A259558(n+1)))`
-/

namespace A052827.P28924641402923690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (Int.lor (A018026 n) (A259558 (n + 1))).toNat

end

end A052827.P28924641402923690

/-! ## A052827.P10531345801186690287

`A186426(A137507(n+1))`
-/

namespace A052827.P10531345801186690287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186426 (A137507 (n + 1)).toNat

end

end A052827.P10531345801186690287

/-! ## A052827.P11016015434590902192

`A186426(A061808(n+2))`
-/

namespace A052827.P11016015434590902192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186426 (A061808 (n + 2)).toNat

end

end A052827.P11016015434590902192

/-! ## A052827.P8504118741291352107

`A187499(3*n+1)+A091337(A351506(n))`
-/

namespace A052827.P8504118741291352107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187499 (3 * n + 1) + A091337 (A351506 n).toNat

end

end A052827.P8504118741291352107

/-!
# A052828: A simple grammar: union of cycles and cycles of cycles.

The programs for A052828, there is no canonical definition to state claims against.
-/

/-! ## A052828.P12353126241505089959

`A003713(n)+abs(1-n)!-floor(acot(n))`
-/

namespace A052828.P12353126241505089959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 n + ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A052828.P12353126241505089959

/-! ## A052828.P6040179090299842400

`A104150(n)+A003713(n)`
-/

namespace A052828.P6040179090299842400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n + A003713 n

end

end A052828.P6040179090299842400

/-! ## A052828.P14547542480033713290

`A132393(A000124(n))+A003713(n)`
-/

namespace A052828.P14547542480033713290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000124 n).toNat + A003713 n

end

end A052828.P14547542480033713290

/-! ## A052828.P6054819318092624800

`A104150(n)+abs(A325872(A000124(n)))`
-/

namespace A052828.P6054819318092624800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n + |A325872 (A000124 n).toNat|

end

end A052828.P6054819318092624800

/-! ## A052828.P8307606808389581642

`A132393(∑[A028310(n)])+A003713(n)`
-/

namespace A052828.P8307606808389581642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A003713 n

end

end A052828.P8307606808389581642

/-! ## A052828.P5398983951350833990

`A052824(n)+A104150(n)+A089064(n)`
-/

namespace A052828.P5398983951350833990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052824 n + (A104150 n + A089064 n)

end

end A052828.P5398983951350833990

/-! ## A052828.P6813565274935862472

`A132393(A000124(n))+A052809(n+1)/(n+1)`
-/

namespace A052828.P6813565274935862472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 (A000124 n).toNat : ℚ) + (A052809 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052828.P6813565274935862472

/-! ## A052828.P5798520512251305805

`A132393(A000124(n))+A089064(n)+A052824(n)`
-/

namespace A052828.P5798520512251305805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000124 n).toNat + (A089064 n + A052824 n)

end

end A052828.P5798520512251305805

/-!
# A052829: A simple grammar: partial sums of A052870.

The programs for A052829, there is no canonical definition to state claims against.
-/

/-! ## A052829.P3347285766145367441

`A052870(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A052829.P3347285766145367441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052870 (n - 1) + a (n - 1)

end

end A052829.P3347285766145367441

/-! ## A052829.P1810096800243213269

`∑[A052870(n)]-A052870(n)`
-/

namespace A052829.P1810096800243213269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052870 n

end

end A052829.P1810096800243213269

/-! ## A052829.P1193376264104292610

`A105518(A069005(n+1))`
-/

namespace A052829.P1193376264104292610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A069005 (n + 1)).toNat

end

end A052829.P1193376264104292610

/-! ## A052829.P5898669556235315264

`A339295(A082743(n+1))`
-/

namespace A052829.P5898669556235315264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339295 (A082743 (n + 1)).toNat

end

end A052829.P5898669556235315264

/-!
# A052830: A simple grammar: sequences of rooted cycles.

The programs for A052830, there is no canonical definition to state claims against.
-/

/-! ## A052830.P1702536550703084136

`A355652(∑[n+2]-1)`
-/

namespace A052830.P1702536550703084136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A052830.P1702536550703084136

/-! ## A052830.P17580995152892706440

`A355665(∑[n+1]+n)`
-/

namespace A052830.P17580995152892706440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A052830.P17580995152892706440

/-! ## A052830.P11000311957198259687

`and(-1, A355652(A034856(n+1)))`
-/

namespace A052830.P11000311957198259687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A355652 (A034856 (n + 1)).toNat)

end

end A052830.P11000311957198259687

/-! ## A052830.P6907539087494034790

`lcm(A043568(n), A355652(A034856(n+1)))`
-/

namespace A052830.P6907539087494034790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043568 n) (A355652 (A034856 (n + 1)).toNat)

end

end A052830.P6907539087494034790

/-! ## A052830.P6401896947172080327

`or(A000007(n), A355652(A034856(n+1)))`
-/

namespace A052830.P6401896947172080327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A355652 (A034856 (n + 1)).toNat)

end

end A052830.P6401896947172080327

/-! ## A052830.P8940918088735968311

`A355652(A034856(n+1))+A000007(2*n+3)`
-/

namespace A052830.P8940918088735968311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (A034856 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A052830.P8940918088735968311

/-!
# A052831: A simple grammar.

The programs for A052831, there is no canonical definition to state claims against.
-/

/-! ## A052831.P17322169627124996495

`A339970(n)+A004523(A000912(n))`
-/

namespace A052831.P17322169627124996495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339970 n + A004523 (A000912 n).toNat

end

end A052831.P17322169627124996495

/-! ## A052831.P6246744276423917014

`A094189(A148877(n+1))`
-/

namespace A052831.P6246744276423917014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A148877 (n + 1)).toNat

end

end A052831.P6246744276423917014

/-! ## A052831.P5056885617698622897

`A193990(A165531(n+1))`
-/

namespace A052831.P5056885617698622897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (A165531 (n + 1)).toNat

end

end A052831.P5056885617698622897

/-! ## A052831.P8781931470553004801

`A087011(or(A004273(n), A054109(n)))`
-/

namespace A052831.P8781931470553004801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (Int.lor (A004273 n) (A054109 n)).toNat

end

end A052831.P8781931470553004801

/-!
# A052832: Expansion of e.g.f. log((-1+x)/(-1+x+x^2)).

The programs for A052832, there is no canonical definition to state claims against.
-/

/-! ## A052832.P13817564864026472546

`(A000032(n)-1)*A104150(n)`
-/

namespace A052832.P13817564864026472546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - 1) * A104150 n

end

end A052832.P13817564864026472546

/-! ## A052832.P14393868712380582690

`A187784(A212342(n))*A324015(n)`
-/

namespace A052832.P14393868712380582690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187784 (A212342 n).toNat * A324015 n

end

end A052832.P14393868712380582690

/-! ## A052832.P16676444718911630822

`(A000032(n)-1)*A132393(A000124(n))`
-/

namespace A052832.P16676444718911630822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - 1) * A132393 (A000124 n).toNat

end

end A052832.P16676444718911630822

/-! ## A052832.P7947737196622201358

`(A001612(n)-2)*A084938(A000124(n))`
-/

namespace A052832.P7947737196622201358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - 2) * A084938 (A000124 n).toNat

end

end A052832.P7947737196622201358

/-! ## A052832.P1595841562797137466

`A023443(A000032(n))*A104150(n)`
-/

namespace A052832.P1595841562797137466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000032 n).toNat * A104150 n

end

end A052832.P1595841562797137466

/-!
# A052833: Expansion of e.g.f.: (log(2-exp(x)))^2.

The programs for A052833, there is no canonical definition to state claims against.
-/

/-! ## A052833.P13000950484691412529

`2*A129062(C(n+1, abs(1-n))+2)`
-/

namespace A052833.P13000950484691412529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129062 (Nat.choose (n + 1) |1 - (n : ℤ)|.toNat + 2)

end

end A052833.P13000950484691412529

/-! ## A052833.P13534478400246030915

`2*A129062(A133263(n))`
-/

namespace A052833.P13534478400246030915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129062 (A133263 n).toNat

end

end A052833.P13534478400246030915

/-! ## A052833.P1439427279571854144

`2*A129062(A057427(n)+A000124(n))`
-/

namespace A052833.P1439427279571854144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129062 (A057427 n + A000124 n).toNat

end

end A052833.P1439427279571854144

/-! ## A052833.P386158148879368628

`2*A129062(A178334(n)+A000124(n))`
-/

namespace A052833.P386158148879368628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129062 (A178334 n + A000124 n).toNat

end

end A052833.P386158148879368628

/-! ## A052833.P7646997687661554152

`2*A129062(A000124(n)-A057428(n))`
-/

namespace A052833.P7646997687661554152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129062 (A000124 n - A057428 n).toNat

end

end A052833.P7646997687661554152

/-!
# A052834: a(n) = Bell(n+1)-Bell(n)-1, n>0.

The programs for A052834, there is no canonical definition to state claims against.
-/

/-! ## A052834.P14917283491689138179

`∑[A154108(n+1)]-1`
-/

namespace A052834.P14917283491689138179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052834.P14917283491689138179

/-! ## A052834.P12259980202002909534

`Δ[record[A205574(n+1)]]-1`
-/

namespace A052834.P12259980202002909534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A052834.P12259980202002909534

/-! ## A052834.P1455255976292701365

`Δ[A000110(n)]-ceil(sin(n)²)`
-/

namespace A052834.P1455255976292701365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A052834.P1455255976292701365

/-! ## A052834.P3924943748503441295

`Δ[A363550(2*n+1)]-1`
-/

namespace A052834.P3924943748503441295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363550 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A052834.P3924943748503441295

/-! ## A052834.P2732764346814237955

`A005493(round(sqrt(n²+1))-1)-1`
-/

namespace A052834.P2732764346814237955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat - 1

end

end A052834.P2732764346814237955

/-! ## A052834.P11200482412237888632

`A057428(n)+Δ[A000110(n)]`
-/

namespace A052834.P11200482412237888632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (f1 (n + 1) - f1 n)

end

end A052834.P11200482412237888632

/-! ## A052834.P6668496151374606198

`Δ[A000110(n)-A028310(n)]`
-/

namespace A052834.P6668496151374606198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052834.P6668496151374606198

/-! ## A052834.P12987574825491922373

`Δ[A000110(n)]-A057427(n)`
-/

namespace A052834.P12987574825491922373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057427 n

end

end A052834.P12987574825491922373

/-! ## A052834.P12567756736945082722

`Δ[A000110(n)]-A178334(n)`
-/

namespace A052834.P12567756736945082722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A178334 n

end

end A052834.P12567756736945082722

/-! ## A052834.P2424125706529756987

`A000110(n+1)-(A057427(n)+A000110(n))`
-/

namespace A052834.P2424125706529756987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - (A057427 n + A000110 n)

end

end A052834.P2424125706529756987

/-!
# A052835: E.g.f.: 1/(1+log(1-x))-log(1-x).

The programs for A052835, there is no canonical definition to state claims against.
-/

/-! ## A052835.P12941345967169667508

`A104150(n)+A007840(n)`
-/

namespace A052835.P12941345967169667508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n + A007840 n

end

end A052835.P12941345967169667508

/-! ## A052835.P7381636942762185426

`A355652(∑[n]+n)+A104150(n)`
-/

namespace A052835.P7381636942762185426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A104150 n

end

end A052835.P7381636942762185426

/-! ## A052835.P11253560882187546000

`A132393(A000124(n))+A007840(n)`
-/

namespace A052835.P11253560882187546000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000124 n).toNat + A007840 n

end

end A052835.P11253560882187546000

/-! ## A052835.P16972715186504339216

`A098361(A055998(n))+A052864(n)`
-/

namespace A052835.P16972715186504339216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A055998 n).toNat + A052864 n

end

end A052835.P16972715186504339216

/-! ## A052835.P14291405992718619981

`A104150(n)+A000142(n)/A323340(n)*A323339(n)`
-/

namespace A052835.P14291405992718619981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 n : ℚ) + (A000142 n : ℚ) / (A323340 n : ℚ) * (A323339 n : ℚ)

end

end A052835.P14291405992718619981

/-! ## A052835.P15573528874963805956

`A104150(n)+A052860(n+1)/(n+1)`
-/

namespace A052835.P15573528874963805956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 n : ℚ) + (A052860 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052835.P15573528874963805956

/-! ## A052835.P6224166031837834896

`A052801(n)+A104150(n)-A215916(n)`
-/

namespace A052835.P6224166031837834896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052801 n + (A104150 n - A215916 n)

end

end A052835.P6224166031837834896

/-! ## A052835.P1949270646565746707

`(A218817(n)+A000142(n))/A028310(n)`
-/

namespace A052835.P1949270646565746707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218817 n + A000142 n : ℚ) / (A028310 n : ℚ)

end

end A052835.P1949270646565746707

/-!
# A052836: INVERT transform of A052879.

The programs for A052836, there is no canonical definition to state claims against.
-/

/-! ## A052836.P8087327547416498651

`A148400(n)-A002656(A059738(n))`
-/

namespace A052836.P8087327547416498651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148400 n - A002656 (A059738 n).toNat

end

end A052836.P8087327547416498651

/-! ## A052836.P931406835767431106

`A148400(n)-A036987(A047139(n))`
-/

namespace A052836.P931406835767431106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148400 n - A036987 (A047139 n).toNat

end

end A052836.P931406835767431106

/-! ## A052836.P9497486258987766948

`A148400(n)-A010054(A081584(n))`
-/

namespace A052836.P9497486258987766948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148400 n - A010054 (A081584 n).toNat

end

end A052836.P9497486258987766948

/-!
# A052837: Number of partitions of 2n whose Ferrers-Young diagram allows more than one different domino tiling.

The programs for A052837, there is no canonical definition to state claims against.
-/

/-! ## A052837.P8255858157958782761

`A122768(A028310(n))-A000041(n)`
-/

namespace A052837.P8255858157958782761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (A028310 n).toNat - A000041 n

end

end A052837.P8255858157958782761

/-! ## A052837.P4004204296045628664

`A000712(A028310(n))-A139582(n)`
-/

namespace A052837.P4004204296045628664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A028310 n).toNat - A139582 n

end

end A052837.P4004204296045628664

/-! ## A052837.P5220756562350629300

`A122768(A028310(n))-∑[A002865(n)]`
-/

namespace A052837.P5220756562350629300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (A028310 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052837.P5220756562350629300

/-! ## A052837.P7058721533528758112

`A122768(A028310(n))-(A000065(n)+1)`
-/

namespace A052837.P7058721533528758112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (A028310 n).toNat - (A000065 n + 1)

end

end A052837.P7058721533528758112

/-! ## A052837.P15398787460074682147

`A122768(n)-A000041(n)*A057427(n)`
-/

namespace A052837.P15398787460074682147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n - A000041 n * A057427 n

end

end A052837.P15398787460074682147

/-! ## A052837.P18342137622576808891

`A122768(n)-A000041(n)%A000712(n)`
-/

namespace A052837.P18342137622576808891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n - Int.tmod (A000041 n) (A000712 n)

end

end A052837.P18342137622576808891

/-! ## A052837.P14032926468428857345

`(A122768(n)-A000041(n))*A165471(n)²`
-/

namespace A052837.P14032926468428857345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122768 n - A000041 n) * A165471 n ^ 2

end

end A052837.P14032926468428857345

/-! ## A052837.P8725326346672054500

`A122768(A004277(n)-n)-(A000065(n)+1)`
-/

namespace A052837.P8725326346672054500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (A004277 n - (n : ℤ)).toNat - (A000065 n + 1)

end

end A052837.P8725326346672054500

/-! ## A052837.P17540439624650604910

`(A122768(n)-A000041(n))%A048574(n+2)`
-/

namespace A052837.P17540439624650604910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122768 n - A000041 n) (A048574 (n + 2))

end

end A052837.P17540439624650604910

/-! ## A052837.P13067201701967575093

`(2*A122768(n))%A000712(n)`
-/

namespace A052837.P13067201701967575093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A122768 n) (A000712 n)

end

end A052837.P13067201701967575093

/-! ## A052837.P16382070958228364016

`A122768(n)-record[A035377(n+1)]`
-/

namespace A052837.P16382070958228364016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052837.P16382070958228364016

/-! ## A052837.P16606942883317638407

`(A122768(n)-A000041(n))%A006906(n)`
-/

namespace A052837.P16606942883317638407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122768 n - A000041 n) (A006906 n)

end

end A052837.P16606942883317638407

/-! ## A052837.P7347975947272940241

`A122768(n)-∑[A002865(n)]%A034340(n+1)`
-/

namespace A052837.P7347975947272940241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A034340 (n + 1))

end

end A052837.P7347975947272940241

/-! ## A052837.P9815577118609680722

`(A000712(n)-2*A000041(n))%A000079(n)`
-/

namespace A052837.P9815577118609680722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000712 n - 2 * A000041 n) (A000079 n)

end

end A052837.P9815577118609680722

/-!
# A052838: Expansion of e.g.f.: (exp(x/(1-x)) - 1)^2.

The programs for A052838, there is no canonical definition to state claims against.
-/

/-! ## A052838.P9685328692879869157

`2*A256892(∑[char[1]+n]+1)`
-/

namespace A052838.P9685328692879869157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052838.P9685328692879869157

/-! ## A052838.P3985313461686592082

`lcm(2, A256892(A133263(n)))`
-/

namespace A052838.P3985313461686592082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A256892 (A133263 n).toNat)

end

end A052838.P3985313461686592082

/-! ## A052838.P8175253810941534393

`A256892(A133263(n))*(A178334(n)+1)`
-/

namespace A052838.P8175253810941534393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256892 (A133263 n).toNat * (A178334 n + 1)

end

end A052838.P8175253810941534393

/-! ## A052838.P13138037558848073817

`A256892(A133263(n))*A271518(A178334(n))`
-/

namespace A052838.P13138037558848073817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256892 (A133263 n).toNat * A271518 (A178334 n).toNat

end

end A052838.P13138037558848073817

/-! ## A052838.P3296370739070701295

`2*A256892(A133263(n))^A097031(n+1)`
-/

namespace A052838.P3296370739070701295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (A256892 (A133263 n).toNat : ℚ) ^ (A097031 (n + 1) : ℤ)

end

end A052838.P3296370739070701295

/-!
# A052839: Number of partitions of n into distinct summands (A000009), plus 1 (apart from the first term).

The programs for A052839, there is no canonical definition to state claims against.
-/

/-! ## A052839.P6066757890693878148

`∑{d}[n, A078374(#)]+1`
-/

namespace A052839.P6066757890693878148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078374 d + 1

end

end A052839.P6066757890693878148

/-! ## A052839.P11120202863092869286

`∑[A087897(n)+char[1]]`
-/

namespace A052839.P11120202863092869286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052839.P11120202863092869286

/-! ## A052839.P4086469392627163122

`∑[A087897(n-char[1])]`
-/

namespace A052839.P4086469392627163122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052839.P4086469392627163122

/-! ## A052839.P2498527990692766263

`ceil((A087135(n)+1)/2)`
-/

namespace A052839.P2498527990692766263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n + 1 : ℚ) / 2⌉

end

end A052839.P2498527990692766263

/-! ## A052839.P9318478078905346909

`A000009(n)+ceil(tanh(sqrt(n)))`
-/

namespace A052839.P9318478078905346909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + ⌈Real.tanh (Real.sqrt (n : ℝ))⌉

end

end A052839.P9318478078905346909

/-! ## A052839.P1807805796467894254

`A057427(n)+A000009(n)`
-/

namespace A052839.P1807805796467894254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000009 n

end

end A052839.P1807805796467894254

/-! ## A052839.P7044243159877981617

`A357456(n)+A000034(n)`
-/

namespace A052839.P7044243159877981617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 n + A000034 n

end

end A052839.P7044243159877981617

/-! ## A052839.P10416986592102414492

`A365827(n)+A110654(n)`
-/

namespace A052839.P10416986592102414492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365827 n + A110654 n

end

end A052839.P10416986592102414492

/-! ## A052839.P10343430713964498973

`A000009(n)-A057428(n)`
-/

namespace A052839.P10343430713964498973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A057428 n

end

end A052839.P10343430713964498973

/-! ## A052839.P7662690612110094441

`A087135(n)-A111133(n)`
-/

namespace A052839.P7662690612110094441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n - A111133 n

end

end A052839.P7662690612110094441

/-! ## A052839.P3530990727477034216

`A000009(n)+A062157(n)²`
-/

namespace A052839.P3530990727477034216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + A062157 n ^ 2

end

end A052839.P3530990727477034216

/-! ## A052839.P22594586334558112

`A000009(n)+A134824(n)²`
-/

namespace A052839.P22594586334558112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + A134824 n ^ 2

end

end A052839.P22594586334558112

/-! ## A052839.P7250823919956365758

`A026832(n)+A026833(n)+1`
-/

namespace A052839.P7250823919956365758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026832 n + (A026833 n + 1)

end

end A052839.P7250823919956365758

/-! ## A052839.P14545753403197082956

`A000035(n)+A357456(n)+1`
-/

namespace A052839.P14545753403197082956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A357456 n + 1)

end

end A052839.P14545753403197082956

/-! ## A052839.P15303752648681177945

`A000009(n)+1-A000007(n)`
-/

namespace A052839.P15303752648681177945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (1 - A000007 n)

end

end A052839.P15303752648681177945

/-! ## A052839.P5684705536527884643

`A000009(n)+2-A054977(n)`
-/

namespace A052839.P5684705536527884643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (2 - A054977 n)

end

end A052839.P5684705536527884643

/-! ## A052839.P10088539612665787084

`A000009(n)+and(1, A000040(n+1))`
-/

namespace A052839.P10088539612665787084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + Int.land 1 (A000040 (n + 1))

end

end A052839.P10088539612665787084

/-! ## A052839.P8766898483367811604

`A000009(n)+∑{e}[A006530(n+1), #]`
-/

namespace A052839.P8766898483367811604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A052839.P8766898483367811604

/-! ## A052839.P9368416619706080887

`A000009(n)+∑{e}[A020639(n+1), #]`
-/

namespace A052839.P9368416619706080887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A052839.P9368416619706080887

/-!
# A052840: a(n) = n*A029767(n-1).

The programs for A052840, there is no canonical definition to state claims against.
-/

/-! ## A052840.P12588671808249268385

`n*A029767(abs(A023443(n)))`
-/

namespace A052840.P12588671808249268385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029767 |A023443 n|.toNat

end

end A052840.P12588671808249268385

/-! ## A052840.P7014486711387716968

`n*A131222(A152947(n+1))`
-/

namespace A052840.P7014486711387716968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131222 (A152947 (n + 1)).toNat

end

end A052840.P7014486711387716968

/-! ## A052840.P17340920464043292518

`n*A029767(A028310(n)-1)`
-/

namespace A052840.P17340920464043292518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029767 (A028310 n - 1).toNat

end

end A052840.P17340920464043292518

/-! ## A052840.P1842015538807580630

`n*A029767(A004273(n)-n)`
-/

namespace A052840.P1842015538807580630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029767 (A004273 n - (n : ℤ)).toNat

end

end A052840.P1842015538807580630

/-! ## A052840.P13992727763053936182

`n*A029767(n-A178334(n))`
-/

namespace A052840.P13992727763053936182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029767 ((n : ℤ) - A178334 n).toNat

end

end A052840.P13992727763053936182

/-! ## A052840.P1733242470874066832

`A029767(n)-A355258(n)`
-/

namespace A052840.P1733242470874066832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 n - A355258 n

end

end A052840.P1733242470874066832

/-! ## A052840.P17309109730163018032

`n/2*A156815(A133263(n))`
-/

namespace A052840.P17309109730163018032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A156815 (A133263 n).toNat : ℚ)

end

end A052840.P17309109730163018032

/-!
# A052841: Expansion of e.g.f.: 1/(exp(x)*(2-exp(x))).

The programs for A052841, there is no canonical definition to state claims against.
-/

/-! ## A052841.P2760152069748622988

`(A000670(n)+(-1)^n)/2`
-/

namespace A052841.P2760152069748622988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n + (-1) ^ n : ℚ) / 2

end

end A052841.P2760152069748622988

/-! ## A052841.P12399235319143971897

`A357868(∑[n+3])`
-/

namespace A052841.P12399235319143971897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052841.P12399235319143971897

/-! ## A052841.P6552959383987919459

`A122101(∑[n]+n)`
-/

namespace A052841.P6552959383987919459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A052841.P6552959383987919459

/-! ## A052841.P1118119276248735053

`A032109(n)-n%2`
-/

namespace A052841.P1118119276248735053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n - ((n % 2 : ℕ) : ℤ)

end

end A052841.P1118119276248735053

/-! ## A052841.P5665063862207747667

`A005649(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A052841.P5665063862207747667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005649 (n - 1) - a (n - 1)

end

end A052841.P5665063862207747667

/-! ## A052841.P17408765031234551439

`A089677(n)+A033999(n)`
-/

namespace A052841.P17408765031234551439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089677 n + A033999 n

end

end A052841.P17408765031234551439

/-! ## A052841.P2976739526401178061

`A032109(n)-A000035(n)`
-/

namespace A052841.P2976739526401178061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n - A000035 n

end

end A052841.P2976739526401178061

/-! ## A052841.P5884105404586332927

`A000670(n)-A089677(n)`
-/

namespace A052841.P5884105404586332927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A089677 n

end

end A052841.P5884105404586332927

/-! ## A052841.P8067760964545496505

`A032109(n)-log2(A000034(n))`
-/

namespace A052841.P8067760964545496505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A032109 n : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A052841.P8067760964545496505

/-! ## A052841.P10880928050176831368

`A122101(∑[n])-A089677(n)`
-/

namespace A052841.P10880928050176831368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A089677 n

end

end A052841.P10880928050176831368

/-!
# A052842: E.g.f. A(x) = series reversion of (1-x)*(1-exp(-x)).

The programs for A052842, there is no canonical definition to state claims against.
-/

/-! ## A052842.P4096509147404242016

`A060715(record[abs(xor(1, n-2))]^n)`
-/

namespace A052842.P4096509147404242016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n).toNat

end

end A052842.P4096509147404242016

/-!
# A052843: a(n) is the number of forests with n nodes of rooted unlabeled identity trees.

The programs for A052843, there is no canonical definition to state claims against.
-/

/-! ## A052843.P16877665446813742200

`A274937(n)+A261104(A151409(n))`
-/

namespace A052843.P16877665446813742200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274937 n + A261104 (A151409 n).toNat

end

end A052843.P16877665446813742200

/-! ## A052843.P11820130428755205824

`A331693(n)+A162351(A338707(n+1))`
-/

namespace A052843.P11820130428755205824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331693 n + A162351 (A338707 (n + 1)).toNat

end

end A052843.P11820130428755205824

/-! ## A052843.P4389831669746346274

`A257639(A005418(n+1)+∑[A148911(n)])`
-/

namespace A052843.P4389831669746346274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A005418 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052843.P4389831669746346274

/-! ## A052843.P12865774653676657513

`A257639(∑[A148911(n)+A055879(n+1)])`
-/

namespace A052843.P12865774653676657513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148911 n + A055879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052843.P12865774653676657513

/-! ## A052843.P15588791125338768231

`A003059(A148880(n))`
-/

namespace A052843.P15588791125338768231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A148880 n).toNat

end

end A052843.P15588791125338768231

/-!
# A052844: E.g.f.: exp(x*(2-x)/(1-x)).

The programs for A052844, there is no canonical definition to state claims against.
-/

/-! ## A052844.P12487654288499776547

`record[∑[A271704(n)]/A121757(n)]`
-/

namespace A052844.P12487654288499776547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271704 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A121757 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052844.P12487654288499776547

/-! ## A052844.P14549518592318430530

`A008621(∑[A073479(n+1)])`
-/

namespace A052844.P14549518592318430530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052844.P14549518592318430530

/-!
# A052845: Expansion of e.g.f.: exp(x^2/(1-x)).

The programs for A052845, there is no canonical definition to state claims against.
-/

/-! ## A052845.P10229533802932220300

`abs(A293120(n))`
-/

namespace A052845.P10229533802932220300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293120 n|

end

end A052845.P10229533802932220300

/-! ## A052845.P6645420119990130926

`A114329(∑[n])`
-/

namespace A052845.P6645420119990130926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114329 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052845.P6645420119990130926

/-! ## A052845.P6269454041142168419

`A293053(∑[n+2]-1)`
-/

namespace A052845.P6269454041142168419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A052845.P6269454041142168419

/-! ## A052845.P2445516365820360871

`abs(A293133(∑[n+2]-1))`
-/

namespace A052845.P2445516365820360871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293133 (∑ j ∈ Finset.range (n + 1), f1 j - 1)|

end

end A052845.P2445516365820360871

/-! ## A052845.P7477021779700122261

`A033999(n)*A293120(n)`
-/

namespace A052845.P7477021779700122261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293120 n

end

end A052845.P7477021779700122261

/-! ## A052845.P16127376543731117954

`lcm(A007318(n), A293120(n))`
-/

namespace A052845.P16127376543731117954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A293120 n)

end

end A052845.P16127376543731117954

/-! ## A052845.P4778521465695107004

`lcm(A029579(n), A114329(A000217(n)))`
-/

namespace A052845.P4778521465695107004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029579 n) (A114329 (A000217 n).toNat)

end

end A052845.P4778521465695107004

/-! ## A052845.P18291506069135601443

`A144085(n)-A144086(n)`
-/

namespace A052845.P18291506069135601443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144085 n - A144086 n

end

end A052845.P18291506069135601443

/-!
# A052846: E.g.f.: (1-exp(x))*log(2-exp(x)).

The programs for A052846, there is no canonical definition to state claims against.
-/

/-! ## A052846.P16873540955133555264

`A347656(2^n)-∑[char[∑[n]]]`
-/

namespace A052846.P16873540955133555264
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 (2 ^ n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052846.P16873540955133555264

/-! ## A052846.P17448100466270300658

`A273884(A000248(n))`
-/

namespace A052846.P17448100466270300658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273884 (A000248 n).toNat

end

end A052846.P17448100466270300658

/-!
# A052847: G.f.: 1 / Product_{k>=1} (1-x^k)^(k-1).

The programs for A052847, there is no canonical definition to state claims against.
-/

/-! ## A052847.P1650256706544965445

`A081285(A064999(n))`
-/

namespace A052847.P1650256706544965445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081285 (A064999 n).toNat

end

end A052847.P1650256706544965445

/-! ## A052847.P9877839626738492654

`A081285(A033547(n)+1)`
-/

namespace A052847.P9877839626738492654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081285 (A033547 n + 1).toNat

end

end A052847.P9877839626738492654

/-! ## A052847.P12467634217688356655

`A081285(or(1, A033547(n)))`
-/

namespace A052847.P12467634217688356655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081285 (Int.lor 1 (A033547 n)).toNat

end

end A052847.P12467634217688356655

/-! ## A052847.P18327632456138534437

`A081285(xor(1, A033547(n)))`
-/

namespace A052847.P18327632456138534437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081285 (Int.xor 1 (A033547 n)).toNat

end

end A052847.P18327632456138534437

/-! ## A052847.P7704456156030706767

`A081285(∑[A028310(∑[2*n])])`
-/

namespace A052847.P7704456156030706767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081285 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052847.P7704456156030706767

/-!
# A052848: Number of ordered set partitions with a designated element in each block and no block containing less than two elements.

The programs for A052848, there is no canonical definition to state claims against.
-/

/-! ## A052848.P2093398241048096812

`A392817(∑[n+1]+n)`
-/

namespace A052848.P2093398241048096812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392817 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A052848.P2093398241048096812

/-! ## A052848.P8666791786034673413

`A355666(∑[n+2]-1)`
-/

namespace A052848.P8666791786034673413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A052848.P8666791786034673413

/-! ## A052848.P15442368022058565348

`A355666(A034856(n+1))^A178334(n)`
-/

namespace A052848.P15442368022058565348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355666 (A034856 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A052848.P15442368022058565348

/-! ## A052848.P423540766251208460

`gcd(A000038(n), A355666(A034856(n+1)))`
-/

namespace A052848.P423540766251208460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A355666 (A034856 (n + 1)).toNat)

end

end A052848.P423540766251208460

/-! ## A052848.P13062583324575847087

`A355666(A034856(n+1))+C(n, A005912(n))`
-/

namespace A052848.P13062583324575847087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 (A034856 (n + 1)).toNat + (Nat.choose n (A005912 n).toNat : ℤ)

end

end A052848.P13062583324575847087

/-! ## A052848.P9491046758470111210

`A355666(A034856(n+1))+C(n, A062695(n+1))`
-/

namespace A052848.P9491046758470111210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 (A034856 (n + 1)).toNat + (Nat.choose n (A062695 (n + 1)).toNat : ℤ)

end

end A052848.P9491046758470111210

/-! ## A052848.P1242639152128616678

`A355666(A034856(n+1))+C(n, A080076(n+1))`
-/

namespace A052848.P1242639152128616678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 (A034856 (n + 1)).toNat + (Nat.choose n (A080076 (n + 1)).toNat : ℤ)

end

end A052848.P1242639152128616678

/-! ## A052848.P16838696000150580363

`A355666(A034856(n+1))+C(n, A303551(n+1))`
-/

namespace A052848.P16838696000150580363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 (A034856 (n + 1)).toNat + (Nat.choose n (A303551 (n + 1)).toNat : ℤ)

end

end A052848.P16838696000150580363

/-!
# A052849: a(0) = 0; a(n) = 2*n! (n >= 1).

The programs for A052849, there is no canonical definition to state claims against.
-/

/-! ## A052849.P420512838433844123

`lcm(n, 2*n!)`
-/

namespace A052849.P420512838433844123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * Nat.factorial n)

end

end A052849.P420512838433844123

/-! ## A052849.P4550314142985535402

`and(2*n!, -n)`
-/

namespace A052849.P4550314142985535402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * Nat.factorial n : ℤ) (-(n : ℤ))

end

end A052849.P4550314142985535402

/-! ## A052849.P1964501084898318862

`a(n-1)*n` with `a(0)=0, a(1)=2`
-/

namespace A052849.P1964501084898318862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) * n

end

end A052849.P1964501084898318862

/-! ## A052849.P17641820850755032633

`2%(n+2)*n!`
-/

namespace A052849.P17641820850755032633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 2) * Nat.factorial n

end

end A052849.P17641820850755032633

/-! ## A052849.P12067450115528788080

`2*n!%∑[n!]`
-/

namespace A052849.P12067450115528788080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A052849.P12067450115528788080

/-! ## A052849.P10729778900523051634

`n!*ceil(atan(2*n))`
-/

namespace A052849.P10729778900523051634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈Real.arctan (2 * n : ℝ)⌉

end

end A052849.P10729778900523051634

/-! ## A052849.P8738974524690444542

`2*n*abs(1-n)!`
-/

namespace A052849.P8738974524690444542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A052849.P8738974524690444542

/-! ## A052849.P4135289249581625588

`2*(n!-C(2, n+2))`
-/

namespace A052849.P4135289249581625588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.factorial n : ℤ) - (Nat.choose 2 (n + 2) : ℤ))

end

end A052849.P4135289249581625588

/-! ## A052849.P7595628821361014595

`2*xor(n!, C(2, n+2))`
-/

namespace A052849.P7595628821361014595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor (Nat.factorial n) (Nat.choose 2 (n + 2))

end

end A052849.P7595628821361014595

/-! ## A052849.P17398118471919009207

`and(n-2*n, 2*n!)`
-/

namespace A052849.P17398118471919009207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - (2 * n : ℤ)) (2 * Nat.factorial n : ℤ)

end

end A052849.P17398118471919009207

/-!
# A052850: E.g.f.: x/(1-x)+log((1-x)/(1-2*x)).

The programs for A052850, there is no canonical definition to state claims against.
-/

/-! ## A052850.P8812436013332273055

`record[A199660(n)]-C(2, n+2)`
-/

namespace A052850.P8812436013332273055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (Nat.choose 2 (n + 2) : ℤ)

end

end A052850.P8812436013332273055

/-! ## A052850.P12375709234828195819

`record[A199660(n)]*A057427(n)`
-/

namespace A052850.P12375709234828195819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A057427 n

end

end A052850.P12375709234828195819

/-! ## A052850.P7117961362950998196

`lcm(record[A199660(n)], A000120(n))`
-/

namespace A052850.P7117961362950998196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000120 n)

end

end A052850.P7117961362950998196

/-! ## A052850.P1137404970411200574

`A199660(2*n)-A000007(n)`
-/

namespace A052850.P1137404970411200574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 (2 * n) - A000007 n

end

end A052850.P1137404970411200574

/-! ## A052850.P14274935474143946139

`A057427(n)*A199660(2*n)`
-/

namespace A052850.P14274935474143946139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A199660 (2 * n)

end

end A052850.P14274935474143946139

/-! ## A052850.P1107579762224893850

`lcm(A002487(n), A199660(2*n))`
-/

namespace A052850.P1107579762224893850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002487 n) (A199660 (2 * n))

end

end A052850.P1107579762224893850

/-! ## A052850.P11899708986960286050

`A029767(n)+n*A104150(n)`
-/

namespace A052850.P11899708986960286050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 n + (n : ℤ) * A104150 n

end

end A052850.P11899708986960286050

/-! ## A052850.P8972619905917001817

`A199660(2*n)-A138518(n)%2`
-/

namespace A052850.P8972619905917001817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 (2 * n) - Int.tmod (A138518 n) 2

end

end A052850.P8972619905917001817

/-! ## A052850.P11694773609699142413

`A130654(2*n+1)*A199660(2*n)`
-/

namespace A052850.P11694773609699142413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (2 * n + 1) * A199660 (2 * n)

end

end A052850.P11694773609699142413

/-! ## A052850.P3672450756066073901

`A199660(2*n)+n-A003056(∑[n]+1)`
-/

namespace A052850.P3672450756066073901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 (2 * n) + ((n : ℤ) - A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A052850.P3672450756066073901

/-!
# A052851: Expansion of e.g.f. 1/2 - (1/2)*(1+4*log(1-x))^(1/2).

The programs for A052851, there is no canonical definition to state claims against.
-/

/-! ## A052851.P2322727517878920717

`A289469(a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A052851.P2322727517878920717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A289469 (a (n - 1)).toNat

end

end A052851.P2322727517878920717

/-!
# A052852: Expansion of e.g.f.: (x/(1-x))*exp(x/(1-x)).

The programs for A052852, there is no canonical definition to state claims against.
-/

/-! ## A052852.P15957266175250015030

`A288268(n+1)`
-/

namespace A052852.P15957266175250015030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 (n + 1)

end

end A052852.P15957266175250015030

/-! ## A052852.P3493435303711834839

`lcm(n, A288869(n))`
-/

namespace A052852.P3493435303711834839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A288869 n)

end

end A052852.P3493435303711834839

/-! ## A052852.P16688021067820749284

`record[A288268(abs(1-n))]`
-/

namespace A052852.P16688021067820749284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052852.P16688021067820749284

/-! ## A052852.P1931313231624660089

`n*A002720(abs(1-n))`
-/

namespace A052852.P1931313231624660089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002720 |1 - (n : ℤ)|.toNat

end

end A052852.P1931313231624660089

/-! ## A052852.P16938085594984491162

`(A002720(n)+(n-1)*a(n-1))/2` with `a(0)=0`
-/

namespace A052852.P16938085594984491162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((A002720 n : ℚ) + ((n : ℤ) - 1 : ℚ) * a (n - 1)) / 2

end

end A052852.P16938085594984491162

/-! ## A052852.P10548464797111977260

`A000262(n)+n*a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A052852.P10548464797111977260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000262 n + (n : ℤ) * a (n - 1) - a (n - 1)

end

end A052852.P10548464797111977260

/-! ## A052852.P17234281449708196826

`A102290(n)+A102289(n)`
-/

namespace A052852.P17234281449708196826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102290 n + A102289 n

end

end A052852.P17234281449708196826

/-! ## A052852.P7750765439632695107

`A002720(n)-A000262(n)`
-/

namespace A052852.P7750765439632695107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A000262 n

end

end A052852.P7750765439632695107

/-! ## A052852.P8733727476210110264

`A002720(n)-abs(A293125(n))`
-/

namespace A052852.P8733727476210110264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - |A293125 n|

end

end A052852.P8733727476210110264

/-! ## A052852.P3387384173191905435

`A002720(n)-A129652(∑[n])`
-/

namespace A052852.P3387384173191905435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A129652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052852.P3387384173191905435

/-!
# A052853: A simple grammar.

The programs for A052853, there is no canonical definition to state claims against.
-/

/-! ## A052853.P3981109258916837833

`A308873(n)+A241086(∑[2*n])`
-/

namespace A052853.P3981109258916837833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308873 n + A241086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052853.P3981109258916837833

/-! ## A052853.P5006601657498104767

`A308911(n)+A241086(A002378(n))`
-/

namespace A052853.P5006601657498104767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308911 n + A241086 (A002378 n).toNat

end

end A052853.P5006601657498104767

/-! ## A052853.P7945446500505981600

`A034973(A150196(n))-A225643(n)`
-/

namespace A052853.P7945446500505981600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A150196 n).toNat - A225643 n

end

end A052853.P7945446500505981600

/-! ## A052853.P11916657228587878121

`A253092(A007504(n)*A036624(n))`
-/

namespace A052853.P11916657228587878121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A007504 n * A036624 n).toNat

end

end A052853.P11916657228587878121

/-!
# A052854: Number of forests of ordered trees on n total nodes.

The programs for A052854, there is no canonical definition to state claims against.
-/

/-! ## A052854.P12075949917519567542

`A090736(A032290(n+1))`
-/

namespace A052854.P12075949917519567542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090736 (A032290 (n + 1)).toNat

end

end A052854.P12075949917519567542

/-! ## A052854.P16346084245973423071

`A046098(A264701(n+1))+A007123(n+1)`
-/

namespace A052854.P16346084245973423071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046098 (A264701 (n + 1)).toNat + A007123 (n + 1)

end

end A052854.P16346084245973423071

/-! ## A052854.P4686700979156325732

`A252459(A270831(3*(n+1)))+A007123(n+1)`
-/

namespace A052854.P4686700979156325732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A270831 (3 * (n + 1))).toNat + A007123 (n + 1)

end

end A052854.P4686700979156325732

/-! ## A052854.P12333474639350308457

`A245900(n+1)-∑[A001592(n)]`
-/

namespace A052854.P12333474639350308457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052854.P12333474639350308457

/-!
# A052855: Number of forests of rooted trees of nonempty sets with n points. (Each node is a set of 1 or more points.)

The programs for A052855, there is no canonical definition to state claims against.
-/

/-! ## A052855.P15479670892958069738

`Δ[A036249(n)]`
-/

namespace A052855.P15479670892958069738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052855.P15479670892958069738

/-! ## A052855.P7832492109282632606

`A036249(n+1)-A036249(n)`
-/

namespace A052855.P7832492109282632606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (n + 1) - A036249 n

end

end A052855.P7832492109282632606

/-! ## A052855.P12846260113446006455

`record[A036249(A008676(n))]-A036249(n)`
-/

namespace A052855.P12846260113446006455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A008676 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A036249 n

end

end A052855.P12846260113446006455

/-! ## A052855.P17133002376179615924

`record[A036249(A103221(n))]-A036249(n)`
-/

namespace A052855.P17133002376179615924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A036249 n

end

end A052855.P17133002376179615924

/-! ## A052855.P2510210975581423869

`record[A036249(A134478(n))]-A036249(n)`
-/

namespace A052855.P2510210975581423869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A036249 n

end

end A052855.P2510210975581423869

/-!
# A052856: E.g.f.: (1-3*exp(x)+exp(2*x))/(exp(x)-2).

The programs for A052856, there is no canonical definition to state claims against.
-/

/-! ## A052856.P6309300861003364316

`A102232(n)+2^n`
-/

namespace A052856.P6309300861003364316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102232 n + (2 ^ n : ℤ)

end

end A052856.P6309300861003364316

/-! ## A052856.P8377100929268617380

`∑{d}[n, A296975(#)]+1`
-/

namespace A052856.P8377100929268617380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296975 d + 1

end

end A052856.P8377100929268617380

/-! ## A052856.P15407914971978927347

`∑[ceil(A162509(n)/2)]`
-/

namespace A052856.P15407914971978927347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162509 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052856.P15407914971978927347

/-! ## A052856.P16884462542219498153

`record[1-Δ[A357868(n)]]`
-/

namespace A052856.P16884462542219498153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052856.P16884462542219498153

/-! ## A052856.P17333226441627597537

`floor(A000629(n)/2)+1`
-/

namespace A052856.P17333226441627597537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000629 n : ℚ) / 2⌋ + 1

end

end A052856.P17333226441627597537

/-! ## A052856.P11015843271899753024

`ceil(A002050(n)/2)+1`
-/

namespace A052856.P11015843271899753024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002050 n : ℚ) / 2⌉ + 1

end

end A052856.P11015843271899753024

/-! ## A052856.P75968776026688971

`round(A007047(n)/4)+1`
-/

namespace A052856.P75968776026688971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007047 n : ℚ) / 4) + 1

end

end A052856.P75968776026688971

/-! ## A052856.P3029459086276965129

`A000670(n)+ceil(abs(sin(n)))`
-/

namespace A052856.P3029459086276965129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n + ⌈|Real.sin (n : ℝ)|⌉

end

end A052856.P3029459086276965129

/-! ## A052856.P7216332134352719597

`A052875(n)-(floor(acot(n))-2)`
-/

namespace A052856.P7216332134352719597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 2)

end

end A052856.P7216332134352719597

/-! ## A052856.P5444910192115715348

`A122101(∑[n])+ceil(sin(n)²)`
-/

namespace A052856.P5444910192115715348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A052856.P5444910192115715348

/-!
# A052857: A simple grammar. a(n)=n*A052873(n-1).

The programs for A052857, there is no canonical definition to state claims against.
-/

/-! ## A052857.P10499177776592728057

`A253286(A004277(n²))`
-/

namespace A052857.P10499177776592728057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A004277 (n ^ 2)).toNat

end

end A052857.P10499177776592728057

/-! ## A052857.P14131098592920926322

`lcm(n, A253286(A001105(n)))`
-/

namespace A052857.P14131098592920926322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A253286 (A001105 n).toNat)

end

end A052857.P14131098592920926322

/-! ## A052857.P7729499811096751777

`A253286(A247375(A004277(n)))`
-/

namespace A052857.P7729499811096751777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A247375 (A004277 n).toNat).toNat

end

end A052857.P7729499811096751777

/-! ## A052857.P9454574518512855747

`A253286(A058331(n)+A057428(n))`
-/

namespace A052857.P9454574518512855747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A058331 n + A057428 n).toNat

end

end A052857.P9454574518512855747

/-! ## A052857.P6932599695117604780

`A253286(A058331(n)-A057427(n))`
-/

namespace A052857.P6932599695117604780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A058331 n - A057427 n).toNat

end

end A052857.P6932599695117604780

/-!
# A052858: Expansion of e.g.f. log(-1/(-1+x*exp(x)-x)).

The programs for A052858, there is no canonical definition to state claims against.
-/

/-! ## A052858.P16449981531519452022

`n*A046029(A262924(n))`
-/

namespace A052858.P16449981531519452022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046029 (A262924 n).toNat

end

end A052858.P16449981531519452022

/-! ## A052858.P18257773669831396396

`n*A262249(A324768(n+1))`
-/

namespace A052858.P18257773669831396396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A262249 (A324768 (n + 1)).toNat

end

end A052858.P18257773669831396396

/-!
# A052859: Expansion of e.g.f.: exp(exp(2*x) - 2*exp(x) + 1).

The programs for A052859, there is no canonical definition to state claims against.
-/

/-! ## A052859.P3511060317693659640

`A357869(∑[n+3])`
-/

namespace A052859.P3511060317693659640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052859.P3511060317693659640

/-! ## A052859.P17427882297730311420

`A067824(A002294(n))-char[1]`
-/

namespace A052859.P17427882297730311420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A002294 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052859.P17427882297730311420

/-!
# A052860: A simple grammar: rooted sequences of cycles.

The programs for A052860, there is no canonical definition to state claims against.
-/

/-! ## A052860.P17145469919341981776

`n*A007840(abs(1-n))`
-/

namespace A052860.P17145469919341981776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007840 |1 - (n : ℤ)|.toNat

end

end A052860.P17145469919341981776

/-! ## A052860.P17917541970055679979

`A007840(round(n²/(n+1)))*n`
-/

namespace A052860.P17917541970055679979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (n + 1 : ℚ))).toNat * (n : ℤ)

end

end A052860.P17917541970055679979

/-! ## A052860.P12594285012830697209

`n*A355652(A212342(n))`
-/

namespace A052860.P12594285012830697209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A355652 (A212342 n).toNat

end

end A052860.P12594285012830697209

/-! ## A052860.P2340301187732879777

`(n*A355665(A212342(n)))%A052801(n)`
-/

namespace A052860.P2340301187732879777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A355665 (A212342 n).toNat) (A052801 n)

end

end A052860.P2340301187732879777

/-! ## A052860.P13877640245943647348

`lcm(n, A291978(A000124(n)))`
-/

namespace A052860.P13877640245943647348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A291978 (A000124 n).toNat)

end

end A052860.P13877640245943647348

/-!
# A052861: E.g.f.: log((1-x)/(1-2*x))*x/(1-x).

The programs for A052861, there is no canonical definition to state claims against.
-/

/-! ## A052861.P1807654665451645128

`A052840(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A052861.P1807654665451645128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052840 n + (n : ℤ) * a (n - 1)

end

end A052861.P1807654665451645128

/-! ## A052861.P17350973399602843425

`A343609(record[A152151(n)])`
-/

namespace A052861.P17350973399602843425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052861.P17350973399602843425

/-!
# A052862: Expansion of e.g.f. log(-1/(-2+exp(x)))*x.

The programs for A052862, there is no canonical definition to state claims against.
-/

/-! ## A052862.P8550195427679696785

`n*A129062(∑[n-1]+2)`
-/

namespace A052862.P8550195427679696785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A129062 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A052862.P8550195427679696785

/-! ## A052862.P13740003362318455431

`(n-char[1])*A000629(floor(n-atan(n)))`
-/

namespace A052862.P13740003362318455431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A000629 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A052862.P13740003362318455431

/-! ## A052862.P17999223285039928748

`A001405(n)*A048273(A328438(n))`
-/

namespace A052862.P17999223285039928748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A048273 (A328438 n).toNat

end

end A052862.P17999223285039928748

/-!
# A052863: Expansion of e.g.f. log(-1/(-1+x))*exp(x) - log(-1/(-1+x)).

The programs for A052863, there is no canonical definition to state claims against.
-/

/-! ## A052863.P11852313640967497646

`A002104(n)-(abs(1-n)!-floor(acot(n)))`
-/

namespace A052863.P11852313640967497646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n - ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A052863.P11852313640967497646

/-! ## A052863.P12697544715203787385

`A002104(n)-A104150(n)`
-/

namespace A052863.P12697544715203787385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n - A104150 n

end

end A052863.P12697544715203787385

/-! ## A052863.P14441833714959274921

`A002104(n)-A116447(A004273(n))`
-/

namespace A052863.P14441833714959274921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n - A116447 (A004273 n).toNat

end

end A052863.P14441833714959274921

/-! ## A052863.P9114820700996764587

`A002104(n)-A132393(A000124(n))`
-/

namespace A052863.P9114820700996764587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n - A132393 (A000124 n).toNat

end

end A052863.P9114820700996764587

/-! ## A052863.P16166623443653635417

`A006231(n+1)-(A104150(n)+A038154(n))`
-/

namespace A052863.P16166623443653635417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006231 (n + 1) - (A104150 n + A038154 n)

end

end A052863.P16166623443653635417

/-!
# A052864: E.g.f.: (log(1-x))^2/(1+log(1-x)).

The programs for A052864, there is no canonical definition to state claims against.
-/

/-! ## A052864.P6224640810074120198

`A007840(n)-abs(1-n)!`
-/

namespace A052864.P6224640810074120198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n - (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

end

end A052864.P6224640810074120198

/-! ## A052864.P3027959311162314095

`A007840(n)-A081123(A004275(n))`
-/

namespace A052864.P3027959311162314095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n - A081123 (A004275 n).toNat

end

end A052864.P3027959311162314095

/-! ## A052864.P8790711790090570505

`A007840(n)-A098361(A000124(n))`
-/

namespace A052864.P8790711790090570505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n - A098361 (A000124 n).toNat

end

end A052864.P8790711790090570505

/-! ## A052864.P11991853551294064076

`A007840(n)-A104150(A028310(n))`
-/

namespace A052864.P11991853551294064076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n - A104150 (A028310 n).toNat

end

end A052864.P11991853551294064076

/-! ## A052864.P15565102509960902393

`A052835(n)-A098361(A055998(n))`
-/

namespace A052864.P15565102509960902393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052835 n - A098361 (A055998 n).toNat

end

end A052864.P15565102509960902393

/-! ## A052864.P7598688077170202876

`A007840(n)-A047920(A161680(n))`
-/

namespace A052864.P7598688077170202876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n - A047920 (A161680 n).toNat

end

end A052864.P7598688077170202876

/-! ## A052864.P3436412163657987484

`A007840(n)-A104150(A233583(n+1))`
-/

namespace A052864.P3436412163657987484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n - A104150 (A233583 (n + 1)).toNat

end

end A052864.P3436412163657987484

/-! ## A052864.P15467417295964315675

`A007840(n)-A188881(A152947(n+1))`
-/

namespace A052864.P15467417295964315675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n - A188881 (A152947 (n + 1)).toNat

end

end A052864.P15467417295964315675

/-! ## A052864.P16703136197803425911

`(A218817(A028310(n))-A000142(n))/A028310(n)`
-/

namespace A052864.P16703136197803425911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218817 (A028310 n).toNat - A000142 n : ℚ) / (A028310 n : ℚ)

end

end A052864.P16703136197803425911

/-!
# A052865: E.g.f.: log(-1/(-1+x))^2 / (-1 + log(-1/(-1+x)))^2.

The programs for A052865, there is no canonical definition to state claims against.
-/

/-! ## A052865.P5193195864669044654

`(2*A215916(n))%A052801(n)`
-/

namespace A052865.P5193195864669044654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A215916 n) (A052801 n)

end

end A052865.P5193195864669044654

/-! ## A052865.P10516914819302244165

`Δ[A007840(n)]%A052860(n+1)`
-/

namespace A052865.P10516914819302244165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A052860 (n + 1))

end

end A052865.P10516914819302244165

/-! ## A052865.P13413253052682753503

`A215916(A028310(n))-A007840(n)`
-/

namespace A052865.P13413253052682753503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215916 (A028310 n).toNat - A007840 n

end

end A052865.P13413253052682753503

/-! ## A052865.P5763664047726273830

`A215916(A123108(2*n))-A007840(n)`
-/

namespace A052865.P5763664047726273830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215916 (A123108 (2 * n)).toNat - A007840 n

end

end A052865.P5763664047726273830

/-! ## A052865.P3475972595778166795

`A215916(A000007(n)+n)-A007840(n)`
-/

namespace A052865.P3475972595778166795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215916 (A000007 n + (n : ℤ)).toNat - A007840 n

end

end A052865.P3475972595778166795

/-! ## A052865.P16542089991825942476

`A215916(n)-A007840(n)%A052801(n)`
-/

namespace A052865.P16542089991825942476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215916 n - Int.tmod (A007840 n) (A052801 n)

end

end A052865.P16542089991825942476

/-!
# A052866: Expansion of e.g.f. x/(1 - x) + exp(x/(1 - x)).

The programs for A052866, there is no canonical definition to state claims against.
-/

/-! ## A052866.P8731989551328763974

`A288268(n)+n*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A052866.P8731989551328763974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A288268 n + (n : ℤ) * a (n - 1)

end

end A052866.P8731989551328763974

/-! ## A052866.P14988473694162886789

`A000262(n)+A052849(n)/2`
-/

namespace A052866.P14988473694162886789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 n : ℚ) + (A052849 n : ℚ) / 2

end

end A052866.P14988473694162886789

/-! ## A052866.P4584041256400140911

`A000262(n)+n*A104150(n)`
-/

namespace A052866.P4584041256400140911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n + (n : ℤ) * A104150 n

end

end A052866.P4584041256400140911

/-! ## A052866.P6061236189706293753

`A000262(n)+lcm(n, A000142(n))`
-/

namespace A052866.P6061236189706293753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n + (Int.lcm (n : ℤ) (A000142 n) : ℤ)

end

end A052866.P6061236189706293753

/-! ## A052866.P1745924268709596237

`n!+A000262(n)*A057427(n)`
-/

namespace A052866.P1745924268709596237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + A000262 n * A057427 n

end

end A052866.P1745924268709596237

/-! ## A052866.P3728775544373448656

`A271703(A000124(n))+A000262(n)`
-/

namespace A052866.P3728775544373448656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A000124 n).toNat + A000262 n

end

end A052866.P3728775544373448656

/-! ## A052866.P4189376722188128364

`A271703(Δ[A000125(n)])+A000262(n)`
-/

namespace A052866.P4189376722188128364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (f1 (n + 1) - f1 n).toNat + A000262 n

end

end A052866.P4189376722188128364

/-! ## A052866.P439107731030174811

`A000142(n)+A000262(n)-A000007(n)`
-/

namespace A052866.P439107731030174811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A000262 n - A000007 n)

end

end A052866.P439107731030174811

/-! ## A052866.P14462209722699857593

`A000262(n)+A007526(n)-A038156(n)`
-/

namespace A052866.P14462209722699857593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n + (A007526 n - A038156 n)

end

end A052866.P14462209722699857593

/-! ## A052866.P16765435567107449031

`A000262(n)+A000142(n)%A000522(n)`
-/

namespace A052866.P16765435567107449031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n + Int.tmod (A000142 n) (A000522 n)

end

end A052866.P16765435567107449031

/-!
# A052867: E.g.f.: log(-(-1+x)^2/(-1+2*x)).

The programs for A052867, there is no canonical definition to state claims against.
-/

/-! ## A052867.P18342847587146144000

`(2^n-1)*abs(1-n)!-(abs(1-n)!-floor(acot(n)))`
-/

namespace A052867.P18342847587146144000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A052867.P18342847587146144000

/-! ## A052867.P14332729949252399771

`(2^n-2)*A104150(n)`
-/

namespace A052867.P14332729949252399771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 2) * A104150 n

end

end A052867.P14332729949252399771

/-! ## A052867.P3799635243742834322

`A029767(n)-(abs(1-n)!-floor(acot(n)))`
-/

namespace A052867.P3799635243742834322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 n - ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A052867.P3799635243742834322

/-! ## A052867.P5918633282088085

`(abs(1-n)!-floor(acot(n)))*(A000225(n)-1)`
-/

namespace A052867.P5918633282088085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋) * (A000225 n - 1)

end

end A052867.P5918633282088085

/-! ## A052867.P5133351900485101751

`A029767(n)-A104150(n)`
-/

namespace A052867.P5133351900485101751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 n - A104150 n

end

end A052867.P5133351900485101751

/-! ## A052867.P12886143649224966747

`A131222(∑[n]+1)-A104150(n)`
-/

namespace A052867.P12886143649224966747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131222 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A104150 n

end

end A052867.P12886143649224966747

/-! ## A052867.P606511296720235044

`A000918(n)*A084938(A000124(n))`
-/

namespace A052867.P606511296720235044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n * A084938 (A000124 n).toNat

end

end A052867.P606511296720235044

/-! ## A052867.P15570746029557625271

`A104150(n)*A131689(A133263(n))`
-/

namespace A052867.P15570746029557625271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n * A131689 (A133263 n).toNat

end

end A052867.P15570746029557625271

/-! ## A052867.P15200804598795284639

`A029767(A028310(n))-A000142(n)/A028310(n)`
-/

namespace A052867.P15200804598795284639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029767 (A028310 n).toNat : ℚ) - (A000142 n : ℚ) / (A028310 n : ℚ)

end

end A052867.P15200804598795284639

/-! ## A052867.P2066347412955353535

`A029767(n)-A156815(A000124(n))`
-/

namespace A052867.P2066347412955353535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 n - A156815 (A000124 n).toNat

end

end A052867.P2066347412955353535

/-!
# A052868: Expansion of e.g.f. LambertW(x/(-1+x))/x*(-1+x).

The programs for A052868, there is no canonical definition to state claims against.
-/

/-! ## A052868.P12114909725197325911

`A352410(n)-A052871(n)`
-/

namespace A052868.P12114909725197325911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352410 n - A052871 n

end

end A052868.P12114909725197325911

/-! ## A052868.P7027530844667319217

`A323772(n+1)-A331726(n)-A052871(n)`
-/

namespace A052868.P7027530844667319217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323772 (n + 1) - A331726 n - A052871 n

end

end A052868.P7027530844667319217

/-! ## A052868.P17816585591130202420

`A352410(n)+A052871(n)*A321800(A000377(n))`
-/

namespace A052868.P17816585591130202420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352410 n + A052871 n * A321800 (A000377 n).toNat

end

end A052868.P17816585591130202420

/-! ## A052868.P6303218734630090997

`A052871(n+1)/(n+1)-A052871(n)`
-/

namespace A052868.P6303218734630090997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052871 (n + 1) : ℚ) / (n + 1 : ℚ) - (A052871 n : ℚ)

end

end A052868.P6303218734630090997

/-!
# A052869: A simple grammar.

The programs for A052869, there is no canonical definition to state claims against.
-/

/-! ## A052869.P13085652427485297623

`A083382(A007053(2*(n+1))-A181545(n))`
-/

namespace A052869.P13085652427485297623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A007053 (2 * (n + 1)) - A181545 n).toNat

end

end A052869.P13085652427485297623

/-!
# A052870: First differences of A052829.

The programs for A052870, there is no canonical definition to state claims against.
-/

/-! ## A052870.P9939709570903570929

`Δ[A052829(n)]`
-/

namespace A052870.P9939709570903570929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052870.P9939709570903570929

/-! ## A052870.P3818407142012052680

`A052829(n+1)-A052829(n)`
-/

namespace A052870.P3818407142012052680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052829 (n + 1) - A052829 n

end

end A052870.P3818407142012052680

/-! ## A052870.P15046033562365711380

`A052829(n+1)+A052829(n)*A321800(A050603(n))`
-/

namespace A052870.P15046033562365711380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052829 (n + 1) + A052829 n * A321800 (A050603 n).toNat

end

end A052870.P15046033562365711380

/-! ## A052870.P13603959513614959152

`A062108(A109085(n)+∑{p}[n+1, ceil(n/#)])`
-/

namespace A052870.P13603959513614959152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A109085 n + ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉).toNat

end

end A052870.P13603959513614959152

/-!
# A052871: Expansion of e.g.f. -LambertW(x/(-1+x)).

The programs for A052871, there is no canonical definition to state claims against.
-/

/-! ## A052871.P4318935116841275680

`n*A352410(abs(1-n))`
-/

namespace A052871.P4318935116841275680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A352410 |1 - (n : ℤ)|.toNat

end

end A052871.P4318935116841275680

/-! ## A052871.P1265407640563750902

`A352410(n)-A052868(n)`
-/

namespace A052871.P1265407640563750902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352410 n - A052868 n

end

end A052871.P1265407640563750902

/-! ## A052871.P9749379946075393288

`A323772(n+1)-A331726(n)-A052868(n)`
-/

namespace A052871.P9749379946075393288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323772 (n + 1) - A331726 n - A052868 n

end

end A052871.P9749379946075393288

/-!
# A052872: A simple grammar.

The programs for A052872, there is no canonical definition to state claims against.
-/

/-! ## A052872.P3829992955238468105

`A350690(A123922(n))`
-/

namespace A052872.P3829992955238468105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350690 (A123922 n).toNat

end

end A052872.P3829992955238468105

/-! ## A052872.P11135297537473183834

`A350348(A192206(n))`
-/

namespace A052872.P11135297537473183834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A192206 n).toNat

end

end A052872.P11135297537473183834

/-! ## A052872.P16943421590439024328

`A008616(round(sqrt(A222909(n+1))))`
-/

namespace A052872.P16943421590439024328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.roundAway (Real.sqrt (A222909 (n + 1) : ℝ))).toNat

end

end A052872.P16943421590439024328

/-!
# A052873: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/(1 - x*A(x))).

The programs for A052873, there is no canonical definition to state claims against.
-/

/-! ## A052873.P11369019358714238817

`A052857(n+1)/(n+1)`
-/

namespace A052873.P11369019358714238817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052857 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052873.P11369019358714238817

/-! ## A052873.P4740160237311152561

`A253286(A001105(n+1))/(n+1)`
-/

namespace A052873.P4740160237311152561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253286 (A001105 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A052873.P4740160237311152561

/-!
# A052874: E.g.f.: -x/(-1+x)*(exp(-x/(-1+x))-1).

The programs for A052874, there is no canonical definition to state claims against.
-/

/-! ## A052874.P2698334099063952072

`A002720(n)-A052866(n)`
-/

namespace A052874.P2698334099063952072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A052866 n

end

end A052874.P2698334099063952072

/-! ## A052874.P9821494295621972360

`A059110(A000124(n))-n!`
-/

namespace A052874.P9821494295621972360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (A000124 n).toNat - (Nat.factorial n : ℤ)

end

end A052874.P9821494295621972360

/-! ## A052874.P4446786501341691693

`A052852(A028310(n))-n!`
-/

namespace A052874.P4446786501341691693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 (A028310 n).toNat - (Nat.factorial n : ℤ)

end

end A052874.P4446786501341691693

/-! ## A052874.P6308620044610226197

`A097662(n)+1-A052866(n)`
-/

namespace A052874.P6308620044610226197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097662 n + (1 - A052866 n)

end

end A052874.P6308620044610226197

/-! ## A052874.P15115197507027585862

`A056953(2*n)-A052866(n)`
-/

namespace A052874.P15115197507027585862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (2 * n) - A052866 n

end

end A052874.P15115197507027585862

/-! ## A052874.P11321279065633020792

`A059110(A000124(n))-A000142(n)`
-/

namespace A052874.P11321279065633020792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (A000124 n).toNat - A000142 n

end

end A052874.P11321279065633020792

/-! ## A052874.P17212783267426017812

`A052852(A028310(n))-A000142(n)`
-/

namespace A052874.P17212783267426017812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 (A028310 n).toNat - A000142 n

end

end A052874.P17212783267426017812

/-! ## A052874.P11823979599391508058

`A176120(A027379(n))-A000142(n)`
-/

namespace A052874.P11823979599391508058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A027379 n).toNat - A000142 n

end

end A052874.P11823979599391508058

/-! ## A052874.P6572995798221105866

`record[A056953(A056944(n))]-A052866(n)`
-/

namespace A052874.P6572995798221105866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (A056944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A052866 n

end

end A052874.P6572995798221105866

/-! ## A052874.P10682752287676976915

`A000007(n)+A052852(n)-A000142(n)`
-/

namespace A052874.P10682752287676976915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A052852 n - A000142 n)

end

end A052874.P10682752287676976915

/-!
# A052875: E.g.f.: (exp(x)-1)^2/(2-exp(x)).

The programs for A052875, there is no canonical definition to state claims against.
-/

/-! ## A052875.P13790807169799948261

`A000670(n)-1`
-/

namespace A052875.P13790807169799948261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - 1

end

end A052875.P13790807169799948261

/-! ## A052875.P2851913365171479057

`floor(A002050(n)/2)`
-/

namespace A052875.P2851913365171479057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002050 n : ℚ) / 2⌋

end

end A052875.P2851913365171479057

/-! ## A052875.P13818675999767337598

`floor(A007047(n)/4)`
-/

namespace A052875.P13818675999767337598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007047 n : ℚ) / 4⌋

end

end A052875.P13818675999767337598

/-! ## A052875.P12165020329197862437

`A073146(∑[n])-1`
-/

namespace A052875.P12165020329197862437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A052875.P12165020329197862437

/-! ## A052875.P3841603932360968141

`A122101(∑[n])-1`
-/

namespace A052875.P3841603932360968141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A052875.P3841603932360968141

/-! ## A052875.P3620346304350953000

`A154921(∑[n])-1`
-/

namespace A052875.P3620346304350953000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A052875.P3620346304350953000

/-! ## A052875.P270280553530423368

`2*(A032109(n)-1)`
-/

namespace A052875.P270280553530423368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032109 n - 1)

end

end A052875.P270280553530423368

/-! ## A052875.P9121928904403496041

`A076726(n)/2-1`
-/

namespace A052875.P9121928904403496041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 - 1

end

end A052875.P9121928904403496041

/-! ## A052875.P13377497283901191670

`∑[floor(A162509(n)/2)]`
-/

namespace A052875.P13377497283901191670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162509 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052875.P13377497283901191670

/-! ## A052875.P2275771108644942571

`floor((A000629(n)-1)/2)`
-/

namespace A052875.P2275771108644942571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000629 n - 1 : ℚ) / 2⌋

end

end A052875.P2275771108644942571

/-!
# A052876: Expansion of e.g.f. (exp(x)-1)^2/(-2+exp(x))^2.

The programs for A052876, there is no canonical definition to state claims against.
-/

/-! ## A052876.P9356210554820583148

`2*A091106(n)+2`
-/

namespace A052876.P9356210554820583148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091106 n + 2

end

end A052876.P9356210554820583148

/-! ## A052876.P7423132743156745134

`A069321(n)-A000670(n)`
-/

namespace A052876.P7423132743156745134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 n - A000670 n

end

end A052876.P7423132743156745134

/-! ## A052876.P17074447362931356299

`2*A083411(A028310(n))`
-/

namespace A052876.P17074447362931356299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083411 (A028310 n).toNat

end

end A052876.P17074447362931356299

/-! ## A052876.P11284461698182578234

`A005649(n)-A000629(n)`
-/

namespace A052876.P11284461698182578234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n - A000629 n

end

end A052876.P11284461698182578234

/-! ## A052876.P535642074542908670

`Δ[A000670(n)]%A005649(n)`
-/

namespace A052876.P535642074542908670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A005649 n)

end

end A052876.P535642074542908670

/-! ## A052876.P7388660239806270453

`2*A083411(A123108(2*n))`
-/

namespace A052876.P7388660239806270453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083411 (A123108 (2 * n)).toNat

end

end A052876.P7388660239806270453

/-! ## A052876.P13587917698489632246

`A069321(n)-(A052875(n)+1)`
-/

namespace A052876.P13587917698489632246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 n - (A052875 n + 1)

end

end A052876.P13587917698489632246

/-! ## A052876.P11908111727488543339

`2*A083411(A000007(n)+n)`
-/

namespace A052876.P11908111727488543339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083411 (A000007 n + (n : ℤ)).toNat

end

end A052876.P11908111727488543339

/-! ## A052876.P14689497688716775601

`A327868(2*n)-A000629(n)`
-/

namespace A052876.P14689497688716775601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (2 * n) - A000629 n

end

end A052876.P14689497688716775601

/-! ## A052876.P2551669013794042693

`A069321(n)-round(A000629(n)/2)`
-/

namespace A052876.P2551669013794042693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 n - SequenceMachineLib.roundAway ((A000629 n : ℚ) / 2)

end

end A052876.P2551669013794042693

/-!
# A052877: E.g.f.: exp(x)-1+log(-1/(-2+exp(x))).

The programs for A052877, there is no canonical definition to state claims against.
-/

/-! ## A052877.P13873905972615836490

`A129062(A000124(n))+A057427(n)`
-/

namespace A052877.P13873905972615836490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (A000124 n).toNat + A057427 n

end

end A052877.P13873905972615836490

/-! ## A052877.P8244605890626438968

`A178334(n)+A129062(A000124(n))`
-/

namespace A052877.P8244605890626438968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A129062 (A000124 n).toNat

end

end A052877.P8244605890626438968

/-! ## A052877.P5102512150700203159

`A178489(n)+A129062(A000124(n))`
-/

namespace A052877.P5102512150700203159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A129062 (A000124 n).toNat

end

end A052877.P5102512150700203159

/-! ## A052877.P2654298649901992392

`A129062(A000124(n))-A057428(n)`
-/

namespace A052877.P2654298649901992392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (A000124 n).toNat - A057428 n

end

end A052877.P2654298649901992392

/-! ## A052877.P15716086573512915128

`A129062(A000124(n))+A001221(A001316(n))`
-/

namespace A052877.P15716086573512915128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (A000124 n).toNat + A001221 (A001316 n).toNat

end

end A052877.P15716086573512915128

/-!
# A052878: E.g.f.: log((1-x)/(1-3*x+x^2)).

The programs for A052878, there is no canonical definition to state claims against.
-/

/-! ## A052878.P11171751299696370873

`floor(ϕ²^n)*A104150(n)`
-/

namespace A052878.P11171751299696370873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ 2) ^ n⌋ * A104150 n

end

end A052878.P11171751299696370873

/-! ## A052878.P3173606006703809461

`A328055(n)+A104150(n)`
-/

namespace A052878.P3173606006703809461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328055 n + A104150 n

end

end A052878.P3173606006703809461

/-! ## A052878.P9708825915294834215

`A104150(n)*A324015(2*n)`
-/

namespace A052878.P9708825915294834215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n * A324015 (2 * n)

end

end A052878.P9708825915294834215

/-! ## A052878.P122997691958407529

`A005592(n)*A084938(A000124(n))`
-/

namespace A052878.P122997691958407529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n * A084938 (A000124 n).toNat

end

end A052878.P122997691958407529

/-! ## A052878.P10620878346839207951

`A328055(n)+A156815(A000124(n))`
-/

namespace A052878.P10620878346839207951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328055 n + A156815 (A000124 n).toNat

end

end A052878.P10620878346839207951

/-!
# A052879: Number of objects generated by the Combstruct grammar defined in the Maple program. See the link for the grammar specification.

The programs for A052879, there is no canonical definition to state claims against.
-/

/-! ## A052879.P8937763353050846600

`A279562(n)+A242775(A279562(n))`
-/

namespace A052879.P8937763353050846600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279562 n + A242775 (A279562 n).toNat

end

end A052879.P8937763353050846600

/-! ## A052879.P11069327766025896870

`A279562(n)+A072273(A003659(n+1))`
-/

namespace A052879.P11069327766025896870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279562 n + A072273 (A003659 (n + 1)).toNat

end

end A052879.P11069327766025896870

/-! ## A052879.P1844801602622667909

`A356225(A122536(n+1))+A279562(n)`
-/

namespace A052879.P1844801602622667909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (A122536 (n + 1)).toNat + A279562 n

end

end A052879.P1844801602622667909

/-!
# A052880: Expansion of e.g.f.: LambertW(1-exp(x))/(1-exp(x)).

The programs for A052880, there is no canonical definition to state claims against.
-/

/-! ## A052880.P2923776364325752488

`A135302(∑[4*n])`
-/

namespace A052880.P2923776364325752488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052880.P2923776364325752488

/-! ## A052880.P14369372083312933015

`A210918(n*gcd(11, n))`
-/

namespace A052880.P14369372083312933015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210918 (n * Nat.gcd 11 n)

end

end A052880.P14369372083312933015

/-! ## A052880.P11163042842255272386

`A210918(n^∑{p}[∏{e}[n+1, #+1], ceil(1/#)])`
-/

namespace A052880.P11163042842255272386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210918 (SequenceMachineLib.roundAway ((n : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ))).toNat

end

end A052880.P11163042842255272386

/-! ## A052880.P9925616925048662039

`A210918(A061378(n))`
-/

namespace A052880.P9925616925048662039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210918 (A061378 n).toNat

end

end A052880.P9925616925048662039

/-! ## A052880.P13509144131318050885

`A210918(A324666(∑[n]))`
-/

namespace A052880.P13509144131318050885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210918 (A324666 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A052880.P13509144131318050885

/-!
# A052881: Expansion of e.g.f. log(1/(1-x))*x/(1-x).

The programs for A052881, the canonical program `A052881.P1544893320658456069` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052881 has offset 0).

The definition of A052881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052881.P1544893320658456069

`n*a(n-1)+(n-1)!+(n-2)!` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052881

/-- `n*a(n-1)+(n-1)!+(n-2)!` -/
def P1544893320658456069.Spec : Prop :=
  ∀ n, (P1544893320658456069.a n : ℤ) = A052881 n

theorem P1544893320658456069.correct : P1544893320658456069.Spec := by
  intro n
  simp only [A052881]

end A052881

/-! ## A052881.P9136937325957764584

`a(n-1)*A000027(n)+A001048(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A052881.P9136937325957764584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) * A000027 n + A001048 (n - 1)

end

end A052881.P9136937325957764584

namespace A052881

/-- `a(n-1)*A000027(n)+A001048(n-1)` -/
def P9136937325957764584.Spec : Prop :=
  ∀ n, P9136937325957764584.a n = A052881 n

end A052881

/-! ## A052881.P4818593531271138641

`n*(a(n-1)+(n-2)!)` with `a(0)=0, a(1)=0`
-/

namespace A052881.P4818593531271138641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  n * (a (n - 1) + Nat.factorial ((n : ℤ) - 2).toNat)

end

end A052881.P4818593531271138641

namespace A052881

/-- `n*(a(n-1)+(n-2)!)` -/
def P4818593531271138641.Spec : Prop :=
  ∀ n, (P4818593531271138641.a n : ℤ) = A052881 n

end A052881

/-! ## A052881.P7202718709389890133

`A125062(n)-n!`
-/

namespace A052881.P7202718709389890133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125062 n - (Nat.factorial n : ℤ)

end

end A052881.P7202718709389890133

namespace A052881

/-- `A125062(n)-n!` -/
def P7202718709389890133.Spec : Prop :=
  ∀ n, P7202718709389890133.a n = A052881 n

end A052881

/-! ## A052881.P17581631944711621463

`n/2*A052517(n)`
-/

namespace A052881.P17581631944711621463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A052517 n : ℚ)

end

end A052881.P17581631944711621463

namespace A052881

/-- `n/2*A052517(n)` -/
def P17581631944711621463.Spec : Prop :=
  ∀ n, P17581631944711621463.a n = (A052881 n : ℚ)

end A052881

/-! ## A052881.P11541172305760534306

`A000254(n)-(abs(1-n)!-floor(acot(n)))`
-/

namespace A052881.P11541172305760534306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A052881.P11541172305760534306

namespace A052881

/-- `A000254(n)-(abs(1-n)!-floor(acot(n)))` -/
def P11541172305760534306.Spec : Prop :=
  ∀ n, P11541172305760534306.a n = A052881 n

end A052881

/-! ## A052881.P12790968299520016751

`A000254(n)-A104150(n)`
-/

namespace A052881.P12790968299520016751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A104150 n

end

end A052881.P12790968299520016751

namespace A052881

/-- `A000254(n)-A104150(n)` -/
def P12790968299520016751.Spec : Prop :=
  ∀ n, P12790968299520016751.a n = A052881 n

end A052881

/-! ## A052881.P16275032461663291367

`n*A132393(A133263(n))`
-/

namespace A052881.P16275032461663291367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A132393 (A133263 n).toNat

end

end A052881.P16275032461663291367

namespace A052881

/-- `n*A132393(A133263(n))` -/
def P16275032461663291367.Spec : Prop :=
  ∀ n, P16275032461663291367.a n = A052881 n

end A052881

/-! ## A052881.P17063978035748937013

`abs(A081048(n))-A104150(n)`
-/

namespace A052881.P17063978035748937013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - A104150 n

end

end A052881.P17063978035748937013

namespace A052881

/-- `abs(A081048(n))-A104150(n)` -/
def P17063978035748937013.Spec : Prop :=
  ∀ n, P17063978035748937013.a n = A052881 n

end A052881

/-! ## A052881.P10850512082549272887

`Δ[A104150(n)]-A081047(n)`
-/

namespace A052881.P10850512082549272887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081047 n

end

end A052881.P10850512082549272887

namespace A052881

/-- `Δ[A104150(n)]-A081047(n)` -/
def P10850512082549272887.Spec : Prop :=
  ∀ n, P10850512082549272887.a n = A052881 n

end A052881

/-!
# A052882: A simple grammar: rooted ordered set partitions.

The programs for A052882, there is no canonical definition to state claims against.
-/

/-! ## A052882.P3483442864915631095

`n*A122101(C(n, 2))`
-/

namespace A052882.P3483442864915631095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122101 (Nat.choose n 2)

end

end A052882.P3483442864915631095

/-! ## A052882.P7930106875726085476

`n*A154921(C(n, 2))`
-/

namespace A052882.P7930106875726085476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A154921 (Nat.choose n 2)

end

end A052882.P7930106875726085476

/-! ## A052882.P386164872582159279

`∑{d}[n, n*A006936(#)]`
-/

namespace A052882.P386164872582159279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A006936 d

end

end A052882.P386164872582159279

/-! ## A052882.P8964432162379759009

`n*A000670(abs(1-n))`
-/

namespace A052882.P8964432162379759009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000670 |1 - (n : ℤ)|.toNat

end

end A052882.P8964432162379759009

/-! ## A052882.P17419092585794489477

`A000670(n)-A053525(n)`
-/

namespace A052882.P17419092585794489477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A053525 n

end

end A052882.P17419092585794489477

/-! ## A052882.P4784491454604388031

`n*A122101(A161680(n))`
-/

namespace A052882.P4784491454604388031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122101 (A161680 n).toNat

end

end A052882.P4784491454604388031

/-! ## A052882.P6414492016187668052

`lcm(n, A154921(A000124(n)))`
-/

namespace A052882.P6414492016187668052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A154921 (A000124 n).toNat)

end

end A052882.P6414492016187668052

/-! ## A052882.P4431847007541405458

`A122101(∑[n])-A053525(n)`
-/

namespace A052882.P4431847007541405458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A053525 n

end

end A052882.P4431847007541405458

/-! ## A052882.P16678181079412243757

`A154921(∑[n])-A053525(n)`
-/

namespace A052882.P16678181079412243757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - A053525 n

end

end A052882.P16678181079412243757

/-! ## A052882.P2156293348430517625

`n*A122101(A000217(n)-n)`
-/

namespace A052882.P2156293348430517625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122101 (A000217 n - (n : ℤ)).toNat

end

end A052882.P2156293348430517625

/-!
# A052883: Expansion of e.g.f.: log((-1+x)/(-1+2*x))^2.

The programs for A052883, there is no canonical definition to state claims against.
-/

/-! ## A052883.P10789214019413058096

`2*A131222(∑[char[1]+n]+1)`
-/

namespace A052883.P10789214019413058096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052883.P10789214019413058096

/-! ## A052883.P8231118925032970447

`A172274(n*A305986(n))`
-/

namespace A052883.P8231118925032970447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172274 ((n : ℤ) * A305986 n).toNat

end

end A052883.P8231118925032970447

/-!
# A052884: Number of objects generated by the Combstruct grammar defined in the Maple program. See the link for the grammar specification.

The programs for A052884, there is no canonical definition to state claims against.
-/

/-! ## A052884.P11908319132660593121

`A062299(A137551(n)+A007317(n+1))`
-/

namespace A052884.P11908319132660593121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A137551 n + A007317 (n + 1)).toNat

end

end A052884.P11908319132660593121

/-! ## A052884.P210217454071576379

`A008676(A275909(n))`
-/

namespace A052884.P210217454071576379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A275909 n).toNat

end

end A052884.P210217454071576379

/-! ## A052884.P18154937861862135268

`A070106(A382503(n+2))`
-/

namespace A052884.P18154937861862135268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A382503 (n + 2)).toNat

end

end A052884.P18154937861862135268

/-!
# A052885: E.g.f. A(x) is inverse to F(x) = x*exp(-x)/(1+x).

The programs for A052885, there is no canonical definition to state claims against.
-/

/-! ## A052885.P17719490576798435108

`n*A088690(abs(1-n))`
-/

namespace A052885.P17719490576798435108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088690 |1 - (n : ℤ)|.toNat

end

end A052885.P17719490576798435108

/-! ## A052885.P10415324477552878114

`n*A007913(A293145(n))`
-/

namespace A052885.P10415324477552878114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007913 (A293145 n).toNat

end

end A052885.P10415324477552878114

/-!
# A052886: Expansion of e.g.f.: (1/2) - (1/2)*(5 - 4*exp(x))^(1/2).

The programs for A052886, there is no canonical definition to state claims against.
-/

/-! ## A052886.P4087330400351653242

`record[A366377(n+1)]`
-/

namespace A052886.P4087330400351653242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052886.P4087330400351653242

/-! ## A052886.P16819612277402213839

`A366377(A008578(n+1))`
-/

namespace A052886.P16819612277402213839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366377 (A008578 (n + 1)).toNat

end

end A052886.P16819612277402213839

/-! ## A052886.P17804730113132255693

`A366377(A015919(n+1))`
-/

namespace A052886.P17804730113132255693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366377 (A015919 (n + 1)).toNat

end

end A052886.P17804730113132255693

/-! ## A052886.P3678364764369240218

`A366377(A064555(n+1))`
-/

namespace A052886.P3678364764369240218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366377 (A064555 (n + 1)).toNat

end

end A052886.P3678364764369240218

/-! ## A052886.P7899252130858617786

`A366377(A324050(n+1))`
-/

namespace A052886.P7899252130858617786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366377 (A324050 (n + 1)).toNat

end

end A052886.P7899252130858617786

/-!
# A052887: Expansion of e.g.f.: exp(x^2/(1 - x)^2).

The programs for A052887, there is no canonical definition to state claims against.
-/

/-! ## A052887.P7426222123906268476

`A300236(A007051(n)+A014983(n)²)`
-/

namespace A052887.P7426222123906268476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (A007051 n + A014983 n ^ 2).toNat

end

end A052887.P7426222123906268476

/-! ## A052887.P875811278135696265

`A129301(A001519(n))-char[1]`
-/

namespace A052887.P875811278135696265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129301 (A001519 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052887.P875811278135696265

/-!
# A052888: E.g.f. is series reversion of log(1+x)*exp(-x).

The programs for A052888, there is no canonical definition to state claims against.
-/

/-! ## A052888.P15880382841335460024

`n^(abs(1-n)-n)*A242817(n)`
-/

namespace A052888.P15880382841335460024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| - (n : ℤ) : ℤ) * (A242817 n : ℚ)

end

end A052888.P15880382841335460024

/-! ## A052888.P9951447901310931086

`A052125(A242817(n))-A000007(n)`
-/

namespace A052888.P9951447901310931086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A242817 n).toNat - A000007 n

end

end A052888.P9951447901310931086

/-!
# A052889: Number of rooted set partitions.

The programs for A052889, there is no canonical definition to state claims against.
-/

/-! ## A052889.P17149187199206973552

`n*A011971(C(n, 2))`
-/

namespace A052889.P17149187199206973552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011971 (Nat.choose n 2)

end

end A052889.P17149187199206973552

/-! ## A052889.P12519024559181378787

`n*A095149(C(n, 2))`
-/

namespace A052889.P12519024559181378787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A095149 (Nat.choose n 2)

end

end A052889.P12519024559181378787

/-! ## A052889.P14468776411214643246

`n*A108087(C(n, 2))`
-/

namespace A052889.P14468776411214643246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108087 (Nat.choose n 2)

end

end A052889.P14468776411214643246

/-! ## A052889.P1928381035909223817

`n*A123081(C(n, 2))`
-/

namespace A052889.P1928381035909223817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123081 (Nat.choose n 2)

end

end A052889.P1928381035909223817

/-! ## A052889.P15893616903210359384

`n*A186020(C(n, 2))`
-/

namespace A052889.P15893616903210359384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186020 (Nat.choose n 2)

end

end A052889.P15893616903210359384

/-! ## A052889.P10234648993765652053

`n*A327884(C(n, 2))`
-/

namespace A052889.P10234648993765652053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327884 (Nat.choose n 2)

end

end A052889.P10234648993765652053

/-! ## A052889.P1893462439603793808

`n*A346426(C(n, 2))`
-/

namespace A052889.P1893462439603793808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A346426 (Nat.choose n 2)

end

end A052889.P1893462439603793808

/-! ## A052889.P11816404972638674672

`n*A346500(C(n, 2))`
-/

namespace A052889.P11816404972638674672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A346500 (Nat.choose n 2)

end

end A052889.P11816404972638674672

/-! ## A052889.P13331471556453649672

`n*A346517(C(n, 2))`
-/

namespace A052889.P13331471556453649672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A346517 (Nat.choose n 2)

end

end A052889.P13331471556453649672

/-! ## A052889.P6926346625296338005

`n*A346520(C(n, 2))`
-/

namespace A052889.P6926346625296338005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A346520 (Nat.choose n 2)

end

end A052889.P6926346625296338005

/-!
# A052890: A simple grammar.

The programs for A052890, there is no canonical definition to state claims against.
-/

/-! ## A052890.P6417499262061112258

`A248148(A014137(n)-n)`
-/

namespace A052890.P6417499262061112258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A014137 n - (n : ℤ)).toNat

end

end A052890.P6417499262061112258

/-! ## A052890.P1710884161789380773

`A248148(∑[A000108(n)]-n)`
-/

namespace A052890.P1710884161789380773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A052890.P1710884161789380773

/-! ## A052890.P8963568632956405964

`A248148(A014138(n)+1-n)`
-/

namespace A052890.P8963568632956405964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A014138 n + (1 - (n : ℤ))).toNat

end

end A052890.P8963568632956405964

/-! ## A052890.P14917557313259343994

`A348960(A014626(n))+A308329(n)`
-/

namespace A052890.P14917557313259343994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A014626 n).toNat + A308329 n

end

end A052890.P14917557313259343994

/-!
# A052891: Number of objects generated by the Combstruct grammar defined in the Maple program. See the link for the grammar specification.

The programs for A052891, there is no canonical definition to state claims against.
-/

/-! ## A052891.P9936460434514452478

`A103221(A335537(n)+floor(n/(n%2+1)))`
-/

namespace A052891.P9936460434514452478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A335537 n + ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋).toNat

end

end A052891.P9936460434514452478

/-! ## A052891.P1672814190335617463

`A120450(A151103(n))`
-/

namespace A052891.P1672814190335617463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120450 (A151103 n).toNat

end

end A052891.P1672814190335617463

/-! ## A052891.P1980955215168986390

`Δ[A001462(A008933(n))]`
-/

namespace A052891.P1980955215168986390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A008933 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052891.P1980955215168986390

/-!
# A052892: E.g.f. is series reversion of log(1+x)*(1-x).

The programs for A052892, there is no canonical definition to state claims against.
-/

/-! ## A052892.P11437380902943319634

`A097882(record[abs(xor(1, n-2))]^n)`
-/

namespace A052892.P11437380902943319634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n).toNat

end

end A052892.P11437380902943319634

/-!
# A052893: Number of objects generated by the Combstruct grammar defined in the Maple program. See the link for the grammar specification.

The programs for A052893, there is no canonical definition to state claims against.
-/

/-! ## A052893.P13708136664115577437

`A317655(p?[xor(1, n)])`
-/

namespace A052893.P13708136664115577437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317655 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A052893.P13708136664115577437

/-! ## A052893.P11505205863687632701

`A317655(p?[comp[n²]])`
-/

namespace A052893.P11505205863687632701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317655 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A052893.P11505205863687632701

/-! ## A052893.P2225603396342246116

`A317655(eq[n+1, ∑{d}[n, #]])`
-/

namespace A052893.P2225603396342246116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317655 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052893.P2225603396342246116

/-! ## A052893.P10365961274164288601

`A317655(or(1, p?[n%3+n]))`
-/

namespace A052893.P10365961274164288601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317655 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A052893.P10365961274164288601

/-! ## A052893.P11056933714938872569

`A317655(or(1, p?[n-(-1)^n]))`
-/

namespace A052893.P11056933714938872569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317655 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A052893.P11056933714938872569

/-!
# A052894: a(n) is the number of Schröder trees on n vertices with a prescribed root.

The programs for A052894, there is no canonical definition to state claims against.
-/

/-! ## A052894.P14026981923491913572

`A053492(n+1)/(n+1)`
-/

namespace A052894.P14026981923491913572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053492 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052894.P14026981923491913572

/-! ## A052894.P12371867335920392296

`A226513(A046092(n))/(n+1)`
-/

namespace A052894.P12371867335920392296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226513 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A052894.P12371867335920392296

/-! ## A052894.P4649787748292066088

`record[A226513(A265225(n))]/(n+1)`
-/

namespace A052894.P4649787748292066088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A265225 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A052894.P4649787748292066088

/-! ## A052894.P14788801777545694780

`A226513(record[n*A003982(n)])/(n+1)`
-/

namespace A052894.P14788801777545694780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003982 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (n + 1 : ℚ)

end

end A052894.P14788801777545694780

/-! ## A052894.P2255524279495968035

`record[gcd(A008482(n), A226513(n))]/(n+1)`
-/

namespace A052894.P2255524279495968035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A226513 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A052894.P2255524279495968035

/-!
# A052895: Expansion of e.g.f. (1/2)/(exp(x) - 1) * (1 - (5 - 4*exp(x))^(1/2)).

The programs for A052895, there is no canonical definition to state claims against.
-/

/-! ## A052895.P16871683305006196429

`A160545(A352235(n)+A049820(n+1))`
-/

namespace A052895.P16871683305006196429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (A352235 n + A049820 (n + 1)).toNat

end

end A052895.P16871683305006196429

/-!
# A052896: E.g.f.: (exp(exp(x)-1)-1)^2.

The programs for A052896, there is no canonical definition to state claims against.
-/

/-! ## A052896.P2185059192587676525

`2*A130191(A133263(n))`
-/

namespace A052896.P2185059192587676525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130191 (A133263 n).toNat

end

end A052896.P2185059192587676525

/-! ## A052896.P17944674172893172090

`A001861(n)-A186021(n)`
-/

namespace A052896.P17944674172893172090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001861 n - A186021 n

end

end A052896.P17944674172893172090

/-! ## A052896.P8947251305814328979

`2*(A035009(n)-A000110(n))`
-/

namespace A052896.P8947251305814328979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A035009 n - A000110 n)

end

end A052896.P8947251305814328979

/-! ## A052896.P7279087076679656599

`A233357(A238531(n))%A080795(n)`
-/

namespace A052896.P7279087076679656599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233357 (A238531 n).toNat) (A080795 n)

end

end A052896.P7279087076679656599

/-! ## A052896.P13337628954837289143

`A233357(A238531(n))-A036987(n²)`
-/

namespace A052896.P13337628954837289143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233357 (A238531 n).toNat - A036987 (n ^ 2)

end

end A052896.P13337628954837289143

/-!
# A052897: Expansion of e.g.f.: exp(2*x/(1-x)).

The programs for A052897, there is no canonical definition to state claims against.
-/

/-! ## A052897.P8969605717922360707

`a(n-1)+(2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052897.P8969605717922360707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2)))

end

end A052897.P8969605717922360707

/-! ## A052897.P5845950487005171387

`record[A253286(∑[n]+2)]`
-/

namespace A052897.P5845950487005171387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052897.P5845950487005171387

/-! ## A052897.P16820862290888575060

`A253286(∑[n+2]+3)`
-/

namespace A052897.P16820862290888575060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A052897.P16820862290888575060

/-! ## A052897.P15426715688504883637

`record[A253286(n+2)/A293985(n)]`
-/

namespace A052897.P15426715688504883637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253286 (n + 2) : ℚ) / (A293985 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052897.P15426715688504883637

/-! ## A052897.P1182344007974010303

`record[gcd(A253286(n+2), A253286(n))]`
-/

namespace A052897.P1182344007974010303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253286 (n + 2)) (A253286 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052897.P1182344007974010303

/-!
# A052898: a(n) = 2*n! + 1.

The programs for A052898, the canonical program `A052898.P2027629699889820397` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052898 has offset 0).

The definition of A052898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!+1` (program `A052898.P2027629699889820397`, by `A052898.P2027629699889820397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052898.P2027629699889820397

`2*n!+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052898

/-- `2*n!+1` -/
def P2027629699889820397.Spec : Prop :=
  ∀ n, (P2027629699889820397.a n : ℤ) = A052898 n

theorem P2027629699889820397.correct : P2027629699889820397.Spec := by
  intro n
  simp only [A052898]

end A052898

/-! ## A052898.P14820182951828750380

`n*a(n-1)-n+1` with `a(0)=3`
-/

namespace A052898.P14820182951828750380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n : ℤ) * a (n - 1) - (n : ℤ) + 1

end

end A052898.P14820182951828750380

namespace A052898

/-- `n*a(n-1)-n+1` -/
def P14820182951828750380.Spec : Prop :=
  ∀ n, P14820182951828750380.a n = A052898 n

end A052898

/-! ## A052898.P17212068230053491199

`or(1, 2*n!)`
-/

namespace A052898.P17212068230053491199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.factorial n)

end

end A052898.P17212068230053491199

namespace A052898

/-- `or(1, 2*n!)` -/
def P17212068230053491199.Spec : Prop :=
  ∀ n, (P17212068230053491199.a n : ℤ) = A052898 n

end A052898

/-! ## A052898.P1927130388621002831

`xor(1, 2*n!)`
-/

namespace A052898.P1927130388621002831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * Nat.factorial n)

end

end A052898.P1927130388621002831

namespace A052898

/-- `xor(1, 2*n!)` -/
def P1927130388621002831.Spec : Prop :=
  ∀ n, (P1927130388621002831.a n : ℤ) = A052898 n

end A052898

/-! ## A052898.P3455427761251000729

`n!+1+n!`
-/

namespace A052898.P3455427761251000729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + (1 + Nat.factorial n)

end

end A052898.P3455427761251000729

namespace A052898

/-- `n!+1+n!` -/
def P3455427761251000729.Spec : Prop :=
  ∀ n, (P3455427761251000729.a n : ℤ) = A052898 n

theorem P3455427761251000729.correct : P3455427761251000729.Spec := by
  intro n
  simp only [A052898, Nat.add_sub_cancel, A052898.P3455427761251000729.a, A052898.P2027629699889820397.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052898

/-! ## A052898.P9969531447905601052

`3-2*(1-n!)`
-/

namespace A052898.P9969531447905601052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * (1 - (Nat.factorial n : ℤ))

end

end A052898.P9969531447905601052

namespace A052898

/-- `3-2*(1-n!)` -/
def P9969531447905601052.Spec : Prop :=
  ∀ n, P9969531447905601052.a n = A052898 n

theorem P9969531447905601052.correct : P9969531447905601052.Spec := by
  intro n
  simp only [A052898, Nat.add_sub_cancel, A052898.P9969531447905601052.a, A052898.P2027629699889820397.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052898

/-! ## A052898.P4020554273050485293

`n!-xor(-1, n!)`
-/

namespace A052898.P4020554273050485293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - Int.xor (-1) (Nat.factorial n : ℤ)

end

end A052898.P4020554273050485293

namespace A052898

/-- `n!-xor(-1, n!)` -/
def P4020554273050485293.Spec : Prop :=
  ∀ n, P4020554273050485293.a n = A052898 n

end A052898

/-! ## A052898.P4949597584764465740

`∏[abs(1-n)+1]+1`
-/

namespace A052898.P4949597584764465740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052898.P4949597584764465740

namespace A052898

/-- `∏[abs(1-n)+1]+1` -/
def P4949597584764465740.Spec : Prop :=
  ∀ n, P4949597584764465740.a n = A052898 n

end A052898

/-! ## A052898.P18241003346708839140

`or(1, ∏[a(n-1)+1])` with `a(0)=2, a(1)=1`
-/

namespace A052898.P18241003346708839140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052898.P18241003346708839140

namespace A052898

/-- `or(1, ∏[a(n-1)+1])` -/
def P18241003346708839140.Spec : Prop :=
  ∀ n, (P18241003346708839140.a n : ℤ) = A052898 n

end A052898

/-! ## A052898.P14305786636529261867

`or(1, n*(a(n-1)-1))` with `a(0)=3`
-/

namespace A052898.P14305786636529261867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 1 ((n : ℤ) * (a (n - 1) - 1))

end

end A052898.P14305786636529261867

namespace A052898

/-- `or(1, n*(a(n-1)-1))` -/
def P14305786636529261867.Spec : Prop :=
  ∀ n, P14305786636529261867.a n = A052898 n

end A052898

/-!
# A052899: Expansion of g.f.: (1-2*x) / ((x-1)*(4*x^2+2*x-1)).

The programs for A052899, the canonical program `A052899.P15962383447754984144` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052899 has offset 0).

The definition of A052899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-3x-2x^2+4x^3))` (program `A052899.P15962383447754984144`, by `A052899.P15962383447754984144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052899.P15962383447754984144

`ogf((1-2x)/(1-3x-2x^2+4x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052899

/-- `ogf((1-2x)/(1-3x-2x^2+4x^3))` -/
def P15962383447754984144.Spec : Prop :=
  ∀ n, P15962383447754984144.a n = A052899 n

theorem P15962383447754984144.correct : P15962383447754984144.Spec := by
  intro n
  simp only [A052899]

end A052899

/-! ## A052899.P6531935309636985017

`(2*A087131(n)+1)/5`
-/

namespace A052899.P6531935309636985017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A087131 n + 1 : ℚ) / 5

end

end A052899.P6531935309636985017

namespace A052899

/-- `(2*A087131(n)+1)/5` -/
def P6531935309636985017.Spec : Prop :=
  ∀ n, P6531935309636985017.a n = (A052899 n : ℚ)

end A052899

/-! ## A052899.P1227883142428230071

`∑[8*(a(n-2)+a(n-3))]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A052899.P1227883142428230071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  8 * (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052899.P1227883142428230071

namespace A052899

/-- `∑[8*(a(n-2)+a(n-3))]` -/
def P1227883142428230071.Spec : Prop :=
  ∀ n, (P1227883142428230071.a n : ℤ) = A052899 n

end A052899

/-! ## A052899.P16020765687112649184

`2*(a(n-1)+2*a(n-2))-1` with `a(0)=1, a(1)=1`
-/

namespace A052899.P16020765687112649184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) + 2 * a (n - 2)) - 1

end

end A052899.P16020765687112649184

namespace A052899

/-- `2*(a(n-1)+2*a(n-2))-1` -/
def P16020765687112649184.Spec : Prop :=
  ∀ n, P16020765687112649184.a n = A052899 n

end A052899

/-! ## A052899.P9347094084779662355

`2*a(n-1)-(1-4*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052899.P9347094084779662355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - (1 - 4 * a (n - 2))

end

end A052899.P9347094084779662355

namespace A052899

/-- `2*a(n-1)-(1-4*a(n-2))` -/
def P9347094084779662355.Spec : Prop :=
  ∀ n, P9347094084779662355.a n = A052899 n

end A052899

/-! ## A052899.P14468882621687466566

`∑[abs(A086344(n))]`
-/

namespace A052899.P14468882621687466566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086344 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052899.P14468882621687466566

namespace A052899

/-- `∑[abs(A086344(n))]` -/
def P14468882621687466566.Spec : Prop :=
  ∀ n, P14468882621687466566.a n = A052899 n

end A052899

/-! ## A052899.P3266121741551713729

`2*A014334(n)+1`
-/

namespace A052899.P3266121741551713729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014334 n + 1

end

end A052899.P3266121741551713729

namespace A052899

/-- `2*A014334(n)+1` -/
def P3266121741551713729.Spec : Prop :=
  ∀ n, P3266121741551713729.a n = A052899 n

end A052899

/-! ## A052899.P516671332836236240

`4*A014335(n)+1`
-/

namespace A052899.P516671332836236240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014335 n + 1

end

end A052899.P516671332836236240

namespace A052899

/-- `4*A014335(n)+1` -/
def P516671332836236240.Spec : Prop :=
  ∀ n, P516671332836236240.a n = A052899 n

end A052899

/-! ## A052899.P17496114257431654683

`∑[A319196(n+2)/2]`
-/

namespace A052899.P17496114257431654683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319196 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052899.P17496114257431654683

namespace A052899

/-- `∑[A319196(n+2)/2]` -/
def P17496114257431654683.Spec : Prop :=
  ∀ n, P17496114257431654683.a n = (A052899 n : ℚ)

end A052899

/-! ## A052899.P10753857555020799216

`∑[2^n*A212804(n)]`
-/

namespace A052899.P10753857555020799216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052899.P10753857555020799216

namespace A052899

/-- `∑[2^n*A212804(n)]` -/
def P10753857555020799216.Spec : Prop :=
  ∀ n, P10753857555020799216.a n = A052899 n

end A052899

/-! ## A052899.P13508118379204356087

`A081057(n)-a(n-1)` with `a(0)=1`
-/

namespace A052899.P13508118379204356087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081057 n - a (n - 1)

end

end A052899.P13508118379204356087

namespace A052899

/-- `A081057(n)-a(n-1)` -/
def P13508118379204356087.Spec : Prop :=
  ∀ n, P13508118379204356087.a n = A052899 n

end A052899

/-! ## A052899.P14080423650090017271

`∑[2^n*Δ[A000045(n)]]`
-/

namespace A052899.P14080423650090017271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052899.P14080423650090017271

namespace A052899

/-- `∑[2^n*Δ[A000045(n)]]` -/
def P14080423650090017271.Spec : Prop :=
  ∀ n, P14080423650090017271.a n = A052899 n

end A052899

/-! ## A052899.P4088119379372226486

`A209084(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052899.P4088119379372226486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A209084 (n - 1) + a (n - 1)

end

end A052899.P4088119379372226486

namespace A052899

/-- `A209084(n-1)+a(n-1)` -/
def P4088119379372226486.Spec : Prop :=
  ∀ n, P4088119379372226486.a n = A052899 n

end A052899

/-! ## A052899.P15632081427459078498

`∑[2^n*A000045(abs(1-n))]`
-/

namespace A052899.P15632081427459078498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052899.P15632081427459078498

namespace A052899

/-- `∑[2^n*A000045(abs(1-n))]` -/
def P15632081427459078498.Spec : Prop :=
  ∀ n, P15632081427459078498.a n = A052899 n

end A052899

/-! ## A052899.P11941137487578399019

`A084057(n)-A014335(n)`
-/

namespace A052899.P11941137487578399019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n - A014335 n

end

end A052899.P11941137487578399019

namespace A052899

/-- `A084057(n)-A014335(n)` -/
def P11941137487578399019.Spec : Prop :=
  ∀ n, P11941137487578399019.a n = A052899 n

end A052899

/-! ## A052899.P12252386213953875919

`∑[A006355(n)*A011782(n)]`
-/

namespace A052899.P12252386213953875919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052899.P12252386213953875919

namespace A052899

/-- `∑[A006355(n)*A011782(n)]` -/
def P12252386213953875919.Spec : Prop :=
  ∀ n, P12252386213953875919.a n = A052899 n

end A052899

/-! ## A052899.P10597444679923083829

`A063727(n)-A014335(n+1)`
-/

namespace A052899.P10597444679923083829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - A014335 (n + 1)

end

end A052899.P10597444679923083829

namespace A052899

/-- `A063727(n)-A014335(n+1)` -/
def P10597444679923083829.Spec : Prop :=
  ∀ n, P10597444679923083829.a n = A052899 n

end A052899

/-! ## A052899.P17156578856162350135

`A084057(n)-A014334(n)/2`
-/

namespace A052899.P17156578856162350135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084057 n : ℚ) - (A014334 n : ℚ) / 2

end

end A052899.P17156578856162350135

namespace A052899

/-- `A084057(n)-A014334(n)/2` -/
def P17156578856162350135.Spec : Prop :=
  ∀ n, P17156578856162350135.a n = (A052899 n : ℚ)

end A052899

/-! ## A052899.P16621058529342629505

`∑[Δ[A000045(n)]*A000079(n)]`
-/

namespace A052899.P16621058529342629505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052899.P16621058529342629505

namespace A052899

/-- `∑[Δ[A000045(n)]*A000079(n)]` -/
def P16621058529342629505.Spec : Prop :=
  ∀ n, P16621058529342629505.a n = A052899 n

end A052899

/-! ## A052899.P2419412332646499130

`A014335(n+2)-A014334(n+1)`
-/

namespace A052899.P2419412332646499130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 (n + 2) - A014334 (n + 1)

end

end A052899.P2419412332646499130

namespace A052899

/-- `A014335(n+2)-A014334(n+1)` -/
def P2419412332646499130.Spec : Prop :=
  ∀ n, P2419412332646499130.a n = A052899 n

end A052899

