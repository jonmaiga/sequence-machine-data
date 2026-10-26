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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A239700: Given: 1. alphabet of 3 elements {x1,x2,x3}; 2. vector V of size L(V) = 10; Let w(x1) = number of failed trials before the last event x1. For all the possible configurations {w(x1),w(x2),w(x3)} admitted in vectors of L(V)=10, the sequence gives the number of vectors having the same configuration {w(x1),w(x2),w(x3)}.

The programs for A239700, the canonical program `A239700.P18371025009612969375` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239700 has offset 1).

The definition of A239700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239700.P17678030402538353868

`A278657(A087479(n+1)+4)`
-/

namespace A239700.P17678030402538353868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A087479 (n + 1) + 4).toNat

end

end A239700.P17678030402538353868

namespace A239700

/-- `A278657(A087479(n+1)+4)` -/
def P17678030402538353868.Spec : Prop :=
  ∀ n, P17678030402538353868.a n = A239700 (n + 1)

end A239700

/-! ## A239700.P371715109957780553

`A328461(A212363(A087479(n+1)))`
-/

namespace A239700.P371715109957780553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A212363 (A087479 (n + 1)).toNat).toNat

end

end A239700.P371715109957780553

namespace A239700

/-- `A328461(A212363(A087479(n+1)))` -/
def P371715109957780553.Spec : Prop :=
  ∀ n, P371715109957780553.a n = A239700 (n + 1)

end A239700

/-! ## A239700.P16522134699461737524

`A032206(∏{p}[A087479(n+1), A337939(#)])`
-/

namespace A239700.P16522134699461737524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032206 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A337939 p).toNat + 10)

end

end A239700.P16522134699461737524

namespace A239700

/-- `A032206(∏{p}[A087479(n+1), A337939(#)])` -/
def P16522134699461737524.Spec : Prop :=
  ∀ n, P16522134699461737524.a n = A239700 (n + 1)

end A239700

/-! ## A239700.P12073241315788905976

`A032207(∏{p}[A087479(n+1), A337939(#)])`
-/

namespace A239700.P12073241315788905976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032207 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A337939 p).toNat + 11)

end

end A239700.P12073241315788905976

namespace A239700

/-- `A032207(∏{p}[A087479(n+1), A337939(#)])` -/
def P12073241315788905976.Spec : Prop :=
  ∀ n, P12073241315788905976.a n = A239700 (n + 1)

end A239700

/-! ## A239700.P5553017074039947929

`∏{p}[A087479(n+1), A261897(A210562(#))]`
-/

namespace A239700.P5553017074039947929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A261897 (A210562 p).toNat

end

end A239700.P5553017074039947929

namespace A239700

/-- `∏{p}[A087479(n+1), A261897(A210562(#))]` -/
def P5553017074039947929.Spec : Prop :=
  ∀ n, P5553017074039947929.a n = A239700 (n + 1)

end A239700

/-! ## A239700.P1853295412021281873

`dr(gcd(61, A286818(n)))`
-/

namespace A239700.P1853295412021281873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 61 (A286818 n) : ℤ)

end

end A239700.P1853295412021281873

namespace A239700

/-- `dr(gcd(61, A286818(n)))` -/
def P1853295412021281873.Spec : Prop :=
  ∀ n, (P1853295412021281873.a n : ℤ) = A239700 (n + 1)

end A239700

/-! ## A239700.P13441149564573727596

`A000420(val(A286818(n), 61))`
-/

namespace A239700.P13441149564573727596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (SequenceMachineLib.valuation (A286818 n).toNat 61)

end

end A239700.P13441149564573727596

namespace A239700

/-- `A000420(val(A286818(n), 61))` -/
def P13441149564573727596.Spec : Prop :=
  ∀ n, P13441149564573727596.a n = A239700 (n + 1)

end A239700

/-! ## A239700.P18371025009612969375

`gcd(A004273(n²), A013984(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A239700

/-- `gcd(A004273(n²), A013984(n))` -/
def P18371025009612969375.Spec : Prop :=
  ∀ n, (P18371025009612969375.a n : ℤ) = A239700 (n + 1)

theorem P18371025009612969375.correct : P18371025009612969375.Spec := by
  intro n
  simp only [A239700, Nat.add_sub_cancel]

end A239700

/-! ## A239700.P5711921026031664076

`gcd(A005811(n²), A130883(n))`
-/

namespace A239700.P5711921026031664076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005811 (n ^ 2)) (A130883 n)

end

end A239700.P5711921026031664076

namespace A239700

/-- `gcd(A005811(n²), A130883(n))` -/
def P5711921026031664076.Spec : Prop :=
  ∀ n, (P5711921026031664076.a n : ℤ) = A239700 (n + 1)

end A239700

/-! ## A239700.P3983990321411606578

`gcd(A005686(A118759(n)), A198435(n+1))`
-/

namespace A239700.P3983990321411606578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005686 (A118759 n).toNat) (A198435 (n + 1))

end

end A239700.P3983990321411606578

namespace A239700

/-- `gcd(A005686(A118759(n)), A198435(n+1))` -/
def P3983990321411606578.Spec : Prop :=
  ∀ n, (P3983990321411606578.a n : ℤ) = A239700 (n + 1)

end A239700

/-! ## A239700.P10343650816811768096

`A115323(gcd(A115310(n+1), A115310(n+5)))`
-/

namespace A239700.P10343650816811768096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115323 (Int.gcd (A115310 (n + 1)) (A115310 (n + 5)))

end

end A239700.P10343650816811768096

namespace A239700

/-- `A115323(gcd(A115310(n+1), A115310(n+5)))` -/
def P10343650816811768096.Spec : Prop :=
  ∀ n, P10343650816811768096.a n = A239700 (n + 1)

end A239700

/-! ## A239700.P14258244474624328805

`gcd(7, A009223(A010000(n)))`
-/

namespace A239700.P14258244474624328805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A009223 (A010000 n).toNat)

end

end A239700.P14258244474624328805

namespace A239700

/-- `gcd(7, A009223(A010000(n)))` -/
def P14258244474624328805.Spec : Prop :=
  ∀ n, (P14258244474624328805.a n : ℤ) = A239700 (n + 1)

end A239700

/-! ## A239700.P2432867243389738990

`gcd(A000533(n), A013632(A004957(n)))`
-/

namespace A239700.P2432867243389738990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000533 n) (A013632 (A004957 n).toNat)

end

end A239700.P2432867243389738990

namespace A239700

/-- `gcd(A000533(n), A013632(A004957(n)))` -/
def P2432867243389738990.Spec : Prop :=
  ∀ n, (P2432867243389738990.a n : ℤ) = A239700 (n + 1)

end A239700

/-! ## A239700.P15129486328325331566

`gcd(A009223(A000124(n)), A062397(n))`
-/

namespace A239700.P15129486328325331566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009223 (A000124 n).toNat) (A062397 n)

end

end A239700.P15129486328325331566

namespace A239700

/-- `gcd(A009223(A000124(n)), A062397(n))` -/
def P15129486328325331566.Spec : Prop :=
  ∀ n, (P15129486328325331566.a n : ℤ) = A239700 (n + 1)

end A239700

/-! ## A239700.P3019753032578724774

`gcd(A030102(A077197(n+1)), A122002(n+1))`
-/

namespace A239700.P3019753032578724774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030102 (A077197 (n + 1)).toNat) (A122002 (n + 1))

end

end A239700.P3019753032578724774

namespace A239700

/-- `gcd(A030102(A077197(n+1)), A122002(n+1))` -/
def P3019753032578724774.Spec : Prop :=
  ∀ n, (P3019753032578724774.a n : ℤ) = A239700 (n + 1)

end A239700

/-!
# A239701: Least k > 0 such that q(n)+k is prime, where q(n) is the number of strict partitions of n.

The programs for A239701, there is no canonical definition to state claims against.
-/

/-! ## A239701.P10265338410009828062

`A151800(A000009(n))-A000009(n)`
-/

namespace A239701.P10265338410009828062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000009 n).toNat - A000009 n

end

end A239701.P10265338410009828062

/-! ## A239701.P12855983951819511300

`A151800(∑[A087897(n)])-(A111133(n)+1)`
-/

namespace A239701.P12855983951819511300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (A111133 n + 1)

end

end A239701.P12855983951819511300

/-! ## A239701.P13779608452491086558

`A151800(A111133(n)+1)-(A111133(n)+1)`
-/

namespace A239701.P13779608452491086558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A111133 n + 1).toNat - (A111133 n + 1)

end

end A239701.P13779608452491086558

/-! ## A239701.P4146433463324711308

`A151800(A035457(2*n))-A035457(2*n)`
-/

namespace A239701.P4146433463324711308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A035457 (2 * n)).toNat - A035457 (2 * n)

end

end A239701.P4146433463324711308

/-! ## A239701.P6176301707355100010

`A151800(A172033(2*n))-A172033(2*n)`
-/

namespace A239701.P6176301707355100010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A172033 (2 * n)).toNat - A172033 (2 * n)

end

end A239701.P6176301707355100010

/-! ## A239701.P3385522508104185128

`A151800((A333147(n)+1)/2)-(A333147(n)+1)/2`
-/

namespace A239701.P3385522508104185128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (SequenceMachineLib.roundAway ((A333147 n + 1 : ℚ) / 2)).toNat : ℚ) - (A333147 n + 1 : ℚ) / 2

end

end A239701.P3385522508104185128

/-! ## A239701.P17712884449776144684

`A028310(A151800(A000009(n))%A000009(n))`
-/

namespace A239701.P17712884449776144684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A151800 (A000009 n).toNat) (A000009 n)).toNat

end

end A239701.P17712884449776144684

/-! ## A239701.P4721359569397851735

`A013632(A000009(n))`
-/

namespace A239701.P4721359569397851735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000009 n).toNat

end

end A239701.P4721359569397851735

/-! ## A239701.P10088940818005708864

`A013632(A054242(∑[n]))`
-/

namespace A239701.P10088940818005708864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A054242 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A239701.P10088940818005708864

/-! ## A239701.P1981708972765347292

`A013632(∑[A087897(n)])`
-/

namespace A239701.P1981708972765347292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239701.P1981708972765347292

/-!
# A239702: Triangle read by rows: T(n,k) = A239682(n)/(A239682(k)* A239682(n-k)).

The programs for A239702, there is no canonical definition to state claims against.
-/

/-! ## A239702.P1902142434345883506

`A238453(n)/A246465(n)`
-/

namespace A239702.P1902142434345883506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 n : ℚ) / (A246465 n : ℚ)

end

end A239702.P1902142434345883506

/-! ## A239702.P17142477534395160642

`∏{p}[A048804(n), #-1]`
-/

namespace A239702.P17142477534395160642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A239702.P17142477534395160642

/-! ## A239702.P8598139631497322804

`A000010(A048804(n))`
-/

namespace A239702.P8598139631497322804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048804 n).toNat

end

end A239702.P8598139631497322804

/-! ## A239702.P10717293048608339559

`A003958(2*A048804(n))`
-/

namespace A239702.P10717293048608339559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (2 * A048804 n).toNat

end

end A239702.P10717293048608339559

/-! ## A239702.P9906908234380791008

`A173557(2*A048804(n))`
-/

namespace A239702.P9906908234380791008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (2 * A048804 n).toNat

end

end A239702.P9906908234380791008

/-! ## A239702.P1018794513337341460

`A047994(lcm(2, A048804(n)))`
-/

namespace A239702.P1018794513337341460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (Int.lcm 2 (A048804 n))

end

end A239702.P1018794513337341460

/-! ## A239702.P1824089380798315368

`∏{p}[A048804(n)², A033879(#)]`
-/

namespace A239702.P1824089380798315368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033879 p

end

end A239702.P1824089380798315368

/-! ## A239702.P15599705631657670698

`∏{p}[A048804(n)², A322250(#)]`
-/

namespace A239702.P15599705631657670698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A322250 p

end

end A239702.P15599705631657670698

/-! ## A239702.P5493584275958147154

`A173557(A048804(n)²)`
-/

namespace A239702.P5493584275958147154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A048804 n ^ 2).toNat

end

end A239702.P5493584275958147154

/-!
# A239703: Number of bases b > 1 for which the base-b digital sum of n is b.

The programs for A239703, there is no canonical definition to state claims against.
-/

/-! ## A239703.P2337586909721960977

`A002620(A084307(n+1))%A004001(n+1)`
-/

namespace A239703.P2337586909721960977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002620 (A084307 (n + 1)).toNat) (A004001 (n + 1))

end

end A239703.P2337586909721960977

/-! ## A239703.P9391697228432906595

`A202177(A255166(n)+A020985(n))`
-/

namespace A239703.P9391697228432906595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202177 (A255166 n + A020985 n).toNat

end

end A239703.P9391697228432906595

/-! ## A239703.P9868603122555223821

`A257991(A000009(n+1)^(A000120(n)-1))`
-/

namespace A239703.P9868603122555223821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (SequenceMachineLib.roundAway ((A000009 (n + 1) : ℚ) ^ (A000120 n - 1 : ℤ))).toNat

end

end A239703.P9868603122555223821

/-! ## A239703.P6424708234192473144

`A122285(2*A000120(4*n^3))`
-/

namespace A239703.P6424708234192473144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 (2 * A000120 (4 * n ^ 3)).toNat

end

end A239703.P6424708234192473144

/-! ## A239703.P5111586265073281854

`A294442(n)-A173441(A182818(n))`
-/

namespace A239703.P5111586265073281854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 n - A173441 (A182818 n).toNat

end

end A239703.P5111586265073281854

/-!
# A239704: Number of bases b for which the base-b alternate digital sum of n is b.

The programs for A239704, there is no canonical definition to state claims against.
-/

/-! ## A239704.P4737100774148872285

`A239706(n+1)-A239705(n+1)`
-/

namespace A239704.P4737100774148872285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239706 (n + 1) - A239705 (n + 1)

end

end A239704.P4737100774148872285

/-! ## A239704.P11248995098629991300

`A239706(n+1)-A249832(A140620(n+1))`
-/

namespace A239704.P11248995098629991300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239706 (n + 1) - A249832 (A140620 (n + 1)).toNat

end

end A239704.P11248995098629991300

/-! ## A239704.P8708588498836311960

`A239706(n+1)*A254377(A007088(n))`
-/

namespace A239704.P8708588498836311960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239706 (n + 1) * A254377 (A007088 n).toNat

end

end A239704.P8708588498836311960

/-! ## A239704.P11484880160694021005

`and(A000217(A084380(n)), A239706(n+1))`
-/

namespace A239704.P11484880160694021005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A084380 n).toNat) (A239706 (n + 1))

end

end A239704.P11484880160694021005

/-! ## A239704.P8869197402646517847

`A239706(n+1)%A058913(n)`
-/

namespace A239704.P8869197402646517847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239706 (n + 1)) (A058913 n)

end

end A239704.P8869197402646517847

/-!
# A239705: Number of bases b for which the base-b alternate digital sum of n is -b.

The programs for A239705, there is no canonical definition to state claims against.
-/

/-! ## A239705.P10807640907216750247

`A239706(n+1)-A239704(n+1)`
-/

namespace A239705.P10807640907216750247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239706 (n + 1) - A239704 (n + 1)

end

end A239705.P10807640907216750247

/-! ## A239705.P1544320935301233434

`A010054(A000203(n+5)*A023503(n+4))`
-/

namespace A239705.P1544320935301233434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000203 (n + 5) * A023503 (n + 4)).toNat

end

end A239705.P1544320935301233434

/-! ## A239705.P5939634076165265900

`A285133(gcd(A181808(n+1), A272620(n+1)))`
-/

namespace A239705.P5939634076165265900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285133 (Int.gcd (A181808 (n + 1)) (A272620 (n + 1)))

end

end A239705.P5939634076165265900

/-! ## A239705.P14943938607516016622

`A359475(A294156(3*(n+1))+A032758(n+1))`
-/

namespace A239705.P14943938607516016622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359475 (A294156 (3 * (n + 1)) + A032758 (n + 1)).toNat

end

end A239705.P14943938607516016622

/-! ## A239705.P9079241217755288572

`and(A010059(A327722(n)), A356133(n+1))`
-/

namespace A239705.P9079241217755288572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010059 (A327722 n).toNat) (A356133 (n + 1))

end

end A239705.P9079241217755288572

/-!
# A239706: Number of bases b for which the absolute value of the base-b alternate digital sum of n is b.

The programs for A239706, there is no canonical definition to state claims against.
-/

/-! ## A239706.P17217627876877545920

`A239704(n+1)+A239705(n+1)`
-/

namespace A239706.P17217627876877545920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239704 (n + 1) + A239705 (n + 1)

end

end A239706.P17217627876877545920

/-! ## A239706.P4075456902208445631

`A239704(n+1)+A143731(A324867(n+1)+1)`
-/

namespace A239706.P4075456902208445631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239704 (n + 1) + A143731 (A324867 (n + 1) + 1).toNat

end

end A239706.P4075456902208445631

/-! ## A239706.P11290878750414207318

`A249832(A140620(n+1))+A239704(n+1)`
-/

namespace A239706.P11290878750414207318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A140620 (n + 1)).toNat + A239704 (n + 1)

end

end A239706.P11290878750414207318

/-! ## A239706.P17864303989937895150

`A353478(A299265(n+3)-A250120(n))+A239704(n+1)`
-/

namespace A239706.P17864303989937895150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (A299265 (n + 3) - A250120 n).toNat + A239704 (n + 1)

end

end A239706.P17864303989937895150

/-! ## A239706.P1066087122361142561

`A239704(A377486(n+1))`
-/

namespace A239706.P1066087122361142561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239704 (A377486 (n + 1)).toNat

end

end A239706.P1066087122361142561

/-!
# A239707: Number of bases b for which the base-b alternate digital sum of n is 0.

The programs for A239707, there is no canonical definition to state claims against.
-/

/-! ## A239707.P12797178836760782826

`A384212(n+1)+A000035(n)`
-/

namespace A239707.P12797178836760782826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384212 (n + 1) + A000035 n

end

end A239707.P12797178836760782826

/-! ## A239707.P11621899790792889066

`A384212(n+1)+log2(A000034(n))`
-/

namespace A239707.P11621899790792889066
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A384212 (n + 1) : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A239707.P11621899790792889066

/-! ## A239707.P15666854974062642540

`A384212(n+1)+A384212(A020639(n+2))`
-/

namespace A239707.P15666854974062642540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384212 (n + 1) + A384212 (A020639 (n + 2)).toNat

end

end A239707.P15666854974062642540

/-! ## A239707.P3484538079870064920

`A384212(n+1)+Δ[A004526(n)]`
-/

namespace A239707.P3484538079870064920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384212 (n + 1) + (f1 (n + 1) - f1 n)

end

end A239707.P3484538079870064920

/-! ## A239707.P4329903682966254360

`A384212(n+1)+A010060(A161890(n))`
-/

namespace A239707.P4329903682966254360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384212 (n + 1) + A010060 (A161890 n).toNat

end

end A239707.P4329903682966254360

/-!
# A239708: Numbers of the form m = 2^i + 2^j, where i > j >= 0, such that m - 1 is prime.

The programs for A239708, there is no canonical definition to state claims against.
-/

/-! ## A239708.P8085847301874048603

`A239712(n+1)+1`
-/

namespace A239708.P8085847301874048603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (n + 1) + 1

end

end A239708.P8085847301874048603

/-! ## A239708.P1858262947644050320

`∩[A018900(n+1), A128898(n+1)+1]`
-/

namespace A239708.P1858262947644050320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239708.P1858262947644050320

/-! ## A239708.P6167177588203903518

`∩[A099628(n+1), A100724(n+1)]+1`
-/

namespace A239708.P6167177588203903518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A239708.P6167177588203903518

/-! ## A239708.P16548464270959530378

`∩[A099628(n+1), A128898(n+1)]+1`
-/

namespace A239708.P16548464270959530378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A239708.P16548464270959530378

/-! ## A239708.P3743784391952647608

`∩[A099628(n+1), A188713(n+1)]+1`
-/

namespace A239708.P3743784391952647608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A239708.P3743784391952647608

/-! ## A239708.P4222189385426026552

`p?[A099628(n+1)]+1`
-/

namespace A239708.P4222189385426026552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A239708.P4222189385426026552

/-! ## A239708.P1932999678120480373

`p?[A018900(n+1)-1]+1`
-/

namespace A239708.P1932999678120480373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A239708.P1932999678120480373

/-! ## A239708.P7340892564957480329

`p?[A151757(n+1)-2]+1`
-/

namespace A239708.P7340892564957480329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A239708.P7340892564957480329

/-! ## A239708.P17313385726160424491

`record[∑{d}[A239712(A152271(n)), #]]`
-/

namespace A239708.P17313385726160424491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (A152271 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239708.P17313385726160424491

/-! ## A239708.P1013454020878806589

`∑{d}[A239712(A080513(2*n)), #]`
-/

namespace A239708.P1013454020878806589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (A080513 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A239708.P1013454020878806589

/-!
# A239709: Primes of the form m = b^i + b^j - 1, where i > j > 0, b > 1.

The programs for A239709, there is no canonical definition to state claims against.
-/

/-! ## A239709.P14607876096845483446

`p?[A242100(n+1)-1]`
-/

namespace A239709.P14607876096845483446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242100 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239709.P14607876096845483446

/-! ## A239709.P6848738121058421218

`p?[A307428(A093178(2*(n+1))+1)+A242100(n+1)]`
-/

namespace A239709.P6848738121058421218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A093178 (2 * (n + 1)) + 1).toNat + A242100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239709.P6848738121058421218

/-! ## A239709.P5419918530621808047

`p?[A307428(A000040(n+1))+A242100(n+1)]`
-/

namespace A239709.P5419918530621808047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A000040 (n + 1)).toNat + A242100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239709.P5419918530621808047

/-! ## A239709.P5382891926926731637

`record[A006530(A242100(n+1)-1)]`
-/

namespace A239709.P5382891926926731637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242100 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239709.P5382891926926731637

/-! ## A239709.P842533779460009936

`record[A020639(A242100(n+1)-1)]`
-/

namespace A239709.P842533779460009936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A242100 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239709.P842533779460009936

/-! ## A239709.P5215667954822357449

`p?[A066182(A242100(n+1))]`
-/

namespace A239709.P5215667954822357449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A242100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239709.P5215667954822357449

/-! ## A239709.P15535941336758160869

`p?[A047268(A242100(n+1)/2)]`
-/

namespace A239709.P15535941336758160869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (SequenceMachineLib.roundAway ((A242100 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239709.P15535941336758160869

/-! ## A239709.P5164606398233207365

`record[A014963(A242100(n+1)-1)]`
-/

namespace A239709.P5164606398233207365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A242100 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239709.P5164606398233207365

/-! ## A239709.P11589905739743866235

`record[A074399(A242100(n+1)-1)]`
-/

namespace A239709.P11589905739743866235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A242100 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239709.P11589905739743866235

/-! ## A239709.P8884404237715829683

`record[A093074(A242100(n+1)-1)]`
-/

namespace A239709.P8884404237715829683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A242100 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239709.P8884404237715829683

/-!
# A239710: Primes of the form m = b^i + b^j + 1, where i > j > 0, b > 1.

The programs for A239710, there is no canonical definition to state claims against.
-/

/-! ## A239710.P8986788526604164771

`p?[A242100(n+1)+1]`
-/

namespace A239710.P8986788526604164771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242100 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239710.P8986788526604164771

/-! ## A239710.P3879775029608454102

`record[A001414(A242100(n+1)+1)]`
-/

namespace A239710.P3879775029608454102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A242100 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239710.P3879775029608454102

/-! ## A239710.P6404520448873984337

`record[A006530(A242100(n+1)+1)]`
-/

namespace A239710.P6404520448873984337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242100 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239710.P6404520448873984337

/-! ## A239710.P17196947395895020252

`record[A020639(A242100(n+1)+1)]`
-/

namespace A239710.P17196947395895020252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A242100 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239710.P17196947395895020252

/-! ## A239710.P3352250637212858471

`record[(A242100(n+1)+1)/A001222(A242100(n+1)+1)]`
-/

namespace A239710.P3352250637212858471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242100 (n + 1) + 1 : ℚ) / (A001222 (A242100 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239710.P3352250637212858471

/-! ## A239710.P5236768678221048068

`record[A074399(A242100(n+1))]`
-/

namespace A239710.P5236768678221048068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A242100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239710.P5236768678221048068

/-! ## A239710.P4506766663624273663

`record[A014963(A242100(n+1)+1)]`
-/

namespace A239710.P4506766663624273663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A242100 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239710.P4506766663624273663

/-! ## A239710.P7805836425609496885

`record[A093074(A242100(n+1)+1)]`
-/

namespace A239710.P7805836425609496885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A242100 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239710.P7805836425609496885

/-!
# A239711: Twin primes of the form m = b^i + b^j +- 1, where i > j > 0, b > 1.

The programs for A239711, there is no canonical definition to state claims against.
-/

/-! ## A239711.P14999133927770853097

`A001097(lt[A004075(n+4), A053717(n)])`
-/

namespace A239711.P14999133927770853097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004075 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239711.P14999133927770853097

/-! ## A239711.P17494319052068809065

`A001097(lt[A004075(n+4), A001653(n+1)])`
-/

namespace A239711.P17494319052068809065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004075 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239711.P17494319052068809065

/-! ## A239711.P11906223390992108517

`A171688(lt[A347598(n), n²²])`
-/

namespace A239711.P11906223390992108517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347598 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A239711.P11906223390992108517

/-! ## A239711.P18094810592713674303

`A171688(lt[A347598(n)+1, A277341(n+1)])`
-/

namespace A239711.P18094810592713674303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347598 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239711.P18094810592713674303

/-! ## A239711.P5649416697555878961

`∩[A122079(n+1), A171688(n+1)]`
-/

namespace A239711.P5649416697555878961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239711.P5649416697555878961

/-!
# A239712: Primes of the form m = 2^i + 2^j - 1, where i > j >= 0.

The programs for A239712, there is no canonical definition to state claims against.
-/

/-! ## A239712.P16933719049344234265

`A239708(n+1)-1`
-/

namespace A239712.P16933719049344234265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239708 (n + 1) - 1

end

end A239712.P16933719049344234265

/-! ## A239712.P7291377021291354967

`∩[A099628(n+1), A128898(n+1)]`
-/

namespace A239712.P7291377021291354967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239712.P7291377021291354967

/-! ## A239712.P11502739516252875315

`∩[A099628(n+1), A188713(n+1)]`
-/

namespace A239712.P11502739516252875315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239712.P11502739516252875315

/-! ## A239712.P3489265076638637265

`∩[A128898(n+1), A340161(n)-2]`
-/

namespace A239712.P3489265076638637265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239712.P3489265076638637265

/-! ## A239712.P16934875313042861303

`∩[A018900(n+1)-1, A128898(n+1)]`
-/

namespace A239712.P16934875313042861303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239712.P16934875313042861303

/-! ## A239712.P2508593893154165474

`∩[A099628(n+1), A100724(n+1)]`
-/

namespace A239712.P2508593893154165474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239712.P2508593893154165474

/-! ## A239712.P4098683435454477931

`A286707(A003983(n+1))+A239708(n+1)`
-/

namespace A239712.P4098683435454477931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (A003983 (n + 1)).toNat + A239708 (n + 1)

end

end A239712.P4098683435454477931

/-! ## A239712.P4396478443811730772

`A286707(A014499(n+1))+A239708(n+1)`
-/

namespace A239712.P4396478443811730772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (A014499 (n + 1)).toNat + A239708 (n + 1)

end

end A239712.P4396478443811730772

/-! ## A239712.P6451112884500293235

`A286707(A087133(n+1))+A239708(n+1)`
-/

namespace A239712.P6451112884500293235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (A087133 (n + 1)).toNat + A239708 (n + 1)

end

end A239712.P6451112884500293235

/-! ## A239712.P7392284683022916032

`A286707(A265332(n+1))+A239708(n+1)`
-/

namespace A239712.P7392284683022916032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (A265332 (n + 1)).toNat + A239708 (n + 1)

end

end A239712.P7392284683022916032

/-! ## A239712.P10014665345766963617

`∩[A087118(n+1), A188713(n+1)]`
-/

namespace A239712.P10014665345766963617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239712.P10014665345766963617

/-!
# A239713: Primes of the form m = 3^i + 3^j - 1, where i > j >= 0.

The programs for A239713, there is no canonical definition to state claims against.
-/

/-! ## A239713.P17887087252236920759

`p?[A038464(n+1)-1]`
-/

namespace A239713.P17887087252236920759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038464 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239713.P17887087252236920759

/-! ## A239713.P2317512954280503267

`p?[A055235(n)-A051340(n)!]`
-/

namespace A239713.P2317512954280503267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n - (Nat.factorial (A051340 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239713.P2317512954280503267

/-! ## A239713.P8389384613700912941

`p?[A055235(A007401(n+1))-1]`
-/

namespace A239713.P8389384613700912941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 (A007401 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239713.P8389384613700912941

/-! ## A239713.P17984771625233210963

`p?[A191110(A018900(n+1)-1)]`
-/

namespace A239713.P17984771625233210963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191110 (A018900 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239713.P17984771625233210963

/-! ## A239713.P96108742048045850

`p?[A055235(n)-A035214(n+1)]`
-/

namespace A239713.P96108742048045850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n - A035214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239713.P96108742048045850

/-!
# A239714: Primes of the form m = 4^i + 4^j - 1, where i > j >= 0.

The programs for A239714, there is no canonical definition to state claims against.
-/

/-! ## A239714.P4947218402121480750

`∩[A234310(n+1), A239712(n+1)]`
-/

namespace A239714.P4947218402121480750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239714.P4947218402121480750

/-! ## A239714.P9329514972189583921

`A239712(eq[1, A239712(n+1)%3]+1)`
-/

namespace A239714.P9329514972189583921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239712 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239714.P9329514972189583921

/-! ## A239714.P7124279895848284637

`∩[A099628(n+1), A234310(n+1)]`
-/

namespace A239714.P7124279895848284637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239714.P7124279895848284637

/-! ## A239714.P16458777570425355387

`∩[A082554(n+1), A234310(n+1)]`
-/

namespace A239714.P16458777570425355387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239714.P16458777570425355387

/-! ## A239714.P17492092290734931685

`∩[A043570(n+1), A234310(n+1)]`
-/

namespace A239714.P17492092290734931685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239714.P17492092290734931685

/-!
# A239715: Primes of the form m = 5^i + 5^j - 1, where i > j >= 0.

The programs for A239715, there is no canonical definition to state claims against.
-/

/-! ## A239715.P10558154742007486362

`p?[A038474(n+1)-1]`
-/

namespace A239715.P10558154742007486362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038474 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239715.P10558154742007486362

/-! ## A239715.P5248285219533671524

`p?[A033042(A018900(n+1))-1]`
-/

namespace A239715.P5248285219533671524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A018900 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239715.P5248285219533671524

/-! ## A239715.P17179648377875184049

`p?[A055237(A007401(n+1))-1]`
-/

namespace A239715.P17179648377875184049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A007401 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239715.P17179648377875184049

/-! ## A239715.P2464592662759493551

`p?[A055237(lt[1, A055248(n)])-1]`
-/

namespace A239715.P2464592662759493551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239715.P2464592662759493551

/-! ## A239715.P7217151988282447580

`p?[A055237(lt[1, A055249(n)])-1]`
-/

namespace A239715.P7217151988282447580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239715.P7217151988282447580

/-!
# A239716: Primes of the form m = 6^i + 6^j - 1, where i > j >= 0.

The programs for A239716, there is no canonical definition to state claims against.
-/

/-! ## A239716.P13871247543972833817

`p?[A038478(n+1)-1]`
-/

namespace A239716.P13871247543972833817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038478 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239716.P13871247543972833817

/-! ## A239716.P16680852642418205775

`p?[A038479(n+1)-2]`
-/

namespace A239716.P16680852642418205775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038479 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239716.P16680852642418205775

/-!
# A239717: Primes of the form m = 7^i + 7^j - 1, where i > j >= 0.

The programs for A239717, there is no canonical definition to state claims against.
-/

/-! ## A239717.P2328849710253065272

`p?[A038481(n)-1]`
-/

namespace A239717.P2328849710253065272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038481 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239717.P2328849710253065272

/-! ## A239717.P10788395623872681214

`p?[A033044(n+1)-1]`
-/

namespace A239717.P10788395623872681214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239717.P10788395623872681214

/-!
# A239718: Primes of the form m = 8^i + 8^j - 1, where i > j >= 0.

The programs for A239718, there is no canonical definition to state claims against.
-/

/-! ## A239718.P3252930532739447437

`∩[A038484(n+1)-1, A239712(n+1)]`
-/

namespace A239718.P3252930532739447437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038484 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239718.P3252930532739447437

/-! ## A239718.P7031952773468891565

`∩[A038485(n+1)-2, A128898(n+1)]`
-/

namespace A239718.P7031952773468891565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038485 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239718.P7031952773468891565

/-! ## A239718.P1641275328793078690

`∩[A038485(n+1)-2, A188713(n+1)]`
-/

namespace A239718.P1641275328793078690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038485 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239718.P1641275328793078690

/-! ## A239718.P6074397401095055566

`∩[A038485(n+1)-2, A239712(n+1)]`
-/

namespace A239718.P6074397401095055566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038485 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239718.P6074397401095055566

/-! ## A239718.P12404168118786455957

`∩[A038484(n+1), A239708(n+1)]-1`
-/

namespace A239718.P12404168118786455957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239708 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A239718.P12404168118786455957

/-!
# A239719: Primes of the form m = 9^i + 9^j - 1, where i > j >= 0.

The programs for A239719, there is no canonical definition to state claims against.
-/

/-! ## A239719.P15016250826636455513

`p?[A038487(n+1)-1]`
-/

namespace A239719.P15016250826636455513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038487 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239719.P15016250826636455513

/-! ## A239719.P2963307577506403391

`p?[xor(3, A038487(n+2))]`
-/

namespace A239719.P2963307577506403391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A038487 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239719.P2963307577506403391

/-! ## A239719.P6524733772895047361

`p?[and(-7, A239713(n+1))]`
-/

namespace A239719.P6524733772895047361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (A239713 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239719.P6524733772895047361

/-!
# A239720: Primes of the form m = 10^i + 10^j - 1, where i > j >= 0.

The programs for A239720, there is no canonical definition to state claims against.
-/

/-! ## A239720.P17860022197138764387

`∩[A068148(n+1), A306855(n+1)]`
-/

namespace A239720.P17860022197138764387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239720.P17860022197138764387

/-! ## A239720.P13650937789875130578

`A306855(lt[A306853(n+1)², A306825(n+1)])`
-/

namespace A239720.P13650937789875130578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306853 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239720.P13650937789875130578

/-!
# A239723: Least number k such that n^k + (n+1)^k + ... + (n+k-1)^k is prime or 0 if no such number exists.

The programs for A239723, there is no canonical definition to state claims against.
-/

/-! ## A239723.P2535790702714598903

`A138805(A070824(n+1)^A007953(n))`
-/

namespace A239723.P2535790702714598903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138805 (SequenceMachineLib.roundAway ((A070824 (n + 1) : ℚ) ^ (A007953 n : ℤ))).toNat

end

end A239723.P2535790702714598903

/-! ## A239723.P786798017125170619

`A138805(A070824(n+1)^A076314(n))`
-/

namespace A239723.P786798017125170619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138805 (SequenceMachineLib.roundAway ((A070824 (n + 1) : ℚ) ^ (A076314 n : ℤ))).toNat

end

end A239723.P786798017125170619

/-! ## A239723.P15899699430347525869

`A287156(3*A255226(n+1))`
-/

namespace A239723.P15899699430347525869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (3 * A255226 (n + 1)).toNat

end

end A239723.P15899699430347525869

/-! ## A239723.P6423794470481569685

`A287156(lcm(3, A255226(n+1)))`
-/

namespace A239723.P6423794470481569685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (Int.lcm 3 (A255226 (n + 1)))

end

end A239723.P6423794470481569685

/-! ## A239723.P17502745125903342402

`(A115136(A115121(n+1)+1)+1)%3`
-/

namespace A239723.P17502745125903342402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115136 (A115121 (n + 1) + 1).toNat + 1) 3

end

end A239723.P17502745125903342402

/-!
# A239727: Numbers n such that the least prime of the form 2nk + 1 has a value of k that is larger than the k values for all smaller n.

The programs for A239727, there is no canonical definition to state claims against.
-/

/-! ## A239727.P7752100438846591561

`floor(A342364(n+1)/(2*A239746(n+1)))`
-/

namespace A239727.P7752100438846591561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342364 (n + 1) : ℚ) / (2 * A239746 (n + 1) : ℚ)⌋

end

end A239727.P7752100438846591561

/-! ## A239727.P12368692591753135412

`floor(A342364(n+1)/A005843(A239746(n+1)))`
-/

namespace A239727.P12368692591753135412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342364 (n + 1) : ℚ) / (A005843 (A239746 (n + 1)).toNat : ℚ)⌋

end

end A239727.P12368692591753135412

/-! ## A239727.P1026448487506649263

`A239800(A239746(n+1))`
-/

namespace A239727.P1026448487506649263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239800 (A239746 (n + 1)).toNat

end

end A239727.P1026448487506649263

/-! ## A239727.P4321889191565858773

`A239800(record[A016014(n+1)])`
-/

namespace A239727.P4321889191565858773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239727.P4321889191565858773

/-! ## A239727.P1205743761385803214

`A239800(record[A034693(2*(n+1))])`
-/

namespace A239727.P1205743761385803214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239727.P1205743761385803214

/-!
# A239728: Perfect power but neither square nor cube.

The programs for A239728, there is no canonical definition to state claims against.
-/

/-! ## A239728.P585037481515677284

`∩[A097054(n+1), A239870(n+1)]`
-/

namespace A239728.P585037481515677284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239728.P585037481515677284

/-! ## A239728.P13145969317883040106

`∩[A239870(n+1), A376173(n+1)]`
-/

namespace A239728.P13145969317883040106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239728.P13145969317883040106

/-! ## A239728.P14966487220218021047

`∩[A097054(n+1), A340585(n+1)]`
-/

namespace A239728.P14966487220218021047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239728.P14966487220218021047

/-! ## A239728.P14160986190947139481

`∩[A340585(n+1), A376173(n+1)]`
-/

namespace A239728.P14160986190947139481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239728.P14160986190947139481

/-! ## A239728.P12337266292640549568

`∩[A102834(n+1), A239870(n+1)]`
-/

namespace A239728.P12337266292640549568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239728.P12337266292640549568

/-!
# A239729: Number of partitions p of n such that if h = min(p), then h is an (h,2)-separator of p; see Comments.

The programs for A239729, there is no canonical definition to state claims against.
-/

/-! ## A239729.P14085026294179694837

`A238781(2*(n+1))`
-/

namespace A239729.P14085026294179694837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (2 * (n + 1))

end

end A239729.P14085026294179694837

/-! ## A239729.P4375780189311767195

`or(char[1], A238781(A103517(n)))`
-/

namespace A239729.P4375780189311767195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A238781 (A103517 n).toNat)

end

end A239729.P4375780189311767195

/-! ## A239729.P10457589389784979885

`A000027(A238781(n+2+n))`
-/

namespace A239729.P10457589389784979885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A238781 (n + 2 + n)).toNat

end

end A239729.P10457589389784979885

/-! ## A239729.P12794385770461784092

`and(-1, A238781(A004277(n+1)))`
-/

namespace A239729.P12794385770461784092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A238781 (A004277 (n + 1)).toNat)

end

end A239729.P12794385770461784092

/-! ## A239729.P6896787912510254677

`A238781(Δ[n²]+1)%A166046(n)`
-/

namespace A239729.P6896787912510254677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238781 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) (A166046 n)

end

end A239729.P6896787912510254677

/-!
# A239731: Difference between sum of first n primes and prime(prime(n)).

The programs for A239731, the canonical program `A239731.P14772903405319056009` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239731 has offset 1).

The definition of A239731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239731.P14772903405319056009

`A007504(n+1)-A006450(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A239731

/-- `A007504(n+1)-A006450(n+1)` -/
def P14772903405319056009.Spec : Prop :=
  ∀ n, P14772903405319056009.a n = A239731 (n + 1)

theorem P14772903405319056009.correct : P14772903405319056009.Spec := by
  intro n
  simp only [A239731, Nat.add_sub_cancel]

end A239731

/-! ## A239731.P16556673814776071449

`A007504(n)-A168152(n+1)`
-/

namespace A239731.P16556673814776071449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A168152 (n + 1)

end

end A239731.P16556673814776071449

namespace A239731

/-- `A007504(n)-A168152(n+1)` -/
def P16556673814776071449.Spec : Prop :=
  ∀ n, P16556673814776071449.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P585924663607384275

`A101301(n+1)-A262021(n+1)`
-/

namespace A239731.P585924663607384275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) - A262021 (n + 1)

end

end A239731.P585924663607384275

namespace A239731

/-- `A101301(n+1)-A262021(n+1)` -/
def P585924663607384275.Spec : Prop :=
  ∀ n, P585924663607384275.a n = A239731 (n + 1)

theorem P585924663607384275.correct : P585924663607384275.Spec := by
  intro n
  simp only [A239731, Nat.add_sub_cancel, A239731.P585924663607384275.a, A239731.P14772903405319056009.a, A006450, A006450.P16445646407241112379.a, A007504, A007504.P14310834286015847203.a, A101301, A101301.P12618163721935666644.a, A262021, A262021.P13700072325175955136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239731

/-! ## A239731.P7720976118359562028

`∑[A000040(n+1)]-A006450(n+1)`
-/

namespace A239731.P7720976118359562028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006450 (n + 1)

end

end A239731.P7720976118359562028

namespace A239731

/-- `∑[A000040(n+1)]-A006450(n+1)` -/
def P7720976118359562028.Spec : Prop :=
  ∀ n, P7720976118359562028.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P2854354772613803929

`∑[∑[A054541(n+1)]]-A006450(n+1)`
-/

namespace A239731.P2854354772613803929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006450 (n + 1)

end

end A239731.P2854354772613803929

namespace A239731

/-- `∑[∑[A054541(n+1)]]-A006450(n+1)` -/
def P2854354772613803929.Spec : Prop :=
  ∀ n, P2854354772613803929.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P3254435471460363778

`∑[A008578(n+2)]-A006450(n+1)`
-/

namespace A239731.P3254435471460363778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006450 (n + 1)

end

end A239731.P3254435471460363778

namespace A239731

/-- `∑[A008578(n+2)]-A006450(n+1)` -/
def P3254435471460363778.Spec : Prop :=
  ∀ n, P3254435471460363778.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P7010093832139800730

`∑[A158611(n+3)]-A006450(n+1)`
-/

namespace A239731.P7010093832139800730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006450 (n + 1)

end

end A239731.P7010093832139800730

namespace A239731

/-- `∑[A158611(n+3)]-A006450(n+1)` -/
def P7010093832139800730.Spec : Prop :=
  ∀ n, P7010093832139800730.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P12635636985111614778

`∑[A000040(n+1)]-p?[A076610(n+1)]`
-/

namespace A239731.P12635636985111614778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A239731.P12635636985111614778

namespace A239731

/-- `∑[A000040(n+1)]-p?[A076610(n+1)]` -/
def P12635636985111614778.Spec : Prop :=
  ∀ n, P12635636985111614778.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P14608114521167440745

`∑[record[A051698(n)]]-A006450(n+1)`
-/

namespace A239731.P14608114521167440745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006450 (n + 1)

end

end A239731.P14608114521167440745

namespace A239731

/-- `∑[record[A051698(n)]]-A006450(n+1)` -/
def P14608114521167440745.Spec : Prop :=
  ∀ n, P14608114521167440745.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P11360010036728192262

`A007504(n)-A014689(Δ[A007504(n)])`
-/

namespace A239731.P11360010036728192262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A014689 (f1 (n + 1) - f1 n).toNat

end

end A239731.P11360010036728192262

namespace A239731

/-- `A007504(n)-A014689(Δ[A007504(n)])` -/
def P11360010036728192262.Spec : Prop :=
  ∀ n, P11360010036728192262.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P17490060504154005159

`A007504(n)-A014689(A000040(n+1))`
-/

namespace A239731.P17490060504154005159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A014689 (A000040 (n + 1)).toNat

end

end A239731.P17490060504154005159

namespace A239731

/-- `A007504(n)-A014689(A000040(n+1))` -/
def P17490060504154005159.Spec : Prop :=
  ∀ n, P17490060504154005159.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P9958314773511672286

`A007504(n)-record[A014689(A014963(n+1))]`
-/

namespace A239731.P9958314773511672286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239731.P9958314773511672286

namespace A239731

/-- `A007504(n)-record[A014689(A014963(n+1))]` -/
def P9958314773511672286.Spec : Prop :=
  ∀ n, P9958314773511672286.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P3855393204165486161

`A007504(n+1)-A000040(A000040(n+1))`
-/

namespace A239731.P3855393204165486161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A000040 (A000040 (n + 1)).toNat

end

end A239731.P3855393204165486161

namespace A239731

/-- `A007504(n+1)-A000040(A000040(n+1))` -/
def P3855393204165486161.Spec : Prop :=
  ∀ n, P3855393204165486161.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P13217458910191611908

`A007504(n+1)-A008578(A008864(n+1))`
-/

namespace A239731.P13217458910191611908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A008578 (A008864 (n + 1)).toNat

end

end A239731.P13217458910191611908

namespace A239731

/-- `A007504(n+1)-A008578(A008864(n+1))` -/
def P13217458910191611908.Spec : Prop :=
  ∀ n, P13217458910191611908.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P4431851668870246056

`A007504(n+1)-A008578(A028815(n+1))`
-/

namespace A239731.P4431851668870246056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A008578 (A028815 (n + 1)).toNat

end

end A239731.P4431851668870246056

namespace A239731

/-- `A007504(n+1)-A008578(A028815(n+1))` -/
def P4431851668870246056.Spec : Prop :=
  ∀ n, P4431851668870246056.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P5837045082217376641

`A007504(n)-A014689(record[A000010(n+1)+1])`
-/

namespace A239731.P5837045082217376641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A014689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239731.P5837045082217376641

namespace A239731

/-- `A007504(n)-A014689(record[A000010(n+1)+1])` -/
def P5837045082217376641.Spec : Prop :=
  ∀ n, P5837045082217376641.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P8812803197754804375

`A237589(n+1)+1-A000040(A000040(n+1))`
-/

namespace A239731.P8812803197754804375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + (1 - A000040 (A000040 (n + 1)).toNat)

end

end A239731.P8812803197754804375

namespace A239731

/-- `A237589(n+1)+1-A000040(A000040(n+1))` -/
def P8812803197754804375.Spec : Prop :=
  ∀ n, P8812803197754804375.a n = A239731 (n + 1)

theorem P8812803197754804375.correct : P8812803197754804375.Spec := by
  intro n
  simp only [A239731, Nat.add_sub_cancel, A239731.P8812803197754804375.a, A239731.P14772903405319056009.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A007504, A007504.P14310834286015847203.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239731

/-! ## A239731.P10484484529529408676

`A007504(n)-A014689(eq[1, A001222(n+1)]+1)`
-/

namespace A239731.P10484484529529408676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A014689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239731.P10484484529529408676

namespace A239731

/-- `A007504(n)-A014689(eq[1, A001222(n+1)]+1)` -/
def P10484484529529408676.Spec : Prop :=
  ∀ n, P10484484529529408676.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P7225389697967643986

`A007504(n)-A014689(eq[2, A000005(n+1)]+1)`
-/

namespace A239731.P7225389697967643986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A014689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239731.P7225389697967643986

namespace A239731

/-- `A007504(n)-A014689(eq[2, A000005(n+1)]+1)` -/
def P7225389697967643986.Spec : Prop :=
  ∀ n, P7225389697967643986.a n = A239731 (n + 1)

end A239731

/-! ## A239731.P6792182795085415185

`A007504(n)-A014689(lt[A001222(n+2), 2]+2)`
-/

namespace A239731.P6792182795085415185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A014689 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A239731.P6792182795085415185

namespace A239731

/-- `A007504(n)-A014689(lt[A001222(n+2), 2]+2)` -/
def P6792182795085415185.Spec : Prop :=
  ∀ n, P6792182795085415185.a n = A239731 (n + 1)

end A239731

/-!
# A239732: Primes p such that 2p+9 and 9p+2 are both prime.

The programs for A239732, the canonical program `A239732.P10526106354442783034` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239732 has offset 1).

The definition of A239732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239732.P10526106354442783034

`∩[A023207(n+1), A023233(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A239732

/-- `∩[A023207(n+1), A023233(n+1)]` -/
def P10526106354442783034.Spec : Prop :=
  ∀ n, (P10526106354442783034.a n : ℤ) = A239732 (n + 1)

theorem P10526106354442783034.correct : P10526106354442783034.Spec := by
  intro n
  simp only [A239732, Nat.add_sub_cancel]

end A239732

/-! ## A239732.P16834846223884105613

`∩[A023233(n+1), A155722(n+1)]`
-/

namespace A239732.P16834846223884105613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239732.P16834846223884105613

namespace A239732

/-- `∩[A023233(n+1), A155722(n+1)]` -/
def P16834846223884105613.Spec : Prop :=
  ∀ n, (P16834846223884105613.a n : ℤ) = A239732 (n + 1)

end A239732

/-! ## A239732.P8910800763289151997

`∩[A038872(n+1), A104214(n+1)]`
-/

namespace A239732.P8910800763289151997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239732.P8910800763289151997

namespace A239732

/-- `∩[A038872(n+1), A104214(n+1)]` -/
def P8910800763289151997.Spec : Prop :=
  ∀ n, (P8910800763289151997.a n : ℤ) = A239732 (n + 1)

end A239732

/-! ## A239732.P14647722935710794762

`∩[A073681(n+1), A104214(n+1)]`
-/

namespace A239732.P14647722935710794762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239732.P14647722935710794762

namespace A239732

/-- `∩[A073681(n+1), A104214(n+1)]` -/
def P14647722935710794762.Spec : Prop :=
  ∀ n, (P14647722935710794762.a n : ℤ) = A239732 (n + 1)

end A239732

/-!
# A239733: Primes p such that 4p+9 and 9p+4 are both prime.

The programs for A239733, the canonical program `A239733.P15139081428395781281` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239733 has offset 1).

The definition of A239733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239733.P15139081428395781281

`∩[A023216(n+1), A023234(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A239733

/-- `∩[A023216(n+1), A023234(n+1)]` -/
def P15139081428395781281.Spec : Prop :=
  ∀ n, (P15139081428395781281.a n : ℤ) = A239733 (n + 1)

theorem P15139081428395781281.correct : P15139081428395781281.Spec := by
  intro n
  simp only [A239733, Nat.add_sub_cancel]

end A239733

/-! ## A239733.P10444573930806961065

`∩[A023234(n+1), A111199(n+1)]`
-/

namespace A239733.P10444573930806961065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239733.P10444573930806961065

namespace A239733

/-- `∩[A023234(n+1), A111199(n+1)]` -/
def P10444573930806961065.Spec : Prop :=
  ∀ n, (P10444573930806961065.a n : ℤ) = A239733 (n + 1)

end A239733

/-! ## A239733.P4064137094040408325

`p?[eq[A003415(4*n+9), A346103(9*n+4)]]`
-/

namespace A239733.P4064137094040408325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (4 * n + 9)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346103 (9 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A239733.P4064137094040408325

namespace A239733

/-- `p?[eq[A003415(4*n+9), A346103(9*n+4)]]` -/
def P4064137094040408325.Spec : Prop :=
  ∀ n, (P4064137094040408325.a n : ℤ) = A239733 (n + 1)

end A239733

/-!
# A239734: Primes p such that 8p+9 and 9p+8 are both prime.

The programs for A239734, the canonical program `A239734.P8539231742677177354` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239734 has offset 1).

The definition of A239734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239734.P8539231742677177354

`∩[A023232(n+1), A023235(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A239734

/-- `∩[A023232(n+1), A023235(n+1)]` -/
def P8539231742677177354.Spec : Prop :=
  ∀ n, (P8539231742677177354.a n : ℤ) = A239734 (n + 1)

theorem P8539231742677177354.correct : P8539231742677177354.Spec := by
  intro n
  simp only [A239734, Nat.add_sub_cancel]

end A239734

/-! ## A239734.P9846122711394220672

`∩[A023235(n+1), A153762(n+1)]`
-/

namespace A239734.P9846122711394220672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239734.P9846122711394220672

namespace A239734

/-- `∩[A023235(n+1), A153762(n+1)]` -/
def P9846122711394220672.Spec : Prop :=
  ∀ n, (P9846122711394220672.a n : ℤ) = A239734 (n + 1)

end A239734

/-!
# A239735: Least number k such that n*k^n +/ - 1 are twin primes, or a(n) = 0 if no such number exists.

The programs for A239735, there is no canonical definition to state claims against.
-/

/-! ## A239735.P15326935613132316780

`A293824(xor(5, A094556(n)))`
-/

namespace A239735.P15326935613132316780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293824 (Int.xor 5 (A094556 n)).toNat

end

end A239735.P15326935613132316780

/-!
# A239736: Least k > 0 such that p(n)+p(k)-1 is prime, where p(n) is the number of partitions of n.

The programs for A239736, there is no canonical definition to state claims against.
-/

/-! ## A239736.P1592518410145558990

`A240545(A000065(n+2))`
-/

namespace A239736.P1592518410145558990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (A000065 (n + 2)).toNat

end

end A239736.P1592518410145558990

/-! ## A239736.P16580137159013231338

`A240545(∑[∑[A053445(n)]])`
-/

namespace A239736.P16580137159013231338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239736.P16580137159013231338

/-! ## A239736.P12711702826816240080

`A240545(∑[A002865(n+2)])`
-/

namespace A239736.P12711702826816240080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239736.P12711702826816240080

/-! ## A239736.P5979171428572218419

`A240545(Δ[A058682(n+1)])`
-/

namespace A239736.P5979171428572218419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (f1 (n + 1) - f1 n).toNat

end

end A239736.P5979171428572218419

/-! ## A239736.P16814675380824467558

`A240545(A007042(n+1)+1)`
-/

namespace A239736.P16814675380824467558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (A007042 (n + 1) + 1).toNat

end

end A239736.P16814675380824467558

/-!
# A239737: Number of partitions p of n such that the number of numbers having multiplicity 1 in p is a part or the number of numbers having multiplicity > 1 is a part.

The programs for A239737, there is no canonical definition to state claims against.
-/

/-! ## A239737.P9045782760439355186

`A241415(n)+A241413(n)`
-/

namespace A239737.P9045782760439355186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + A241413 n

end

end A239737.P9045782760439355186

/-! ## A239737.P10539220777013820129

`A241416(n)+A241408(n)`
-/

namespace A239737.P10539220777013820129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241416 n + A241408 n

end

end A239737.P10539220777013820129

/-! ## A239737.P16535183847920883947

`A000041(n)-A241417(n)`
-/

namespace A239737.P16535183847920883947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241417 n

end

end A239737.P16535183847920883947

/-! ## A239737.P11808807053156741492

`A213598(n)-A241417(n)`
-/

namespace A239737.P11808807053156741492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241417 n

end

end A239737.P11808807053156741492

/-! ## A239737.P475096604305704020

`sqrt(A001255(n))-A241417(n)`
-/

namespace A239737.P475096604305704020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241417 n : ℝ)

end

end A239737.P475096604305704020

/-!
# A239739: a(n) = n*4^(2*n+1).

The programs for A239739, the canonical program `A239739.P5679741234835158305` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239739 has offset 0).

The definition of A239739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*4^(2*n+1)` (program `A239739.P5679741234835158305`, by `A239739.P5679741234835158305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239739.P5679741234835158305

`n*4^(2*n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239739

/-- `n*4^(2*n+1)` -/
def P5679741234835158305.Spec : Prop :=
  ∀ n, (P5679741234835158305.a n : ℤ) = A239739 n

theorem P5679741234835158305.correct : P5679741234835158305.Spec := by
  intro n
  simp only [A239739]

end A239739

/-! ## A239739.P14774279588861479280

`record[2*n*(-4)^n]`
-/

namespace A239739.P14774279588861479280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239739.P14774279588861479280

namespace A239739

/-- `record[2*n*(-4)^n]` -/
def P14774279588861479280.Spec : Prop :=
  ∀ n, P14774279588861479280.a n = A239739 n

end A239739

/-! ## A239739.P15641837627428558810

`A036289(4*n)`
-/

namespace A239739.P15641837627428558810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (4 * n)

end

end A239739.P15641837627428558810

namespace A239739

/-- `A036289(4*n)` -/
def P15641837627428558810.Spec : Prop :=
  ∀ n, P15641837627428558810.a n = A239739 n

end A239739

/-! ## A239739.P9986937251637185943

`A099855(4*n)`
-/

namespace A239739.P9986937251637185943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099855 (4 * n)

end

end A239739.P9986937251637185943

namespace A239739

/-- `A099855(4*n)` -/
def P9986937251637185943.Spec : Prop :=
  ∀ n, P9986937251637185943.a n = A239739 n

end A239739

/-! ## A239739.P8213122829316450236

`A093968(8*n)`
-/

namespace A239739.P8213122829316450236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (8 * n)

end

end A239739.P8213122829316450236

namespace A239739

/-- `A093968(8*n)` -/
def P8213122829316450236.Spec : Prop :=
  ∀ n, P8213122829316450236.a n = A239739 n

end A239739

/-! ## A239739.P8596788616578179510

`A002064(4*n)-1`
-/

namespace A239739.P8596788616578179510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (4 * n) - 1

end

end A239739.P8596788616578179510

namespace A239739

/-- `A002064(4*n)-1` -/
def P8596788616578179510.Spec : Prop :=
  ∀ n, P8596788616578179510.a n = A239739 n

end A239739

/-! ## A239739.P16556264866628961111

`A097064(3*n+n+1)`
-/

namespace A239739.P16556264866628961111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (3 * n + (n + 1))

end

end A239739.P16556264866628961111

namespace A239739

/-- `A097064(3*n+n+1)` -/
def P16556264866628961111.Spec : Prop :=
  ∀ n, P16556264866628961111.a n = A239739 n

end A239739

/-! ## A239739.P6391475719753365077

`A291938(3*n+n+1)`
-/

namespace A239739.P6391475719753365077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291938 (3 * n + (n + 1))

end

end A239739.P6391475719753365077

namespace A239739

/-- `A291938(3*n+n+1)` -/
def P6391475719753365077.Spec : Prop :=
  ∀ n, P6391475719753365077.a n = A239739 n

end A239739

/-! ## A239739.P14850245155333496738

`∩[A036289(n), A099855(n)]`
-/

namespace A239739.P14850245155333496738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239739.P14850245155333496738

namespace A239739

/-- `∩[A036289(n), A099855(n)]` -/
def P14850245155333496738.Spec : Prop :=
  ∀ n, (P14850245155333496738.a n : ℤ) = A239739 n

end A239739

/-! ## A239739.P6560552972223660067

`∩[A099855(n), A291938(n+1)]`
-/

namespace A239739.P6560552972223660067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099855 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239739.P6560552972223660067

namespace A239739

/-- `∩[A099855(n), A291938(n+1)]` -/
def P6560552972223660067.Spec : Prop :=
  ∀ n, (P6560552972223660067.a n : ℤ) = A239739 n

end A239739

/-!
# A239740: a(n) = gcd(Sum_{k=1...n} F(k), Product{j=1...n} F(j)), where F(k) is the k-th Fibonacci number.

The programs for A239740, there is no canonical definition to state claims against.
-/

/-! ## A239740.P11637910507835435185

`Δ[A001924(n)]/A121708(n+1)`
-/

namespace A239740.P11637910507835435185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A121708 (n + 1) : ℚ)

end

end A239740.P11637910507835435185

/-! ## A239740.P11786462271725167062

`A000071(n+3)/A121708(n+1)`
-/

namespace A239740.P11786462271725167062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 3) : ℚ) / (A121708 (n + 1) : ℚ)

end

end A239740.P11786462271725167062

/-! ## A239740.P15383658985202863710

`∑[A036355(∑[n])]/A121708(n+1)`
-/

namespace A239740.P15383658985202863710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121708 (n + 1) : ℚ)

end

end A239740.P15383658985202863710

/-! ## A239740.P16376062513254704450

`∑[∑[A212804(n)]]/A121708(n+1)`
-/

namespace A239740.P16376062513254704450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121708 (n + 1) : ℚ)

end

end A239740.P16376062513254704450

/-! ## A239740.P4222987918819448586

`∑[A000045(n+1)]/A121708(n+1)`
-/

namespace A239740.P4222987918819448586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121708 (n + 1) : ℚ)

end

end A239740.P4222987918819448586

/-! ## A239740.P10578662931638708360

`(A000045(n+3)-1)/A121708(n+1)`
-/

namespace A239740.P10578662931638708360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) - 1 : ℚ) / (A121708 (n + 1) : ℚ)

end

end A239740.P10578662931638708360

/-!
# A239742: Numbers k such that prime(k) * 2^k + 1 is prime.

The programs for A239742, there is no canonical definition to state claims against.
-/

/-! ## A239742.P15144955349026388559

`A086415(A360395(2*n+1)+A022493(n))`
-/

namespace A239742.P15144955349026388559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (A360395 (2 * n + 1) + A022493 n).toNat

end

end A239742.P15144955349026388559

/-! ## A239742.P12879835936584155513

`∩[A306587(A306587(n+1)), A353301(n+1)]`
-/

namespace A239742.P12879835936584155513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306587 (A306587 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239742.P12879835936584155513

/-!
# A239743: Primes of the form prime(k)^3 + k.

The programs for A239743, there is no canonical definition to state claims against.
-/

/-! ## A239743.P11505971310806524206

`A261832(n+1)+A030078(A261832(n+1))`
-/

namespace A239743.P11505971310806524206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261832 (n + 1) + A030078 (A261832 (n + 1)).toNat

end

end A239743.P11505971310806524206

/-!
# A239744: Number of Pythagorean triangles (x, y, z) with legs x < y <= 10^n.

The programs for A239744, there is no canonical definition to state claims against.
-/

/-! ## A239744.P7542634002111938213

`A239786(n+1)+n`
-/

namespace A239744.P7542634002111938213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239786 (n + 1) + (n : ℤ)

end

end A239744.P7542634002111938213

/-!
# A239745: a(n) = (3*2^(n+2) + n*(n+5))/2 - 6.

The programs for A239745, the canonical program `A239745.P11484504837248210294` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239745 has offset 0).

The definition of A239745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239745.P11484504837248210294

`(3*2^(n+2)+n*(n+5))/2-6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239745

/-- `(3*2^(n+2)+n*(n+5))/2-6` -/
def P11484504837248210294.Spec : Prop :=
  ∀ n, P11484504837248210294.a n = (A239745 n : ℚ)

end A239745

/-! ## A239745.P1104796884167221537

`∑[2*a(n-1)-n]` with `a(0)=0, a(1)=9`
-/

namespace A239745.P1104796884167221537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  2 * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239745.P1104796884167221537

namespace A239745

/-- `∑[2*a(n-1)-n]` -/
def P1104796884167221537.Spec : Prop :=
  ∀ n, P1104796884167221537.a n = A239745 n

end A239745

/-! ## A239745.P7382455873209940354

`∑[a(n-1)+a(n-1)-n]` with `a(0)=0, a(1)=9`
-/

namespace A239745.P7382455873209940354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239745.P7382455873209940354

namespace A239745

/-- `∑[a(n-1)+a(n-1)-n]` -/
def P7382455873209940354.Spec : Prop :=
  ∀ n, P7382455873209940354.a n = A239745 n

end A239745

/-! ## A239745.P9993965066669655714

`∑[a(n-1)-(n-a(n-1))]` with `a(0)=0, a(1)=9`
-/

namespace A239745.P9993965066669655714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239745.P9993965066669655714

namespace A239745

/-- `∑[a(n-1)-(n-a(n-1))]` -/
def P9993965066669655714.Spec : Prop :=
  ∀ n, P9993965066669655714.a n = A239745 n

end A239745

/-!
# A239746: Records in A016014.

The programs for A239746, there is no canonical definition to state claims against.
-/

/-! ## A239746.P12617449477392984500

`floor(A342364(n+1)/(2*A239727(n+1)))`
-/

namespace A239746.P12617449477392984500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342364 (n + 1) : ℚ) / (2 * A239727 (n + 1) : ℚ)⌋

end

end A239746.P12617449477392984500

/-! ## A239746.P14498683590434058239

`A123108(floor(A342364(n+1)/A239727(n+1)))`
-/

namespace A239746.P14498683590434058239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ⌊(A342364 (n + 1) : ℚ) / (A239727 (n + 1) : ℚ)⌋.toNat

end

end A239746.P14498683590434058239

/-! ## A239746.P3802490075646635013

`A123108((A342364(n+1)-1)/A239727(n+1))`
-/

namespace A239746.P3802490075646635013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.roundAway ((A342364 (n + 1) - 1 : ℚ) / (A239727 (n + 1) : ℚ))).toNat

end

end A239746.P3802490075646635013

/-! ## A239746.P17885847698448855729

`A016014(A239727(n+1))`
-/

namespace A239746.P17885847698448855729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A239727 (n + 1)).toNat

end

end A239746.P17885847698448855729

/-!
# A239747: Super-prime leaders: right-truncatable primes p with property that appending any single decimal digit to p does not produce a prime.

The programs for A239747, there is no canonical definition to state claims against.
-/

/-! ## A239747.P9761497172037328917

`∩[A024770(n+1), A119289(n+1)]`
-/

namespace A239747.P9761497172037328917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239747.P9761497172037328917

/-!
# A239749: Number of ordered pairs of functions f,g on a set of n elements into itself satisfying f(f(x)) = g(f(g(x))).

The programs for A239749, there is no canonical definition to state claims against.
-/

/-! ## A239749.P12070369495980983322

`A028310(A277337(n))`
-/

namespace A239749.P12070369495980983322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A277337 n).toNat

end

end A239749.P12070369495980983322

/-!
# A239750: Number of ordered pairs of endofunctions (f,g) on a set of n elements satisfying g(f(x)) = f(f(f(x))).

The programs for A239750, there is no canonical definition to state claims against.
-/

/-! ## A239750.P16646024660798315094

`A245980(∑[n+2]-1)`
-/

namespace A239750.P16646024660798315094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A239750.P16646024660798315094

/-! ## A239750.P18065818482433661051

`lcm(n^(n%2), A245980(A034856(n+1)))`
-/

namespace A239750.P18065818482433661051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ (n % 2) : ℤ) (A245980 (A034856 (n + 1)).toNat)

end

end A239750.P18065818482433661051

/-! ## A239750.P14247075888445420454

`A139553(n)*A245980(A034856(n+1))`
-/

namespace A239750.P14247075888445420454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A245980 (A034856 (n + 1)).toNat

end

end A239750.P14247075888445420454

/-! ## A239750.P2492506342270449724

`gcd(A000038(n), A245980(A034856(n+1)))`
-/

namespace A239750.P2492506342270449724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245980 (A034856 (n + 1)).toNat)

end

end A239750.P2492506342270449724

/-! ## A239750.P11669086853708086195

`lcm(A028310(n), A245980(A034856(n+1)))`
-/

namespace A239750.P11669086853708086195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A245980 (A034856 (n + 1)).toNat)

end

end A239750.P11669086853708086195

/-!
# A239751: Numbers whose number of nonzero binary digits is less than their number of nonzero decimal digits.

The programs for A239751, the canonical program `A239751.P7598983440700543939` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239751 has offset 1).

The definition of A239751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239751.P7598983440700543939

`lt[A000120(n), A055640(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A239751

/-- `lt[A000120(n), A055640(n)]` -/
def P7598983440700543939.Spec : Prop :=
  ∀ n, (P7598983440700543939.a n : ℤ) = A239751 (n + 1)

theorem P7598983440700543939.correct : P7598983440700543939.Spec := by
  intro n
  simp only [A239751, Nat.add_sub_cancel]

end A239751

/-! ## A239751.P16170689074540193761

`lt[A092391(n), A055640(n)+n]`
-/

namespace A239751.P16170689074540193761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239751.P16170689074540193761

namespace A239751

/-- `lt[A092391(n), A055640(n)+n]` -/
def P16170689074540193761.Spec : Prop :=
  ∀ n, (P16170689074540193761.a n : ℤ) = A239751 (n + 1)

end A239751

/-! ## A239751.P4442813744766851295

`lt[A007318(A001316(n)), A055640(n)]`
-/

namespace A239751.P4442813744766851295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239751.P4442813744766851295

namespace A239751

/-- `lt[A007318(A001316(n)), A055640(n)]` -/
def P4442813744766851295.Spec : Prop :=
  ∀ n, (P4442813744766851295.a n : ℤ) = A239751 (n + 1)

end A239751

/-! ## A239751.P2845885791909091179

`lt[A033196(A151930(2*n)), A004185(n)]`
-/

namespace A239751.P2845885791909091179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033196 (A151930 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239751.P2845885791909091179

namespace A239751

/-- `lt[A033196(A151930(2*n)), A004185(n)]` -/
def P2845885791909091179.Spec : Prop :=
  ∀ n, (P2845885791909091179.a n : ℤ) = A239751 (n + 1)

end A239751

/-! ## A239751.P11882706311311932335

`lt[A000326(A048883(n)), A004086(n)]`
-/

namespace A239751.P11882706311311932335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A048883 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239751.P11882706311311932335

namespace A239751

/-- `lt[A000326(A048883(n)), A004086(n)]` -/
def P11882706311311932335.Spec : Prop :=
  ∀ n, (P11882706311311932335.a n : ℤ) = A239751 (n + 1)

end A239751

/-!
# A239752: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(f(x)) = g(f(f(x))).

The programs for A239752, there is no canonical definition to state claims against.
-/

/-! ## A239752.P10770181657872152196

`A065033(comp[2*(n+1)]*A029991(n+1))`
-/

namespace A239752.P10770181657872152196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A029991 (n + 1)).toNat

end

end A239752.P10770181657872152196

/-!
# A239753: Number of pairs of functions (f,g) on a set of n elements into itself satisfying f(x) = g(f(g(x))).

The programs for A239753, there is no canonical definition to state claims against.
-/

/-! ## A239753.P17607009349515636031

`n*A310934(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A239753.P17607009349515636031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A310934 (a (n - 1)).toNat

end

end A239753.P17607009349515636031

/-!
# A239754: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(g(f(x))) = g(g(g(x))).

The programs for A239754, there is no canonical definition to state claims against.
-/

/-! ## A239754.P17797473611103820864

`A038722(∑{d}[A326221(n), #]+1)`
-/

namespace A239754.P17797473611103820864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1)

end

end A239754.P17797473611103820864

/-!
# A239755: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(g(x)) = g(f(f(x))).

The programs for A239755, there is no canonical definition to state claims against.
-/

/-! ## A239755.P6125445356150277268

`round(1/acot(n))*A284728(2*n)`
-/

namespace A239755.P6125445356150277268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A284728 (2 * n)

end

end A239755.P6125445356150277268

/-!
# A239756: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(f(g(x))) = g(g(x)).

The programs for A239756, there is no canonical definition to state claims against.
-/

/-! ## A239756.P14462278626992471548

`A060126(A295240(n))`
-/

namespace A239756.P14462278626992471548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A295240 n).toNat

end

end A239756.P14462278626992471548

/-!
# A239757: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(g(g(x))) = g(f(f(x))).

The programs for A239757, there is no canonical definition to state claims against.
-/

/-! ## A239757.P6968493274379268014

`A312693(A004841(xor(1, n*a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A239757.P6968493274379268014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A312693 (A004841 (Int.xor 1 ((n : ℤ) * a (n - 1))).toNat).toNat

end

end A239757.P6968493274379268014

/-!
# A239758: Number of pairs of functions (f,g) on a set of n elements into itself satisfying f(g(f(x))) = g(f(g(x))).

The programs for A239758, there is no canonical definition to state claims against.
-/

/-! ## A239758.P11450530445928967734

`ceil(sqrt(A157405(2^(n+1)-floor((n+1)^(3/(n+1))²))))`
-/

namespace A239758.P11450530445928967734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A157405 ((2 ^ (n + 1) : ℤ) - ⌊(n + 1 : ℝ) ^ ((3 / (n + 1 : ℚ)) ^ 2 : ℝ)⌋).toNat : ℝ)⌉

end

end A239758.P11450530445928967734

/-!
# A239759: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(g(x)) = g(f(g(x))).

The programs for A239759, there is no canonical definition to state claims against.
-/

/-! ## A239759.P8762959682524389405

`A343412(and(A000045(n+1)^n-1, -2)+1)`
-/

namespace A239759.P8762959682524389405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (Int.land (A000045 (n + 1) ^ n - 1) (-2) + 1).toNat

end

end A239759.P8762959682524389405

/-!
# A239760: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(x) = f(f(g(x))).

The programs for A239760, there is no canonical definition to state claims against.
-/

/-! ## A239760.P15380526988259260910

`A313415(n*A081131(n))`
-/

namespace A239760.P15380526988259260910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313415 ((n : ℤ) * A081131 n).toNat

end

end A239760.P15380526988259260910

/-!
# A239761: Number of pairs of functions (f, g) on a set of n elements into itself satisfying f(g(x)) = f(x).

The programs for A239761, there is no canonical definition to state claims against.
-/

/-! ## A239761.P11594060131334333475

`A245910(∑[n+2]-1)`
-/

namespace A239761.P11594060131334333475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A239761.P11594060131334333475

/-! ## A239761.P15523485687048032277

`lcm(n^(n%2), A245910(A034856(n+1)))`
-/

namespace A239761.P15523485687048032277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ (n % 2) : ℤ) (A245910 (A034856 (n + 1)).toNat)

end

end A239761.P15523485687048032277

/-! ## A239761.P3772556665205708976

`A036225(n)*A245910(A034856(n+1))`
-/

namespace A239761.P3772556665205708976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A245910 (A034856 (n + 1)).toNat

end

end A239761.P3772556665205708976

/-! ## A239761.P17738418536070805286

`A000108((-1)^(2*n))*A245910(A034856(n+1))`
-/

namespace A239761.P17738418536070805286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ((-1) ^ (2 * n)).toNat * A245910 (A034856 (n + 1)).toNat

end

end A239761.P17738418536070805286

/-! ## A239761.P10570035098977370696

`(A000040(A007318(n))%2)!*A245910(A034856(n+1))`
-/

namespace A239761.P10570035098977370696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (A007318 n).toNat) 2).toNat : ℤ) * A245910 (A034856 (n + 1)).toNat

end

end A239761.P10570035098977370696

/-!
# A239762: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(f(g(x))) = g(f(x)).

The programs for A239762, there is no canonical definition to state claims against.
-/

/-! ## A239762.P13264743195670181090

`A002048((n+3)*a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A239762.P13264743195670181090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002048 ((n + 3 : ℤ) * a (n - 1) + 1).toNat

end

end A239762.P13264743195670181090

/-!
# A239763: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(f(x)) = f(g(x)).

The programs for A239763, there is no canonical definition to state claims against.
-/

/-! ## A239763.P559144716147710299

`A004277(A221097(n))-A033917(n)`
-/

namespace A239763.P559144716147710299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A221097 n).toNat - A033917 n

end

end A239763.P559144716147710299

/-!
# A239764: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(f(f(x))) = f(g(x)).

The programs for A239764, there is no canonical definition to state claims against.
-/

/-! ## A239764.P1373274392670998239

`A000720(A000016(abs(3-6*n)))`
-/

namespace A239764.P1373274392670998239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000016 |3 - (6 * n : ℤ)|.toNat).toNat

end

end A239764.P1373274392670998239

/-!
# A239765: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(f(g(x))) = g(g(g(x))).

The programs for A239765, there is no canonical definition to state claims against.
-/

/-! ## A239765.P6848402409585524787

`A057640(A291846(n)*A381961(n))`
-/

namespace A239765.P6848402409585524787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (A291846 n * A381961 n).toNat

end

end A239765.P6848402409585524787

/-!
# A239766: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(f(x)) = f(g(g(x))).

The programs for A239766, there is no canonical definition to state claims against.
-/

/-! ## A239766.P14454373883040398641

`∏{p}[A245988(n), A007093(#)]`
-/

namespace A239766.P14454373883040398641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007093 p

end

end A239766.P14454373883040398641

/-!
# A239767: Degrees of polynomial on the fermionic side of the finite generalization of identity 46 from Slater's List.

The programs for A239767, the canonical program `A239767.P8059181146750177776` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239767 has offset 0).

The definition of A239767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239767.P1623938333692559592

`(10*n²+2*n*(1+(-1)^n)-(1-(-1)^n))/8`
-/

namespace A239767.P1623938333692559592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n ^ 2 : ℤ) + (2 * n : ℤ) * (1 + (-1) ^ n) - (1 - (-1) ^ n) : ℚ) / 8

end

end A239767.P1623938333692559592

namespace A239767

/-- `(10*n²+2*n*(1+(-1)^n)-(1-(-1)^n))/8` -/
def P1623938333692559592.Spec : Prop :=
  ∀ n, P1623938333692559592.a n = (A239767 n : ℚ)

theorem P1623938333692559592.correct : P1623938333692559592.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A239767, Nat.add_sub_cancel, A239767.P1623938333692559592.a, A239767.P8059181146750177776.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A239767, Nat.add_sub_cancel, A239767.P1623938333692559592.a, A239767.P8059181146750177776.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A239767

/-! ## A239767.P8059181146750177776

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=11, a(4)=22`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239767

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8059181146750177776.Spec : Prop :=
  ∀ n, P8059181146750177776.a n = A239767 n

theorem P8059181146750177776.correct : P8059181146750177776.Spec := by
  intro n
  simp only [A239767]

end A239767

/-! ## A239767.P9713099097510963720

`∑[n%or(1, n)]+n²`
-/

namespace A239767.P9713099097510963720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A239767.P9713099097510963720

namespace A239767

/-- `∑[n%or(1, n)]+n²` -/
def P9713099097510963720.Spec : Prop :=
  ∀ n, (P9713099097510963720.a n : ℤ) = A239767 n

end A239767

/-! ## A239767.P12665384911788251475

`∑[n*(gcd(2, n)+1)]-n`
-/

namespace A239767.P12665384911788251475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A239767.P12665384911788251475

namespace A239767

/-- `∑[n*(gcd(2, n)+1)]-n` -/
def P12665384911788251475.Spec : Prop :=
  ∀ n, P12665384911788251475.a n = A239767 n

end A239767

/-! ## A239767.P11475235197390451453

`∑[n*(3-and(1, n))]-n`
-/

namespace A239767.P11475235197390451453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A239767.P11475235197390451453

namespace A239767

/-- `∑[n*(3-and(1, n))]-n` -/
def P11475235197390451453.Spec : Prop :=
  ∀ n, P11475235197390451453.a n = A239767 n

end A239767

/-! ## A239767.P13035350946147738953

`floor(or(1, n)²/4)+n²`
-/

namespace A239767.P13035350946147738953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n ^ 2 : ℚ) / 4⌋ + (n ^ 2 : ℤ)

end

end A239767.P13035350946147738953

namespace A239767

/-- `floor(or(1, n)²/4)+n²` -/
def P13035350946147738953.Spec : Prop :=
  ∀ n, P13035350946147738953.a n = A239767 n

end A239767

/-! ## A239767.P14569819162141473824

`∑[2*n-lcm(2, n)]+n²`
-/

namespace A239767.P14569819162141473824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A239767.P14569819162141473824

namespace A239767

/-- `∑[2*n-lcm(2, n)]+n²` -/
def P14569819162141473824.Spec : Prop :=
  ∀ n, P14569819162141473824.a n = A239767 n

end A239767

/-! ## A239767.P6579985424574320172

`∑[n*and(1, n+1)]+n²`
-/

namespace A239767.P6579985424574320172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A239767.P6579985424574320172

namespace A239767

/-- `∑[n*and(1, n+1)]+n²` -/
def P6579985424574320172.Spec : Prop :=
  ∀ n, (P6579985424574320172.a n : ℤ) = A239767 n

end A239767

/-! ## A239767.P12277354438891493306

`∑[gcd(2*n, n²)]+C(n, 2)`
-/

namespace A239767.P12277354438891493306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2

end

end A239767.P12277354438891493306

namespace A239767

/-- `∑[gcd(2*n, n²)]+C(n, 2)` -/
def P12277354438891493306.Spec : Prop :=
  ∀ n, (P12277354438891493306.a n : ℤ) = A239767 n

end A239767

/-! ## A239767.P5631523127891699575

`a(n-1)+n*(a(n-1)%2+2)-1` with `a(0)=0`
-/

namespace A239767.P5631523127891699575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) * (Int.tmod (a (n - 1)) 2 + 2) - 1)

end

end A239767.P5631523127891699575

namespace A239767

/-- `a(n-1)+n*(a(n-1)%2+2)-1` -/
def P5631523127891699575.Spec : Prop :=
  ∀ n, P5631523127891699575.a n = A239767 n

end A239767

/-! ## A239767.P9402765822084930199

`A110660(n)+n²`
-/

namespace A239767.P9402765822084930199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n + (n ^ 2 : ℤ)

end

end A239767.P9402765822084930199

namespace A239767

/-- `A110660(n)+n²` -/
def P9402765822084930199.Spec : Prop :=
  ∀ n, P9402765822084930199.a n = A239767 n

end A239767

/-! ## A239767.P17894809766311660195

`A032438(n)+∑[n]`
-/

namespace A239767.P17894809766311660195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A239767.P17894809766311660195

namespace A239767

/-- `A032438(n)+∑[n]` -/
def P17894809766311660195.Spec : Prop :=
  ∀ n, P17894809766311660195.a n = A239767 n

end A239767

/-! ## A239767.P16471643321039685301

`A247643(n)-(n+1)`
-/

namespace A239767.P16471643321039685301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n - (n + 1 : ℤ)

end

end A239767.P16471643321039685301

namespace A239767

/-- `A247643(n)-(n+1)` -/
def P16471643321039685301.Spec : Prop :=
  ∀ n, P16471643321039685301.a n = A239767 n

end A239767

/-! ## A239767.P3729886593738174790

`2*A085787(n)-n`
-/

namespace A239767.P3729886593738174790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085787 n - (n : ℤ)

end

end A239767.P3729886593738174790

namespace A239767

/-- `2*A085787(n)-n` -/
def P3729886593738174790.Spec : Prop :=
  ∀ n, P3729886593738174790.a n = A239767 n

end A239767

/-! ## A239767.P8514213570747413922

`A273368(n)/2-n`
-/

namespace A239767.P8514213570747413922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273368 n : ℚ) / 2 - (n : ℚ)

end

end A239767.P8514213570747413922

namespace A239767

/-- `A273368(n)/2-n` -/
def P8514213570747413922.Spec : Prop :=
  ∀ n, P8514213570747413922.a n = (A239767 n : ℚ)

end A239767

/-! ## A239767.P3480330387207272881

`∑[A237420(n)]+n²`
-/

namespace A239767.P3480330387207272881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A239767.P3480330387207272881

namespace A239767

/-- `∑[A237420(n)]+n²` -/
def P3480330387207272881.Spec : Prop :=
  ∀ n, P3480330387207272881.a n = A239767 n

end A239767

/-! ## A239767.P3111059290994994030

`Δ[A361275(n)]+n²`
-/

namespace A239767.P3111059290994994030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ)

end

end A239767.P3111059290994994030

namespace A239767

/-- `Δ[A361275(n)]+n²` -/
def P3111059290994994030.Spec : Prop :=
  ∀ n, P3111059290994994030.a n = A239767 n

end A239767

/-! ## A239767.P14339305111273900985

`A212965(n)-∑[n+1]`
-/

namespace A239767.P14339305111273900985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A239767.P14339305111273900985

namespace A239767

/-- `A212965(n)-∑[n+1]` -/
def P14339305111273900985.Spec : Prop :=
  ∀ n, P14339305111273900985.a n = A239767 n

end A239767

/-! ## A239767.P17007394156621909660

`∑[A257088(n)-1+n]`
-/

namespace A239767.P17007394156621909660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239767.P17007394156621909660

namespace A239767

/-- `∑[A257088(n)-1+n]` -/
def P17007394156621909660.Spec : Prop :=
  ∀ n, P17007394156621909660.a n = A239767 n

end A239767

/-! ## A239767.P9480788511777086260

`A035608(n)+A008794(n)`
-/

namespace A239767.P9480788511777086260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n + A008794 n

end

end A239767.P9480788511777086260

namespace A239767

/-- `A035608(n)+A008794(n)` -/
def P9480788511777086260.Spec : Prop :=
  ∀ n, P9480788511777086260.a n = A239767 n

end A239767

/-!
# A239768: Number of pairs of functions (f,g) from a set of n elements into itself satisfying f(x) = f(g(f(x))).

The programs for A239768, there is no canonical definition to state claims against.
-/

/-! ## A239768.P1337485967814072701

`A239769(n)-A332639(A279565(n))`
-/

namespace A239768.P1337485967814072701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239769 n - A332639 (A279565 n).toNat

end

end A239768.P1337485967814072701

/-!
# A239769: Number of pairs of functions (f, g) from a size n set into itself satisfying f(g(f(x))) = g(g(f(x))).

The programs for A239769, there is no canonical definition to state claims against.
-/

/-! ## A239769.P16584539053395309286

`A323684(n)*A327539(∏[A326006(n)])`
-/

namespace A239769.P16584539053395309286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323684 n * A327539 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239769.P16584539053395309286

/-!
# A239770: Number of pairs of functions f, g from a size n set into itself satisfying f(g(f(x))) = g(f(f(x))).

The programs for A239770, there is no canonical definition to state claims against.
-/

/-! ## A239770.P6318732801090266727

`A010761(A052782(n)+A020107(n))`
-/

namespace A239770.P6318732801090266727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (A052782 n + A020107 n).toNat

end

end A239770.P6318732801090266727

/-!
# A239771: Number of pairs of functions (f,g) from a size n set into itself satisfying f(x) = g(g(f(x))).

The programs for A239771, there is no canonical definition to state claims against.
-/

/-! ## A239771.P12011867466662289971

`A245980(∑[n+3])`
-/

namespace A239771.P12011867466662289971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239771.P12011867466662289971

/-! ## A239771.P8659970993864563463

`A245980(A141214(n))*A304042(n)`
-/

namespace A239771.P8659970993864563463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (A141214 n).toNat * A304042 n

end

end A239771.P8659970993864563463

/-! ## A239771.P12734675446480495831

`lcm(A028310(n), A245980(A141214(n)))`
-/

namespace A239771.P12734675446480495831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A245980 (A141214 n).toNat)

end

end A239771.P12734675446480495831

/-! ## A239771.P10242060662145722483

`A007318(∑[n])*A245980(A141214(n))`
-/

namespace A239771.P10242060662145722483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A245980 (A141214 n).toNat

end

end A239771.P10242060662145722483

/-! ## A239771.P16951263420019074437

`A245980(A141214(n))+A018252(n+1)%-1`
-/

namespace A239771.P16951263420019074437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (A141214 n).toNat + Int.tmod (A018252 (n + 1)) (-1)

end

end A239771.P16951263420019074437

/-!
# A239772: Number of pairs of functions f, g from a size n set into itself satisfying f(f(x)) = f(g(f(x))).

The programs for A239772, there is no canonical definition to state claims against.
-/

/-! ## A239772.P10000374826159506622

`A239773(n)-A332639(A279565(n))`
-/

namespace A239772.P10000374826159506622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239773 n - A332639 (A279565 n).toNat

end

end A239772.P10000374826159506622

/-!
# A239773: Number of pairs of functions f, g from a size n set into itself satisfying f(g(f(x))) = f(f(f(x))).

The programs for A239773, there is no canonical definition to state claims against.
-/

/-! ## A239773.P5667695896729328161

`A369451(∑[A365355(n+1)]+4)`
-/

namespace A239773.P5667695896729328161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369451 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A239773.P5667695896729328161

/-!
# A239776: Number of pairs of functions f, g from a size n set into itself satisfying f(f(g(x))) = g(g(f(x))).

The programs for A239776, there is no canonical definition to state claims against.
-/

/-! ## A239776.P11117326658128841032

`A073254(∏[∑[A042279(n)]])`
-/

namespace A239776.P11117326658128841032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239776.P11117326658128841032

/-!
# A239777: Number of pairs of functions f, g on a size n set into itself satisfying f(g(g(x))) = f(x).

The programs for A239777, there is no canonical definition to state claims against.
-/

/-! ## A239777.P13006369728840248688

`A245910(∑[n+3])`
-/

namespace A239777.P13006369728840248688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239777.P13006369728840248688

/-! ## A239777.P456165397281738020

`A245910(A141214(n))*A304042(n)`
-/

namespace A239777.P456165397281738020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (A141214 n).toNat * A304042 n

end

end A239777.P456165397281738020

/-! ## A239777.P3334696926963681059

`lcm(A028310(n), A245910(A141214(n)))`
-/

namespace A239777.P3334696926963681059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A245910 (A141214 n).toNat)

end

end A239777.P3334696926963681059

/-! ## A239777.P7791003508124137086

`or(A000007(n), A245910(A141214(n)))`
-/

namespace A239777.P7791003508124137086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A245910 (A141214 n).toNat)

end

end A239777.P7791003508124137086

/-! ## A239777.P5691350584528846824

`A245910(A141214(n))+A008683(A017510(n))`
-/

namespace A239777.P5691350584528846824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (A141214 n).toNat + A008683 (A017510 n).toNat

end

end A239777.P5691350584528846824

/-!
# A239779: Number of pairs of functions f, g, from a size n set into itself satisfying f(g(g(x))) = g(g(f(x))).

The programs for A239779, there is no canonical definition to state claims against.
-/

/-! ## A239779.P15319887478540734709

`A004277(A239758(n))-A000312(n)`
-/

namespace A239779.P15319887478540734709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A239758 n).toNat - A000312 n

end

end A239779.P15319887478540734709

/-!
# A239780: Number of pairs of functions f, g on a size n set into itself satisfying f(f(g(x))) = f(g(g(x))).

The programs for A239780, there is no canonical definition to state claims against.
-/

/-! ## A239780.P5991571722150734201

`A042948(A127182(n+1))-A054610(n)`
-/

namespace A239780.P5991571722150734201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A127182 (n + 1)).toNat - A054610 n

end

end A239780.P5991571722150734201

/-!
# A239786: Number of Pythagorean triangles (x, y, z) with legs x < y < 10^n.

The programs for A239786, there is no canonical definition to state claims against.
-/

/-! ## A239786.P5706207641676520191

`A239744(n+1)-n`
-/

namespace A239786.P5706207641676520191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239744 (n + 1) - (n : ℤ)

end

end A239786.P5706207641676520191

/-! ## A239786.P8567298212962341115

`abs(A239744(n+1)+A001489(n))`
-/

namespace A239786.P8567298212962341115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239744 (n + 1) + A001489 n|

end

end A239786.P8567298212962341115

/-!
# A239787: Numbers n such that 3n^3 - 1 is prime.

The programs for A239787, there is no canonical definition to state claims against.
-/

/-! ## A239787.P13901954510194334098

`eq[4, ∑{d}[(6-18*n^3)/2, gcd(41, #)]]`
-/

namespace A239787.P13901954510194334098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - (18 * n ^ 3 : ℤ) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f3 n)).natAbs, Nat.gcd 41 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239787.P13901954510194334098

/-! ## A239787.P12734516950578461421

`A308937(A272614(n))`
-/

namespace A239787.P12734516950578461421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308937 (A272614 n).toNat

end

end A239787.P12734516950578461421

/-! ## A239787.P13649235876012819797

`∑[A290104(record[A290126(3*n+2)])]`
-/

namespace A239787.P13649235876012819797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290126 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239787.P13649235876012819797

/-! ## A239787.P13909329920184942985

`∑[A001227(∑[A054856(n)])]`
-/

namespace A239787.P13909329920184942985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054856 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239787.P13909329920184942985

/-! ## A239787.P13985368285476285469

`∑[gcd(A208483(n+4), A289429(n))]`
-/

namespace A239787.P13985368285476285469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208483 (n + 4)) (A289429 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239787.P13985368285476285469

/-!
# A239788: Numbers n such that 3n^3 +/ - 1 are twin primes.

The programs for A239788, there is no canonical definition to state claims against.
-/

/-! ## A239788.P16022851279385786448

`∩[A116954(n+1), A239787(n+1)]`
-/

namespace A239788.P16022851279385786448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239788.P16022851279385786448

/-!
# A239791: Number of compositions of n with no consecutive 2's.

The programs for A239791, the canonical program `A239791.P1976468523336706846` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239791 has offset 0).

The definition of A239791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239791.P1976468523336706846

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239791

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` -/
def P1976468523336706846.Spec : Prop :=
  ∀ n, P1976468523336706846.a n = A239791 n

theorem P1976468523336706846.correct : P1976468523336706846.Spec := by
  intro n
  simp only [A239791]

end A239791

/-! ## A239791.P13025432989231193722

`Δ[Δ[A152718(n+2)]]`
-/

namespace A239791.P13025432989231193722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152718 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239791.P13025432989231193722

namespace A239791

/-- `Δ[Δ[A152718(n+2)]]` -/
def P13025432989231193722.Spec : Prop :=
  ∀ n, P13025432989231193722.a n = A239791 n

end A239791

/-! ## A239791.P17980980696400243119

`floor(root(A179277(3*n), 6))`
-/

namespace A239791.P17980980696400243119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179277 (3 * n) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A239791.P17980980696400243119

namespace A239791

/-- `floor(root(A179277(3*n), 6))` -/
def P17980980696400243119.Spec : Prop :=
  ∀ n, P17980980696400243119.a n = A239791 n

end A239791

/-! ## A239791.P2101888870781204743

`A011782(n)-A135661(A213242(n+1))`
-/

namespace A239791.P2101888870781204743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A135661 (A213242 (n + 1)).toNat

end

end A239791.P2101888870781204743

namespace A239791

/-- `A011782(n)-A135661(A213242(n+1))` -/
def P2101888870781204743.Spec : Prop :=
  ∀ n, P2101888870781204743.a n = A239791 n

end A239791

/-! ## A239791.P3399169442812839043

`A088141(A001835(n))`
-/

namespace A239791.P3399169442812839043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A001835 n).toNat

end

end A239791.P3399169442812839043

namespace A239791

/-- `A088141(A001835(n))` -/
def P3399169442812839043.Spec : Prop :=
  ∀ n, P3399169442812839043.a n = A239791 n

end A239791

/-!
# A239793: Denominator of b_{2n}(1/4), where b_{n}(x) are Nørlund's generalized Bernoulli polynomials.

The programs for A239793, there is no canonical definition to state claims against.
-/

/-! ## A239793.P9313973166926659487

`8^n*A239795(n)`
-/

namespace A239793.P9313973166926659487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A239795 n

end

end A239793.P9313973166926659487

/-! ## A239793.P1392370376889135446

`lcm(A001018(n), A239795(n))`
-/

namespace A239793.P1392370376889135446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001018 n) (A239795 n)

end

end A239793.P1392370376889135446

/-! ## A239793.P8133429187325620341

`A001018(n)*A365671(2*n)`
-/

namespace A239793.P8133429187325620341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n * A365671 (2 * n)

end

end A239793.P8133429187325620341

/-! ## A239793.P1979758507811093563

`A242225(2*n)/2^n`
-/

namespace A239793.P1979758507811093563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242225 (2 * n) : ℚ) / (2 ^ n : ℚ)

end

end A239793.P1979758507811093563

/-! ## A239793.P5905025719128483390

`floor(A242225(2*n)/A000079(n))`
-/

namespace A239793.P5905025719128483390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242225 (2 * n) : ℚ) / (A000079 n : ℚ)⌋

end

end A239793.P5905025719128483390

/-!
# A239794: a(n) = 5*n^2 + 4*n - 15.

The programs for A239794, the canonical program `A239794.P13913270634155031970` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239794 has offset 1).

The definition of A239794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)²+4*(n+1)-15` (program `A239794.P13913270634155031970`, by `A239794.P13913270634155031970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239794.P13913270634155031970

`5*(n+1)²+4*(n+1)-15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239794

/-- `5*(n+1)²+4*(n+1)-15` -/
def P13913270634155031970.Spec : Prop :=
  ∀ n, P13913270634155031970.a n = A239794 (n + 1)

theorem P13913270634155031970.correct : P13913270634155031970.Spec := by
  intro n
  simp only [A239794, Nat.add_sub_cancel]

end A239794

/-! ## A239794.P13217248939455257889

`∑[a(n-1)+10]` with `a(0)=-6, a(1)=19`
-/

namespace A239794.P13217248939455257889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-6, 19] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239794.P13217248939455257889

namespace A239794

/-- `∑[a(n-1)+10]` -/
def P13217248939455257889.Spec : Prop :=
  ∀ n, P13217248939455257889.a n = A239794 (n + 1)

end A239794

/-! ## A239794.P4565200950073025537

`∑[5*A062545(n)-6]`
-/

namespace A239794.P4565200950073025537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A062545 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239794.P4565200950073025537

namespace A239794

/-- `∑[5*A062545(n)-6]` -/
def P4565200950073025537.Spec : Prop :=
  ∀ n, P4565200950073025537.a n = A239794 (n + 1)

end A239794

/-! ## A239794.P1147465964952544196

`record[2-∑[a(n-1)-10]]` with `a(0)=8, a(1)=8, a(2)=1`
-/

namespace A239794.P1147465964952544196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 8, 1] fun n f2 =>
  f2 (n - 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239794.P1147465964952544196

namespace A239794

/-- `record[2-∑[a(n-1)-10]]` -/
def P1147465964952544196.Spec : Prop :=
  ∀ n, P1147465964952544196.a n = A239794 (n + 1)

end A239794

/-! ## A239794.P6961112057274799114

`∑[A017377(n)-A078869(A137185(n+1))]`
-/

namespace A239794.P6961112057274799114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A078869 (A137185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239794.P6961112057274799114

namespace A239794

/-- `∑[A017377(n)-A078869(A137185(n+1))]` -/
def P6961112057274799114.Spec : Prop :=
  ∀ n, P6961112057274799114.a n = A239794 (n + 1)

end A239794

/-!
# A239795: a(n) = A239793(n)/2^(3*n).

The programs for A239795, there is no canonical definition to state claims against.
-/

/-! ## A239795.P17981563034330213958

`A239793(n)/2^(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239795.P17981563034330213958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239793 n : ℚ) / (2 ^ (3 * n) : ℚ)

end

end A239795.P17981563034330213958

/-! ## A239795.P10347590900033559814

`A365671(2*n)`
-/

namespace A239795.P10347590900033559814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365671 (2 * n)

end

end A239795.P10347590900033559814

/-! ## A239795.P6249052872535541332

`floor(A239793(n)/A001018(n))`
-/

namespace A239795.P6249052872535541332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239793 n : ℚ) / (A001018 n : ℚ)⌋

end

end A239795.P6249052872535541332

/-! ## A239795.P8383703212045912797

`ceil(A239793(n)/A226201(n))`
-/

namespace A239795.P8383703212045912797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239793 n : ℚ) / (A226201 n : ℚ)⌉

end

end A239795.P8383703212045912797

/-! ## A239795.P12514344359412044402

`gcd(∏[A005408(n)], A239793(n))`
-/

namespace A239795.P12514344359412044402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A239793 n)

end

end A239795.P12514344359412044402

/-!
# A239796: a(n) = 7*n^2 + 2*n - 15.

The programs for A239796, the canonical program `A239796.P13256761842513636672` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239796 has offset 1).

The definition of A239796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)²+2*(n+1)-15` (program `A239796.P13256761842513636672`, by `A239796.P13256761842513636672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239796.P13256761842513636672

`7*(n+1)²+2*(n+1)-15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239796

/-- `7*(n+1)²+2*(n+1)-15` -/
def P13256761842513636672.Spec : Prop :=
  ∀ n, P13256761842513636672.a n = A239796 (n + 1)

theorem P13256761842513636672.correct : P13256761842513636672.Spec := by
  intro n
  simp only [A239796, Nat.add_sub_cancel]

end A239796

/-! ## A239796.P8413908705795523512

`∑[a(n-1)+14]` with `a(0)=-6, a(1)=23`
-/

namespace A239796.P8413908705795523512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-6, 23] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239796.P8413908705795523512

namespace A239796

/-- `∑[a(n-1)+14]` -/
def P8413908705795523512.Spec : Prop :=
  ∀ n, P8413908705795523512.a n = A239796 (n + 1)

end A239796

/-! ## A239796.P8459146943120117913

`A023452((n+2)*A017005(n))`
-/

namespace A239796.P8459146943120117913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 ((n + 2 : ℤ) * A017005 n).toNat

end

end A239796.P8459146943120117913

namespace A239796

/-- `A023452((n+2)*A017005(n))` -/
def P8459146943120117913.Spec : Prop :=
  ∀ n, P8459146943120117913.a n = A239796 (n + 1)

end A239796

/-! ## A239796.P759648412836310382

`A023448(n*A023444(7*n+18))`
-/

namespace A239796.P759648412836310382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 ((n : ℤ) * A023444 (7 * n + 18)).toNat

end

end A239796.P759648412836310382

namespace A239796

/-- `A023448(n*A023444(7*n+18))` -/
def P759648412836310382.Spec : Prop :=
  ∀ n, P759648412836310382.a n = A239796 (n + 1)

end A239796

/-! ## A239796.P4169112384589013175

`A023449(A008594(n)+A005892(n))`
-/

namespace A239796.P4169112384589013175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A008594 n + A005892 n).toNat

end

end A239796.P4169112384589013175

namespace A239796

/-- `A023449(A008594(n)+A005892(n))` -/
def P4169112384589013175.Spec : Prop :=
  ∀ n, P4169112384589013175.a n = A239796 (n + 1)

end A239796

/-!
# A239798: Decimal expansion of the midsphere radius in a regular dodecahedron with unit edges.

The programs for A239798, there is no canonical definition to state claims against.
-/

/-! ## A239798.P11938232960003772941

`A244593(n)+A000038(A008624(n))`
-/

namespace A239798.P11938232960003772941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244593 (n + 2) + A000038 (A008624 n).toNat

end

end A239798.P11938232960003772941

/-! ## A239798.P7448649855229690827

`A296182(n)%A040020(A004524(n))`
-/

namespace A239798.P7448649855229690827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296182 (n + 1)) (A040020 (A004524 n).toNat)

end

end A239798.P7448649855229690827

/-! ## A239798.P8945066890013758743

`A244593(n)+A000038(A289440(n+2))`
-/

namespace A239798.P8945066890013758743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244593 (n + 2) + A000038 (A289440 (n + 2)).toNat

end

end A239798.P8945066890013758743

/-! ## A239798.P16462178696061192808

`A018783(A081259(a(n-2)+1))*A296182(n)` with `a(0)=1, a(1)=3`
-/

namespace A239798.P16462178696061192808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A018783 (A081259 (a (n - 2) + 1).toNat).toNat * A296182 (n + 1)

end

end A239798.P16462178696061192808

/-! ## A239798.P8294379444389077346

`A244593(n)+A000038((1-n)²)`
-/

namespace A239798.P8294379444389077346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244593 (n + 2) + A000038 ((1 - (n : ℤ)) ^ 2).toNat

end

end A239798.P8294379444389077346

/-!
# A239799: a(n) = gcd(Sum_{k=1...n} L(k), Product_{j=1...n} L(j)), where L(k) is the k-th Lucas number.

The programs for A239799, there is no canonical definition to state claims against.
-/

/-! ## A239799.P1193773025289377108

`A027961(n+1)/A121709(n+1)`
-/

namespace A239799.P1193773025289377108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027961 (n + 1) : ℚ) / (A121709 (n + 1) : ℚ)

end

end A239799.P1193773025289377108

/-! ## A239799.P15814018073940615595

`∑[abs(A075193(n))]/A121709(n+1)`
-/

namespace A239799.P15814018073940615595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121709 (n + 1) : ℚ)

end

end A239799.P15814018073940615595

/-! ## A239799.P6365632524195381920

`∑[A000032(n+1)]/A121709(n+1)`
-/

namespace A239799.P6365632524195381920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121709 (n + 1) : ℚ)

end

end A239799.P6365632524195381920

/-! ## A239799.P12344202246330568775

`∑[A000204(n+1)]/A121709(n+1)`
-/

namespace A239799.P12344202246330568775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121709 (n + 1) : ℚ)

end

end A239799.P12344202246330568775

/-! ## A239799.P3013828043583977870

`∑[A000045(n+2)+A000045(n)]/A121709(n+1)`
-/

namespace A239799.P3013828043583977870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A000045 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121709 (n + 1) : ℚ)

end

end A239799.P3013828043583977870

