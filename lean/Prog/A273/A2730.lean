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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A273001: Number of permutations of [n] whose cycle lengths are Fibonacci numbers.

The programs for A273001, there is no canonical definition to state claims against.
-/

/-! ## A273001.P1279161995099835556

`A028310(A057693(n)+A029572(n))`
-/

namespace A273001.P1279161995099835556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A057693 n + A029572 n).toNat

end

end A273001.P1279161995099835556

/-! ## A273001.P6754868401394394369

`A117656(A057693(n)+A029572(n))`
-/

namespace A273001.P6754868401394394369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 (A057693 n + A029572 n).toNat

end

end A273001.P6754868401394394369

/-! ## A273001.P6277609481119005729

`A028310(A053505(n)-A029573(n))`
-/

namespace A273001.P6277609481119005729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053505 n - A029573 n).toNat

end

end A273001.P6277609481119005729

/-! ## A273001.P17470371103293551224

`A028310(A070946(n)-A029571(n))`
-/

namespace A273001.P17470371103293551224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A070946 n - A029571 n).toNat

end

end A273001.P17470371103293551224

/-!
# A273003: Arrange the base 10 digits of the n-th Fibonacci number in descending order.

The programs for A273003, there is no canonical definition to state claims against.
-/

/-! ## A273003.P15818161939370967960

`A004186(A000045(n))`
-/

namespace A273003.P15818161939370967960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000045 n).toNat

end

end A273003.P15818161939370967960

/-! ## A273003.P16945788284761030112

`A272918(n)+A151949(A000045(n))`
-/

namespace A273003.P16945788284761030112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272918 n + A151949 (A000045 n).toNat

end

end A273003.P16945788284761030112

/-! ## A273003.P6771438177946734503

`A272918(n)+A151949(abs(A236191(n)))`
-/

namespace A273003.P6771438177946734503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272918 n + A151949 |A236191 n|.toNat

end

end A273003.P6771438177946734503

/-! ## A273003.P11757802785670564952

`A272918(n)+A151949(sqrt(A007598(n)))`
-/

namespace A273003.P11757802785670564952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272918 n + A151949 (SequenceMachineLib.roundAway (Real.sqrt (A007598 n : ℝ))).toNat

end

end A273003.P11757802785670564952

/-!
# A273004: Sum of coefficients in the hereditary representation of n in base 2.

The programs for A273004, the canonical program `A273004.P8655797915335692205` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273004 has offset 0).

The definition of A273004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273004.P8655797915335692205

`a(val(n, 2))+a(and(n, n-1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273004

/-- `a(val(n, 2))+a(and(n, n-1))+1` -/
def P8655797915335692205.Spec : Prop :=
  ∀ n, (P8655797915335692205.a n : ℤ) = A273004 n

theorem P8655797915335692205.correct : P8655797915335692205.Spec := by
  intro n
  simp only [A273004]

end A273004

/-! ## A273004.P6583178410681190790

`A116549(n)-1`
-/

namespace A273004.P6583178410681190790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116549 n - 1

end

end A273004.P6583178410681190790

namespace A273004

/-- `A116549(n)-1` -/
def P6583178410681190790.Spec : Prop :=
  ∀ n, P6583178410681190790.a n = A273004 n

end A273004

/-! ## A273004.P17241079825661223143

`A023443(A116549(n))`
-/

namespace A273004.P17241079825661223143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A116549 n).toNat

end

end A273004.P17241079825661223143

namespace A273004

/-- `A023443(A116549(n))` -/
def P17241079825661223143.Spec : Prop :=
  ∀ n, P17241079825661223143.a n = A273004 n

end A273004

/-! ## A273004.P7725580506332216770

`A057918(A116549(n)²)`
-/

namespace A273004.P7725580506332216770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A116549 n ^ 2).toNat

end

end A273004.P7725580506332216770

namespace A273004

/-- `A057918(A116549(n)²)` -/
def P7725580506332216770.Spec : Prop :=
  ∀ n, P7725580506332216770.a n = A273004 n

end A273004

/-! ## A273004.P3569755905516501515

`A088226(A116549(n)²)`
-/

namespace A273004.P3569755905516501515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A116549 n ^ 2).toNat

end

end A273004.P3569755905516501515

namespace A273004

/-- `A088226(A116549(n)²)` -/
def P3569755905516501515.Spec : Prop :=
  ∀ n, P3569755905516501515.a n = A273004 n

end A273004

/-! ## A273004.P4106022078431365845

`A259361(A116549(n)²)`
-/

namespace A273004.P4106022078431365845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A116549 n ^ 2).toNat

end

end A273004.P4106022078431365845

namespace A273004

/-- `A259361(A116549(n)²)` -/
def P4106022078431365845.Spec : Prop :=
  ∀ n, P4106022078431365845.a n = A273004 n

end A273004

/-! ## A273004.P12685835365012562192

`A023444(A116549(n)+1)`
-/

namespace A273004.P12685835365012562192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A116549 n + 1).toNat

end

end A273004.P12685835365012562192

namespace A273004

/-- `A023444(A116549(n)+1)` -/
def P12685835365012562192.Spec : Prop :=
  ∀ n, P12685835365012562192.a n = A273004 n

end A273004

/-! ## A273004.P14593329236034152191

`A289207(A116549(n)+1)`
-/

namespace A273004.P14593329236034152191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A116549 n + 1).toNat

end

end A273004.P14593329236034152191

namespace A273004

/-- `A289207(A116549(n)+1)` -/
def P14593329236034152191.Spec : Prop :=
  ∀ n, P14593329236034152191.a n = A273004 n

end A273004

/-! ## A273004.P16473252885946039834

`A046667(2*A116549(n))`
-/

namespace A273004.P16473252885946039834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A116549 n).toNat

end

end A273004.P16473252885946039834

namespace A273004

/-- `A046667(2*A116549(n))` -/
def P16473252885946039834.Spec : Prop :=
  ∀ n, P16473252885946039834.a n = A273004 n

end A273004

/-! ## A273004.P916742862151002590

`A225058(4*A116549(n))`
-/

namespace A273004.P916742862151002590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (4 * A116549 n).toNat

end

end A273004.P916742862151002590

namespace A273004

/-- `A225058(4*A116549(n))` -/
def P916742862151002590.Spec : Prop :=
  ∀ n, P916742862151002590.a n = A273004 n

end A273004

/-! ## A273004.P11152206710919770344

`A025581(2*A116549(n)²)`
-/

namespace A273004.P11152206710919770344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A116549 n ^ 2).toNat

end

end A273004.P11152206710919770344

namespace A273004

/-- `A025581(2*A116549(n)²)` -/
def P11152206710919770344.Spec : Prop :=
  ∀ n, P11152206710919770344.a n = A273004 n

end A273004

/-! ## A273004.P3651666819549031648

`A023444(2*A116549(n))/2`
-/

namespace A273004.P3651666819549031648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A116549 n).toNat : ℚ) / 2

end

end A273004.P3651666819549031648

namespace A273004

/-- `A023444(2*A116549(n))/2` -/
def P3651666819549031648.Spec : Prop :=
  ∀ n, P3651666819549031648.a n = (A273004 n : ℚ)

end A273004

/-! ## A273004.P15982235685600313786

`A289207(2*A116549(n))/2`
-/

namespace A273004.P15982235685600313786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * A116549 n).toNat : ℚ) / 2

end

end A273004.P15982235685600313786

namespace A273004

/-- `A289207(2*A116549(n))/2` -/
def P15982235685600313786.Spec : Prop :=
  ∀ n, P15982235685600313786.a n = (A273004 n : ℚ)

end A273004

/-! ## A273004.P4274354762941286785

`(A116549(n)+A004767(n))%(n+1)`
-/

namespace A273004.P4274354762941286785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116549 n + A004767 n) (n + 1 : ℤ)

end

end A273004.P4274354762941286785

namespace A273004

/-- `(A116549(n)+A004767(n))%(n+1)` -/
def P4274354762941286785.Spec : Prop :=
  ∀ n, P4274354762941286785.a n = A273004 n

end A273004

/-! ## A273004.P14112761788338085244

`∑{p}[A019565(n), A256555(#)]`
-/

namespace A273004.P14112761788338085244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A256555 p

end

end A273004.P14112761788338085244

namespace A273004

/-- `∑{p}[A019565(n), A256555(#)]` -/
def P14112761788338085244.Spec : Prop :=
  ∀ n, P14112761788338085244.a n = A273004 n

end A273004

/-! ## A273004.P12706273761672721824

`A070198(n)%A116549(n)`
-/

namespace A273004.P12706273761672721824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A116549 n)

end

end A273004.P12706273761672721824

namespace A273004

/-- `A070198(n)%A116549(n)` -/
def P12706273761672721824.Spec : Prop :=
  ∀ n, P12706273761672721824.a n = A273004 n

end A273004

/-! ## A273004.P1807681311727772626

`A079782(n+1)%A116549(n)`
-/

namespace A273004.P1807681311727772626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A116549 n)

end

end A273004.P1807681311727772626

namespace A273004

/-- `A079782(n+1)%A116549(n)` -/
def P1807681311727772626.Spec : Prop :=
  ∀ n, P1807681311727772626.a n = A273004 n

end A273004

/-! ## A273004.P7406304794449897110

`A083685(n+1)%A116549(n)`
-/

namespace A273004.P7406304794449897110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A116549 n)

end

end A273004.P7406304794449897110

namespace A273004

/-- `A083685(n+1)%A116549(n)` -/
def P7406304794449897110.Spec : Prop :=
  ∀ n, P7406304794449897110.a n = A273004 n

end A273004

/-! ## A273004.P11938462558052654034

`A121934(n+1)%A116549(n)`
-/

namespace A273004.P11938462558052654034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A116549 n)

end

end A273004.P11938462558052654034

namespace A273004

/-- `A121934(n+1)%A116549(n)` -/
def P11938462558052654034.Spec : Prop :=
  ∀ n, P11938462558052654034.a n = A273004 n

end A273004

/-!
# A273005: Sum of coefficients in the hereditary representation of n in base 10.

The programs for A273005, the canonical program `A273005.P9844364991064173353` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273005 has offset 0).

The definition of A273005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273005.P9844364991064173353

`∑{digits}[n, #+1]-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273005

/-- `∑{digits}[n, #+1]-1` -/
def P9844364991064173353.Spec : Prop :=
  ∀ n, P9844364991064173353.a n = A273005 n

theorem P9844364991064173353.correct : P9844364991064173353.Spec := by
  intro n
  simp only [A273005]

end A273005

/-! ## A273005.P7331976814756639053

`(∑{digits}[n, #+1]+n)%(n+1)`
-/

namespace A273005.P7331976814756639053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).sum + n) % (n + 1)

end

end A273005.P7331976814756639053

namespace A273005

/-- `(∑{digits}[n, #+1]+n)%(n+1)` -/
def P7331976814756639053.Spec : Prop :=
  ∀ n, (P7331976814756639053.a n : ℤ) = A273005 n

end A273005

/-! ## A273005.P16602600051211685905

`xor(n, -1)+∑{digits}[n, #+1]+n`
-/

namespace A273005.P16602600051211685905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).sum + n : ℕ) : ℤ)

end

end A273005.P16602600051211685905

namespace A273005

/-- `xor(n, -1)+∑{digits}[n, #+1]+n` -/
def P16602600051211685905.Spec : Prop :=
  ∀ n, P16602600051211685905.a n = A273005 n

end A273005

/-! ## A273005.P15295031975843780443

`floor(log2(A101440(n)))`
-/

namespace A273005.P15295031975843780443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A101440 n).toNat

end

end A273005.P15295031975843780443

namespace A273005

/-- `floor(log2(A101440(n)))` -/
def P15295031975843780443.Spec : Prop :=
  ∀ n, (P15295031975843780443.a n : ℤ) = A273005 n

end A273005

/-! ## A273005.P11704626957714438438

`A240848(n)-(n+1)`
-/

namespace A273005.P11704626957714438438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240848 n - (n + 1 : ℤ)

end

end A273005.P11704626957714438438

namespace A273005

/-- `A240848(n)-(n+1)` -/
def P11704626957714438438.Spec : Prop :=
  ∀ n, P11704626957714438438.a n = A273005 n

end A273005

/-! ## A273005.P11537159695683692916

`A055642(n)-(1-∑{digits}[n, #])`
-/

namespace A273005.P11537159695683692916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A273005.P11537159695683692916

namespace A273005

/-- `A055642(n)-(1-∑{digits}[n, #])` -/
def P11537159695683692916.Spec : Prop :=
  ∀ n, P11537159695683692916.a n = A273005 n

end A273005

/-! ## A273005.P8485567586158784131

`A007953(n)+A055642(n)-1`
-/

namespace A273005.P8485567586158784131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A055642 n - 1)

end

end A273005.P8485567586158784131

namespace A273005

/-- `A007953(n)+A055642(n)-1` -/
def P8485567586158784131.Spec : Prop :=
  ∀ n, P8485567586158784131.a n = A273005 n

end A273005

/-! ## A273005.P1537068250349056591

`A007953(n)+A348674(n)-1`
-/

namespace A273005.P1537068250349056591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A348674 n - 1)

end

end A273005.P1537068250349056591

namespace A273005

/-- `A007953(n)+A348674(n)-1` -/
def P1537068250349056591.Spec : Prop :=
  ∀ n, P1537068250349056591.a n = A273005 n

end A273005

/-! ## A273005.P10775683428032316038

`A337843(n)-A160941(n+1)`
-/

namespace A273005.P10775683428032316038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n - A160941 (n + 1)

end

end A273005.P10775683428032316038

namespace A273005

/-- `A337843(n)-A160941(n+1)` -/
def P10775683428032316038.Spec : Prop :=
  ∀ n, P10775683428032316038.a n = A273005 n

end A273005

/-! ## A273005.P4545317302100787831

`A240848(n)%A000027(n+1)`
-/

namespace A273005.P4545317302100787831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240848 n) (A000027 (n + 1))

end

end A273005.P4545317302100787831

namespace A273005

/-- `A240848(n)%A000027(n+1)` -/
def P4545317302100787831.Spec : Prop :=
  ∀ n, P4545317302100787831.a n = A273005 n

end A273005

/-! ## A273005.P10830297163147304493

`A055642(n)-A160941(n+1)+n`
-/

namespace A273005.P10830297163147304493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A160941 (n + 1) + (n : ℤ)

end

end A273005.P10830297163147304493

namespace A273005

/-- `A055642(n)-A160941(n+1)+n` -/
def P10830297163147304493.Spec : Prop :=
  ∀ n, P10830297163147304493.a n = A273005 n

end A273005

/-! ## A273005.P4629742720834016175

`A007953(n)+A004216(A109613(n))`
-/

namespace A273005.P4629742720834016175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A004216 (A109613 n).toNat

end

end A273005.P4629742720834016175

namespace A273005

/-- `A007953(n)+A004216(A109613(n))` -/
def P4629742720834016175.Spec : Prop :=
  ∀ n, P4629742720834016175.a n = A273005 n

end A273005

/-! ## A273005.P2571890000825495712

`A007953(n)+A004216(A139337(n))`
-/

namespace A273005.P2571890000825495712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A004216 (A139337 n).toNat

end

end A273005.P2571890000825495712

namespace A273005

/-- `A007953(n)+A004216(A139337(n))` -/
def P2571890000825495712.Spec : Prop :=
  ∀ n, P2571890000825495712.a n = A273005 n

end A273005

/-! ## A273005.P7085065537658685455

`A007953(n)+A004216(A213217(n))`
-/

namespace A273005.P7085065537658685455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A004216 (A213217 n).toNat

end

end A273005.P7085065537658685455

namespace A273005

/-- `A007953(n)+A004216(A213217(n))` -/
def P7085065537658685455.Spec : Prop :=
  ∀ n, P7085065537658685455.a n = A273005 n

end A273005

/-!
# A273007: a(n) is the smallest exponent > 1 such that p^a(n) ends with p, where p is the n-th prime.

The programs for A273007, there is no canonical definition to state claims against.
-/

/-! ## A273007.P3015168732049914136

`A074250(p?[xor(1, n)])`
-/

namespace A273007.P3015168732049914136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A273007.P3015168732049914136

/-! ## A273007.P14904893782508789959

`A074250(p?[comp[n²]])`
-/

namespace A273007.P14904893782508789959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A273007.P14904893782508789959

/-! ## A273007.P3665077974710494492

`A074250(A000040(n+1))`
-/

namespace A273007.P3665077974710494492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (A000040 (n + 1)).toNat

end

end A273007.P3665077974710494492

/-! ## A273007.P210269114966021094

`A074250(A161847(n+1))`
-/

namespace A273007.P210269114966021094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (A161847 (n + 1)).toNat

end

end A273007.P210269114966021094

/-! ## A273007.P13476375540619590458

`A074250(A008578(n+2))`
-/

namespace A273007.P13476375540619590458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (A008578 (n + 2)).toNat

end

end A273007.P13476375540619590458

/-! ## A273007.P11103776821752667248

`A074250(A182986(n+2))`
-/

namespace A273007.P11103776821752667248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (A182986 (n + 2)).toNat

end

end A273007.P11103776821752667248

/-!
# A273009: Numbers k such that (2^k + 5) / 3 is prime.

The programs for A273009, there is no canonical definition to state claims against.
-/

/-! ## A273009.P3592471677085735016

`2*A261539(n+1)`
-/

namespace A273009.P3592471677085735016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261539 (n + 1)

end

end A273009.P3592471677085735016

/-! ## A273009.P16273151626363520535

`A261539(n+1)+A261539(Δ[n²]-n)`
-/

namespace A273009.P16273151626363520535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261539 (n + 1) + A261539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A273009.P16273151626363520535

/-! ## A273009.P12539867943690086804

`A261539(n+1)+A261539(n+1)%A000079(n)`
-/

namespace A273009.P12539867943690086804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261539 (n + 1) + Int.tmod (A261539 (n + 1)) (A000079 n)

end

end A273009.P12539867943690086804

/-! ## A273009.P6945504023959791389

`A261539(n+1)+and(A055580(n), A261539(n+1))`
-/

namespace A273009.P6945504023959791389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261539 (n + 1) + Int.land (A055580 n) (A261539 (n + 1))

end

end A273009.P6945504023959791389

/-! ## A273009.P5790635117530599932

`A005843(A261539(n+1))`
-/

namespace A273009.P5790635117530599932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A261539 (n + 1)).toNat

end

end A273009.P5790635117530599932

/-!
# A273012: Totient of the n-th semiprime.

The programs for A273012, the canonical program `A273012.P9900292874228460115` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273012 has offset 1).

The definition of A273012 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001358, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273012.P9900292874228460115

`A000010(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A273012

/-- `A000010(A001358(n+1))` -/
def P9900292874228460115.Spec : Prop :=
  ∀ n, P9900292874228460115.a n = A273012 (n + 1)

theorem P9900292874228460115.correct : P9900292874228460115.Spec := by
  intro n
  simp only [A273012, Nat.add_sub_cancel]

end A273012

/-! ## A273012.P11507587123044562339

`A000010(sqrt(A074985(n+1)))`
-/

namespace A273012.P11507587123044562339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A273012.P11507587123044562339

namespace A273012

/-- `A000010(sqrt(A074985(n+1)))` -/
def P11507587123044562339.Spec : Prop :=
  ∀ n, P11507587123044562339.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P9987260415441790730

`A000010(A186621(n+1)+1)`
-/

namespace A273012.P9987260415441790730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A186621 (n + 1) + 1).toNat

end

end A273012.P9987260415441790730

namespace A273012

/-- `A000010(A186621(n+1)+1)` -/
def P9987260415441790730.Spec : Prop :=
  ∀ n, P9987260415441790730.a n = A273012 (n + 1)

theorem P9987260415441790730.correct : P9987260415441790730.Spec := by
  intro n
  simp only [A273012, Nat.add_sub_cancel, A273012.P9987260415441790730.a, A273012.P9900292874228460115.a, A000010, A000010.P4673923239450215316.a, A001358, A001358.P632087320844056370.a, A186621, A186621.P5089299060388261365.a, A003557, A003557.P6364735403900941810.a, A088707, A088707.P7291141647877559993.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A273012

/-! ## A273012.P695336436678951324

`A000010(A088707(n+1)-1)`
-/

namespace A273012.P695336436678951324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A088707 (n + 1) - 1).toNat

end

end A273012.P695336436678951324

namespace A273012

/-- `A000010(A088707(n+1)-1)` -/
def P695336436678951324.Spec : Prop :=
  ∀ n, P695336436678951324.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P4325621582777101927

`A000010(A075818(n+1)/2)`
-/

namespace A273012.P4325621582777101927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A273012.P4325621582777101927

namespace A273012

/-- `A000010(A075818(n+1)/2)` -/
def P4325621582777101927.Spec : Prop :=
  ∀ n, P4325621582777101927.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P6940828898874440072

`A000010(eq[2, A001222(n+1)]+1)`
-/

namespace A273012.P6940828898874440072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A273012.P6940828898874440072

namespace A273012

/-- `A000010(eq[2, A001222(n+1)]+1)` -/
def P6940828898874440072.Spec : Prop :=
  ∀ n, P6940828898874440072.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P8609801006174078490

`A000010(A175708(n+1)+n+1)`
-/

namespace A273012.P8609801006174078490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A175708 (n + 1) + (n + 1 : ℤ)).toNat

end

end A273012.P8609801006174078490

namespace A273012

/-- `A000010(A175708(n+1)+n+1)` -/
def P8609801006174078490.Spec : Prop :=
  ∀ n, P8609801006174078490.a n = A273012 (n + 1)

theorem P8609801006174078490.correct : P8609801006174078490.Spec := by
  intro n
  simp only [A273012, Nat.add_sub_cancel, A273012.P8609801006174078490.a, A273012.P9900292874228460115.a, A000010, A000010.P4673923239450215316.a, A001358, A001358.P632087320844056370.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A003557, A003557.P6364735403900941810.a, A088707, A088707.P7291141647877559993.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A273012

/-! ## A273012.P8714662843903085801

`A000010(A100493(n+1)-(n+1))`
-/

namespace A273012.P8714662843903085801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A100493 (n + 1) - (n + 1 : ℤ)).toNat

end

end A273012.P8714662843903085801

namespace A273012

/-- `A000010(A100493(n+1)-(n+1))` -/
def P8714662843903085801.Spec : Prop :=
  ∀ n, P8714662843903085801.a n = A273012 (n + 1)

theorem P8714662843903085801.correct : P8714662843903085801.Spec := by
  intro n
  simp only [A273012, Nat.add_sub_cancel, A273012.P8714662843903085801.a, A273012.P9900292874228460115.a, A000010, A000010.P4673923239450215316.a, A001358, A001358.P632087320844056370.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A003557, A003557.P6364735403900941810.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A273012

/-! ## A273012.P6396024744783533633

`A000010(record[n/a(A001222(n))])` with `a(0)=4, a(1)=2`
-/

namespace A273012.P6396024744783533633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A273012.P6396024744783533633

namespace A273012

/-- `A000010(record[n/a(A001222(n))])` -/
def P6396024744783533633.Spec : Prop :=
  ∀ n, P6396024744783533633.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P14868494322895416131

`A000010(eq[n, n-a(A001222(n))])` with `a(0)=-1`
-/

namespace A273012.P14868494322895416131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273012.P14868494322895416131

namespace A273012

/-- `A000010(eq[n, n-a(A001222(n))])` -/
def P14868494322895416131.Spec : Prop :=
  ∀ n, P14868494322895416131.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P5212870540520117021

`A000010(eq[4, a(A001222(n))²])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A273012.P5212870540520117021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273012.P5212870540520117021

namespace A273012

/-- `A000010(eq[4, a(A001222(n))²])` -/
def P5212870540520117021.Spec : Prop :=
  ∀ n, P5212870540520117021.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P12820307635176670529

`A000010(eq[A001221(n+1)+2, A000005(n+1)]+1)`
-/

namespace A273012.P12820307635176670529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A273012.P12820307635176670529

namespace A273012

/-- `A000010(eq[A001221(n+1)+2, A000005(n+1)]+1)` -/
def P12820307635176670529.Spec : Prop :=
  ∀ n, P12820307635176670529.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P653325816157687329

`A000010(A176540(n+2))`
-/

namespace A273012.P653325816157687329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A176540 (n + 2)).toNat

end

end A273012.P653325816157687329

namespace A273012

/-- `A000010(A176540(n+2))` -/
def P653325816157687329.Spec : Prop :=
  ∀ n, P653325816157687329.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P6028671123955179340

`A000010(A129767(2*(n+1)))`
-/

namespace A273012.P6028671123955179340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A129767 (2 * (n + 1))).toNat

end

end A273012.P6028671123955179340

namespace A273012

/-- `A000010(A129767(2*(n+1)))` -/
def P6028671123955179340.Spec : Prop :=
  ∀ n, P6028671123955179340.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P10593879092967499155

`A073256(A176193(n+1))`
-/

namespace A273012.P10593879092967499155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073256 (A176193 (n + 1)).toNat

end

end A273012.P10593879092967499155

namespace A273012

/-- `A073256(A176193(n+1))` -/
def P10593879092967499155.Spec : Prop :=
  ∀ n, P10593879092967499155.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P9005055709983171982

`A000010(eq[2, ∑{e}[n, #]])`
-/

namespace A273012.P9005055709983171982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273012.P9005055709983171982

namespace A273012

/-- `A000010(eq[2, ∑{e}[n, #]])` -/
def P9005055709983171982.Spec : Prop :=
  ∀ n, P9005055709983171982.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P12272382285594590394

`A000010(lt[1, A105700(n)])`
-/

namespace A273012.P12272382285594590394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A273012.P12272382285594590394

namespace A273012

/-- `A000010(lt[1, A105700(n)])` -/
def P12272382285594590394.Spec : Prop :=
  ∀ n, P12272382285594590394.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P12173201135445792510

`A000010(eq[2, A226378(n)])`
-/

namespace A273012.P12173201135445792510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273012.P12173201135445792510

namespace A273012

/-- `A000010(eq[2, A226378(n)])` -/
def P12173201135445792510.Spec : Prop :=
  ∀ n, P12173201135445792510.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P6338917959662549469

`A000010(eq[2, A284289(n)])`
-/

namespace A273012.P6338917959662549469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273012.P6338917959662549469

namespace A273012

/-- `A000010(eq[2, A284289(n)])` -/
def P6338917959662549469.Spec : Prop :=
  ∀ n, P6338917959662549469.a n = A273012 (n + 1)

end A273012

/-! ## A273012.P6647816705202522732

`A062570(A176570(n+1))`
-/

namespace A273012.P6647816705202522732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A176570 (n + 1)).toNat

end

end A273012.P6647816705202522732

namespace A273012

/-- `A062570(A176570(n+1))` -/
def P6647816705202522732.Spec : Prop :=
  ∀ n, P6647816705202522732.a n = A273012 (n + 1)

end A273012

/-!
# A273013: Number of different arrangements of nonnegative integers on a pair of n-sided dice such that the dice can add to any integer from 0 to n^2-1.

The programs for A273013, there is no canonical definition to state claims against.
-/

/-! ## A273013.P9853595803210414898

`A335619(n+1)-char[A080607(n+1)]`
-/

namespace A273013.P9853595803210414898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335619 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273013.P9853595803210414898

/-! ## A273013.P14757665478034065349

`A335619(n+1)-char[A329847(2*(n+1))]`
-/

namespace A273013.P14757665478034065349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329847 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335619 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273013.P14757665478034065349

/-! ## A273013.P2410127456745628404

`A059101(A082588(n+1))%A027688(n)`
-/

namespace A273013.P2410127456745628404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059101 (A082588 (n + 1)).toNat) (A027688 n)

end

end A273013.P2410127456745628404

/-! ## A273013.P14760014871615894874

`A335619(n+1)-char[3*A003056(n-A144473(n+1))]`
-/

namespace A273013.P14760014871615894874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003056 ((n : ℤ) - A144473 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335619 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273013.P14760014871615894874

/-! ## A273013.P6587998113990404308

`A086305(A126796(A320655(n+1)+A046523(n+1)))`
-/

namespace A273013.P6587998113990404308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086305 (A126796 (A320655 (n + 1) + A046523 (n + 1)).toNat).toNat

end

end A273013.P6587998113990404308

/-!
# A273015: Ramanujan's largely composite numbers having 3 as the greatest prime divisor.

The programs for A273015, there is no canonical definition to state claims against.
-/

/-! ## A273015.P323981479492803376

`record[(gcd(2, n)+1)*∑{d}[∏{p}[n+1, #], (n+1)/#]]`
-/

namespace A273015.P323981479492803376
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273015.P323981479492803376

/-! ## A273015.P3896346237362169295

`3*A001013(n+1)`
-/

namespace A273015.P3896346237362169295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001013 (n + 1)

end

end A273015.P3896346237362169295

/-! ## A273015.P3473992226237964010

`3*A025610(n+1)`
-/

namespace A273015.P3473992226237964010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025610 (n + 1)

end

end A273015.P3473992226237964010

/-! ## A273015.P5287354931144750019

`3*A250270(n+1)`
-/

namespace A273015.P5287354931144750019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A250270 (n + 1)

end

end A273015.P5287354931144750019

/-! ## A273015.P772317955757226482

`3*A344181(n+1)`
-/

namespace A273015.P772317955757226482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A344181 (n + 1)

end

end A273015.P772317955757226482

/-!
# A273016: Ramanujan's largely composite numbers having 5 as the greatest prime divisor.

The programs for A273016, there is no canonical definition to state claims against.
-/

/-! ## A273016.P17969387447230917083

`∩[A034288(n+1), A071821(n+1)]`
-/

namespace A273016.P17969387447230917083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273016.P17969387447230917083

/-! ## A273016.P10065139227142913209

`∩[A034287(n+1), A080193(n+1)]`
-/

namespace A273016.P10065139227142913209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273016.P10065139227142913209

/-! ## A273016.P13084494553059347632

`∩[A034288(n+1), A080193(n+1)]`
-/

namespace A273016.P13084494553059347632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273016.P13084494553059347632

/-!
# A273018: Ramanujan's largely composite numbers having 7 as the greatest prime divisor.

The programs for A273018, there is no canonical definition to state claims against.
-/

/-! ## A273018.P5928912753654994155

`∩[A034287(n+1), A080194(n+1)]`
-/

namespace A273018.P5928912753654994155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273018.P5928912753654994155

/-! ## A273018.P11838291131765195318

`∩[A034288(n+1), A080194(n+1)]`
-/

namespace A273018.P11838291131765195318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273018.P11838291131765195318

/-! ## A273018.P9190037913914585178

`∩[A080194(n+1), A291899(n+1)]`
-/

namespace A273018.P9190037913914585178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273018.P9190037913914585178

/-! ## A273018.P16719391650162959736

`∩[A034288(n+1), A325994(n+1)]`
-/

namespace A273018.P16719391650162959736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273018.P16719391650162959736

/-!
# A273019: a(n) = hypergeom([-2*n-1, 1/2], [2], 4) + (2*n+1)*hypergeom([-n+1/2, -n], [2], 4).

The programs for A273019, the canonical program `A273019.P13210225163452937065` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273019 has offset 0).

The definition of A273019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273019.P3838675218123804175

`A273020(Δ[n²])`
-/

namespace A273019.P3838675218123804175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273020 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A273019.P3838675218123804175

namespace A273019

/-- `A273020(Δ[n²])` -/
def P3838675218123804175.Spec : Prop :=
  ∀ n, P3838675218123804175.a n = A273019 n

end A273019

/-! ## A273019.P13210225163452937065

`A005717(2*n+1)-A099252(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A273019

/-- `A005717(2*n+1)-A099252(n)` -/
def P13210225163452937065.Spec : Prop :=
  ∀ n, P13210225163452937065.a n = A273019 n

theorem P13210225163452937065.correct : P13210225163452937065.Spec := by
  intro n
  simp only [A273019]

end A273019

/-! ## A273019.P7549876657390257206

`A082758(n+1)-2*A273055(n)`
-/

namespace A273019.P7549876657390257206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082758 (n + 1) - 2 * A273055 n

end

end A273019.P7549876657390257206

namespace A273019

/-- `A082758(n+1)-2*A273055(n)` -/
def P7549876657390257206.Spec : Prop :=
  ∀ n, P7549876657390257206.a n = A273019 n

end A273019

/-! ## A273019.P781428871868138261

`A002426(2*n+1)-A103872(2*n)`
-/

namespace A273019.P781428871868138261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (2 * n + 1) - A103872 (2 * n)

end

end A273019.P781428871868138261

namespace A273019

/-- `A002426(2*n+1)-A103872(2*n)` -/
def P781428871868138261.Spec : Prop :=
  ∀ n, P781428871868138261.a n = A273019 n

end A273019

/-! ## A273019.P1597299106357724750

`A005717(2*n+1)-A005043(2*n+1)`
-/

namespace A273019.P1597299106357724750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (2 * n + 1) - A005043 (2 * n + 1)

end

end A273019.P1597299106357724750

namespace A273019

/-- `A005717(2*n+1)-A005043(2*n+1)` -/
def P1597299106357724750.Spec : Prop :=
  ∀ n, P1597299106357724750.a n = A273019 n

end A273019

/-! ## A273019.P8724160770942160416

`A025178(2*(n+1))-A002426(2*n+1)`
-/

namespace A273019.P8724160770942160416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (2 * (n + 1)) - A002426 (2 * n + 1)

end

end A273019.P8724160770942160416

namespace A273019

/-- `A025178(2*(n+1))-A002426(2*n+1)` -/
def P8724160770942160416.Spec : Prop :=
  ∀ n, P8724160770942160416.a n = A273019 n

end A273019

/-!
# A273020: a(n) = Sum_{k=0..n} C(n,k)*((-1)^n*(C(k,n-k)-C(k,n-k-1))+C(n-k,k+1)).

The programs for A273020, the canonical program `A273020.P8082277504351008940` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273020 has offset 0).

The definition of A273020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273020.P8082277504351008940

`Δ[A097861(n)+∑[A099323(n)]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A273020

/-- `Δ[A097861(n)+∑[A099323(n)]]` -/
def P8082277504351008940.Spec : Prop :=
  ∀ n, P8082277504351008940.a n = A273020 n

theorem P8082277504351008940.correct : P8082277504351008940.Spec := by
  intro n
  simp only [A273020]

end A273020

/-! ## A273020.P10110192003669961054

`Δ[A257520(n)+∑[A099323(n)]]`
-/

namespace A273020.P10110192003669961054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273020.P10110192003669961054

namespace A273020

/-- `Δ[A257520(n)+∑[A099323(n)]]` -/
def P10110192003669961054.Spec : Prop :=
  ∀ n, P10110192003669961054.a n = A273020 n

theorem P10110192003669961054.correct : P10110192003669961054.Spec := by
  intro n
  simp only [A273020, Nat.add_sub_cancel, A273020.P10110192003669961054.f2, A273020.P10110192003669961054.f1, A273020.P10110192003669961054.a, A273020.P8082277504351008940.f2, A273020.P8082277504351008940.f1, A273020.P8082277504351008940.a, A097861, A097861.P10253467573463981684.a, A099323, A099323.P4978299837579704435.f1, A099323.P4978299837579704435.a, A257520, A257520.P11881127439333961031.a, A002426, A002426.P18316219981098248731.a, A033999, A033999.P17703899380244199787.a, A168051, A168051.P12367257116989189767.a, A000038, A000038.P13734959004655594922.a, A168049, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, A000007, A000007.P6599383543502402472.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A273020

/-! ## A273020.P10259090115653280507

`A099323(n+1)+Δ[A097861(n)]`
-/

namespace A273020.P10259090115653280507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1) + (f1 (n + 1) - f1 n)

end

end A273020.P10259090115653280507

namespace A273020

/-- `A099323(n+1)+Δ[A097861(n)]` -/
def P10259090115653280507.Spec : Prop :=
  ∀ n, P10259090115653280507.a n = A273020 n

end A273020

/-! ## A273020.P9640920298888677517

`A099323(n+1)+Δ[A257520(n)]`
-/

namespace A273020.P9640920298888677517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1) + (f1 (n + 1) - f1 n)

end

end A273020.P9640920298888677517

namespace A273020

/-- `A099323(n+1)+Δ[A257520(n)]` -/
def P9640920298888677517.Spec : Prop :=
  ∀ n, P9640920298888677517.a n = A273020 n

end A273020

/-! ## A273020.P7654337113427340986

`Δ[A097861(n)]-A174297(n+2)`
-/

namespace A273020.P7654337113427340986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A174297 (n + 2)

end

end A273020.P7654337113427340986

namespace A273020

/-- `Δ[A097861(n)]-A174297(n+2)` -/
def P7654337113427340986.Spec : Prop :=
  ∀ n, P7654337113427340986.a n = A273020 n

end A273020

/-!
# A273021: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with 2*x*y + y*z - z*w - w*x a square, where w is a positive integer and x,y,z are nonnegative integers with x <= y.

The programs for A273021, there is no canonical definition to state claims against.
-/

/-! ## A273021.P14254560997878976242

`A257079(A083353(n)%A273506(2*(n+1)))`
-/

namespace A273021.P14254560997878976242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 (Int.tmod (A083353 n) (A273506 (2 * (n + 1)))).toNat

end

end A273021.P14254560997878976242

/-! ## A273021.P6191160488099368471

`A159631(A258758(n))+A037800(A053767(n))`
-/

namespace A273021.P6191160488099368471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A258758 n).toNat + A037800 (A053767 n).toNat

end

end A273021.P6191160488099368471

/-! ## A273021.P12626845328644656192

`A072047(A284852(2*n+5)+A268423(n+1))`
-/

namespace A273021.P12626845328644656192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072047 (A284852 (2 * n + 5) + A268423 (n + 1)).toNat

end

end A273021.P12626845328644656192

/-! ## A273021.P7859295456155813744

`A001221(A002146(n)+A000646(n))`
-/

namespace A273021.P7859295456155813744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002146 n + A000646 n).toNat

end

end A273021.P7859295456155813744

/-! ## A273021.P614743901153813472

`A296977(A337378(n+2)+A295931(n+1))`
-/

namespace A273021.P614743901153813472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296977 (A337378 (n + 2) + A295931 (n + 1)).toNat

end

end A273021.P614743901153813472

/-!
# A273022: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A273022, there is no canonical definition to state claims against.
-/

/-! ## A273022.P4333751903166504384

`Δ[n²]²-A272577(n)%A272579(n)`
-/

namespace A273022.P4333751903166504384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - Int.tmod (A272577 n) (A272579 n)

end

end A273022.P4333751903166504384

/-! ## A273022.P4984028376987331731

`A000007(n)+A016754(n)-A272577(n)`
-/

namespace A273022.P4984028376987331731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A272577 n)

end

end A273022.P4984028376987331731

/-! ## A273022.P2397067197593623903

`A016754(n)+A057428(n)*A272577(n)`
-/

namespace A273022.P2397067197593623903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A057428 n * A272577 n

end

end A273022.P2397067197593623903

/-! ## A273022.P8255080612154613529

`A016754(n)-A057427(n)*A272577(n)`
-/

namespace A273022.P8255080612154613529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A057427 n * A272577 n

end

end A273022.P8255080612154613529

/-! ## A273022.P1794721503583919256

`or(A016754(n)-A272577(n), A000007(2*n))`
-/

namespace A273022.P1794721503583919256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016754 n - A272577 n) (A000007 (2 * n))

end

end A273022.P1794721503583919256

/-! ## A273022.P15789950803388876617

`xor(A016754(n)-A272577(n), A000007(3*n))`
-/

namespace A273022.P15789950803388876617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016754 n - A272577 n) (A000007 (3 * n))

end

end A273022.P15789950803388876617

/-! ## A273022.P16184631900691365256

`val(A005843(n+1), n+2)+A016754(n)-A272577(n)`
-/

namespace A273022.P16184631900691365256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A005843 (n + 1)).toNat (n + 2) : ℤ) + (A016754 n - A272577 n)

end

end A273022.P16184631900691365256

/-! ## A273022.P16650075689388186000

`val(n+2, A152749(n+1))+A016754(n)-A272577(n)`
-/

namespace A273022.P16650075689388186000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 2) (A152749 (n + 1)).toNat : ℤ) + (A016754 n - A272577 n)

end

end A273022.P16650075689388186000

/-! ## A273022.P17654365394513858861

`A008683(A008574(n))+A016754(n)-A272577(n)`
-/

namespace A273022.P17654365394513858861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A016754 n - A272577 n)

end

end A273022.P17654365394513858861

/-! ## A273022.P9392673732841194563

`A209229(A008458(n))+A016754(n)-A272577(n)`
-/

namespace A273022.P9392673732841194563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A008458 n).toNat + (A016754 n - A272577 n)

end

end A273022.P9392673732841194563

/-! ## A273022.P1812212708801987972

`A016754(n)+A008482(A057944(n))*A272577(n)`
-/

namespace A273022.P1812212708801987972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A008482 (A057944 n).toNat * A272577 n

end

end A273022.P1812212708801987972

/-! ## A273022.P1048906392505034338

`A016754(n)-A019426(A005843(n))*A272577(n)`
-/

namespace A273022.P1048906392505034338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A019426 (A005843 n).toNat * A272577 n

end

end A273022.P1048906392505034338

/-! ## A273022.P14445184238065541088

`A016754(n)-A088705(A038573(n))*A272577(n)`
-/

namespace A273022.P14445184238065541088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A088705 (A038573 n).toNat * A272577 n

end

end A273022.P14445184238065541088

/-! ## A273022.P4020933844343860220

`A257000(A008864(n+1))+A016754(n)-A272577(n)`
-/

namespace A273022.P4020933844343860220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A008864 (n + 1)).toNat + (A016754 n - A272577 n)

end

end A273022.P4020933844343860220

/-! ## A273022.P8943033021690604827

`A016754(n)-A001222(A008578(n+1))*A272577(n)`
-/

namespace A273022.P8943033021690604827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A001222 (A008578 (n + 1)).toNat * A272577 n

end

end A273022.P8943033021690604827

/-! ## A273022.P17078631662291979089

`A273025(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273022.P17078631662291979089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273025 (n - 1) + a (n - 1)

end

end A273022.P17078631662291979089

/-! ## A273022.P265180172405309851

`Δ[A273024(n)]-A273025(n)`
-/

namespace A273022.P265180172405309851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273025 n

end

end A273022.P265180172405309851

/-! ## A273022.P11575926573871075600

`A273024(n+1)-(A273025(n)+A273024(n))`
-/

namespace A273022.P11575926573871075600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273024 (n + 1) - (A273025 n + A273024 n)

end

end A273022.P11575926573871075600

/-! ## A273022.P2046211997637868085

`A181385(A016825(n))-A272577(n)`
-/

namespace A273022.P2046211997637868085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272577 n

end

end A273022.P2046211997637868085

/-! ## A273022.P17486043113947465542

`A088917(n²)+A016754(n)-A272577(n)`
-/

namespace A273022.P17486043113947465542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (n ^ 2) + (A016754 n - A272577 n)

end

end A273022.P17486043113947465542

/-!
# A273023: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A273023, there is no canonical definition to state claims against.
-/

/-! ## A273023.P9734685596525167789

`A273022(2^n-1)`
-/

namespace A273023.P9734685596525167789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273022 (2 ^ n - 1)

end

end A273023.P9734685596525167789

/-! ## A273023.P11547391235712359048

`record[A273022(A232751(n))]`
-/

namespace A273023.P11547391235712359048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273022 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273023.P11547391235712359048

/-! ## A273023.P3657814203432463731

`record[A273022(A292600(n))]`
-/

namespace A273023.P3657814203432463731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273022 (A292600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273023.P3657814203432463731

/-! ## A273023.P10160675702379062780

`record[A273022(A303765(n))]`
-/

namespace A273023.P10160675702379062780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273022 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273023.P10160675702379062780

/-! ## A273023.P16709149608649373103

`record[A273022(A243071(n+1))]`
-/

namespace A273023.P16709149608649373103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273022 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273023.P16709149608649373103

/-!
# A273024: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A273024, there is no canonical definition to state claims against.
-/

/-! ## A273024.P17546271017164047228

`∑[A016754(n)-A272577(n)]+1`
-/

namespace A273024.P17546271017164047228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A272577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273024.P17546271017164047228

/-! ## A273024.P5601568900322276120

`∑[A016754(n)+A057428(n)*A272577(n)]`
-/

namespace A273024.P5601568900322276120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A057428 n * A272577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273024.P5601568900322276120

/-! ## A273024.P12713578249244013047

`∑[A273022(n)]`
-/

namespace A273024.P12713578249244013047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273024.P12713578249244013047

/-! ## A273024.P7750410816961010853

`∑[∑[A273025(n)]+1-A273025(n)]`
-/

namespace A273024.P7750410816961010853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273025 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273024.P7750410816961010853

/-! ## A273024.P8624636669914992439

`∑[A181385(A016825(n))-A272577(n)]`
-/

namespace A273024.P8624636669914992439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273024.P8624636669914992439

/-! ## A273024.P11122341039718713273

`a(n-1)+A273022(n)%A258321(2*n+1)` with `a(0)=1`
-/

namespace A273024.P11122341039718713273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273022 n) (A258321 (2 * n + 1))

end

end A273024.P11122341039718713273

/-! ## A273024.P12546983348825460257

`A000027(a(n-1))+A016754(n)-A272577(n)` with `a(0)=1`
-/

namespace A273024.P12546983348825460257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + (A016754 n - A272577 n)

end

end A273024.P12546983348825460257

/-!
# A273025: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A273025, there is no canonical definition to state claims against.
-/

/-! ## A273025.P7167239662765122520

`Δ[A273022(n)]`
-/

namespace A273025.P7167239662765122520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273025.P7167239662765122520

/-! ## A273025.P11989589838526757899

`A273022(n+1)-A273022(n)`
-/

namespace A273025.P11989589838526757899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273022 (n + 1) - A273022 n

end

end A273025.P11989589838526757899

/-! ## A273025.P14281381716046639433

`Δ[A000007(n)+A016754(n)-A272577(n)]`
-/

namespace A273025.P14281381716046639433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A272577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273025.P14281381716046639433

/-! ## A273025.P4018805042597997683

`Δ[A016754(n)-(A272577(n)+A057427(n))]`
-/

namespace A273025.P4018805042597997683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - (A272577 n + A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273025.P4018805042597997683

/-! ## A273025.P2076503201332988829

`Δ[A181385(A016825(n))-A272577(n)]`
-/

namespace A273025.P2076503201332988829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273025.P2076503201332988829

/-! ## A273025.P4204234704359946938

`Δ[A181385(A016825(n))]-A272580(n)`
-/

namespace A273025.P4204234704359946938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272580 n

end

end A273025.P4204234704359946938

/-!
# A273026: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A273026, there is no canonical definition to state claims against.
-/

/-! ## A273026.P13134278805751427652

`A273029(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273026.P13134278805751427652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273029 (n - 1) + a (n - 1)

end

end A273026.P13134278805751427652

/-! ## A273026.P12632454378411509262

`Δ[A273028(n)]-A273029(n)`
-/

namespace A273026.P12632454378411509262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273029 n

end

end A273026.P12632454378411509262

/-! ## A273026.P2072075307144271079

`A273028(n+1)-(A273029(n)+A273028(n))`
-/

namespace A273026.P2072075307144271079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273028 (n + 1) - (A273029 n + A273028 n)

end

end A273026.P2072075307144271079

/-!
# A273027: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A273027, there is no canonical definition to state claims against.
-/

/-! ## A273027.P16223527417438676000

`A273026(2^n-1)`
-/

namespace A273027.P16223527417438676000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273026 (2 ^ n - 1)

end

end A273027.P16223527417438676000

/-! ## A273027.P7483736626536538162

`record[A273026(A255565(n))]`
-/

namespace A273027.P7483736626536538162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273026 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273027.P7483736626536538162

/-! ## A273027.P13561089160255450687

`or(1, A273026(A000225(n)))`
-/

namespace A273027.P13561089160255450687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273026 (A000225 n).toNat)

end

end A273027.P13561089160255450687

/-! ## A273027.P8078883002182152505

`record[A036987(n)*A273026(n)]`
-/

namespace A273027.P8078883002182152505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A273026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273027.P8078883002182152505

/-! ## A273027.P15248666069717733366

`record[gcd(A025480(n), A273026(n))]`
-/

namespace A273027.P15248666069717733366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 n) (A273026 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273027.P15248666069717733366

/-!
# A273028: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A273028, there is no canonical definition to state claims against.
-/

/-! ## A273028.P13109815689527282617

`∑[∑[A273029(n)]+1-A273029(n)]`
-/

namespace A273028.P13109815689527282617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273028.P13109815689527282617

/-! ## A273028.P10820819639228900530

`∑[A273026(n)]`
-/

namespace A273028.P10820819639228900530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273028.P10820819639228900530

/-! ## A273028.P2766867898402572751

`a(n-1)+A273026(n)%A004009(n)` with `a(0)=1`
-/

namespace A273028.P2766867898402572751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273026 n) (A004009 n)

end

end A273028.P2766867898402572751

/-! ## A273028.P9677971330697900004

`A273026(n%A273026(n))+a(n-1)` with `a(0)=1`
-/

namespace A273028.P9677971330697900004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273026 (Int.tmod (n : ℤ) (A273026 n)).toNat + a (n - 1)

end

end A273028.P9677971330697900004

/-! ## A273028.P5015549301398546527

`a(n-1)+A273026(n)*A276284(C(2, n))` with `a(0)=1`
-/

namespace A273028.P5015549301398546527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A273026 n * A276284 (Nat.choose 2 n)

end

end A273028.P5015549301398546527

/-! ## A273028.P3716414903398402983

`A273026(n)+a(A025581(A000124(n)))` with `a(0)=1`
-/

namespace A273028.P3716414903398402983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273026 n + a (A025581 (A000124 n).toNat).toNat

end

end A273028.P3716414903398402983

/-!
# A273029: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A273029, there is no canonical definition to state claims against.
-/

/-! ## A273029.P1590780162660272374

`Δ[A273026(n)]`
-/

namespace A273029.P1590780162660272374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273029.P1590780162660272374

/-! ## A273029.P3265497748643338090

`A273026(n+1)-A273026(n)`
-/

namespace A273029.P3265497748643338090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273026 (n + 1) - A273026 n

end

end A273029.P3265497748643338090

/-! ## A273029.P3835388947362259633

`A273026(A000027(n+1))+A001478(A273026(n))`
-/

namespace A273029.P3835388947362259633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273026 (A000027 (n + 1)).toNat + A001478 (A273026 n).toNat

end

end A273029.P3835388947362259633

/-!
# A273030: G.f. A(x) satisfies: A(x)^3 = x * A( (A(x) + A(x)^2)^2 ).

The programs for A273030, there is no canonical definition to state claims against.
-/

/-! ## A273030.P4571144656651046810

`A211249(n)+A008616(A000351(n))`
-/

namespace A273030.P4571144656651046810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211249 n + A008616 (A000351 n).toNat

end

end A273030.P4571144656651046810

/-! ## A273030.P1102785495010797123

`A225041(n)+A026922(A225029(n))`
-/

namespace A273030.P1102785495010797123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225041 n + A026922 (A225029 n).toNat

end

end A273030.P1102785495010797123

/-!
# A273031: Expansion of e.g.f.: (sin(x) + sin(6*x)) / sin(7*x), even-indexed terms only.

The programs for A273031, there is no canonical definition to state claims against.
-/

/-! ## A273031.P7687920541193068211

`abs(A156191(2*n))`
-/

namespace A273031.P7687920541193068211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156191 (2 * n)|

end

end A273031.P7687920541193068211

/-! ## A273031.P2530709715131435435

`record[A056594(n)*A156191(n)]`
-/

namespace A273031.P2530709715131435435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A156191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273031.P2530709715131435435

/-! ## A273031.P15957786804725480020

`record[gcd(A156191(n), A198631(n))]`
-/

namespace A273031.P15957786804725480020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156191 n) (A198631 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273031.P15957786804725480020

/-! ## A273031.P14012683290832147984

`A056594(2*n)*A156191(2*n)`
-/

namespace A273031.P14012683290832147984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A156191 (2 * n)

end

end A273031.P14012683290832147984

/-! ## A273031.P14970565801524336446

`gcd(A156191(2*n), A198631(2*n))`
-/

namespace A273031.P14970565801524336446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156191 (2 * n)) (A198631 (2 * n))

end

end A273031.P14970565801524336446

/-!
# A273032: E.g.f.: (sin(2*x) + sin(5*x)) / sin(7*x).

The programs for A273032, there is no canonical definition to state claims against.
-/

/-! ## A273032.P8587080743228935267

`abs(A156193(2*n))`
-/

namespace A273032.P8587080743228935267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156193 (2 * n)|

end

end A273032.P8587080743228935267

/-! ## A273032.P14860264239687452528

`record[abs(A156193(A014681(n)))]`
-/

namespace A273032.P14860264239687452528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156193 (A014681 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273032.P14860264239687452528

/-! ## A273032.P6477459607359327153

`record[abs(A156193(A068527(n)))]`
-/

namespace A273032.P6477459607359327153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156193 (A068527 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273032.P6477459607359327153

/-! ## A273032.P9034593861001784143

`record[abs(A156193(A153733(n)))]`
-/

namespace A273032.P9034593861001784143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156193 (A153733 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273032.P9034593861001784143

/-! ## A273032.P1838892506318132456

`record[A056594(n)*A156193(n)]`
-/

namespace A273032.P1838892506318132456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A156193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273032.P1838892506318132456

/-!
# A273033: Expansion of e.g.f. (sin(3*x) + sin(4*x)) / sin(7*x).

The programs for A273033, there is no canonical definition to state claims against.
-/

/-! ## A273033.P4923476765408272666

`abs(A156196(2*n))`
-/

namespace A273033.P4923476765408272666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156196 (2 * n)|

end

end A273033.P4923476765408272666

/-! ## A273033.P10948421033439410448

`record[A056594(n)*A156196(n)]`
-/

namespace A273033.P10948421033439410448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A156196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273033.P10948421033439410448

/-! ## A273033.P16860612510894451182

`record[gcd(A156196(n), A210067(n))]`
-/

namespace A273033.P16860612510894451182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156196 n) (A210067 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273033.P16860612510894451182

/-! ## A273033.P2693296292317095782

`(-1)^n*A156196(A005843(n))`
-/

namespace A273033.P2693296292317095782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A156196 (A005843 n).toNat

end

end A273033.P2693296292317095782

/-! ## A273033.P12250313352697352547

`A056594(2*n)*A156196(2*n)`
-/

namespace A273033.P12250313352697352547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A156196 (2 * n)

end

end A273033.P12250313352697352547

/-!
# A273034: G.f. A(x) satisfies: A(x*A(-x)) = x^3 - x^2.

The programs for A273034, there is no canonical definition to state claims against.
-/

/-! ## A273034.P14899284938518955070

`A257639(or(n+1, A350492(n)))`
-/

namespace A273034.P14899284938518955070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor (n + 1 : ℤ) (A350492 n)).toNat

end

end A273034.P14899284938518955070

/-! ## A273034.P6527068272481746364

`A277061(A277086(n)+A000078(n))`
-/

namespace A273034.P6527068272481746364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (A277086 n + A000078 n).toNat

end

end A273034.P6527068272481746364

/-! ## A273034.P14746290641230894309

`round(root(A300938(n+1), 7))`
-/

namespace A273034.P14746290641230894309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A300938 (n + 1) : ℝ) ^ (1 / (7 : ℝ)))

end

end A273034.P14746290641230894309

/-! ## A273034.P11249143658242429813

`round(root(A300676(n+1), 8))`
-/

namespace A273034.P11249143658242429813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A300676 (n + 1) : ℝ) ^ (1 / (8 : ℝ)))

end

end A273034.P11249143658242429813

/-! ## A273034.P3418255460631230915

`ceil(sqrt(sqrt(A146686(2*(n+1)))))`
-/

namespace A273034.P3418255460631230915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A146686 (2 * (n + 1)) : ℝ))⌉

end

end A273034.P3418255460631230915

/-!
# A273040: Least k >= 2 such that the base-k digits of n are nondecreasing.

The programs for A273040, there is no canonical definition to state claims against.
-/

/-! ## A273040.P18304842099705594179

`A106370(A187829(n+1)*A256554(n))`
-/

namespace A273040.P18304842099705594179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106370 (A187829 (n + 1) * A256554 n).toNat

end

end A273040.P18304842099705594179

/-! ## A273040.P11278500229675717772

`A106370(lcm(A034851(n), A187829(n+1)))`
-/

namespace A273040.P11278500229675717772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106370 (Int.lcm (A034851 n) (A187829 (n + 1)))

end

end A273040.P11278500229675717772

/-! ## A273040.P11531363993958967265

`or(A055641(A017996(n)), A106370(n+1))`
-/

namespace A273040.P11531363993958967265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A017996 n).toNat) (A106370 (n + 1))

end

end A273040.P11531363993958967265

/-! ## A273040.P14910295246223669521

`or(A106370(n+1), A139352(A113389(n)))`
-/

namespace A273040.P14910295246223669521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106370 (n + 1)) (A139352 (A113389 n).toNat)

end

end A273040.P14910295246223669521

/-! ## A273040.P10827841712925625013

`A323326(A195441(2*n+3)+A026801(n+1))`
-/

namespace A273040.P10827841712925625013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323326 (A195441 (2 * n + 3) + A026801 (n + 1)).toNat

end

end A273040.P10827841712925625013

/-!
# A273042: Numbers k such that (28*10^k + 191)/3 is prime.

The programs for A273042, there is no canonical definition to state claims against.
-/

/-! ## A273042.P11589445744753560591

`eq[A103380(n+1), A181109(n+1)]`
-/

namespace A273042.P11589445744753560591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273042.P11589445744753560591

/-! ## A273042.P12111283214528189392

`eq[A238689(A086620(n)), A355588(n)]`
-/

namespace A273042.P12111283214528189392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238689 (A086620 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273042.P12111283214528189392

/-! ## A273042.P2625910395812695687

`eq[A005708(A004526(n)), A208510(n+1)]`
-/

namespace A273042.P2625910395812695687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273042.P2625910395812695687

/-! ## A273042.P15942430111532489025

`eq[A004247(n), A289207(A070093(n+1))]`
-/

namespace A273042.P15942430111532489025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A070093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273042.P15942430111532489025

/-! ## A273042.P17506258782720913518

`eq[A005187(A027751(n+1)), A355588(n)]`
-/

namespace A273042.P17506258782720913518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A027751 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273042.P17506258782720913518

/-!
# A273043: Discriminator of sequence A001566.

The programs for A273043, there is no canonical definition to state claims against.
-/

/-! ## A273043.P3360839715871055689

`A103054(∏[Δ[A225387(n+1)]])`
-/

namespace A273043.P3360839715871055689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103054 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273043.P3360839715871055689

/-! ## A273043.P5921293836584785919

`∑[(n+1)*A156348(A280064(n+1))]`
-/

namespace A273043.P5921293836584785919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156348 (A280064 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273043.P5921293836584785919

/-! ## A273043.P2043902608506479574

`A151848(∑[A091400(n+1)]!)`
-/

namespace A273043.P2043902608506479574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151848 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A273043.P2043902608506479574

/-! ## A273043.P14303884754299146588

`A309406(A084506(n+1)^floor(sqrt(n)))`
-/

namespace A273043.P14303884754299146588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309406 (A084506 (n + 1) ^ Nat.sqrt n).toNat

end

end A273043.P14303884754299146588

/-! ## A273043.P4673654954847585561

`A109613(A196872(n)^A262689(n))`
-/

namespace A273043.P4673654954847585561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((A196872 n : ℚ) ^ (A262689 n : ℤ))).toNat

end

end A273043.P4673654954847585561

/-!
# A273045: Fibonacci numbers with digits in nondecreasing order.

The programs for A273045, there is no canonical definition to state claims against.
-/

/-! ## A273045.P8727340715090826224

`A212804(comp[9*n])`
-/

namespace A273045.P8727340715090826224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A273045.P8727340715090826224

/-!
# A273046: Fibonacci numbers with digits in nonincreasing order.

The programs for A273046, there is no canonical definition to state claims against.
-/

/-! ## A273046.P6524039524779637693

`A327035(A069744(n+1))`
-/

namespace A273046.P6524039524779637693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A069744 (n + 1)).toNat

end

end A273046.P6524039524779637693

/-! ## A273046.P2181302652386969513

`filter[A273003(n), A010056(#)]`
-/

namespace A273046.P2181302652386969513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A273046.P2181302652386969513

/-! ## A273046.P1111020277876921186

`A000045(A153013(n)-char[7])`
-/

namespace A273046.P1111020277876921186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A153013 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A273046.P1111020277876921186

/-! ## A273046.P16111098447530294164

`A000045(A276828(comp[10*n]))`
-/

namespace A273046.P16111098447530294164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A276828 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A273046.P16111098447530294164

/-! ## A273046.P4273295537099260744

`A000045(∪[∑[n], A048318(n)])`
-/

namespace A273046.P4273295537099260744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n)

end

end A273046.P4273295537099260744

/-!
# A273049: Palindromic primes with exactly three nonzero digits.

The programs for A273049, there is no canonical definition to state claims against.
-/

/-! ## A273049.P9131555135230345617

`A209190(A050784(n+6))`
-/

namespace A273049.P9131555135230345617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209190 (A050784 (n + 6)).toNat

end

end A273049.P9131555135230345617

/-! ## A273049.P5271514775843210589

`A208362(n+3)+A000122(A121039(n+1))`
-/

namespace A273049.P5271514775843210589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208362 (n + 3) + A000122 (A121039 (n + 1)).toNat

end

end A273049.P5271514775843210589

/-! ## A273049.P17161199913841456774

`or(A010051(A060984(n+3)), A208362(n+3))`
-/

namespace A273049.P17161199913841456774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A060984 (n + 3)).toNat) (A208362 (n + 3))

end

end A273049.P17161199913841456774

/-! ## A273049.P4511102991292234335

`record[A050784(A375559(n+5)+2)]`
-/

namespace A273049.P4511102991292234335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (A375559 (n + 5) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273049.P4511102991292234335

/-! ## A273049.P2207194612337294417

`A000015(A056728(n+2))`
-/

namespace A273049.P2207194612337294417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A056728 (n + 2)).toNat

end

end A273049.P2207194612337294417

/-!
# A273050: Numbers k such that (rol(k) XOR ror(k)) = k, where rol = A006257 and ror = A038572 are rotations of binary digits by one place to the left and right, and XOR is the binary exclusive-or operator.

The programs for A273050, the canonical program `A273050.P17717488040842691718` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273050 has offset 1).

The definition of A273050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273050.P17717488040842691718

`9*a(n-2)-8*a(n-4)` with `a(0)=0, a(1)=5, a(2)=6, a(3)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273050

/-- `9*a(n-2)-8*a(n-4)` -/
def P17717488040842691718.Spec : Prop :=
  ∀ n, P17717488040842691718.a n = A273050 (n + 1)

theorem P17717488040842691718.correct : P17717488040842691718.Spec := by
  intro n
  simp only [A273050, Nat.add_sub_cancel]

end A273050

/-! ## A273050.P15757330955796876111

`or(8*a(n-2), a(n-2))` with `a(0)=0, a(1)=5, a(2)=6`
-/

namespace A273050.P15757330955796876111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 6] fun n a =>
  Nat.lor (8 * a (n - 2)) (a (n - 2))

end

end A273050.P15757330955796876111

namespace A273050

/-- `or(8*a(n-2), a(n-2))` -/
def P15757330955796876111.Spec : Prop :=
  ∀ n, (P15757330955796876111.a n : ℤ) = A273050 (n + 1)

end A273050

/-! ## A273050.P11956704373191559520

`∑[8*a(n-2)]-a(n-1)` with `a(0)=0, a(1)=5, a(2)=6`
-/

namespace A273050.P11956704373191559520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 6] fun n f1 =>
  8 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 6] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A273050.P11956704373191559520

namespace A273050

/-- `∑[8*a(n-2)]-a(n-1)` -/
def P11956704373191559520.Spec : Prop :=
  ∀ n, P11956704373191559520.a n = A273050 (n + 1)

end A273050

/-! ## A273050.P9813197194355803312

`and(7, a(n-2))+8*a(n-2)` with `a(0)=0, a(1)=5, a(2)=6`
-/

namespace A273050.P9813197194355803312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 6] fun n a =>
  Nat.land 7 (a (n - 2)) + 8 * a (n - 2)

end

end A273050.P9813197194355803312

namespace A273050

/-- `and(7, a(n-2))+8*a(n-2)` -/
def P9813197194355803312.Spec : Prop :=
  ∀ n, (P9813197194355803312.a n : ℤ) = A273050 (n + 1)

end A273050

/-! ## A273050.P333488176715610584

`xor(8*a(n-2), and(7, a(n-2)))` with `a(0)=0, a(1)=5, a(2)=6`
-/

namespace A273050.P333488176715610584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 6] fun n a =>
  Nat.xor (8 * a (n - 2)) (Nat.land 7 (a (n - 2)))

end

end A273050.P333488176715610584

namespace A273050

/-- `xor(8*a(n-2), and(7, a(n-2)))` -/
def P333488176715610584.Spec : Prop :=
  ∀ n, (P333488176715610584.a n : ℤ) = A273050 (n + 1)

end A273050

/-! ## A273050.P17132064981181768875

`floor(A334930(n+1)/2)`
-/

namespace A273050.P17132064981181768875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334930 (n + 1) : ℚ) / 2⌋

end

end A273050.P17132064981181768875

namespace A273050

/-- `floor(A334930(n+1)/2)` -/
def P17132064981181768875.Spec : Prop :=
  ∀ n, P17132064981181768875.a n = A273050 (n + 1)

end A273050

/-!
# A273052: Numbers n such that 7*n^2 + 8 is a square.

The programs for A273052, the canonical program `A273052.P6587657912283962020` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273052 has offset 1).

The definition of A273052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273052.P6587657912283962020

`16*a(n-1)-a(n-2)` with `a(0)=2, a(1)=34`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273052

/-- `16*a(n-1)-a(n-2)` -/
def P6587657912283962020.Spec : Prop :=
  ∀ n, P6587657912283962020.a n = A273052 (n + 1)

theorem P6587657912283962020.correct : P6587657912283962020.Spec := by
  intro n
  simp only [A273052, Nat.add_sub_cancel]

end A273052

/-! ## A273052.P4972902413325637306

`ogf((2+2x)/(1-16x+x^2))`
-/

namespace A273052.P4972902413325637306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -16, 1] n

end

end A273052.P4972902413325637306

namespace A273052

/-- `ogf((2+2x)/(1-16x+x^2))` -/
def P4972902413325637306.Spec : Prop :=
  ∀ n, P4972902413325637306.a n = A273052 (n + 1)

end A273052

/-! ## A273052.P5038159152965421797

`2*∑[ceil((sqrt(63)+8)^n)]`
-/

namespace A273052.P5038159152965421797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (63 : ℝ) + 8) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273052.P5038159152965421797

namespace A273052

/-- `2*∑[ceil((sqrt(63)+8)^n)]` -/
def P5038159152965421797.Spec : Prop :=
  ∀ n, P5038159152965421797.a n = A273052 (n + 1)

end A273052

/-! ## A273052.P6433328162404719662

`lcm(2, ∑[ceil((sqrt(63)+8)^n)])`
-/

namespace A273052.P6433328162404719662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (63 : ℝ) + 8) ^ n⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273052.P6433328162404719662

namespace A273052

/-- `lcm(2, ∑[ceil((sqrt(63)+8)^n)])` -/
def P6433328162404719662.Spec : Prop :=
  ∀ n, (P6433328162404719662.a n : ℤ) = A273052 (n + 1)

end A273052

/-! ## A273052.P81262023547466577

`Δ[2*A098303(n)]`
-/

namespace A273052.P81262023547466577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273052.P81262023547466577

namespace A273052

/-- `Δ[2*A098303(n)]` -/
def P81262023547466577.Spec : Prop :=
  ∀ n, P81262023547466577.a n = A273052 (n + 1)

end A273052

/-! ## A273052.P16364087390411366587

`Δ[A090727(n)/7]`
-/

namespace A273052.P16364087390411366587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090727 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273052.P16364087390411366587

namespace A273052

/-- `Δ[A090727(n)/7]` -/
def P16364087390411366587.Spec : Prop :=
  ∀ n, P16364087390411366587.a n = (A273052 (n + 1) : ℚ)

end A273052

/-! ## A273052.P16995584404557209531

`∑[4*A001081(n)]-2`
-/

namespace A273052.P16995584404557209531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273052.P16995584404557209531

namespace A273052

/-- `∑[4*A001081(n)]-2` -/
def P16995584404557209531.Spec : Prop :=
  ∀ n, P16995584404557209531.a n = A273052 (n + 1)

end A273052

/-! ## A273052.P17197273519477450368

`4*A253879(n+1)-2`
-/

namespace A273052.P17197273519477450368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A253879 (n + 1) - 2

end

end A273052.P17197273519477450368

namespace A273052

/-- `4*A253879(n+1)-2` -/
def P17197273519477450368.Spec : Prop :=
  ∀ n, P17197273519477450368.a n = A273052 (n + 1)

end A273052

/-! ## A273052.P16709981410791216092

`A350924(n+1)-A350925(n)`
-/

namespace A273052.P16709981410791216092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350924 (n + 1) - A350925 n

end

end A273052.P16709981410791216092

namespace A273052

/-- `A350924(n+1)-A350925(n)` -/
def P16709981410791216092.Spec : Prop :=
  ∀ n, P16709981410791216092.a n = A273052 (n + 1)

end A273052

/-! ## A273052.P13792642341207849093

`A159678(n+1)+A159678(n+1)`
-/

namespace A273052.P13792642341207849093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159678 (n + 1) + A159678 (n + 1)

end

end A273052.P13792642341207849093

namespace A273052

/-- `A159678(n+1)+A159678(n+1)` -/
def P13792642341207849093.Spec : Prop :=
  ∀ n, P13792642341207849093.a n = A273052 (n + 1)

end A273052

/-!
# A273053: Numbers n such that 15*n^2 + 16 is a square.

The programs for A273053, the canonical program `A273053.P4497561484926069250` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273053 has offset 1).

The definition of A273053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273053.P4497561484926069250

`8*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273053

/-- `8*a(n-1)-a(n-2)` -/
def P4497561484926069250.Spec : Prop :=
  ∀ n, P4497561484926069250.a n = A273053 (n + 1)

theorem P4497561484926069250.correct : P4497561484926069250.Spec := by
  intro n
  simp only [A273053, Nat.add_sub_cancel]

end A273053

/-! ## A273053.P5804062190776765892

`ogf(4x/(1-8x+x^2))`
-/

namespace A273053.P5804062190776765892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -8, 1] n

end

end A273053.P5804062190776765892

namespace A273053

/-- `ogf(4x/(1-8x+x^2))` -/
def P5804062190776765892.Spec : Prop :=
  ∀ n, P5804062190776765892.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P2840254290859183821

`2*((4+sqrt(15))^n-(4-sqrt(15))^n)/sqrt(15)`
-/

namespace A273053.P2840254290859183821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (((4 + Real.sqrt (15 : ℝ)) ^ n - (4 - Real.sqrt (15 : ℝ)) ^ n) / Real.sqrt (15 : ℝ))

end

end A273053.P2840254290859183821

namespace A273053

/-- `2*((4+sqrt(15))^n-(4-sqrt(15))^n)/sqrt(15)` -/
def P2840254290859183821.Spec : Prop :=
  ∀ n, P2840254290859183821.a n = (A273053 (n + 1) : ℝ)

theorem P2840254290859183821.correct : P2840254290859183821.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A273053, Nat.add_sub_cancel, A273053.P2840254290859183821.a, A273053.P4497561484926069250.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A273053, Nat.add_sub_cancel, A273053.P2840254290859183821.a, A273053.P4497561484926069250.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A273053

/-! ## A273053.P4577369761315648750

`4*A136325(n)/3`
-/

namespace A273053.P4577369761315648750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A136325 n : ℚ) / 3

end

end A273053.P4577369761315648750

namespace A273053

/-- `4*A136325(n)/3` -/
def P4577369761315648750.Spec : Prop :=
  ∀ n, P4577369761315648750.a n = (A273053 (n + 1) : ℚ)

end A273053

/-! ## A273053.P12344816187752416056

`A136325(n)+A001090(n)`
-/

namespace A273053.P12344816187752416056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n + A001090 n

end

end A273053.P12344816187752416056

namespace A273053

/-- `A136325(n)+A001090(n)` -/
def P12344816187752416056.Spec : Prop :=
  ∀ n, P12344816187752416056.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P11239693687021775127

`A077243(n)-A077246(n)`
-/

namespace A273053.P11239693687021775127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077243 n - A077246 n

end

end A273053.P11239693687021775127

namespace A273053

/-- `A077243(n)-A077246(n)` -/
def P11239693687021775127.Spec : Prop :=
  ∀ n, P11239693687021775127.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P6946940789978487909

`A341927(n)-A341929(n)`
-/

namespace A273053.P6946940789978487909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n - A341929 n

end

end A273053.P6946940789978487909

namespace A273053

/-- `A341927(n)-A341929(n)` -/
def P6946940789978487909.Spec : Prop :=
  ∀ n, P6946940789978487909.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P4822776431506190084

`∑[A070997(n)]-A001091(n)`
-/

namespace A273053.P4822776431506190084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001091 n

end

end A273053.P4822776431506190084

namespace A273053

/-- `∑[A070997(n)]-A001091(n)` -/
def P4822776431506190084.Spec : Prop :=
  ∀ n, P4822776431506190084.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P5845596609546867895

`A001090(n+1)-A001091(n)`
-/

namespace A273053.P5845596609546867895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - A001091 n

end

end A273053.P5845596609546867895

namespace A273053

/-- `A001090(n+1)-A001091(n)` -/
def P5845596609546867895.Spec : Prop :=
  ∀ n, P5845596609546867895.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P11002573067438333912

`A077243(n)-A077248(2*n)`
-/

namespace A273053.P11002573067438333912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077243 n - A077248 (2 * n)

end

end A273053.P11002573067438333912

namespace A273053

/-- `A077243(n)-A077248(2*n)` -/
def P11002573067438333912.Spec : Prop :=
  ∀ n, P11002573067438333912.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P14048595536183947556

`A041023(2*n+1)-A001091(n)`
-/

namespace A273053.P14048595536183947556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n + 1) - A001091 n

end

end A273053.P14048595536183947556

namespace A273053

/-- `A041023(2*n+1)-A001091(n)` -/
def P14048595536183947556.Spec : Prop :=
  ∀ n, P14048595536183947556.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P3069486791424783115

`A077247(2*n+1)-A077246(n)`
-/

namespace A273053.P3069486791424783115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077247 (2 * n + 1) - A077246 n

end

end A273053.P3069486791424783115

namespace A273053

/-- `A077247(2*n+1)-A077246(n)` -/
def P3069486791424783115.Spec : Prop :=
  ∀ n, P3069486791424783115.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P2390836775241798333

`A177187(2*n+1)-A105426(n)`
-/

namespace A273053.P2390836775241798333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (2 * n + 1) - A105426 n

end

end A273053.P2390836775241798333

namespace A273053

/-- `A177187(2*n+1)-A105426(n)` -/
def P2390836775241798333.Spec : Prop :=
  ∀ n, P2390836775241798333.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P12054129022997586086

`A237262(2*n+1)-A341929(n)`
-/

namespace A273053.P12054129022997586086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * n + 1) - A341929 n

end

end A273053.P12054129022997586086

namespace A273053

/-- `A237262(2*n+1)-A341929(n)` -/
def P12054129022997586086.Spec : Prop :=
  ∀ n, P12054129022997586086.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P16503870811674778726

`A041023(2*n+1)-A080871(2*n)`
-/

namespace A273053.P16503870811674778726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n + 1) - A080871 (2 * n)

end

end A273053.P16503870811674778726

namespace A273053

/-- `A041023(2*n+1)-A080871(2*n)` -/
def P16503870811674778726.Spec : Prop :=
  ∀ n, P16503870811674778726.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P8156237326482487626

`A077247(2*n+1)-A077248(2*n)`
-/

namespace A273053.P8156237326482487626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077247 (2 * n + 1) - A077248 (2 * n)

end

end A273053.P8156237326482487626

namespace A273053

/-- `A077247(2*n+1)-A077248(2*n)` -/
def P8156237326482487626.Spec : Prop :=
  ∀ n, P8156237326482487626.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P15142535249425246687

`∑[A080871(2*n+1)]-A080871(2*n)`
-/

namespace A273053.P15142535249425246687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A080871 (2 * n)

end

end A273053.P15142535249425246687

namespace A273053

/-- `∑[A080871(2*n+1)]-A080871(2*n)` -/
def P15142535249425246687.Spec : Prop :=
  ∀ n, P15142535249425246687.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P4607639332186719633

`A177187(2*n+1)-A199336(2*n+1)`
-/

namespace A273053.P4607639332186719633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (2 * n + 1) - A199336 (2 * n + 1)

end

end A273053.P4607639332186719633

namespace A273053

/-- `A177187(2*n+1)-A199336(2*n+1)` -/
def P4607639332186719633.Spec : Prop :=
  ∀ n, P4607639332186719633.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P8064423142999814575

`A322780(2*n+1)-A199336(2*n+1)`
-/

namespace A273053.P8064423142999814575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (2 * n + 1) - A199336 (2 * n + 1)

end

end A273053.P8064423142999814575

namespace A273053

/-- `A322780(2*n+1)-A199336(2*n+1)` -/
def P8064423142999814575.Spec : Prop :=
  ∀ n, P8064423142999814575.a n = A273053 (n + 1)

end A273053

/-! ## A273053.P327004573176497919

`A057080(n)-A001090(n)-A001091(n)`
-/

namespace A273053.P327004573176497919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 n - A001090 n - A001091 n

end

end A273053.P327004573176497919

namespace A273053

/-- `A057080(n)-A001090(n)-A001091(n)` -/
def P327004573176497919.Spec : Prop :=
  ∀ n, P327004573176497919.a n = A273053 (n + 1)

end A273053

/-!
# A273055: a(n) = Sum_{k=0..n} binomial(2*k, k) * binomial(2*n+1, 2*k).

The programs for A273055, the canonical program `A273055.P2819132108516866513` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273055 has offset 0).

The definition of A273055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273055.P2819132108516866513

`A002426(2*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273055

/-- `A002426(2*n+1)` -/
def P2819132108516866513.Spec : Prop :=
  ∀ n, P2819132108516866513.a n = A273055 n

theorem P2819132108516866513.correct : P2819132108516866513.Spec := by
  intro n
  simp only [A273055]

end A273055

/-! ## A273055.P12181086297092554535

`record[A002426(xor(1, n))]`
-/

namespace A273055.P12181086297092554535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P12181086297092554535

namespace A273055

/-- `record[A002426(xor(1, n))]` -/
def P12181086297092554535.Spec : Prop :=
  ∀ n, P12181086297092554535.a n = A273055 n

end A273055

/-! ## A273055.P1025938174999156174

`record[A005213(or(2, n))]`
-/

namespace A273055.P1025938174999156174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P1025938174999156174

namespace A273055

/-- `record[A005213(or(2, n))]` -/
def P1025938174999156174.Spec : Prop :=
  ∀ n, P1025938174999156174.a n = A273055 n

end A273055

/-! ## A273055.P744077120252527915

`∑[A105696(Δ[n²])]`
-/

namespace A273055.P744077120252527915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273055.P744077120252527915

namespace A273055

/-- `∑[A105696(Δ[n²])]` -/
def P744077120252527915.Spec : Prop :=
  ∀ n, P744077120252527915.a n = A273055 n

end A273055

/-! ## A273055.P2389311325087553039

`A005213(4*n+2)`
-/

namespace A273055.P2389311325087553039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (4 * n + 2)

end

end A273055.P2389311325087553039

namespace A273055

/-- `A005213(4*n+2)` -/
def P2389311325087553039.Spec : Prop :=
  ∀ n, P2389311325087553039.a n = A273055 n

end A273055

/-! ## A273055.P15833063861230403813

`A203558(Δ[n²])-2`
-/

namespace A273055.P15833063861230403813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203558 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A273055.P15833063861230403813

namespace A273055

/-- `A203558(Δ[n²])-2` -/
def P15833063861230403813.Spec : Prop :=
  ∀ n, P15833063861230403813.a n = A273055 n

end A273055

/-! ## A273055.P7050684459108799157

`record[A002426(n*n%2)]`
-/

namespace A273055.P7050684459108799157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P7050684459108799157

namespace A273055

/-- `record[A002426(n*n%2)]` -/
def P7050684459108799157.Spec : Prop :=
  ∀ n, P7050684459108799157.a n = A273055 n

end A273055

/-! ## A273055.P16162071792306344214

`2*A113682(2*n)-1`
-/

namespace A273055.P16162071792306344214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113682 (2 * n) - 1

end

end A273055.P16162071792306344214

namespace A273055

/-- `2*A113682(2*n)-1` -/
def P16162071792306344214.Spec : Prop :=
  ∀ n, P16162071792306344214.a n = A273055 n

end A273055

/-! ## A273055.P4867633569789625825

`2*A097861(2*n+1)+1`
-/

namespace A273055.P4867633569789625825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097861 (2 * n + 1) + 1

end

end A273055.P4867633569789625825

namespace A273055

/-- `2*A097861(2*n+1)+1` -/
def P4867633569789625825.Spec : Prop :=
  ∀ n, P4867633569789625825.a n = A273055 n

end A273055

/-! ## A273055.P14555704648882730179

`2*A246437(2*n+1)+1`
-/

namespace A273055.P14555704648882730179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246437 (2 * n + 1) + 1

end

end A273055.P14555704648882730179

namespace A273055

/-- `2*A246437(2*n+1)+1` -/
def P14555704648882730179.Spec : Prop :=
  ∀ n, P14555704648882730179.a n = A273055 n

end A273055

/-! ## A273055.P3306551822754766494

`2*A257520(2*n+1)-1`
-/

namespace A273055.P3306551822754766494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257520 (2 * n + 1) - 1

end

end A273055.P3306551822754766494

namespace A273055

/-- `2*A257520(2*n+1)-1` -/
def P3306551822754766494.Spec : Prop :=
  ∀ n, P3306551822754766494.a n = A273055 n

end A273055

/-! ## A273055.P11896485891952964287

`record[and(2*A257520(n)-1, (-1)^n)]`
-/

namespace A273055.P11896485891952964287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A257520 n - 1) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P11896485891952964287

namespace A273055

/-- `record[and(2*A257520(n)-1, (-1)^n)]` -/
def P11896485891952964287.Spec : Prop :=
  ∀ n, P11896485891952964287.a n = A273055 n

end A273055

/-! ## A273055.P3106430108466839337

`record[A002426(A014681(n)+1)]`
-/

namespace A273055.P3106430108466839337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P3106430108466839337

namespace A273055

/-- `record[A002426(A014681(n)+1)]` -/
def P3106430108466839337.Spec : Prop :=
  ∀ n, P3106430108466839337.a n = A273055 n

end A273055

/-! ## A273055.P11158282332054453458

`record[A002426(A230641(n)+1)]`
-/

namespace A273055.P11158282332054453458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A230641 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P11158282332054453458

namespace A273055

/-- `record[A002426(A230641(n)+1)]` -/
def P11158282332054453458.Spec : Prop :=
  ∀ n, P11158282332054453458.a n = A273055 n

end A273055

/-! ## A273055.P10649563973654498079

`record[A005213(A042948(n)+2)]`
-/

namespace A273055.P10649563973654498079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (A042948 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P10649563973654498079

namespace A273055

/-- `record[A005213(A042948(n)+2)]` -/
def P10649563973654498079.Spec : Prop :=
  ∀ n, P10649563973654498079.a n = A273055 n

end A273055

/-! ## A273055.P5794866865893467209

`record[A005213(2*A026741(n))]`
-/

namespace A273055.P5794866865893467209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P5794866865893467209

namespace A273055

/-- `record[A005213(2*A026741(n))]` -/
def P5794866865893467209.Spec : Prop :=
  ∀ n, P5794866865893467209.a n = A273055 n

end A273055

/-! ## A273055.P15642717763000246288

`record[A005213(2*A093411(n))]`
-/

namespace A273055.P15642717763000246288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * A093411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P15642717763000246288

namespace A273055

/-- `record[A005213(2*A093411(n))]` -/
def P15642717763000246288.Spec : Prop :=
  ∀ n, P15642717763000246288.a n = A273055 n

end A273055

/-! ## A273055.P13462625526956863477

`record[A005213(A026741(n)+n)]`
-/

namespace A273055.P13462625526956863477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (A026741 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P13462625526956863477

namespace A273055

/-- `record[A005213(A026741(n)+n)]` -/
def P13462625526956863477.Spec : Prop :=
  ∀ n, P13462625526956863477.a n = A273055 n

end A273055

/-! ## A273055.P7950194617236839219

`record[A005213(A093411(n)+n)]`
-/

namespace A273055.P7950194617236839219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (A093411 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273055.P7950194617236839219

namespace A273055

/-- `record[A005213(A093411(n)+n)]` -/
def P7950194617236839219.Spec : Prop :=
  ∀ n, P7950194617236839219.a n = A273055 n

end A273055

/-! ## A273055.P10845293839487003817

`A092255(2*n+1)-A115752(2*n)`
-/

namespace A273055.P10845293839487003817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092255 (2 * n + 1) - A115752 (2 * n)

end

end A273055.P10845293839487003817

namespace A273055

/-- `A092255(2*n+1)-A115752(2*n)` -/
def P10845293839487003817.Spec : Prop :=
  ∀ n, P10845293839487003817.a n = A273055 n

end A273055

/-!
# A273056: Discriminator of Sylvester's sequence A000058.

The programs for A273056, there is no canonical definition to state claims against.
-/

/-! ## A273056.P5230860452235397299

`A180101(record[A180060(n+2)])`
-/

namespace A273056.P5230860452235397299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180060 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273056.P5230860452235397299

/-! ## A273056.P1953867233509396981

`A105560(A000079(n)*A279785(n))`
-/

namespace A273056.P1953867233509396981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A000079 n * A279785 n).toNat

end

end A273056.P1953867233509396981

/-! ## A273056.P2343990205608506475

`A331820(n+1)-A055640(A000349(n))`
-/

namespace A273056.P2343990205608506475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331820 (n + 1) - A055640 (A000349 n).toNat

end

end A273056.P2343990205608506475

/-! ## A273056.P604495543602046313

`A180101(or(A003528(n+1), A003532(n+1)))`
-/

namespace A273056.P604495543602046313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Int.lor (A003528 (n + 1)) (A003532 (n + 1))).toNat

end

end A273056.P604495543602046313

/-! ## A273056.P5598969561111780361

`A180101(or(A045319(n+1), A268539(n+1)))`
-/

namespace A273056.P5598969561111780361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Int.lor (A045319 (n + 1)) (A268539 (n + 1))).toNat

end

end A273056.P5598969561111780361

/-!
# A273058: Numbers having pairwise coprime exponents in their canonical prime factorization.

The programs for A273058, there is no canonical definition to state claims against.
-/

/-! ## A273058.P8771580458606033264

`comp[A072413(n+1)-1]+1`
-/

namespace A273058.P8771580458606033264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A273058.P8771580458606033264

/-! ## A273058.P6839889656223765546

`comp[A072413(A212171(n+2))%A072413(n+1)]`
-/

namespace A273058.P6839889656223765546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072413 (A212171 (n + 2)).toNat) (A072413 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273058.P6839889656223765546

/-! ## A273058.P13192308151272115360

`record[(n+1)/A056624(A066060(n+1))]`
-/

namespace A273058.P13192308151272115360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056624 (A066060 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273058.P13192308151272115360

/-! ## A273058.P9396478140589413303

`A056624(A066060(a(n-1)+1))+a(n-1)` with `a(0)=1`
-/

namespace A273058.P9396478140589413303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056624 (A066060 (a (n - 1) + 1).toNat).toNat + a (n - 1)

end

end A273058.P9396478140589413303

/-! ## A273058.P15123955700558532350

`comp[A103337(3^floor(n/2))²]`
-/

namespace A273058.P15123955700558532350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103337 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273058.P15123955700558532350

/-! ## A273058.P2389741063767390340

`comp[A001222(A104024(n+1))²]`
-/

namespace A273058.P2389741063767390340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A104024 (n + 1)).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273058.P2389741063767390340

/-! ## A273058.P3179955183794768097

`comp[(A210643(n+1)%∑{d}[n+1, val(#, 2)+1])²]`
-/

namespace A273058.P3179955183794768097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210643 (n + 1)) ((∑ d ∈ Nat.divisors (f2 n), (SequenceMachineLib.valuation d 2 + 1) : ℕ) : ℤ) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273058.P3179955183794768097

/-! ## A273058.P14810533256459022869

`comp[lcm(n-C(∑[char[∑[n]]], 2), A068952(2*n+1))]`
-/

namespace A273058.P14810533256459022869
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)) (A068952 (2 * n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A273058.P14810533256459022869

/-! ## A273058.P2220438284984633987

`comp[A028597(A000400(n))²]`
-/

namespace A273058.P2220438284984633987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028597 (A000400 n).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273058.P2220438284984633987

/-! ## A273058.P1080776677210780886

`comp[A007321(A178963(n))²]`
-/

namespace A273058.P1080776677210780886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007321 (A178963 n).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273058.P1080776677210780886

/-!
# A273059: Positions of 1's in A274640: Greedy Queens on a spiral. Equivalently, positions of 0's in A274641.

The programs for A273059, there is no canonical definition to state claims against.
-/

/-! ## A273059.P940931131478808530

`∑[A275915(n)]-A275915(n)`
-/

namespace A273059.P940931131478808530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A275915 n

end

end A273059.P940931131478808530

/-! ## A273059.P8715810619901991596

`eq[0, A274641(n)]`
-/

namespace A273059.P8715810619901991596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273059.P8715810619901991596

/-! ## A273059.P18344604520780200243

`eq[1, A274640(n)]`
-/

namespace A273059.P18344604520780200243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273059.P18344604520780200243

/-! ## A273059.P4426351975503193544

`lt[A000040(A274640(n)+1), 4]`
-/

namespace A273059.P4426351975503193544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A274640 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A273059.P4426351975503193544

/-! ## A273059.P17811940687736163475

`lt[A274641(n), A000041(C(2, n+2))]`
-/

namespace A273059.P17811940687736163475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273059.P17811940687736163475

/-! ## A273059.P1231585061051872960

`lt[A274641(n), A000010(A274640(n))]`
-/

namespace A273059.P1231585061051872960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A274640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273059.P1231585061051872960

/-! ## A273059.P9766781577033973974

`lt[A274641(n), abs(A057077(n))]`
-/

namespace A273059.P9766781577033973974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273059.P9766781577033973974

/-! ## A273059.P11601351476783482995

`lt[A274641(n), acot(A099392(n+1))]`
-/

namespace A273059.P11601351476783482995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A099392 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A273059.P11601351476783482995

/-! ## A273059.P2284571010174115326

`record[n-A008578(n+1)*A274641(n)]`
-/

namespace A273059.P2284571010174115326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008578 (n + 1) * A274641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273059.P2284571010174115326

/-! ## A273059.P2040954142749482360

`lt[A274641(n), A007318(A057944(n))]`
-/

namespace A273059.P2040954142749482360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273059.P2040954142749482360

/-!
# A273060: a(n) = phi(n!)/phi(n).

The programs for A273060, the canonical program `A273060.P12650829157669879632` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273060 has offset 1).

The definition of A273060 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273060.P12650829157669879632

`A048855(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A273060

/-- `A048855(n+1)/A000010(n+1)` -/
def P12650829157669879632.Spec : Prop :=
  ∀ n, P12650829157669879632.a n = (A273060 (n + 1) : ℚ)

end A273060

/-! ## A273060.P3303969890336754676

`∏[A014684(n+1)]/A000010(n+1)`
-/

namespace A273060.P3303969890336754676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A273060.P3303969890336754676

namespace A273060

/-- `∏[A014684(n+1)]/A000010(n+1)` -/
def P3303969890336754676.Spec : Prop :=
  ∀ n, P3303969890336754676.a n = (A273060 (n + 1) : ℚ)

end A273060

/-! ## A273060.P871729965000687230

`A048855(n+1)/Δ[A100449(n)/4]`
-/

namespace A273060.P871729965000687230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048855 (n + 1) : ℚ) / (f1 (n + 1) - f1 n)

end

end A273060.P871729965000687230

namespace A273060

/-- `A048855(n+1)/Δ[A100449(n)/4]` -/
def P871729965000687230.Spec : Prop :=
  ∀ n, P871729965000687230.a n = (A273060 (n + 1) : ℚ)

end A273060

/-! ## A273060.P499794847137580242

`A048855(n+1)/∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A273060.P499794847137580242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048855 (n + 1) : ℚ) / (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))

end

end A273060.P499794847137580242

namespace A273060

/-- `A048855(n+1)/∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P499794847137580242.Spec : Prop :=
  ∀ n, P499794847137580242.a n = (A273060 (n + 1) : ℚ)

end A273060

/-! ## A273060.P11034587692386286423

`A048855(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A273060.P11034587692386286423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048855 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A273060.P11034587692386286423

namespace A273060

/-- `A048855(n+1)/(A002088(n+1)-A002088(n))` -/
def P11034587692386286423.Spec : Prop :=
  ∀ n, P11034587692386286423.a n = (A273060 (n + 1) : ℚ)

end A273060

/-!
# A273061: Nearest integer to the França-Leclair approximation 2*Pi*(n - 11/8)/LambertW((n - 11/8)/exp(1)) of the Riemann zeta zeros.

The programs for A273061, there is no canonical definition to state claims against.
-/

/-! ## A273061.P12345247179430844701

`A351041(3*(n+1))+A000267(A259227(3*n+2))`
-/

namespace A273061.P12345247179430844701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351041 (3 * (n + 1)) + A000267 (A259227 (3 * n + 2)).toNat

end

end A273061.P12345247179430844701

/-! ## A273061.P8034427369331341275

`A276611(A027470(n+3))+4`
-/

namespace A273061.P8034427369331341275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A027470 (n + 3)).toNat + 4

end

end A273061.P8034427369331341275

/-! ## A273061.P17033004173981586954

`A275624(n+5)+A258198(A007460(n))`
-/

namespace A273061.P17033004173981586954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275624 (n + 5) + A258198 (A007460 n).toNat

end

end A273061.P17033004173981586954

/-! ## A273061.P4232460087623985106

`A364562(2*(n+2))+A086411(A071717(n))`
-/

namespace A273061.P4232460087623985106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364562 (2 * (n + 2)) + A086411 (A071717 n).toNat

end

end A273061.P4232460087623985106

/-! ## A273061.P13499918088097698960

`A319434(C(A017605(3*(n+1)), A319430(2*n+1)))`
-/

namespace A273061.P13499918088097698960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319434 (Nat.choose (A017605 (3 * (n + 1))).toNat (A319430 (2 * n + 1)).toNat)

end

end A273061.P13499918088097698960

/-!
# A273064: Discriminator of the factorials A000142.

The programs for A273064, there is no canonical definition to state claims against.
-/

/-! ## A273064.P7930839322504277410

`A208494(n+1)^ceil(n/98)`
-/

namespace A273064.P7930839322504277410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208494 (n + 1) : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A273064.P7930839322504277410

/-! ## A273064.P16805973469031151362

`A208494(n+1)-A000007(n)`
-/

namespace A273064.P16805973469031151362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208494 (n + 1) - A000007 n

end

end A273064.P16805973469031151362

/-! ## A273064.P15584202572457125619

`A208494(n+1)-A151878(n)`
-/

namespace A273064.P15584202572457125619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208494 (n + 1) - A151878 n

end

end A273064.P15584202572457125619

/-! ## A273064.P10708389600765260420

`A208494(n+1)-A151909(n)`
-/

namespace A273064.P10708389600765260420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208494 (n + 1) - A151909 n

end

end A273064.P10708389600765260420

/-! ## A273064.P15020058398611460163

`A208494(n+1)-A151933(n)`
-/

namespace A273064.P15020058398611460163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208494 (n + 1) - A151933 n

end

end A273064.P15020058398611460163

/-! ## A273064.P7425622248117270508

`A208494(n+1)/A054977(n)`
-/

namespace A273064.P7425622248117270508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208494 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A273064.P7425622248117270508

/-! ## A273064.P11775501320082277105

`A208494(n+1)-char[A142590(3*n)]`
-/

namespace A273064.P11775501320082277105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142590 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208494 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273064.P11775501320082277105

/-! ## A273064.P10784701444899316250

`A263013(3*n+1)+A208494(n+1)`
-/

namespace A273064.P10784701444899316250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 (3 * n + 1) + A208494 (n + 1)

end

end A273064.P10784701444899316250

/-! ## A273064.P2419532378767838733

`A208494(n+1)-val(A000040(n+1), 2)`
-/

namespace A273064.P2419532378767838733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208494 (n + 1) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A273064.P2419532378767838733

/-!
# A273069: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A273069, there is no canonical definition to state claims against.
-/

/-! ## A273069.P16908538094200499747

`A273072(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273069.P16908538094200499747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273072 (n - 1) + a (n - 1)

end

end A273069.P16908538094200499747

/-! ## A273069.P12057454183976188733

`∑[A273072(n)]+1-A273072(n)`
-/

namespace A273069.P12057454183976188733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273072 n)

end

end A273069.P12057454183976188733

/-! ## A273069.P9676009826393062351

`Δ[A273071(n)]-A273072(n)`
-/

namespace A273069.P9676009826393062351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273072 n

end

end A273069.P9676009826393062351

/-! ## A273069.P10922916532205995877

`A273071(n+1)-(A273072(n)+A273071(n))`
-/

namespace A273069.P10922916532205995877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273071 (n + 1) - (A273072 n + A273071 n)

end

end A273069.P10922916532205995877

/-! ## A273069.P10870211845686828822

`∑[A273072((n-1)^a(floor(n/10)))]` with `a(0)=1`
-/

namespace A273069.P10870211845686828822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273072 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (f1 ⌊(n : ℚ) / 10⌋.toNat : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273069.P10870211845686828822

/-!
# A273070: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A273070, there is no canonical definition to state claims against.
-/

/-! ## A273070.P14464300561102799258

`A273069(2^n-1)`
-/

namespace A273070.P14464300561102799258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273069 (2 ^ n - 1)

end

end A273070.P14464300561102799258

/-! ## A273070.P16772127130220072440

`record[A273069(A135481(n))]`
-/

namespace A273070.P16772127130220072440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273069 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273070.P16772127130220072440

/-! ## A273070.P1323431547578602333

`record[A273069(A173787(n))]`
-/

namespace A273070.P1323431547578602333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273069 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273070.P1323431547578602333

/-! ## A273070.P7369890811917266669

`record[A273069(A303765(n))]`
-/

namespace A273070.P7369890811917266669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273069 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273070.P7369890811917266669

/-! ## A273070.P16183799492137018022

`record[A273069(Δ[A228693(n)])]`
-/

namespace A273070.P16183799492137018022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273069 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273070.P16183799492137018022

/-!
# A273071: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A273071, there is no canonical definition to state claims against.
-/

/-! ## A273071.P15459621851472507099

`∑[A273069(n)]`
-/

namespace A273071.P15459621851472507099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273071.P15459621851472507099

/-! ## A273071.P15536489226583440735

`A273069(abs(1-n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A273071.P15536489226583440735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273069 (|1 - (n : ℤ)| + 1).toNat + a (n - 1)

end

end A273071.P15536489226583440735

/-! ## A273071.P10435396365027521878

`∑[∑[A273072(n)]+1-A273072(n)]`
-/

namespace A273071.P10435396365027521878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273072 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273071.P10435396365027521878

/-! ## A273071.P7061957420069535761

`a(n-1)+A273069(n)+A000007(n+1)` with `a(0)=1`
-/

namespace A273071.P7061957420069535761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273069 n + A000007 (n + 1))

end

end A273071.P7061957420069535761

/-! ## A273071.P9247420422543927319

`A000027(A273069(n)+a(n-1))` with `a(0)=1`
-/

namespace A273071.P9247420422543927319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A273069 n + a (n - 1)).toNat

end

end A273071.P9247420422543927319

/-!
# A273072: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A273072, there is no canonical definition to state claims against.
-/

/-! ## A273072.P10047398754994556229

`Δ[A273069(n)]`
-/

namespace A273072.P10047398754994556229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273072.P10047398754994556229

/-! ## A273072.P6839617013859198118

`A273069(n+1)-A273069(n)`
-/

namespace A273072.P6839617013859198118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273069 (n + 1) - A273069 n

end

end A273072.P6839617013859198118

/-!
# A273073: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A273073, there is no canonical definition to state claims against.
-/

/-! ## A273073.P485687816930377955

`(2*n+1)²+A057428(n)*A272217(n)`
-/

namespace A273073.P485687816930377955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + A057428 n * A272217 n

end

end A273073.P485687816930377955

/-! ## A273073.P17522346732443738

`A057428(n)+A069894(n)-A272217(n)`
-/

namespace A273073.P17522346732443738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A069894 n - A272217 n)

end

end A273073.P17522346732443738

/-! ## A273073.P4837575510472456944

`A273076(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273073.P4837575510472456944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273076 (n - 1) + a (n - 1)

end

end A273073.P4837575510472456944

/-! ## A273073.P8149013583577477394

`Δ[A273075(n)]-A273076(n)`
-/

namespace A273073.P8149013583577477394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273076 n

end

end A273073.P8149013583577477394

/-! ## A273073.P3211568507811104267

`A273075(n+1)-(A273076(n)+A273075(n))`
-/

namespace A273073.P3211568507811104267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273075 (n + 1) - (A273076 n + A273075 n)

end

end A273073.P3211568507811104267

/-! ## A273073.P10867953867964959914

`A181385(A016825(n))-A272217(n)`
-/

namespace A273073.P10867953867964959914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272217 n

end

end A273073.P10867953867964959914

/-! ## A273073.P15935074319682067218

`A008740(A008458(n))-A272217(n)`
-/

namespace A273073.P15935074319682067218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272217 n

end

end A273073.P15935074319682067218

/-!
# A273074: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A273074, there is no canonical definition to state claims against.
-/

/-! ## A273074.P14324495343029629625

`A273073(2^n-1)`
-/

namespace A273074.P14324495343029629625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273073 (2 ^ n - 1)

end

end A273074.P14324495343029629625

/-! ## A273074.P15120631899722413557

`record[A273073(A232751(n))]`
-/

namespace A273074.P15120631899722413557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273073 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273074.P15120631899722413557

/-! ## A273074.P8011944050205486002

`and(-3, A273073(A000225(n)))`
-/

namespace A273074.P8011944050205486002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A273073 (A000225 n).toNat)

end

end A273074.P8011944050205486002

/-! ## A273074.P16307848878747723444

`record[A273073(A324867(n+1))]`
-/

namespace A273074.P16307848878747723444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273073 (A324867 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273074.P16307848878747723444

/-! ## A273074.P9120928067437109114

`record[A036987(n)*A273073(n)]`
-/

namespace A273074.P9120928067437109114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A273073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273074.P9120928067437109114

/-!
# A273075: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A273075, there is no canonical definition to state claims against.
-/

/-! ## A273075.P12729938323603852361

`∑[A057428(n)+A069894(n)-A272217(n)]`
-/

namespace A273075.P12729938323603852361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A069894 n - A272217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273075.P12729938323603852361

/-! ## A273075.P17825639786542459343

`∑[A273073(n)]`
-/

namespace A273075.P17825639786542459343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273075.P17825639786542459343

/-! ## A273075.P11222237065863268375

`A273073(n)+a(-A024000(n))` with `a(0)=1`
-/

namespace A273075.P11222237065863268375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273073 n + a (-A024000 n).toNat

end

end A273075.P11222237065863268375

/-! ## A273075.P1962217414928737007

`A273073(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A273075.P1962217414928737007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273073 n + a ((n : ℤ) - A057427 n).toNat

end

end A273075.P1962217414928737007

/-! ## A273075.P331496940156774862

`A273073(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A273075.P331496940156774862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273073 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A273075.P331496940156774862

/-! ## A273075.P10364973584818728664

`a(n-1)+A273073(n)+A040001(2*n)-2` with `a(0)=1`
-/

namespace A273075.P10364973584818728664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273073 n + (A040001 (2 * n) - 2))

end

end A273075.P10364973584818728664

/-! ## A273075.P16515439578665280229

`∑[∑[A273076(n)]+1-A273076(n)]`
-/

namespace A273075.P16515439578665280229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273076 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273075.P16515439578665280229

/-! ## A273075.P9618654887615423113

`∑[A181385(A016825(n))-A272217(n)]`
-/

namespace A273075.P9618654887615423113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273075.P9618654887615423113

/-!
# A273076: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A273076, there is no canonical definition to state claims against.
-/

/-! ## A273076.P6087912483755608308

`Δ[A273073(n)]`
-/

namespace A273076.P6087912483755608308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273076.P6087912483755608308

/-! ## A273076.P1104595123115099342

`A273073(n+1)-A273073(n)`
-/

namespace A273076.P1104595123115099342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273073 (n + 1) - A273073 n

end

end A273076.P1104595123115099342

/-! ## A273076.P15117362367181703353

`Δ[A057428(n)+A069894(n)-A272217(n)]`
-/

namespace A273076.P15117362367181703353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A069894 n - A272217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273076.P15117362367181703353

/-! ## A273076.P10497896452260808827

`Δ[2*A001844(n)+A057428(n)*A272217(n)]`
-/

namespace A273076.P10497896452260808827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001844 n + A057428 n * A272217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273076.P10497896452260808827

/-! ## A273076.P7304173583222783578

`Δ[A181385(A016825(n))-A272217(n)]`
-/

namespace A273076.P7304173583222783578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273076.P7304173583222783578

/-!
# A273077: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A273077, there is no canonical definition to state claims against.
-/

/-! ## A273077.P7241804361138506618

`A273080(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273077.P7241804361138506618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273080 (n - 1) + a (n - 1)

end

end A273077.P7241804361138506618

/-! ## A273077.P6989581098357099544

`a(n-1)-(A000007(n)-A273080(n-1))` with `a(0)=1`
-/

namespace A273077.P6989581098357099544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A273080 (n - 1))

end

end A273077.P6989581098357099544

/-! ## A273077.P5625647841963396976

`a(n-1)-A057428(n)*A273080(n-1)` with `a(0)=1`
-/

namespace A273077.P5625647841963396976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A273080 (n - 1)

end

end A273077.P5625647841963396976

/-! ## A273077.P14703988010456517390

`Δ[A273079(n)]-A273080(n)`
-/

namespace A273077.P14703988010456517390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273080 n

end

end A273077.P14703988010456517390

/-! ## A273077.P16946404829053557475

`A273079(n+1)-(A273080(n)+A273079(n))`
-/

namespace A273077.P16946404829053557475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273079 (n + 1) - (A273080 n + A273079 n)

end

end A273077.P16946404829053557475

/-! ## A273077.P13534449773245224430

`A065190(∑[A273080(n)])-A273080(n)`
-/

namespace A273077.P13534449773245224430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A273080 n

end

end A273077.P13534449773245224430

/-!
# A273078: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A273078, there is no canonical definition to state claims against.
-/

/-! ## A273078.P15557455086810166127

`A273077(2^n-1)`
-/

namespace A273078.P15557455086810166127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273077 (2 ^ n - 1)

end

end A273078.P15557455086810166127

/-! ## A273078.P5802087035887491241

`record[A273077(A173787(n))]`
-/

namespace A273078.P5802087035887491241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273077 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273078.P5802087035887491241

/-! ## A273078.P18269461613584961005

`record[A273077(A227351(n))]`
-/

namespace A273078.P18269461613584961005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273077 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273078.P18269461613584961005

/-! ## A273078.P12238027653944994568

`record[A273077(A255565(n))]`
-/

namespace A273078.P12238027653944994568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273077 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273078.P12238027653944994568

/-! ## A273078.P3270620154776766443

`or(1, A273077(A000225(n)))`
-/

namespace A273078.P3270620154776766443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273077 (A000225 n).toNat)

end

end A273078.P3270620154776766443

/-!
# A273079: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A273079, there is no canonical definition to state claims against.
-/

/-! ## A273079.P6021765578554763701

`∑[A273077(n)]`
-/

namespace A273079.P6021765578554763701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273079.P6021765578554763701

/-! ## A273079.P6260892114079402071

`∑[A273080(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273079.P6260892114079402071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273080 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273079.P6260892114079402071

/-! ## A273079.P3409755543488763288

`A273077(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A273079.P3409755543488763288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273077 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A273079.P3409755543488763288

/-! ## A273079.P8225677568094537454

`A273077(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A273079.P8225677568094537454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273077 n - (A000007 n - a (n - 1))

end

end A273079.P8225677568094537454

/-! ## A273079.P708154165454962708

`A273077(n+1)+a(n-1)-A273080(n)` with `a(0)=1`
-/

namespace A273079.P708154165454962708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273077 (n + 1) + (a (n - 1) - A273080 n)

end

end A273079.P708154165454962708

/-! ## A273079.P9256964824702874547

`a(n-1)+A273077(n)%A232568(n+2)` with `a(0)=1`
-/

namespace A273079.P9256964824702874547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273077 n) (A232568 (n + 2))

end

end A273079.P9256964824702874547

/-! ## A273079.P2110013864709843415

`a(n-1)+char[A065190(n+1)]*A273077(n)` with `a(0)=1`
-/

namespace A273079.P2110013864709843415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A273077 n

end

end A273079.P2110013864709843415

/-!
# A273080: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A273080, there is no canonical definition to state claims against.
-/

/-! ## A273080.P15981108981706267069

`Δ[A273077(n)]`
-/

namespace A273080.P15981108981706267069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273080.P15981108981706267069

/-! ## A273080.P3252466864397498408

`A273077(n+1)-A273077(n)`
-/

namespace A273080.P3252466864397498408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273077 (n + 1) - A273077 n

end

end A273080.P3252466864397498408

/-!
# A273088: a(n) is a multiple of 6 and a(n)-1 or a(n)+1 is an isolated (non-twin) prime number.

The programs for A273088, the canonical program `A273088.P1933067447831493313` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273088 has offset 1).

The definition of A273088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273088.P1933067447831493313

`3*round(A134797(n+1)/3)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A273088

/-- `3*round(A134797(n+1)/3)` -/
def P1933067447831493313.Spec : Prop :=
  ∀ n, P1933067447831493313.a n = A273088 (n + 1)

theorem P1933067447831493313.correct : P1933067447831493313.Spec := by
  intro n
  simp only [A273088, Nat.add_sub_cancel]

end A273088

/-! ## A273088.P10991084072798389645

`A339873(A164534(n+2))`
-/

namespace A273088.P10991084072798389645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339873 (A164534 (n + 2)).toNat

end

end A273088.P10991084072798389645

namespace A273088

/-- `A339873(A164534(n+2))` -/
def P10991084072798389645.Spec : Prop :=
  ∀ n, P10991084072798389645.a n = A273088 (n + 1)

end A273088

/-! ## A273088.P15755559920523248822

`∩[2*A174047(n+1), 3*n]`
-/

namespace A273088.P15755559920523248822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174047 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A273088.P15755559920523248822

namespace A273088

/-- `∩[2*A174047(n+1), 3*n]` -/
def P15755559920523248822.Spec : Prop :=
  ∀ n, (P15755559920523248822.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P7038101968982299926

`∩[6*n, A100317(n+1)]`
-/

namespace A273088.P7038101968982299926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P7038101968982299926

namespace A273088

/-- `∩[6*n, A100317(n+1)]` -/
def P7038101968982299926.Spec : Prop :=
  ∀ n, (P7038101968982299926.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P711853259737812485

`filter[A100317(n+1), A079979(#)]`
-/

namespace A273088.P711853259737812485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A273088.P711853259737812485

namespace A273088

/-- `filter[A100317(n+1), A079979(#)]` -/
def P711853259737812485.Spec : Prop :=
  ∀ n, P711853259737812485.a n = A273088 (n + 1)

end A273088

/-! ## A273088.P10741660809689786616

`∩[A100317(n+1), A008588(n)]`
-/

namespace A273088.P10741660809689786616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P10741660809689786616

namespace A273088

/-- `∩[A100317(n+1), A008588(n)]` -/
def P10741660809689786616.Spec : Prop :=
  ∀ n, (P10741660809689786616.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P14719648909265179940

`∩[A100317(n+1), A230628(n+1)]`
-/

namespace A273088.P14719648909265179940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P14719648909265179940

namespace A273088

/-- `∩[A100317(n+1), A230628(n+1)]` -/
def P14719648909265179940.Spec : Prop :=
  ∀ n, (P14719648909265179940.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P17475554914812159810

`∩[A054775(n+1), A210939(n+1)]`
-/

namespace A273088.P17475554914812159810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P17475554914812159810

namespace A273088

/-- `∩[A054775(n+1), A210939(n+1)]` -/
def P17475554914812159810.Spec : Prop :=
  ∀ n, (P17475554914812159810.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P1739462860687137924

`∩[A054775(n+1), A045718(n)]`
-/

namespace A273088.P1739462860687137924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P1739462860687137924

namespace A273088

/-- `∩[A054775(n+1), A045718(n)]` -/
def P1739462860687137924.Spec : Prop :=
  ∀ n, (P1739462860687137924.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P4555567263427854369

`∩[A054775(n+1), A283022(n+1)]`
-/

namespace A273088.P4555567263427854369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P4555567263427854369

namespace A273088

/-- `∩[A054775(n+1), A283022(n+1)]` -/
def P4555567263427854369.Spec : Prop :=
  ∀ n, (P4555567263427854369.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P6261448033170699863

`∩[A100317(n+1), A378884(n+1)]`
-/

namespace A273088.P6261448033170699863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P6261448033170699863

namespace A273088

/-- `∩[A100317(n+1), A378884(n+1)]` -/
def P6261448033170699863.Spec : Prop :=
  ∀ n, (P6261448033170699863.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P1652404059341343939

`∩[A054775(n+1), A210940(n+1)]`
-/

namespace A273088.P1652404059341343939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P1652404059341343939

namespace A273088

/-- `∩[A054775(n+1), A210940(n+1)]` -/
def P1652404059341343939.Spec : Prop :=
  ∀ n, (P1652404059341343939.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P14063795593204967321

`3*eq[2, A002126(3*n+1)]`
-/

namespace A273088.P14063795593204967321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273088.P14063795593204967321

namespace A273088

/-- `3*eq[2, A002126(3*n+1)]` -/
def P14063795593204967321.Spec : Prop :=
  ∀ n, (P14063795593204967321.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P9207270796743798865

`A061800(A107472(n+1))`
-/

namespace A273088.P9207270796743798865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A107472 (n + 1)).toNat

end

end A273088.P9207270796743798865

namespace A273088

/-- `A061800(A107472(n+1))` -/
def P9207270796743798865.Spec : Prop :=
  ∀ n, P9207270796743798865.a n = A273088 (n + 1)

end A273088

/-! ## A273088.P11500627310897874562

`A061800(A134797(n+1))`
-/

namespace A273088.P11500627310897874562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A134797 (n + 1)).toNat

end

end A273088.P11500627310897874562

namespace A273088

/-- `A061800(A134797(n+1))` -/
def P11500627310897874562.Spec : Prop :=
  ∀ n, P11500627310897874562.a n = A273088 (n + 1)

end A273088

/-! ## A273088.P327007462936913972

`A061800(A007510(n+2))`
-/

namespace A273088.P327007462936913972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A007510 (n + 2)).toNat

end

end A273088.P327007462936913972

namespace A273088

/-- `A061800(A007510(n+2))` -/
def P327007462936913972.Spec : Prop :=
  ∀ n, P327007462936913972.a n = A273088 (n + 1)

end A273088

/-! ## A273088.P1904459446244758445

`A276093(A134797(n+1)+3)`
-/

namespace A273088.P1904459446244758445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 (A134797 (n + 1) + 3).toNat

end

end A273088.P1904459446244758445

namespace A273088

/-- `A276093(A134797(n+1)+3)` -/
def P1904459446244758445.Spec : Prop :=
  ∀ n, P1904459446244758445.a n = A273088 (n + 1)

end A273088

/-! ## A273088.P11642794447864562806

`filter[A168079(n+2), A079979(#)]`
-/

namespace A273088.P11642794447864562806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A273088.P11642794447864562806

namespace A273088

/-- `filter[A168079(n+2), A079979(#)]` -/
def P11642794447864562806.Spec : Prop :=
  ∀ n, P11642794447864562806.a n = A273088 (n + 1)

end A273088

/-! ## A273088.P3358725158680014347

`∩[A168064(n+1), A008458(n)]`
-/

namespace A273088.P3358725158680014347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P3358725158680014347

namespace A273088

/-- `∩[A168064(n+1), A008458(n)]` -/
def P3358725158680014347.Spec : Prop :=
  ∀ n, (P3358725158680014347.a n : ℤ) = A273088 (n + 1)

end A273088

/-! ## A273088.P7996700474564244411

`∩[A168079(n+1), A008458(n)]`
-/

namespace A273088.P7996700474564244411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273088.P7996700474564244411

namespace A273088

/-- `∩[A168079(n+1), A008458(n)]` -/
def P7996700474564244411.Spec : Prop :=
  ∀ n, (P7996700474564244411.a n : ℤ) = A273088 (n + 1)

end A273088

/-!
# A273091: Successive integers produced by Conway's PRIMEGAME, starting with 6 rather than 2.

The programs for A273091, there is no canonical definition to state claims against.
-/

/-! ## A273091.P12807123402896443295

`A203907(a(n-1))` with `a(0)=6`
-/

namespace A273091.P12807123402896443295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A203907 (a (n - 1)).toNat

end

end A273091.P12807123402896443295

/-!
# A273092: a(n) = 2^n - 1 written backwards.

The programs for A273092, there is no canonical definition to state claims against.
-/

/-! ## A273092.P474742801068888107

`A004086(A000225(n))`
-/

namespace A273092.P474742801068888107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000225 n).toNat

end

end A273092.P474742801068888107

/-! ## A273092.P9860385558370085467

`A004086(2^n-1)`
-/

namespace A273092.P9860385558370085467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 ^ n - 1)

end

end A273092.P9860385558370085467

/-! ## A273092.P11122061019364935947

`A004086(A387325(2*n))%(10^n)`
-/

namespace A273092.P11122061019364935947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A387325 (2 * n)).toNat) (10 ^ n : ℤ)

end

end A273092.P11122061019364935947

/-! ## A273092.P15719708156487733549

`A025438(n)+A004086(abs(A225883(n)))`
-/

namespace A273092.P15719708156487733549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n + A004086 |A225883 n|.toNat

end

end A273092.P15719708156487733549

/-! ## A273092.P7003795131612906702

`A004086(A000051(n)-2)%A014951(n+1)`
-/

namespace A273092.P7003795131612906702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A000051 n - 2).toNat) (A014951 (n + 1))

end

end A273092.P7003795131612906702

/-!
# A273095: G.f. A(x) satisfies: A(x)^2 - 2*A(x)^3 = A(x^2).

The programs for A273095, there is no canonical definition to state claims against.
-/

/-! ## A273095.P13496510962007446520

`A039708(A291653(n))`
-/

namespace A273095.P13496510962007446520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A291653 n).toNat

end

end A273095.P13496510962007446520

/-! ## A273095.P1152969571872232954

`A077767(A184438(n+2))`
-/

namespace A273095.P1152969571872232954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (A184438 (n + 2)).toNat

end

end A273095.P1152969571872232954

/-! ## A273095.P17080438416308490925

`A129247(n)-A105098(ceil(2^(n-1)))`
-/

namespace A273095.P17080438416308490925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129247 n - A105098 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A273095.P17080438416308490925

