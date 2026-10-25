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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A226900: Record values of Hooley's Delta function A226898.

The programs for A226900, there is no canonical definition to state claims against.
-/

/-! ## A226900.P9459805068489733137

`eq[A000007(n), A266502(A290176(n+1))]`
-/

namespace A226900.P9459805068489733137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A290176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226900.P9459805068489733137

/-! ## A226900.P3376297463933487426

`eq[A000038(n), A266502(A290176(n+1))]`
-/

namespace A226900.P3376297463933487426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A290176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226900.P3376297463933487426

/-! ## A226900.P9897061114683300261

`record[A344180(n)-A124760(A135342(n+1))]`
-/

namespace A226900.P9897061114683300261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n - A124760 (A135342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226900.P9897061114683300261

/-! ## A226900.P2854305362169096503

`eq[A266502(A290176(n+1)), A266502(n²)]`
-/

namespace A226900.P2854305362169096503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A290176 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226900.P2854305362169096503

/-! ## A226900.P7773336155658792508

`eq[A010051(2*(n+1)), A266502(A290176(n+1))]`
-/

namespace A226900.P7773336155658792508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A290176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226900.P7773336155658792508

/-!
# A226901: Partial sums of Hooley's Delta function.

The programs for A226901, there is no canonical definition to state claims against.
-/

/-! ## A226901.P13577319229715682777

`∑[A226898(n+1)]`
-/

namespace A226901.P13577319229715682777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226901.P13577319229715682777

/-! ## A226901.P13514098793750535719

`A143824(A143824(n)+A029896(n))`
-/

namespace A226901.P13514098793750535719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A143824 n + A029896 n).toNat

end

end A226901.P13514098793750535719

/-! ## A226901.P13367447039740665700

`A143824(∑[∑[A046523(n+1)]])`
-/

namespace A226901.P13367447039740665700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226901.P13367447039740665700

/-! ## A226901.P8739363820132551414

`A143824(∑[∑[A071364(n+1)]])`
-/

namespace A226901.P8739363820132551414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226901.P8739363820132551414

/-! ## A226901.P16522267105786537057

`A154314(n+1)+A081604(A293076(n))`
-/

namespace A226901.P16522267105786537057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154314 (n + 1) + A081604 (A293076 n).toNat

end

end A226901.P16522267105786537057

/-!
# A226902: Numbers c such that the difference of consecutive cubes (c+1)^3 - c^3 is the sum of two positive cubes.

The programs for A226902, there is no canonical definition to state claims against.
-/

/-! ## A226902.P3746334904419522525

`floor(sqrt(A225909(n+1)/3))`
-/

namespace A226902.P3746334904419522525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A225909 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A226902.P3746334904419522525

/-! ## A226902.P3047455961428332397

`round(sqrt(A008594(n)+A225909(n+1)/3))-1`
-/

namespace A226902.P3047455961428332397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A008594 n : ℚ) + (A225909 (n + 1) : ℚ) / 3 : ℝ)) - 1

end

end A226902.P3047455961428332397

/-! ## A226902.P783714750647635533

`round(sqrt(A225909(n+1)/3)-2/A016957(n))`
-/

namespace A226902.P783714750647635533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A225909 (n + 1) : ℚ) / 3 : ℝ) - (2 / (A016957 n : ℚ) : ℝ))

end

end A226902.P783714750647635533

/-! ## A226902.P10834481503614279429

`round(sqrt(2^A001222(n+1)+A225909(n+1)/3))-1`
-/

namespace A226902.P10834481503614279429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 : ℚ) ^ (A001222 (n + 1) : ℤ) + (A225909 (n + 1) : ℚ) / 3 : ℝ)) - 1

end

end A226902.P10834481503614279429

/-! ## A226902.P5368287883199703970

`round(sqrt(A225909(n+1)/3)-A014963(6*(n+1)))`
-/

namespace A226902.P5368287883199703970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A225909 (n + 1) : ℚ) / 3 : ℝ) - (A014963 (6 * (n + 1)) : ℝ))

end

end A226902.P5368287883199703970

/-! ## A226902.P9198188749355564166

`∪[A226903(n+1), A226904(n+1)]`
-/

namespace A226902.P9198188749355564166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A226902.P9198188749355564166

/-!
# A226903: Shiraishi numbers: a parametrized family of solutions c to the Diophantine equation a^3 + b^3 + c^3 = d^3 with d = c+1.

The programs for A226903, the canonical program `A226903.P2410088263399814882` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226903 has offset 1).

The definition of A226903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226903.P2410088263399814882

`A001651(n+2)²*A110654(n+1)+n+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226903

/-- `A001651(n+2)²*A110654(n+1)+n+1` -/
def P2410088263399814882.Spec : Prop :=
  ∀ n, P2410088263399814882.a n = A226903 (n + 1)

theorem P2410088263399814882.correct : P2410088263399814882.Spec := by
  intro n
  simp only [A226903, Nat.add_sub_cancel]

end A226903

/-! ## A226903.P9787418072940329327

`A000034(n)+A001651(n+1)*A084684(n+2)`
-/

namespace A226903.P9787418072940329327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + A001651 (n + 1) * A084684 (n + 2)

end

end A226903.P9787418072940329327

namespace A226903

/-- `A000034(n)+A001651(n+1)*A084684(n+2)` -/
def P9787418072940329327.Spec : Prop :=
  ∀ n, P9787418072940329327.a n = A226903 (n + 1)

end A226903

/-! ## A226903.P14339933879260371608

`Δ[A049032(2*(n+1))+A000124(n)]`
-/

namespace A226903.P14339933879260371608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049032 (2 * (n + 1)) + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226903.P14339933879260371608

namespace A226903

/-- `Δ[A049032(2*(n+1))+A000124(n)]` -/
def P14339933879260371608.Spec : Prop :=
  ∀ n, P14339933879260371608.a n = A226903 (n + 1)

end A226903

/-! ## A226903.P4933124331184828775

`A008619(3*(n+1))²*A008619(n)+n+1`
-/

namespace A226903.P4933124331184828775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * (n + 1)) ^ 2 * A008619 n + (n + 1 : ℤ)

end

end A226903.P4933124331184828775

namespace A226903

/-- `A008619(3*(n+1))²*A008619(n)+n+1` -/
def P4933124331184828775.Spec : Prop :=
  ∀ n, P4933124331184828775.a n = A226903 (n + 1)

end A226903

/-! ## A226903.P1274481184107697292

`∑[A255347(Δ[A147656(n)])]`
-/

namespace A226903.P1274481184107697292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255347 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226903.P1274481184107697292

namespace A226903

/-- `∑[A255347(Δ[A147656(n)])]` -/
def P1274481184107697292.Spec : Prop :=
  ∀ n, P1274481184107697292.a n = A226903 (n + 1)

end A226903

/-!
# A226904: Solutions c to the Diophantine equation a^3 + b^3 + c^3 = (c+1)^3 that are not Shiraishi numbers.

The programs for A226904, there is no canonical definition to state claims against.
-/

/-! ## A226904.P3643722168841799730

`∩[A226902(n+1), A098968(n)]`
-/

namespace A226904.P3643722168841799730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226904.P3643722168841799730

/-!
# A226906: Triangle read by rows: T(n,k) is the total number of parts of size k^2, 1 <= k <= n, in the set of partitions of an n X n square lattice into squares, considering only the list of parts.

The programs for A226906, there is no canonical definition to state claims against.
-/

/-! ## A226906.P13098553647465968288

`A230505(A332699(n)+1)`
-/

namespace A226906.P13098553647465968288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230505 (A332699 n + 1).toNat

end

end A226906.P13098553647465968288

/-!
# A226907: G.f. satisfies: A(x) = 1 + x*exp( Sum_{n>=1} A226908(n)*A(x^n)*x^n/n ), where A(x) = exp( Sum_{n>=1} A226908(n)*x^n/n ).

The programs for A226907, there is no canonical definition to state claims against.
-/

/-! ## A226907.P16451098445234965869

`A036626(n)-A151734(A036632(n))`
-/

namespace A226907.P16451098445234965869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - A151734 (A036632 n).toNat

end

end A226907.P16451098445234965869

/-! ## A226907.P17887013913286151800

`A036626(n)-A151734(A036639(n))`
-/

namespace A226907.P17887013913286151800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - A151734 (A036639 n).toNat

end

end A226907.P17887013913286151800

/-! ## A226907.P12494158111141856438

`A036626(n)-A151734(A036646(n))`
-/

namespace A226907.P12494158111141856438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - A151734 (A036646 n).toNat

end

end A226907.P12494158111141856438

/-!
# A226908: L.g.f. L(x) = Sum_{n>=1} a(n)*x^n/n satisfies: exp(L(x)) = 1 + x*exp( Sum_{n>=1} a(n)*exp(L(x^n))*x^n/n ).

The programs for A226908, there is no canonical definition to state claims against.
-/

/-! ## A226908.P10041093713708140072

`A326534(A001970(n))+A235945(n)`
-/

namespace A226908.P10041093713708140072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (A001970 n).toNat + A235945 n

end

end A226908.P10041093713708140072

/-! ## A226908.P17284058949311621150

`A024417(A004277(n*A319616(n)))`
-/

namespace A226908.P17284058949311621150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A004277 ((n : ℤ) * A319616 n).toNat).toNat

end

end A226908.P17284058949311621150

/-! ## A226908.P6597640340213940521

`A204008(A180111(n+1))+A002265(n)`
-/

namespace A226908.P6597640340213940521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (A180111 (n + 1)).toNat + A002265 n

end

end A226908.P6597640340213940521

/-!
# A226909: Number of placements of brackets in a monomial of degree n in an algebra with two commutative multiplications.

The programs for A226909, there is no canonical definition to state claims against.
-/

/-! ## A226909.P14877646243763981979

`A241156(n+1)*A292563(n)`
-/

namespace A226909.P14877646243763981979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241156 (n + 1) * A292563 n

end

end A226909.P14877646243763981979

/-! ## A226909.P13978981870622869581

`abs(A241156(n+1)*A280560(n))`
-/

namespace A226909.P13978981870622869581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A241156 (n + 1) * A280560 n|

end

end A226909.P13978981870622869581

/-! ## A226909.P9715258448702242856

`A036452(n+1)*A241156(n+1)`
-/

namespace A226909.P9715258448702242856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A241156 (n + 1)

end

end A226909.P9715258448702242856

/-! ## A226909.P1019987490503437364

`A036453(n+1)*A241156(n+1)`
-/

namespace A226909.P1019987490503437364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A241156 (n + 1)

end

end A226909.P1019987490503437364

/-!
# A226910: a(n) = Sum_{k=0..floor(n/5)} binomial(n,5*k)*binomial(6*k,k)/(5*k+1).

The programs for A226910, there is no canonical definition to state claims against.
-/

/-! ## A226910.P2153751209685620474

`A300946(C(n, 9)+1)+C(n, 5)`
-/

namespace A226910.P2153751209685620474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300946 (Nat.choose n 9 + 1) + (Nat.choose n 5 : ℤ)

end

end A226910.P2153751209685620474

/-! ## A226910.P3994283512354075118

`a(A293666(∑[n])%n)+C(n, 5)` with `a(0)=1`
-/

namespace A226910.P3994283512354075118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (A293666 (∑ j ∈ Finset.range (n + 1), f1 j)) (n : ℤ)).toNat + Nat.choose n 5

end

end A226910.P3994283512354075118

/-! ## A226910.P15419840423612562840

`A268448(A151359(n)!)+C(n, 5)`
-/

namespace A226910.P15419840423612562840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (Nat.factorial (A151359 n).toNat) + (Nat.choose n 5 : ℤ)

end

end A226910.P15419840423612562840

/-! ## A226910.P809956285911823241

`A248909(A248901(n+1))+C(n, 5)`
-/

namespace A226910.P809956285911823241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A248901 (n + 1)).toNat + (Nat.choose n 5 : ℤ)

end

end A226910.P809956285911823241

/-! ## A226910.P7522658608315735509

`A319769(A324098(n+1))+C(n, 5)`
-/

namespace A226910.P7522658608315735509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319769 (A324098 (n + 1)).toNat + (Nat.choose n 5 : ℤ)

end

end A226910.P7522658608315735509

/-!
# A226912: Irregular triangle read by rows: T(n,k) is the frequency with which the number of square parts equals k in each partition of an n X n square lattice into squares, considering only the list of parts.

The programs for A226912, there is no canonical definition to state claims against.
-/

/-! ## A226912.P17709540573038710799

`and(A229541(n+1), A355040(n))`
-/

namespace A226912.P17709540573038710799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A229541 (n + 1)) (A355040 n)

end

end A226912.P17709540573038710799

/-! ## A226912.P16259406462547294372

`(∑[A131809(A001399(n))^A055017(n)+2]%7)%2`
-/

namespace A226912.P16259406462547294372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131809 (A001399 n).toNat : ℚ) ^ (A055017 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) 7) 2

end

end A226912.P16259406462547294372

/-! ## A226912.P231880563567940821

`A229541(A051700(A187027(n+1)))*A229541(n+1)`
-/

namespace A226912.P231880563567940821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229541 (A051700 (A187027 (n + 1)).toNat).toNat * A229541 (n + 1)

end

end A226912.P231880563567940821

/-! ## A226912.P5768302048638680314

`and(A062743(A225640(n)), A229541(n+1))`
-/

namespace A226912.P5768302048638680314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062743 (A225640 n).toNat) (A229541 (n + 1))

end

end A226912.P5768302048638680314

/-! ## A226912.P3283558675609746665

`A288462(A288428(n+1)+A269303(n+1))`
-/

namespace A226912.P3283558675609746665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288462 (A288428 (n + 1) + A269303 (n + 1)).toNat

end

end A226912.P3283558675609746665

/-!
# A226913: Not of form sum_{i=0..n-1} (-1)^i prime(n-i), where prime(k) denotes the k-th prime.

The programs for A226913, the canonical program `A226913.P8047699162367960814` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226913 has offset 1).

The definition of A226913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226913.P8047699162367960814

`comp[A008347(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A226913

/-- `comp[A008347(n)]` -/
def P8047699162367960814.Spec : Prop :=
  ∀ n, (P8047699162367960814.a n : ℤ) = A226913 (n + 1)

theorem P8047699162367960814.correct : P8047699162367960814.Spec := by
  intro n
  simp only [A226913, Nat.add_sub_cancel]

end A226913

/-! ## A226913.P14289870475964850096

`comp[A000040(n)-a(n-1)]` with `a(0)=0`
-/

namespace A226913.P14289870475964850096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000040 n - f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226913.P14289870475964850096

namespace A226913

/-- `comp[A000040(n)-a(n-1)]` -/
def P14289870475964850096.Spec : Prop :=
  ∀ n, (P14289870475964850096.a n : ℤ) = A226913 (n + 1)

end A226913

/-! ## A226913.P15199165887585723653

`comp[A008578(n)-a(n-1)]` with `a(0)=1`
-/

namespace A226913.P15199165887585723653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008578 n - f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226913.P15199165887585723653

namespace A226913

/-- `comp[A008578(n)-a(n-1)]` -/
def P15199165887585723653.Spec : Prop :=
  ∀ n, (P15199165887585723653.a n : ℤ) = A226913 (n + 1)

end A226913

/-! ## A226913.P17437666264827296046

`eq[char[A008347(n+1)], A000007(n)]`
-/

namespace A226913.P17437666264827296046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A226913.P17437666264827296046

namespace A226913

/-- `eq[char[A008347(n+1)], A000007(n)]` -/
def P17437666264827296046.Spec : Prop :=
  ∀ n, (P17437666264827296046.a n : ℤ) = A226913 (n + 1)

end A226913

/-! ## A226913.P16025732395910800482

`eq[2*A000007(n), char[A008347(n)]]`
-/

namespace A226913.P16025732395910800482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A226913.P16025732395910800482

namespace A226913

/-- `eq[2*A000007(n), char[A008347(n)]]` -/
def P16025732395910800482.Spec : Prop :=
  ∀ n, (P16025732395910800482.a n : ℤ) = A226913 (n + 1)

end A226913

/-!
# A226914: Third column of A226518.

The programs for A226914, the canonical program `A226914.P2922214671756578108` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226914 has offset 1).

The definition of A226914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226914.P8059330026874000285

`A118917(p?[comp[n²]])`
-/

namespace A226914.P8059330026874000285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226914.P8059330026874000285

namespace A226914

/-- `A118917(p?[comp[n²]])` -/
def P8059330026874000285.Spec : Prop :=
  ∀ n, P8059330026874000285.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P10875009852680308995

`A226523(n+1)+1`
-/

namespace A226914.P10875009852680308995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226523 (n + 1) + 1

end

end A226914.P10875009852680308995

namespace A226914

/-- `A226523(n+1)+1` -/
def P10875009852680308995.Spec : Prop :=
  ∀ n, P10875009852680308995.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P7328558561485328501

`A323377(∑[n+1])+1`
-/

namespace A226914.P7328558561485328501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323377 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A226914.P7328558561485328501

namespace A226914

/-- `A323377(∑[n+1])+1` -/
def P7328558561485328501.Spec : Prop :=
  ∀ n, P7328558561485328501.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P13221389507811860149

`A035185(p?[xor(1, n)+1])`
-/

namespace A226914.P13221389507811860149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226914.P13221389507811860149

namespace A226914

/-- `A035185(p?[xor(1, n)+1])` -/
def P13221389507811860149.Spec : Prop :=
  ∀ n, P13221389507811860149.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P11398462716149585384

`A087780(p?[xor(1, n)+1])`
-/

namespace A226914.P11398462716149585384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226914.P11398462716149585384

namespace A226914

/-- `A087780(p?[xor(1, n)+1])` -/
def P11398462716149585384.Spec : Prop :=
  ∀ n, P11398462716149585384.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P14499567258182471672

`A091396(p?[xor(1, n)+1])`
-/

namespace A226914.P14499567258182471672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226914.P14499567258182471672

namespace A226914

/-- `A091396(p?[xor(1, n)+1])` -/
def P14499567258182471672.Spec : Prop :=
  ∀ n, P14499567258182471672.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P7162226230428224659

`A352551(p?[xor(1, n)+1])`
-/

namespace A226914.P7162226230428224659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226914.P7162226230428224659

namespace A226914

/-- `A352551(p?[xor(1, n)+1])` -/
def P7162226230428224659.Spec : Prop :=
  ∀ n, P7162226230428224659.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P10942949545765286175

`3-A004678(n+1)%4`
-/

namespace A226914.P10942949545765286175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A004678 (n + 1)) 4

end

end A226914.P10942949545765286175

namespace A226914

/-- `3-A004678(n+1)%4` -/
def P10942949545765286175.Spec : Prop :=
  ∀ n, P10942949545765286175.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P18312180747087070835

`sqrt(and(5, 5-A000040(n+1)))`
-/

namespace A226914.P18312180747087070835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land 5 (5 - A000040 (n + 1)) : ℝ)

end

end A226914.P18312180747087070835

namespace A226914

/-- `sqrt(and(5, 5-A000040(n+1)))` -/
def P18312180747087070835.Spec : Prop :=
  ∀ n, P18312180747087070835.a n = (A226914 (n + 1) : ℝ)

end A226914

/-! ## A226914.P5923467876992942857

`A091337(p?[xor(1, n)+1])+1`
-/

namespace A226914.P5923467876992942857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A226914.P5923467876992942857

namespace A226914

/-- `A091337(p?[xor(1, n)+1])+1` -/
def P5923467876992942857.Spec : Prop :=
  ∀ n, P5923467876992942857.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P2922214671756578108

`A299287(p?[xor(1, n)+1])%4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226914

/-- `A299287(p?[xor(1, n)+1])%4` -/
def P2922214671756578108.Spec : Prop :=
  ∀ n, P2922214671756578108.a n = A226914 (n + 1)

theorem P2922214671756578108.correct : P2922214671756578108.Spec := by
  intro n
  simp only [A226914, Nat.add_sub_cancel]

end A226914

/-! ## A226914.P13170622578860637013

`sqrt(and(5, 4-record[A000010(n+1)]))`
-/

namespace A226914.P13170622578860637013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land 5 (4 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℝ)

end

end A226914.P13170622578860637013

namespace A226914

/-- `sqrt(and(5, 4-record[A000010(n+1)]))` -/
def P13170622578860637013.Spec : Prop :=
  ∀ n, P13170622578860637013.a n = (A226914 (n + 1) : ℝ)

end A226914

/-! ## A226914.P12407837155653921106

`A035185(4*p?[round(8*n/7)])`
-/

namespace A226914.P12407837155653921106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A226914.P12407837155653921106

namespace A226914

/-- `A035185(4*p?[round(8*n/7)])` -/
def P12407837155653921106.Spec : Prop :=
  ∀ n, P12407837155653921106.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P18201299510394271760

`A000607(and(5, p?[round(8*n/7)]-2))`
-/

namespace A226914.P18201299510394271760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (Int.land 5 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2)).toNat

end

end A226914.P18201299510394271760

namespace A226914

/-- `A000607(and(5, p?[round(8*n/7)]-2))` -/
def P18201299510394271760.Spec : Prop :=
  ∀ n, P18201299510394271760.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P6439397186091729637

`A293548(and(5, p?[round(8*n/7)]-2))`
-/

namespace A226914.P6439397186091729637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293548 (Int.land 5 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2)).toNat

end

end A226914.P6439397186091729637

namespace A226914

/-- `A293548(and(5, p?[round(8*n/7)]-2))` -/
def P6439397186091729637.Spec : Prop :=
  ∀ n, P6439397186091729637.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P4431521381470331993

`A035185(A000040(n+1))`
-/

namespace A226914.P4431521381470331993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A000040 (n + 1)).toNat

end

end A226914.P4431521381470331993

namespace A226914

/-- `A035185(A000040(n+1))` -/
def P4431521381470331993.Spec : Prop :=
  ∀ n, P4431521381470331993.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P6968240456751462146

`A035185(A001749(n+1))`
-/

namespace A226914.P6968240456751462146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A001749 (n + 1)).toNat

end

end A226914.P6968240456751462146

namespace A226914

/-- `A035185(A001749(n+1))` -/
def P6968240456751462146.Spec : Prop :=
  ∀ n, P6968240456751462146.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P11390862393909177027

`A035185(A006005(n+1))`
-/

namespace A226914.P11390862393909177027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A006005 (n + 1)).toNat

end

end A226914.P11390862393909177027

namespace A226914

/-- `A035185(A006005(n+1))` -/
def P11390862393909177027.Spec : Prop :=
  ∀ n, P11390862393909177027.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P12528773069440842712

`A035185(A062876(n+1))`
-/

namespace A226914.P12528773069440842712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A062876 (n + 1)).toNat

end

end A226914.P12528773069440842712

namespace A226914

/-- `A035185(A062876(n+1))` -/
def P12528773069440842712.Spec : Prop :=
  ∀ n, P12528773069440842712.a n = A226914 (n + 1)

end A226914

/-! ## A226914.P13586112771334752735

`A035185(A072900(n+1))`
-/

namespace A226914.P13586112771334752735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A072900 (n + 1)).toNat

end

end A226914.P13586112771334752735

namespace A226914

/-- `A035185(A072900(n+1))` -/
def P13586112771334752735.Spec : Prop :=
  ∀ n, P13586112771334752735.a n = A226914 (n + 1)

end A226914

/-!
# A226915: Fourth column of A226518.

The programs for A226915, there is no canonical definition to state claims against.
-/

/-! ## A226915.P9122266744809261393

`A257834(n+3)+A226914(n+3)`
-/

namespace A226915.P9122266744809261393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257834 (n + 3) + A226914 (n + 3)

end

end A226915.P9122266744809261393

/-! ## A226915.P1111812075953494856

`A226523(n+3)+A257834(n+3)+1`
-/

namespace A226915.P1111812075953494856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226523 (n + 3) + (A257834 (n + 3) + 1)

end

end A226915.P1111812075953494856

/-! ## A226915.P6752406841578190302

`A226518(∑[A065091(n+1)]+6)`
-/

namespace A226915.P6752406841578190302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226518 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A226915.P6752406841578190302

/-! ## A226915.P17317631708703701950

`or(A033999(A010023(n)), A264893(n))`
-/

namespace A226915.P17317631708703701950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 (A010023 n).toNat) (A264893 n)

end

end A226915.P17317631708703701950

/-! ## A226915.P9074513388057779576

`or(A033999(A223074(n+1)), A264893(n))`
-/

namespace A226915.P9074513388057779576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 (A223074 (n + 1)).toNat) (A264893 n)

end

end A226915.P9074513388057779576

/-!
# A226917: Number of non-sphere-homeomorphic crossing optimal 2-page book drawings of complete graph K_{2n+1}.

The programs for A226917, the canonical program `A226917.P7871451663691589680` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226917 has offset 2).

The definition of A226917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226917.P7871451663691589680

`A106472(n)+2*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226917

/-- `A106472(n)+2*a(n-2)` -/
def P7871451663691589680.Spec : Prop :=
  ∀ n, P7871451663691589680.a n = A226917 (n + 2)

theorem P7871451663691589680.correct : P7871451663691589680.Spec := by
  intro n
  simp only [A226917, Nat.add_sub_cancel]

end A226917

/-! ## A226917.P11513808191788555167

`4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=25`
-/

namespace A226917.P11513808191788555167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9, 25] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 8 * a (n - 3) + 8 * a (n - 4)

end

end A226917.P11513808191788555167

namespace A226917

/-- `4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` -/
def P11513808191788555167.Spec : Prop :=
  ∀ n, P11513808191788555167.a n = A226917 (n + 2)

end A226917

/-! ## A226917.P13904603470605799386

`A195119(A093369(n+1)^A047010(n))`
-/

namespace A226917.P13904603470605799386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (SequenceMachineLib.roundAway ((A093369 (n + 1) : ℚ) ^ (A047010 n : ℤ))).toNat

end

end A226917.P13904603470605799386

namespace A226917

/-- `A195119(A093369(n+1)^A047010(n))` -/
def P13904603470605799386.Spec : Prop :=
  ∀ n, P13904603470605799386.a n = A226917 (n + 2)

end A226917

/-!
# A226919: Asymptotic number of completely symmetric polynomials of degree n up to momentum conservation in the limit as the number of particles increases.

The programs for A226919, there is no canonical definition to state claims against.
-/

/-! ## A226919.P2042779967515105718

`A307316(∑{digits}[n, #])`
-/

namespace A226919.P2042779967515105718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307316 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A226919.P2042779967515105718

/-! ## A226919.P6445986467204664878

`A307316(∏{digits}[n, #])`
-/

namespace A226919.P6445986467204664878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307316 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A226919.P6445986467204664878

/-! ## A226919.P14948586680703589811

`A307316(n)%350`
-/

namespace A226919.P14948586680703589811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307316 n) 350

end

end A226919.P14948586680703589811

/-! ## A226919.P15406635143550174769

`A307316(n-char[25])`
-/

namespace A226919.P15406635143550174769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307316 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A226919.P15406635143550174769

/-! ## A226919.P11630688863014035272

`A106608(A307316(n))`
-/

namespace A226919.P11630688863014035272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A307316 n).toNat

end

end A226919.P11630688863014035272

/-!
# A226920: Array read by antidiagonals: T(n,k) = number of completely symmetric polynomials of degree k up to momentum conservation for n particles (n >= 4, k >= 0).

The programs for A226920, there is no canonical definition to state claims against.
-/

/-! ## A226920.P14323011435495777406

`A301343(A263714(n+1)+8)`
-/

namespace A226920.P14323011435495777406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A263714 (n + 1) + 8).toNat

end

end A226920.P14323011435495777406

/-! ## A226920.P14373883893152901386

`A264620(xor(3, A203647(n+1)))`
-/

namespace A226920.P14373883893152901386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (Int.xor 3 (A203647 (n + 1))).toNat

end

end A226920.P14373883893152901386

/-! ## A226920.P8767230522755139095

`A000700(A216274(n)%A358927(n))`
-/

namespace A226920.P8767230522755139095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A216274 n) (A358927 n)).toNat

end

end A226920.P8767230522755139095

/-! ## A226920.P7379881661450839493

`A000700(gcd(A216274(n), A358927(n)))`
-/

namespace A226920.P7379881661450839493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.gcd (A216274 n) (A358927 n))

end

end A226920.P7379881661450839493

/-! ## A226920.P11607835467607810814

`A089053(A209572(n+1))`
-/

namespace A226920.P11607835467607810814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089053 (A209572 (n + 1)).toNat

end

end A226920.P11607835467607810814

/-!
# A226930: Second differences give the sequence itself, but read digit-by-digit.

The programs for A226930, there is no canonical definition to state claims against.
-/

/-! ## A226930.P11260983519921705305

`A125853(lt[A288650(n), A101099(n+1)])`
-/

namespace A226930.P11260983519921705305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125853 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226930.P11260983519921705305

/-! ## A226930.P8673220933134462240

`A125853(lt[A125869(n+1), A125886(n+1)])`
-/

namespace A226930.P8673220933134462240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125853 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226930.P8673220933134462240

/-!
# A226931: Numerator of n + Sum(binomial(n,k)*(k/n)^k*((n-k)/n)^(n-k), k=0..n).

The programs for A226931, there is no canonical definition to state claims against.
-/

/-! ## A226931.P8088180943007850505

`A090878(n+1)+(n+1)*A036505(n)`
-/

namespace A226931.P8088180943007850505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090878 (n + 1) + (n + 1 : ℤ) * A036505 n

end

end A226931.P8088180943007850505

/-! ## A226931.P14165138153773623133

`A089901(n+1)/A051696(n+1)`
-/

namespace A226931.P14165138153773623133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089901 (n + 1) : ℚ) / (A051696 (n + 1) : ℚ)

end

end A226931.P14165138153773623133

/-!
# A226932: Numerators in expansion of 1/(1-log(1+x)).

The programs for A226932, there is no canonical definition to state claims against.
-/

/-! ## A226932.P10187960588125472167

`A006252(n)/gcd(A000142(n), A006252(n))`
-/

namespace A226932.P10187960588125472167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006252 n : ℚ) / (Int.gcd (A000142 n) (A006252 n) : ℚ)

end

end A226932.P10187960588125472167

/-! ## A226932.P10269562104594559143

`A006252(n)/A000142(n)*A226933(n)`
-/

namespace A226932.P10269562104594559143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006252 n : ℚ) / (A000142 n : ℚ) * (A226933 n : ℚ)

end

end A226932.P10269562104594559143

/-! ## A226932.P5732890135158677316

`A085392(∏{p}[A006252(n), #])`
-/

namespace A226932.P5732890135158677316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A226932.P5732890135158677316

/-! ## A226932.P5782057278841121940

`A219792(∏{p}[A006252(n), #])`
-/

namespace A226932.P5782057278841121940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219792 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A226932.P5782057278841121940

/-! ## A226932.P198853737306617154

`A093411(2*A006252(n))`
-/

namespace A226932.P198853737306617154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * A006252 n).toNat

end

end A226932.P198853737306617154

/-!
# A226933: Denominators in expansion of 1/(1-log(1+x)).

The programs for A226933, there is no canonical definition to state claims against.
-/

/-! ## A226933.P10547902390311547713

`A000142(n)/A006252(n)*A226932(n)`
-/

namespace A226933.P10547902390311547713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A006252 n : ℚ) * (A226932 n : ℚ)

end

end A226933.P10547902390311547713

/-! ## A226933.P4809497729772500372

`n!/A322906(n!+1)`
-/

namespace A226933.P4809497729772500372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A322906 (Nat.factorial n + 1) : ℚ)

end

end A226933.P4809497729772500372

/-! ## A226933.P9238024255667595035

`n!/A136693(n!-1)`
-/

namespace A226933.P9238024255667595035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A136693 (Nat.factorial n - 1) : ℚ)

end

end A226933.P9238024255667595035

/-!
# A226934: Numbers k such that tau(2k) | sigma(2k).

The programs for A226934, the canonical program `A226934.P2791961928592230860` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226934 has offset 1).

The definition of A226934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226934.P2791961928592230860

`eq[0, A054025(2*(n+1))]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226934

/-- `eq[0, A054025(2*(n+1))]+1` -/
def P2791961928592230860.Spec : Prop :=
  ∀ n, (P2791961928592230860.a n : ℤ) = A226934 (n + 1)

theorem P2791961928592230860.correct : P2791961928592230860.Spec := by
  intro n
  simp only [A226934, Nat.add_sub_cancel]

end A226934

/-! ## A226934.P8399353548198677548

`eq[1, A057021(2*(n+1))]+1`
-/

namespace A226934.P8399353548198677548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226934.P8399353548198677548

namespace A226934

/-- `eq[1, A057021(2*(n+1))]+1` -/
def P8399353548198677548.Spec : Prop :=
  ∀ n, (P8399353548198677548.a n : ℤ) = A226934 (n + 1)

end A226934

/-! ## A226934.P314495531091701795

`eq[1, A176801(2*(n+1))]+1`
-/

namespace A226934.P314495531091701795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176801 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226934.P314495531091701795

namespace A226934

/-- `eq[1, A176801(2*(n+1))]+1` -/
def P314495531091701795.Spec : Prop :=
  ∀ n, (P314495531091701795.a n : ℤ) = A226934 (n + 1)

end A226934

/-! ## A226934.P674660844791292735

`eq[1, A245656(2*(n+1))]+1`
-/

namespace A226934.P674660844791292735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226934.P674660844791292735

namespace A226934

/-- `eq[1, A245656(2*(n+1))]+1` -/
def P674660844791292735.Spec : Prop :=
  ∀ n, (P674660844791292735.a n : ℤ) = A226934 (n + 1)

end A226934

/-! ## A226934.P16425952130863673052

`lt[A054025(2*n+2), 1]+1`
-/

namespace A226934.P16425952130863673052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A226934.P16425952130863673052

namespace A226934

/-- `lt[A054025(2*n+2), 1]+1` -/
def P16425952130863673052.Spec : Prop :=
  ∀ n, (P16425952130863673052.a n : ℤ) = A226934 (n + 1)

end A226934

/-! ## A226934.P4764812338335524867

`eq[1, A057021(2*A028310(n))]`
-/

namespace A226934.P4764812338335524867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (2 * A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226934.P4764812338335524867

namespace A226934

/-- `eq[1, A057021(2*A028310(n))]` -/
def P4764812338335524867.Spec : Prop :=
  ∀ n, (P4764812338335524867.a n : ℤ) = A226934 (n + 1)

end A226934

/-! ## A226934.P251379920397650237

`A020725(eq[1, A057021(2*(n+1))])`
-/

namespace A226934.P251379920397650237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226934.P251379920397650237

namespace A226934

/-- `A020725(eq[1, A057021(2*(n+1))])` -/
def P251379920397650237.Spec : Prop :=
  ∀ n, P251379920397650237.a n = A226934 (n + 1)

end A226934

/-! ## A226934.P18029995287838380322

`A065475(eq[1, A057021(2*(n+1))])`
-/

namespace A226934.P18029995287838380322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226934.P18029995287838380322

namespace A226934

/-- `A065475(eq[1, A057021(2*(n+1))])` -/
def P18029995287838380322.Spec : Prop :=
  ∀ n, P18029995287838380322.a n = A226934 (n + 1)

end A226934

/-! ## A226934.P10373478741327620606

`∩[A004275(n+1), A003601(n+2)]/2`
-/

namespace A226934.P10373478741327620606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P10373478741327620606

namespace A226934

/-- `∩[A004275(n+1), A003601(n+2)]/2` -/
def P10373478741327620606.Spec : Prop :=
  ∀ n, P10373478741327620606.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P17219480734567619793

`∩[A004277(n+1), A003601(n+2)]/2`
-/

namespace A226934.P17219480734567619793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P17219480734567619793

namespace A226934

/-- `∩[A004277(n+1), A003601(n+2)]/2` -/
def P17219480734567619793.Spec : Prop :=
  ∀ n, P17219480734567619793.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P11151703792903209891

`∩[A004271(n+1), A023883(n+2)]/2`
-/

namespace A226934.P11151703792903209891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P11151703792903209891

namespace A226934

/-- `∩[A004271(n+1), A023883(n+2)]/2` -/
def P11151703792903209891.Spec : Prop :=
  ∀ n, P11151703792903209891.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P7362797792184227102

`∩[A004272(n+1), A023883(n+2)]/2`
-/

namespace A226934.P7362797792184227102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P7362797792184227102

namespace A226934

/-- `∩[A004272(n+1), A023883(n+2)]/2` -/
def P7362797792184227102.Spec : Prop :=
  ∀ n, P7362797792184227102.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P10628130390949602432

`∩[A004275(n+1), A023883(n+2)]/2`
-/

namespace A226934.P10628130390949602432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P10628130390949602432

namespace A226934

/-- `∩[A004275(n+1), A023883(n+2)]/2` -/
def P10628130390949602432.Spec : Prop :=
  ∀ n, P10628130390949602432.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P2842749672866210114

`∩[A004277(n+1), A023883(n+2)]/2`
-/

namespace A226934.P2842749672866210114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P2842749672866210114

namespace A226934

/-- `∩[A004277(n+1), A023883(n+2)]/2` -/
def P2842749672866210114.Spec : Prop :=
  ∀ n, P2842749672866210114.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P6136388196989414081

`∩[A004279(n+1), A023883(n+2)]/2`
-/

namespace A226934.P6136388196989414081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P6136388196989414081

namespace A226934

/-- `∩[A004279(n+1), A023883(n+2)]/2` -/
def P6136388196989414081.Spec : Prop :=
  ∀ n, P6136388196989414081.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P14325650155555013307

`∩[A103517(n+1), A003601(n+2)]/2`
-/

namespace A226934.P14325650155555013307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P14325650155555013307

namespace A226934

/-- `∩[A103517(n+1), A003601(n+2)]/2` -/
def P14325650155555013307.Spec : Prop :=
  ∀ n, P14325650155555013307.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P17796536728442444239

`∩[A103517(n+1), A023883(n+2)]/2`
-/

namespace A226934.P17796536728442444239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P17796536728442444239

namespace A226934

/-- `∩[A103517(n+1), A023883(n+2)]/2` -/
def P17796536728442444239.Spec : Prop :=
  ∀ n, P17796536728442444239.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P13536795330503477623

`∩[A004278(n+2), A023883(n+2)]/2`
-/

namespace A226934.P13536795330503477623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P13536795330503477623

namespace A226934

/-- `∩[A004278(n+2), A023883(n+2)]/2` -/
def P13536795330503477623.Spec : Prop :=
  ∀ n, P13536795330503477623.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P7304987844411985465

`∩[A023883(n+2), A058992(n+2)]/2`
-/

namespace A226934.P7304987844411985465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P7304987844411985465

namespace A226934

/-- `∩[A023883(n+2), A058992(n+2)]/2` -/
def P7304987844411985465.Spec : Prop :=
  ∀ n, P7304987844411985465.a n = (A226934 (n + 1) : ℚ)

end A226934

/-! ## A226934.P9462884989384237259

`∩[A023883(n+2), A316571(n+2)]/2`
-/

namespace A226934.P9462884989384237259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A226934.P9462884989384237259

namespace A226934

/-- `∩[A023883(n+2), A316571(n+2)]/2` -/
def P9462884989384237259.Spec : Prop :=
  ∀ n, P9462884989384237259.a n = (A226934 (n + 1) : ℚ)

end A226934

/-!
# A226935: Least prime p(1) beginning a chain of primes p(i) = i*p(i-1) - (i-1) for i = 2, 3, ..., n.

The programs for A226935, there is no canonical definition to state claims against.
-/

/-! ## A226935.P14504168766265175995

`A177014(n+1)+1`
-/

namespace A226935.P14504168766265175995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177014 (n + 1) + 1

end

end A226935.P14504168766265175995

/-! ## A226935.P9941324010696814996

`A020725(A177014(n+1))`
-/

namespace A226935.P9941324010696814996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A177014 (n + 1)).toNat

end

end A226935.P9941324010696814996

/-!
# A226936: Number T(n,k) of squares of size k^2 in all tilings of an n X n square using integer-sided square tiles; triangle T(n,k), n >= 1, 1 <= k <= n, read by rows.

The programs for A226936, there is no canonical definition to state claims against.
-/

/-! ## A226936.P9623383752997518798

`A201627((C(comp[∑[n]]-n, 2)-n)%A112799(n+1))`
-/

namespace A226936.P9623383752997518798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201627 (Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (A112799 (n + 1))).toNat

end

end A226936.P9623383752997518798

/-! ## A226936.P1813177893617839688

`A201627(A159083(n)+A004736(n+1))`
-/

namespace A226936.P1813177893617839688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201627 (A159083 n + A004736 (n + 1)).toNat

end

end A226936.P1813177893617839688

/-! ## A226936.P13904165805657900631

`A201627(A173018(n)²*A117660(n+1))`
-/

namespace A226936.P13904165805657900631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201627 (A173018 n ^ 2 * A117660 (n + 1)).toNat

end

end A226936.P13904165805657900631

/-!
# A226937: Number of different numbers of square parts in the set of partitions of an n X n square lattice into squares, considering only the list of parts.

The programs for A226937, there is no canonical definition to state claims against.
-/

/-! ## A226937.P15035251684985572996

`A221640(∑[n+1])`
-/

namespace A226937.P15035251684985572996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226937.P15035251684985572996

/-! ## A226937.P5094842087623087831

`record[A221640(A001972(n))]`
-/

namespace A226937.P5094842087623087831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221640 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226937.P5094842087623087831

/-! ## A226937.P16208647683734019391

`record[A221640(∑[A008621(n)])]`
-/

namespace A226937.P16208647683734019391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221640 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226937.P16208647683734019391

/-! ## A226937.P11438713566400489774

`record[A221640(∑[A057979(n)])]`
-/

namespace A226937.P11438713566400489774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221640 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226937.P11438713566400489774

/-! ## A226937.P4320783933302477302

`record[A221640(record[A083817(n)])]`
-/

namespace A226937.P4320783933302477302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083817 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221640 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226937.P4320783933302477302

/-!
# A226938: Primes p such that p^4 + p - 1, p^4 + p^2 - 1, p^4 + p^3 - 1 are also prime.

The programs for A226938, there is no canonical definition to state claims against.
-/

/-! ## A226938.P17501057507005539286

`p?[A064307(2*(n+1))+eq[and(n, 2*n), and(n, n-1)]]`
-/

namespace A226938.P17501057507005539286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064307 (2 * (n + 1)) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226938.P17501057507005539286

/-!
# A226939: A recursive variation of the Collatz-Fibonacci sequence: a(n) = 1 + min(a(C(n)),a(C(C(n)))) where C(n) = A006370(n), the Collatz map.

The programs for A226939, there is no canonical definition to state claims against.
-/

/-! ## A226939.P8787912802672392735

`ceil(A008908(n+1)/2)`
-/

namespace A226939.P8787912802672392735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008908 (n + 1) : ℚ) / 2⌉

end

end A226939.P8787912802672392735

/-! ## A226939.P13848880700361771160

`floor(A006577(n+1)/2)+1`
-/

namespace A226939.P13848880700361771160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006577 (n + 1) : ℚ) / 2⌋ + 1

end

end A226939.P13848880700361771160

/-! ## A226939.P17557075042911220923

`A008619(A006577(n+1))`
-/

namespace A226939.P17557075042911220923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006577 (n + 1)).toNat

end

end A226939.P17557075042911220923

/-! ## A226939.P3835599843022213241

`A065033(A008908(n+1))`
-/

namespace A226939.P3835599843022213241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008908 (n + 1)).toNat

end

end A226939.P3835599843022213241

/-! ## A226939.P5976104291099531946

`A004526(A008908(n+1)+1)`
-/

namespace A226939.P5976104291099531946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008908 (n + 1) + 1).toNat

end

end A226939.P5976104291099531946

/-! ## A226939.P8800521890891191501

`A008619(A008908(n+1)-1)`
-/

namespace A226939.P8800521890891191501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008908 (n + 1) - 1).toNat

end

end A226939.P8800521890891191501

/-! ## A226939.P3928541003301362984

`A002265(2*A006577(n+1))+1`
-/

namespace A226939.P3928541003301362984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A006577 (n + 1)).toNat + 1

end

end A226939.P3928541003301362984

/-! ## A226939.P5062693750940040270

`A002265(2*(A008908(n+1)+1))`
-/

namespace A226939.P5062693750940040270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A008908 (n + 1) + 1)).toNat

end

end A226939.P5062693750940040270

/-! ## A226939.P18030316734985922331

`A006370(or(1, A006577(n+1))+1)`
-/

namespace A226939.P18030316734985922331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.lor 1 (A006577 (n + 1)) + 1).toNat

end

end A226939.P18030316734985922331

/-! ## A226939.P10206500858555969444

`A028242(or(1, A006577(n+1)))+1`
-/

namespace A226939.P10206500858555969444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A006577 (n + 1))).toNat + 1

end

end A226939.P10206500858555969444

/-! ## A226939.P14948405592878838391

`A160413(or(1, A006577(n+1))+1)`
-/

namespace A226939.P14948405592878838391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (Int.lor 1 (A006577 (n + 1)) + 1).toNat

end

end A226939.P14948405592878838391

/-! ## A226939.P14147714735575144311

`A002265(A008908(n+1)+A008908(n+1)+2)`
-/

namespace A226939.P14147714735575144311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A008908 (n + 1) + (A008908 (n + 1) + 2)).toNat

end

end A226939.P14147714735575144311

/-! ## A226939.P6677714322462302157

`floor(A008908(2*(n+1))/2)`
-/

namespace A226939.P6677714322462302157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008908 (2 * (n + 1)) : ℚ) / 2⌋

end

end A226939.P6677714322462302157

/-! ## A226939.P6236566317295276044

`ceil(A006577(2*(n+1))/2)`
-/

namespace A226939.P6236566317295276044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006577 (2 * (n + 1)) : ℚ) / 2⌉

end

end A226939.P6236566317295276044

/-!
# A226940: a(0)=0; if a(n-1) is odd, a(n) = n + a(n-1), otherwise a(n) = n - a(n-1).

The programs for A226940, the canonical program `A226940.P10409856996643293458` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226940 has offset 0).

The definition of A226940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226940.P10409856996643293458

`(and(2, n)-1)*a(n-1)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226940

/-- `(and(2, n)-1)*a(n-1)+n` -/
def P10409856996643293458.Spec : Prop :=
  ∀ n, P10409856996643293458.a n = A226940 n

theorem P10409856996643293458.correct : P10409856996643293458.Spec := by
  intro n
  simp only [A226940]

end A226940

/-! ## A226940.P8679676934978842900

`n-(1-and(2, n))*a(n-1)` with `a(0)=0`
-/

namespace A226940.P8679676934978842900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (1 - (Nat.land 2 n : ℤ)) * a (n - 1)

end

end A226940.P8679676934978842900

namespace A226940

/-- `n-(1-and(2, n))*a(n-1)` -/
def P8679676934978842900.Spec : Prop :=
  ∀ n, P8679676934978842900.a n = A226940 n

end A226940

/-! ## A226940.P8494617953729044242

`a(n-1)/(and(2, n)-1)+n` with `a(0)=0`
-/

namespace A226940.P8494617953729044242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((Nat.land 2 n : ℤ) - 1 : ℚ) + (n : ℚ)

end

end A226940.P8494617953729044242

namespace A226940

/-- `a(n-1)/(and(2, n)-1)+n` -/
def P8494617953729044242.Spec : Prop :=
  ∀ n, P8494617953729044242.a n = (A226940 n : ℚ)

end A226940

/-! ## A226940.P12092521614057111201

`n-a(n-1)/(1-and(2, n))` with `a(0)=0`
-/

namespace A226940.P12092521614057111201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) - a (n - 1) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A226940.P12092521614057111201

namespace A226940

/-- `n-a(n-1)/(1-and(2, n))` -/
def P12092521614057111201.Spec : Prop :=
  ∀ n, P12092521614057111201.a n = (A226940 n : ℚ)

end A226940

/-! ## A226940.P5587651380373932369

`n-(-1)^a(n-1)*a(n-1)` with `a(0)=0`
-/

namespace A226940.P5587651380373932369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℝ) - (-1 : ℝ) ^ (a (n - 1)) * a (n - 1)

end

end A226940.P5587651380373932369

namespace A226940

/-- `n-(-1)^a(n-1)*a(n-1)` -/
def P5587651380373932369.Spec : Prop :=
  ∀ n, P5587651380373932369.a n = (A226940 n : ℝ)

end A226940

/-! ## A226940.P2481509232484928506

`n-a(n-1)/(-1)^a(n-1)` with `a(0)=0`
-/

namespace A226940.P2481509232484928506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℝ) - a (n - 1) / (-1 : ℝ) ^ (a (n - 1))

end

end A226940.P2481509232484928506

namespace A226940

/-- `n-a(n-1)/(-1)^a(n-1)` -/
def P2481509232484928506.Spec : Prop :=
  ∀ n, P2481509232484928506.a n = (A226940 n : ℝ)

end A226940

/-! ## A226940.P9683062141174735353

`2*a(n-1)/(n-xor(2, n))+n` with `a(0)=0`
-/

namespace A226940.P9683062141174735353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) / ((n : ℤ) - (Nat.xor 2 n : ℤ) : ℚ)) + (n : ℚ)

end

end A226940.P9683062141174735353

namespace A226940

/-- `2*a(n-1)/(n-xor(2, n))+n` -/
def P9683062141174735353.Spec : Prop :=
  ∀ n, P9683062141174735353.a n = (A226940 n : ℚ)

end A226940

/-! ## A226940.P8898089734266360413

`n-2/(xor(2, n)-n)*a(n-1)` with `a(0)=0`
-/

namespace A226940.P8898089734266360413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) - 2 / ((Nat.xor 2 n : ℤ) - (n : ℤ) : ℚ) * a (n - 1)

end

end A226940.P8898089734266360413

namespace A226940

/-- `n-2/(xor(2, n)-n)*a(n-1)` -/
def P8898089734266360413.Spec : Prop :=
  ∀ n, P8898089734266360413.a n = (A226940 n : ℚ)

end A226940

/-! ## A226940.P7210096534641036756

`(n-xor(3, n))%2*a(n-1)+n` with `a(0)=0`
-/

namespace A226940.P7210096534641036756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - (Nat.xor 3 n : ℤ)) 2 * a (n - 1) + (n : ℤ)

end

end A226940.P7210096534641036756

namespace A226940

/-- `(n-xor(3, n))%2*a(n-1)+n` -/
def P7210096534641036756.Spec : Prop :=
  ∀ n, P7210096534641036756.a n = A226940 n

end A226940

/-! ## A226940.P12842778859025002266

`n-(xor(3, n)-n)%2*a(n-1)` with `a(0)=0`
-/

namespace A226940.P12842778859025002266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.tmod ((Nat.xor 3 n : ℤ) - (n : ℤ)) 2 * a (n - 1)

end

end A226940.P12842778859025002266

namespace A226940

/-- `n-(xor(3, n)-n)%2*a(n-1)` -/
def P12842778859025002266.Spec : Prop :=
  ∀ n, P12842778859025002266.a n = A226940 n

end A226940

/-! ## A226940.P15877810162633688823

`(2*a(n-1)%2-1)*a(n-1)+n` with `a(0)=0`
-/

namespace A226940.P15877810162633688823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * Int.tmod (a (n - 1)) 2 - 1) * a (n - 1) + (n : ℤ)

end

end A226940.P15877810162633688823

namespace A226940

/-- `(2*a(n-1)%2-1)*a(n-1)+n` -/
def P15877810162633688823.Spec : Prop :=
  ∀ n, P15877810162633688823.a n = A226940 n

end A226940

/-! ## A226940.P12092579756551770789

`(2-a(gcd(2, a(n-1))))*a(n-1)+n` with `a(0)=0, a(1)=1`
-/

namespace A226940.P12092579756551770789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - a (Int.gcd 2 (a (n - 1)))) * a (n - 1) + (n : ℤ)

end

end A226940.P12092579756551770789

namespace A226940

/-- `(2-a(gcd(2, a(n-1))))*a(n-1)+n` -/
def P12092579756551770789.Spec : Prop :=
  ∀ n, P12092579756551770789.a n = A226940 n

end A226940

/-!
# A226941: Expansion of 1/((1-x)(1-3x)(1-6x)(1-10x)(1-15x)).

The programs for A226941, there is no canonical definition to state claims against.
-/

/-! ## A226941.P13374972368112009117

`A089274(n)/2^n`
-/

namespace A226941.P13374972368112009117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089274 n : ℚ) / (2 ^ n : ℚ)

end

end A226941.P13374972368112009117

/-! ## A226941.P865667033850977801

`floor(A089274(n)/A000079(n))`
-/

namespace A226941.P865667033850977801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089274 n : ℚ) / (A000079 n : ℚ)⌋

end

end A226941.P865667033850977801

/-! ## A226941.P10192996117769230090

`A080248(A167614(n+3)+1)`
-/

namespace A226941.P10192996117769230090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 (A167614 (n + 3) + 1).toNat

end

end A226941.P10192996117769230090

/-! ## A226941.P4284899076168810639

`A080248(eq[5, A002260(n+1)])`
-/

namespace A226941.P4284899076168810639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226941.P4284899076168810639

/-! ## A226941.P8592305755953406791

`A080248(A004526(Δ[A026046(n+6)]))`
-/

namespace A226941.P8592305755953406791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 (A004526 (f1 (n + 1) - f1 n).toNat).toNat

end

end A226941.P8592305755953406791

/-!
# A226944: Numbers k such that 1/k + Sum_{p|k} 1/p > 1.

The programs for A226944, the canonical program `A226944.P7176451047241022902` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226944 has offset 1).

The definition of A226944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226944.P7176451047241022902

`record[A000977(n+1)%A069359(A000977(n+1))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A226944

/-- `record[A000977(n+1)%A069359(A000977(n+1))]` -/
def P7176451047241022902.Spec : Prop :=
  ∀ n, P7176451047241022902.a n = A226944 (n + 1)

theorem P7176451047241022902.correct : P7176451047241022902.Spec := by
  intro n
  simp only [A226944, Nat.add_sub_cancel]

end A226944

/-! ## A226944.P10966057602468169654

`record[A291046(n+1)%A069359(A291046(n+1))]`
-/

namespace A226944.P10966057602468169654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291046 (n + 1)) (A069359 (A291046 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226944.P10966057602468169654

namespace A226944

/-- `record[A291046(n+1)%A069359(A291046(n+1))]` -/
def P10966057602468169654.Spec : Prop :=
  ∀ n, P10966057602468169654.a n = A226944 (n + 1)

end A226944

/-! ## A226944.P16745627166005135576

`lt[n, A069359(A028310(n))]`
-/

namespace A226944.P16745627166005135576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226944.P16745627166005135576

namespace A226944

/-- `lt[n, A069359(A028310(n))]` -/
def P16745627166005135576.Spec : Prop :=
  ∀ n, (P16745627166005135576.a n : ℤ) = A226944 (n + 1)

end A226944

/-! ## A226944.P11776114258308195092

`A014681(lt[n, A069359(n+1)])`
-/

namespace A226944.P11776114258308195092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A226944.P11776114258308195092

namespace A226944

/-- `A014681(lt[n, A069359(n+1)])` -/
def P11776114258308195092.Spec : Prop :=
  ∀ n, P11776114258308195092.a n = A226944 (n + 1)

end A226944

/-! ## A226944.P12595186136443188696

`A113484(lt[n, A069359(n+1)])`
-/

namespace A226944.P12595186136443188696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A226944.P12595186136443188696

namespace A226944

/-- `A113484(lt[n, A069359(n+1)])` -/
def P12595186136443188696.Spec : Prop :=
  ∀ n, P12595186136443188696.a n = A226944 (n + 1)

end A226944

/-!
# A226945: Integer nearest f(10^n), where f(x) = Sum of ( mu(k) * H(k)/k^(3/2) * Integral Log(x^(1/k)) ) for k = 1 to infinity, where H(k) is the harmonic number Sum_{i=1..k} 1/i.

The programs for A226945, there is no canonical definition to state claims against.
-/

/-! ## A226945.P17818478390510416497

`A006880(n+1)-A228724(n+1)`
-/

namespace A226945.P17818478390510416497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A228724 (n + 1)

end

end A226945.P17818478390510416497

/-! ## A226945.P3050917094479541776

`A057754(n+1)-(A228724(n+1)+A057752(n+1))`
-/

namespace A226945.P3050917094479541776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) - (A228724 (n + 1) + A057752 (n + 1))

end

end A226945.P3050917094479541776

/-! ## A226945.P2336989192226613911

`A190802(n+1)-(A228724(n+1)+A106313(n+1))`
-/

namespace A226945.P2336989192226613911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) - (A228724 (n + 1) + A106313 (n + 1))

end

end A226945.P2336989192226613911

/-! ## A226945.P7604332885102090810

`A057793(n+1)-(A228724(n+1)+A057794(n+1))`
-/

namespace A226945.P7604332885102090810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057793 (n + 1) - (A228724 (n + 1) + A057794 (n + 1))

end

end A226945.P7604332885102090810

/-! ## A226945.P1864634675676097471

`A122121(A005843(n+1))-A228724(n+1)`
-/

namespace A226945.P1864634675676097471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A005843 (n + 1)).toNat - A228724 (n + 1)

end

end A226945.P1864634675676097471

/-!
# A226946: Numbers that can't be written as x^2 + x*y + y^2, with 0 <= x <= y and gcd(x,y) = 1.

The programs for A226946, the canonical program `A226946.P9210141251982775955` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226946 has offset 1).

The definition of A226946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226946.P15821060743221076310

`comp[A034017(n+1)]`
-/

namespace A226946.P15821060743221076310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226946.P15821060743221076310

namespace A226946

/-- `comp[A034017(n+1)]` -/
def P15821060743221076310.Spec : Prop :=
  ∀ n, (P15821060743221076310.a n : ℤ) = A226946 (n + 1)

end A226946

/-! ## A226946.P6094312976324206249

`∪[A034018(n+1), A034020(n+1)]`
-/

namespace A226946.P6094312976324206249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A226946.P6094312976324206249

namespace A226946

/-- `∪[A034018(n+1), A034020(n+1)]` -/
def P6094312976324206249.Spec : Prop :=
  ∀ n, (P6094312976324206249.a n : ℤ) = A226946 (n + 1)

end A226946

/-! ## A226946.P9210141251982775955

`eq[0, A000086(n+2)]+2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226946

/-- `eq[0, A000086(n+2)]+2` -/
def P9210141251982775955.Spec : Prop :=
  ∀ n, (P9210141251982775955.a n : ℤ) = A226946 (n + 1)

theorem P9210141251982775955.correct : P9210141251982775955.Spec := by
  intro n
  simp only [A226946, Nat.add_sub_cancel]

end A226946

/-! ## A226946.P12156942434921029669

`lt[A000086(n+1), 1]+1`
-/

namespace A226946.P12156942434921029669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A226946.P12156942434921029669

namespace A226946

/-- `lt[A000086(n+1), 1]+1` -/
def P12156942434921029669.Spec : Prop :=
  ∀ n, (P12156942434921029669.a n : ℤ) = A226946 (n + 1)

end A226946

/-! ## A226946.P7683567940490316401

`eq[0, A001615(n+1)%3]+1`
-/

namespace A226946.P7683567940490316401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226946.P7683567940490316401

namespace A226946

/-- `eq[0, A001615(n+1)%3]+1` -/
def P7683567940490316401.Spec : Prop :=
  ∀ n, (P7683567940490316401.a n : ℤ) = A226946 (n + 1)

end A226946

/-! ## A226946.P1392290930180952517

`eq[0, A000086(A028310(n))]`
-/

namespace A226946.P1392290930180952517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226946.P1392290930180952517

namespace A226946

/-- `eq[0, A000086(A028310(n))]` -/
def P1392290930180952517.Spec : Prop :=
  ∀ n, (P1392290930180952517.a n : ℤ) = A226946 (n + 1)

end A226946

/-! ## A226946.P10105598230850760711

`eq[1, A000086(A257088(n))+1]`
-/

namespace A226946.P10105598230850760711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A257088 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226946.P10105598230850760711

namespace A226946

/-- `eq[1, A000086(A257088(n))+1]` -/
def P10105598230850760711.Spec : Prop :=
  ∀ n, (P10105598230850760711.a n : ℤ) = A226946 (n + 1)

end A226946

/-! ## A226946.P7227089787002837067

`eq[A000091(2*(n+1)), A000091(n+1)]+1`
-/

namespace A226946.P7227089787002837067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000091 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226946.P7227089787002837067

namespace A226946

/-- `eq[A000091(2*(n+1)), A000091(n+1)]+1` -/
def P7227089787002837067.Spec : Prop :=
  ∀ n, (P7227089787002837067.a n : ℤ) = A226946 (n + 1)

end A226946

/-! ## A226946.P7881433645318262918

`lt[A004016(n), A032741(A008458(n))]`
-/

namespace A226946.P7881433645318262918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226946.P7881433645318262918

namespace A226946

/-- `lt[A004016(n), A032741(A008458(n))]` -/
def P7881433645318262918.Spec : Prop :=
  ∀ n, (P7881433645318262918.a n : ℤ) = A226946 (n + 1)

end A226946

/-!
# A226947: Number of runs of strictly increasing numbers of 2 X 2 squares in the list of partitions of an n X n square lattice into squares, considering only the list of parts, where partition sorting order is ascending with larger squares taking higher precedence.

The programs for A226947, there is no canonical definition to state claims against.
-/

/-! ## A226947.P16426498423173594489

`A103221(A154726(3*n+5)+A103662(n))`
-/

namespace A226947.P16426498423173594489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A154726 (3 * n + 5) + A103662 n).toNat

end

end A226947.P16426498423173594489

/-! ## A226947.P12547983734739160783

`A357482(A192677(n+1))`
-/

namespace A226947.P12547983734739160783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357482 (A192677 (n + 1)).toNat

end

end A226947.P12547983734739160783

/-! ## A226947.P12448978949036969227

`A122921(A049165(n)+2+n)`
-/

namespace A226947.P12448978949036969227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A049165 n + 2 + (n : ℤ)).toNat

end

end A226947.P12448978949036969227

/-! ## A226947.P12662769359337316871

`A122921(A058000(n+1)-n)`
-/

namespace A226947.P12662769359337316871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A058000 (n + 1) - (n : ℤ)).toNat

end

end A226947.P12662769359337316871

/-! ## A226947.P8869943176232089427

`A067595(A272633(n)+A018190(n+1))`
-/

namespace A226947.P8869943176232089427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A272633 n + A018190 (n + 1)).toNat

end

end A226947.P8869943176232089427

/-!
# A226949: Number of twin prime pairs of the form k*n +/ - 1 with k <= n.

The programs for A226949, there is no canonical definition to state claims against.
-/

/-! ## A226949.P9656167917058882363

`A210444(n+1)+A010051(A220051(n))`
-/

namespace A226949.P9656167917058882363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210444 (n + 1) + A010051 (A220051 n).toNat

end

end A226949.P9656167917058882363

/-! ## A226949.P637244220897598443

`A210444(n+1)+A010054(A022367(n))`
-/

namespace A226949.P637244220897598443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210444 (n + 1) + A010054 (A022367 n).toNat

end

end A226949.P637244220897598443

/-! ## A226949.P15213030616160503420

`A210444(n+1)+A000007(A034008(n))`
-/

namespace A226949.P15213030616160503420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210444 (n + 1) + A000007 (A034008 n).toNat

end

end A226949.P15213030616160503420

/-! ## A226949.P2022240984740828152

`A210444(n+1)+A036987(A226311(n))`
-/

namespace A226949.P2022240984740828152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210444 (n + 1) + A036987 (A226311 n).toNat

end

end A226949.P2022240984740828152

/-! ## A226949.P2514701171263706624

`gcd(A129950(A128209(n)), A210444(n+1))`
-/

namespace A226949.P2514701171263706624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129950 (A128209 n).toNat) (A210444 (n + 1))

end

end A226949.P2514701171263706624

/-!
# A226953: Leap year numbers: numbers n such that tau(phi(n)) = phi(tau(n))^2, where tau(n) is the number of divisors of n and phi(n) the Euler totient function.

The programs for A226953, the canonical program `A226953.P559492349388349855` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226953 has offset 1).

The definition of A226953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226953.P559492349388349855

`eq[A163109(n+1)², A062821(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A226953

/-- `eq[A163109(n+1)², A062821(n+1)]+1` -/
def P559492349388349855.Spec : Prop :=
  ∀ n, (P559492349388349855.a n : ℤ) = A226953 (n + 1)

theorem P559492349388349855.correct : P559492349388349855.Spec := by
  intro n
  simp only [A226953, Nat.add_sub_cancel]

end A226953

/-!
# A226954: Numbers n such that there are seven distinct triples (k, k+n, k+2n) of squares.

The programs for A226954, there is no canonical definition to state claims against.
-/

/-! ## A226954.P570076122388975812

`49*A226858(n+1)`
-/

namespace A226954.P570076122388975812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A226858 (n + 1)

end

end A226954.P570076122388975812

/-!
# A226956: a(0)=a(1)=1, a(n+2) = a(n+1) + a(n) - A128834(n).

The programs for A226956, the canonical program `A226956.P12621786179869718558` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226956 has offset 0).

The definition of A226956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226956.P12621786179869718558

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226956

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P12621786179869718558.Spec : Prop :=
  ∀ n, P12621786179869718558.a n = A226956 n

theorem P12621786179869718558.correct : P12621786179869718558.Spec := by
  intro n
  simp only [A226956]

end A226956

/-! ## A226956.P17855419549382571704

`ogf((1-x+x^2-x^3)/(1-2x+x^2-x^4))`
-/

namespace A226956.P17855419549382571704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -1] [1, -2, 1, 0, -1] n

end

end A226956.P17855419549382571704

namespace A226956

/-- `ogf((1-x+x^2-x^3)/(1-2x+x^2-x^4))` -/
def P17855419549382571704.Spec : Prop :=
  ∀ n, P17855419549382571704.a n = A226956 n

end A226956

/-! ## A226956.P6699823426350430052

`A254729(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A226956.P6699823426350430052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A254729 n - a (n - 3)

end

end A226956.P6699823426350430052

namespace A226956

/-- `A254729(n)-a(n-3)` -/
def P6699823426350430052.Spec : Prop :=
  ∀ n, P6699823426350430052.a n = A226956 n

end A226956

/-! ## A226956.P13557111345784657360

`A000032(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A226956.P13557111345784657360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000032 (n - 1) - a (n - 3)

end

end A226956.P13557111345784657360

namespace A226956

/-- `A000032(n-1)-a(n-3)` -/
def P13557111345784657360.Spec : Prop :=
  ∀ n, P13557111345784657360.a n = A226956 n

end A226956

/-! ## A226956.P13957839255719375243

`A286350(n)+A152163(n)`
-/

namespace A226956.P13957839255719375243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n + A152163 n

end

end A226956.P13957839255719375243

namespace A226956

/-- `A286350(n)+A152163(n)` -/
def P13957839255719375243.Spec : Prop :=
  ∀ n, P13957839255719375243.a n = A226956 n

end A226956

/-! ## A226956.P7777318040722670460

`A173495(n)-A131532(n)`
-/

namespace A226956.P7777318040722670460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 n - A131532 n

end

end A226956.P7777318040722670460

namespace A226956

/-- `A173495(n)-A131532(n)` -/
def P7777318040722670460.Spec : Prop :=
  ∀ n, P7777318040722670460.a n = A226956 n

end A226956

/-! ## A226956.P14942688938057569095

`A212804(n)+∑[A005252(n)-A212804(n)]`
-/

namespace A226956.P14942688938057569095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226956.P14942688938057569095

namespace A226956

/-- `A212804(n)+∑[A005252(n)-A212804(n)]` -/
def P14942688938057569095.Spec : Prop :=
  ∀ n, P14942688938057569095.a n = A226956 n

end A226956

/-! ## A226956.P12180271324864958634

`A000045(n+1)+A000045(n)-A286311(n)`
-/

namespace A226956.P12180271324864958634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000045 n - A286311 n)

end

end A226956.P12180271324864958634

namespace A226956

/-- `A000045(n+1)+A000045(n)-A286311(n)` -/
def P12180271324864958634.Spec : Prop :=
  ∀ n, P12180271324864958634.a n = A226956 n

end A226956

/-! ## A226956.P16400988332451941759

`A000045(n+1)+A005252(n)-A005252(n+1)`
-/

namespace A226956.P16400988332451941759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A005252 n - A005252 (n + 1))

end

end A226956.P16400988332451941759

namespace A226956

/-- `A000045(n+1)+A005252(n)-A005252(n+1)` -/
def P16400988332451941759.Spec : Prop :=
  ∀ n, P16400988332451941759.a n = A226956 n

end A226956

/-! ## A226956.P16102556315552130320

`A108014(n)-a(n-1)` with `a(0)=1`
-/

namespace A226956.P16102556315552130320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108014 n - a (n - 1)

end

end A226956.P16102556315552130320

namespace A226956

/-- `A108014(n)-a(n-1)` -/
def P16102556315552130320.Spec : Prop :=
  ∀ n, P16102556315552130320.a n = A226956 n

end A226956

/-! ## A226956.P5392897321676242315

`∑[A005252(n)]-A000045(n)`
-/

namespace A226956.P5392897321676242315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A226956.P5392897321676242315

namespace A226956

/-- `∑[A005252(n)]-A000045(n)` -/
def P5392897321676242315.Spec : Prop :=
  ∀ n, P5392897321676242315.a n = A226956 n

end A226956

/-! ## A226956.P14257908754268478282

`A024490(n+2)-A000045(n)`
-/

namespace A226956.P14257908754268478282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - A000045 n

end

end A226956.P14257908754268478282

namespace A226956

/-- `A024490(n+2)-A000045(n)` -/
def P14257908754268478282.Spec : Prop :=
  ∀ n, P14257908754268478282.a n = A226956 n

end A226956

/-! ## A226956.P15987605000276226492

`A000045(n+2)-A286311(n)`
-/

namespace A226956.P15987605000276226492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A286311 n

end

end A226956.P15987605000276226492

namespace A226956

/-- `A000045(n+2)-A286311(n)` -/
def P15987605000276226492.Spec : Prop :=
  ∀ n, P15987605000276226492.a n = A226956 n

end A226956

/-! ## A226956.P11212242699204210231

`(A128834(n)+A000032(n))/2`
-/

namespace A226956.P11212242699204210231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 n + A000032 n : ℚ) / 2

end

end A226956.P11212242699204210231

namespace A226956

/-- `(A128834(n)+A000032(n))/2` -/
def P11212242699204210231.Spec : Prop :=
  ∀ n, P11212242699204210231.a n = (A226956 n : ℚ)

end A226956

/-! ## A226956.P1329633828262013238

`A286350(n)-Δ[Δ[A001611(n)]]`
-/

namespace A226956.P1329633828262013238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n - (f1 (n + 1) - f1 n)

end

end A226956.P1329633828262013238

namespace A226956

/-- `A286350(n)-Δ[Δ[A001611(n)]]` -/
def P1329633828262013238.Spec : Prop :=
  ∀ n, P1329633828262013238.a n = A226956 n

end A226956

/-! ## A226956.P175966268073757054

`∑[A005252(n)]-A212804(n+1)`
-/

namespace A226956.P175966268073757054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212804 (n + 1)

end

end A226956.P175966268073757054

namespace A226956

/-- `∑[A005252(n)]-A212804(n+1)` -/
def P175966268073757054.Spec : Prop :=
  ∀ n, P175966268073757054.a n = A226956 n

end A226956

/-! ## A226956.P2332568386559984621

`A024490(n+2)-A212804(n+1)`
-/

namespace A226956.P2332568386559984621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - A212804 (n + 1)

end

end A226956.P2332568386559984621

namespace A226956

/-- `A024490(n+2)-A212804(n+1)` -/
def P2332568386559984621.Spec : Prop :=
  ∀ n, P2332568386559984621.a n = A226956 n

end A226956

/-! ## A226956.P6088415244705111305

`A174619(2*(n+1))-A000045(n)`
-/

namespace A226956.P6088415244705111305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * (n + 1)) - A000045 n

end

end A226956.P6088415244705111305

namespace A226956

/-- `A174619(2*(n+1))-A000045(n)` -/
def P6088415244705111305.Spec : Prop :=
  ∀ n, P6088415244705111305.a n = A226956 n

end A226956

/-! ## A226956.P8245185086236578145

`A024490(n+2)-A103609(2*n)`
-/

namespace A226956.P8245185086236578145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - A103609 (2 * n)

end

end A226956.P8245185086236578145

namespace A226956

/-- `A024490(n+2)-A103609(2*n)` -/
def P8245185086236578145.Spec : Prop :=
  ∀ n, P8245185086236578145.a n = A226956 n

end A226956

/-!
# A226957: Number of prime divisors p of 2n such that p-1 divides n.

The programs for A226957, the canonical program `A226957.P17099637292420702484` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226957 has offset 1).

The definition of A226957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226957.P17099637292420702484

`A001221(2*A225821(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A226957

/-- `A001221(2*A225821(n+1))` -/
def P17099637292420702484.Spec : Prop :=
  ∀ n, P17099637292420702484.a n = A226957 (n + 1)

theorem P17099637292420702484.correct : P17099637292420702484.Spec := by
  intro n
  simp only [A226957, Nat.add_sub_cancel]

end A226957

/-! ## A226957.P5925873503097255772

`A001221(2*gcd(n+1, A027642(n+1)))`
-/

namespace A226957.P5925873503097255772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * Int.gcd (n + 1 : ℤ) (A027642 (n + 1)))

end

end A226957.P5925873503097255772

namespace A226957

/-- `A001221(2*gcd(n+1, A027642(n+1)))` -/
def P5925873503097255772.Spec : Prop :=
  ∀ n, P5925873503097255772.a n = A226957 (n + 1)

end A226957

/-! ## A226957.P13506201065488100257

`A001222(gcd(2*(n+1), A141056(n+1)))`
-/

namespace A226957.P13506201065488100257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 * (n + 1) : ℤ) (A141056 (n + 1)))

end

end A226957.P13506201065488100257

namespace A226957

/-- `A001222(gcd(2*(n+1), A141056(n+1)))` -/
def P13506201065488100257.Spec : Prop :=
  ∀ n, P13506201065488100257.a n = A226957 (n + 1)

end A226957

/-! ## A226957.P6689122577868224292

`A001221(A225821(n+1)+A225821(n+1))`
-/

namespace A226957.P6689122577868224292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A225821 (n + 1) + A225821 (n + 1)).toNat

end

end A226957.P6689122577868224292

namespace A226957

/-- `A001221(A225821(n+1)+A225821(n+1))` -/
def P6689122577868224292.Spec : Prop :=
  ∀ n, P6689122577868224292.a n = A226957 (n + 1)

theorem P6689122577868224292.correct : P6689122577868224292.Spec := by
  intro n
  simp only [A226957, Nat.add_sub_cancel, A226957.P6689122577868224292.a, A226957.P17099637292420702484.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A226957

/-! ## A226957.P2937910219082678261

`A001222(A225821(n+1)*A225821(A225821(n+1)+1))`
-/

namespace A226957.P2937910219082678261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225821 (n + 1) * A225821 (A225821 (n + 1) + 1).toNat).toNat

end

end A226957.P2937910219082678261

namespace A226957

/-- `A001222(A225821(n+1)*A225821(A225821(n+1)+1))` -/
def P2937910219082678261.Spec : Prop :=
  ∀ n, P2937910219082678261.a n = A226957 (n + 1)

end A226957

/-! ## A226957.P16734464436735294253

`A001221(2*A193267(n+1))`
-/

namespace A226957.P16734464436735294253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A193267 (n + 1)).toNat

end

end A226957.P16734464436735294253

namespace A226957

/-- `A001221(2*A193267(n+1))` -/
def P16734464436735294253.Spec : Prop :=
  ∀ n, P16734464436735294253.a n = A226957 (n + 1)

end A226957

/-! ## A226957.P8421689863910718146

`A001222(A225821(n+1)*A225821(A225821(n²+4)))`
-/

namespace A226957.P8421689863910718146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225821 (n + 1) * A225821 (A225821 (n ^ 2 + 4)).toNat).toNat

end

end A226957.P8421689863910718146

namespace A226957

/-- `A001222(A225821(n+1)*A225821(A225821(n²+4)))` -/
def P8421689863910718146.Spec : Prop :=
  ∀ n, P8421689863910718146.a n = A226957 (n + 1)

end A226957

/-!
# A226958: a(n) = Fibonacci(n-2)*Fibonacci(n)*Fibonacci(n+2).

The programs for A226958, the canonical program `A226958.P7067408086003296208` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226958 has offset 1).

The definition of A226958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226958.P7067408086003296208

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=2, a(1)=0, a(2)=10, a(3)=24`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226958

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P7067408086003296208.Spec : Prop :=
  ∀ n, P7067408086003296208.a n = A226958 (n + 1)

theorem P7067408086003296208.correct : P7067408086003296208.Spec := by
  intro n
  simp only [A226958, Nat.add_sub_cancel]

end A226958

/-! ## A226958.P11521866600647388480

`ogf((2-6x-2x^2)/(1-3x-6x^2+3x^3+x^4))`
-/

namespace A226958.P11521866600647388480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, -2] [1, -3, -6, 3, 1] n

end

end A226958.P11521866600647388480

namespace A226958

/-- `ogf((2-6x-2x^2)/(1-3x-6x^2+3x^3+x^4))` -/
def P11521866600647388480.Spec : Prop :=
  ∀ n, P11521866600647388480.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P11197990795166526389

`∑[A212804(n)]*A192883(n)`
-/

namespace A226958.P11197990795166526389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A192883 n

end

end A226958.P11197990795166526389

namespace A226958

/-- `∑[A212804(n)]*A192883(n)` -/
def P11197990795166526389.Spec : Prop :=
  ∀ n, P11197990795166526389.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P9701040545602415629

`A000045(n+1)*A192883(n)`
-/

namespace A226958.P9701040545602415629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A192883 n

end

end A226958.P9701040545602415629

namespace A226958

/-- `A000045(n+1)*A192883(n)` -/
def P9701040545602415629.Spec : Prop :=
  ∀ n, P9701040545602415629.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P9323494354632697489

`A059929(n+1)*A212804(n)`
-/

namespace A226958.P9323494354632697489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (n + 1) * A212804 n

end

end A226958.P9323494354632697489

namespace A226958

/-- `A059929(n+1)*A212804(n)` -/
def P9323494354632697489.Spec : Prop :=
  ∀ n, P9323494354632697489.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P11031621318748311638

`A192883(n)*A212804(n+2)`
-/

namespace A226958.P11031621318748311638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n * A212804 (n + 2)

end

end A226958.P11031621318748311638

namespace A226958

/-- `A192883(n)*A212804(n+2)` -/
def P11031621318748311638.Spec : Prop :=
  ∀ n, P11031621318748311638.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P2011100468185934576

`Δ[A000045(n)]*A059929(n+1)`
-/

namespace A226958.P2011100468185934576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A059929 (n + 1)

end

end A226958.P2011100468185934576

namespace A226958

/-- `Δ[A000045(n)]*A059929(n+1)` -/
def P2011100468185934576.Spec : Prop :=
  ∀ n, P2011100468185934576.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P12842296090982292072

`A070550(2*n+1)*A212804(n)`
-/

namespace A226958.P12842296090982292072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (2 * n + 1) * A212804 n

end

end A226958.P12842296090982292072

namespace A226958

/-- `A070550(2*n+1)*A212804(n)` -/
def P12842296090982292072.Spec : Prop :=
  ∀ n, P12842296090982292072.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P2217125690811430535

`A000045(n+1)*A295688(2*n)`
-/

namespace A226958.P2217125690811430535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A295688 (2 * n)

end

end A226958.P2217125690811430535

namespace A226958

/-- `A000045(n+1)*A295688(2*n)` -/
def P2217125690811430535.Spec : Prop :=
  ∀ n, P2217125690811430535.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P15243688008174627353

`∑[A000045(abs(1-n))]*A192883(n)`
-/

namespace A226958.P15243688008174627353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A192883 n

end

end A226958.P15243688008174627353

namespace A226958

/-- `∑[A000045(abs(1-n))]*A192883(n)` -/
def P15243688008174627353.Spec : Prop :=
  ∀ n, P15243688008174627353.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P8182733132942224679

`Δ[A000045(n)]*A070550(2*n+1)`
-/

namespace A226958.P8182733132942224679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A070550 (2 * n + 1)

end

end A226958.P8182733132942224679

namespace A226958

/-- `Δ[A000045(n)]*A070550(2*n+1)` -/
def P8182733132942224679.Spec : Prop :=
  ∀ n, P8182733132942224679.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P16749120342194311483

`(Δ[A001654(n)]-A001654(n))*A020695(n)`
-/

namespace A226958.P16749120342194311483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A001654 n) * A020695 n

end

end A226958.P16749120342194311483

namespace A226958

/-- `(Δ[A001654(n)]-A001654(n))*A020695(n)` -/
def P16749120342194311483.Spec : Prop :=
  ∀ n, P16749120342194311483.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P4179846184325991069

`A020695(n)*A212804(n)*∑[A212804(n)]`
-/

namespace A226958.P4179846184325991069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A212804 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226958.P4179846184325991069

namespace A226958

/-- `A020695(n)*A212804(n)*∑[A212804(n)]` -/
def P4179846184325991069.Spec : Prop :=
  ∀ n, P4179846184325991069.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P16025225407240261037

`(A033999(n)+A007598(n+1))*A000045(n+1)`
-/

namespace A226958.P16025225407240261037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A007598 (n + 1)) * A000045 (n + 1)

end

end A226958.P16025225407240261037

namespace A226958

/-- `(A033999(n)+A007598(n+1))*A000045(n+1)` -/
def P16025225407240261037.Spec : Prop :=
  ∀ n, P16025225407240261037.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P14679480676697346629

`(A192919(n)+A121646(n+1))*A000045(n+1)`
-/

namespace A226958.P14679480676697346629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192919 n + A121646 (n + 1)) * A000045 (n + 1)

end

end A226958.P14679480676697346629

namespace A226958

/-- `(A192919(n)+A121646(n+1))*A000045(n+1)` -/
def P14679480676697346629.Spec : Prop :=
  ∀ n, P14679480676697346629.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P645489048598090448

`(A000032(n)-A000045(n+1))*A059929(n+1)`
-/

namespace A226958.P645489048598090448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A000045 (n + 1)) * A059929 (n + 1)

end

end A226958.P645489048598090448

namespace A226958

/-- `(A000032(n)-A000045(n+1))*A059929(n+1)` -/
def P645489048598090448.Spec : Prop :=
  ∀ n, P645489048598090448.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P11107014202021304495

`(A000045(n+1)-A000045(n))*A059929(n+1)`
-/

namespace A226958.P11107014202021304495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A000045 n) * A059929 (n + 1)

end

end A226958.P11107014202021304495

namespace A226958

/-- `(A000045(n+1)-A000045(n))*A059929(n+1)` -/
def P11107014202021304495.Spec : Prop :=
  ∀ n, P11107014202021304495.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P6684262644448394124

`(A102714(n)-A192914(n+1))*A000045(n+1)`
-/

namespace A226958.P6684262644448394124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102714 n - A192914 (n + 1)) * A000045 (n + 1)

end

end A226958.P6684262644448394124

namespace A226958

/-- `(A102714(n)-A192914(n+1))*A000045(n+1)` -/
def P6684262644448394124.Spec : Prop :=
  ∀ n, P6684262644448394124.a n = A226958 (n + 1)

end A226958

/-! ## A226958.P1694366478034443248

`(A121646(n+2)+A059929(n+1))*A000045(n+1)`
-/

namespace A226958.P1694366478034443248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121646 (n + 2) + A059929 (n + 1)) * A000045 (n + 1)

end

end A226958.P1694366478034443248

namespace A226958

/-- `(A121646(n+2)+A059929(n+1))*A000045(n+1)` -/
def P1694366478034443248.Spec : Prop :=
  ∀ n, P1694366478034443248.a n = A226958 (n + 1)

end A226958

/-!
# A226959: a(0)=1 and a(n)=prime(n)*lcm(prime(n)-1, a(n-1)) for n > 0.

The programs for A226959, there is no canonical definition to state claims against.
-/

/-! ## A226959.P8506181652319500762

`lcm(-a(n-1), record[A103164(n)-n])` with `a(0)=1`
-/

namespace A226959.P8506181652319500762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A226959.P8506181652319500762

/-! ## A226959.P11936683479120368906

`lcm(A002110(n), A058254(n))`
-/

namespace A226959.P11936683479120368906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002110 n) (A058254 n)

end

end A226959.P11936683479120368906

/-! ## A226959.P6289528489799912526

`A058254(n)*A060753(n+1)`
-/

namespace A226959.P6289528489799912526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 n * A060753 (n + 1)

end

end A226959.P6289528489799912526

/-! ## A226959.P4254815975293691568

`lcm(a(n-1), A000010(A000040(n)²))` with `a(0)=1`
-/

namespace A226959.P4254815975293691568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000010 (A000040 n ^ 2).toNat)

end

end A226959.P4254815975293691568

/-! ## A226959.P12727274198713745328

`A058254(n)*A076358(A006093(n+1))`
-/

namespace A226959.P12727274198713745328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 n * A076358 (A006093 (n + 1)).toNat

end

end A226959.P12727274198713745328

/-! ## A226959.P6678710099059957777

`A058254(n)*A076358(A015919(n+1))`
-/

namespace A226959.P6678710099059957777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 n * A076358 (A015919 (n + 1)).toNat

end

end A226959.P6678710099059957777

/-!
# A226960: Numbers n such that 1^n + 2^n + 3^n +...+ n^n == 2 (mod n).

The programs for A226960, there is no canonical definition to state claims against.
-/

/-! ## A226960.P15644815575459718346

`floor((a(n-1)+1)²/2)` with `a(0)=1, a(1)=4`
-/

namespace A226960.P15644815575459718346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊((a (n - 1) + 1) ^ 2 : ℚ) / 2⌋

end

end A226960.P15644815575459718346

/-!
# A226961: Numbers n such that 1^n + 2^n + 3^n + ... + n^n == 3 (mod n).

The programs for A226961, there is no canonical definition to state claims against.
-/

/-! ## A226961.P3588961105229401009

`A070167(A346551(n+1))`
-/

namespace A226961.P3588961105229401009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (A346551 (n + 1)).toNat

end

end A226961.P3588961105229401009

/-!
# A226962: Numbers n such that 1^n + 2^n + 3^n + ... + n^n == 4 (mod n).

The programs for A226962, there is no canonical definition to state claims against.
-/

/-! ## A226962.P14663538427367324489

`a(n-1)+(a(n-1)/2)²` with `a(0)=1, a(1)=8`
-/

namespace A226962.P14663538427367324489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + (a (n - 1) / 2) ^ 2

end

end A226962.P14663538427367324489

/-!
# A226963: Numbers n such that 1^n + 2^n + 3^n + ... + n^n == 5 (mod n).

The programs for A226963, there is no canonical definition to state claims against.
-/

/-! ## A226963.P6014563996411716279

`record[∏{p}[n*a(n-1), #]]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A226963.P6014563996411716279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 5] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226963.P6014563996411716279

/-! ## A226963.P15815276722370242707

`A018336(∑[n]+1)`
-/

namespace A226963.P15815276722370242707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018336 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226963.P15815276722370242707

/-!
# A226964: Numbers n such that 1^n + 2^n + 3^n + ... + n^n == 6 (mod n).

The programs for A226964, there is no canonical definition to state claims against.
-/

/-! ## A226964.P14436130133879320965

`A346554(n+2)%A346600(A346601(n+2))`
-/

namespace A226964.P14436130133879320965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346554 (n + 2)) (A346600 (A346601 (n + 2)).toNat)

end

end A226964.P14436130133879320965

/-! ## A226964.P9408289958698977461

`∪[A346601(A346553(n+1)), A346554(n+5)]`
-/

namespace A226964.P9408289958698977461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346601 (A346553 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346554 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A226964.P9408289958698977461

/-!
# A226965: Numbers n such that 1^n + 2^n + 3^n +...+ n^n == 7 (mod n).

The programs for A226965, there is no canonical definition to state claims against.
-/

/-! ## A226965.P12215152032177032018

`A346555(n+1)%A297374(A018167(n))`
-/

namespace A226965.P12215152032177032018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346555 (n + 1)) (A297374 (A018167 n).toNat)

end

end A226965.P12215152032177032018

/-! ## A226965.P6454545753351571302

`record[gcd(A101427(n), A208879(n))]`
-/

namespace A226965.P6454545753351571302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101427 n) (A208879 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226965.P6454545753351571302

/-!
# A226966: Numbers n such that 1^n + 2^n + 3^n + ... + n^n == 8 (mod n).

The programs for A226966, there is no canonical definition to state claims against.
-/

/-! ## A226966.P7812693840642969045

`lcm(a(n-1)+8, a(n-1))` with `a(0)=1, a(1)=16`
-/

namespace A226966.P7812693840642969045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  Nat.lcm (a (n - 1) + 8) (a (n - 1))

end

end A226966.P7812693840642969045

/-!
# A226967: Numbers n such that 1^n + 2^n + 3^n + ... + n^n == 9 (mod n).

The programs for A226967, there is no canonical definition to state claims against.
-/

/-! ## A226967.P11267927282511884591

`A049317(∏[or(2, n)])`
-/

namespace A226967.P11267927282511884591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A226967.P11267927282511884591

/-! ## A226967.P8762858033768283905

`round(A081502(∏[n+2])/4)`
-/

namespace A226967.P8762858033768283905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081502 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4)

end

end A226967.P8762858033768283905

/-!
# A226968: Number of labeled octopi with n nodes such that each tentacle has an odd number of nodes.

The programs for A226968, there is no canonical definition to state claims against.
-/

/-! ## A226968.P2549296804220144157

`abs(1-n)!*∑{d}[n, A031367(#)]`
-/

namespace A226968.P2549296804220144157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A031367 d)

end

end A226968.P2549296804220144157

/-! ## A226968.P7512193424500384104

`A001350(n)*A104150(n)`
-/

namespace A226968.P7512193424500384104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n * A104150 n

end

end A226968.P7512193424500384104

/-! ## A226968.P4833884190190019808

`(A020878(n)-2)*A084938(∑[n]+1)`
-/

namespace A226968.P4833884190190019808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020878 n - 2) * A084938 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226968.P4833884190190019808

/-! ## A226968.P17265495303806759355

`A001350(n)*A132393(A000124(n))`
-/

namespace A226968.P17265495303806759355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n * A132393 (A000124 n).toNat

end

end A226968.P17265495303806759355

/-! ## A226968.P13149417030448913556

`A001350(n)*A008279(A212342(n))`
-/

namespace A226968.P13149417030448913556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n * A008279 (A212342 n).toNat

end

end A226968.P13149417030448913556

/-!
# A226969: Numbers whose base-4 sum of digits is 4.

The programs for A226969, the canonical program `A226969.P9831287097395014531` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226969 has offset 1).

The definition of A226969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226969.P9831287097395014531

`eq[4, A053737(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A226969

/-- `eq[4, A053737(n)]` -/
def P9831287097395014531.Spec : Prop :=
  ∀ n, (P9831287097395014531.a n : ℤ) = A226969 (n + 1)

theorem P9831287097395014531.correct : P9831287097395014531.Spec := by
  intro n
  simp only [A226969, Nat.add_sub_cancel]

end A226969

/-! ## A226969.P1254613933798895881

`eq[A020705(n), A230631(n)]`
-/

namespace A226969.P1254613933798895881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226969.P1254613933798895881

namespace A226969

/-- `eq[A020705(n), A230631(n)]` -/
def P1254613933798895881.Spec : Prop :=
  ∀ n, (P1254613933798895881.a n : ℤ) = A226969 (n + 1)

end A226969

/-! ## A226969.P9821262625096399714

`eq[A040132(n), A269224(n)]`
-/

namespace A226969.P9821262625096399714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226969.P9821262625096399714

namespace A226969

/-- `eq[A040132(n), A269224(n)]` -/
def P9821262625096399714.Spec : Prop :=
  ∀ n, (P9821262625096399714.a n : ℤ) = A226969 (n + 1)

end A226969

/-! ## A226969.P2583651025832355865

`eq[A262967(n)²², A053839(n)]`
-/

namespace A226969.P2583651025832355865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262967 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226969.P2583651025832355865

namespace A226969

/-- `eq[A262967(n)²², A053839(n)]` -/
def P2583651025832355865.Spec : Prop :=
  ∀ n, (P2583651025832355865.a n : ℤ) = A226969 (n + 1)

end A226969

/-! ## A226969.P12973235723930842738

`eq[A005129(n), A053839(n)]`
-/

namespace A226969.P12973235723930842738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226969.P12973235723930842738

namespace A226969

/-- `eq[A005129(n), A053839(n)]` -/
def P12973235723930842738.Spec : Prop :=
  ∀ n, (P12973235723930842738.a n : ℤ) = A226969 (n + 1)

end A226969

/-! ## A226969.P13920048483307778147

`eq[4, A053830(A037463(n))]`
-/

namespace A226969.P13920048483307778147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226969.P13920048483307778147

namespace A226969

/-- `eq[4, A053830(A037463(n))]` -/
def P13920048483307778147.Spec : Prop :=
  ∀ n, (P13920048483307778147.a n : ℤ) = A226969 (n + 1)

end A226969

/-! ## A226969.P1842287593682412102

`eq[A053839(n), A117902(n)]`
-/

namespace A226969.P1842287593682412102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226969.P1842287593682412102

namespace A226969

/-- `eq[A053839(n), A117902(n)]` -/
def P1842287593682412102.Spec : Prop :=
  ∀ n, (P1842287593682412102.a n : ℤ) = A226969 (n + 1)

end A226969

/-!
# A226970: Fixed points for the operation of repeatedly replacing a number with the sum of the ninth powers of its digits.

The programs for A226970, there is no canonical definition to state claims against.
-/

/-! ## A226970.P2828105188494667859

`A252648(n+47)`
-/

namespace A226970.P2828105188494667859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (n + 47)

end

end A226970.P2828105188494667859

/-!
# A226971: Numbers k such that the sum of digits of k^7 is equal to k.

The programs for A226971, there is no canonical definition to state claims against.
-/

/-! ## A226971.P10572857570276107223

`∑{e}[2^n, A281918(#)]`
-/

namespace A226971.P10572857570276107223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A281918 (Nat.factorization (f1 n) p)

end

end A226971.P10572857570276107223

/-! ## A226971.P1577896907854503707

`Δ[A281918(n-1)+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A226971.P1577896907854503707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A281918 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226971.P1577896907854503707

/-! ## A226971.P12165154337530928206

`A281918(A028310(n))%(10^n)`
-/

namespace A226971.P12165154337530928206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281918 (A028310 n).toNat) (10 ^ n : ℤ)

end

end A226971.P12165154337530928206

/-! ## A226971.P11596004091791581320

`∪[A281918(n+1), A000541(n)]`
-/

namespace A226971.P11596004091791581320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A226971.P11596004091791581320

/-! ## A226971.P13086191836931360952

`∪[A281918(n+1), A000542(n)]`
-/

namespace A226971.P13086191836931360952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A226971.P13086191836931360952

/-!
# A226973: Difference between n! and the largest cube < n!.

The programs for A226973, there is no canonical definition to state claims against.
-/

/-! ## A226973.P15262518191457849191

`A055400(∏[n+1]-1)+1`
-/

namespace A226973.P15262518191457849191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (∏ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A226973.P15262518191457849191

/-! ## A226973.P13033428235142711575

`A055400((round(sqrt(n²+1))+1)!)`
-/

namespace A226973.P13033428235142711575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat)

end

end A226973.P13033428235142711575

/-! ## A226973.P5582317370037540469

`A055400(∏[C(2, C(3, n²))+n])`
-/

namespace A226973.P5582317370037540469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A226973.P5582317370037540469

/-!
# A226974: a(n) = Sum_{k=0..floor(n/3)} binomial(n,3*k)*binomial(4*k,k)/(3*k+1).

The programs for A226974, there is no canonical definition to state claims against.
-/

/-! ## A226974.P5650970359753006791

`or(A106336(n), A351559(A255839(n)))`
-/

namespace A226974.P5650970359753006791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106336 n) (A351559 (A255839 n).toNat)

end

end A226974.P5650970359753006791

/-! ## A226974.P153567952187426716

`A106336(n)+A018794(A037957(n))`
-/

namespace A226974.P153567952187426716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106336 n + A018794 (A037957 n).toNat

end

end A226974.P153567952187426716

/-! ## A226974.P9718146947960315201

`A106336(n)+A101637(A000110(n))`
-/

namespace A226974.P9718146947960315201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106336 n + A101637 (A000110 n).toNat

end

end A226974.P9718146947960315201

/-! ## A226974.P10554819882675614180

`A178780(A000211(n))+A106336(n)`
-/

namespace A226974.P10554819882675614180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A000211 n).toNat + A106336 n

end

end A226974.P10554819882675614180

/-! ## A226974.P11586473315729711522

`A185284(A000045(n))+A106336(n)`
-/

namespace A226974.P11586473315729711522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000045 n).toNat + A106336 n

end

end A226974.P11586473315729711522

/-!
# A226976: Fibonacci(n)^3 + Fibonacci(n+2)^3.

The programs for A226976, the canonical program `A226976.P7106312634160552620` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226976 has offset 0).

The definition of A226976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226976.P7106312634160552620

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=28, a(3)=133`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226976

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P7106312634160552620.Spec : Prop :=
  ∀ n, P7106312634160552620.a n = A226976 n

theorem P7106312634160552620.correct : P7106312634160552620.Spec := by
  intro n
  simp only [A226976]

end A226976

/-! ## A226976.P9822212811580803109

`A346513(n+1)+A110224(n)`
-/

namespace A226976.P9822212811580803109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346513 (n + 1) + A110224 n

end

end A226976.P9822212811580803109

namespace A226976

/-- `A346513(n+1)+A110224(n)` -/
def P9822212811580803109.Spec : Prop :=
  ∀ n, P9822212811580803109.a n = A226976 n

end A226976

/-! ## A226976.P10127620762812628199

`A056570(n+2)+A056570(n)`
-/

namespace A226976.P10127620762812628199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (n + 2) + A056570 n

end

end A226976.P10127620762812628199

namespace A226976

/-- `A056570(n+2)+A056570(n)` -/
def P10127620762812628199.Spec : Prop :=
  ∀ n, P10127620762812628199.a n = A226976 n

end A226976

/-! ## A226976.P17639178272340747746

`A226958(n+2)+A220363(n)`
-/

namespace A226976.P17639178272340747746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226958 (n + 2) + A220363 n

end

end A226976.P17639178272340747746

namespace A226976

/-- `A226958(n+2)+A220363(n)` -/
def P17639178272340747746.Spec : Prop :=
  ∀ n, P17639178272340747746.a n = A226976 n

end A226976

/-! ## A226976.P5975979447932713248

`A000032(n+1)*Δ[A110035(n)]`
-/

namespace A226976.P5975979447932713248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (f1 (n + 1) - f1 n)

end

end A226976.P5975979447932713248

namespace A226976

/-- `A000032(n+1)*Δ[A110035(n)]` -/
def P5975979447932713248.Spec : Prop :=
  ∀ n, P5975979447932713248.a n = A226976 n

end A226976

/-! ## A226976.P18444059084464324441

`A000032(n+1)*A293411(2*n)`
-/

namespace A226976.P18444059084464324441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A293411 (2 * n)

end

end A226976.P18444059084464324441

namespace A226976

/-- `A000032(n+1)*A293411(2*n)` -/
def P18444059084464324441.Spec : Prop :=
  ∀ n, P18444059084464324441.a n = A226976 n

end A226976

/-! ## A226976.P13633644911036390756

`Δ[A110035(n)]*A280699(2*(n+1))`
-/

namespace A226976.P13633644911036390756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A280699 (2 * (n + 1))

end

end A226976.P13633644911036390756

namespace A226976

/-- `Δ[A110035(n)]*A280699(2*(n+1))` -/
def P13633644911036390756.Spec : Prop :=
  ∀ n, P13633644911036390756.a n = A226976 n

end A226976

/-! ## A226976.P6778453135841629383

`A000032(n+1)*A126116(2*(n+1))`
-/

namespace A226976.P6778453135841629383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A126116 (2 * (n + 1))

end

end A226976.P6778453135841629383

namespace A226976

/-- `A000032(n+1)*A126116(2*(n+1))` -/
def P6778453135841629383.Spec : Prop :=
  ∀ n, P6778453135841629383.a n = A226976 n

end A226976

/-! ## A226976.P10754561530715395593

`A000204(n+1)*A126116(2*(n+1))`
-/

namespace A226976.P10754561530715395593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A126116 (2 * (n + 1))

end

end A226976.P10754561530715395593

namespace A226976

/-- `A000204(n+1)*A126116(2*(n+1))` -/
def P10754561530715395593.Spec : Prop :=
  ∀ n, P10754561530715395593.a n = A226976 n

end A226976

/-! ## A226976.P14612263982243873959

`A220360(n+1)+A099015(n)+A099014(n)`
-/

namespace A226976.P14612263982243873959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220360 (n + 1) + (A099015 n + A099014 n)

end

end A226976.P14612263982243873959

namespace A226976

/-- `A220360(n+1)+A099015(n)+A099014(n)` -/
def P14612263982243873959.Spec : Prop :=
  ∀ n, P14612263982243873959.a n = A226976 n

end A226976

/-! ## A226976.P14220115090777580421

`(A069921(n)-A059929(n))*A000032(n+1)`
-/

namespace A226976.P14220115090777580421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069921 n - A059929 n) * A000032 (n + 1)

end

end A226976.P14220115090777580421

namespace A226976

/-- `(A069921(n)-A059929(n))*A000032(n+1)` -/
def P14220115090777580421.Spec : Prop :=
  ∀ n, P14220115090777580421.a n = A226976 n

end A226976

/-! ## A226976.P10673072729927512517

`A292278(n+1)+A346513(n+1)-A005968(n)`
-/

namespace A226976.P10673072729927512517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292278 (n + 1) + (A346513 (n + 1) - A005968 n)

end

end A226976.P10673072729927512517

namespace A226976

/-- `A292278(n+1)+A346513(n+1)-A005968(n)` -/
def P10673072729927512517.Spec : Prop :=
  ∀ n, P10673072729927512517.a n = A226976 n

end A226976

/-! ## A226976.P10037364002476129664

`(A007598(n)+A001654(n+1))*A000032(n+1)`
-/

namespace A226976.P10037364002476129664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007598 n + A001654 (n + 1)) * A000032 (n + 1)

end

end A226976.P10037364002476129664

namespace A226976

/-- `(A007598(n)+A001654(n+1))*A000032(n+1)` -/
def P10037364002476129664.Spec : Prop :=
  ∀ n, P10037364002476129664.a n = A226976 n

end A226976

/-! ## A226976.P14103497330634916696

`(A059929(n+1)-A226205(n+1))*A000032(n+1)`
-/

namespace A226976.P14103497330634916696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059929 (n + 1) - A226205 (n + 1)) * A000032 (n + 1)

end

end A226976.P14103497330634916696

namespace A226976

/-- `(A059929(n+1)-A226205(n+1))*A000032(n+1)` -/
def P14103497330634916696.Spec : Prop :=
  ∀ n, P14103497330634916696.a n = A226976 n

end A226976

/-! ## A226976.P14403347732271177390

`(A295681(2*n+1)+A000045(2*n))*A000032(n+1)`
-/

namespace A226976.P14403347732271177390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295681 (2 * n + 1) + A000045 (2 * n)) * A000032 (n + 1)

end

end A226976.P14403347732271177390

namespace A226976

/-- `(A295681(2*n+1)+A000045(2*n))*A000032(n+1)` -/
def P14403347732271177390.Spec : Prop :=
  ∀ n, P14403347732271177390.a n = A226976 n

end A226976

/-! ## A226976.P235778714085716396

`(A000032(2*n+1)-A295684(2*n+1))*A000032(n+1)`
-/

namespace A226976.P235778714085716396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) - A295684 (2 * n + 1)) * A000032 (n + 1)

end

end A226976.P235778714085716396

namespace A226976

/-- `(A000032(2*n+1)-A295684(2*n+1))*A000032(n+1)` -/
def P235778714085716396.Spec : Prop :=
  ∀ n, P235778714085716396.a n = A226976 n

end A226976

/-! ## A226976.P13720619181079468932

`A110224(n)+Δ[Δ[A005968(n)]]`
-/

namespace A226976.P13720619181079468932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005968 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110224 n + (f1 (n + 1) - f1 n)

end

end A226976.P13720619181079468932

namespace A226976

/-- `A110224(n)+Δ[Δ[A005968(n)]]` -/
def P13720619181079468932.Spec : Prop :=
  ∀ n, P13720619181079468932.a n = A226976 n

end A226976

/-!
# A226977: Places n where A225867(n) <= 2.

The programs for A226977, there is no canonical definition to state claims against.
-/

/-! ## A226977.P4282462992132647806

`A020715(lt[A225867(n+6), 3])`
-/

namespace A226977.P4282462992132647806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A226977.P4282462992132647806

/-! ## A226977.P16814512078780570720

`A020715(eq[A225867(n+6)!, A225867(n+6)])`
-/

namespace A226977.P16814512078780570720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A225867 (n + 6)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226977.P16814512078780570720

/-! ## A226977.P12142184062417836945

`A103332(A229064(n+2))`
-/

namespace A226977.P12142184062417836945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103332 (A229064 (n + 2)).toNat

end

end A226977.P12142184062417836945

/-! ## A226977.P26726819894361486

`A229064(n+2)-A034349(n+1)!*char[1]`
-/

namespace A226977.P26726819894361486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 2) - ((Nat.factorial (A034349 (n + 1)).toNat * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A226977.P26726819894361486

/-! ## A226977.P14237029475222609554

`A229064(n+2)-A010051(A001700(n))`
-/

namespace A226977.P14237029475222609554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 2) - A010051 (A001700 n).toNat

end

end A226977.P14237029475222609554

/-!
# A226978: Number of ways to cut an n X n square into squares with integer sides, reduced for symmetry, where the orbits under the symmetry group of the square, D4, have 1 element.

The programs for A226978, there is no canonical definition to state claims against.
-/

/-! ## A226978.P6417746323181423749

`∏{e}[A077753(n+1), A330000(#)]`
-/

namespace A226978.P6417746323181423749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A330000 (Nat.factorization (f1 n).natAbs p)

end

end A226978.P6417746323181423749

/-!
# A226979: Number of ways to cut an n X n square into squares with integer sides, reduced for symmetry, where the orbits under the symmetry group of the square, D4, have 2 elements.

The programs for A226979, there is no canonical definition to state claims against.
-/

/-! ## A226979.P14972500219169361707

`A240120(n+1)+A240121(n+1)+A240122(n+1)`
-/

namespace A226979.P14972500219169361707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240120 (n + 1) + A240121 (n + 1) + A240122 (n + 1)

end

end A226979.P14972500219169361707

/-! ## A226979.P219554203150397983

`A002262(A126745(n+1))*A110654(n)`
-/

namespace A226979.P219554203150397983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A126745 (n + 1)).toNat * A110654 n

end

end A226979.P219554203150397983

/-! ## A226979.P7858666262613459205

`A002262(A126745(n+1))*A230980(n)`
-/

namespace A226979.P7858666262613459205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A126745 (n + 1)).toNat * A230980 n

end

end A226979.P7858666262613459205

/-! ## A226979.P18070656796715884049

`A028899(lcm(A000183(n+1), A067136(n)))`
-/

namespace A226979.P18070656796715884049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (Int.lcm (A000183 (n + 1)) (A067136 n))

end

end A226979.P18070656796715884049

/-!
# A226980: Number of ways to cut an n X n square into squares with integer sides, reduced for symmetry, where the orbits under the symmetry group of the square, D4, have 4 elements.

The programs for A226980, there is no canonical definition to state claims against.
-/

/-! ## A226980.P660407830894567668

`A240123(n+1)+A240124(n+1)+A240125(n+1)`
-/

namespace A226980.P660407830894567668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240123 (n + 1) + A240124 (n + 1) + A240125 (n + 1)

end

end A226980.P660407830894567668

/-! ## A226980.P11156182131605920671

`A306520(A080873(n))`
-/

namespace A226980.P11156182131605920671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306520 (A080873 n).toNat

end

end A226980.P11156182131605920671

/-!
# A226981: Number of ways to cut an n X n square into squares with integer sides, reduced for symmetry, where the orbits under the symmetry group of the square, D4, have 8 elements.

The programs for A226981, there is no canonical definition to state claims against.
-/

/-! ## A226981.P7705127488316072445

`A104320(A346759(n!))`
-/

namespace A226981.P7705127488316072445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104320 (A346759 (Nat.factorial n)).toNat

end

end A226981.P7705127488316072445

/-! ## A226981.P15818959675855710310

`A029351(record[p?[A155161(n)]])`
-/

namespace A226981.P15818959675855710310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226981.P15818959675855710310

/-!
# A226982: a(n) = ceiling(n/2) - primepi(n).

The programs for A226982, the canonical program `A226982.P1218161731497091266` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226982 has offset 1).

The definition of A226982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226982.P1218161731497091266

`A004526(n+2)-A000720(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226982

/-- `A004526(n+2)-A000720(n+1)` -/
def P1218161731497091266.Spec : Prop :=
  ∀ n, P1218161731497091266.a n = A226982 (n + 1)

theorem P1218161731497091266.correct : P1218161731497091266.Spec := by
  intro n
  simp only [A226982, Nat.add_sub_cancel]

end A226982

/-! ## A226982.P12477028334236699171

`floor(A118777(n+1)/2)`
-/

namespace A226982.P12477028334236699171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118777 (n + 1) : ℚ) / 2⌋

end

end A226982.P12477028334236699171

namespace A226982

/-- `floor(A118777(n+1)/2)` -/
def P12477028334236699171.Spec : Prop :=
  ∀ n, P12477028334236699171.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P9176557374287886524

`ceil(A097454(n+1)/2)`
-/

namespace A226982.P9176557374287886524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097454 (n + 1) : ℚ) / 2⌉

end

end A226982.P9176557374287886524

namespace A226982

/-- `ceil(A097454(n+1)/2)` -/
def P9176557374287886524.Spec : Prop :=
  ∀ n, P9176557374287886524.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P6047909248826677878

`∑[1-A370482(n+1)]`
-/

namespace A226982.P6047909248826677878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A370482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226982.P6047909248826677878

namespace A226982

/-- `∑[1-A370482(n+1)]` -/
def P6047909248826677878.Spec : Prop :=
  ∀ n, P6047909248826677878.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P13893516069280179700

`floor(A062298(n+1)-n/2)`
-/

namespace A226982.P13893516069280179700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062298 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A226982.P13893516069280179700

namespace A226982

/-- `floor(A062298(n+1)-n/2)` -/
def P13893516069280179700.Spec : Prop :=
  ∀ n, P13893516069280179700.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P4564880318607507756

`∑[A005171(n+1)-n%2]`
-/

namespace A226982.P4564880318607507756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226982.P4564880318607507756

namespace A226982

/-- `∑[A005171(n+1)-n%2]` -/
def P4564880318607507756.Spec : Prop :=
  ∀ n, P4564880318607507756.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P16477885124808352059

`∑[char[2*n]]-∑[A010051(n+1)]`
-/

namespace A226982.P16477885124808352059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A226982.P16477885124808352059

namespace A226982

/-- `∑[char[2*n]]-∑[A010051(n+1)]` -/
def P16477885124808352059.Spec : Prop :=
  ∀ n, P16477885124808352059.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P3223782277132411216

`ceil(∑[(-1)^C(2, A000005(n+1))]/2)`
-/

namespace A226982.P3223782277132411216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.choose 2 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A226982.P3223782277132411216

namespace A226982

/-- `ceil(∑[(-1)^C(2, A000005(n+1))]/2)` -/
def P3223782277132411216.Spec : Prop :=
  ∀ n, P3223782277132411216.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P8962442853298694212

`∑[char[2*n]-char[A000040(n+1)-1]]`
-/

namespace A226982.P8962442853298694212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226982.P8962442853298694212

namespace A226982

/-- `∑[char[2*n]-char[A000040(n+1)-1]]` -/
def P8962442853298694212.Spec : Prop :=
  ∀ n, P8962442853298694212.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P17822193675542365991

`∑[char[2*n]-char[A020639(n+2)-1]]`
-/

namespace A226982.P17822193675542365991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226982.P17822193675542365991

namespace A226982

/-- `∑[char[2*n]-char[A020639(n+2)-1]]` -/
def P17822193675542365991.Spec : Prop :=
  ∀ n, P17822193675542365991.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P2242014426636884379

`∑[and(1, n+1)-char[A006530(n+2)-1]]`
-/

namespace A226982.P2242014426636884379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226982.P2242014426636884379

namespace A226982

/-- `∑[and(1, n+1)-char[A006530(n+2)-1]]` -/
def P2242014426636884379.Spec : Prop :=
  ∀ n, P2242014426636884379.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P14916666928257658840

`a(n-1)+char[A018252(n+2)-1]-and(1, n)` with `a(0)=1`
-/

namespace A226982.P14916666928257658840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (Nat.land 1 n : ℤ))

end

end A226982.P14916666928257658840

namespace A226982

/-- `a(n-1)+char[A018252(n+2)-1]-and(1, n)` -/
def P14916666928257658840.Spec : Prop :=
  ∀ n, P14916666928257658840.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P13697841110328017725

`A004526(A118777(n+1))`
-/

namespace A226982.P13697841110328017725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A118777 (n + 1)).toNat

end

end A226982.P13697841110328017725

namespace A226982

/-- `A004526(A118777(n+1))` -/
def P13697841110328017725.Spec : Prop :=
  ∀ n, P13697841110328017725.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P2970570558337632139

`A057428(n)+A033271(n+1)`
-/

namespace A226982.P2970570558337632139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A033271 (n + 1)

end

end A226982.P2970570558337632139

namespace A226982

/-- `A057428(n)+A033271(n+1)` -/
def P2970570558337632139.Spec : Prop :=
  ∀ n, P2970570558337632139.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P7715915608138305291

`A008619(n)-A000720(n+1)`
-/

namespace A226982.P7715915608138305291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A000720 (n + 1)

end

end A226982.P7715915608138305291

namespace A226982

/-- `A008619(n)-A000720(n+1)` -/
def P7715915608138305291.Spec : Prop :=
  ∀ n, P7715915608138305291.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P8555004558123525683

`A033271(n+1)-A057427(n)`
-/

namespace A226982.P8555004558123525683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (n + 1) - A057427 n

end

end A226982.P8555004558123525683

namespace A226982

/-- `A033271(n+1)-A057427(n)` -/
def P8555004558123525683.Spec : Prop :=
  ∀ n, P8555004558123525683.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P12563363417050253754

`A123108(n)-A033270(n+1)`
-/

namespace A226982.P12563363417050253754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A033270 (n + 1)

end

end A226982.P12563363417050253754

namespace A226982

/-- `A123108(n)-A033270(n+1)` -/
def P12563363417050253754.Spec : Prop :=
  ∀ n, P12563363417050253754.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P11545830290499080302

`A062298(n+1)-A110654(n)`
-/

namespace A226982.P11545830290499080302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A110654 n

end

end A226982.P11545830290499080302

namespace A226982

/-- `A062298(n+1)-A110654(n)` -/
def P11545830290499080302.Spec : Prop :=
  ∀ n, P11545830290499080302.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P15848049724709477674

`∑[A005171(n+1)]-A110654(n)`
-/

namespace A226982.P15848049724709477674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A226982.P15848049724709477674

namespace A226982

/-- `∑[A005171(n+1)]-A110654(n)` -/
def P15848049724709477674.Spec : Prop :=
  ∀ n, P15848049724709477674.a n = A226982 (n + 1)

end A226982

/-! ## A226982.P14884408142341154389

`A152993(n+1)-A003165(n+1)`
-/

namespace A226982.P14884408142341154389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152993 (n + 1) - A003165 (n + 1)

end

end A226982.P14884408142341154389

namespace A226982

/-- `A152993(n+1)-A003165(n+1)` -/
def P14884408142341154389.Spec : Prop :=
  ∀ n, P14884408142341154389.a n = A226982 (n + 1)

end A226982

/-!
# A226983: a(n) = ceiling(n/2) - pi(2n) + pi(n-1).

The programs for A226983, the canonical program `A226983.P11734956806688182577` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226983 has offset 1).

The definition of A226983 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226983.P11734956806688182577

`A004526(n+2)-A035250(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A226983

/-- `A004526(n+2)-A035250(n+1)` -/
def P11734956806688182577.Spec : Prop :=
  ∀ n, P11734956806688182577.a n = A226983 (n + 1)

theorem P11734956806688182577.correct : P11734956806688182577.Spec := by
  intro n
  simp only [A226983, Nat.add_sub_cancel]

end A226983

/-! ## A226983.P3787028722453726426

`A307989(n+1)-ceil(n/2)`
-/

namespace A226983.P3787028722453726426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 1) - ⌈(n : ℚ) / 2⌉

end

end A226983.P3787028722453726426

namespace A226983

/-- `A307989(n+1)-ceil(n/2)` -/
def P3787028722453726426.Spec : Prop :=
  ∀ n, P3787028722453726426.a n = A226983 (n + 1)

end A226983

/-! ## A226983.P15244235255796525643

`A008619(n)-A035250(n+1)`
-/

namespace A226983.P15244235255796525643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A035250 (n + 1)

end

end A226983.P15244235255796525643

namespace A226983

/-- `A008619(n)-A035250(n+1)` -/
def P15244235255796525643.Spec : Prop :=
  ∀ n, P15244235255796525643.a n = A226983 (n + 1)

end A226983

/-! ## A226983.P2178727158547002299

`A110654(n+1)-A035250(n+1)`
-/

namespace A226983.P2178727158547002299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) - A035250 (n + 1)

end

end A226983.P2178727158547002299

namespace A226983

/-- `A110654(n+1)-A035250(n+1)` -/
def P2178727158547002299.Spec : Prop :=
  ∀ n, P2178727158547002299.a n = A226983 (n + 1)

end A226983

/-! ## A226983.P14016287871508957831

`∑[A333325(A035250(a(n-1)+1))]-A035250(n+1)` with `a(0)=1`
-/

namespace A226983.P14016287871508957831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A333325 (A035250 (f1 (n - 1) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035250 (n + 1)

end

end A226983.P14016287871508957831

namespace A226983

/-- `∑[A333325(A035250(a(n-1)+1))]-A035250(n+1)` -/
def P14016287871508957831.Spec : Prop :=
  ∀ n, P14016287871508957831.a n = A226983 (n + 1)

end A226983

/-! ## A226983.P13280649060841899478

`∑[A000035(n+1)]-A035250(n+1)`
-/

namespace A226983.P13280649060841899478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035250 (n + 1)

end

end A226983.P13280649060841899478

namespace A226983

/-- `∑[A000035(n+1)]-A035250(n+1)` -/
def P13280649060841899478.Spec : Prop :=
  ∀ n, P13280649060841899478.a n = A226983 (n + 1)

end A226983

/-! ## A226983.P17715079538367144925

`A110654(2*A307989(n+1))-A110654(n)`
-/

namespace A226983.P17715079538367144925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A307989 (n + 1)).toNat - A110654 n

end

end A226983.P17715079538367144925

namespace A226983

/-- `A110654(2*A307989(n+1))-A110654(n)` -/
def P17715079538367144925.Spec : Prop :=
  ∀ n, P17715079538367144925.a n = A226983 (n + 1)

end A226983

/-!
# A226987: Number of n X n 0..4 arrays of sums of 2X2 subblocks of some (n+1)X(n+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226987, there is no canonical definition to state claims against.
-/

/-! ## A226987.P11978681055309712926

`A226992(∑[4*n]+1)`
-/

namespace A226987.P11978681055309712926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226987.P11978681055309712926

/-! ## A226987.P713521891387622700

`record[A003982(n)*A226992(n+1)]`
-/

namespace A226987.P713521891387622700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A226992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226987.P713521891387622700

/-! ## A226987.P9024751288234344382

`lcm(A033999(n), A226992(A001844(n)))`
-/

namespace A226987.P9024751288234344382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A226992 (A001844 n).toNat)

end

end A226987.P9024751288234344382

/-! ## A226987.P3857083913345414640

`A007318(∑[n])*A226992(A001844(n))`
-/

namespace A226987.P3857083913345414640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A226992 (A001844 n).toNat

end

end A226987.P3857083913345414640

/-!
# A226988: Number of n X 2 0..4 arrays of sums of 2 X 2 subblocks of some (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226988, there is no canonical definition to state claims against.
-/

/-! ## A226988.P6908064312532196322

`A226992(∑[n+1]+2)`
-/

namespace A226988.P6908064312532196322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A226988.P6908064312532196322

/-! ## A226988.P4881404092442073213

`record[A023531(n)*A226992(n+3)]`
-/

namespace A226988.P4881404092442073213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A226992 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226988.P4881404092442073213

/-! ## A226988.P17078261863148180031

`record[gcd(A002262(n), A226992(n+2))]`
-/

namespace A226988.P17078261863148180031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A226992 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226988.P17078261863148180031

/-! ## A226988.P10109989120083266966

`record[gcd(A226992(n+3), A229001(n+1))]`
-/

namespace A226988.P10109989120083266966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226992 (n + 3)) (A229001 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226988.P10109989120083266966

/-! ## A226988.P14331588770471727548

`record[A226992(abs(A201163(n)))]`
-/

namespace A226988.P14331588770471727548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226988.P14331588770471727548

/-!
# A226989: Number of nX3 0..4 arrays of sums of 2X2 subblocks of some (n+1)X4 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226989, there is no canonical definition to state claims against.
-/

/-! ## A226989.P366921051378631624

`A226992(∑[n+2]+4)`
-/

namespace A226989.P366921051378631624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A226989.P366921051378631624

/-! ## A226989.P7652010111393374354

`A226992(A167614(n+1))+A184955(n)`
-/

namespace A226989.P7652010111393374354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A167614 (n + 1)).toNat + A184955 n

end

end A226989.P7652010111393374354

/-! ## A226989.P15915940088703247079

`lcm(A033999(n), A226992(A167614(n+1)))`
-/

namespace A226989.P15915940088703247079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A226992 (A167614 (n + 1)).toNat)

end

end A226989.P15915940088703247079

/-! ## A226989.P15098227550760115955

`or(A000007(n), A226992(A167614(n+1)))`
-/

namespace A226989.P15098227550760115955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A226992 (A167614 (n + 1)).toNat)

end

end A226989.P15098227550760115955

/-! ## A226989.P3943143202147756306

`or(A016389(n), A226992(A167614(n+1)))`
-/

namespace A226989.P3943143202147756306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A226992 (A167614 (n + 1)).toNat)

end

end A226989.P3943143202147756306

/-!
# A226990: Number of nX4 0..4 arrays of sums of 2X2 subblocks of some (n+1)X5 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226990, there is no canonical definition to state claims against.
-/

/-! ## A226990.P196184972116160386

`A226992(A374004(n+1))`
-/

namespace A226990.P196184972116160386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A374004 (n + 1)).toNat

end

end A226990.P196184972116160386

/-! ## A226990.P993943941590911427

`A226992(A141214(n)+7)`
-/

namespace A226990.P993943941590911427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A141214 n + 7).toNat

end

end A226990.P993943941590911427

/-! ## A226990.P12420906435093447707

`A226992(A052905(n)+9)`
-/

namespace A226990.P12420906435093447707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A052905 n + 9).toNat

end

end A226990.P12420906435093447707

/-! ## A226990.P14868570549371618652

`A226992(A055999(n)+10)`
-/

namespace A226990.P14868570549371618652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A055999 n + 10).toNat

end

end A226990.P14868570549371618652

/-! ## A226990.P15217535061649657591

`A226992(A167614(n+2)+1)`
-/

namespace A226990.P15217535061649657591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A167614 (n + 2) + 1).toNat

end

end A226990.P15217535061649657591

/-!
# A226991: Number of nX5 0..4 arrays of sums of 2X2 subblocks of some (n+1)X6 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226991, there is no canonical definition to state claims against.
-/

/-! ## A226991.P6748093377290885073

`A226992(A374005(n+1))`
-/

namespace A226991.P6748093377290885073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A374005 (n + 1)).toNat

end

end A226991.P6748093377290885073

/-! ## A226991.P10241392679602003351

`A226992(A155212(n)+13)`
-/

namespace A226991.P10241392679602003351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A155212 n + 13).toNat

end

end A226991.P10241392679602003351

/-! ## A226991.P4040017163378389118

`A226992(A056000(n)+15)`
-/

namespace A226991.P4040017163378389118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (A056000 n + 15).toNat

end

end A226991.P4040017163378389118

/-! ## A226991.P9214081438691454282

`A226992(eq[7, A066657(n)])`
-/

namespace A226991.P9214081438691454282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226991.P9214081438691454282

/-! ## A226991.P8136924907099400906

`A226992(eq[6, A131818(n+1)])`
-/

namespace A226991.P8136924907099400906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226991.P8136924907099400906

/-!
# A226993: Primes p such that 2p - 1 and 2p + 1 are squarefree.

The programs for A226993, the canonical program `A226993.P10032319242996008587` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226993 has offset 1).

The definition of A226993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226993.P11727670802974260046

`record[A006530(A228649(n+1))]`
-/

namespace A226993.P11727670802974260046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A228649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226993.P11727670802974260046

namespace A226993

/-- `record[A006530(A228649(n+1))]` -/
def P11727670802974260046.Spec : Prop :=
  ∀ n, P11727670802974260046.a n = A226993 (n + 1)

end A226993

/-! ## A226993.P9445257184459561916

`record[A006530(A007675(n+1)+1)]`
-/

namespace A226993.P9445257184459561916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007675 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226993.P9445257184459561916

namespace A226993

/-- `record[A006530(A007675(n+1)+1)]` -/
def P9445257184459561916.Spec : Prop :=
  ∀ n, P9445257184459561916.a n = A226993 (n + 1)

end A226993

/-! ## A226993.P10032319242996008587

`p?[A272799(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226993

/-- `p?[A272799(n+1)]` -/
def P10032319242996008587.Spec : Prop :=
  ∀ n, P10032319242996008587.a n = A226993 (n + 1)

theorem P10032319242996008587.correct : P10032319242996008587.Spec := by
  intro n
  simp only [A226993, Nat.add_sub_cancel]

end A226993

/-! ## A226993.P17491985599684346223

`record[A006530(A067874(n+1))]`
-/

namespace A226993.P17491985599684346223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067874 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226993.P17491985599684346223

namespace A226993

/-- `record[A006530(A067874(n+1))]` -/
def P17491985599684346223.Spec : Prop :=
  ∀ n, P17491985599684346223.a n = A226993 (n + 1)

end A226993

/-! ## A226993.P256795149144599088

`record[A006530(A272799(n+2))]`
-/

namespace A226993.P256795149144599088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A272799 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226993.P256795149144599088

namespace A226993

/-- `record[A006530(A272799(n+2))]` -/
def P256795149144599088.Spec : Prop :=
  ∀ n, P256795149144599088.a n = A226993 (n + 1)

end A226993

/-! ## A226993.P16378322423056723490

`filter[A272799(n+1), A010051(#)]`
-/

namespace A226993.P16378322423056723490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A226993.P16378322423056723490

namespace A226993

/-- `filter[A272799(n+1), A010051(#)]` -/
def P16378322423056723490.Spec : Prop :=
  ∀ n, P16378322423056723490.a n = A226993 (n + 1)

end A226993

/-! ## A226993.P5896832129472782381

`record[A006530(A069977(n+1)+1)]`
-/

namespace A226993.P5896832129472782381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069977 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226993.P5896832129472782381

namespace A226993

/-- `record[A006530(A069977(n+1)+1)]` -/
def P5896832129472782381.Spec : Prop :=
  ∀ n, P5896832129472782381.a n = A226993 (n + 1)

end A226993

/-! ## A226993.P9473972013795030377

`∩[A000040(n+1), A272799(n+1)]`
-/

namespace A226993.P9473972013795030377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226993.P9473972013795030377

namespace A226993

/-- `∩[A000040(n+1), A272799(n+1)]` -/
def P9473972013795030377.Spec : Prop :=
  ∀ n, (P9473972013795030377.a n : ℤ) = A226993 (n + 1)

end A226993

/-! ## A226993.P6057997235372438776

`∩[A045319(n+1), A272799(n+1)]`
-/

namespace A226993.P6057997235372438776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226993.P6057997235372438776

namespace A226993

/-- `∩[A045319(n+1), A272799(n+1)]` -/
def P6057997235372438776.Spec : Prop :=
  ∀ n, (P6057997235372438776.a n : ℤ) = A226993 (n + 1)

end A226993

/-! ## A226993.P413053130245858913

`∩[A175787(n+1), A272799(n+1)]`
-/

namespace A226993.P413053130245858913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226993.P413053130245858913

namespace A226993

/-- `∩[A175787(n+1), A272799(n+1)]` -/
def P413053130245858913.Spec : Prop :=
  ∀ n, (P413053130245858913.a n : ℤ) = A226993 (n + 1)

end A226993

/-! ## A226993.P3109351548765462749

`∩[A182986(n+1), A272799(n+1)]`
-/

namespace A226993.P3109351548765462749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226993.P3109351548765462749

namespace A226993

/-- `∩[A182986(n+1), A272799(n+1)]` -/
def P3109351548765462749.Spec : Prop :=
  ∀ n, (P3109351548765462749.a n : ℤ) = A226993 (n + 1)

end A226993

/-! ## A226993.P7419736092012987784

`∩[A197636(n+1), A272799(n+1)]`
-/

namespace A226993.P7419736092012987784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226993.P7419736092012987784

namespace A226993

/-- `∩[A197636(n+1), A272799(n+1)]` -/
def P7419736092012987784.Spec : Prop :=
  ∀ n, (P7419736092012987784.a n : ℤ) = A226993 (n + 1)

end A226993

/-! ## A226993.P4843174515490833880

`filter[A272799(n+2), A080339(#)]`
-/

namespace A226993.P4843174515490833880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A226993.P4843174515490833880

namespace A226993

/-- `filter[A272799(n+2), A080339(#)]` -/
def P4843174515490833880.Spec : Prop :=
  ∀ n, P4843174515490833880.a n = A226993 (n + 1)

end A226993

/-! ## A226993.P12564484584005762126

`p?[A000463(A069977(n+1))]`
-/

namespace A226993.P12564484584005762126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A069977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226993.P12564484584005762126

namespace A226993

/-- `p?[A000463(A069977(n+1))]` -/
def P12564484584005762126.Spec : Prop :=
  ∀ n, P12564484584005762126.a n = A226993 (n + 1)

end A226993

/-! ## A226993.P12974673183314953010

`record[A006530(A014681(A007675(n+1)))]`
-/

namespace A226993.P12974673183314953010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014681 (A007675 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226993.P12974673183314953010

namespace A226993

/-- `record[A006530(A014681(A007675(n+1)))]` -/
def P12974673183314953010.Spec : Prop :=
  ∀ n, P12974673183314953010.a n = A226993 (n + 1)

end A226993

/-!
# A226994: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving the diagonal (if any) is an H step.

The programs for A226994, the canonical program `A226994.P17259098154566869969` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226994 has offset 0).

The definition of A226994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047665, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226994.P17259098154566869969

`1+A047665(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A226994

/-- `1+A047665(n)` -/
def P17259098154566869969.Spec : Prop :=
  ∀ n, P17259098154566869969.a n = A226994 n

theorem P17259098154566869969.correct : P17259098154566869969.Spec := by
  intro n
  simp only [A226994]

end A226994

/-! ## A226994.P12547381479475986383

`∑[abs(A182626(n))]`
-/

namespace A226994.P12547381479475986383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182626 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226994.P12547381479475986383

namespace A226994

/-- `∑[abs(A182626(n))]` -/
def P12547381479475986383.Spec : Prop :=
  ∀ n, P12547381479475986383.a n = A226994 n

end A226994

/-! ## A226994.P16643060422750655476

`ceil(A001850(n)/2)`
-/

namespace A226994.P16643060422750655476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001850 n : ℚ) / 2⌉

end

end A226994.P16643060422750655476

namespace A226994

/-- `ceil(A001850(n)/2)` -/
def P16643060422750655476.Spec : Prop :=
  ∀ n, P16643060422750655476.a n = A226994 n

end A226994

/-! ## A226994.P15576301764373511698

`ceil(A027618(n)/3)`
-/

namespace A226994.P15576301764373511698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027618 n : ℚ) / 3⌉

end

end A226994.P15576301764373511698

namespace A226994

/-- `ceil(A027618(n)/3)` -/
def P15576301764373511698.Spec : Prop :=
  ∀ n, P15576301764373511698.a n = A226994 n

end A226994

/-! ## A226994.P1864892968987176393

`∑[A002002(n)]+1`
-/

namespace A226994.P1864892968987176393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A226994.P1864892968987176393

namespace A226994

/-- `∑[A002002(n)]+1` -/
def P1864892968987176393.Spec : Prop :=
  ∀ n, P1864892968987176393.a n = A226994 n

end A226994

/-! ## A226994.P5492956189345582397

`∑[ceil(A110170(n)/2)]`
-/

namespace A226994.P5492956189345582397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110170 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226994.P5492956189345582397

namespace A226994

/-- `∑[ceil(A110170(n)/2)]` -/
def P5492956189345582397.Spec : Prop :=
  ∀ n, P5492956189345582397.a n = A226994 n

end A226994

/-! ## A226994.P11394067148084447820

`ceil(A026003(2*n)/2)`
-/

namespace A226994.P11394067148084447820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026003 (2 * n) : ℚ) / 2⌉

end

end A226994.P11394067148084447820

namespace A226994

/-- `ceil(A026003(2*n)/2)` -/
def P11394067148084447820.Spec : Prop :=
  ∀ n, P11394067148084447820.a n = A226994 n

end A226994

/-! ## A226994.P11610945839963452600

`A123164(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A226994.P11610945839963452600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123164 n + (1 - a (n - 1))

end

end A226994.P11610945839963452600

namespace A226994

/-- `A123164(n)+1-a(n-1)` -/
def P11610945839963452600.Spec : Prop :=
  ∀ n, P11610945839963452600.a n = A226994 n

end A226994

/-! ## A226994.P4370897954851422587

`A001850(n)-∑[A002002(n)]`
-/

namespace A226994.P4370897954851422587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226994.P4370897954851422587

namespace A226994

/-- `A001850(n)-∑[A002002(n)]` -/
def P4370897954851422587.Spec : Prop :=
  ∀ n, P4370897954851422587.a n = A226994 n

end A226994

/-! ## A226994.P15029429332691229829

`∑[A001850(n)-A002003(n)]`
-/

namespace A226994.P15029429332691229829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A002003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226994.P15029429332691229829

namespace A226994

/-- `∑[A001850(n)-A002003(n)]` -/
def P15029429332691229829.Spec : Prop :=
  ∀ n, P15029429332691229829.a n = A226994 n

end A226994

/-! ## A226994.P8587549908775903846

`∑[A110170(n)-A002002(n)]`
-/

namespace A226994.P8587549908775903846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n - A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226994.P8587549908775903846

namespace A226994

/-- `∑[A110170(n)-A002002(n)]` -/
def P8587549908775903846.Spec : Prop :=
  ∀ n, P8587549908775903846.a n = A226994 n

end A226994

/-! ## A226994.P10245711103917507289

`A027618(n)+1-A001850(n)`
-/

namespace A226994.P10245711103917507289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027618 n + (1 - A001850 n)

end

end A226994.P10245711103917507289

namespace A226994

/-- `A027618(n)+1-A001850(n)` -/
def P10245711103917507289.Spec : Prop :=
  ∀ n, P10245711103917507289.a n = A226994 n

end A226994

/-! ## A226994.P14477592186642113898

`A027618(n)-2*A047665(n)`
-/

namespace A226994.P14477592186642113898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027618 n - 2 * A047665 n

end

end A226994.P14477592186642113898

namespace A226994

/-- `A027618(n)-2*A047665(n)` -/
def P14477592186642113898.Spec : Prop :=
  ∀ n, P14477592186642113898.a n = A226994 n

theorem P14477592186642113898.correct : P14477592186642113898.Spec := by
  intro n
  simp only [A226994, Nat.add_sub_cancel, A226994.P14477592186642113898.a, A226994.P17259098154566869969.a, A027618, A027618.P2693083672505022831.a, A047665, A047665.P11812153229518684916.a, A001850, A001850.P8225243896153059034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226994

/-! ## A226994.P6211024421612474774

`∑[A110110(A004277(n))]-A089165(n)`
-/

namespace A226994.P6211024421612474774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089165 n

end

end A226994.P6211024421612474774

namespace A226994

/-- `∑[A110110(A004277(n))]-A089165(n)` -/
def P6211024421612474774.Spec : Prop :=
  ∀ n, P6211024421612474774.a n = A226994 n

end A226994

/-! ## A226994.P5996502169743888122

`∑[A001109(n)-A110127(n)]+1`
-/

namespace A226994.P5996502169743888122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n - A110127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A226994.P5996502169743888122

namespace A226994

/-- `∑[A001109(n)-A110127(n)]+1` -/
def P5996502169743888122.Spec : Prop :=
  ∀ n, P5996502169743888122.a n = A226994 n

end A226994

/-! ## A226994.P4519829805983478242

`A053142(n)+1-∑[A110127(n)]`
-/

namespace A226994.P4519829805983478242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226994.P4519829805983478242

namespace A226994

/-- `A053142(n)+1-∑[A110127(n)]` -/
def P4519829805983478242.Spec : Prop :=
  ∀ n, P4519829805983478242.a n = A226994 n

end A226994

/-!
# A226995: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving the diagonal (if any) is an H step and the last step joining the diagonal (if any) is a S step.

The programs for A226995, the canonical program `A226995.P7493703247149475882` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226995 has offset 0).

The definition of A226995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226995.P7493703247149475882

`A089165(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A226995

/-- `A089165(n-1)+a(n-1)` -/
def P7493703247149475882.Spec : Prop :=
  ∀ n, P7493703247149475882.a n = A226995 n

theorem P7493703247149475882.correct : P7493703247149475882.Spec := by
  intro n
  simp only [A226995]

end A226995

/-! ## A226995.P11549418309400501006

`∑[A089165(log2(A011782(n)))]`
-/

namespace A226995.P11549418309400501006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089165 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226995.P11549418309400501006

namespace A226995

/-- `∑[A089165(log2(A011782(n)))]` -/
def P11549418309400501006.Spec : Prop :=
  ∀ n, P11549418309400501006.a n = A226995 n

end A226995

/-! ## A226995.P12389865241050626537

`∑[A089165(A028310(n)-1)]`
-/

namespace A226995.P12389865241050626537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089165 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226995.P12389865241050626537

namespace A226995

/-- `∑[A089165(A028310(n)-1)]` -/
def P12389865241050626537.Spec : Prop :=
  ∀ n, P12389865241050626537.a n = A226995 n

end A226995

/-! ## A226995.P17692793728746466532

`∑[A089165(A057428(n)+n)]`
-/

namespace A226995.P17692793728746466532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089165 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226995.P17692793728746466532

namespace A226995

/-- `∑[A089165(A057428(n)+n)]` -/
def P17692793728746466532.Spec : Prop :=
  ∀ n, P17692793728746466532.a n = A226995 n

end A226995

/-! ## A226995.P18232271547131900195

`∑[A089165(A004273(n)-n)]`
-/

namespace A226995.P18232271547131900195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089165 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226995.P18232271547131900195

namespace A226995

/-- `∑[A089165(A004273(n)-n)]` -/
def P18232271547131900195.Spec : Prop :=
  ∀ n, P18232271547131900195.a n = A226995 n

end A226995

/-! ## A226995.P9667876880338248666

`∑[A089165(n-A057428(n)²)]`
-/

namespace A226995.P9667876880338248666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089165 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226995.P9667876880338248666

namespace A226995

/-- `∑[A089165(n-A057428(n)²)]` -/
def P9667876880338248666.Spec : Prop :=
  ∀ n, P9667876880338248666.a n = A226995 n

end A226995

/-! ## A226995.P14588716359116590019

`A226994(n)+1-A226996(n)`
-/

namespace A226995.P14588716359116590019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + (1 - A226996 n)

end

end A226995.P14588716359116590019

namespace A226995

/-- `A226994(n)+1-A226996(n)` -/
def P14588716359116590019.Spec : Prop :=
  ∀ n, P14588716359116590019.a n = A226995 n

theorem P14588716359116590019.correct : P14588716359116590019.Spec := by
  intro n
  simp only [A226995, Nat.add_sub_cancel, A226995.P14588716359116590019.a, A226995.P7493703247149475882.a, A089165, A089165.P2094944157405990930.f1, A089165.P2094944157405990930.a, A226994, A226994.P17259098154566869969.a, A226996, A226996.P1446342238526676326.a, A001850, A001850.P8225243896153059034.a, A047665, A047665.P11812153229518684916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226995

/-! ## A226995.P4324214963390138527

`A047665(n)+2-A226996(n)`
-/

namespace A226995.P4324214963390138527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n + (2 - A226996 n)

end

end A226995.P4324214963390138527

namespace A226995

/-- `A047665(n)+2-A226996(n)` -/
def P4324214963390138527.Spec : Prop :=
  ∀ n, P4324214963390138527.a n = A226995 n

theorem P4324214963390138527.correct : P4324214963390138527.Spec := by
  intro n
  simp only [A226995, Nat.add_sub_cancel, A226995.P4324214963390138527.a, A226995.P7493703247149475882.a, A047665, A047665.P11812153229518684916.a, A089165, A089165.P2094944157405990930.f1, A089165.P2094944157405990930.a, A226996, A226996.P1446342238526676326.a, A001850, A001850.P8225243896153059034.a, A226994, A226994.P17259098154566869969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226995

/-! ## A226995.P14224028700597815177

`∑[A089165(n)-A001850(n)]+1`
-/

namespace A226995.P14224028700597815177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089165 n - A001850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A226995.P14224028700597815177

namespace A226995

/-- `∑[A089165(n)-A001850(n)]+1` -/
def P14224028700597815177.Spec : Prop :=
  ∀ n, P14224028700597815177.a n = A226995 n

end A226995

/-! ## A226995.P5564630874123676734

`∑[A002002(n)]+2-A226996(n)`
-/

namespace A226995.P5564630874123676734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A226996 n)

end

end A226995.P5564630874123676734

namespace A226995

/-- `∑[A002002(n)]+2-A226996(n)` -/
def P5564630874123676734.Spec : Prop :=
  ∀ n, P5564630874123676734.a n = A226995 n

end A226995

/-! ## A226995.P4792068395924299783

`∑[A089165(n)%A001850(A028310(n))]`
-/

namespace A226995.P4792068395924299783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089165 n) (A001850 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226995.P4792068395924299783

namespace A226995

/-- `∑[A089165(n)%A001850(A028310(n))]` -/
def P4792068395924299783.Spec : Prop :=
  ∀ n, P4792068395924299783.a n = A226995 n

end A226995

/-!
# A226996: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving and the last step joining the diagonal (if any) is an H step.

The programs for A226996, the canonical program `A226996.P1446342238526676326` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226996 has offset 0).

The definition of A226996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226996.P1446342238526676326

`A226994(n)+1-A226995(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226996

/-- `A226994(n)+1-A226995(n)` -/
def P1446342238526676326.Spec : Prop :=
  ∀ n, P1446342238526676326.a n = A226996 n

theorem P1446342238526676326.correct : P1446342238526676326.Spec := by
  intro n
  simp only [A226996]

end A226996

/-! ## A226996.P11802272739974409389

`A047665(n)+2-A226995(n)`
-/

namespace A226996.P11802272739974409389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n + (2 - A226995 n)

end

end A226996.P11802272739974409389

namespace A226996

/-- `A047665(n)+2-A226995(n)` -/
def P11802272739974409389.Spec : Prop :=
  ∀ n, P11802272739974409389.a n = A226996 n

theorem P11802272739974409389.correct : P11802272739974409389.Spec := by
  intro n
  simp only [A226996, Nat.add_sub_cancel, A226996.P11802272739974409389.a, A226996.P1446342238526676326.a, A047665, A047665.P11812153229518684916.a, A226994, A226994.P17259098154566869969.a, A226995, A226995.P7493703247149475882.a, A001850, A001850.P8225243896153059034.a, A089165, A089165.P2094944157405990930.f1, A089165.P2094944157405990930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226996

/-! ## A226996.P14199912875198538842

`∑[∑[A002002(n)%A050146(n)]]+1`
-/

namespace A226996.P14199912875198538842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002002 n) (A050146 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A226996.P14199912875198538842

namespace A226996

/-- `∑[∑[A002002(n)%A050146(n)]]+1` -/
def P14199912875198538842.Spec : Prop :=
  ∀ n, P14199912875198538842.a n = A226996 n

end A226996

/-! ## A226996.P6865988677067630311

`∑[A110110(A004277(n))-A089165(n)]`
-/

namespace A226996.P6865988677067630311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A004277 n).toNat - A089165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226996.P6865988677067630311

namespace A226996

/-- `∑[A110110(A004277(n))-A089165(n)]` -/
def P6865988677067630311.Spec : Prop :=
  ∀ n, P6865988677067630311.a n = A226996 n

end A226996

/-! ## A226996.P6296204940668590587

`A007318(A178334(n))-(A226995(n)-A226994(n))`
-/

namespace A226996.P6296204940668590587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A178334 n).toNat - (A226995 n - A226994 n)

end

end A226996.P6296204940668590587

namespace A226996

/-- `A007318(A178334(n))-(A226995(n)-A226994(n))` -/
def P6296204940668590587.Spec : Prop :=
  ∀ n, P6296204940668590587.a n = A226996 n

end A226996

/-! ## A226996.P1022156976721713210

`A002487(A059268(n))-(A226995(n)-A226994(n))`
-/

namespace A226996.P1022156976721713210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A059268 n).toNat - (A226995 n - A226994 n)

end

end A226996.P1022156976721713210

namespace A226996

/-- `A002487(A059268(n))-(A226995(n)-A226994(n))` -/
def P1022156976721713210.Spec : Prop :=
  ∀ n, P1022156976721713210.a n = A226996 n

end A226996

/-!
# A226998: The number of descents over all functions f:{1,2,...,n}->{1,2,...,n}.

The programs for A226998, the canonical program `A226998.P5066187686023272633` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226998 has offset 1).

The definition of A226998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226998.P3853335247943991705

`(n+1+1/(n+1)-2)*(n+1)^(n+1)/2`
-/

namespace A226998.P3853335247943991705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) + 1 / (n + 1 : ℚ) - 2) * ((n + 1) ^ (n + 1) : ℚ) / 2

end

end A226998.P3853335247943991705

namespace A226998

/-- `(n+1+1/(n+1)-2)*(n+1)^(n+1)/2` -/
def P3853335247943991705.Spec : Prop :=
  ∀ n, P3853335247943991705.a n = (A226998 (n + 1) : ℚ)

end A226998

/-! ## A226998.P5066187686023272633

`A062023(n+1)-(n+1)^(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226998

/-- `A062023(n+1)-(n+1)^(n+1)` -/
def P5066187686023272633.Spec : Prop :=
  ∀ n, P5066187686023272633.a n = A226998 (n + 1)

theorem P5066187686023272633.correct : P5066187686023272633.Spec := by
  intro n
  simp only [A226998, Nat.add_sub_cancel]

end A226998

/-! ## A226998.P17649790563999760873

`lcm(n, (n+1)^(n-1))*∑[n]`
-/

namespace A226998.P17649790563999760873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226998.P17649790563999760873

namespace A226998

/-- `lcm(n, (n+1)^(n-1))*∑[n]` -/
def P17649790563999760873.Spec : Prop :=
  ∀ n, (P17649790563999760873.a n : ℤ) = A226998 (n + 1)

end A226998

/-! ## A226998.P11556001994942482468

`n*A081131(n+1)`
-/

namespace A226998.P11556001994942482468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081131 (n + 1)

end

end A226998.P11556001994942482468

namespace A226998

/-- `n*A081131(n+1)` -/
def P11556001994942482468.Spec : Prop :=
  ∀ n, P11556001994942482468.a n = A226998 (n + 1)

end A226998

/-! ## A226998.P1313837352209400546

`abs(n*A070896(n+1))`
-/

namespace A226998.P1313837352209400546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A070896 (n + 1)|

end

end A226998.P1313837352209400546

namespace A226998

/-- `abs(n*A070896(n+1))` -/
def P1313837352209400546.Spec : Prop :=
  ∀ n, P1313837352209400546.a n = A226998 (n + 1)

end A226998

/-! ## A226998.P17186510578862464013

`n/2*A066274(n+1)`
-/

namespace A226998.P17186510578862464013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A066274 (n + 1) : ℚ)

end

end A226998.P17186510578862464013

namespace A226998

/-- `n/2*A066274(n+1)` -/
def P17186510578862464013.Spec : Prop :=
  ∀ n, P17186510578862464013.a n = (A226998 (n + 1) : ℚ)

end A226998

/-! ## A226998.P6666686776678296295

`(n+1)/2*A076728(n+1)`
-/

namespace A226998.P6666686776678296295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A076728 (n + 1) : ℚ)

end

end A226998.P6666686776678296295

namespace A226998

/-- `(n+1)/2*A076728(n+1)` -/
def P6666686776678296295.Spec : Prop :=
  ∀ n, P6666686776678296295.a n = (A226998 (n + 1) : ℚ)

end A226998

/-! ## A226998.P2936833437480653447

`lcm(n*A070896(n+1), A028310(n))`
-/

namespace A226998.P2936833437480653447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) * A070896 (n + 1)) (A028310 n)

end

end A226998.P2936833437480653447

namespace A226998

/-- `lcm(n*A070896(n+1), A028310(n))` -/
def P2936833437480653447.Spec : Prop :=
  ∀ n, (P2936833437480653447.a n : ℤ) = A226998 (n + 1)

end A226998

/-! ## A226998.P3387862680800332398

`A053506(n+1)+A002378(n+1)*A053507(n+1)`
-/

namespace A226998.P3387862680800332398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 1) + A002378 (n + 1) * A053507 (n + 1)

end

end A226998.P3387862680800332398

namespace A226998

/-- `A053506(n+1)+A002378(n+1)*A053507(n+1)` -/
def P3387862680800332398.Spec : Prop :=
  ∀ n, P3387862680800332398.a n = A226998 (n + 1)

end A226998

/-!
# A226999: Inverse Euler transform of A005169 (fountains of coins).

The programs for A226999, there is no canonical definition to state claims against.
-/

/-! ## A226999.P6946928207115410906

`∑{d}[n+1, A154955(#)*A305840((n+1)/#)]`
-/

namespace A226999.P6946928207115410906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A305840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226999.P6946928207115410906

/-! ## A226999.P14436020380768197460

`or(A025459(A000975(n)), A212804(n))`
-/

namespace A226999.P14436020380768197460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025459 (A000975 n).toNat) (A212804 n)

end

end A226999.P14436020380768197460

/-! ## A226999.P633982047052002899

`or(A056974(A056953(n)), A212804(n))`
-/

namespace A226999.P633982047052002899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056974 (A056953 n).toNat) (A212804 n)

end

end A226999.P633982047052002899

/-! ## A226999.P4794708756641093234

`or(A025458(A052996(n)), A212804(n))`
-/

namespace A226999.P4794708756641093234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025458 (A052996 n).toNat) (A212804 n)

end

end A226999.P4794708756641093234

/-! ## A226999.P15902525862441762155

`or(A000196(A288548(n+9)), A212804(n))`
-/

namespace A226999.P15902525862441762155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A288548 (n + 9)).toNat) (A212804 n)

end

end A226999.P15902525862441762155

