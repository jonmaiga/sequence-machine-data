import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

/-!
# A186800: Number of (n+2)X5 binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186800, there is no canonical definition to state claims against.
-/

/-! ## A186800.P581039094531074346

`A186806(∑[n+2]+4)`
-/

namespace A186800.P581039094531074346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186800.P581039094531074346

/-! ## A186800.P318589811392876285

`record[A186806(A127773(n+1)+3)]`
-/

namespace A186800.P318589811392876285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (A127773 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186800.P318589811392876285

/-! ## A186800.P7755920119477996664

`lcm((-1)^n, A186806(A167614(n+1)))`
-/

namespace A186800.P7755920119477996664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A186806 (A167614 (n + 1)).toNat)

end

end A186800.P7755920119477996664

/-! ## A186800.P3549812572185495787

`A186806(A167614(n+1))+A025444(n)`
-/

namespace A186800.P3549812572185495787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (A167614 (n + 1)).toNat + A025444 n

end

end A186800.P3549812572185495787

/-! ## A186800.P4889919073900139526

`A186806(A167614(n+1))+A086015(n)`
-/

namespace A186800.P4889919073900139526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (A167614 (n + 1)).toNat + A086015 n

end

end A186800.P4889919073900139526

/-!
# A186801: Number of (n+2)X6 binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186801, there is no canonical definition to state claims against.
-/

/-! ## A186801.P14748724558010313706

`A186806(∑[n+3]+7)`
-/

namespace A186801.P14748724558010313706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186801.P14748724558010313706

/-!
# A186802: Number of (n+2)X7 binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186802, there is no canonical definition to state claims against.
-/

/-! ## A186802.P4132958548724313277

`A186806(Δ[A264443(n)])`
-/

namespace A186802.P4132958548724313277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (f1 (n + 1) - f1 n).toNat

end

end A186802.P4132958548724313277

/-! ## A186802.P8424660131636226637

`A186806(A374005(n+1))`
-/

namespace A186802.P8424660131636226637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (A374005 (n + 1)).toNat

end

end A186802.P8424660131636226637

/-! ## A186802.P10804236279890496531

`A186806(Δ[A023545(n+1)])`
-/

namespace A186802.P10804236279890496531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (f1 (n + 1) - f1 n).toNat

end

end A186802.P10804236279890496531

/-!
# A186807: Triangle read by rows: T(n,p) (n >= 2, 1 <= p <= n-1) = number of compositions of n into p parts, with first part >= all other parts.

The programs for A186807, there is no canonical definition to state claims against.
-/

/-! ## A186807.P3780021245824320256

`A156041(∑[char[∑[n]]]²-n)`
-/

namespace A186807.P3780021245824320256
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A186807.P3780021245824320256

/-! ## A186807.P14223718396144841751

`A184957((n-comp[∑[n]])²-comp[∑[n]])`
-/

namespace A186807.P14223718396144841751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184957 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)).toNat

end

end A186807.P14223718396144841751

/-! ## A186807.P14946660001815331237

`or(char[1], A156041(A038722(n+1)))`
-/

namespace A186807.P14946660001815331237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A156041 (A038722 (n + 1)).toNat)

end

end A186807.P14946660001815331237

/-! ## A186807.P698040998691350226

`A156041(A038722(n+1))%A017233(n)`
-/

namespace A186807.P698040998691350226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156041 (A038722 (n + 1)).toNat) (A017233 n)

end

end A186807.P698040998691350226

/-! ## A186807.P4520298048978546809

`A033999(n)²*A156041(A038722(n+1))`
-/

namespace A186807.P4520298048978546809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A156041 (A038722 (n + 1)).toNat

end

end A186807.P4520298048978546809

/-! ## A186807.P7619594464764340623

`A156041(A038722(n+1))+A000007(n+1)`
-/

namespace A186807.P7619594464764340623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A186807.P7619594464764340623

/-! ## A186807.P9565440495190555856

`A007318(C(2, n))*A156041(A038722(n+1))`
-/

namespace A186807.P9565440495190555856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A156041 (A038722 (n + 1)).toNat

end

end A186807.P9565440495190555856

/-! ## A186807.P16553681454074686826

`∏{p}[n, A001221(#)]*A156041(A038722(n+1))`
-/

namespace A186807.P16553681454074686826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A156041 (A038722 (n + 1)).toNat

end

end A186807.P16553681454074686826

/-! ## A186807.P4773557684360778189

`A000005(gcd(n, n+1))*A156041(A038722(n+1))`
-/

namespace A186807.P4773557684360778189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A156041 (A038722 (n + 1)).toNat

end

end A186807.P4773557684360778189

/-! ## A186807.P4301636528970882519

`A001221(A088483(n+1))*A156041(A038722(n+1))`
-/

namespace A186807.P4301636528970882519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A088483 (n + 1)).toNat * A156041 (A038722 (n + 1)).toNat

end

end A186807.P4301636528970882519

/-!
# A186809: Period 6 sequence [0, 1, 2, 0, -2, -1, ...].

The programs for A186809, the canonical program `A186809.P2859311591561681758` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186809 has offset 0).

The definition of A186809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186809.P2859311591561681758

`((n+2)%6-2)%3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A186809

/-- `((n+2)%6-2)%3` -/
def P2859311591561681758.Spec : Prop :=
  ∀ n, P2859311591561681758.a n = A186809 n

theorem P2859311591561681758.correct : P2859311591561681758.Spec := by
  intro n
  simp only [A186809]

end A186809

/-!
# A186810: Partial sums of A009940.

The programs for A186810, there is no canonical definition to state claims against.
-/

/-! ## A186810.P6810665315095975211

`∑[A009940(n)]`
-/

namespace A186810.P6810665315095975211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P6810665315095975211

/-! ## A186810.P1271663759242418628

`∑[A293116(n)+n*a(n-1)]` with `a(0)=1`
-/

namespace A186810.P1271663759242418628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A293116 n + (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P1271663759242418628

/-! ## A186810.P5216182125486283767

`∑[n!-A087860(n)]`
-/

namespace A186810.P5216182125486283767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A087860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P5216182125486283767

/-! ## A186810.P12510101264755046658

`∑[A000142(n)-A087860(n)]`
-/

namespace A186810.P12510101264755046658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A087860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P12510101264755046658

/-! ## A186810.P15597928189945857558

`a(n-1)+A000142(n)/A160622(n)*A160621(n)` with `a(0)=1`
-/

namespace A186810.P15597928189945857558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000142 n : ℚ) / (A160622 n : ℚ) * (A160621 n : ℚ)

end

end A186810.P15597928189945857558

/-! ## A186810.P15459066063297947322

`∑[A021009(∑[n])-A087860(n)]`
-/

namespace A186810.P15459066063297947322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (∑ j ∈ Finset.range (n + 1), f2 j) - A087860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P15459066063297947322

/-! ## A186810.P3739534047606998369

`∑[A331325(n)-A331326(n)]`
-/

namespace A186810.P3739534047606998369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331325 n - A331326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P3739534047606998369

/-!
# A186811: Twin primes of the form k*6^m-1 and k*6^m+1, where k is prime.

The programs for A186811, there is no canonical definition to state claims against.
-/

/-! ## A186811.P8234185362749292057

`A077800(A072957(n+3))%A233534(n+3)`
-/

namespace A186811.P8234185362749292057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077800 (A072957 (n + 3)).toNat) (A233534 (n + 3))

end

end A186811.P8234185362749292057

/-! ## A186811.P5208723718311963386

`record[A132247(n+1)%A132226(A132242(n+1))]`
-/

namespace A186811.P5208723718311963386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132247 (n + 1)) (A132226 (A132242 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186811.P5208723718311963386

/-! ## A186811.P1704096723679283332

`A132247(record[A347062(n+2)])`
-/

namespace A186811.P1704096723679283332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347062 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186811.P1704096723679283332

/-! ## A186811.P6466221714749945808

`filter[A239711(n+1), A130854(#)]`
-/

namespace A186811.P6466221714749945808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130854 (f1 j).toNat = 1) n)

end

end A186811.P6466221714749945808

/-!
# A186812: Expansion of 1/(1-x^6-3*x^5-4*x^4-3*x^3-2*x^2-x).

The programs for A186812, there is no canonical definition to state claims against.
-/

/-! ## A186812.P15024530432274956532

`A156562(floor((sqrt(2)+2)*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A186812.P15024530432274956532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A156562 ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋.toNat

end

end A186812.P15024530432274956532

/-! ## A186812.P13923055248423541191

`A156562(ceil((sqrt(2)+2)*a(n-1))-1)` with `a(0)=1, a(1)=1`
-/

namespace A186812.P13923055248423541191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A156562 (⌈(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - 1).toNat

end

end A186812.P13923055248423541191

/-! ## A186812.P3496590601400189492

`A100196(A323262(n+1)+A000110(n))`
-/

namespace A186812.P3496590601400189492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A323262 (n + 1) + A000110 n).toNat

end

end A186812.P3496590601400189492

/-! ## A186812.P5933086235078706713

`A003227(n+1)-A141100(A003227(n+1))`
-/

namespace A186812.P5933086235078706713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003227 (n + 1) - A141100 (A003227 (n + 1)).toNat

end

end A186812.P5933086235078706713

/-!
# A186813: a(n) = n if n odd, a(2n) = 3n if n odd, a(4n) = 2n.

The programs for A186813, the canonical program `A186813.P16316920745608396461` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186813 has offset 0).

The definition of A186813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134172, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186813.P16316920745608396461

`A134172(n)+A134172(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A186813

/-- `A134172(n)+A134172(n+1)` -/
def P16316920745608396461.Spec : Prop :=
  ∀ n, P16316920745608396461.a n = A186813 n

theorem P16316920745608396461.correct : P16316920745608396461.Spec := by
  intro n
  simp only [A186813]

end A186813

/-! ## A186813.P467663842693242007

`n/2*dr(or(28, gcd(4, n)))`
-/

namespace A186813.P467663842693242007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (SequenceMachineLib.digitalRoot (Nat.lor 28 (Nat.gcd 4 n) : ℤ) : ℚ)

end

end A186813.P467663842693242007

namespace A186813

/-- `n/2*dr(or(28, gcd(4, n)))` -/
def P467663842693242007.Spec : Prop :=
  ∀ n, P467663842693242007.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P18042318139684356112

`n*(1-∑[(-1)^∑[n]/2])`
-/

namespace A186813.P18042318139684356112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186813.P18042318139684356112

namespace A186813

/-- `n*(1-∑[(-1)^∑[n]/2])` -/
def P18042318139684356112.Spec : Prop :=
  ∀ n, P18042318139684356112.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P17868917565957946975

`∑[(-1)^a(n-1)-a(n-2)]+n` with `a(0)=0, a(1)=0`
-/

namespace A186813.P17868917565957946975
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (-1 : ℝ) ^ (f1 (n - 1)) - f1 (n - 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A186813.P17868917565957946975

namespace A186813

/-- `∑[(-1)^a(n-1)-a(n-2)]+n` -/
def P17868917565957946975.Spec : Prop :=
  ∀ n, P17868917565957946975.a n = (A186813 n : ℝ)

end A186813

/-! ## A186813.P1531298901849182577

`n*A068073(n)/2`
-/

namespace A186813.P1531298901849182577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A068073 n : ℚ) / 2

end

end A186813.P1531298901849182577

namespace A186813

/-- `n*A068073(n)/2` -/
def P1531298901849182577.Spec : Prop :=
  ∀ n, P1531298901849182577.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P10266486805628545499

`round(n-n/A228936(n))`
-/

namespace A186813.P10266486805628545499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (n : ℚ) / (A228936 n : ℚ))

end

end A186813.P10266486805628545499

namespace A186813

/-- `round(n-n/A228936(n))` -/
def P10266486805628545499.Spec : Prop :=
  ∀ n, P10266486805628545499.a n = A186813 n

end A186813

/-! ## A186813.P3959887633227506674

`∑[n]-n*A004524(n)`
-/

namespace A186813.P3959887633227506674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * A004524 n

end

end A186813.P3959887633227506674

namespace A186813

/-- `∑[n]-n*A004524(n)` -/
def P3959887633227506674.Spec : Prop :=
  ∀ n, P3959887633227506674.a n = A186813 n

end A186813

/-! ## A186813.P9508372990835383057

`(lcm(n, A070432(n))+n)/2`
-/

namespace A186813.P9508372990835383057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A070432 n) + n : ℚ) / 2

end

end A186813.P9508372990835383057

namespace A186813

/-- `(lcm(n, A070432(n))+n)/2` -/
def P9508372990835383057.Spec : Prop :=
  ∀ n, P9508372990835383057.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P2459718810961410691

`n*(A040451(n)%3+1)/2`
-/

namespace A186813.P2459718810961410691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (Int.tmod (A040451 n) 3 + 1) : ℚ) / 2

end

end A186813.P2459718810961410691

namespace A186813

/-- `n*(A040451(n)%3+1)/2` -/
def P2459718810961410691.Spec : Prop :=
  ∀ n, P2459718810961410691.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P11045051110845879161

`abs(ceil((n*A056594(n)-1)/2)-n)`
-/

namespace A186813.P11045051110845879161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈((n : ℤ) * A056594 n - 1 : ℚ) / 2⌉ - (n : ℤ)|

end

end A186813.P11045051110845879161

namespace A186813

/-- `abs(ceil((n*A056594(n)-1)/2)-n)` -/
def P11045051110845879161.Spec : Prop :=
  ∀ n, P11045051110845879161.a n = A186813 n

end A186813

/-! ## A186813.P6371424602491810785

`A190621(n)+A142150(n)`
-/

namespace A186813.P6371424602491810785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190621 n + A142150 n

end

end A186813.P6371424602491810785

namespace A186813

/-- `A190621(n)+A142150(n)` -/
def P6371424602491810785.Spec : Prop :=
  ∀ n, P6371424602491810785.a n = A186813 n

end A186813

/-! ## A186813.P9277914962318100325

`A164355(n)-A008574(n)`
-/

namespace A186813.P9277914962318100325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164355 n - A008574 n

end

end A186813.P9277914962318100325

namespace A186813

/-- `A164355(n)-A008574(n)` -/
def P9277914962318100325.Spec : Prop :=
  ∀ n, P9277914962318100325.a n = A186813 n

end A186813

/-! ## A186813.P7828153251727676190

`n-A127365(A237420(n))`
-/

namespace A186813.P7828153251727676190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127365 (A237420 n).toNat

end

end A186813.P7828153251727676190

namespace A186813

/-- `n-A127365(A237420(n))` -/
def P7828153251727676190.Spec : Prop :=
  ∀ n, P7828153251727676190.a n = A186813 n

end A186813

/-! ## A186813.P17088589940591481019

`A014682(n*A068073(n))`
-/

namespace A186813.P17088589940591481019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n : ℤ) * A068073 n).toNat

end

end A186813.P17088589940591481019

namespace A186813

/-- `A014682(n*A068073(n))` -/
def P17088589940591481019.Spec : Prop :=
  ∀ n, P17088589940591481019.a n = A186813 n

end A186813

/-! ## A186813.P14786727166326721020

`A100855(n)%A004277(n)`
-/

namespace A186813.P14786727166326721020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100855 n) (A004277 n)

end

end A186813.P14786727166326721020

namespace A186813

/-- `A100855(n)%A004277(n)` -/
def P14786727166326721020.Spec : Prop :=
  ∀ n, P14786727166326721020.a n = A186813 n

end A186813

/-! ## A186813.P5559282207156506697

`A164355(n)%A004277(n)`
-/

namespace A186813.P5559282207156506697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164355 n) (A004277 n)

end

end A186813.P5559282207156506697

namespace A186813

/-- `A164355(n)%A004277(n)` -/
def P5559282207156506697.Spec : Prop :=
  ∀ n, P5559282207156506697.a n = A186813 n

end A186813

/-! ## A186813.P9493390059760655821

`n-A127365(A193356(n+1))`
-/

namespace A186813.P9493390059760655821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127365 (A193356 (n + 1)).toNat

end

end A186813.P9493390059760655821

namespace A186813

/-- `n-A127365(A193356(n+1))` -/
def P9493390059760655821.Spec : Prop :=
  ∀ n, P9493390059760655821.a n = A186813 n

end A186813

/-! ## A186813.P10623803766400175826

`A004525(n)+2*A077814(n)`
-/

namespace A186813.P10623803766400175826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + 2 * A077814 n

end

end A186813.P10623803766400175826

namespace A186813

/-- `A004525(n)+2*A077814(n)` -/
def P10623803766400175826.Spec : Prop :=
  ∀ n, P10623803766400175826.a n = A186813 n

end A186813

/-! ## A186813.P12328710783769825835

`A065530(n)%A047425(n+1)`
-/

namespace A186813.P12328710783769825835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065530 n) (A047425 (n + 1))

end

end A186813.P12328710783769825835

namespace A186813

/-- `A065530(n)%A047425(n+1)` -/
def P12328710783769825835.Spec : Prop :=
  ∀ n, P12328710783769825835.a n = A186813 n

end A186813

/-! ## A186813.P2978632067384152209

`A074377(n)%A047546(n+1)`
-/

namespace A186813.P2978632067384152209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074377 n) (A047546 (n + 1))

end

end A186813.P2978632067384152209

namespace A186813

/-- `A074377(n)%A047546(n+1)` -/
def P2978632067384152209.Spec : Prop :=
  ∀ n, P2978632067384152209.a n = A186813 n

end A186813

/-!
# A186814: a(n) = smallest number m such that A002144(n) divides gcd(A002314(n)^2+1,(A002314(n)+m)^2+1).

The programs for A186814, there is no canonical definition to state claims against.
-/

/-! ## A186814.P4902901159362163343

`p?[4*n+1]-2*A002314(n+1)`
-/

namespace A186814.P4902901159362163343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2 * A002314 (n + 1)

end

end A186814.P4902901159362163343

/-! ## A186814.P269722965877863143

`2*A152676(n+1)-p?[4*n+1]`
-/

namespace A186814.P269722965877863143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152676 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A186814.P269722965877863143

/-! ## A186814.P3789132335189922958

`A152676(n+1)-A002314(n+1)`
-/

namespace A186814.P3789132335189922958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (n + 1) - A002314 (n + 1)

end

end A186814.P3789132335189922958

/-! ## A186814.P8712994962451934787

`A152676(n+1)-A177979(n+2)`
-/

namespace A186814.P8712994962451934787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (n + 1) - A177979 (n + 2)

end

end A186814.P8712994962451934787

/-! ## A186814.P13851307894346266143

`abs(A336883(n+1)-A336884(n+1))`
-/

namespace A186814.P13851307894346266143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336883 (n + 1) - A336884 (n + 1)|

end

end A186814.P13851307894346266143

/-! ## A186814.P13315165671548905243

`A002144(n+1)-2*A002314(n+1)`
-/

namespace A186814.P13315165671548905243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - 2 * A002314 (n + 1)

end

end A186814.P13315165671548905243

/-! ## A186814.P9523424139727188802

`2*A152676(n+1)-A002144(n+1)`
-/

namespace A186814.P9523424139727188802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152676 (n + 1) - A002144 (n + 1)

end

end A186814.P9523424139727188802

/-! ## A186814.P9505557710972766716

`A002313(n+2)-2*A002314(n+1)`
-/

namespace A186814.P9505557710972766716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - 2 * A002314 (n + 1)

end

end A186814.P9505557710972766716

/-! ## A186814.P10980271363635692901

`2*A152676(n+1)-A002313(n+2)`
-/

namespace A186814.P10980271363635692901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152676 (n + 1) - A002313 (n + 2)

end

end A186814.P10980271363635692901

/-! ## A186814.P7263880085690458983

`A006530(A055131(n))-2*A002314(n+1)`
-/

namespace A186814.P7263880085690458983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055131 n).toNat - 2 * A002314 (n + 1)

end

end A186814.P7263880085690458983

/-!
# A186815: Numbers n such that n^2-10 is a prime.

The programs for A186815, there is no canonical definition to state claims against.
-/

/-! ## A186815.P17901780641725390440

`ceil(sqrt(A201313(n+1)))`
-/

namespace A186815.P17901780641725390440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A201313 (n + 1) : ℝ)⌉

end

end A186815.P17901780641725390440

/-! ## A186815.P100596983965356119

`round(sqrt(A201313(n+1)+A088837(n+1)))`
-/

namespace A186815.P100596983965356119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A201313 (n + 1) + A088837 (n + 1) : ℝ))

end

end A186815.P100596983965356119

/-! ## A186815.P14792345889058499157

`A004442(floor(sqrt(A201313(n+1))))`
-/

namespace A186815.P14792345889058499157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.sqrt (A201313 (n + 1))).toNat

end

end A186815.P14792345889058499157

/-! ## A186815.P2722737005831233516

`A109613(floor(sqrt(A201313(n+1))))`
-/

namespace A186815.P2722737005831233516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.sqrt (A201313 (n + 1))).toNat

end

end A186815.P2722737005831233516

/-! ## A186815.P12339584589665994297

`A109613(round(sqrt(A201313(n+1))))`
-/

namespace A186815.P12339584589665994297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway (Real.sqrt (A201313 (n + 1) : ℝ))).toNat

end

end A186815.P12339584589665994297

/-! ## A186815.P10765054729633238074

`ceil(sqrt(p?[n²-10]))`
-/

namespace A186815.P10765054729633238074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A186815.P10765054729633238074

/-! ## A186815.P12193894634234833730

`sqrt(p?[n²-10]+10)`
-/

namespace A186815.P12193894634234833730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 10 : ℝ)

end

end A186815.P12193894634234833730

/-!
# A186816: Half the number of (n+2)X(n+2) binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186816, there is no canonical definition to state claims against.
-/

/-! ## A186816.P5955635608375700345

`A186825(∑[4*n]+1)`
-/

namespace A186816.P5955635608375700345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186816.P5955635608375700345

/-! ## A186816.P4917701946482934883

`∑{digits}[n, 10^#]%9*A186825(n²+(n+1)²)`
-/

namespace A186816.P4917701946482934883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℤ) * A186825 (n ^ 2 + (n + 1) ^ 2)

end

end A186816.P4917701946482934883

/-! ## A186816.P14509705447892291773

`record[A186825(Δ[A235355(n)])]`
-/

namespace A186816.P14509705447892291773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186816.P14509705447892291773

/-!
# A186817: Half the number of (n+2) X 3 binary arrays with each 3 X 3 subblock having sum 4 or 5.

The programs for A186817, there is no canonical definition to state claims against.
-/

/-! ## A186817.P3696157621287524370

`A186825(∑[n]+1)`
-/

namespace A186817.P3696157621287524370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186817.P3696157621287524370

/-! ## A186817.P3228368574153854064

`lcm(3, A186825(A000124(n)))`
-/

namespace A186817.P3228368574153854064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A186825 (A000124 n).toNat)

end

end A186817.P3228368574153854064

/-! ## A186817.P3209558747520040989

`record[A010054(n)*A186825(n+1)]`
-/

namespace A186817.P3209558747520040989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186817.P3209558747520040989

/-! ## A186817.P18015690255124953022

`record[A186825(n+1)/A022167(n)]`
-/

namespace A186817.P18015690255124953022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186825 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186817.P18015690255124953022

/-! ## A186817.P5111923292049521303

`record[A186825(n+1)/A094816(n)]`
-/

namespace A186817.P5111923292049521303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186825 (n + 1) : ℚ) / (A094816 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186817.P5111923292049521303

/-!
# A186818: Half the number of (n+2)X4 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186818, there is no canonical definition to state claims against.
-/

/-! ## A186818.P3964026046459012055

`A186825(∑[n+1]+2)`
-/

namespace A186818.P3964026046459012055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186818.P3964026046459012055

/-! ## A186818.P15990955478784336007

`record[A010054(n)*A186825(n+2)]`
-/

namespace A186818.P15990955478784336007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186825 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186818.P15990955478784336007

/-! ## A186818.P12853822635709332182

`lcm(A011620(n+1), A186825(A133263(n+1)))`
-/

namespace A186818.P12853822635709332182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011620 (n + 1)) (A186825 (A133263 (n + 1)).toNat)

end

end A186818.P12853822635709332182

/-! ## A186818.P14118606951023315476

`A071625(2*n+5)*A186825(A022856(n+5))`
-/

namespace A186818.P14118606951023315476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (2 * n + 5) * A186825 (A022856 (n + 5)).toNat

end

end A186818.P14118606951023315476

/-! ## A186818.P1986800604232841678

`record[root(A186825(n+3), A157149(n+3))]`
-/

namespace A186818.P1986800604232841678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186825 (n + 3) : ℝ) ^ (1 / (A157149 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186818.P1986800604232841678

/-!
# A186819: Half the number of (n+2)X5 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186819, there is no canonical definition to state claims against.
-/

/-! ## A186819.P18272172258194875708

`A186825(∑[n+2]+4)`
-/

namespace A186819.P18272172258194875708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186819.P18272172258194875708

/-! ## A186819.P4558350989406988824

`A186825(A167614(n+1))+A025444(n)`
-/

namespace A186819.P4558350989406988824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A167614 (n + 1)).toNat + A025444 n

end

end A186819.P4558350989406988824

/-! ## A186819.P10325041532498137285

`A186825(A167614(n+1))+A178798(n)`
-/

namespace A186819.P10325041532498137285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A167614 (n + 1)).toNat + A178798 n

end

end A186819.P10325041532498137285

/-! ## A186819.P12873174732294318241

`lcm(A014607(n), A186825(A167614(n+1)))`
-/

namespace A186819.P12873174732294318241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014607 n) (A186825 (A167614 (n + 1)).toNat)

end

end A186819.P12873174732294318241

/-! ## A186819.P4899187704467417298

`A276183(n+1)+A186825(A167614(n+1))`
-/

namespace A186819.P4899187704467417298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1) + A186825 (A167614 (n + 1)).toNat

end

end A186819.P4899187704467417298

/-!
# A186820: Half the number of (n+2)X6 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186820, there is no canonical definition to state claims against.
-/

/-! ## A186820.P2496705371758671058

`A186825(∑[n+3]+7)`
-/

namespace A186820.P2496705371758671058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186820.P2496705371758671058

/-! ## A186820.P9017530549834864541

`A186825(A141214(n+1))+A185284(n)`
-/

namespace A186820.P9017530549834864541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A141214 (n + 1)).toNat + A185284 n

end

end A186820.P9017530549834864541

/-! ## A186820.P12209268498403558905

`A186825(A155212(n)+5)%A186821(n+1)`
-/

namespace A186820.P12209268498403558905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186825 (A155212 n + 5).toNat) (A186821 (n + 1))

end

end A186820.P12209268498403558905

/-! ## A186820.P6759578556058687211

`A118102(A079953(n+1))*A186825(A155212(n)+5)`
-/

namespace A186820.P6759578556058687211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A079953 (n + 1)).toNat * A186825 (A155212 n + 5).toNat

end

end A186820.P6759578556058687211

/-!
# A186821: Half the number of (n+2)X7 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186821, there is no canonical definition to state claims against.
-/

/-! ## A186821.P5762178540012728094

`A186825(A374005(n+1))`
-/

namespace A186821.P5762178540012728094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A374005 (n + 1)).toNat

end

end A186821.P5762178540012728094

/-! ## A186821.P12644117243875868801

`A186825(eq[6, A131818(n+1)])`
-/

namespace A186821.P12644117243875868801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186821.P12644117243875868801

/-! ## A186821.P553948396684500931

`A186825(Δ[A264443(n)])`
-/

namespace A186821.P553948396684500931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (f1 (n + 1) - f1 n).toNat

end

end A186821.P553948396684500931

/-! ## A186821.P9203695675603181321

`A186825(A046691(n+3))`
-/

namespace A186821.P9203695675603181321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A046691 (n + 3)).toNat

end

end A186821.P9203695675603181321

/-! ## A186821.P12485515321862780278

`A186825(eq[4, A193592(n)])`
-/

namespace A186821.P12485515321862780278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186821.P12485515321862780278

/-!
# A186822: Half the number of (n+2)X8 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186822, there is no canonical definition to state claims against.
-/

/-! ## A186822.P11081894982289125919

`A186825(A374007(n+1))`
-/

namespace A186822.P11081894982289125919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A374007 (n + 1)).toNat

end

end A186822.P11081894982289125919

/-! ## A186822.P16187678819035651032

`A186825(A167499(n+4)+1)`
-/

namespace A186822.P16187678819035651032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A167499 (n + 4) + 1).toNat

end

end A186822.P16187678819035651032

/-! ## A186822.P10070970588300983150

`A186825(A000124(n+5)+5)`
-/

namespace A186822.P10070970588300983150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A000124 (n + 5) + 5).toNat

end

end A186822.P10070970588300983150

/-! ## A186822.P1485677299685944587

`A186825(eq[3, A219347(n)])`
-/

namespace A186822.P1485677299685944587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186822.P1485677299685944587

/-! ## A186822.P8243666274532975741

`A186825(eq[5, A193592(n)])`
-/

namespace A186822.P8243666274532975741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186822.P8243666274532975741

/-!
# A186823: Half the number of (n+2)X9 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186823, there is no canonical definition to state claims against.
-/

/-! ## A186823.P10380413677077175327

`A186825(A374008(n+1))`
-/

namespace A186823.P10380413677077175327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A374008 (n + 1)).toNat

end

end A186823.P10380413677077175327

/-! ## A186823.P9307102215029727239

`A186825(A055999(n+4))`
-/

namespace A186823.P9307102215029727239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A055999 (n + 4)).toNat

end

end A186823.P9307102215029727239

/-! ## A186823.P5216540875555021241

`A186825(eq[4, A219347(n)])`
-/

namespace A186823.P5216540875555021241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186823.P5216540875555021241

/-! ## A186823.P17006808679744713599

`A186825(eq[6, A193592(n)])`
-/

namespace A186823.P17006808679744713599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186823.P17006808679744713599

/-!
# A186824: Half the number of (n+2)X10 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186824, there is no canonical definition to state claims against.
-/

/-! ## A186824.P412540931992721572

`A186825(A374009(n+1))`
-/

namespace A186824.P412540931992721572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A374009 (n + 1)).toNat

end

end A186824.P412540931992721572

/-! ## A186824.P3269270748904418237

`A186825(eq[5, A219347(n)])`
-/

namespace A186824.P3269270748904418237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186824.P3269270748904418237

/-!
# A186826: Riordan array (s(x),x*S(x)) where s(x) is the g.f. of the little Schroeder numbers A001003, and S(x) is the g.f. of the large Schroeder numbers A006318.

The programs for A186826, there is no canonical definition to state claims against.
-/

/-! ## A186826.P6773412279720560038

`A144944(A061579(n))`
-/

namespace A186826.P6773412279720560038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (A061579 n).toNat

end

end A186826.P6773412279720560038

/-! ## A186826.P15169163750210747548

`A144944(A114327(n)+n)`
-/

namespace A186826.P15169163750210747548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (A114327 n + (n : ℤ)).toNat

end

end A186826.P15169163750210747548

/-! ## A186826.P1514170362738520062

`A144944(A038722(n+1)-1)`
-/

namespace A186826.P1514170362738520062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (A038722 (n + 1) - 1).toNat

end

end A186826.P1514170362738520062

/-! ## A186826.P1784701279002361141

`A144944(A057944(n)+A025581(n))`
-/

namespace A186826.P1784701279002361141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (A057944 n + A025581 n).toNat

end

end A186826.P1784701279002361141

/-! ## A186826.P1534629195570455492

`A144944(A038722(n+2))`
-/

namespace A186826.P1534629195570455492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (A038722 (n + 2)).toNat

end

end A186826.P1534629195570455492

/-!
# A186828: Diagonal sums of number triangle A186826.

The programs for A186828, there is no canonical definition to state claims against.
-/

/-! ## A186828.P5359499361284188497

`A187180(A192455(n+1))`
-/

namespace A186828.P5359499361284188497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A192455 (n + 1)).toNat

end

end A186828.P5359499361284188497

/-! ## A186828.P14390035101072564427

`A157271(A150626(n))`
-/

namespace A186828.P14390035101072564427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A150626 n).toNat

end

end A186828.P14390035101072564427

/-!
# A186830: Keith sequence for the number 197.

The programs for A186830, the canonical program `A186830.P17270852852787442165` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186830 has offset 1).

The definition of A186830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186830.P17270852852787442165

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A186830

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P17270852852787442165.Spec : Prop :=
  ∀ n, (P17270852852787442165.a n : ℤ) = A186830 (n + 1)

theorem P17270852852787442165.correct : P17270852852787442165.Spec := by
  intro n
  simp only [A186830, Nat.add_sub_cancel]

end A186830

/-! ## A186830.P15081373947513247603

`A214829(n)+2*A001590(n)`
-/

namespace A186830.P15081373947513247603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n + 2 * A001590 n

end

end A186830.P15081373947513247603

namespace A186830

/-- `A214829(n)+2*A001590(n)` -/
def P15081373947513247603.Spec : Prop :=
  ∀ n, P15081373947513247603.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P11504583040041225617

`A214827(n)+2*A020992(n)`
-/

namespace A186830.P11504583040041225617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + 2 * A020992 n

end

end A186830.P11504583040041225617

namespace A186830

/-- `A214827(n)+2*A020992(n)` -/
def P11504583040041225617.Spec : Prop :=
  ∀ n, P11504583040041225617.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P9020501693149353470

`A214829(n)+Δ[Δ[A000213(n)]]`
-/

namespace A186830.P9020501693149353470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n + (f1 (n + 1) - f1 n)

end

end A186830.P9020501693149353470

namespace A186830

/-- `A214829(n)+Δ[Δ[A000213(n)]]` -/
def P9020501693149353470.Spec : Prop :=
  ∀ n, P9020501693149353470.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P12391565501618992643

`A214827(n)+Δ[A141523(n+1)]`
-/

namespace A186830.P12391565501618992643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (f1 (n + 1) - f1 n)

end

end A186830.P12391565501618992643

namespace A186830

/-- `A214827(n)+Δ[A141523(n+1)]` -/
def P12391565501618992643.Spec : Prop :=
  ∀ n, P12391565501618992643.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P11080561703942750492

`A020992(n)+A214829(n)-A000073(n)`
-/

namespace A186830.P11080561703942750492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + (A214829 n - A000073 n)

end

end A186830.P11080561703942750492

namespace A186830

/-- `A020992(n)+A214829(n)-A000073(n)` -/
def P11080561703942750492.Spec : Prop :=
  ∀ n, P11080561703942750492.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P1865501896410162678

`A214827(n)+A214827(n)-A000213(n+1)`
-/

namespace A186830.P1865501896410162678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214827 n - A000213 (n + 1))

end

end A186830.P1865501896410162678

namespace A186830

/-- `A214827(n)+A214827(n)-A000213(n+1)` -/
def P1865501896410162678.Spec : Prop :=
  ∀ n, P1865501896410162678.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P5870698607628644097

`A354784(n+1)+A214829(n)-A354784(n)`
-/

namespace A186830.P5870698607628644097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) + (A214829 n - A354784 n)

end

end A186830.P5870698607628644097

namespace A186830

/-- `A354784(n+1)+A214829(n)-A354784(n)` -/
def P5870698607628644097.Spec : Prop :=
  ∀ n, P5870698607628644097.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P17941754838501959980

`A214831(n)-A354784(n)`
-/

namespace A186830.P17941754838501959980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - A354784 n

end

end A186830.P17941754838501959980

namespace A186830

/-- `A214831(n)-A354784(n)` -/
def P17941754838501959980.Spec : Prop :=
  ∀ n, P17941754838501959980.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P3413828310318340813

`A214831(n)-Δ[A000213(n)]`
-/

namespace A186830.P3413828310318340813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A186830.P3413828310318340813

namespace A186830

/-- `A214831(n)-Δ[A000213(n)]` -/
def P3413828310318340813.Spec : Prop :=
  ∀ n, P3413828310318340813.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P6279886138097116631

`A214831(n)-2*A000073(n)`
-/

namespace A186830.P6279886138097116631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - 2 * A000073 n

end

end A186830.P6279886138097116631

namespace A186830

/-- `A214831(n)-2*A000073(n)` -/
def P6279886138097116631.Spec : Prop :=
  ∀ n, P6279886138097116631.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P6959340420483949489

`2*A214827(n)-A000213(n+1)`
-/

namespace A186830.P6959340420483949489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214827 n - A000213 (n + 1)

end

end A186830.P6959340420483949489

namespace A186830

/-- `2*A214827(n)-A000213(n+1)` -/
def P6959340420483949489.Spec : Prop :=
  ∀ n, P6959340420483949489.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P4454344842742998889

`A000213(n)+A214831(n)-A000213(n+1)`
-/

namespace A186830.P4454344842742998889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A214831 n - A000213 (n + 1))

end

end A186830.P4454344842742998889

namespace A186830

/-- `A000213(n)+A214831(n)-A000213(n+1)` -/
def P4454344842742998889.Spec : Prop :=
  ∀ n, P4454344842742998889.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P10554319359199562006

`A214831(n)-Δ[A001590(n+1)+A001590(n)]`
-/

namespace A186830.P10554319359199562006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A186830.P10554319359199562006

namespace A186830

/-- `A214831(n)-Δ[A001590(n+1)+A001590(n)]` -/
def P10554319359199562006.Spec : Prop :=
  ∀ n, P10554319359199562006.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P2520758108078259437

`A214831(n)-Δ[A000073(n+2)-A000073(n)]`
-/

namespace A186830.P2520758108078259437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A186830.P2520758108078259437

namespace A186830

/-- `A214831(n)-Δ[A000073(n+2)-A000073(n)]` -/
def P2520758108078259437.Spec : Prop :=
  ∀ n, P2520758108078259437.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P1514474115358535434

`A214831(n)-Δ[A112476(n+2)-A112476(n)]`
-/

namespace A186830.P1514474115358535434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (n + 2) - A112476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A186830.P1514474115358535434

namespace A186830

/-- `A214831(n)-Δ[A112476(n+2)-A112476(n)]` -/
def P1514474115358535434.Spec : Prop :=
  ∀ n, P1514474115358535434.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P7946839785741388136

`A100683(n+1)+A214831(n)-A214727(n+1)`
-/

namespace A186830.P7946839785741388136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 1) + (A214831 n - A214727 (n + 1))

end

end A186830.P7946839785741388136

namespace A186830

/-- `A100683(n+1)+A214831(n)-A214727(n+1)` -/
def P7946839785741388136.Spec : Prop :=
  ∀ n, P7946839785741388136.a n = A186830 (n + 1)

end A186830

/-!
# A186831: Number of (n+2)X(n+2) binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186831, there is no canonical definition to state claims against.
-/

/-! ## A186831.P1531051704159652301

`A186840(∑[4*n]+1)`
-/

namespace A186831.P1531051704159652301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186831.P1531051704159652301

/-!
# A186832: Number of (n+2)X3 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186832, there is no canonical definition to state claims against.
-/

/-! ## A186832.P5629140895122426409

`A186840(∑[n]+1)`
-/

namespace A186832.P5629140895122426409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186832.P5629140895122426409

/-! ## A186832.P12574167399780560399

`A186840(A000124(n))+char[12]`
-/

namespace A186832.P12574167399780560399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186832.P12574167399780560399

/-! ## A186832.P18074795757994577001

`record[A010054(n)*A186840(n+1)]`
-/

namespace A186832.P18074795757994577001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186832.P18074795757994577001

/-! ## A186832.P4856667561582196876

`record[A186840(n+1)/A008459(n)]`
-/

namespace A186832.P4856667561582196876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186840 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186832.P4856667561582196876

/-! ## A186832.P2367584535314630430

`record[A186840(n+1)/A015109(n)]`
-/

namespace A186832.P2367584535314630430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186840 (n + 1) : ℚ) / (A015109 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186832.P2367584535314630430

/-!
# A186833: Number of (n+2)X4 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186833, there is no canonical definition to state claims against.
-/

/-! ## A186833.P5729188041327756816

`A186840(∑[n+1]+2)`
-/

namespace A186833.P5729188041327756816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186833.P5729188041327756816

/-! ## A186833.P3144837969056088733

`record[A010054(n)*A186840(n+2)]`
-/

namespace A186833.P3144837969056088733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186840 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186833.P3144837969056088733

/-! ## A186833.P8792535121806991371

`record[A023531(n)*A186840(n+3)]`
-/

namespace A186833.P8792535121806991371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A186840 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186833.P8792535121806991371

/-! ## A186833.P513967598479119351

`record[gcd(A002262(n), A186840(n+2))]`
-/

namespace A186833.P513967598479119351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186840 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186833.P513967598479119351

/-! ## A186833.P3191302115583596131

`record[lcm(A073423(n), A186840(n+2))]`
-/

namespace A186833.P3191302115583596131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073423 n) (A186840 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186833.P3191302115583596131

/-!
# A186834: Number of (n+2)X5 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186834, there is no canonical definition to state claims against.
-/

/-! ## A186834.P16972247431156401683

`A186840(∑[n+2]+4)`
-/

namespace A186834.P16972247431156401683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186834.P16972247431156401683

/-! ## A186834.P15444995918718696309

`A186840(A167614(n+1))+A011738(n)`
-/

namespace A186834.P15444995918718696309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A167614 (n + 1)).toNat + A011738 n

end

end A186834.P15444995918718696309

/-! ## A186834.P15141239331598973149

`A186840(A167614(n+1))+A025469(n)`
-/

namespace A186834.P15141239331598973149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A167614 (n + 1)).toNat + A025469 n

end

end A186834.P15141239331598973149

/-! ## A186834.P1261742094701516920

`A186840(A167614(n+1))+A107846(n)`
-/

namespace A186834.P1261742094701516920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A167614 (n + 1)).toNat + A107846 n

end

end A186834.P1261742094701516920

/-! ## A186834.P6683425302867776275

`A186840(A167614(n+1))+A185255(n)`
-/

namespace A186834.P6683425302867776275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A167614 (n + 1)).toNat + A185255 n

end

end A186834.P6683425302867776275

/-!
# A186835: Number of (n+2)X6 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186835, there is no canonical definition to state claims against.
-/

/-! ## A186835.P9916346676412765000

`A186840(∑[n+3]+7)`
-/

namespace A186835.P9916346676412765000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186835.P9916346676412765000

/-!
# A186836: Number of (n+2)X7 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186836, there is no canonical definition to state claims against.
-/

/-! ## A186836.P14145071342522742647

`A186840(gcd(n, n+1)+∑[n+4]+10)`
-/

namespace A186836.P14145071342522742647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (Nat.gcd n (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 10))

end

end A186836.P14145071342522742647

/-! ## A186836.P7411349621359253503

`A186840(A167499(n+3))`
-/

namespace A186836.P7411349621359253503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A167499 (n + 3)).toNat

end

end A186836.P7411349621359253503

/-! ## A186836.P6844426672006861023

`A186840(A155212(n)+13)`
-/

namespace A186836.P6844426672006861023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A155212 n + 13).toNat

end

end A186836.P6844426672006861023

/-! ## A186836.P17987043173579703972

`A186840(A056000(n)+15)`
-/

namespace A186836.P17987043173579703972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A056000 n + 15).toNat

end

end A186836.P17987043173579703972

/-!
# A186837: Number of (n+2)X8 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186837, there is no canonical definition to state claims against.
-/

/-! ## A186837.P2954713434131910625

`A186840(A374007(n+1))`
-/

namespace A186837.P2954713434131910625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A374007 (n + 1)).toNat

end

end A186837.P2954713434131910625

/-!
# A186838: Number of (n+2)X9 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186838, there is no canonical definition to state claims against.
-/

/-! ## A186838.P2877491142704915951

`A186840(A374008(n+1))`
-/

namespace A186838.P2877491142704915951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A374008 (n + 1)).toNat

end

end A186838.P2877491142704915951

/-!
# A186839: Number of (n+2)X10 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186839, there is no canonical definition to state claims against.
-/

/-! ## A186839.P4149982799620565923

`A186840(A374009(n+1))`
-/

namespace A186839.P4149982799620565923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A374009 (n + 1)).toNat

end

end A186839.P4149982799620565923

/-!
# A186841: Number of (n+1)X(n+1) binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186841, there is no canonical definition to state claims against.
-/

/-! ## A186841.P18437823592836915626

`A186850(∑[4*n]+1)`
-/

namespace A186841.P18437823592836915626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186841.P18437823592836915626

/-! ## A186841.P11400765059583870003

`record[A003982(n)*A186850(n+1)]`
-/

namespace A186841.P11400765059583870003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186841.P11400765059583870003

/-! ## A186841.P1556613996732027961

`record[gcd(A003987(n), A186850(n+1))]`
-/

namespace A186841.P1556613996732027961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A186850 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186841.P1556613996732027961

/-! ## A186841.P268764853194679841

`A236456(n+1)+A186850(A001844(n))`
-/

namespace A186841.P268764853194679841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236456 (n + 1) + A186850 (A001844 n).toNat

end

end A186841.P268764853194679841

/-! ## A186841.P18003574930583372744

`A236460(n+1)+A186850(A001844(n))`
-/

namespace A186841.P18003574930583372744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236460 (n + 1) + A186850 (A001844 n).toNat

end

end A186841.P18003574930583372744

/-!
# A186842: Number of (n+1) X 2 binary arrays with no 2 X 2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A186842, the canonical program `A186842.P7742548448018422640` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186842 has offset 1).

The definition of A186842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186842.P7742548448018422640

`a(n-1)+3*a(n-2)+10*a(n-3)+8*a(n-4)` with `a(0)=16, a(1)=50, a(2)=162, a(3)=512`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A186842

/-- `a(n-1)+3*a(n-2)+10*a(n-3)+8*a(n-4)` -/
def P7742548448018422640.Spec : Prop :=
  ∀ n, (P7742548448018422640.a n : ℤ) = A186842 (n + 1)

theorem P7742548448018422640.correct : P7742548448018422640.Spec := by
  intro n
  simp only [A186842, Nat.add_sub_cancel]

end A186842

/-! ## A186842.P2010371710519909637

`A186850(∑[n]+1)`
-/

namespace A186842.P2010371710519909637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186842.P2010371710519909637

namespace A186842

/-- `A186850(∑[n]+1)` -/
def P2010371710519909637.Spec : Prop :=
  ∀ n, P2010371710519909637.a n = A186842 (n + 1)

end A186842

/-! ## A186842.P13117674247680403806

`lcm(2, A186850(A000124(n)))`
-/

namespace A186842.P13117674247680403806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186850 (A000124 n).toNat)

end

end A186842.P13117674247680403806

namespace A186842

/-- `lcm(2, A186850(A000124(n)))` -/
def P13117674247680403806.Spec : Prop :=
  ∀ n, (P13117674247680403806.a n : ℤ) = A186842 (n + 1)

end A186842

/-! ## A186842.P18260244989330665513

`record[A010054(n)*A186850(n+1)]`
-/

namespace A186842.P18260244989330665513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186842.P18260244989330665513

namespace A186842

/-- `record[A010054(n)*A186850(n+1)]` -/
def P18260244989330665513.Spec : Prop :=
  ∀ n, P18260244989330665513.a n = A186842 (n + 1)

end A186842

/-! ## A186842.P9686756739558555377

`record[A186850(n+1)/A168517(n)]`
-/

namespace A186842.P9686756739558555377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186850 (n + 1) : ℚ) / (A168517 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186842.P9686756739558555377

namespace A186842

/-- `record[A186850(n+1)/A168517(n)]` -/
def P9686756739558555377.Spec : Prop :=
  ∀ n, P9686756739558555377.a n = (A186842 (n + 1) : ℚ)

end A186842

/-!
# A186843: Number of (n+1) X 3 binary arrays with no 2 X 2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A186843, there is no canonical definition to state claims against.
-/

/-! ## A186843.P471953258740585369

`A186850(∑[n+1]+2)`
-/

namespace A186843.P471953258740585369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186843.P471953258740585369

/-! ## A186843.P8069600966163487285

`record[A010054(n)*A186850(n+2)]`
-/

namespace A186843.P8069600966163487285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186850 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186843.P8069600966163487285

/-! ## A186843.P11189873195309912197

`record[A186850(gcd(n+2, A141169(n)))]`
-/

namespace A186843.P11189873195309912197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (Int.gcd (n + 2 : ℤ) (A141169 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186843.P11189873195309912197

/-! ## A186843.P13396097548521902999

`record[gcd(A186850(n+2), A279432(n+1))]`
-/

namespace A186843.P13396097548521902999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186850 (n + 2)) (A279432 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186843.P13396097548521902999

/-! ## A186843.P14852513602233582214

`record[A186850(A133263(A057979(n)))]`
-/

namespace A186843.P14852513602233582214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A133263 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186843.P14852513602233582214

/-!
# A186844: Number of (n+1)X4 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186844, there is no canonical definition to state claims against.
-/

/-! ## A186844.P7652285513381772589

`A186850(∑[n+2]+4)`
-/

namespace A186844.P7652285513381772589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186844.P7652285513381772589

/-! ## A186844.P18059949919970903217

`lcm(2, A186850(A167614(n+1)))`
-/

namespace A186844.P18059949919970903217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186850 (A167614 (n + 1)).toNat)

end

end A186844.P18059949919970903217

/-! ## A186844.P14234340144358021555

`or(A000038(n), A186850(A167614(n+1)))`
-/

namespace A186844.P14234340144358021555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A186850 (A167614 (n + 1)).toNat)

end

end A186844.P14234340144358021555

/-! ## A186844.P76160272946810316

`A186850(A167614(n+1))+A034520(n+1)`
-/

namespace A186844.P76160272946810316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A167614 (n + 1)).toNat + A034520 (n + 1)

end

end A186844.P76160272946810316

/-! ## A186844.P15809105448439327181

`A186850(A167614(n+1))%A253031(n+1)`
-/

namespace A186844.P15809105448439327181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186850 (A167614 (n + 1)).toNat) (A253031 (n + 1))

end

end A186844.P15809105448439327181

/-!
# A186845: Number of (n+1)X5 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186845, there is no canonical definition to state claims against.
-/

/-! ## A186845.P8640088643898922133

`A186850(A374004(n+1))`
-/

namespace A186845.P8640088643898922133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374004 (n + 1)).toNat

end

end A186845.P8640088643898922133

/-! ## A186845.P14265142977388121080

`A186850(A141214(n)+7)`
-/

namespace A186845.P14265142977388121080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A141214 n + 7).toNat

end

end A186845.P14265142977388121080

/-! ## A186845.P10036786931893014630

`A186850(A052905(n)+9)`
-/

namespace A186845.P10036786931893014630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A052905 n + 9).toNat

end

end A186845.P10036786931893014630

/-! ## A186845.P15636937240405573211

`A186850(A055999(n)+10)`
-/

namespace A186845.P15636937240405573211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A055999 n + 10).toNat

end

end A186845.P15636937240405573211

/-! ## A186845.P13536990995797752700

`A186850(A167614(n+2)+1)`
-/

namespace A186845.P13536990995797752700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A167614 (n + 2) + 1).toNat

end

end A186845.P13536990995797752700

/-!
# A186846: Number of (n+1)X6 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186846, there is no canonical definition to state claims against.
-/

/-! ## A186846.P7153157992373701669

`A186850(A374005(n+1))`
-/

namespace A186846.P7153157992373701669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374005 (n + 1)).toNat

end

end A186846.P7153157992373701669

/-! ## A186846.P7666382753284865579

`A186850(A167499(n+3))`
-/

namespace A186846.P7666382753284865579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A167499 (n + 3)).toNat

end

end A186846.P7666382753284865579

/-! ## A186846.P9835700339721904916

`A186850(A056000(n)+15)`
-/

namespace A186846.P9835700339721904916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A056000 n + 15).toNat

end

end A186846.P9835700339721904916

/-! ## A186846.P13995841483486650726

`A186850(A046691(n+3))`
-/

namespace A186846.P13995841483486650726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A046691 (n + 3)).toNat

end

end A186846.P13995841483486650726

/-! ## A186846.P6826147607183805143

`A186850(eq[4, A193592(n)])`
-/

namespace A186846.P6826147607183805143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186846.P6826147607183805143

/-!
# A186847: Number of (n+1)X7 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186847, there is no canonical definition to state claims against.
-/

/-! ## A186847.P12439799155421970882

`A186850(A374007(n+1))`
-/

namespace A186847.P12439799155421970882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374007 (n + 1)).toNat

end

end A186847.P12439799155421970882

/-! ## A186847.P12041812659289941169

`A186850(eq[7, A131818(n+1)])`
-/

namespace A186847.P12041812659289941169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186847.P12041812659289941169

/-! ## A186847.P2070235642636758802

`A186850(A052905(n+3))`
-/

namespace A186847.P2070235642636758802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A052905 (n + 3)).toNat

end

end A186847.P2070235642636758802

/-! ## A186847.P15921637437778122081

`A186850(eq[3, A219347(n)])`
-/

namespace A186847.P15921637437778122081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186847.P15921637437778122081

/-! ## A186847.P3240562931517104544

`A186850(eq[5, A193592(n)])`
-/

namespace A186847.P3240562931517104544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186847.P3240562931517104544

/-!
# A186848: Number of (n+1)X8 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186848, there is no canonical definition to state claims against.
-/

/-! ## A186848.P103356978457493209

`A186850(A374008(n+1))`
-/

namespace A186848.P103356978457493209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374008 (n + 1)).toNat

end

end A186848.P103356978457493209

/-! ## A186848.P15446933163858969428

`A186850(eq[8, A131818(n+1)])`
-/

namespace A186848.P15446933163858969428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186848.P15446933163858969428

/-! ## A186848.P6576828788552806421

`A186850(eq[4, A219347(n)])`
-/

namespace A186848.P6576828788552806421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186848.P6576828788552806421

/-! ## A186848.P5037951590135784201

`A186850(eq[6, A193592(n)])`
-/

namespace A186848.P5037951590135784201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186848.P5037951590135784201

/-! ## A186848.P12732187070277140977

`A186850(eq[7, A200370(n+1)])`
-/

namespace A186848.P12732187070277140977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186848.P12732187070277140977

/-!
# A186849: Number of (n+1) X 9 binary arrays with no 2 X 2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A186849, there is no canonical definition to state claims against.
-/

/-! ## A186849.P3626192723701914259

`A186850(A374009(n+1))`
-/

namespace A186849.P3626192723701914259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374009 (n + 1)).toNat

end

end A186849.P3626192723701914259

/-! ## A186849.P9321279016345224382

`A186850(eq[9, A131818(n+1)])`
-/

namespace A186849.P9321279016345224382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186849.P9321279016345224382

/-! ## A186849.P17102069252343582771

`A186850(eq[5, A219347(n)])`
-/

namespace A186849.P17102069252343582771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186849.P17102069252343582771

/-! ## A186849.P10110639779720791555

`A186850(eq[7, A193592(n)])`
-/

namespace A186849.P10110639779720791555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186849.P10110639779720791555

/-! ## A186849.P18093494536348153686

`A186850(A046691(n+6)-3)`
-/

namespace A186849.P18093494536348153686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A046691 (n + 6) - 3).toNat

end

end A186849.P18093494536348153686

/-!
# A186852: Number of 3-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186852, the canonical program `A186852.P18054438384369363332` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186852 has offset 1).

The definition of A186852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186852.P18054438384369363332

`A022144(4*n+2)²%A054275(4*n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A186852

/-- `A022144(4*n+2)²%A054275(4*n+2)` -/
def P18054438384369363332.Spec : Prop :=
  ∀ n, P18054438384369363332.a n = A186852 (n + 1)

theorem P18054438384369363332.correct : P18054438384369363332.Spec := by
  intro n
  simp only [A186852, Nat.add_sub_cancel]

end A186852

/-! ## A186852.P11110591535723901135

`8*A047276(A008574(∑[n]))`
-/

namespace A186852.P11110591535723901135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A047276 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A186852.P11110591535723901135

namespace A186852

/-- `8*A047276(A008574(∑[n]))` -/
def P11110591535723901135.Spec : Prop :=
  ∀ n, P11110591535723901135.a n = A186852 (n + 1)

end A186852

/-! ## A186852.P13818012250039307198

`8*A004281(A069099(n+1))`
-/

namespace A186852.P13818012250039307198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A004281 (A069099 (n + 1)).toNat

end

end A186852.P13818012250039307198

namespace A186852

/-- `8*A004281(A069099(n+1))` -/
def P13818012250039307198.Spec : Prop :=
  ∀ n, P13818012250039307198.a n = A186852 (n + 1)

end A186852

/-! ## A186852.P1171208041736573308

`4*A047374(A333714(n+1))`
-/

namespace A186852.P1171208041736573308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047374 (A333714 (n + 1)).toNat

end

end A186852.P1171208041736573308

namespace A186852

/-- `4*A047374(A333714(n+1))` -/
def P1171208041736573308.Spec : Prop :=
  ∀ n, P1171208041736573308.a n = A186852 (n + 1)

end A186852

/-! ## A186852.P1363983753704632917

`A022144(A004281(∑[7*n]+1))`
-/

namespace A186852.P1363983753704632917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A004281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A186852.P1363983753704632917

namespace A186852

/-- `A022144(A004281(∑[7*n]+1))` -/
def P1363983753704632917.Spec : Prop :=
  ∀ n, P1363983753704632917.a n = A186852 (n + 1)

end A186852

/-!
# A186853: Number of 4-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186853, there is no canonical definition to state claims against.
-/

/-! ## A186853.P15822348918599244581

`A186851(∑[n+3]+7)`
-/

namespace A186853.P15822348918599244581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186853.P15822348918599244581

/-!
# A186854: Number of 5-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186854, there is no canonical definition to state claims against.
-/

/-! ## A186854.P5888436286776912529

`A186851(A167499(n+3))`
-/

namespace A186854.P5888436286776912529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167499 (n + 3)).toNat

end

end A186854.P5888436286776912529

/-! ## A186854.P5457726877376914291

`A186851(A155212(n)+13)`
-/

namespace A186854.P5457726877376914291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A155212 n + 13).toNat

end

end A186854.P5457726877376914291

/-! ## A186854.P11501661123692831615

`A186851(A056000(n)+15)`
-/

namespace A186854.P11501661123692831615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A056000 n + 15).toNat

end

end A186854.P11501661123692831615

/-! ## A186854.P5206956504469890458

`A186851(eq[7, A066657(n)])`
-/

namespace A186854.P5206956504469890458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186854.P5206956504469890458

/-! ## A186854.P827084082964430708

`A186851(A167614(n+3)+2)`
-/

namespace A186854.P827084082964430708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167614 (n + 3) + 2).toNat

end

end A186854.P827084082964430708

/-!
# A186855: Number of 6-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186855, there is no canonical definition to state claims against.
-/

/-! ## A186855.P11962913253414677115

`A186851(A166136(n+4))`
-/

namespace A186855.P11962913253414677115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A166136 (n + 4)).toNat

end

end A186855.P11962913253414677115

/-! ## A186855.P14665628618603241970

`A186851(A056115(n)+21)`
-/

namespace A186855.P14665628618603241970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A056115 n + 21).toNat

end

end A186855.P14665628618603241970

/-! ## A186855.P16935278246192866641

`A186851(A167614(n+4)+3)`
-/

namespace A186855.P16935278246192866641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167614 (n + 4) + 3).toNat

end

end A186855.P16935278246192866641

/-! ## A186855.P3723181086527471492

`A186851(eq[7, A131818(n+1)])`
-/

namespace A186855.P3723181086527471492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186855.P3723181086527471492

/-! ## A186855.P16178369506996948435

`A186851(Δ[A023545(n+1)]+10)`
-/

namespace A186855.P16178369506996948435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (f1 (n + 1) - f1 n + 10).toNat

end

end A186855.P16178369506996948435

/-!
# A186856: Number of 7-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186856, there is no canonical definition to state claims against.
-/

/-! ## A186856.P12927375509519883610

`A186851(A167487(n+5))`
-/

namespace A186856.P12927375509519883610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167487 (n + 5)).toNat

end

end A186856.P12927375509519883610

/-! ## A186856.P5235057950487046536

`A186851(eq[11, A066657(n)])`
-/

namespace A186856.P5235057950487046536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186856.P5235057950487046536

/-! ## A186856.P12371161857742707068

`A186851(A167499(n+5)+2)`
-/

namespace A186856.P12371161857742707068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167499 (n + 5) + 2).toNat

end

end A186856.P12371161857742707068

/-! ## A186856.P5015995166139596494

`A186851(A167614(n+5)+4)`
-/

namespace A186856.P5015995166139596494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167614 (n + 5) + 4).toNat

end

end A186856.P5015995166139596494

/-!
# A186857: Number of 8-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186857, there is no canonical definition to state claims against.
-/

/-! ## A186857.P14218279032212877344

`A186851(eq[13, A066657(n)])`
-/

namespace A186857.P14218279032212877344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186857.P14218279032212877344

/-! ## A186857.P15365893722077900632

`A186851(A167614(n+6)+5)`
-/

namespace A186857.P15365893722077900632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167614 (n + 6) + 5).toNat

end

end A186857.P15365893722077900632

/-! ## A186857.P6771159291938805105

`A186851(eq[9, A131818(n+1)])`
-/

namespace A186857.P6771159291938805105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186857.P6771159291938805105

/-!
# A186858: G.f. A(x) satisfies A(x) = x*(A(x)^5 + 3*A(x)^4 + 4*A(x)^3 + 3*A(x)^2 + 2*A(x) + 1).

The programs for A186858, there is no canonical definition to state claims against.
-/

/-! ## A186858.P16786785631857814644

`or(n, A218654(A064306(n)))`
-/

namespace A186858.P16786785631857814644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A218654 (A064306 n).toNat)

end

end A186858.P16786785631857814644

/-! ## A186858.P3551198616788503961

`A002264(A014330(n)+char[∑[n]])`
-/

namespace A186858.P3551198616788503961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A014330 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A186858.P3551198616788503961

/-! ## A186858.P4471962051142067638

`A360102(n)+A001489(A360100(n))`
-/

namespace A186858.P4471962051142067638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360102 n + A001489 (A360100 n).toNat

end

end A186858.P4471962051142067638

/-!
# A186859: E.g.f. A(x)=exp(x^6+3*x^5+4*x^4+3*x^3+2*x^2+x).

The programs for A186859, there is no canonical definition to state claims against.
-/

/-! ## A186859.P8152757348094343553

`A014681(A293527(n)+A129375(n))`
-/

namespace A186859.P8152757348094343553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A293527 n + A129375 n).toNat

end

end A186859.P8152757348094343553

/-! ## A186859.P3550378234413171467

`A007494(A294363(n))-A118393(n)`
-/

namespace A186859.P3550378234413171467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A294363 n).toNat - A118393 n

end

end A186859.P3550378234413171467

/-!
# A186860: Largest coefficient of (1)(1+2x)(1+2x+3x^2)*...*(1+2x+3x^2+...+(n+1)*x^n).

The programs for A186860, there is no canonical definition to state claims against.
-/

/-! ## A186860.P7873565909895473304

`∑[A270059(n^(n+1))]`
-/

namespace A186860.P7873565909895473304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (n ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186860.P7873565909895473304

/-!
# A186862: Number of 3-step king's tours on an n X n board summed over all starting positions.

The programs for A186862, the canonical program `A186862.P9821259083126496593` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186862 has offset 1).

The definition of A186862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186862.P9821259083126496593

`8*n*(7*(n+1)-11)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A186862

/-- `8*n*(7*(n+1)-11)` -/
def P9821259083126496593.Spec : Prop :=
  ∀ n, P9821259083126496593.a n = A186862 (n + 1)

theorem P9821259083126496593.correct : P9821259083126496593.Spec := by
  intro n
  simp only [A186862, Nat.add_sub_cancel]

end A186862

/-! ## A186862.P16871479251241747269

`8*n+16*(7*C(n, 2)+n)`
-/

namespace A186862.P16871479251241747269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 16 * (7 * Nat.choose n 2 + n)

end

end A186862.P16871479251241747269

namespace A186862

/-- `8*n+16*(7*C(n, 2)+n)` -/
def P16871479251241747269.Spec : Prop :=
  ∀ n, (P16871479251241747269.a n : ℤ) = A186862 (n + 1)

end A186862

/-! ## A186862.P1068433258047475696

`7*A051870(n)+17*n`
-/

namespace A186862.P1068433258047475696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A051870 n + (17 * n : ℤ)

end

end A186862.P1068433258047475696

namespace A186862

/-- `7*A051870(n)+17*n` -/
def P1068433258047475696.Spec : Prop :=
  ∀ n, P1068433258047475696.a n = A186862 (n + 1)

end A186862

/-! ## A186862.P2930172110985705407

`2*A153808(n)+8*n²`
-/

namespace A186862.P2930172110985705407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153808 n + (8 * n ^ 2 : ℤ)

end

end A186862.P2930172110985705407

namespace A186862

/-- `2*A153808(n)+8*n²` -/
def P2930172110985705407.Spec : Prop :=
  ∀ n, P2930172110985705407.a n = A186862 (n + 1)

end A186862

/-! ## A186862.P16674201339912409254

`A277990(n)-A182428(n)`
-/

namespace A186862.P16674201339912409254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277990 n - A182428 n

end

end A186862.P16674201339912409254

namespace A186862

/-- `A277990(n)-A182428(n)` -/
def P16674201339912409254.Spec : Prop :=
  ∀ n, P16674201339912409254.a n = A186862 (n + 1)

end A186862

/-! ## A186862.P10189062480249194337

`A304378(n+1)-A033586(n)`
-/

namespace A186862.P10189062480249194337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304378 (n + 1) - A033586 n

end

end A186862.P10189062480249194337

namespace A186862

/-- `A304378(n+1)-A033586(n)` -/
def P10189062480249194337.Spec : Prop :=
  ∀ n, P10189062480249194337.a n = A186862 (n + 1)

end A186862

/-! ## A186862.P372290897334034385

`A135628(A001105(n))-A174312(n)`
-/

namespace A186862.P372290897334034385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (A001105 n).toNat - A174312 n

end

end A186862.P372290897334034385

namespace A186862

/-- `A135628(A001105(n))-A174312(n)` -/
def P372290897334034385.Spec : Prop :=
  ∀ n, P372290897334034385.a n = A186862 (n + 1)

end A186862

/-!
# A186863: Number of 4-step king's tours on an n X n board summed over all starting positions.

The programs for A186863, there is no canonical definition to state claims against.
-/

/-! ## A186863.P356177319048042001

`A186861(∑[n+3]+7)`
-/

namespace A186863.P356177319048042001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186863.P356177319048042001

/-!
# A186864: Number of 5-step king's tours on an n X n board summed over all starting positions.

The programs for A186864, there is no canonical definition to state claims against.
-/

/-! ## A186864.P8408469419162714822

`A186861(A167499(n+3))`
-/

namespace A186864.P8408469419162714822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A167499 (n + 3)).toNat

end

end A186864.P8408469419162714822

/-! ## A186864.P12986008333344402938

`A186861(A155212(n)+13)`
-/

namespace A186864.P12986008333344402938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A155212 n + 13).toNat

end

end A186864.P12986008333344402938

/-! ## A186864.P11296670811469543938

`A186861(A056000(n)+15)`
-/

namespace A186864.P11296670811469543938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A056000 n + 15).toNat

end

end A186864.P11296670811469543938

/-! ## A186864.P417696542191323500

`A186861(eq[7, A066657(n)])`
-/

namespace A186864.P417696542191323500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186864.P417696542191323500

/-! ## A186864.P10235259073235780393

`A186861(∑[A020705(n)]+11)`
-/

namespace A186864.P10235259073235780393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A186864.P10235259073235780393

/-!
# A186865: Number of 6-step king's tours on an n X n board summed over all starting positions.

The programs for A186865, there is no canonical definition to state claims against.
-/

/-! ## A186865.P371541761846866248

`A186861(A056115(n)+21)`
-/

namespace A186865.P371541761846866248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A056115 n + 21).toNat

end

end A186865.P371541761846866248

/-! ## A186865.P16941136918741871544

`A186861(A253145(n+4)+6)`
-/

namespace A186865.P16941136918741871544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A253145 (n + 4) + 6).toNat

end

end A186865.P16941136918741871544

/-! ## A186865.P2558290043054741231

`A186861(eq[6, A130270(n+1)])`
-/

namespace A186865.P2558290043054741231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186865.P2558290043054741231

/-! ## A186865.P16595996306504702829

`A186861(eq[7, A131818(n+1)])`
-/

namespace A186865.P16595996306504702829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186865.P16595996306504702829

/-!
# A186866: Number of 7-step king's tours on an n X n board summed over all starting positions.

The programs for A186866, there is no canonical definition to state claims against.
-/

/-! ## A186866.P9304974535890471044

`A186861(eq[11, A066657(n)])`
-/

namespace A186866.P9304974535890471044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186866.P9304974535890471044

/-! ## A186866.P6724457236057935958

`A186861(A166136(n+5)+1)`
-/

namespace A186866.P6724457236057935958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A166136 (n + 5) + 1).toNat

end

end A186866.P6724457236057935958

/-! ## A186866.P7821546442164717466

`A186861(A000217(n+6)+7)`
-/

namespace A186866.P7821546442164717466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A000217 (n + 6) + 7).toNat

end

end A186866.P7821546442164717466

/-! ## A186866.P6582439826728794987

`A186861(A155212(n+2)+15)`
-/

namespace A186866.P6582439826728794987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A155212 (n + 2) + 15).toNat

end

end A186866.P6582439826728794987

/-! ## A186866.P10378000647709573747

`A186861(A056000(n+2)+17)`
-/

namespace A186866.P10378000647709573747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A056000 (n + 2) + 17).toNat

end

end A186866.P10378000647709573747

/-!
# A186867: Number of 8-step king's tours on an n X n board summed over all starting positions.

The programs for A186867, there is no canonical definition to state claims against.
-/

/-! ## A186867.P6707241054431444060

`A186861(eq[13, A066657(n)])`
-/

namespace A186867.P6707241054431444060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186867.P6707241054431444060

/-! ## A186867.P8177454656650960100

`A186861(eq[9, A131818(n+1)])`
-/

namespace A186867.P8177454656650960100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186867.P8177454656650960100

/-!
# A186868: Number of (n+1)X3 0..2 arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A186868, there is no canonical definition to state claims against.
-/

/-! ## A186868.P7344646200216080728

`A186871(∑[n+1]+2)`
-/

namespace A186868.P7344646200216080728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186868.P7344646200216080728

/-! ## A186868.P1164389223038916114

`record[A023531(n)*A186871(n+3)]`
-/

namespace A186868.P1164389223038916114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A186871 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186868.P1164389223038916114

/-! ## A186868.P16330912159520658113

`record[A186871(n+3)/A289141(n)]`
-/

namespace A186868.P16330912159520658113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186871 (n + 3) : ℚ) / (A289141 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186868.P16330912159520658113

/-! ## A186868.P2801818166663736611

`record[gcd(A173787(n), A186871(n+3))]`
-/

namespace A186868.P2801818166663736611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173787 n) (A186871 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186868.P2801818166663736611

/-!
# A186869: Number of (n+1)X4 0..2 arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A186869, there is no canonical definition to state claims against.
-/

/-! ## A186869.P5116669227153252292

`A186871(∑[n+2]+4)`
-/

namespace A186869.P5116669227153252292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186869.P5116669227153252292

/-! ## A186869.P815314301449676940

`A186871(A167614(n+1))+A025442(n)`
-/

namespace A186869.P815314301449676940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (A167614 (n + 1)).toNat + A025442 n

end

end A186869.P815314301449676940

/-! ## A186869.P3796988397603068087

`A186871(A167614(n+1))+A053392(n)`
-/

namespace A186869.P3796988397603068087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (A167614 (n + 1)).toNat + A053392 n

end

end A186869.P3796988397603068087

/-!
# A186870: Number of (n+1)X5 0..2 arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A186870, there is no canonical definition to state claims against.
-/

/-! ## A186870.P7435111555162926771

`A186871(A020752(n+1))`
-/

namespace A186870.P7435111555162926771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (A020752 (n + 1)).toNat

end

end A186870.P7435111555162926771

/-!
# A186872: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186872, there is no canonical definition to state claims against.
-/

/-! ## A186872.P11687272548593313599

`A186881(∑[4*n]+1)`
-/

namespace A186872.P11687272548593313599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186872.P11687272548593313599

/-! ## A186872.P14967753624472970318

`or(char[1], A186881(A001844(n)))`
-/

namespace A186872.P14967753624472970318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186881 (A001844 n).toNat)

end

end A186872.P14967753624472970318

/-! ## A186872.P11243219179698512910

`A186881(A001844(n))+A025469(n)`
-/

namespace A186872.P11243219179698512910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A001844 n).toNat + A025469 n

end

end A186872.P11243219179698512910

/-! ## A186872.P5729887879593737221

`lcm(A020985(n), A186881(A001844(n)))`
-/

namespace A186872.P5729887879593737221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A186881 (A001844 n).toNat)

end

end A186872.P5729887879593737221

/-! ## A186872.P8177464969966635573

`A007318(C(3, n))*A186881(A001844(n))`
-/

namespace A186872.P8177464969966635573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A186881 (A001844 n).toNat

end

end A186872.P8177464969966635573

/-!
# A186873: Number of (n+2)X3 0..3 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186873, there is no canonical definition to state claims against.
-/

/-! ## A186873.P8611865860821397255

`A186881(∑[n]+1)`
-/

namespace A186873.P8611865860821397255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186873.P8611865860821397255

/-! ## A186873.P8427164532225429582

`and(-1, A186881(A000124(n)))`
-/

namespace A186873.P8427164532225429582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A186881 (A000124 n).toNat)

end

end A186873.P8427164532225429582

/-! ## A186873.P2740336589646626421

`lcm(A020985(n), A186881(A000124(n)))`
-/

namespace A186873.P2740336589646626421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A186881 (A000124 n).toNat)

end

end A186873.P2740336589646626421

/-! ## A186873.P15586941291894977812

`A007318(∑[n])*A186881(A000124(n))`
-/

namespace A186873.P15586941291894977812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186881 (A000124 n).toNat

end

end A186873.P15586941291894977812

/-! ## A186873.P9775720773723822159

`A186881(A000124(n))+A000007(n+1)`
-/

namespace A186873.P9775720773723822159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A000124 n).toNat + A000007 (n + 1)

end

end A186873.P9775720773723822159

/-! ## A186873.P9574589143739489687

`A186881(A000124(n))/A261143(n+4)`
-/

namespace A186873.P9574589143739489687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186881 (A000124 n).toNat : ℚ) / (A261143 (n + 4) : ℚ)

end

end A186873.P9574589143739489687

/-! ## A186873.P1980018092140283829

`A186881(A000124(n))%A186879(n+1)`
-/

namespace A186873.P1980018092140283829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186881 (A000124 n).toNat) (A186879 (n + 1))

end

end A186873.P1980018092140283829

/-! ## A186873.P9921888983013886768

`A186881(A000124(n))/A007318(C(2, n))`
-/

namespace A186873.P9921888983013886768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186881 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A186873.P9921888983013886768

/-! ## A186873.P6373650734126008520

`A186881(A000124(n))^A007318(C(10, n))`
-/

namespace A186873.P6373650734126008520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186881 (A000124 n).toNat : ℚ) ^ (A007318 (Nat.choose 10 n) : ℤ)

end

end A186873.P6373650734126008520

/-!
# A186874: Number of (n+2) X 4 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186874, there is no canonical definition to state claims against.
-/

/-! ## A186874.P719465276200575988

`A186881(∑[n+1]+2)`
-/

namespace A186874.P719465276200575988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186874.P719465276200575988

/-! ## A186874.P6750940574074553485

`or(char[1], A186881(A133263(n+1)))`
-/

namespace A186874.P6750940574074553485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186881 (A133263 (n + 1)).toNat)

end

end A186874.P6750940574074553485

/-! ## A186874.P9017111182053059056

`char[A057979(n)]*A186881(A133263(n+1))`
-/

namespace A186874.P9017111182053059056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186881 (A133263 (n + 1)).toNat

end

end A186874.P9017111182053059056

/-! ## A186874.P16655410742804160147

`char[A073286(n)]*A186881(A133263(n+1))`
-/

namespace A186874.P16655410742804160147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186881 (A133263 (n + 1)).toNat

end

end A186874.P16655410742804160147

/-! ## A186874.P16525056655692311036

`char[A275841(n)]*A186881(A133263(n+1))`
-/

namespace A186874.P16525056655692311036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275841 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186881 (A133263 (n + 1)).toNat

end

end A186874.P16525056655692311036

/-! ## A186874.P12408322075262306131

`char[A275845(n)]*A186881(A133263(n+1))`
-/

namespace A186874.P12408322075262306131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275845 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186881 (A133263 (n + 1)).toNat

end

end A186874.P12408322075262306131

/-! ## A186874.P3758854743376464770

`A186881(A133263(n+1))+A000007(n+1)`
-/

namespace A186874.P3758854743376464770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A186874.P3758854743376464770

/-! ## A186874.P14621503229077073422

`A186881(A133263(n+1))+A008683(4*(n+2))`
-/

namespace A186874.P14621503229077073422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A133263 (n + 1)).toNat + A008683 (4 * (n + 2))

end

end A186874.P14621503229077073422

/-! ## A186874.P2353556288436639183

`A000040(n+2)%2*A186881(A133263(n+1))`
-/

namespace A186874.P2353556288436639183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A186881 (A133263 (n + 1)).toNat

end

end A186874.P2353556288436639183

/-! ## A186874.P8893151164260920252

`A000045(gcd(n, n+1))*A186881(A133263(n+1))`
-/

namespace A186874.P8893151164260920252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A186881 (A133263 (n + 1)).toNat

end

end A186874.P8893151164260920252

/-!
# A186875: Number of (n+2) X 5 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186875, there is no canonical definition to state claims against.
-/

/-! ## A186875.P11619612401237991293

`A186881(∑[n+2]+4)`
-/

namespace A186875.P11619612401237991293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186875.P11619612401237991293

/-! ## A186875.P12026897154515755597

`or(char[1], A186881(A167614(n+1)))`
-/

namespace A186875.P12026897154515755597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186881 (A167614 (n + 1)).toNat)

end

end A186875.P12026897154515755597

/-! ## A186875.P15603320214725819437

`and(-1, A186881(A000096(n+1)+4))`
-/

namespace A186875.P15603320214725819437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A186881 (A000096 (n + 1) + 4).toNat)

end

end A186875.P15603320214725819437

/-! ## A186875.P14382423510762188854

`char[A060126(n)]*A186881(A167614(n+1))`
-/

namespace A186875.P14382423510762188854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186881 (A167614 (n + 1)).toNat

end

end A186875.P14382423510762188854

/-! ## A186875.P16720081498235362627

`char[A131141(n)]*A186881(A167614(n+1))`
-/

namespace A186875.P16720081498235362627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186881 (A167614 (n + 1)).toNat

end

end A186875.P16720081498235362627

/-! ## A186875.P5386230542851149997

`A007318(C(2, n))*A186881(A167614(n+1))`
-/

namespace A186875.P5386230542851149997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186881 (A167614 (n + 1)).toNat

end

end A186875.P5386230542851149997

/-! ## A186875.P99983915310059845

`A007318(and(1, -n))*A186881(A167614(n+1))`
-/

namespace A186875.P99983915310059845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A186881 (A167614 (n + 1)).toNat

end

end A186875.P99983915310059845

/-! ## A186875.P1700806338530460790

`A186881(A167614(n+1))+A000045(C(n, 64)²)`
-/

namespace A186875.P1700806338530460790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A167614 (n + 1)).toNat + A000045 (Nat.choose n 64 ^ 2)

end

end A186875.P1700806338530460790

/-! ## A186875.P5855171002556005552

`A000041(C(2, n+2))*A186881(A167614(n+1))`
-/

namespace A186875.P5855171002556005552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A186881 (A167614 (n + 1)).toNat

end

end A186875.P5855171002556005552

/-! ## A186875.P4238983651981283120

`A186881(A167614(n+1))+val(A000005(n+1), 30)`
-/

namespace A186875.P4238983651981283120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A167614 (n + 1)).toNat + (SequenceMachineLib.valuation (A000005 (n + 1)).toNat 30 : ℤ)

end

end A186875.P4238983651981283120

/-!
# A186876: Number of (n+2) X 6 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186876, there is no canonical definition to state claims against.
-/

/-! ## A186876.P16338644533020280976

`A186881(∑[n+3]+7)`
-/

namespace A186876.P16338644533020280976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186876.P16338644533020280976

/-! ## A186876.P647718143399824614

`or(char[1], A186881(A055999(n)+10))`
-/

namespace A186876.P647718143399824614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186881 (A055999 n + 10).toNat)

end

end A186876.P647718143399824614

/-! ## A186876.P1547303873347276150

`char[A333659(n)]*A186881(A055999(n)+10)`
-/

namespace A186876.P1547303873347276150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186881 (A055999 n + 10).toNat

end

end A186876.P1547303873347276150

/-! ## A186876.P16405091097765355674

`A007318(C(2, n))*A186881(A055999(n)+10)`
-/

namespace A186876.P16405091097765355674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186881 (A055999 n + 10).toNat

end

end A186876.P16405091097765355674

/-! ## A186876.P7848229930665591034

`A186881(A055999(n)+10)/A007318(C(n, 2))`
-/

namespace A186876.P7848229930665591034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186881 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A186876.P7848229930665591034

/-! ## A186876.P2987829230303722251

`A007318(and(3, -n))*A186881(A055999(n)+10)`
-/

namespace A186876.P2987829230303722251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A186881 (A055999 n + 10).toNat

end

end A186876.P2987829230303722251

/-! ## A186876.P18318003163254598007

`A000041(C(n, n²))*A186881(A055999(n)+10)`
-/

namespace A186876.P18318003163254598007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A186881 (A055999 n + 10).toNat

end

end A186876.P18318003163254598007

/-! ## A186876.P11450461032502225298

`A014963(10*(n+1))*A186881(A055999(n)+10)`
-/

namespace A186876.P11450461032502225298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A186881 (A055999 n + 10).toNat

end

end A186876.P11450461032502225298

/-! ## A186876.P966493352485313426

`A000040(n+2)%2*A186881(A055999(n)+10)`
-/

namespace A186876.P966493352485313426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A186881 (A055999 n + 10).toNat

end

end A186876.P966493352485313426

/-! ## A186876.P8801304072633688928

`A186881(A055999(n)+10)+C(2, A000203(n+2))`
-/

namespace A186876.P8801304072633688928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A055999 n + 10).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A186876.P8801304072633688928

/-!
# A186877: Number of (n+2) X 7 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186877, there is no canonical definition to state claims against.
-/

/-! ## A186877.P2594815724963504409

`A186881(∑[n+5]-n+10)`
-/

namespace A186877.P2594815724963504409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) + 10).toNat

end

end A186877.P2594815724963504409

/-! ## A186877.P13950436640891337012

`A186881(A167499(n+3))^A130296(3*(n+1))`
-/

namespace A186877.P13950436640891337012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186881 (A167499 (n + 3)).toNat : ℚ) ^ (A130296 (3 * (n + 1)) : ℤ)

end

end A186877.P13950436640891337012

/-! ## A186877.P4142074432249693435

`A186881(A167499(n+3))%A171399(n+5)`
-/

namespace A186877.P4142074432249693435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186881 (A167499 (n + 3)).toNat) (A171399 (n + 5))

end

end A186877.P4142074432249693435

/-!
# A186878: Number of (n+2)X8 0..3 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186878, there is no canonical definition to state claims against.
-/

/-! ## A186878.P9320351740494477697

`A186881(∑[n+5]+16)`
-/

namespace A186878.P9320351740494477697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A186878.P9320351740494477697

/-! ## A186878.P5167475344084226463

`or(char[1], A186881(A052905(n+2)+11))`
-/

namespace A186878.P5167475344084226463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186881 (A052905 (n + 2) + 11).toNat)

end

end A186878.P5167475344084226463

/-! ## A186878.P3465591904865158730

`(A186881(A000096(n+4)+7)^(1/2))²`
-/

namespace A186878.P3465591904865158730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A186881 (A000096 (n + 4) + 7).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A186878.P3465591904865158730

/-! ## A186878.P5764109018248907793

`A007318(C(2, n))*A186881(A000096(n+4)+7)`
-/

namespace A186878.P5764109018248907793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186881 (A000096 (n + 4) + 7).toNat

end

end A186878.P5764109018248907793

/-! ## A186878.P7559282794791003112

`A007318(C(2, n))*A186881(A052905(n+2)+11)`
-/

namespace A186878.P7559282794791003112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186881 (A052905 (n + 2) + 11).toNat

end

end A186878.P7559282794791003112

/-!
# A186879: Number of (n+2)X9 0..3 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186879, there is no canonical definition to state claims against.
-/

/-! ## A186879.P5408437005390661083

`A186881(A374008(n+1))`
-/

namespace A186879.P5408437005390661083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A374008 (n + 1)).toNat

end

end A186879.P5408437005390661083

/-! ## A186879.P57713491408805839

`A186881(A167487(n+5))`
-/

namespace A186879.P57713491408805839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A167487 (n + 5)).toNat

end

end A186879.P57713491408805839

/-! ## A186879.P14890155468333423956

`A186881(A056119(n)+28)`
-/

namespace A186879.P14890155468333423956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A056119 n + 28).toNat

end

end A186879.P14890155468333423956

/-! ## A186879.P13202724632940305361

`A186881(eq[11, A066657(n)])`
-/

namespace A186879.P13202724632940305361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186879.P13202724632940305361

/-! ## A186879.P9059144107361163757

`A186881(A167499(n+5)+2)`
-/

namespace A186879.P9059144107361163757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A167499 (n + 5) + 2).toNat

end

end A186879.P9059144107361163757

/-!
# A186880: Number of (n+2) X 10 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186880, there is no canonical definition to state claims against.
-/

/-! ## A186880.P11516269369132448308

`A186881(A374009(n+1))`
-/

namespace A186880.P11516269369132448308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A374009 (n + 1)).toNat

end

end A186880.P11516269369132448308

/-! ## A186880.P17820622100132967073

`A186881(A167499(n+6)+3)`
-/

namespace A186880.P17820622100132967073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A167499 (n + 6) + 3).toNat

end

end A186880.P17820622100132967073

/-! ## A186880.P10886487254126339780

`A186881(A000124(n+7)+7)`
-/

namespace A186880.P10886487254126339780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A000124 (n + 7) + 7).toNat

end

end A186880.P10886487254126339780

/-! ## A186880.P2387105007806613206

`A186881(A000217(n+7)+8)`
-/

namespace A186880.P2387105007806613206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A000217 (n + 7) + 8).toNat

end

end A186880.P2387105007806613206

/-! ## A186880.P15300790003717283348

`A186881(A034856(n+6)+10)`
-/

namespace A186880.P15300790003717283348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A034856 (n + 6) + 10).toNat

end

end A186880.P15300790003717283348

/-!
# A186882: Alternatively squares and cubes with prime differences.

The programs for A186882, there is no canonical definition to state claims against.
-/

/-! ## A186882.P5232726088963013587

`A186883(n)+a(n-1)` with `a(0)=4`
-/

namespace A186882.P5232726088963013587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A186883 n + a (n - 1)

end

end A186882.P5232726088963013587

/-! ## A186882.P17201548446017075898

`∑[A186883(n%a(n-1))]` with `a(0)=4`
-/

namespace A186882.P17201548446017075898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A186883 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186882.P17201548446017075898

/-! ## A186882.P7791318798965497172

`A186883(n)+abs(a(A023443(n)))` with `a(0)=4`
-/

namespace A186882.P7791318798965497172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A186883 n + |a (A023443 n).toNat|

end

end A186882.P7791318798965497172

/-! ## A186882.P17259443949879146788

`A186883(n)-(A000007(n)-a(n-1))` with `a(0)=4`
-/

namespace A186882.P17259443949879146788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A186883 n - (A000007 n - a (n - 1))

end

end A186882.P17259443949879146788

/-! ## A186882.P4748137818659809281

`∑[A186883(n+1)]+4-A186883(n+1)`
-/

namespace A186882.P4748137818659809281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 - A186883 (n + 1))

end

end A186882.P4748137818659809281

/-!
# A186883: a(n) = A186882(n+1) - A186882(n).

The programs for A186883, there is no canonical definition to state claims against.
-/

/-! ## A186883.P3371519349359913504

`A186882(n+2)-A186882(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186883.P3371519349359913504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (n + 2) - A186882 (n + 1)

end

end A186883.P3371519349359913504

/-! ## A186883.P11989849376502094568

`Δ[A186882(n+1)]`
-/

namespace A186883.P11989849376502094568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186883.P11989849376502094568

/-! ## A186883.P15185939147819896834

`Δ[record[A186882(A126759(n))]]`
-/

namespace A186883.P15185939147819896834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186883.P15185939147819896834

/-! ## A186883.P18098081208470180659

`Δ[record[A186882(A328397(n))]]`
-/

namespace A186883.P18098081208470180659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186883.P18098081208470180659

/-! ## A186883.P3693679817777138275

`abs(Δ[A186882(A028242(2*n))])`
-/

namespace A186883.P3693679817777138275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186883.P3693679817777138275

/-! ## A186883.P15854441693024378105

`abs(Δ[A186882(A005408(n)-n)])`
-/

namespace A186883.P15854441693024378105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186883.P15854441693024378105

/-! ## A186883.P2665215896248573020

`A057077(n)²*Δ[A186882(A028242(2*n))]`
-/

namespace A186883.P2665215896248573020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A186883.P2665215896248573020

/-! ## A186883.P11677589784093315771

`A246016(n)²*Δ[A186882(A028242(2*n))]`
-/

namespace A186883.P11677589784093315771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246016 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A186883.P11677589784093315771

/-!
# A186884: Numbers k such that 2^(k-1) == 1 + b*k (mod k^2), where b divides k - 2^p for some integer p >= 0 and 2^p <= b.

The programs for A186884, there is no canonical definition to state claims against.
-/

/-! ## A186884.P1323620659765547238

`p?[∑[A225859(A085398(n+1))]]`
-/

namespace A186884.P1323620659765547238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A085398 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186884.P1323620659765547238

/-! ## A186884.P4940061715913136392

`p?[Δ[(A308429(n+1)+n+1)²]]`
-/

namespace A186884.P4940061715913136392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308429 (n + 1) + (n + 1 : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186884.P4940061715913136392

/-! ## A186884.P3250358987938626323

`p?[comp[or(2, n)+n]*A274886(2*n)]`
-/

namespace A186884.P3250358987938626323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) * A274886 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186884.P3250358987938626323

/-! ## A186884.P4654197113370516560

`filter[A179740(n+1), A133011(#)]`
-/

namespace A186884.P4654197113370516560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A186884.P4654197113370516560

/-! ## A186884.P12778517921638276799

`A065091(lt[A240858(n+1), A175055(n+1)])`
-/

namespace A186884.P12778517921638276799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A186884.P12778517921638276799

/-!
# A186885: Numbers whose squares are the average of two distinct positive cubes.

The programs for A186885, there is no canonical definition to state claims against.
-/

/-! ## A186885.P13425115781244938168

`∩[A007412(n+1), A267477(n+1)]`
-/

namespace A186885.P13425115781244938168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186885.P13425115781244938168

/-! ## A186885.P17030176602184664274

`sqrt(∩[A268319(n+1), n²])`
-/

namespace A186885.P17030176602184664274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268319 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A186885.P17030176602184664274

/-! ## A186885.P14886421289321177341

`sqrt(∩[A000290(n), A268319(n+1)])`
-/

namespace A186885.P14886421289321177341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268319 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A186885.P14886421289321177341

/-! ## A186885.P4584131027602611411

`∩[A267477(n+1), A300564(n+1)]`
-/

namespace A186885.P4584131027602611411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186885.P4584131027602611411

/-!
# A186890: Numbers m such that the Stern polynomial B(m,x) is self-reciprocal.

The programs for A186890, there is no canonical definition to state claims against.
-/

/-! ## A186890.P9883902011333550877

`A200926(A080436(n+1))+A110654(n)`
-/

namespace A186890.P9883902011333550877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200926 (A080436 (n + 1)).toNat + A110654 n

end

end A186890.P9883902011333550877

/-! ## A186890.P4506961771424110116

`lt[A048158(A092112(n+1)), A033687(2*n+3)]`
-/

namespace A186890.P4506961771424110116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A092112 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186890.P4506961771424110116

/-!
# A186891: Numbers m such that the Stern polynomial B(m,x) is irreducible.

The programs for A186891, there is no canonical definition to state claims against.
-/

/-! ## A186891.P14390458855515961179

`lt[A277013(n+1), 2]+1`
-/

namespace A186891.P14390458855515961179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A186891.P14390458855515961179

/-! ## A186891.P14285376522484098209

`record[n*A283991(n+1)+1]`
-/

namespace A186891.P14285376522484098209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A283991 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186891.P14285376522484098209

/-! ## A186891.P14218468879284996081

`eq[1, A283991(round(1/(n+1)+n))]`
-/

namespace A186891.P14218468879284996081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) + (n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186891.P14218468879284996081

/-! ## A186891.P2567943986208978106

`lt[A305889(A305899(n+1)), 2]+1`
-/

namespace A186891.P2567943986208978106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (A305899 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A186891.P2567943986208978106

/-! ## A186891.P3643994266652891606

`∪[A000040(n+1), A186892(n+1)]`
-/

namespace A186891.P3643994266652891606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186891.P3643994266652891606

/-! ## A186891.P17244441760053887789

`∪[A008578(n+1), A186892(n+1)]`
-/

namespace A186891.P17244441760053887789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186891.P17244441760053887789

/-! ## A186891.P17732243031828975159

`eq[A277013(n+1), A283991(n+1)]+1`
-/

namespace A186891.P17732243031828975159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A186891.P17732243031828975159

/-! ## A186891.P15107969241087725617

`eq[A284011(n+1), A305899(n+1)]+1`
-/

namespace A186891.P15107969241087725617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A186891.P15107969241087725617

/-! ## A186891.P17729180931502117809

`lt[A277027(n+1), 2]+1`
-/

namespace A186891.P17729180931502117809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277027 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A186891.P17729180931502117809

/-!
# A186892: Nonprime numbers n such that the Stern polynomial B(n,x) is irreducible.

The programs for A186892, there is no canonical definition to state claims against.
-/

/-! ## A186892.P4516734888899178482

`record[n*A305892(n+1)+1]`
-/

namespace A186892.P4516734888899178482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305892 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186892.P4516734888899178482

/-! ## A186892.P17845004218306247465

`filter[A186891(n+1), A005171(#)]`
-/

namespace A186892.P17845004218306247465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A186892.P17845004218306247465

/-! ## A186892.P16401963217556967051

`filter[A186891(n+1), A292438(#)]`
-/

namespace A186892.P16401963217556967051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A186892.P16401963217556967051

/-! ## A186892.P7184416759658395137

`∩[A090818(n+1), A186891(n+1)]`
-/

namespace A186892.P7184416759658395137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P7184416759658395137

/-! ## A186892.P13449663566148304013

`∩[A067800(n+1), A186891(n+1)]`
-/

namespace A186892.P13449663566148304013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P13449663566148304013

/-! ## A186892.P6895815286131010893

`∩[A014076(n+1), A186891(n+1)]`
-/

namespace A186892.P6895815286131010893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P6895815286131010893

/-! ## A186892.P4196185346961969322

`∩[A171993(n+1), A186891(n+1)]`
-/

namespace A186892.P4196185346961969322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P4196185346961969322

/-! ## A186892.P125941821123004388

`∩[A186891(n+1), A325037(n+1)]`
-/

namespace A186892.P125941821123004388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P125941821123004388

/-! ## A186892.P5664016505029260827

`∩[A186891(n+1), A264828(n+1)]`
-/

namespace A186892.P5664016505029260827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P5664016505029260827

/-! ## A186892.P13928744591950951719

`∩[A186891(n+1), A257586(n+1)]`
-/

namespace A186892.P13928744591950951719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P13928744591950951719

/-! ## A186892.P4479478979999467856

`∩[A164276(n+1), A186891(n+1)]`
-/

namespace A186892.P4479478979999467856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P4479478979999467856

/-! ## A186892.P10832469506163783013

`∩[A018252(n+1), A186891(n+1)]`
-/

namespace A186892.P10832469506163783013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P10832469506163783013

/-! ## A186892.P2262310052097336611

`∩[A056653(n+1), A186891(n+1)]`
-/

namespace A186892.P2262310052097336611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P2262310052097336611

/-! ## A186892.P11899296702030005456

`∩[A141468(n+1), A186891(n+1)]`
-/

namespace A186892.P11899296702030005456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P11899296702030005456

/-! ## A186892.P2563990740313039418

`A109613(record[n*A305892(n+1)])`
-/

namespace A186892.P2563990740313039418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186892.P2563990740313039418

/-! ## A186892.P2025538855250103824

`record[A005451(A186891(n+1))]`
-/

namespace A186892.P2025538855250103824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A186891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186892.P2025538855250103824

/-! ## A186892.P13827770182798053543

`A109613(record[A191558(n+1)*A283991(n+1)])`
-/

namespace A186892.P13827770182798053543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) * A283991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186892.P13827770182798053543

/-!
# A186893: Numbers m such that the Stern polynomial B(m,x) is irreducible and self-reciprocal.

The programs for A186893, there is no canonical definition to state claims against.
-/

/-! ## A186893.P14645091896020914646

`and(∑[2^n], A305859(floor(((2^n+1)/2)²)))`
-/

namespace A186893.P14645091896020914646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A305859 ⌊((2 ^ n + 1 : ℚ) / 2) ^ 2⌋.toNat)

end

end A186893.P14645091896020914646

/-! ## A186893.P6044331430540173773

`2*A341019(A163834(n))+1`
-/

namespace A186893.P6044331430540173773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341019 (A163834 n).toNat + 1

end

end A186893.P6044331430540173773

/-! ## A186893.P5071155513706954459

`record[A020639(A186890(n+1)²)]`
-/

namespace A186893.P5071155513706954459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A186890 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186893.P5071155513706954459

/-! ## A186893.P7560190580866803405

`A131572(2*(n+1))-A231725(A182465(n))`
-/

namespace A186893.P7560190580866803405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * (n + 1)) - A231725 (A182465 n).toNat

end

end A186893.P7560190580866803405

/-!
# A186894: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186894, there is no canonical definition to state claims against.
-/

/-! ## A186894.P5876334199137541073

`A186902(∑[4*n]+1)`
-/

namespace A186894.P5876334199137541073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186894.P5876334199137541073

/-! ## A186894.P8141302644377503083

`record[A003982(n)*A186902(n+1)]`
-/

namespace A186894.P8141302644377503083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186894.P8141302644377503083

/-! ## A186894.P12380234471006260732

`A281155(n)+A186902(A001844(n))`
-/

namespace A186894.P12380234471006260732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n + A186902 (A001844 n).toNat

end

end A186894.P12380234471006260732

/-! ## A186894.P12054831612880756609

`A007318(∑[n])*A186902(A001844(n))`
-/

namespace A186894.P12054831612880756609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186902 (A001844 n).toNat

end

end A186894.P12054831612880756609

/-! ## A186894.P17342593772425823691

`A000108(C(2, n+2))*A186902(A001844(n))`
-/

namespace A186894.P17342593772425823691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A186902 (A001844 n).toNat

end

end A186894.P17342593772425823691

/-!
# A186895: Number of (n+1)X3 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186895, there is no canonical definition to state claims against.
-/

/-! ## A186895.P14502915859843079702

`A186902(∑[n+1]+2)`
-/

namespace A186895.P14502915859843079702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186895.P14502915859843079702

/-! ## A186895.P15783159534205053275

`lcm(2, A186902(A000096(n)+3))`
-/

namespace A186895.P15783159534205053275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186902 (A000096 n + 3).toNat)

end

end A186895.P15783159534205053275

/-! ## A186895.P12162861399458657743

`A186902(A000096(n)+3)%A159757(n+1)`
-/

namespace A186895.P12162861399458657743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186902 (A000096 n + 3).toNat) (A159757 (n + 1))

end

end A186895.P12162861399458657743

/-! ## A186895.P9838119312902774659

`A186902(A000096(n+1))+A000007(n+1)`
-/

namespace A186895.P9838119312902774659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A186895.P9838119312902774659

/-! ## A186895.P4652900008232048818

`A186902(A000096(n+1))+A000038(n+1)`
-/

namespace A186895.P4652900008232048818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A186895.P4652900008232048818

/-!
# A186896: Number of (n+1)X4 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186896, there is no canonical definition to state claims against.
-/

/-! ## A186896.P3580364952275539276

`A186902(∑[n+2]+4)`
-/

namespace A186896.P3580364952275539276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186896.P3580364952275539276

/-! ## A186896.P5647558178280081531

`lcm(2, A186902(A167614(n+1)))`
-/

namespace A186896.P5647558178280081531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186902 (A167614 (n + 1)).toNat)

end

end A186896.P5647558178280081531

/-! ## A186896.P5253595100167778448

`A007318(C(2, n))*A186902(A167614(n+1))`
-/

namespace A186896.P5253595100167778448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186902 (A167614 (n + 1)).toNat

end

end A186896.P5253595100167778448

/-! ## A186896.P6624247748864781030

`A007318(A000096(n))*A186902(A167614(n+1))`
-/

namespace A186896.P6624247748864781030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A186902 (A167614 (n + 1)).toNat

end

end A186896.P6624247748864781030

/-! ## A186896.P17441300501167797795

`A001222(A001097(2*(n+1)))*A186902(A167614(n+1))`
-/

namespace A186896.P17441300501167797795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001097 (2 * (n + 1))).toNat * A186902 (A167614 (n + 1)).toNat

end

end A186896.P17441300501167797795

/-!
# A186897: Number of (n+1)X5 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186897, there is no canonical definition to state claims against.
-/

/-! ## A186897.P12811950342036232042

`A186902(∑[n+3]+7)`
-/

namespace A186897.P12811950342036232042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186897.P12811950342036232042

/-! ## A186897.P5821179305425222549

`lcm(A033999(n), A186902(A052905(n)+9))`
-/

namespace A186897.P5821179305425222549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A186902 (A052905 n + 9).toNat)

end

end A186897.P5821179305425222549

/-! ## A186897.P10968520651996147198

`A186902(A052905(n)+9)+and(2, A008852(n+1))`
-/

namespace A186897.P10968520651996147198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A052905 n + 9).toNat + Int.land 2 (A008852 (n + 1))

end

end A186897.P10968520651996147198

/-! ## A186897.P11505759112086012825

`(A000027(n+1)-n)*A186902(A052905(n)+9)`
-/

namespace A186897.P11505759112086012825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A186902 (A052905 n + 9).toNat

end

end A186897.P11505759112086012825

/-! ## A186897.P15776188383122694211

`gcd(n+1, A005451(n+2))*A186902(A052905(n)+9)`
-/

namespace A186897.P15776188383122694211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A005451 (n + 2)) : ℤ) * A186902 (A052905 n + 9).toNat

end

end A186897.P15776188383122694211

/-!
# A186898: Number of (n+1) X 6 binary arrays with every 2 X 2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock determinants.

The programs for A186898, there is no canonical definition to state claims against.
-/

/-! ## A186898.P8787627433799960517

`A186902(A374005(n+1))`
-/

namespace A186898.P8787627433799960517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A374005 (n + 1)).toNat

end

end A186898.P8787627433799960517

/-! ## A186898.P7437836849168212380

`A186902(A167499(n+3))`
-/

namespace A186898.P7437836849168212380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A167499 (n + 3)).toNat

end

end A186898.P7437836849168212380

/-! ## A186898.P13180870566507050975

`A186902(A027379(n+2)+8)`
-/

namespace A186898.P13180870566507050975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A027379 (n + 2) + 8).toNat

end

end A186898.P13180870566507050975

/-! ## A186898.P8889160955510128021

`A186902(A038722(Δ[A264443(n)]))`
-/

namespace A186898.P8889160955510128021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A186898.P8889160955510128021

/-! ## A186898.P3375460544152372065

`A186902(Δ[A264443(n)])`
-/

namespace A186898.P3375460544152372065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (f1 (n + 1) - f1 n).toNat

end

end A186898.P3375460544152372065

/-!
# A186899: Number of (n+1)X7 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186899, there is no canonical definition to state claims against.
-/

/-! ## A186899.P3516907648659148888

`A186902(A374007(n+1))`
-/

namespace A186899.P3516907648659148888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A374007 (n + 1)).toNat

end

end A186899.P3516907648659148888

/-! ## A186899.P3380277469232466718

`A186902(A166136(n+4))`
-/

namespace A186899.P3380277469232466718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A166136 (n + 4)).toNat

end

end A186899.P3380277469232466718

/-! ## A186899.P14152673587985529228

`A186902(A000124(n+5)+5)`
-/

namespace A186899.P14152673587985529228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000124 (n + 5) + 5).toNat

end

end A186899.P14152673587985529228

/-! ## A186899.P2545049571974139615

`A186902(A000217(n+5)+6)`
-/

namespace A186899.P2545049571974139615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000217 (n + 5) + 6).toNat

end

end A186899.P2545049571974139615

/-! ## A186899.P10163204132942729565

`A186902(A034856(n+4)+8)`
-/

namespace A186899.P10163204132942729565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A034856 (n + 4) + 8).toNat

end

end A186899.P10163204132942729565

