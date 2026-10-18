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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A351800: a(n) = [x^n] 1/Product_{j=1..n} (1 - j^3*x).

The programs for A351800, there is no canonical definition to state claims against.
-/

/-! ## A351800.P1079094420310130141

`A269948(∑[4*n])`
-/

namespace A351800.P1079094420310130141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269948 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351800.P1079094420310130141

/-! ## A351800.P9109049321832025070

`gcd(A000038(n), A269948(A046092(n)))`
-/

namespace A351800.P9109049321832025070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269948 (A046092 n).toNat)

end

end A351800.P9109049321832025070

/-! ## A351800.P5687963753606237594

`lcm(A033999(n), A269948(A046092(n)))`
-/

namespace A351800.P5687963753606237594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A269948 (A046092 n).toNat)

end

end A351800.P5687963753606237594

/-! ## A351800.P4844678821257915321

`A014963(6*(n+1))*A269948(A046092(n))`
-/

namespace A351800.P4844678821257915321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A269948 (A046092 n).toNat

end

end A351800.P4844678821257915321

/-! ## A351800.P6072715061135698693

`A269948(A046092(n))^A001221(∏{digits}[n, 2^#])`
-/

namespace A351800.P6072715061135698693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269948 (A046092 n).toNat : ℚ) ^ (A001221 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℤ)

end

end A351800.P6072715061135698693

/-!
# A351801: a(n) = A351477(n) * FA where F is the Fermat point of a primitive integer-sided triangle ABC with A < B < C < 2*Pi/3 and FA + FB + FC = A336329(n).

The programs for A351801, there is no canonical definition to state claims against.
-/

/-! ## A351801.P17847430915691762964

`A351476(n+1)-A351802(n+1)-A351803(n+1)`
-/

namespace A351801.P17847430915691762964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351476 (n + 1) - A351802 (n + 1) - A351803 (n + 1)

end

end A351801.P17847430915691762964

/-! ## A351801.P5265218178514674842

`A336329(n+1)*A351477(n+1)-(A351803(n+1)+A351802(n+1))`
-/

namespace A351801.P5265218178514674842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336329 (n + 1) * A351477 (n + 1) - (A351803 (n + 1) + A351802 (n + 1))

end

end A351801.P5265218178514674842

/-!
# A351802: a(n) = A351477(n) * FB where F is the Fermat point of a primitive integer-sided triangle ABC with A < B < C < 2*Pi/3 and FA + FB + FC = A336329(n).

The programs for A351802, there is no canonical definition to state claims against.
-/

/-! ## A351802.P15976687282792757771

`A351476(n+1)-A351801(n+1)-A351803(n+1)`
-/

namespace A351802.P15976687282792757771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351476 (n + 1) - A351801 (n + 1) - A351803 (n + 1)

end

end A351802.P15976687282792757771

/-!
# A351803: a(n) = A351477(n) * FC where F is the Fermat point of a primitive integer-sided triangle ABC with A < B < C < 2*Pi/3 and FA + FB + FC = A336329(n).

The programs for A351803, there is no canonical definition to state claims against.
-/

/-! ## A351803.P11587383799569597083

`A351476(n+1)-A351801(n+1)-A351802(n+1)`
-/

namespace A351803.P11587383799569597083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351476 (n + 1) - A351801 (n + 1) - A351802 (n + 1)

end

end A351803.P11587383799569597083

/-!
# A351805: a(n) = Sum_{1 <= i < j <= n} j^5*i^5.

The programs for A351805, the canonical program `A351805.P5958132597516484844` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351805 has offset 0).

The definition of A351805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351805.P5958132597516484844

`∑[n^5]²-∑[n^5*∑[n^5]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A351805

/-- `∑[n^5]²-∑[n^5*∑[n^5]]` -/
def P5958132597516484844.Spec : Prop :=
  ∀ n, P5958132597516484844.a n = A351805 n

theorem P5958132597516484844.correct : P5958132597516484844.Spec := by
  intro n
  simp only [A351805]

end A351805

/-! ## A351805.P12372386119138589735

`abs(∑[n^5*∑[n^5]]-A023002(n))`
-/

namespace A351805.P12372386119138589735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023002 n|

end

end A351805.P12372386119138589735

namespace A351805

/-- `abs(∑[n^5*∑[n^5]]-A023002(n))` -/
def P12372386119138589735.Spec : Prop :=
  ∀ n, P12372386119138589735.a n = A351805 n

end A351805

/-! ## A351805.P17024455152413761710

`abs(A000539(n)²-A351770(n))`
-/

namespace A351805.P17024455152413761710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000539 n ^ 2 - A351770 n|

end

end A351805.P17024455152413761710

namespace A351805

/-- `abs(A000539(n)²-A351770(n))` -/
def P17024455152413761710.Spec : Prop :=
  ∀ n, P17024455152413761710.a n = A351805 n

end A351805

/-! ## A351805.P16742506875931516486

`floor(A351770(n)-∑[2*A008454(n)]/2)`
-/

namespace A351805.P16742506875931516486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351770 n : ℚ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A351805.P16742506875931516486

namespace A351805

/-- `floor(A351770(n)-∑[2*A008454(n)]/2)` -/
def P16742506875931516486.Spec : Prop :=
  ∀ n, P16742506875931516486.a n = A351805 n

end A351805

/-! ## A351805.P2832798369084853480

`∑[(∑[n^5]-A000584(n))*A000584(n)]`
-/

namespace A351805.P2832798369084853480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000584 n) * A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351805.P2832798369084853480

namespace A351805

/-- `∑[(∑[n^5]-A000584(n))*A000584(n)]` -/
def P2832798369084853480.Spec : Prop :=
  ∀ n, P2832798369084853480.a n = A351805 n

end A351805

/-! ## A351805.P15811720710521278980

`(A000539(n)²-A351770(n))/(1-A285495(n+1))!`
-/

namespace A351805.P15811720710521278980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000539 n ^ 2 - A351770 n : ℚ) / (Nat.factorial (1 - A285495 (n + 1)).toNat : ℚ)

end

end A351805.P15811720710521278980

namespace A351805

/-- `(A000539(n)²-A351770(n))/(1-A285495(n+1))!` -/
def P15811720710521278980.Spec : Prop :=
  ∀ n, P15811720710521278980.a n = (A351805 n : ℚ)

end A351805

/-!
# A351807: Integers m such that pod(m) divides pod(m^2) where pod = product of digits = A007954.

The programs for A351807, there is no canonical definition to state claims against.
-/

/-! ## A351807.P14761973799017213390

`eq[A055641(n), A319581(A180427(n+1))]`
-/

namespace A351807.P14761973799017213390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319581 (A180427 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351807.P14761973799017213390

/-! ## A351807.P11638360922140325627

`eq[A067898(n), A319581(A180427(n+1))]`
-/

namespace A351807.P11638360922140325627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319581 (A180427 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351807.P11638360922140325627

/-! ## A351807.P9681586896049123346

`eq[A086008(n), A319581(A180427(n+1))]`
-/

namespace A351807.P9681586896049123346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319581 (A180427 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351807.P9681586896049123346

/-! ## A351807.P14884916864725783688

`lt[A319581(A180427(n+1)), A168046(n)]`
-/

namespace A351807.P14884916864725783688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319581 (A180427 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351807.P14884916864725783688

/-! ## A351807.P8610552263743975607

`∑[A096271(A342338(2*(n+1)))+1]`
-/

namespace A351807.P8610552263743975607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A342338 (2 * (n + 1))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351807.P8610552263743975607

/-!
# A351808: a(n) is the quotient obtained when pod(m) divides pod(m^2), with pod = product of digits = A007954 and m = A351807(n).

The programs for A351808, there is no canonical definition to state claims against.
-/

/-! ## A351808.P4721149991522345909

`A007954(A351807(n+1)²)/A007954(A351807(n+1))`
-/

namespace A351808.P4721149991522345909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007954 (A351807 (n + 1) ^ 2).toNat : ℚ) / (A007954 (A351807 (n + 1)).toNat : ℚ)

end

end A351808.P4721149991522345909

/-!
# A351810: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 4*x)) / (1 - 4*x)^2.

The programs for A351810, there is no canonical definition to state claims against.
-/

/-! ## A351810.P3823751683231461195

`A151907(A149028(n))`
-/

namespace A351810.P3823751683231461195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151907 (A149028 n).toNat

end

end A351810.P3823751683231461195

/-!
# A351811: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 5*x)) / (1 - 5*x)^2.

The programs for A351811, there is no canonical definition to state claims against.
-/

/-! ## A351811.P12502505041506213127

`A249426(ceil(2^(n-1))+n^n)`
-/

namespace A351811.P12502505041506213127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249426 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + (n ^ n : ℤ)).toNat

end

end A351811.P12502505041506213127

/-!
# A351812: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 6*x)) / (1 - 6*x)^2.

The programs for A351812, there is no canonical definition to state claims against.
-/

/-! ## A351812.P16610966061145532958

`A051698(11*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A351812.P16610966061145532958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A051698 (11 * a (n - 1)).toNat

end

end A351812.P16610966061145532958

/-!
# A351813: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^3) / (1 - x).

The programs for A351813, there is no canonical definition to state claims against.
-/

/-! ## A351813.P6461502122288741967

`A281009(A052124(n))+A190123(n)`
-/

namespace A351813.P6461502122288741967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281009 (A052124 n).toNat + A190123 n

end

end A351813.P6461502122288741967

/-! ## A351813.P12469092314781823403

`A065033(A289501(n)+A238796(n))`
-/

namespace A351813.P12469092314781823403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A289501 n + A238796 n).toNat

end

end A351813.P12469092314781823403

/-!
# A351814: G.f. A(x) satisfies A(x) = 1 + x * A(x/(1 - x)^4) / (1 - x).

The programs for A351814, there is no canonical definition to state claims against.
-/

/-! ## A351814.P2804523278307707980

`(n-1)*A355529(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A351814.P2804523278307707980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1) * A355529 (a (n - 1)).toNat

end

end A351814.P2804523278307707980

/-! ## A351814.P7729390670319783925

`(n-1)*A356066(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A351814.P7729390670319783925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1) * A356066 (a (n - 1)).toNat

end

end A351814.P7729390670319783925

/-!
# A351815: G.f. A(x) satisfies A(x) = 1 + x * A(x/(1 - x)^5) / (1 - x).

The programs for A351815, there is no canonical definition to state claims against.
-/

/-! ## A351815.P5492016694699520474

`A219652(abs(2-n^n))`
-/

namespace A351815.P5492016694699520474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 |2 - (n ^ n : ℤ)|.toNat

end

end A351815.P5492016694699520474

/-! ## A351815.P6532395813754178064

`A108644(A378464(n))`
-/

namespace A351815.P6532395813754178064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108644 (A378464 n).toNat

end

end A351815.P6532395813754178064

/-!
# A351816: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^3) / (1 - x)^3.

The programs for A351816, there is no canonical definition to state claims against.
-/

/-! ## A351816.P3994454128306031460

`A077773(A035341(n))`
-/

namespace A351816.P3994454128306031460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A035341 n).toNat

end

end A351816.P3994454128306031460

/-! ## A351816.P14588214501080584533

`A034887(A230961(n))`
-/

namespace A351816.P14588214501080584533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A230961 n).toNat

end

end A351816.P14588214501080584533

/-!
# A351817: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^4) / (1 - x)^4.

The programs for A351817, there is no canonical definition to state claims against.
-/

/-! ## A351817.P4805428683898395977

`A064989(A354303(n)+A007623(n))`
-/

namespace A351817.P4805428683898395977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A354303 n + A007623 n).toNat

end

end A351817.P4805428683898395977

/-! ## A351817.P8302968437424210311

`A131341(A376766(n))+A052852(n)`
-/

namespace A351817.P8302968437424210311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131341 (A376766 n).toNat + A052852 n

end

end A351817.P8302968437424210311

/-!
# A351818: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^5) / (1 - x)^5.

The programs for A351818, there is no canonical definition to state claims against.
-/

/-! ## A351818.P2000353054438652854

`A060126(floor(sqrt(A126447(n))))`
-/

namespace A351818.P2000353054438652854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (Int.sqrt (A126447 n)).toNat

end

end A351818.P2000353054438652854

/-! ## A351818.P5475055895266836385

`A361316(A361279(n))-A082149(n)`
-/

namespace A351818.P5475055895266836385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361316 (A361279 n).toNat - A082149 n

end

end A351818.P5475055895266836385

/-!
# A351819: Irregular triangle read by rows: T(n,k) is the number of subparts of the symmetric representation of sigma(n) that arise from the (2*k-1)-th double-staircase of the double-staircases diagram of n described in A335616, n >= 1, k >= 1, and the first element of column k is in row A000384(k).

The programs for A351819, there is no canonical definition to state claims against.
-/

/-! ## A351819.P11007282405560503680

`(A347529(n+1)-1)%2+1`
-/

namespace A351819.P11007282405560503680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347529 (n + 1) - 1) 2 + 1

end

end A351819.P11007282405560503680

/-! ## A351819.P5580938818065611928

`A134451(A347529(n+1))`
-/

namespace A351819.P5580938818065611928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A347529 (n + 1)).toNat

end

end A351819.P5580938818065611928

/-! ## A351819.P3321855021935678645

`A107393(15*A347529(n+1))`
-/

namespace A351819.P3321855021935678645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (15 * A347529 (n + 1)).toNat

end

end A351819.P3321855021935678645

/-! ## A351819.P17045366173633329639

`gcd(2, A347529(n+1))*A351824(n+1)`
-/

namespace A351819.P17045366173633329639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A347529 (n + 1)) : ℤ) * A351824 (n + 1)

end

end A351819.P17045366173633329639

/-! ## A351819.P17980910854760760372

`gcd(A046698(A347263(n+1)), A347529(n+1))`
-/

namespace A351819.P17980910854760760372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046698 (A347263 (n + 1)).toNat) (A347529 (n + 1))

end

end A351819.P17980910854760760372

/-!
# A351820: a(1) = 1, a(2) = 2, a(3) = 3 and a(n) is the smallest number not included earlier that divides the concatenation a(n-3), a(n-2), a(n-1).

The programs for A351820, there is no canonical definition to state claims against.
-/

/-! ## A351820.P3271718186900693640

`A191728((n+1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A351820.P3271718186900693640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A191728 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A351820.P3271718186900693640

/-!
# A351821: Maximal sum of inverse squares of the singular values of Toeplitz anti-Hadamard matrices of order n.

The programs for A351821, there is no canonical definition to state claims against.
-/

/-! ## A351821.P4603052521499609634

`A008621(A272730(n)+A189859(n+1))`
-/

namespace A351821.P4603052521499609634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A272730 n + A189859 (n + 1)).toNat

end

end A351821.P4603052521499609634

/-! ## A351821.P10358733283460719398

`A005312(n+1)-A238112(A238131(n))`
-/

namespace A351821.P10358733283460719398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005312 (n + 1) - A238112 (A238131 n).toNat

end

end A351821.P10358733283460719398

/-! ## A351821.P10258097258970067042

`A005312(n+1)-A238112(A222587(n+1))`
-/

namespace A351821.P10258097258970067042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005312 (n + 1) - A238112 (A222587 (n + 1)).toNat

end

end A351821.P10258097258970067042

/-!
# A351822: a(n) is the number of different score sequences that are possible for strong tournaments on n vertices.

The programs for A351822, there is no canonical definition to state claims against.
-/

/-! ## A351822.P15913093796730467414

`A008618(round(A188495(n)+sqrt(n)))`
-/

namespace A351822.P15913093796730467414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (SequenceMachineLib.roundAway ((A188495 n : ℝ) + Real.sqrt (n : ℝ))).toNat

end

end A351822.P15913093796730467414

/-! ## A351822.P8235908702057997283

`A008618(A300146(n+1)+A188495(n))`
-/

namespace A351822.P8235908702057997283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A300146 (n + 1) + A188495 n).toNat

end

end A351822.P8235908702057997283

/-! ## A351822.P697348486538695084

`A008618(xor(A002262(2*n), A188495(n)))`
-/

namespace A351822.P697348486538695084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.xor (A002262 (2 * n)) (A188495 n)).toNat

end

end A351822.P697348486538695084

/-! ## A351822.P17928648300685141611

`A352830(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A351822.P17928648300685141611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  A352830 (a (n - 1) + a (n - 2)).toNat

end

end A351822.P17928648300685141611

/-! ## A351822.P15431933870772726619

`A320056(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A351822.P15431933870772726619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A320056 (a (n - 1) - (-a (n - 2))).toNat

end

end A351822.P15431933870772726619

/-!
# A351824: Irregular triangle read by rows: T(n,k) is the number of partitions of n into 2*k-1 consecutive parts, n >= 1, k >= 1. Column k lists 1's interleaved with 2*k-2 zeros, and the first element of column k is in row A000384(k).

The programs for A351824, there is no canonical definition to state claims against.
-/

/-! ## A351824.P15719420612610215891

`A352269(n+1)%2`
-/

namespace A351824.P15719420612610215891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352269 (n + 1)) 2

end

end A351824.P15719420612610215891

/-! ## A351824.P1167820857857995688

`char[lt[n, A352499(n+1)²]]`
-/

namespace A351824.P1167820857857995688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352499 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A351824.P1167820857857995688

/-! ## A351824.P17784986372656235237

`A057427(A352499(n+1))`
-/

namespace A351824.P17784986372656235237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A352499 (n + 1)).toNat

end

end A351824.P17784986372656235237

/-! ## A351824.P8483631223894475363

`A108605(A352499(n+1)+1)%3`
-/

namespace A351824.P8483631223894475363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108605 (A352499 (n + 1) + 1).toNat) 3

end

end A351824.P8483631223894475363

/-! ## A351824.P12292631644631345245

`ceil(A352269(n+1)/A000010(n+1))`
-/

namespace A351824.P12292631644631345245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A352269 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)⌉

end

end A351824.P12292631644631345245

/-! ## A351824.P15372323587114062436

`char[lt[A154721(n+1), A352499(n+1)]]`
-/

namespace A351824.P15372323587114062436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352499 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A351824.P15372323587114062436

/-! ## A351824.P10399839364730041948

`A010054(gcd(A000040(n+1), A352499(n+1)))`
-/

namespace A351824.P10399839364730041948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.gcd (A000040 (n + 1)) (A352499 (n + 1)))

end

end A351824.P10399839364730041948

/-! ## A351824.P299862152742890686

`and(A014760(n)², A352269(n+1))`
-/

namespace A351824.P299862152742890686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014760 n ^ 2) (A352269 (n + 1))

end

end A351824.P299862152742890686

/-! ## A351824.P3382781082494802435

`and(A174692(n), A352269(n+1))`
-/

namespace A351824.P3382781082494802435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A352269 (n + 1))

end

end A351824.P3382781082494802435

/-! ## A351824.P774428827237073034

`and(A014726(n)²², A352269(n+1))`
-/

namespace A351824.P774428827237073034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A014726 n ^ 2) ^ 2) (A352269 (n + 1))

end

end A351824.P774428827237073034

/-! ## A351824.P5747082707733237879

`and(A195744(n), A352269(n+1))`
-/

namespace A351824.P5747082707733237879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A352269 (n + 1))

end

end A351824.P5747082707733237879

/-! ## A351824.P4320970781559067880

`and(A305155(n), A352269(n+1))`
-/

namespace A351824.P4320970781559067880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305155 n) (A352269 (n + 1))

end

end A351824.P4320970781559067880

/-! ## A351824.P15179394049201157921

`and(A122041(n+1), A352269(n+1))`
-/

namespace A351824.P15179394049201157921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A352269 (n + 1))

end

end A351824.P15179394049201157921

/-! ## A351824.P5050201648645940131

`and(A196657(n), A352269(n+1))`
-/

namespace A351824.P5050201648645940131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A352269 (n + 1))

end

end A351824.P5050201648645940131

/-! ## A351824.P12427937466324910176

`and(A305262(n), A352269(n+1))`
-/

namespace A351824.P12427937466324910176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305262 n) (A352269 (n + 1))

end

end A351824.P12427937466324910176

/-! ## A351824.P16220346789723357795

`and(A305269(n), A352269(n+1))`
-/

namespace A351824.P16220346789723357795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305269 n) (A352269 (n + 1))

end

end A351824.P16220346789723357795

/-! ## A351824.P7513316789815869085

`and(A345109(n+1), A352269(n+1))`
-/

namespace A351824.P7513316789815869085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345109 (n + 1)) (A352269 (n + 1))

end

end A351824.P7513316789815869085

/-! ## A351824.P11956619027186094476

`and(A131056(n+1), A352269(n+1))`
-/

namespace A351824.P11956619027186094476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131056 (n + 1)) (A352269 (n + 1))

end

end A351824.P11956619027186094476

/-! ## A351824.P16664745674699860762

`and(A345108(n+1), A352269(n+1))`
-/

namespace A351824.P16664745674699860762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345108 (n + 1)) (A352269 (n + 1))

end

end A351824.P16664745674699860762

/-! ## A351824.P1336240651359886525

`and(A002064(n), A352269(n+1))`
-/

namespace A351824.P1336240651359886525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A352269 (n + 1))

end

end A351824.P1336240651359886525

/-!
# A351825: Total number of size 2 lists in all sets of lists partitioning [n] (cf. A000262).

The programs for A351825, there is no canonical definition to state claims against.
-/

/-! ## A351825.P1592547178905657806

`A206703(∑[char[1]+n]+1)%A000262(n)`
-/

namespace A351825.P1592547178905657806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A000262 n)

end

end A351825.P1592547178905657806

/-! ## A351825.P8057933659008151910

`(n²-n)*A253286(A029579(n²-n))`
-/

namespace A351825.P8057933659008151910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A253286 (A029579 (n ^ 2 - n)).toNat

end

end A351825.P8057933659008151910

/-! ## A351825.P961946501001121759

`lcm(A004526(n), A206703(A133263(n)))`
-/

namespace A351825.P961946501001121759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004526 n) (A206703 (A133263 n).toNat)

end

end A351825.P961946501001121759

/-! ## A351825.P11388030782314812364

`A206703(A133263(n))%A069321(n)`
-/

namespace A351825.P11388030782314812364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206703 (A133263 n).toNat) (A069321 n)

end

end A351825.P11388030782314812364

/-!
# A351826: a(n) is the least k such that there are exactly n positive numbers j such that k - 2^j and k + 2^j are both prime.

The programs for A351826, there is no canonical definition to state claims against.
-/

/-! ## A351826.P1331267789078139264

`or(1, A274820(A233657(n)))`
-/

namespace A351826.P1331267789078139264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A274820 (A233657 n).toNat)

end

end A351826.P1331267789078139264

/-! ## A351826.P14424108413543615044

`record[A319986(abs(A154570(n)))]`
-/

namespace A351826.P14424108413543615044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319986 |A154570 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351826.P14424108413543615044

/-!
# A351827: Sum of the numbers <= n that are either prime, a divisor of n, or both.

The programs for A351827, the canonical program `A351827.P16074495888239272804` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351827 has offset 1).

The definition of A351827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351827.P16074495888239272804

`A066911(n+1)+∑{d}[n+1, #]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A351827

/-- `A066911(n+1)+∑{d}[n+1, #]` -/
def P16074495888239272804.Spec : Prop :=
  ∀ n, P16074495888239272804.a n = A351827 (n + 1)

theorem P16074495888239272804.correct : P16074495888239272804.Spec := by
  intro n
  simp only [A351827, Nat.add_sub_cancel]

end A351827

/-! ## A351827.P2628308623579616905

`A023890(n+1)+∑[∑{p}[n+1, C(#, n)]]`
-/

namespace A351827.P2628308623579616905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351827.P2628308623579616905

namespace A351827

/-- `A023890(n+1)+∑[∑{p}[n+1, C(#, n)]]` -/
def P2628308623579616905.Spec : Prop :=
  ∀ n, P2628308623579616905.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P10843313593647343098

`∑[A061397(n+1)]+∑{d}[n+1, #]-∑{p}[n+1, #]`
-/

namespace A351827.P10843313593647343098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ))

end

end A351827.P10843313593647343098

namespace A351827

/-- `∑[A061397(n+1)]+∑{d}[n+1, #]-∑{p}[n+1, #]` -/
def P10843313593647343098.Spec : Prop :=
  ∀ n, P10843313593647343098.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P16649340190494967828

`A066911(n+1)+Δ[A160664(n)]`
-/

namespace A351827.P16649340190494967828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (n + 1) + (f1 (n + 1) - f1 n)

end

end A351827.P16649340190494967828

namespace A351827

/-- `A066911(n+1)+Δ[A160664(n)]` -/
def P16649340190494967828.Spec : Prop :=
  ∀ n, P16649340190494967828.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P7189126802409991816

`A034387(n+1)+A023890(n+1)`
-/

namespace A351827.P7189126802409991816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) + A023890 (n + 1)

end

end A351827.P7189126802409991816

namespace A351827

/-- `A034387(n+1)+A023890(n+1)` -/
def P7189126802409991816.Spec : Prop :=
  ∀ n, P7189126802409991816.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P1396378062437436790

`A066911(n+1)+A000203(n+1)`
-/

namespace A351827.P1396378062437436790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (n + 1) + A000203 (n + 1)

end

end A351827.P1396378062437436790

namespace A351827

/-- `A066911(n+1)+A000203(n+1)` -/
def P1396378062437436790.Spec : Prop :=
  ∀ n, P1396378062437436790.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P698357080097801010

`A158662(n+1)+A023891(n+1)`
-/

namespace A351827.P698357080097801010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (n + 1) + A023891 (n + 1)

end

end A351827.P698357080097801010

namespace A351827

/-- `A158662(n+1)+A023891(n+1)` -/
def P698357080097801010.Spec : Prop :=
  ∀ n, P698357080097801010.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P9465469300094086110

`A083266(n+1)-A390323(n+1)`
-/

namespace A351827.P9465469300094086110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083266 (n + 1) - A390323 (n + 1)

end

end A351827.P9465469300094086110

namespace A351827

/-- `A083266(n+1)-A390323(n+1)` -/
def P9465469300094086110.Spec : Prop :=
  ∀ n, P9465469300094086110.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P17046021999414435060

`A023891(n+1)+∑[C(A020639(n+1), n)]`
-/

namespace A351827.P17046021999414435060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351827.P17046021999414435060

namespace A351827

/-- `A023891(n+1)+∑[C(A020639(n+1), n)]` -/
def P17046021999414435060.Spec : Prop :=
  ∀ n, P17046021999414435060.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P16063258794965038771

`A023890(n+1)+∑[C(A006530(n+1), n)]-1`
-/

namespace A351827.P16063258794965038771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A351827.P16063258794965038771

namespace A351827

/-- `A023890(n+1)+∑[C(A006530(n+1), n)]-1` -/
def P16063258794965038771.Spec : Prop :=
  ∀ n, P16063258794965038771.a n = A351827 (n + 1)

end A351827

/-! ## A351827.P2825852915231962792

`A000203(n+1)+A034387(n+1)-A008472(n+1)`
-/

namespace A351827.P2825852915231962792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A034387 (n + 1) - A008472 (n + 1))

end

end A351827.P2825852915231962792

namespace A351827

/-- `A000203(n+1)+A034387(n+1)-A008472(n+1)` -/
def P2825852915231962792.Spec : Prop :=
  ∀ n, P2825852915231962792.a n = A351827 (n + 1)

end A351827

/-!
# A351828: Sum of the numbers <= n that are either squarefree, a divisor of n, or both.

The programs for A351828, there is no canonical definition to state claims against.
-/

/-! ## A351828.P4214398493367929252

`A368674(n+1)+∑{d}[n+1, #]`
-/

namespace A351828.P4214398493367929252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368674 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A351828.P4214398493367929252

/-! ## A351828.P13143941506329725393

`A066779(n+1)+∑{d}[n+1, #]-∏{p}[n+1, #+1]`
-/

namespace A351828.P13143941506329725393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (n + 1) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ))

end

end A351828.P13143941506329725393

/-! ## A351828.P4765228437791884997

`A162296(n+1)+A066779(n+1)`
-/

namespace A351828.P4765228437791884997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + A066779 (n + 1)

end

end A351828.P4765228437791884997

/-! ## A351828.P7669781669701666536

`A368674(n+1)+A000203(n+1)`
-/

namespace A351828.P7669781669701666536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368674 (n + 1) + A000203 (n + 1)

end

end A351828.P7669781669701666536

/-! ## A351828.P7430191828882061339

`A368674(n+1)+A097012(n+1)`
-/

namespace A351828.P7430191828882061339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368674 (n + 1) + A097012 (n + 1)

end

end A351828.P7430191828882061339

/-!
# A351830: Distance from the n-th square pyramidal number (sum of the first n positive squares) to the nearest square.

The programs for A351830, the canonical program `A351830.P4984587301917632845` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351830 has offset 0).

The definition of A351830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351830.P4984587301917632845

`abs(A000330(n)-A353295(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A351830

/-- `abs(A000330(n)-A353295(n))` -/
def P4984587301917632845.Spec : Prop :=
  ∀ n, P4984587301917632845.a n = A351830 n

theorem P4984587301917632845.correct : P4984587301917632845.Spec := by
  intro n
  simp only [A351830]

end A351830

/-! ## A351830.P414182383357438393

`A053188(A000330(n))`
-/

namespace A351830.P414182383357438393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000330 n).toNat

end

end A351830.P414182383357438393

namespace A351830

/-- `A053188(A000330(n))` -/
def P414182383357438393.Spec : Prop :=
  ∀ n, P414182383357438393.a n = A351830 n

end A351830

/-! ## A351830.P15396822155847437967

`abs(A353295(n)-∑[A000290(n)])`
-/

namespace A351830.P15396822155847437967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353295 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A351830.P15396822155847437967

namespace A351830

/-- `abs(A353295(n)-∑[A000290(n)])` -/
def P15396822155847437967.Spec : Prop :=
  ∀ n, P15396822155847437967.a n = A351830 n

end A351830

/-! ## A351830.P10590967620334131972

`A053188(∑[n²])`
-/

namespace A351830.P10590967620334131972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351830.P10590967620334131972

namespace A351830

/-- `A053188(∑[n²])` -/
def P10590967620334131972.Spec : Prop :=
  ∀ n, P10590967620334131972.a n = A351830 n

end A351830

/-! ## A351830.P17805958296323810229

`abs(∑[n²]-A053187(∑[n²]))`
-/

namespace A351830.P17805958296323810229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A053187 (∑ j ∈ Finset.range (n + 1), f2 j)|

end

end A351830.P17805958296323810229

namespace A351830

/-- `abs(∑[n²]-A053187(∑[n²]))` -/
def P17805958296323810229.Spec : Prop :=
  ∀ n, P17805958296323810229.a n = A351830 n

end A351830

/-!
# A351831: Vector in the 26-dimensional even Lorentzian unimodular lattice II_25,1 used to construct the Leech lattice.

The programs for A351831, there is no canonical definition to state claims against.
-/

/-! ## A351831.P15911883769118754177

`comp[A305925(n)+25]`
-/

namespace A351831.P15911883769118754177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 n + 25

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351831.P15911883769118754177

/-! ## A351831.P1309464360637917593

`C(A071675(n), 8)+n`
-/

namespace A351831.P1309464360637917593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071675 n).toNat 8 + n

end

end A351831.P1309464360637917593

/-! ## A351831.P14529044877556531843

`comp[A274633(n+1)+24]`
-/

namespace A351831.P14529044877556531843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274633 (n + 1) + 24

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351831.P14529044877556531843

/-! ## A351831.P12815558575271457259

`comp[lt[A362116(n+3), n]]`
-/

namespace A351831.P12815558575271457259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362116 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A351831.P12815558575271457259

/-! ## A351831.P15113535768289230499

`C(A030528(n+1), 8)+n`
-/

namespace A351831.P15113535768289230499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030528 (n + 1)).toNat 8 + n

end

end A351831.P15113535768289230499

/-!
# A351833: Number of partitions of n into exactly two parts, at least one of which is squarefree.

The programs for A351833, there is no canonical definition to state claims against.
-/

/-! ## A351833.P17060659034660158241

`ceil(n/2-A282380(n+1))`
-/

namespace A351833.P17060659034660158241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A282380 (n + 1) : ℚ)⌉

end

end A351833.P17060659034660158241

/-! ## A351833.P13376719622243911921

`A294233(n+1)+∑[char[2*∏{p}[n, #]-1]]`
-/

namespace A351833.P13376719622243911921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∏ p ∈ Nat.primeFactors (f3 n), p) : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351833.P13376719622243911921

/-! ## A351833.P12945015259568754747

`A110654(n)-A282380(n+1)`
-/

namespace A351833.P12945015259568754747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A282380 (n + 1)

end

end A351833.P12945015259568754747

/-! ## A351833.P6109004201435198627

`abs(A001057(n))-A282380(n+1)`
-/

namespace A351833.P6109004201435198627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A282380 (n + 1)

end

end A351833.P6109004201435198627

/-! ## A351833.P3137478423656239969

`∑[A000035(n)]-A282380(n+1)`
-/

namespace A351833.P3137478423656239969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A282380 (n + 1)

end

end A351833.P3137478423656239969

/-! ## A351833.P7167146619208718992

`Δ[A002620(n)]-A282380(n+1)`
-/

namespace A351833.P7167146619208718992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A282380 (n + 1)

end

end A351833.P7167146619208718992

/-! ## A351833.P18212454781901566400

`A294101(n+1)+A071068(n+1)`
-/

namespace A351833.P18212454781901566400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294101 (n + 1) + A071068 (n + 1)

end

end A351833.P18212454781901566400

/-! ## A351833.P14360053779967089684

`A294232(n+1)+A262868(n+1)`
-/

namespace A351833.P14360053779967089684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294232 (n + 1) + A262868 (n + 1)

end

end A351833.P14360053779967089684

/-! ## A351833.P15828834553033008313

`A294233(n+1)+A262869(n+1)`
-/

namespace A351833.P15828834553033008313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (n + 1) + A262869 (n + 1)

end

end A351833.P15828834553033008313

/-! ## A351833.P15723345243435784657

`A262991(n+1)-A071068(n+1)`
-/

namespace A351833.P15723345243435784657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - A071068 (n + 1)

end

end A351833.P15723345243435784657

/-! ## A351833.P16886593509012823009

`n-(A282380(n+1)+A004526(n))`
-/

namespace A351833.P16886593509012823009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A282380 (n + 1) + A004526 n)

end

end A351833.P16886593509012823009

/-! ## A351833.P14942229882658860942

`A262868(n+1)+A262869(n+1)-A071068(n+1)`
-/

namespace A351833.P14942229882658860942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) + (A262869 (n + 1) - A071068 (n + 1))

end

end A351833.P14942229882658860942

/-! ## A351833.P17434872860259902318

`A013928(n+1)-A098236(n+1)`
-/

namespace A351833.P17434872860259902318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A098236 (n + 1)

end

end A351833.P17434872860259902318

/-! ## A351833.P6424950189238952205

`log2(A060546(n))-A282380(n+1)`
-/

namespace A351833.P6424950189238952205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060546 n : ℝ) - (A282380 (n + 1) : ℝ)

end

end A351833.P6424950189238952205

/-!
# A351834: Number of partitions of n into exactly two distinct parts, at least one of which is squarefree.

The programs for A351834, there is no canonical definition to state claims against.
-/

/-! ## A351834.P5862432631074781702

`∑[char[∏{p}[n, #]]]-A071068(n+1)`
-/

namespace A351834.P5862432631074781702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A071068 (n + 1)

end

end A351834.P5862432631074781702

/-! ## A351834.P9740289235927502021

`∑[char[∏{p}[n, #]]]-A262351(n+1)/(n+1)`
-/

namespace A351834.P9740289235927502021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A262351 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A351834.P9740289235927502021

/-! ## A351834.P15846445811269618321

`A013928(n+1)-A071068(n+1)`
-/

namespace A351834.P15846445811269618321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A071068 (n + 1)

end

end A351834.P15846445811269618321

/-! ## A351834.P17638857499997466978

`∑[char[A005117(n+1)]]-A071068(n+1)`
-/

namespace A351834.P17638857499997466978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A071068 (n + 1)

end

end A351834.P17638857499997466978

/-! ## A351834.P18376947173462399562

`∑[∏{d}[n, A008683(#)²]]-1-A071068(n+1)`
-/

namespace A351834.P18376947173462399562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A008683 d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A071068 (n + 1)

end

end A351834.P18376947173462399562

/-! ## A351834.P12933498651893716371

`∑[A008683(∏{e}[n, #²])]-1-A071068(n+1)`
-/

namespace A351834.P12933498651893716371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A071068 (n + 1)

end

end A351834.P12933498651893716371

/-! ## A351834.P3489519694373230985

`∑[char[A005117(n+1)]]-A262351(n+1)/(n+1)`
-/

namespace A351834.P3489519694373230985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A262351 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A351834.P3489519694373230985

/-! ## A351834.P12765689349689319713

`∑[∏{d}[n, A008683(#)²]]-1-A262351(n+1)/(n+1)`
-/

namespace A351834.P12765689349689319713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A008683 d ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) - (A262351 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A351834.P12765689349689319713

/-! ## A351834.P15489993944799410653

`A098235(n+1)+A294101(n+1)-A071068(n+1)`
-/

namespace A351834.P15489993944799410653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 (n + 1) + (A294101 (n + 1) - A071068 (n + 1))

end

end A351834.P15489993944799410653

/-! ## A351834.P6684080016657634126

`A262869(2*n+1)-A071068(n+1)`
-/

namespace A351834.P6684080016657634126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1) - A071068 (n + 1)

end

end A351834.P6684080016657634126

/-! ## A351834.P15887580120372650153

`A294101(n+1)+A098236(n+1)`
-/

namespace A351834.P15887580120372650153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294101 (n + 1) + A098236 (n + 1)

end

end A351834.P15887580120372650153

/-!
# A351835: Smallest odious number k (member of A000069) such that k*n is also odious.

The programs for A351835, there is no canonical definition to state claims against.
-/

/-! ## A351835.P7437095689331665855

`gcd(A003215(A166106(n)), A008336(2*(n+2)))`
-/

namespace A351835.P7437095689331665855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003215 (A166106 n).toNat) (A008336 (2 * (n + 2)))

end

end A351835.P7437095689331665855

/-! ## A351835.P104537506004594831

`A001511(A336471(n+1)^6)`
-/

namespace A351835.P104537506004594831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A336471 (n + 1) ^ 6).toNat

end

end A351835.P104537506004594831

/-! ## A351835.P14613551461272555858

`A092520(A178757(n+1)²²)`
-/

namespace A351835.P14613551461272555858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092520 ((A178757 (n + 1) ^ 2) ^ 2).toNat

end

end A351835.P14613551461272555858

/-! ## A351835.P8501750004711744692

`A225017(A132741((floor(n/(xor(n, n+1)+1))+1)!))`
-/

namespace A351835.P8501750004711744692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225017 (A132741 (Nat.factorial (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat)).toNat

end

end A351835.P8501750004711744692

/-! ## A351835.P2710552045160361422

`A248909(or(A031177(n+1), A077168(n)))`
-/

namespace A351835.P2710552045160361422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (Int.lor (A031177 (n + 1)) (A077168 n)).toNat

end

end A351835.P2710552045160361422

/-!
# A351837: Consider a variant of the toothpick sequence (A139250) where each new toothpick, except the first, touches exactly one existing toothpick at the ends, this one being in the prior stage; a(n) is the total number of toothpicks at stage n.

The programs for A351837, there is no canonical definition to state claims against.
-/

/-! ## A351837.P770022271107581254

`∑[A351838(n)]`
-/

namespace A351837.P770022271107581254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351837.P770022271107581254

/-! ## A351837.P6728171007947800630

`∑[A139251(record[A067168(n)])]`
-/

namespace A351837.P6728171007947800630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067168 (n + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351837.P6728171007947800630

/-! ## A351837.P18374860907610937496

`A063196(A299703(n²+1))`
-/

namespace A351837.P18374860907610937496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (A299703 (n ^ 2 + 1)).toNat

end

end A351837.P18374860907610937496

/-! ## A351837.P14292655001195445264

`A064532(A155287(n+3))+n²`
-/

namespace A351837.P14292655001195445264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A155287 (n + 3)).toNat + (n ^ 2 : ℤ)

end

end A351837.P14292655001195445264

/-!
# A351838: First differences of A351837.

The programs for A351838, there is no canonical definition to state claims against.
-/

/-! ## A351838.P15490186630917800168

`Δ[A351837((n-1)%(n+1))]`
-/

namespace A351838.P15490186630917800168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351837 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351838.P15490186630917800168

/-! ## A351838.P13226798461462350122

`abs(Δ[A351837((2*n)%(n+1))])`
-/

namespace A351838.P13226798461462350122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351837 (2 * n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A351838.P13226798461462350122

/-! ## A351838.P6848297033476006606

`Δ[A351837(A000007(n)-1+n)]`
-/

namespace A351838.P6848297033476006606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351837 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351838.P6848297033476006606

/-! ## A351838.P9186433679016762963

`Δ[A351837(or(n, A000007(n))-1)]`
-/

namespace A351838.P9186433679016762963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351837 (Int.lor (n : ℤ) (A000007 n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351838.P9186433679016762963

/-! ## A351838.P6525510320961293065

`A351837(n)-A351837(log2(A011782(n)))`
-/

namespace A351838.P6525510320961293065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351837 n - A351837 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A351838.P6525510320961293065

/-! ## A351838.P4265184189295292353

`Δ[A351837(log2(A011782(n)))]`
-/

namespace A351838.P4265184189295292353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351837 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351838.P4265184189295292353

/-! ## A351838.P4241556182354498499

`Δ[A351837(A003056(C(n, 2)))]`
-/

namespace A351838.P4241556182354498499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351837 (A003056 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351838.P4241556182354498499

/-!
# A351840: Lexicographically earliest infinite sequence of distinct positive integers such that a(1) = 1 and a(n-1) + a(n) is divisible by the first digit of a(n).

The programs for A351840, there is no canonical definition to state claims against.
-/

/-! ## A351840.P10931686796741766268

`or(A151838(n)%2, A323821(n+1))`
-/

namespace A351840.P10931686796741766268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A151838 n) 2) (A323821 (n + 1))

end

end A351840.P10931686796741766268

/-! ## A351840.P3980576527723073312

`or(A051162(A185255(n)), A323821(n+1))`
-/

namespace A351840.P3980576527723073312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051162 (A185255 n).toNat) (A323821 (n + 1))

end

end A351840.P3980576527723073312

/-! ## A351840.P6343926613152578979

`A323821(n+1)+and(A057427(n), A151838(n))`
-/

namespace A351840.P6343926613152578979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323821 (n + 1) + Int.land (A057427 n) (A151838 n)

end

end A351840.P6343926613152578979

/-!
# A351842: Numbers whose sum of digits and number of proper divisors are equal.

The programs for A351842, there is no canonical definition to state claims against.
-/

/-! ## A351842.P15591667368280026564

`eq[A007953(n+1), A032741(n+1)]+1`
-/

namespace A351842.P15591667368280026564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351842.P15591667368280026564

/-! ## A351842.P2587155302322069815

`eq[A007953(n+1)+1, A000005(n+1)]+1`
-/

namespace A351842.P2587155302322069815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351842.P2587155302322069815

/-! ## A351842.P6234950580630389707

`eq[A028310(A007953(n)), A032741(n)]`
-/

namespace A351842.P6234950580630389707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351842.P6234950580630389707

/-! ## A351842.P14150902410609625729

`eq[A004277(A032741(n)), A169805(n)]`
-/

namespace A351842.P14150902410609625729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351842.P14150902410609625729

/-! ## A351842.P6117053005034861181

`eq[A004277(A007953(n)), A319410(n)]`
-/

namespace A351842.P6117053005034861181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351842.P6117053005034861181

/-!
# A351843: a(n) = sigma(n) * sopf(n).

The programs for A351843, the canonical program `A351843.P5616510655248736254` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351843 has offset 1).

The definition of A351843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351843.P5616510655248736254

`A000203(n+1)*A008472(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351843

/-- `A000203(n+1)*A008472(n+1)` -/
def P5616510655248736254.Spec : Prop :=
  ∀ n, P5616510655248736254.a n = A351843 (n + 1)

theorem P5616510655248736254.correct : P5616510655248736254.Spec := by
  intro n
  simp only [A351843, Nat.add_sub_cancel]

end A351843

/-! ## A351843.P17921481944239294018

`∑{d}[n+1, #]*∑{p}[n+1, #]`
-/

namespace A351843.P17921481944239294018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A351843.P17921481944239294018

namespace A351843

/-- `∑{d}[n+1, #]*∑{p}[n+1, #]` -/
def P17921481944239294018.Spec : Prop :=
  ∀ n, (P17921481944239294018.a n : ℤ) = A351843 (n + 1)

end A351843

/-! ## A351843.P5669481660611992437

`floor(∑{p}[n+1, #]/acot(∑{d}[n+1, #]))`
-/

namespace A351843.P5669481660611992437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) / SequenceMachineLib.acot ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)⌋

end

end A351843.P5669481660611992437

namespace A351843

/-- `floor(∑{p}[n+1, #]/acot(∑{d}[n+1, #]))` -/
def P5669481660611992437.Spec : Prop :=
  ∀ n, P5669481660611992437.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P9733230753421448122

`round(∑{p}[n+1, #]/acot(∑{d}[n+1, #]))`
-/

namespace A351843.P9733230753421448122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) / SequenceMachineLib.acot ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ))

end

end A351843.P9733230753421448122

namespace A351843

/-- `round(∑{p}[n+1, #]/acot(∑{d}[n+1, #]))` -/
def P9733230753421448122.Spec : Prop :=
  ∀ n, P9733230753421448122.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P1844410452590198639

`∑{p}[n+1, #]/∑{d}[n+1, #]^-1`
-/

namespace A351843.P1844410452590198639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A351843.P1844410452590198639

namespace A351843

/-- `∑{p}[n+1, #]/∑{d}[n+1, #]^-1` -/
def P1844410452590198639.Spec : Prop :=
  ∀ n, P1844410452590198639.a n = (A351843 (n + 1) : ℚ)

end A351843

/-! ## A351843.P8597297771645352168

`Δ[A160664(n)]*∑{p}[n+1, #]`
-/

namespace A351843.P8597297771645352168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A351843.P8597297771645352168

namespace A351843

/-- `Δ[A160664(n)]*∑{p}[n+1, #]` -/
def P8597297771645352168.Spec : Prop :=
  ∀ n, P8597297771645352168.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P17693551678067168837

`A000203(n+1)*Δ[A024924(n)]`
-/

namespace A351843.P17693551678067168837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (f1 (n + 1) - f1 n)

end

end A351843.P17693551678067168837

namespace A351843

/-- `A000203(n+1)*Δ[A024924(n)]` -/
def P17693551678067168837.Spec : Prop :=
  ∀ n, P17693551678067168837.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P10492040145072606951

`Δ[A160664(n)]*A008472(n+1)`
-/

namespace A351843.P10492040145072606951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008472 (n + 1)

end

end A351843.P10492040145072606951

namespace A351843

/-- `Δ[A160664(n)]*A008472(n+1)` -/
def P10492040145072606951.Spec : Prop :=
  ∀ n, P10492040145072606951.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P16012638246444355379

`sqrt(A072861(n+1))*A008472(n+1)`
-/

namespace A351843.P16012638246444355379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) * (A008472 (n + 1) : ℝ)

end

end A351843.P16012638246444355379

namespace A351843

/-- `sqrt(A072861(n+1))*A008472(n+1)` -/
def P16012638246444355379.Spec : Prop :=
  ∀ n, P16012638246444355379.a n = (A351843 (n + 1) : ℝ)

end A351843

/-! ## A351843.P5330489912343599941

`(A074372(n+1)-1)*A000203(n+1)`
-/

namespace A351843.P5330489912343599941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074372 (n + 1) - 1) * A000203 (n + 1)

end

end A351843.P5330489912343599941

namespace A351843

/-- `(A074372(n+1)-1)*A000203(n+1)` -/
def P5330489912343599941.Spec : Prop :=
  ∀ n, P5330489912343599941.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P114798638270986896

`A008472(n+1)/2*A074400(n+1)`
-/

namespace A351843.P114798638270986896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A351843.P114798638270986896

namespace A351843

/-- `A008472(n+1)/2*A074400(n+1)` -/
def P114798638270986896.Spec : Prop :=
  ∀ n, P114798638270986896.a n = (A351843 (n + 1) : ℚ)

end A351843

/-! ## A351843.P13442036504408987082

`(A024924(n+1)-A024924(n))*A000203(n+1)`
-/

namespace A351843.P13442036504408987082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024924 (n + 1) - A024924 n) * A000203 (n + 1)

end

end A351843.P13442036504408987082

namespace A351843

/-- `(A024924(n+1)-A024924(n))*A000203(n+1)` -/
def P13442036504408987082.Spec : Prop :=
  ∀ n, P13442036504408987082.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P7766314588847739641

`(A023890(n+1)+A008472(n+1))*A008472(n+1)`
-/

namespace A351843.P7766314588847739641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023890 (n + 1) + A008472 (n + 1)) * A008472 (n + 1)

end

end A351843.P7766314588847739641

namespace A351843

/-- `(A023890(n+1)+A008472(n+1))*A008472(n+1)` -/
def P7766314588847739641.Spec : Prop :=
  ∀ n, P7766314588847739641.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P12255492205415404172

`(A074372(n+1)+A023891(n+1))*A008472(n+1)`
-/

namespace A351843.P12255492205415404172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074372 (n + 1) + A023891 (n + 1)) * A008472 (n + 1)

end

end A351843.P12255492205415404172

namespace A351843

/-- `(A074372(n+1)+A023891(n+1))*A008472(n+1)` -/
def P12255492205415404172.Spec : Prop :=
  ∀ n, P12255492205415404172.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P16243348440980772152

`(A146076(n+1)+A000593(n+1))*A008472(n+1)`
-/

namespace A351843.P16243348440980772152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1)) * A008472 (n + 1)

end

end A351843.P16243348440980772152

namespace A351843

/-- `(A146076(n+1)+A000593(n+1))*A008472(n+1)` -/
def P16243348440980772152.Spec : Prop :=
  ∀ n, P16243348440980772152.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P8449428967111019072

`(A326142(n+1)+A007947(n+1))*A008472(n+1)`
-/

namespace A351843.P8449428967111019072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326142 (n + 1) + A007947 (n + 1)) * A008472 (n + 1)

end

end A351843.P8449428967111019072

namespace A351843

/-- `(A326142(n+1)+A007947(n+1))*A008472(n+1)` -/
def P8449428967111019072.Spec : Prop :=
  ∀ n, P8449428967111019072.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P12242471741114824918

`(A318677(n+1)+A318676(n+1))*A008472(n+1)`
-/

namespace A351843.P12242471741114824918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A318677 (n + 1) + A318676 (n + 1)) * A008472 (n + 1)

end

end A351843.P12242471741114824918

namespace A351843

/-- `(A318677(n+1)+A318676(n+1))*A008472(n+1)` -/
def P12242471741114824918.Spec : Prop :=
  ∀ n, P12242471741114824918.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P7941739558958671458

`(A000203(n+1)-A023890(n+1))*A000203(n+1)`
-/

namespace A351843.P7941739558958671458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A023890 (n + 1)) * A000203 (n + 1)

end

end A351843.P7941739558958671458

namespace A351843

/-- `(A000203(n+1)-A023890(n+1))*A000203(n+1)` -/
def P7941739558958671458.Spec : Prop :=
  ∀ n, P7941739558958671458.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P9978147744680124668

`A000203(n+1)*A345266((n+1)²)`
-/

namespace A351843.P9978147744680124668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A345266 ((n + 1) ^ 2)

end

end A351843.P9978147744680124668

namespace A351843

/-- `A000203(n+1)*A345266((n+1)²)` -/
def P9978147744680124668.Spec : Prop :=
  ∀ n, P9978147744680124668.a n = A351843 (n + 1)

end A351843

/-! ## A351843.P15981876437764494932

`A000203(n+1)*A063958((n+1)²)`
-/

namespace A351843.P15981876437764494932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A063958 ((n + 1) ^ 2)

end

end A351843.P15981876437764494932

namespace A351843

/-- `A000203(n+1)*A063958((n+1)²)` -/
def P15981876437764494932.Spec : Prop :=
  ∀ n, P15981876437764494932.a n = A351843 (n + 1)

end A351843

/-!
# A351844: a(n) = Sum_{d|n} Sum_{p|n, p prime} n^gcd(d,p).

The programs for A351844, there is no canonical definition to state claims against.
-/

/-! ## A351844.P12800236740343328269

`A129760(A345265(n+1)+1)`
-/

namespace A351844.P12800236740343328269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A345265 (n + 1) + 1).toNat

end

end A351844.P12800236740343328269

/-!
# A351845: a(n) = Sum_{d|n} Sum_{p|n, p prime} n^lcm(d,p).

The programs for A351845, there is no canonical definition to state claims against.
-/

/-! ## A351845.P2406270648286721080

`A005843(A147967(n+1)^∏{p}[n+1, #])`
-/

namespace A351845.P2406270648286721080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A147967 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A351845.P2406270648286721080

/-!
# A351846: Irregular triangle read by rows: T(n,k), n >= 0, k >= 0, in which n appears 4*n + 1 times in row n.

The programs for A351846, the canonical program `A351846.P11436247748201689952` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351846 has offset 0).

The definition of A351846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351846.P11436247748201689952

`floor((sqrt(8*n+1)+1)/4)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A351846

/-- `floor((sqrt(8*n+1)+1)/4)` -/
def P11436247748201689952.Spec : Prop :=
  ∀ n, P11436247748201689952.a n = A351846 n

theorem P11436247748201689952.correct : P11436247748201689952.Spec := by
  intro n
  simp only [A351846]

end A351846

/-! ## A351846.P17496985539134653689

`round(sinh(log(∑[char[∑[n]]])))`
-/

namespace A351846.P17496985539134653689
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A351846.P17496985539134653689

namespace A351846

/-- `round(sinh(log(∑[char[∑[n]]])))` -/
def P17496985539134653689.Spec : Prop :=
  ∀ n, P17496985539134653689.a n = A351846 n

end A351846

/-! ## A351846.P3849309210746088080

`val(∏[char[∑[n]]+1], 4)`
-/

namespace A351846.P3849309210746088080
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j) 4

end

end A351846.P3849309210746088080

namespace A351846

/-- `val(∏[char[∑[n]]+1], 4)` -/
def P3849309210746088080.Spec : Prop :=
  ∀ n, (P3849309210746088080.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P10740026867338258602

`∑[char[∑[or(1, 4*n)]]]`
-/

namespace A351846.P10740026867338258602
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P10740026867338258602

namespace A351846

/-- `∑[char[∑[or(1, 4*n)]]]` -/
def P10740026867338258602.Spec : Prop :=
  ∀ n, (P10740026867338258602.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P1484916845735699040

`∑[char[∑[xor(1, 4*n)]]]`
-/

namespace A351846.P1484916845735699040
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P1484916845735699040

namespace A351846

/-- `∑[char[∑[xor(1, 4*n)]]]` -/
def P1484916845735699040.Spec : Prop :=
  ∀ n, (P1484916845735699040.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P9808323009817488957

`∑[char[∑[n]^(n%2)]]`
-/

namespace A351846.P9808323009817488957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ (n % 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P9808323009817488957

namespace A351846

/-- `∑[char[∑[n]^(n%2)]]` -/
def P9808323009817488957.Spec : Prop :=
  ∀ n, (P9808323009817488957.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P2699327272962239920

`∑[char[∑[n]^and(1, n)]]`
-/

namespace A351846.P2699327272962239920
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ Nat.land 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P2699327272962239920

namespace A351846

/-- `∑[char[∑[n]^and(1, n)]]` -/
def P2699327272962239920.Spec : Prop :=
  ∀ n, (P2699327272962239920.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P16470017516003411741

`∑[char[C(2*(n+1), 2)]]`
-/

namespace A351846.P16470017516003411741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P16470017516003411741

namespace A351846

/-- `∑[char[C(2*(n+1), 2)]]` -/
def P16470017516003411741.Spec : Prop :=
  ∀ n, (P16470017516003411741.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P12250255815816680372

`comp[2*n²]%(n+1)`
-/

namespace A351846.P12250255815816680372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A351846.P12250255815816680372

namespace A351846

/-- `comp[2*n²]%(n+1)` -/
def P12250255815816680372.Spec : Prop :=
  ∀ n, (P12250255815816680372.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P15542736220076138568

`∑[char[lcm(n+1, comp[2*n])]]`
-/

namespace A351846.P15542736220076138568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P15542736220076138568

namespace A351846

/-- `∑[char[lcm(n+1, comp[2*n])]]` -/
def P15542736220076138568.Spec : Prop :=
  ∀ n, (P15542736220076138568.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P14981855879983084332

`∑[char[A103217(n)]]`
-/

namespace A351846.P14981855879983084332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P14981855879983084332

namespace A351846

/-- `∑[char[A103217(n)]]` -/
def P14981855879983084332.Spec : Prop :=
  ∀ n, (P14981855879983084332.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P5131305444648811804

`∑[char[A122432(n)]]`
-/

namespace A351846.P5131305444648811804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122432 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P5131305444648811804

namespace A351846

/-- `∑[char[A122432(n)]]` -/
def P5131305444648811804.Spec : Prop :=
  ∀ n, (P5131305444648811804.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P8986250576780022760

`∑[char[A145063(n)]]`
-/

namespace A351846.P8986250576780022760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351846.P8986250576780022760

namespace A351846

/-- `∑[char[A145063(n)]]` -/
def P8986250576780022760.Spec : Prop :=
  ∀ n, (P8986250576780022760.a n : ℤ) = A351846 n

end A351846

/-! ## A351846.P1255971878478932926

`ceil(A003056(n)/2)`
-/

namespace A351846.P1255971878478932926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003056 n : ℚ) / 2⌉

end

end A351846.P1255971878478932926

namespace A351846

/-- `ceil(A003056(n)/2)` -/
def P1255971878478932926.Spec : Prop :=
  ∀ n, P1255971878478932926.a n = A351846 n

end A351846

/-! ## A351846.P4815663880348795754

`round(n/A101776(n))`
-/

namespace A351846.P4815663880348795754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A101776 n : ℚ))

end

end A351846.P4815663880348795754

namespace A351846

/-- `round(n/A101776(n))` -/
def P4815663880348795754.Spec : Prop :=
  ∀ n, P4815663880348795754.a n = A351846 n

end A351846

/-! ## A351846.P18133397762200506316

`comp[A056220(n)]-n`
-/

namespace A351846.P18133397762200506316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A351846.P18133397762200506316

namespace A351846

/-- `comp[A056220(n)]-n` -/
def P18133397762200506316.Spec : Prop :=
  ∀ n, P18133397762200506316.a n = A351846 n

end A351846

/-! ## A351846.P2242460085458147838

`A204166(n+1)-1`
-/

namespace A351846.P2242460085458147838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (n + 1) - 1

end

end A351846.P2242460085458147838

namespace A351846

/-- `A204166(n+1)-1` -/
def P2242460085458147838.Spec : Prop :=
  ∀ n, P2242460085458147838.a n = A351846 n

end A351846

/-! ## A351846.P9612680068757595358

`round(sqrt(A056942(n))/2)`
-/

namespace A351846.P9612680068757595358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A056942 n : ℝ) / 2)

end

end A351846.P9612680068757595358

namespace A351846

/-- `round(sqrt(A056942(n))/2)` -/
def P9612680068757595358.Spec : Prop :=
  ∀ n, P9612680068757595358.a n = A351846 n

end A351846

/-! ## A351846.P1933619406371022486

`round(sqrt(A057944(n)/2))`
-/

namespace A351846.P1933619406371022486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A057944 n : ℚ) / 2 : ℝ))

end

end A351846.P1933619406371022486

namespace A351846

/-- `round(sqrt(A057944(n)/2))` -/
def P1933619406371022486.Spec : Prop :=
  ∀ n, P1933619406371022486.a n = A351846 n

end A351846

/-! ## A351846.P8282800416045727818

`round(sqrt(A061885(n))/2)`
-/

namespace A351846.P8282800416045727818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A061885 n : ℝ) / 2)

end

end A351846.P8282800416045727818

namespace A351846

/-- `round(sqrt(A061885(n))/2)` -/
def P8282800416045727818.Spec : Prop :=
  ∀ n, P8282800416045727818.a n = A351846 n

end A351846

/-!
# A351847: Arithmetic mean of the distinct prime factors of A078174(n).

The programs for A351847, the canonical program `A351847.P12065325014482619326` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351847 has offset 1).

The definition of A351847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351847.P12065325014482619326

`A323171(A078174(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A351847

/-- `A323171(A078174(n+1))` -/
def P12065325014482619326.Spec : Prop :=
  ∀ n, P12065325014482619326.a n = A351847 (n + 1)

theorem P12065325014482619326.correct : P12065325014482619326.Spec := by
  intro n
  simp only [A351847, Nat.add_sub_cancel]

end A351847

/-! ## A351847.P16925933438929077766

`A058977(A078174(n+1)-1)`
-/

namespace A351847.P16925933438929077766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (A078174 (n + 1) - 1).toNat

end

end A351847.P16925933438929077766

namespace A351847

/-- `A058977(A078174(n+1)-1)` -/
def P16925933438929077766.Spec : Prop :=
  ∀ n, P16925933438929077766.a n = A351847 (n + 1)

end A351847

/-! ## A351847.P12931722828307498653

`A123528(∏{p}[A078174(n+1), #])`
-/

namespace A351847.P12931722828307498653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A351847.P12931722828307498653

namespace A351847

/-- `A123528(∏{p}[A078174(n+1), #])` -/
def P12931722828307498653.Spec : Prop :=
  ∀ n, P12931722828307498653.a n = A351847 (n + 1)

end A351847

/-! ## A351847.P3244367816914785758

`A363895(A078174(2*n+1-n))`
-/

namespace A351847.P3244367816914785758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363895 (A078174 (2 * n + 1 - n)).toNat

end

end A351847.P3244367816914785758

namespace A351847

/-- `A363895(A078174(2*n+1-n))` -/
def P3244367816914785758.Spec : Prop :=
  ∀ n, P3244367816914785758.a n = A351847 (n + 1)

end A351847

/-! ## A351847.P3503547687647513004

`A363895(A078174(n+1)²)`
-/

namespace A351847.P3503547687647513004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363895 (A078174 (n + 1) ^ 2).toNat

end

end A351847.P3503547687647513004

namespace A351847

/-- `A363895(A078174(n+1)²)` -/
def P3503547687647513004.Spec : Prop :=
  ∀ n, P3503547687647513004.a n = A351847 (n + 1)

end A351847

/-! ## A351847.P10732252906441926903

`A363895(A078174(n+1)*A078174(n+1))`
-/

namespace A351847.P10732252906441926903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363895 (A078174 (n + 1) * A078174 (n + 1)).toNat

end

end A351847.P10732252906441926903

namespace A351847

/-- `A363895(A078174(n+1)*A078174(n+1))` -/
def P10732252906441926903.Spec : Prop :=
  ∀ n, P10732252906441926903.a n = A351847 (n + 1)

end A351847

/-!
# A351849: Irregular triangle read by rows, in which row n lists the computation of the tag system T_C(3,2) with alphabet {1, 2, 3}, deletion number 2, and production rules 1 -> 23, 2 -> 1, 3 -> 111, when started from the word encoding n.

The programs for A351849, there is no canonical definition to state claims against.
-/

/-! ## A351849.P17778518293354583882

`A037916(5^n+9^n+n)`
-/

namespace A351849.P17778518293354583882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (5 ^ n + 9 ^ n + n)

end

end A351849.P17778518293354583882

/-!
# A351850: a(n) is the number of iterations of the computation of the A351849 tag system when started from the word encoding n, or -1 if the number of iterations is infinite.

The programs for A351850, there is no canonical definition to state claims against.
-/

/-! ## A351850.P13872476998450293279

`A006667(n+1)+A285098(n+1)-1`
-/

namespace A351850.P13872476998450293279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (A285098 (n + 1) - 1)

end

end A351850.P13872476998450293279

/-! ## A351850.P11374722566151188742

`A078719(n+1)+A285098(n+1)-2`
-/

namespace A351850.P11374722566151188742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) + (A285098 (n + 1) - 2)

end

end A351850.P11374722566151188742

/-! ## A351850.P17404590910231819336

`A213917(n+1)+2-A213916(n+1)`
-/

namespace A351850.P17404590910231819336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213917 (n + 1) + (2 - A213916 (n + 1))

end

end A351850.P17404590910231819336

/-! ## A351850.P10672546164184732823

`A285098(n+1)+A023443(A006667(n+1))`
-/

namespace A351850.P10672546164184732823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285098 (n + 1) + A023443 (A006667 (n + 1)).toNat

end

end A351850.P10672546164184732823

/-! ## A351850.P6764366101405465128

`A285098(n+1)+A023444(A078719(n+1))`
-/

namespace A351850.P6764366101405465128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285098 (n + 1) + A023444 (A078719 (n + 1)).toNat

end

end A351850.P6764366101405465128

/-!
# A351856: Number of nonnegative integer solutions to 2*n = x_1 + x_2 + ... + x_n + 2*y_1 + 2*y_2 + ... + 2*y_n.

The programs for A351856, there is no canonical definition to state claims against.
-/

/-! ## A351856.P8223571849894359164

`A059594(A081270(n))`
-/

namespace A351856.P8223571849894359164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 (A081270 n).toNat

end

end A351856.P8223571849894359164

/-! ## A351856.P2659489930912154542

`A060086(∑[a(n-1)+9])` with `a(0)=7`
-/

namespace A351856.P2659489930912154542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351856.P2659489930912154542

/-! ## A351856.P379187365428832212

`A060086(A062725(n+1))`
-/

namespace A351856.P379187365428832212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A062725 (n + 1)).toNat

end

end A351856.P379187365428832212

/-! ## A351856.P3923494053929726464

`A060086(∑[A017257(n)-1])`
-/

namespace A351856.P3923494053929726464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351856.P3923494053929726464

/-! ## A351856.P16829579461488518594

`A060086(A134869(3*(n+1))+n)`
-/

namespace A351856.P16829579461488518594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A134869 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A351856.P16829579461488518594

/-!
# A351857: Number of nonnegative integer solutions to n = x_1 + x_2 + ... + x_(2*n) + 2*y_1 + 2*y_2 + ... + 2*y_(2*n).

The programs for A351857, there is no canonical definition to state claims against.
-/

/-! ## A351857.P3144435133802133763

`A059594(A081270(n)+1+n)`
-/

namespace A351857.P3144435133802133763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 (A081270 n + 1 + (n : ℤ)).toNat

end

end A351857.P3144435133802133763

/-! ## A351857.P18377680704652972298

`A060086(∑[A017257(n)])`
-/

namespace A351857.P18377680704652972298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351857.P18377680704652972298

/-! ## A351857.P9865513927880046524

`A060086(A062728(n+1))`
-/

namespace A351857.P9865513927880046524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A062728 (n + 1)).toNat

end

end A351857.P9865513927880046524

/-! ## A351857.P8532285531138386747

`A060086(∑[A017185(n)+6])`
-/

namespace A351857.P8532285531138386747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351857.P8532285531138386747

/-! ## A351857.P1590736289324592090

`A060086(eq[A029635(n), A093560(n)])`
-/

namespace A351857.P1590736289324592090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351857.P1590736289324592090

/-!
# A351858: a(n) = [x^n] (1 + x + x^2)^(3*n)/(1 + x)^(2*n).

The programs for A351858, there is no canonical definition to state claims against.
-/

/-! ## A351858.P16417609575250678591

`A158793(A062728(n))`
-/

namespace A351858.P16417609575250678591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158793 (A062728 n).toNat

end

end A351858.P16417609575250678591

/-! ## A351858.P3051076993761068658

`A124279(A139277(n))`
-/

namespace A351858.P3051076993761068658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A139277 n).toNat

end

end A351858.P3051076993761068658

/-! ## A351858.P9288783579757719916

`A124445(A139276(n))`
-/

namespace A351858.P9288783579757719916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 (A139276 n).toNat

end

end A351858.P9288783579757719916

/-! ## A351858.P14581700103664217302

`A124279(A014634(n)-(n+1))`
-/

namespace A351858.P14581700103664217302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A014634 n - (n + 1 : ℤ)).toNat

end

end A351858.P14581700103664217302

/-! ## A351858.P6425796715409585688

`A124279(n*A004770(n+1))`
-/

namespace A351858.P6425796715409585688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 ((n : ℤ) * A004770 (n + 1)).toNat

end

end A351858.P6425796715409585688

/-!
# A351859: a(n) = [x^n] (1 + x + x^2 + x^3)^(4*n)/(1 + x + x^2)^(3*n).

The programs for A351859, there is no canonical definition to state claims against.
-/

/-! ## A351859.P16122028172101342357

`A316885(ceil(exp(n-1)))`
-/

namespace A351859.P16122028172101342357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316885 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A351859.P16122028172101342357

/-! ## A351859.P14506630483232360610

`abs(A194520(∑[A038519(2*n+3)]))`
-/

namespace A351859.P14506630483232360610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194520 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A351859.P14506630483232360610

/-!
# A351860: Number of minimum cyclic edge cuts in the complete graph K_n.

The programs for A351860, the canonical program `A351860.P9154549776942829999` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351860 has offset 1).

The definition of A351860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351860.P9154549776942829999

`C(n+1-C(n, A000045(n)), 3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351860

/-- `C(n+1-C(n, A000045(n)), 3)` -/
def P9154549776942829999.Spec : Prop :=
  ∀ n, (P9154549776942829999.a n : ℤ) = A351860 (n + 1)

theorem P9154549776942829999.correct : P9154549776942829999.Spec := by
  intro n
  simp only [A351860, Nat.add_sub_cancel]

end A351860

/-! ## A351860.P1254313925989669980

`C(∑[A300719(A291302(3*n+2))], 3)`
-/

namespace A351860.P1254313925989669980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A291302 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A351860.P1254313925989669980

namespace A351860

/-- `C(∑[A300719(A291302(3*n+2))], 3)` -/
def P1254313925989669980.Spec : Prop :=
  ∀ n, (P1254313925989669980.a n : ℤ) = A351860 (n + 1)

end A351860

/-! ## A351860.P1112075835371294419

`C(A002855(n+1), A004249(A000688(n+5)))`
-/

namespace A351860.P1112075835371294419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002855 (n + 1)).toNat (A004249 (A000688 (n + 5)).toNat).toNat

end

end A351860.P1112075835371294419

namespace A351860

/-- `C(A002855(n+1), A004249(A000688(n+5)))` -/
def P1112075835371294419.Spec : Prop :=
  ∀ n, (P1112075835371294419.a n : ℤ) = A351860 (n + 1)

end A351860

/-! ## A351860.P9859555898782354486

`C(A114994(n), A372561(A113350(n)))`
-/

namespace A351860.P9859555898782354486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A114994 n).toNat (A372561 (A113350 n).toNat).toNat

end

end A351860.P9859555898782354486

namespace A351860

/-- `C(A114994(n), A372561(A113350(n)))` -/
def P9859555898782354486.Spec : Prop :=
  ∀ n, (P9859555898782354486.a n : ℤ) = A351860 (n + 1)

end A351860

/-! ## A351860.P16626952678694433179

`C(A020657(n+1), A204633(A341680(n)))`
-/

namespace A351860.P16626952678694433179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020657 (n + 1)).toNat (A204633 (A341680 n).toNat).toNat

end

end A351860.P16626952678694433179

namespace A351860

/-- `C(A020657(n+1), A204633(A341680(n)))` -/
def P16626952678694433179.Spec : Prop :=
  ∀ n, (P16626952678694433179.a n : ℤ) = A351860 (n + 1)

end A351860

/-!
# A351862: Denominators of the coefficients in a series for the angles in the Spiral of Theodorus.

The programs for A351862, there is no canonical definition to state claims against.
-/

/-! ## A351862.P8667669453399641820

`A000005(A051431(n))*A001700(n)`
-/

namespace A351862.P8667669453399641820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051431 n).toNat * A001700 n

end

end A351862.P8667669453399641820

/-!
# A351863: Numbers k with at least one divisor, d, such that k-d is prime.

The programs for A351863, the canonical program `A351863.P15743928905139905161` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351863 has offset 1).

The definition of A351863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351863.P15743928905139905161

`∪[2*p?[2*n+1], p?[round(8*n/7)]+1]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A351863

/-- `∪[2*p?[2*n+1], p?[round(8*n/7)]+1]` -/
def P15743928905139905161.Spec : Prop :=
  ∀ n, (P15743928905139905161.a n : ℤ) = A351863 (n + 1)

theorem P15743928905139905161.correct : P15743928905139905161.Spec := by
  intro n
  simp only [A351863, Nat.add_sub_cancel]

end A351863

/-! ## A351863.P9018214265540560208

`∪[A008864(n+1), A066664(n+1)]`
-/

namespace A351863.P9018214265540560208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P9018214265540560208

namespace A351863

/-- `∪[A008864(n+1), A066664(n+1)]` -/
def P9018214265540560208.Spec : Prop :=
  ∀ n, (P9018214265540560208.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P3398682163910569041

`∪[A008864(n+1), A073582(n+1)]`
-/

namespace A351863.P3398682163910569041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P3398682163910569041

namespace A351863

/-- `∪[A008864(n+1), A073582(n+1)]` -/
def P3398682163910569041.Spec : Prop :=
  ∀ n, (P3398682163910569041.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P8669271352184813808

`∪[A008864(n+1), A100484(n+1)]`
-/

namespace A351863.P8669271352184813808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P8669271352184813808

namespace A351863

/-- `∪[A008864(n+1), A100484(n+1)]` -/
def P8669271352184813808.Spec : Prop :=
  ∀ n, (P8669271352184813808.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P7276250758106877802

`∪[A008864(n+1), A161344(n+1)]`
-/

namespace A351863.P7276250758106877802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P7276250758106877802

namespace A351863

/-- `∪[A008864(n+1), A161344(n+1)]` -/
def P7276250758106877802.Spec : Prop :=
  ∀ n, (P7276250758106877802.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P372575969630596209

`∪[A066664(n+1), A135731(n+1)]`
-/

namespace A351863.P372575969630596209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P372575969630596209

namespace A351863

/-- `∪[A066664(n+1), A135731(n+1)]` -/
def P372575969630596209.Spec : Prop :=
  ∀ n, (P372575969630596209.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P16595768427684334984

`∪[A100484(n+1), A135731(n+1)]`
-/

namespace A351863.P16595768427684334984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P16595768427684334984

namespace A351863

/-- `∪[A100484(n+1), A135731(n+1)]` -/
def P16595768427684334984.Spec : Prop :=
  ∀ n, (P16595768427684334984.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P3509536759749474190

`∪[A135731(n+1), A161344(n+1)]`
-/

namespace A351863.P3509536759749474190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P3509536759749474190

namespace A351863

/-- `∪[A135731(n+1), A161344(n+1)]` -/
def P3509536759749474190.Spec : Prop :=
  ∀ n, (P3509536759749474190.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P3212843593593715682

`∪[A000040(n+1)+1, A100484(n+1)]`
-/

namespace A351863.P3212843593593715682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P3212843593593715682

namespace A351863

/-- `∪[A000040(n+1)+1, A100484(n+1)]` -/
def P3212843593593715682.Spec : Prop :=
  ∀ n, (P3212843593593715682.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P5805280425708584969

`∪[A006093(n+1)+2, A100484(n+1)]`
-/

namespace A351863.P5805280425708584969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P5805280425708584969

namespace A351863

/-- `∪[A006093(n+1)+2, A100484(n+1)]` -/
def P5805280425708584969.Spec : Prop :=
  ∀ n, (P5805280425708584969.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P14587563096267440138

`∪[A052147(n+1)-1, A100484(n+1)]`
-/

namespace A351863.P14587563096267440138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P14587563096267440138

namespace A351863

/-- `∪[A052147(n+1)-1, A100484(n+1)]` -/
def P14587563096267440138.Spec : Prop :=
  ∀ n, (P14587563096267440138.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P3576652124656723813

`∪[A100484(n+1), A113935(n+1)-2]`
-/

namespace A351863.P3576652124656723813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P3576652124656723813

namespace A351863

/-- `∪[A100484(n+1), A113935(n+1)-2]` -/
def P3576652124656723813.Spec : Prop :=
  ∀ n, (P3576652124656723813.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P1400229953942348568

`∪[2*A000040(n+1), A008864(n+1)]`
-/

namespace A351863.P1400229953942348568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P1400229953942348568

namespace A351863

/-- `∪[2*A000040(n+1), A008864(n+1)]` -/
def P1400229953942348568.Spec : Prop :=
  ∀ n, (P1400229953942348568.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P4009695066543744091

`∪[A014688(n+1)-n, A100484(n+1)]`
-/

namespace A351863.P4009695066543744091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P4009695066543744091

namespace A351863

/-- `∪[A014688(n+1)-n, A100484(n+1)]` -/
def P4009695066543744091.Spec : Prop :=
  ∀ n, (P4009695066543744091.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P10987546591337821128

`∪[A008864(n+1)+A006093(n+1), A008864(n+1)]`
-/

namespace A351863.P10987546591337821128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351863.P10987546591337821128

namespace A351863

/-- `∪[A008864(n+1)+A006093(n+1), A008864(n+1)]` -/
def P10987546591337821128.Spec : Prop :=
  ∀ n, (P10987546591337821128.a n : ℤ) = A351863 (n + 1)

end A351863

/-! ## A351863.P10312100049921030597

`record[A302792(n+2)+A006530(n+2)]`
-/

namespace A351863.P10312100049921030597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 2) + A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351863.P10312100049921030597

namespace A351863

/-- `record[A302792(n+2)+A006530(n+2)]` -/
def P10312100049921030597.Spec : Prop :=
  ∀ n, P10312100049921030597.a n = A351863 (n + 1)

end A351863

/-! ## A351863.P17623183656969259561

`record[A000010(or(2, n)+n)+2]`
-/

namespace A351863.P17623183656969259561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 2 n + n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351863.P17623183656969259561

namespace A351863

/-- `record[A000010(or(2, n)+n)+2]` -/
def P17623183656969259561.Spec : Prop :=
  ∀ n, P17623183656969259561.a n = A351863 (n + 1)

end A351863

/-! ## A351863.P11474698829892806866

`record[A000010(2*(n+1)-and(2, n))+2]`
-/

namespace A351863.P11474698829892806866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1) - Nat.land 2 n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351863.P11474698829892806866

namespace A351863

/-- `record[A000010(2*(n+1)-and(2, n))+2]` -/
def P11474698829892806866.Spec : Prop :=
  ∀ n, P11474698829892806866.a n = A351863 (n + 1)

end A351863

/-! ## A351863.P1439132335121641043

`record[A000010(n+2-and(2, n)+n)]+2`
-/

namespace A351863.P1439132335121641043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 2 : ℤ) - (Nat.land 2 n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A351863.P1439132335121641043

namespace A351863

/-- `record[A000010(n+2-and(2, n)+n)]+2` -/
def P1439132335121641043.Spec : Prop :=
  ∀ n, P1439132335121641043.a n = A351863 (n + 1)

end A351863

/-! ## A351863.P17978653583180318465

`record[gcd(A000010(n+1)+2, (n+1)*(n+3)²)]`
-/

namespace A351863.P17978653583180318465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1) + 2) ((n + 1) * (n + 3) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351863.P17978653583180318465

namespace A351863

/-- `record[gcd(A000010(n+1)+2, (n+1)*(n+3)²)]` -/
def P17978653583180318465.Spec : Prop :=
  ∀ n, (P17978653583180318465.a n : ℤ) = A351863 (n + 1)

end A351863

/-!
# A351864: Numerator of zeta({6}_n)/Pi^(6n).

The programs for A351864, the canonical program `A351864.P6848579617677032466` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351864 has offset 0).

The definition of A351864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351864.P6848579617677032466

`2^A240883(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351864

/-- `2^A240883(n)` -/
def P6848579617677032466.Spec : Prop :=
  ∀ n, P6848579617677032466.a n = (A351864 n : ℚ)

end A351864

/-! ## A351864.P9032452491502316392

`2^(A000120(3*n+1)-1)`
-/

namespace A351864.P9032452491502316392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (3 * n + 1) - 1 : ℤ)

end

end A351864.P9032452491502316392

namespace A351864

/-- `2^(A000120(3*n+1)-1)` -/
def P9032452491502316392.Spec : Prop :=
  ∀ n, P9032452491502316392.a n = (A351864 n : ℚ)

end A351864

/-! ## A351864.P1420628484487627677

`2^(A046818(n)-1)`
-/

namespace A351864.P1420628484487627677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046818 n - 1 : ℤ)

end

end A351864.P1420628484487627677

namespace A351864

/-- `2^(A046818(n)-1)` -/
def P1420628484487627677.Spec : Prop :=
  ∀ n, P1420628484487627677.a n = (A351864 n : ℚ)

end A351864

/-! ## A351864.P13958960215758691293

`A011782(A046818(n))`
-/

namespace A351864.P13958960215758691293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A046818 n).toNat

end

end A351864.P13958960215758691293

namespace A351864

/-- `A011782(A046818(n))` -/
def P13958960215758691293.Spec : Prop :=
  ∀ n, P13958960215758691293.a n = A351864 n

end A351864

/-! ## A351864.P6947211462194468247

`A000079(A240883(n))`
-/

namespace A351864.P6947211462194468247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A240883 n).toNat

end

end A351864.P6947211462194468247

namespace A351864

/-- `A000079(A240883(n))` -/
def P6947211462194468247.Spec : Prop :=
  ∀ n, P6947211462194468247.a n = A351864 n

end A351864

/-! ## A351864.P4910424795158383848

`A060632(A067745(n+1))`
-/

namespace A351864.P4910424795158383848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A067745 (n + 1)).toNat

end

end A351864.P4910424795158383848

namespace A351864

/-- `A060632(A067745(n+1))` -/
def P4910424795158383848.Spec : Prop :=
  ∀ n, P4910424795158383848.a n = A351864 n

end A351864

/-! ## A351864.P7913761333168873046

`A001316(A016777(n))/2`
-/

namespace A351864.P7913761333168873046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A016777 n).toNat : ℚ) / 2

end

end A351864.P7913761333168873046

namespace A351864

/-- `A001316(A016777(n))/2` -/
def P7913761333168873046.Spec : Prop :=
  ∀ n, P7913761333168873046.a n = (A351864 n : ℚ)

end A351864

/-! ## A351864.P11381149855617850038

`A001316(A016789(n)-1)/2`
-/

namespace A351864.P11381149855617850038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A016789 n - 1).toNat : ℚ) / 2

end

end A351864.P11381149855617850038

namespace A351864

/-- `A001316(A016789(n)-1)/2` -/
def P11381149855617850038.Spec : Prop :=
  ∀ n, P11381149855617850038.a n = (A351864 n : ℚ)

end A351864

/-! ## A351864.P14301592204339117559

`A000010(A001316(2*n+1+n))`
-/

namespace A351864.P14301592204339117559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001316 (2 * n + 1 + n)).toNat

end

end A351864.P14301592204339117559

namespace A351864

/-- `A000010(A001316(2*n+1+n))` -/
def P14301592204339117559.Spec : Prop :=
  ∀ n, P14301592204339117559.a n = A351864 n

end A351864

/-! ## A351864.P6929393577234977348

`A387064(A001316(2*n+n+1))`
-/

namespace A351864.P6929393577234977348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387064 (A001316 (2 * n + (n + 1))).toNat

end

end A351864.P6929393577234977348

namespace A351864

/-- `A387064(A001316(2*n+n+1))` -/
def P6929393577234977348.Spec : Prop :=
  ∀ n, P6929393577234977348.a n = A351864 n

end A351864

/-! ## A351864.P4783882780235778070

`A361145(A006257(2*n+1+n))`
-/

namespace A351864.P4783882780235778070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (A006257 (2 * n + 1 + n)).toNat

end

end A351864.P4783882780235778070

namespace A351864

/-- `A361145(A006257(2*n+1+n))` -/
def P4783882780235778070.Spec : Prop :=
  ∀ n, P4783882780235778070.a n = A351864 n

end A351864

/-! ## A351864.P12262975786695323400

`A001316(A016789(2*n))/2`
-/

namespace A351864.P12262975786695323400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A016789 (2 * n)).toNat : ℚ) / 2

end

end A351864.P12262975786695323400

namespace A351864

/-- `A001316(A016789(2*n))/2` -/
def P12262975786695323400.Spec : Prop :=
  ∀ n, P12262975786695323400.a n = (A351864 n : ℚ)

end A351864

/-! ## A351864.P11384844990007069545

`A134660(2*n+1)/4`
-/

namespace A351864.P11384844990007069545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134660 (2 * n + 1) : ℚ) / 4

end

end A351864.P11384844990007069545

namespace A351864

/-- `A134660(2*n+1)/4` -/
def P11384844990007069545.Spec : Prop :=
  ∀ n, P11384844990007069545.a n = (A351864 n : ℚ)

end A351864

/-! ## A351864.P2212947097902184339

`A011782(A036555(2*n+1)-1)`
-/

namespace A351864.P2212947097902184339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A036555 (2 * n + 1) - 1).toNat

end

end A351864.P2212947097902184339

namespace A351864

/-- `A011782(A036555(2*n+1)-1)` -/
def P2212947097902184339.Spec : Prop :=
  ∀ n, P2212947097902184339.a n = A351864 n

end A351864

/-! ## A351864.P7389877451973078312

`A000079(A036555(2*n+1)-2)`
-/

namespace A351864.P7389877451973078312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A036555 (2 * n + 1) - 2).toNat

end

end A351864.P7389877451973078312

namespace A351864

/-- `A000079(A036555(2*n+1)-2)` -/
def P7389877451973078312.Spec : Prop :=
  ∀ n, P7389877451973078312.a n = A351864 n

end A351864

/-! ## A351864.P14401417694292495941

`A048896(3*n)`
-/

namespace A351864.P14401417694292495941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (3 * n)

end

end A351864.P14401417694292495941

namespace A351864

/-- `A048896(3*n)` -/
def P14401417694292495941.Spec : Prop :=
  ∀ n, P14401417694292495941.a n = A351864 n

end A351864

/-! ## A351864.P13495496975373647113

`2^A048881(3*n)`
-/

namespace A351864.P13495496975373647113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048881 (3 * n) : ℤ)

end

end A351864.P13495496975373647113

namespace A351864

/-- `2^A048881(3*n)` -/
def P13495496975373647113.Spec : Prop :=
  ∀ n, P13495496975373647113.a n = (A351864 n : ℚ)

end A351864

/-! ## A351864.P4044518801281585941

`A243036(A033627(n+2))`
-/

namespace A351864.P4044518801281585941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243036 (A033627 (n + 2)).toNat

end

end A351864.P4044518801281585941

namespace A351864

/-- `A243036(A033627(n+2))` -/
def P4044518801281585941.Spec : Prop :=
  ∀ n, P4044518801281585941.a n = A351864 n

end A351864

/-! ## A351864.P5054658090275107206

`A000079(A048881(3*n))`
-/

namespace A351864.P5054658090275107206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A048881 (3 * n)).toNat

end

end A351864.P5054658090275107206

namespace A351864

/-- `A000079(A048881(3*n))` -/
def P5054658090275107206.Spec : Prop :=
  ∀ n, P5054658090275107206.a n = A351864 n

end A351864

/-! ## A351864.P14685490505374810717

`A001316(A071055(3*n))`
-/

namespace A351864.P14685490505374810717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A071055 (3 * n)).toNat

end

end A351864.P14685490505374810717

namespace A351864

/-- `A001316(A071055(3*n))` -/
def P14685490505374810717.Spec : Prop :=
  ∀ n, P14685490505374810717.a n = A351864 n

end A351864

/-!
# A351865: Primes of the form x^2 + 64*y^2 that divide some Fermat number.

The programs for A351865, there is no canonical definition to state claims against.
-/

/-! ## A351865.P6237502040690240265

`A023394(lt[A195878(n+1), A244123(3*n+2)])`
-/

namespace A351865.P6237502040690240265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244123 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023394 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351865.P6237502040690240265

/-!
# A351868: In the decimal expansion of a number, replace each run of consecutive equal digits, say of k consecutive d's, by the decimal expansion of k*d.

The programs for A351868, the canonical program `A351868.P11906701836226209112` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351868 has offset 0).

The definition of A351868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351868.P11906701836226209112

`comp[98-11*n]%gcd(11, n)+lcm(11, n)/11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A351868

/-- `comp[98-11*n]%gcd(11, n)+lcm(11, n)/11` -/
def P11906701836226209112.Spec : Prop :=
  ∀ n, P11906701836226209112.a n = (A351868 n : ℚ)

end A351868

/-! ## A351868.P8307489917062982954

`A137564(n)+comp[98-11*n]%gcd(11, n)`
-/

namespace A351868.P8307489917062982954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % Nat.gcd 11 n : ℕ) : ℤ)

end

end A351868.P8307489917062982954

namespace A351868

/-- `A137564(n)+comp[98-11*n]%gcd(11, n)` -/
def P8307489917062982954.Spec : Prop :=
  ∀ n, P8307489917062982954.a n = A351868 n

end A351868

/-! ## A351868.P818998343690968264

`A007953(A321797(n))+n*(1-val(∏{p}[n^3, #], 11))`
-/

namespace A351868.P818998343690968264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A321797 n).toNat + (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))

end

end A351868.P818998343690968264

namespace A351868

/-- `A007953(A321797(n))+n*(1-val(∏{p}[n^3, #], 11))` -/
def P818998343690968264.Spec : Prop :=
  ∀ n, P818998343690968264.a n = A351868 n

end A351868

/-! ## A351868.P15383846748506225860

`A137564(n-n*(1-val(∏{p}[n^3, #], 11)))+A137564(n)`
-/

namespace A351868.P15383846748506225860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 ((n : ℤ) - (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))).toNat + A137564 n

end

end A351868.P15383846748506225860

namespace A351868

/-- `A137564(n-n*(1-val(∏{p}[n^3, #], 11)))+A137564(n)` -/
def P15383846748506225860.Spec : Prop :=
  ∀ n, P15383846748506225860.a n = A351868 n

end A351868

/-! ## A351868.P17873203625846413899

`A337864(n)+A010880(A321536(n))`
-/

namespace A351868.P17873203625846413899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n + A010880 (A321536 n).toNat

end

end A351868.P17873203625846413899

namespace A351868

/-- `A337864(n)+A010880(A321536(n))` -/
def P17873203625846413899.Spec : Prop :=
  ∀ n, P17873203625846413899.a n = A351868 n

end A351868

/-! ## A351868.P8754755665917182386

`A137564(n)*A334029(A139337(n))`
-/

namespace A351868.P8754755665917182386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n * A334029 (A139337 n).toNat

end

end A351868.P8754755665917182386

namespace A351868

/-- `A137564(n)*A334029(A139337(n))` -/
def P8754755665917182386.Spec : Prop :=
  ∀ n, P8754755665917182386.a n = A351868 n

end A351868

/-! ## A351868.P3296560497743147308

`n%A004820(A196222(2*n))`
-/

namespace A351868.P3296560497743147308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A004820 (A196222 (2 * n)).toNat)

end

end A351868.P3296560497743147308

namespace A351868

/-- `n%A004820(A196222(2*n))` -/
def P3296560497743147308.Spec : Prop :=
  ∀ n, P3296560497743147308.a n = A351868 n

end A351868

/-!
# A351870: a(n) is the least k such that A351868(k) = n.

The programs for A351870, there is no canonical definition to state claims against.
-/

/-! ## A351870.P6932580399256003220

`∪[A249517(n+1), comp[A002110(n+3)]]`
-/

namespace A351870.P6932580399256003220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249517 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A351870.P6932580399256003220

/-! ## A351870.P9855344752977211974

`∪[A249517(n+1), comp[A093534(n+5)]]`
-/

namespace A351870.P9855344752977211974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249517 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093534 (n + 5)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A351870.P9855344752977211974

/-! ## A351870.P2297058664660122773

`∪[comp[A140681(2*(n+1))], A249517(n+1)]`
-/

namespace A351870.P2297058664660122773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A351870.P2297058664660122773

/-! ## A351870.P346100967015048043

`∪[comp[A028896(2*n+3)], A249517(n+1)]`
-/

namespace A351870.P346100967015048043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (2 * n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A351870.P346100967015048043

/-! ## A351870.P6832504350919233689

`∪[comp[A135453(3*n+2)], A249517(n+1)]`
-/

namespace A351870.P6832504350919233689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A351870.P6832504350919233689

/-!
# A351872: Numbers k such that either k-1 or k/2 is prime, but not both.

The programs for A351872, there is no canonical definition to state claims against.
-/

/-! ## A351872.P14439152608731887111

`eq[exp(A242096(n)), A303336(n+1)]`
-/

namespace A351872.P14439152608731887111
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A242096 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A351872.P14439152608731887111

/-! ## A351872.P15683001433563795675

`eq[A046223(n+1), A303336(n+1)]`
-/

namespace A351872.P15683001433563795675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351872.P15683001433563795675

/-! ## A351872.P2014835657721263193

`eq[A014963(A017257(n)), A303336(n+1)]`
-/

namespace A351872.P2014835657721263193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017257 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351872.P2014835657721263193

/-! ## A351872.P118932976559788139

`eq[A000010(A152271(n)), A303336(n+1)]`
-/

namespace A351872.P118932976559788139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A152271 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351872.P118932976559788139

/-! ## A351872.P3314786941836123859

`eq[A194690(A242096(n+2)), A303336(n+1)]`
-/

namespace A351872.P3314786941836123859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194690 (A242096 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351872.P3314786941836123859

/-!
# A351873: Number of subsets of {1,2,...,n} such that no two elements differ by 3 or 4.

The programs for A351873, the canonical program `A351873.P1571200120709622794` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351873 has offset 0).

The definition of A351873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351873.P1571200120709622794

`a(n-1)+a(n-5)+a(n-6)+2*a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=16, a(6)=21`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A351873

/-- `a(n-1)+a(n-5)+a(n-6)+2*a(n-7)` -/
def P1571200120709622794.Spec : Prop :=
  ∀ n, (P1571200120709622794.a n : ℤ) = A351873 n

theorem P1571200120709622794.correct : P1571200120709622794.Spec := by
  intro n
  simp only [A351873]

end A351873

/-! ## A351873.P18172946670537516826

`A122921(A139698(n+1))-A003056(n)`
-/

namespace A351873.P18172946670537516826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A139698 (n + 1)).toNat - A003056 n

end

end A351873.P18172946670537516826

namespace A351873

/-- `A122921(A139698(n+1))-A003056(n)` -/
def P18172946670537516826.Spec : Prop :=
  ∀ n, P18172946670537516826.a n = A351873 n

end A351873

/-! ## A351873.P17719367030331665363

`A087686(lt[A299740(n+1), A285627(n+1)])`
-/

namespace A351873.P17719367030331665363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351873.P17719367030331665363

namespace A351873

/-- `A087686(lt[A299740(n+1), A285627(n+1)])` -/
def P17719367030331665363.Spec : Prop :=
  ∀ n, P17719367030331665363.a n = A351873 n

end A351873

/-!
# A351874: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 3, or 4.

The programs for A351874, the canonical program `A351874.P1498584254055362832` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351874 has offset 0).

The definition of A351874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351874.P1498584254055362832

`a(n-1)+a(n-5)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A351874

/-- `a(n-1)+a(n-5)+a(n-7)` -/
def P1498584254055362832.Spec : Prop :=
  ∀ n, (P1498584254055362832.a n : ℤ) = A351874 n

theorem P1498584254055362832.correct : P1498584254055362832.Spec := by
  intro n
  simp only [A351874]

end A351874

/-! ## A351874.P10946212827986894401

`eq[1, A000120(A391737(n+1))]`
-/

namespace A351874.P10946212827986894401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391737 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351874.P10946212827986894401

namespace A351874

/-- `eq[1, A000120(A391737(n+1))]` -/
def P10946212827986894401.Spec : Prop :=
  ∀ n, (P10946212827986894401.a n : ℤ) = A351874 n

end A351874

/-! ## A351874.P9428180601126964854

`∑[A226378(∏[A351706(n)])]`
-/

namespace A351874.P9428180601126964854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351874.P9428180601126964854

namespace A351874

/-- `∑[A226378(∏[A351706(n)])]` -/
def P9428180601126964854.Spec : Prop :=
  ∀ n, P9428180601126964854.a n = A351874 n

end A351874

/-! ## A351874.P10863106714115791711

`∑[A156080(A001611(n))+1]`
-/

namespace A351874.P10863106714115791711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156080 (A001611 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351874.P10863106714115791711

namespace A351874

/-- `∑[A156080(A001611(n))+1]` -/
def P10863106714115791711.Spec : Prop :=
  ∀ n, P10863106714115791711.a n = A351874 n

end A351874

/-! ## A351874.P2542507099743394669

`∑[A094824(A112205(2*n))]`
-/

namespace A351874.P2542507099743394669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094824 (A112205 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351874.P2542507099743394669

namespace A351874

/-- `∑[A094824(A112205(2*n))]` -/
def P2542507099743394669.Spec : Prop :=
  ∀ n, P2542507099743394669.a n = A351874 n

end A351874

/-!
# A351875: Positive difference of the distinct prime factors of A129521(n).

The programs for A351875, the canonical program `A351875.P8085341493502060080` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351875 has offset 1).

The definition of A351875 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005382, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351875.P8085341493502060080

`A005382(n+1)-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351875

/-- `A005382(n+1)-1` -/
def P8085341493502060080.Spec : Prop :=
  ∀ n, P8085341493502060080.a n = A351875 (n + 1)

theorem P8085341493502060080.correct : P8085341493502060080.Spec := by
  intro n
  simp only [A351875, Nat.add_sub_cancel]

end A351875

/-! ## A351875.P12811957598711153713

`A089965(n+1)/2`
-/

namespace A351875.P12811957598711153713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089965 (n + 1) : ℚ) / 2

end

end A351875.P12811957598711153713

namespace A351875

/-- `A089965(n+1)/2` -/
def P12811957598711153713.Spec : Prop :=
  ∀ n, P12811957598711153713.a n = (A351875 (n + 1) : ℚ)

end A351875

/-! ## A351875.P17883373298468038993

`floor(A005383(n+1)/2)`
-/

namespace A351875.P17883373298468038993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005383 (n + 1) : ℚ) / 2⌋

end

end A351875.P17883373298468038993

namespace A351875

/-- `floor(A005383(n+1)/2)` -/
def P17883373298468038993.Spec : Prop :=
  ∀ n, P17883373298468038993.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P10325620420919921249

`A077068(n+1)/2-1`
-/

namespace A351875.P10325620420919921249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077068 (n + 1) : ℚ) / 2 - 1

end

end A351875.P10325620420919921249

namespace A351875

/-- `A077068(n+1)/2-1` -/
def P10325620420919921249.Spec : Prop :=
  ∀ n, P10325620420919921249.a n = (A351875 (n + 1) : ℚ)

end A351875

/-! ## A351875.P3217744414939333094

`(A340509(n+1)-2)/3`
-/

namespace A351875.P3217744414939333094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340509 (n + 1) - 2 : ℚ) / 3

end

end A351875.P3217744414939333094

namespace A351875

/-- `(A340509(n+1)-2)/3` -/
def P3217744414939333094.Spec : Prop :=
  ∀ n, P3217744414939333094.a n = (A351875 (n + 1) : ℚ)

end A351875

/-! ## A351875.P12872278775996622390

`A074258(n)+a(n-1)` with `a(0)=1`
-/

namespace A351875.P12872278775996622390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074258 n + a (n - 1)

end

end A351875.P12872278775996622390

namespace A351875

/-- `A074258(n)+a(n-1)` -/
def P12872278775996622390.Spec : Prop :=
  ∀ n, P12872278775996622390.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P1502935710678318650

`A340509(n+1)-A077068(n+1)`
-/

namespace A351875.P1502935710678318650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) - A077068 (n + 1)

end

end A351875.P1502935710678318650

namespace A351875

/-- `A340509(n+1)-A077068(n+1)` -/
def P1502935710678318650.Spec : Prop :=
  ∀ n, P1502935710678318650.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P7710437205071544952

`A340509(n+1)%A005382(n+1)`
-/

namespace A351875.P7710437205071544952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340509 (n + 1)) (A005382 (n + 1))

end

end A351875.P7710437205071544952

namespace A351875

/-- `A340509(n+1)%A005382(n+1)` -/
def P7710437205071544952.Spec : Prop :=
  ∀ n, P7710437205071544952.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P16476481166488839140

`A340509(n+1)-(A005383(n+1)+1)`
-/

namespace A351875.P16476481166488839140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) - (A005383 (n + 1) + 1)

end

end A351875.P16476481166488839140

namespace A351875

/-- `A340509(n+1)-(A005383(n+1)+1)` -/
def P16476481166488839140.Spec : Prop :=
  ∀ n, P16476481166488839140.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P18048526052573106686

`A129521(n+1)/A005383(n+1)-1`
-/

namespace A351875.P18048526052573106686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129521 (n + 1) : ℚ) / (A005383 (n + 1) : ℚ) - 1

end

end A351875.P18048526052573106686

namespace A351875

/-- `A129521(n+1)/A005383(n+1)-1` -/
def P18048526052573106686.Spec : Prop :=
  ∀ n, P18048526052573106686.a n = (A351875 (n + 1) : ℚ)

end A351875

/-! ## A351875.P12605747451774918143

`A008683(A030059(n+1))+A005382(n+1)`
-/

namespace A351875.P12605747451774918143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A030059 (n + 1)).toNat + A005382 (n + 1)

end

end A351875.P12605747451774918143

namespace A351875

/-- `A008683(A030059(n+1))+A005382(n+1)` -/
def P12605747451774918143.Spec : Prop :=
  ∀ n, P12605747451774918143.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P17778302101111683089

`p?[A174568(n+1)]-1`
-/

namespace A351875.P17778302101111683089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A351875.P17778302101111683089

namespace A351875

/-- `p?[A174568(n+1)]-1` -/
def P17778302101111683089.Spec : Prop :=
  ∀ n, P17778302101111683089.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P3020255006628186688

`∩[A045331(n+1), A174568(n+1)]-1`
-/

namespace A351875.P3020255006628186688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A351875.P3020255006628186688

namespace A351875

/-- `∩[A045331(n+1), A174568(n+1)]-1` -/
def P3020255006628186688.Spec : Prop :=
  ∀ n, P3020255006628186688.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P14654331178986785323

`∩[A040116(n+1), A174568(n+1)]-1`
-/

namespace A351875.P14654331178986785323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A351875.P14654331178986785323

namespace A351875

/-- `∩[A040116(n+1), A174568(n+1)]-1` -/
def P14654331178986785323.Spec : Prop :=
  ∀ n, P14654331178986785323.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P15472882003086578835

`p?[A068080(n+1)]-1`
-/

namespace A351875.P15472882003086578835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A351875.P15472882003086578835

namespace A351875

/-- `p?[A068080(n+1)]-1` -/
def P15472882003086578835.Spec : Prop :=
  ∀ n, P15472882003086578835.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P4082952872607065297

`A006093(A137288(n+1))`
-/

namespace A351875.P4082952872607065297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A137288 (n + 1)).toNat

end

end A351875.P4082952872607065297

namespace A351875

/-- `A006093(A137288(n+1))` -/
def P4082952872607065297.Spec : Prop :=
  ∀ n, P4082952872607065297.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P6669469752918868373

`record[A023585(n+1)-A000040(n+1)]`
-/

namespace A351875.P6669469752918868373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023585 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351875.P6669469752918868373

namespace A351875

/-- `record[A023585(n+1)-A000040(n+1)]` -/
def P6669469752918868373.Spec : Prop :=
  ∀ n, P6669469752918868373.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P7255946124870125807

`A000010(A005382(n+1))`
-/

namespace A351875.P7255946124870125807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005382 (n + 1)).toNat

end

end A351875.P7255946124870125807

namespace A351875

/-- `A000010(A005382(n+1))` -/
def P7255946124870125807.Spec : Prop :=
  ∀ n, P7255946124870125807.a n = A351875 (n + 1)

end A351875

/-! ## A351875.P14607347148460488843

`record[A000010(A174568(n+1))]`
-/

namespace A351875.P14607347148460488843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A174568 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351875.P14607347148460488843

namespace A351875

/-- `record[A000010(A174568(n+1))]` -/
def P14607347148460488843.Spec : Prop :=
  ∀ n, P14607347148460488843.a n = A351875 (n + 1)

end A351875

/-!
# A351876: Numbers whose trajectory under iteration of the product of cubes of nonzero digits map includes 1 (conjectured).

The programs for A351876, there is no canonical definition to state claims against.
-/

/-! ## A351876.P8292481282814846096

`∑[gcd(n+5, A036820(A187829(n+1)))]`
-/

namespace A351876.P8292481282814846096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A036820 (A187829 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351876.P8292481282814846096

/-! ## A351876.P17198928635401706175

`lt[A095734(∏{digits}[n, #²]), atan(n)]`
-/

namespace A351876.P17198928635401706175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095734 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).prod

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f3 j) n

end

end A351876.P17198928635401706175

/-! ## A351876.P10755951040275090374

`lt[n², A004526(A051467(3*n+4))]`
-/

namespace A351876.P10755951040275090374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A051467 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351876.P10755951040275090374

/-! ## A351876.P10093191977031582966

`eq[A110161(A303851(n)), A188020(n+1)]`
-/

namespace A351876.P10093191977031582966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A303851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351876.P10093191977031582966

/-! ## A351876.P9012076465554226832

`lt[A213919(A328244(n+1)), A000005(n+1)]`
-/

namespace A351876.P9012076465554226832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213919 (A328244 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351876.P9012076465554226832

/-!
# A351877: Nonnegative integers whose trajectory under iteration of taking the absolute value of the alternating sum of the cubes of the digits includes zero.

The programs for A351877, there is no canonical definition to state claims against.
-/

/-! ## A351877.P8325155582676025162

`lt[A020485(A047842(n)), A254960(n+1)]`
-/

namespace A351877.P8325155582676025162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A047842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351877.P8325155582676025162

/-! ## A351877.P11087039268552654913

`eq[A070335(n), A238531(A061674(n))]`
-/

namespace A351877.P11087039268552654913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (A061674 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351877.P11087039268552654913

/-! ## A351877.P16920647476090871266

`eq[A055017(n), A080224(A116858(n+1))]`
-/

namespace A351877.P16920647476090871266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A116858 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351877.P16920647476090871266

/-! ## A351877.P6940221507505522301

`eq[A011582(n), A025468(A220517(n+1))]`
-/

namespace A351877.P6940221507505522301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A220517 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351877.P6940221507505522301

/-!
# A351878: Products of four distinct primes between products of two primes.

The programs for A351878, there is no canonical definition to state claims against.
-/

/-! ## A351878.P4792257013483782492

`∩[A046386(n+1), A124936(n+1)]`
-/

namespace A351878.P4792257013483782492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351878.P4792257013483782492

/-!
# A351880: Expansion of e.g.f. 1 / (1 - x)^cos(x).

The programs for A351880, there is no canonical definition to state claims against.
-/

/-! ## A351880.P9664196466599895668

`abs(A009133(n)-A009579(n))`
-/

namespace A351880.P9664196466599895668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009133 n - A009579 n|

end

end A351880.P9664196466599895668

/-! ## A351880.P16931054427885671526

`(A009133(n)-A009579(n))*A056594(2*n)`
-/

namespace A351880.P16931054427885671526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009133 n - A009579 n) * A056594 (2 * n)

end

end A351880.P16931054427885671526

/-! ## A351880.P7627029286686552360

`gcd(A009133(n)-A009579(n), (A126473(n)+2)%3-1)`
-/

namespace A351880.P7627029286686552360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009133 n - A009579 n) (Int.tmod (A126473 n + 2) 3 - 1)

end

end A351880.P7627029286686552360

/-! ## A351880.P5282897657582484107

`abs(2*A009579(n)-A009192(n))`
-/

namespace A351880.P5282897657582484107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A009579 n - A009192 n|

end

end A351880.P5282897657582484107

/-! ## A351880.P9013051059547810244

`abs(A009133(n)-(A009192(n)-A009133(n)))`
-/

namespace A351880.P9013051059547810244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009133 n - (A009192 n - A009133 n)|

end

end A351880.P9013051059547810244

/-!
# A351881: Expansion of e.g.f. 1 / (1 - x)^cosh(x).

The programs for A351881, there is no canonical definition to state claims against.
-/

/-! ## A351881.P2213463601879986130

`abs(A009134(n)-A009580(n))`
-/

namespace A351881.P2213463601879986130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009134 n - A009580 n|

end

end A351881.P2213463601879986130

/-! ## A351881.P15562038088612450693

`abs(2*A009134(n)-A009193(n))`
-/

namespace A351881.P15562038088612450693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A009134 n - A009193 n|

end

end A351881.P15562038088612450693

/-! ## A351881.P12910326756788153912

`abs(A009193(n)-A009580(n)-A009580(n))`
-/

namespace A351881.P12910326756788153912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009193 n - A009580 n - A009580 n|

end

end A351881.P12910326756788153912

/-! ## A351881.P4782940725412697133

`(2*A009134(n)-A009193(n))*A033999(n)`
-/

namespace A351881.P4782940725412697133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A009134 n - A009193 n) * A033999 n

end

end A351881.P4782940725412697133

/-!
# A351882: Expansion of e.g.f. 1 / (1 - x)^sec(x).

The programs for A351882, there is no canonical definition to state claims against.
-/

/-! ## A351882.P7982293689023286829

`abs(A009137(n)-A009582(n))`
-/

namespace A351882.P7982293689023286829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009137 n - A009582 n|

end

end A351882.P7982293689023286829

/-! ## A351882.P5869122457302080563

`abs(A009196(n)-A009582(n)-A009582(n))`
-/

namespace A351882.P5869122457302080563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009196 n - A009582 n - A009582 n|

end

end A351882.P5869122457302080563

/-! ## A351882.P13578072202275629465

`A171481(A030873(n+1))`
-/

namespace A351882.P13578072202275629465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171481 (A030873 (n + 1)).toNat

end

end A351882.P13578072202275629465

/-!
# A351883: Expansion of e.g.f. 1 / (1 - x)^sech(x).

The programs for A351883, there is no canonical definition to state claims against.
-/

/-! ## A351883.P2111613412685122293

`abs(A009138(n)-A009583(n))`
-/

namespace A351883.P2111613412685122293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009138 n - A009583 n|

end

end A351883.P2111613412685122293

/-! ## A351883.P16910870214270335920

`abs(2*A009138(n)-A009197(n))`
-/

namespace A351883.P16910870214270335920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A009138 n - A009197 n|

end

end A351883.P16910870214270335920

/-! ## A351883.P1549224716941778372

`A323524(A337719(n+1))`
-/

namespace A351883.P1549224716941778372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323524 (A337719 (n + 1)).toNat

end

end A351883.P1549224716941778372

/-!
# A351884: Irregular triangle read by rows: T(n,k) is the number of sets of lists with distinct block sizes (as in A088311(n)) and containing exactly k lists.

The programs for A351884, there is no canonical definition to state claims against.
-/

/-! ## A351884.P12916794175110469625

`A003963(A278258(n))*A227551(n)`
-/

namespace A351884.P12916794175110469625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A278258 n).toNat * A227551 n

end

end A351884.P12916794175110469625

/-! ## A351884.P1111926597162601324

`and(A000010(A186764(n)), A018521(n+1))`
-/

namespace A351884.P1111926597162601324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A186764 n).toNat) (A018521 (n + 1))

end

end A351884.P1111926597162601324

/-!
# A351886: a(n) is the number of k < n such that a(k) AND n = 0 (where AND denotes the bitwise AND operator).

The programs for A351886, there is no canonical definition to state claims against.
-/

/-! ## A351886.P2356986550401933845

`A341392(eq[2, A305973(n²+6)])%A341374(4*n)`
-/

namespace A351886.P2356986550401933845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n ^ 2 + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A341374 (4 * n))

end

end A351886.P2356986550401933845

/-! ## A351886.P9054731820747322330

`A341392(sqrt((A050265(n+1)-11)/2))%A341374(4*n)`
-/

namespace A351886.P9054731820747322330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341392 (SequenceMachineLib.roundAway (Real.sqrt ((A050265 (n + 1) - 11 : ℚ) / 2 : ℝ))).toNat) (A341374 (4 * n))

end

end A351886.P9054731820747322330

/-! ## A351886.P12265746243043128358

`A341392(n)+A091337(A274728(3*n+4)+A242649(2*(n+2)))`
-/

namespace A351886.P12265746243043128358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 n + A091337 (A274728 (3 * n + 4) + A242649 (2 * (n + 2))).toNat

end

end A351886.P12265746243043128358

/-!
# A351887: a(n) is the number of k < n such that a(k) AND n = a(k) (where AND denotes the bitwise AND operator).

The programs for A351887, there is no canonical definition to state claims against.
-/

/-! ## A351887.P5160920733791826721

`A001222(A131800(n)+A131766(2*n))`
-/

namespace A351887.P5160920733791826721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A131800 n + A131766 (2 * n)).toNat

end

end A351887.P5160920733791826721

/-!
# A351888: Number of spanning trees of the graph acquired by placing a vertex in each of the n^2 cells of a triangle of size n in a triangular grid and placing edges between two vertices whenever two cells share a side.

The programs for A351888, there is no canonical definition to state claims against.
-/

/-! ## A351888.P16685801597980449089

`A174579(n)/3^n`
-/

namespace A351888.P16685801597980449089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174579 n : ℚ) / (3 ^ n : ℚ)

end

end A351888.P16685801597980449089

/-! ## A351888.P12719430741658564173

`floor(A174579(n)/A000244(n))`
-/

namespace A351888.P12719430741658564173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174579 n : ℚ) / (A000244 n : ℚ)⌋

end

end A351888.P12719430741658564173

/-! ## A351888.P3589247229562413519

`floor(A174579(n)/Δ[A003462(n)])`
-/

namespace A351888.P3589247229562413519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174579 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A351888.P3589247229562413519

/-! ## A351888.P6706224276911688124

`A174579(n)/A000244(n)*A007318(∑[n+2])`
-/

namespace A351888.P6706224276911688124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174579 n : ℚ) / (A000244 n : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A351888.P6706224276911688124

/-! ## A351888.P11450164240159590815

`A174579(n)/A000244(n)*A001222(A002148(n))`
-/

namespace A351888.P11450164240159590815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174579 n : ℚ) / (A000244 n : ℚ) * (A001222 (A002148 n).toNat : ℚ)

end

end A351888.P11450164240159590815

/-!
# A351889: Table T(n,k) read by downward antidiagonals: period of n-step Fibonacci numbers mod k, n >= 1, k >= 1.

The programs for A351889, there is no canonical definition to state claims against.
-/

/-! ## A351889.P10624569948573494908

`A155788(n)%(A000196(A145905(n)²)-A334709(n+2))+1`
-/

namespace A351889.P10624569948573494908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155788 n) (A000196 (A145905 n ^ 2).toNat - A334709 (n + 2)) + 1

end

end A351889.P10624569948573494908

/-! ## A351889.P16261107241822241831

`val(A320487(A114276(n+1)), 2)`
-/

namespace A351889.P16261107241822241831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A320487 (A114276 (n + 1)).toNat).toNat 2

end

end A351889.P16261107241822241831

/-! ## A351889.P4549295857157202240

`A114276(n+1)%(16%A224843(n+1))`
-/

namespace A351889.P4549295857157202240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114276 (n + 1)) (Int.tmod 16 (A224843 (n + 1)))

end

end A351889.P4549295857157202240

/-! ## A351889.P6551033199517321208

`gcd(A151509(A184962(n)), A210229(n+1))`
-/

namespace A351889.P6551033199517321208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151509 (A184962 n).toNat) (A210229 (n + 1))

end

end A351889.P6551033199517321208

/-! ## A351889.P17820477902608763584

`A114276(n+1)%A059164(A059154(n))`
-/

namespace A351889.P17820477902608763584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114276 (n + 1)) (A059164 (A059154 n).toNat)

end

end A351889.P17820477902608763584

/-!
# A351891: Expansion of e.g.f. exp( sinh(sqrt(2)*x) / sqrt(2) ).

The programs for A351891, there is no canonical definition to state claims against.
-/

/-! ## A351891.P8877237523681549471

`A220658(or(A148065(n), A177483(n)))`
-/

namespace A351891.P8877237523681549471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (Int.lor (A148065 n) (A177483 n)).toNat

end

end A351891.P8877237523681549471

/-! ## A351891.P18344135247970537129

`or(A024430(n), A321391(A056455(n+1)))`
-/

namespace A351891.P18344135247970537129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024430 n) (A321391 (A056455 (n + 1)).toNat)

end

end A351891.P18344135247970537129

/-! ## A351891.P4461102645422097939

`A000926(A080010(n))`
-/

namespace A351891.P4461102645422097939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (A080010 n).toNat

end

end A351891.P4461102645422097939

/-!
# A351892: Expansion of e.g.f. exp( sinh(sqrt(3)*x) / sqrt(3) ).

The programs for A351892, there is no canonical definition to state claims against.
-/

/-! ## A351892.P9434280898914785541

`A262260(A005648(n))`
-/

namespace A351892.P9434280898914785541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262260 (A005648 n).toNat

end

end A351892.P9434280898914785541

/-! ## A351892.P7437642824395101703

`A262260(A148013(n))`
-/

namespace A351892.P7437642824395101703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262260 (A148013 n).toNat

end

end A351892.P7437642824395101703

/-!
# A351893: Numbers that contain only even digits in their factorial-base representation.

The programs for A351893, there is no canonical definition to state claims against.
-/

/-! ## A351893.P17158480652427022796

`A255411(eq[A275727(n), A276074(n)])`
-/

namespace A351893.P17158480652427022796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351893.P17158480652427022796

/-! ## A351893.P1811744890999124729

`eq[1, A000035(A227154(n))]`
-/

namespace A351893.P1811744890999124729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A227154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351893.P1811744890999124729

/-! ## A351893.P14184259635121169147

`eq[A002483(n), A276074(n)]`
-/

namespace A351893.P14184259635121169147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P14184259635121169147

/-! ## A351893.P4214553297334303343

`eq[A005871(n), A276074(n)]`
-/

namespace A351893.P4214553297334303343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005871 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P4214553297334303343

/-! ## A351893.P677680571638593725

`eq[A005872(n), A276074(n)]`
-/

namespace A351893.P677680571638593725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P677680571638593725

/-! ## A351893.P4232655468641138187

`eq[A005888(n), A276074(n)]`
-/

namespace A351893.P4232655468641138187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P4232655468641138187

/-! ## A351893.P4278685691226485405

`eq[A005926(n), A276074(n)]`
-/

namespace A351893.P4278685691226485405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P4278685691226485405

/-! ## A351893.P859978766011768819

`eq[A005929(n), A276074(n)]`
-/

namespace A351893.P859978766011768819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005929 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P859978766011768819

/-! ## A351893.P12756266013498091200

`eq[A055028(n), A276074(n)]`
-/

namespace A351893.P12756266013498091200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P12756266013498091200

/-! ## A351893.P17915455148704075757

`eq[A055671(n), A276074(n)]`
-/

namespace A351893.P17915455148704075757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P17915455148704075757

/-! ## A351893.P7273004189937069276

`eq[A055672(n), A276074(n)]`
-/

namespace A351893.P7273004189937069276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P7273004189937069276

/-! ## A351893.P12242294692905328694

`eq[A085121(n), A276074(n)]`
-/

namespace A351893.P12242294692905328694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P12242294692905328694

/-! ## A351893.P4651250990260878741

`eq[A042970(n+1), A276074(n)]`
-/

namespace A351893.P4651250990260878741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P4651250990260878741

/-! ## A351893.P11154756333859272266

`eq[A225350(n+1), A276074(n)]`
-/

namespace A351893.P11154756333859272266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P11154756333859272266

/-! ## A351893.P2621413340596175846

`eq[A255411(n)*A276074(n), A276074(n)²]`
-/

namespace A351893.P2621413340596175846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n * A276074 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P2621413340596175846

/-! ## A351893.P5952575286108810243

`eq[A035675(n+1), A276074(n)]`
-/

namespace A351893.P5952575286108810243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351893.P5952575286108810243

/-!
# A351894: Numbers that contain only odd digits in their factorial-base representation.

The programs for A351894, there is no canonical definition to state claims against.
-/

/-! ## A351894.P10597157723500846714

`eq[1, A208575(n)%2]`
-/

namespace A351894.P10597157723500846714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208575 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351894.P10597157723500846714

/-! ## A351894.P4829941454167796074

`eq[0, A056594(A208575(n))]`
-/

namespace A351894.P4829941454167796074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A208575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351894.P4829941454167796074

/-! ## A351894.P12023793912290562479

`eq[1, A062157(A208575(n)+2)]`
-/

namespace A351894.P12023793912290562479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A208575 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351894.P12023793912290562479

/-! ## A351894.P6072202737014431178

`eq[1, A165326(A208575(n)+2)]`
-/

namespace A351894.P6072202737014431178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A208575 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351894.P6072202737014431178

/-! ## A351894.P9966338193200658449

`eq[1, A176289(A208575(n)+2)]`
-/

namespace A351894.P9966338193200658449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 (A208575 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351894.P9966338193200658449

/-! ## A351894.P17967094134583315833

`eq[A010215(n), A062157(A208575(n))]`
-/

namespace A351894.P17967094134583315833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A208575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351894.P17967094134583315833

/-! ## A351894.P12873462272571640821

`eq[A010215(A208575(n)), A165326(n)]`
-/

namespace A351894.P12873462272571640821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 (A208575 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351894.P12873462272571640821

/-! ## A351894.P13458853486219236416

`eq[A000038(n)!, A010215(A208575(n))]`
-/

namespace A351894.P13458853486219236416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 (A208575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351894.P13458853486219236416

/-! ## A351894.P7132989696442991051

`eq[2-A062157(n), A062157(A208575(n))]`
-/

namespace A351894.P7132989696442991051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A208575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351894.P7132989696442991051

/-! ## A351894.P12800117944227452226

`eq[A062157(A208575(n)), A176289(n)]`
-/

namespace A351894.P12800117944227452226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A208575 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351894.P12800117944227452226

/-!
# A351895: Numbers with an equal number of odd and even digits in their factorial-base representation.

The programs for A351895, there is no canonical definition to state claims against.
-/

/-! ## A351895.P18074799407110278378

`eq[A007623(n), A355504(A007623(n))]`
-/

namespace A351895.P18074799407110278378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355504 (A007623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351895.P18074799407110278378

/-! ## A351895.P8963110989223450045

`eq[A014963(A126105(n+1)), A334483(n)]`
-/

namespace A351895.P8963110989223450045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A126105 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334483 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351895.P8963110989223450045

/-!
# A351896: Numbers k such that k and k+2 both have an equal number of odd and even digits in their factorial-base representations.

The programs for A351896, there is no canonical definition to state claims against.
-/

/-! ## A351896.P5823596485757437197

`∩[A351895(n+1)-2, A351895(n+1)]`
-/

namespace A351896.P5823596485757437197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351895 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351896.P5823596485757437197

/-!
# A351898: Decimal expansion of metallic ratio for N = 14.

The programs for A351898, there is no canonical definition to state claims against.
-/

/-! ## A351898.P2434775402799245852

`(char[1]+1)*A174968(n)`
-/

namespace A351898.P2434775402799245852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A174968 (n + 1)

end

end A351898.P2434775402799245852

/-! ## A351898.P10183141428305791401

`A157214(n)-char[1-n^8]`
-/

namespace A351898.P10183141428305791401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 8 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157214 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A351898.P10183141428305791401

/-! ## A351898.P14295579613399083309

`A174968(n)+2*A063524(n)`
-/

namespace A351898.P14295579613399083309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174968 (n + 1) + 2 * A063524 n

end

end A351898.P14295579613399083309

/-! ## A351898.P2668228480846876626

`A174968(n)^(3-A130130(n))`
-/

namespace A351898.P2668228480846876626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174968 (n + 1) : ℚ) ^ (3 - A130130 n : ℤ)

end

end A351898.P2668228480846876626

/-! ## A351898.P11048021034590678501

`A174968(n)+A000038(A008611(n))`
-/

namespace A351898.P11048021034590678501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174968 (n + 1) + A000038 (A008611 n).toNat

end

end A351898.P11048021034590678501

/-! ## A351898.P13968515038664062210

`A174968(n)^A000034(A051702(n+1))`
-/

namespace A351898.P13968515038664062210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174968 (n + 1) : ℚ) ^ (A000034 (A051702 (n + 1)).toNat : ℤ)

end

end A351898.P13968515038664062210

/-! ## A351898.P10285945628164395802

`A105348(n)²+A174968(n)-A105348(n)`
-/

namespace A351898.P10285945628164395802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 n ^ 2 + (A174968 (n + 1) - A105348 n)

end

end A351898.P10285945628164395802

/-! ## A351898.P2471116094283496870

`A174968(n)^A014963(A001747(n+1))`
-/

namespace A351898.P2471116094283496870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174968 (n + 1) : ℚ) ^ (A014963 (A001747 (n + 1)).toNat : ℤ)

end

end A351898.P2471116094283496870

