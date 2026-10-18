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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A058800: Vertically indecomposable lattices on n unlabeled nodes.

The programs for A058800, there is no canonical definition to state claims against.
-/

/-! ## A058800.P15220441558848156602

`A283824(2*A056864(n))`
-/

namespace A058800.P15220441558848156602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283824 (2 * A056864 n).toNat

end

end A058800.P15220441558848156602

/-! ## A058800.P3768196710322815928

`A283824(2*A289207(n))`
-/

namespace A058800.P3768196710322815928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283824 (2 * A289207 n).toNat

end

end A058800.P3768196710322815928

/-! ## A058800.P2809644428021509111

`A194698(or(12, A323949(n)))`
-/

namespace A058800.P2809644428021509111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (Int.lor 12 (A323949 n)).toNat

end

end A058800.P2809644428021509111

/-! ## A058800.P11593268327347236009

`A283824(floor(log2(A057693(n))))`
-/

namespace A058800.P11593268327347236009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283824 (Nat.log 2 (A057693 n).toNat)

end

end A058800.P11593268327347236009

/-! ## A058800.P10978578851843613833

`A283824(ceil(log2(A323949(n))))`
-/

namespace A058800.P10978578851843613833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283824 ⌈Real.logb 2 (A323949 n : ℝ)⌉.toNat

end

end A058800.P10978578851843613833

/-!
# A058801: Number of connected vertically indecomposable partial lattices on n unlabeled nodes.

The programs for A058801, there is no canonical definition to state claims against.
-/

/-! ## A058801.P7253483635642656284

`A127757(Δ[A068200(n)])`
-/

namespace A058801.P7253483635642656284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (f1 (n + 1) - f1 n).toNat

end

end A058801.P7253483635642656284

/-! ## A058801.P2201660173981976326

`A162223(∑[record[A295987(2*n+1)]])`
-/

namespace A058801.P2201660173981976326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295987 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058801.P2201660173981976326

/-!
# A058802: Vertically decomposable lattices on n unlabeled nodes.

The programs for A058802, there is no canonical definition to state claims against.
-/

/-! ## A058802.P10053809709716862365

`A006966(n+3)-A058800(n+3)`
-/

namespace A058802.P10053809709716862365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 (n + 3) - A058800 (n + 3)

end

end A058802.P10053809709716862365

/-! ## A058802.P7798162523560838737

`A107591(n)+A102572(A001850(n))`
-/

namespace A058802.P7798162523560838737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107591 n + A102572 (A001850 n).toNat

end

end A058802.P7798162523560838737

/-! ## A058802.P6322732554730067171

`A107591(n)+A102572(A090390(n))`
-/

namespace A058802.P6322732554730067171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107591 n + A102572 (A090390 n).toNat

end

end A058802.P6322732554730067171

/-!
# A058803: Vertically indecomposable lattices on n labeled nodes.

The programs for A058803, there is no canonical definition to state claims against.
-/

/-! ## A058803.P7612503775839305476

`A028310(n)*A058804(n)`
-/

namespace A058803.P7612503775839305476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A058804 n

end

end A058803.P7612503775839305476

/-! ## A058803.P13534680189144426301

`sqrt(A253909(n))*A058804(n)`
-/

namespace A058803.P13534680189144426301
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253909 n : ℝ) * (A058804 n : ℝ)

end

end A058803.P13534680189144426301

/-! ## A058803.P11434283633779899912

`A000007(n)+n*A058804(n)`
-/

namespace A058803.P11434283633779899912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A058804 n

end

end A058803.P11434283633779899912

/-! ## A058803.P9957743023174560569

`A007318(A000124(n))*A058804(n)`
-/

namespace A058803.P9957743023174560569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A058804 n

end

end A058803.P9957743023174560569

/-! ## A058803.P2540992059009427138

`A000005(A011782(n))*A058804(n)`
-/

namespace A058803.P2540992059009427138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A058804 n

end

end A058803.P2540992059009427138

/-!
# A058804: Number of labeled vertically indecomposable lattices with a fixed bottom.

The programs for A058804, there is no canonical definition to state claims against.
-/

/-! ## A058804.P17157133209859764503

`A054123(A000124(n))*A058805(n)`
-/

namespace A058804.P17157133209859764503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A000124 n).toNat * A058805 n

end

end A058804.P17157133209859764503

/-! ## A058804.P5686263281981123006

`A007966(A081350(n))*A058805(n)`
-/

namespace A058804.P5686263281981123006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A081350 n).toNat * A058805 n

end

end A058804.P5686263281981123006

/-! ## A058804.P10904184403406414360

`A058803(n)/A028310(n)`
-/

namespace A058804.P10904184403406414360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058803 n : ℚ) / (A028310 n : ℚ)

end

end A058804.P10904184403406414360

/-! ## A058804.P6850565307159673595

`A058803(n)/sqrt(A253909(n))`
-/

namespace A058804.P6850565307159673595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058803 n : ℝ) / Real.sqrt (A253909 n : ℝ)

end

end A058804.P6850565307159673595

/-! ## A058804.P5696363489415486069

`A058803(n)/A065033(2*n)`
-/

namespace A058804.P5696363489415486069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058803 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A058804.P5696363489415486069

/-!
# A058805: Number of labeled vertically indecomposable lattices with a fixed top and bottom.

The programs for A058805, there is no canonical definition to state claims against.
-/

/-! ## A058805.P17771800070461268266

`A058804(n)/A054123(A000124(n))`
-/

namespace A058805.P17771800070461268266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058804 n : ℚ) / (A054123 (A000124 n).toNat : ℚ)

end

end A058805.P17771800070461268266

/-! ## A058805.P17013757938252786304

`A058804(n)/A007966(A081350(n))`
-/

namespace A058805.P17013757938252786304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058804 n : ℚ) / (A007966 (A081350 n).toNat : ℚ)

end

end A058805.P17013757938252786304

/-! ## A058805.P15516096789376283807

`A058804(n)/A273943(A300576(n+1))`
-/

namespace A058805.P15516096789376283807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058804 n : ℚ) / (A273943 (A300576 (n + 1)).toNat : ℚ)

end

end A058805.P15516096789376283807

/-! ## A058805.P6310281991086232117

`A058804(n)/A028310(A028310(n)-1)`
-/

namespace A058805.P6310281991086232117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058804 n : ℚ) / (A028310 (A028310 n - 1).toNat : ℚ)

end

end A058805.P6310281991086232117

/-! ## A058805.P5208184382766652322

`A058804(n)/A007318(A000124(n)-n)`
-/

namespace A058805.P5208184382766652322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058804 n : ℚ) / (A007318 (A000124 n - (n : ℤ)).toNat : ℚ)

end

end A058805.P5208184382766652322

/-!
# A058806: a(n) = n! * H_n(n) where H_0(n) = 1/n, H_m(n) = Sum_{k=1..n} H_{m-1}(k).

The programs for A058806, there is no canonical definition to state claims against.
-/

/-! ## A058806.P990747102040087741

`record[gcd(A026920(n+1), A054655(n))]`
-/

namespace A058806.P990747102040087741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026920 (n + 1)) (A054655 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058806.P990747102040087741

/-! ## A058806.P10292930285504082115

`A067176(A056220(n+1))`
-/

namespace A058806.P10292930285504082115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A056220 (n + 1)).toNat

end

end A058806.P10292930285504082115

/-! ## A058806.P7827221917323956762

`A067176(A000217(2*n+1)+n)`
-/

namespace A058806.P7827221917323956762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A058806.P7827221917323956762

/-! ## A058806.P3927283374595578317

`A024167(2*n+1)/A000142(n)`
-/

namespace A058806.P3927283374595578317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (2 * n + 1) : ℚ) / (A000142 n : ℚ)

end

end A058806.P3927283374595578317

/-! ## A058806.P8560744770312338114

`A093905((n+1)²+n²)`
-/

namespace A058806.P8560744770312338114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 ((n + 1) ^ 2 + n ^ 2)

end

end A058806.P8560744770312338114

/-!
# A058807: a(n) = Product_{k=1..n} s(n,k), where s(n,k) is unsigned Stirling number of the first kind. (s(n,k) = number of permutations of n elements which contain exactly k cycles.)

The programs for A058807, there is no canonical definition to state claims against.
-/

/-! ## A058807.P12839231210263234947

`A308941(n+1)/A000178(n+1)`
-/

namespace A058807.P12839231210263234947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308941 (n + 1) : ℚ) / (A000178 (n + 1) : ℚ)

end

end A058807.P12839231210263234947

/-!
# A058808: Product{k=1 to n}[S(n,k)], where S(n,k) is a Stirling number of the second kind. (S(n,k) = number of ways of partitioning a set of n elements into k nonempty subsets.)

The programs for A058808, there is no canonical definition to state claims against.
-/

/-! ## A058808.P6337235729755850403

`A308942(n+1)/A000178(n+1)`
-/

namespace A058808.P6337235729755850403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308942 (n + 1) : ℚ) / (A000178 (n + 1) : ℚ)

end

end A058808.P6337235729755850403

/-!
# A058809: The sequence lambda(3,n), where lambda is defined in A055203. Number of ways of placing n identifiable positive intervals with a total of exactly three starting and/or finishing points.

The programs for A058809, the canonical program `A058809.P80454205879263524` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058809 has offset 0).

The definition of A058809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058809.P80454205879263524

`3*a(n-1)+6` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058809

/-- `3*a(n-1)+6` -/
def P80454205879263524.Spec : Prop :=
  ∀ n, (P80454205879263524.a n : ℤ) = A058809 n

theorem P80454205879263524.correct : P80454205879263524.Spec := by
  intro n
  simp only [A058809]

end A058809

/-! ## A058809.P2214080408879321000

`abs(2-3^n)-1`
-/

namespace A058809.P2214080408879321000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (3 ^ n : ℤ)| - 1

end

end A058809.P2214080408879321000

namespace A058809

/-- `abs(2-3^n)-1` -/
def P2214080408879321000.Spec : Prop :=
  ∀ n, P2214080408879321000.a n = A058809 n

end A058809

/-! ## A058809.P3364521105237221940

`(3^n-3)%(3^n)`
-/

namespace A058809.P3364521105237221940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 ^ n : ℤ) - 3) (3 ^ n : ℤ)

end

end A058809.P3364521105237221940

namespace A058809

/-- `(3^n-3)%(3^n)` -/
def P3364521105237221940.Spec : Prop :=
  ∀ n, P3364521105237221940.a n = A058809 n

end A058809

/-! ## A058809.P15360293553683691585

`lcm(3, a(n-1)+2)` with `a(0)=0, a(1)=0`
-/

namespace A058809.P15360293553683691585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lcm 3 (a (n - 1) + 2)

end

end A058809.P15360293553683691585

namespace A058809

/-- `lcm(3, a(n-1)+2)` -/
def P15360293553683691585.Spec : Prop :=
  ∀ n, (P15360293553683691585.a n : ℤ) = A058809 n

end A058809

/-! ## A058809.P16518106541158545239

`∑[3*a(n-1)]` with `a(0)=0, a(1)=0, a(2)=6`
-/

namespace A058809.P16518106541158545239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058809.P16518106541158545239

namespace A058809

/-- `∑[3*a(n-1)]` -/
def P16518106541158545239.Spec : Prop :=
  ∀ n, (P16518106541158545239.a n : ℤ) = A058809 n

end A058809

/-! ## A058809.P9445933106534973110

`3*xor(1, ceil(3^(n-1)))`
-/

namespace A058809.P9445933106534973110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.xor 1 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A058809.P9445933106534973110

namespace A058809

/-- `3*xor(1, ceil(3^(n-1)))` -/
def P9445933106534973110.Spec : Prop :=
  ∀ n, P9445933106534973110.a n = A058809 n

end A058809

/-! ## A058809.P553389956474927150

`∑[3^n/3*2%(n+1)]`
-/

namespace A058809.P553389956474927150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 3 * ((2 % (n + 1) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058809.P553389956474927150

namespace A058809

/-- `∑[3^n/3*2%(n+1)]` -/
def P553389956474927150.Spec : Prop :=
  ∀ n, P553389956474927150.a n = (A058809 n : ℚ)

end A058809

/-! ## A058809.P15048031595680461489

`(a(n-1)+2)/(1-2/3)` with `a(0)=0, a(1)=0`
-/

namespace A058809.P15048031595680461489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 1) + 2) / (1 - (2 : ℚ) / 3)

end

end A058809.P15048031595680461489

namespace A058809

/-- `(a(n-1)+2)/(1-2/3)` -/
def P15048031595680461489.Spec : Prop :=
  ∀ n, P15048031595680461489.a n = (A058809 n : ℚ)

end A058809

/-! ## A058809.P3495625495355333637

`3*(4-(4/2-a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A058809.P3495625495355333637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 * (4 - ((4 : ℚ) / 2 - a (n - 1)))

end

end A058809.P3495625495355333637

namespace A058809

/-- `3*(4-(4/2-a(n-1)))` -/
def P3495625495355333637.Spec : Prop :=
  ∀ n, P3495625495355333637.a n = (A058809 n : ℚ)

end A058809

/-! ## A058809.P11057688268929737613

`3*(2-(a(n-1)-2*a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A058809.P11057688268929737613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 * (2 - (a (n - 1) - 2 * a (n - 1)))

end

end A058809.P11057688268929737613

namespace A058809

/-- `3*(2-(a(n-1)-2*a(n-1)))` -/
def P11057688268929737613.Spec : Prop :=
  ∀ n, P11057688268929737613.a n = A058809 n

end A058809

/-! ## A058809.P12711925741347976898

`2*(A261547(n)-1)`
-/

namespace A058809.P12711925741347976898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A261547 n - 1)

end

end A058809.P12711925741347976898

namespace A058809

/-- `2*(A261547(n)-1)` -/
def P12711925741347976898.Spec : Prop :=
  ∀ n, P12711925741347976898.a n = A058809 n

end A058809

/-! ## A058809.P7508500982578724167

`3*(A133494(n)-1)`
-/

namespace A058809.P7508500982578724167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A133494 n - 1)

end

end A058809.P7508500982578724167

namespace A058809

/-- `3*(A133494(n)-1)` -/
def P7508500982578724167.Spec : Prop :=
  ∀ n, P7508500982578724167.a n = A058809 n

end A058809

/-! ## A058809.P12506130643795622149

`abs(1-abs(2-A000244(n)))`
-/

namespace A058809.P12506130643795622149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |2 - A000244 n|)|

end

end A058809.P12506130643795622149

namespace A058809

/-- `abs(1-abs(2-A000244(n)))` -/
def P12506130643795622149.Spec : Prop :=
  ∀ n, P12506130643795622149.a n = A058809 n

end A058809

/-! ## A058809.P4447722225326347384

`lcm(3-3^n, A001221(n+1))`
-/

namespace A058809.P4447722225326347384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 - (3 ^ n : ℤ)) (A001221 (n + 1))

end

end A058809.P4447722225326347384

namespace A058809

/-- `lcm(3-3^n, A001221(n+1))` -/
def P4447722225326347384.Spec : Prop :=
  ∀ n, (P4447722225326347384.a n : ℤ) = A058809 n

end A058809

/-! ## A058809.P14257246697673688757

`2*(A003462(A028310(n))-1)`
-/

namespace A058809.P14257246697673688757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 (A028310 n).toNat - 1)

end

end A058809.P14257246697673688757

namespace A058809

/-- `2*(A003462(A028310(n))-1)` -/
def P14257246697673688757.Spec : Prop :=
  ∀ n, P14257246697673688757.a n = A058809 n

end A058809

/-! ## A058809.P684841438779378882

`2*(A052993(A004273(n))-1)`
-/

namespace A058809.P684841438779378882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052993 (A004273 n).toNat - 1)

end

end A058809.P684841438779378882

namespace A058809

/-- `2*(A052993(A004273(n))-1)` -/
def P684841438779378882.Spec : Prop :=
  ∀ n, P684841438779378882.a n = A058809 n

end A058809

/-! ## A058809.P3035409770485347838

`2*(A052993(A004275(n))-1)`
-/

namespace A058809.P3035409770485347838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052993 (A004275 n).toNat - 1)

end

end A058809.P3035409770485347838

namespace A058809

/-- `2*(A052993(A004275(n))-1)` -/
def P3035409770485347838.Spec : Prop :=
  ∀ n, P3035409770485347838.a n = A058809 n

end A058809

/-! ## A058809.P13775889123491360247

`2*(A052993(A092535(n))-1)`
-/

namespace A058809.P13775889123491360247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052993 (A092535 n).toNat - 1)

end

end A058809.P13775889123491360247

namespace A058809

/-- `2*(A052993(A092535(n))-1)` -/
def P13775889123491360247.Spec : Prop :=
  ∀ n, P13775889123491360247.a n = A058809 n

end A058809

/-! ## A058809.P3662434708086190636

`2*(A052993(A163985(n))-1)`
-/

namespace A058809.P3662434708086190636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052993 (A163985 n).toNat - 1)

end

end A058809.P3662434708086190636

namespace A058809

/-- `2*(A052993(A163985(n))-1)` -/
def P3662434708086190636.Spec : Prop :=
  ∀ n, P3662434708086190636.a n = A058809 n

end A058809

/-!
# A058810: The sequence lambda(n,n), where lambda is defined in A055203.

The programs for A058810, there is no canonical definition to state claims against.
-/

/-! ## A058810.P15966189968717105397

`A059117(∑[4*n])`
-/

namespace A058810.P15966189968717105397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058810.P15966189968717105397

/-! ## A058810.P15911812288240314300

`and(-1, A059117(A046092(n)))`
-/

namespace A058810.P15911812288240314300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A059117 (A046092 n).toNat)

end

end A058810.P15911812288240314300

/-! ## A058810.P5865957186677891671

`A059117(A046092(n))%A370576(n+2)`
-/

namespace A058810.P5865957186677891671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059117 (A046092 n).toNat) (A370576 (n + 2))

end

end A058810.P5865957186677891671

/-!
# A058811: Number of nodes at the n-th level of the Inverse-Totient-Tree (ITT) with the root at 1, and edges connecting number m to all numbers k such that phi(k) = m.

The programs for A058811, there is no canonical definition to state claims against.
-/

/-! ## A058811.P11418012208878075524

`A289152(Δ[floor(3^(n-1))])`
-/

namespace A058811.P11418012208878075524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289152 (f1 (n + 1) - f1 n).toNat

end

end A058811.P11418012208878075524

/-! ## A058811.P7214984173856978612

`A028377(n)-A053735((4^n-(3*(3^n-2^n)+1))/2)`
-/

namespace A058811.P7214984173856978612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028377 n - A053735 (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (3 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) + 1) : ℚ) / 2)).toNat

end

end A058811.P7214984173856978612

/-! ## A058811.P5004189489647135511

`A165799(n)+A003056(A180752(2*n+1))`
-/

namespace A058811.P5004189489647135511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165799 n + A003056 (A180752 (2 * n + 1)).toNat

end

end A058811.P5004189489647135511

/-! ## A058811.P3702587449131163782

`A219946(A052905(n+2))+A003056(A180752(2*n+1))`
-/

namespace A058811.P3702587449131163782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A052905 (n + 2)).toNat + A003056 (A180752 (2 * n + 1)).toNat

end

end A058811.P3702587449131163782

/-!
# A058813: Unlabeled (i.e., equivalent to their 1-0 complement) binary necklaces sorted in ascending lexicographic order and read as binary numbers.

The programs for A058813, there is no canonical definition to state claims against.
-/

/-! ## A058813.P3057281563477480701

`A004074(A327389(p?[A027052(n)]))`
-/

namespace A058813.P3057281563477480701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (A327389 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A058813.P3057281563477480701

/-! ## A058813.P1273185447007182967

`A257687(lt[A019320(n+3), A194829(2*(n+1))])`
-/

namespace A058813.P1273185447007182967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194829 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A058813.P1273185447007182967

/-! ## A058813.P12972098273660685418

`A265509(A140814(n))%A049776(n+1)`
-/

namespace A058813.P12972098273660685418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265509 (A140814 n).toNat) (A049776 (n + 1))

end

end A058813.P12972098273660685418

/-! ## A058813.P16058225431764356665

`or(A144608(n), A278488(A253495(n+1)))`
-/

namespace A058813.P16058225431764356665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144608 n) (A278488 (A253495 (n + 1)).toNat)

end

end A058813.P16058225431764356665

/-! ## A058813.P17906785153553191158

`A004273(A187829(n+1)-A250983(n+1))`
-/

namespace A058813.P17906785153553191158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A187829 (n + 1) - A250983 (n + 1)).toNat

end

end A058813.P17906785153553191158

/-!
# A058815: Numerators in expansion of exp(exp(x)-1)/(2-x).

The programs for A058815, there is no canonical definition to state claims against.
-/

/-! ## A058815.P3663937465330235937

`A000265(A367972(n)/A007294(n))`
-/

namespace A058815.P3663937465330235937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A367972 n : ℚ) / (A007294 n : ℚ))).toNat

end

end A058815.P3663937465330235937

/-! ## A058815.P7831753990070403558

`A000265(A367972(n))`
-/

namespace A058815.P7831753990070403558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A367972 n).toNat

end

end A058815.P7831753990070403558

/-!
# A058816: Denominators in expansion of exp(exp(x)-1)/(2-x).

The programs for A058816, there is no canonical definition to state claims against.
-/

/-! ## A058816.P875553890758933045

`lcm(n!, record[A230014(n+1)])`
-/

namespace A058816.P875553890758933045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A058816.P875553890758933045

/-! ## A058816.P2233606868129466276

`A000027(lcm(2^(n+1), ∑{digits}[n, #!]))`
-/

namespace A058816.P2233606868129466276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.lcm (2 ^ (n + 1)) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum)

end

end A058816.P2233606868129466276

/-! ## A058816.P8138827718831608378

`(A000005(4^n+1)-1)*2*a(n-1)` with `a(0)=2`
-/

namespace A058816.P8138827718831608378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (A000005 (4 ^ n + 1) - 1) * (2 * a (n - 1))

end

end A058816.P8138827718831608378

/-! ## A058816.P11055296253589211193

`n!*A054844(A038183(n))`
-/

namespace A058816.P11055296253589211193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A054844 (A038183 n).toNat

end

end A058816.P11055296253589211193

/-! ## A058816.P14648034232866714882

`(A126646(n)+1)*A000265(n!)`
-/

namespace A058816.P14648034232866714882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126646 n + 1) * A000265 (Nat.factorial n)

end

end A058816.P14648034232866714882

/-!
# A058817: Even cototient numbers.

The programs for A058817, there is no canonical definition to state claims against.
-/

/-! ## A058817.P15871346695779887638

`2*comp[A126887(n+1)]`
-/

namespace A058817.P15871346695779887638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A058817.P15871346695779887638

/-! ## A058817.P11767923402408252723

`A060747(comp[A126887(n+1)])+1`
-/

namespace A058817.P11767923402408252723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126887 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A058817.P11767923402408252723

/-! ## A058817.P15793562369739288869

`∩[2*n, A063742(n+1)]`
-/

namespace A058817.P15793562369739288869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058817.P15793562369739288869

/-! ## A058817.P14372310678906939066

`∩[A063742(n+1), A005843(n)]`
-/

namespace A058817.P14372310678906939066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058817.P14372310678906939066

/-! ## A058817.P13090504944268537504

`filter[A063742(n+1), A059841(#)]`
-/

namespace A058817.P13090504944268537504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A058817.P13090504944268537504

/-!
# A058818: a(0) = 1, a(1) = 3; for n >= 2 a(n) is the number of degree-n monic reducible polynomials over GF(3), i.e., a(n) = 3^n - A027376(n).

The programs for A058818, there is no canonical definition to state claims against.
-/

/-! ## A058818.P9607782106897226042

`3^n-A027376(n)%(3^n)`
-/

namespace A058818.P9607782106897226042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - Int.tmod (A027376 n) (3 ^ n : ℤ)

end

end A058818.P9607782106897226042

/-! ## A058818.P1700042780866488135

`A036561(A347553(n+3))-A027376(n)`
-/

namespace A058818.P1700042780866488135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A347553 (n + 3)).toNat - A027376 n

end

end A058818.P1700042780866488135

/-! ## A058818.P310880656271284498

`A036561(A347553(n+3))+A278663(n)-A001867(n)`
-/

namespace A058818.P310880656271284498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A347553 (n + 3)).toNat + (A278663 n - A001867 n)

end

end A058818.P310880656271284498

/-! ## A058818.P5692419587189052724

`A036561(A347553(n+3))-(A303117(n)+A027375(n))`
-/

namespace A058818.P5692419587189052724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A347553 (n + 3)).toNat - (A303117 n + A027375 n)

end

end A058818.P5692419587189052724

/-! ## A058818.P15299745577056754526

`A036561(A347553(n+3))-A074650(A253145(n+1)-2)`
-/

namespace A058818.P15299745577056754526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A347553 (n + 3)).toNat - A074650 (A253145 (n + 1) - 2).toNat

end

end A058818.P15299745577056754526

/-! ## A058818.P10055966906139949678

`A036561(A347553(n+3))-A124814(∑[n])`
-/

namespace A058818.P10055966906139949678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A347553 (n + 3)).toNat - A124814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058818.P10055966906139949678

/-!
# A058819: a(0) = 1, a(1) = 4; for n >= 2 a(n) is the number of degree-n monic reducible polynomials over GF(4), i.e., a(n) = 4^n - A027377(n).

The programs for A058819, there is no canonical definition to state claims against.
-/

/-! ## A058819.P8794583263108571399

`4^n-A027377(n)%A000302(n)`
-/

namespace A058819.P8794583263108571399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - Int.tmod (A027377 n) (A000302 n)

end

end A058819.P8794583263108571399

/-! ## A058819.P619758498282792664

`4^n-and(A024036(n), A027377(n))`
-/

namespace A058819.P619758498282792664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - Int.land (A024036 n) (A027377 n)

end

end A058819.P619758498282792664

/-!
# A058820: a(0) = 1, a(1) = 5; for n >= 2 a(n) is the number of degree-n monic reducible polynomials over GF(5), i.e., a(n) = 5^n - A001692(n).

The programs for A058820, there is no canonical definition to state claims against.
-/

/-! ## A058820.P8539796100441065402

`5^n-A054720(n*a(floor(acot(n))))/n` with `a(0)=1, a(1)=5`
-/

namespace A058820.P8539796100441065402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (5 ^ n : ℚ) - (A054720 (SequenceMachineLib.roundAway ((n : ℚ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat)).toNat : ℚ) / (n : ℚ)

end

end A058820.P8539796100441065402

/-! ## A058820.P16349770168006672645

`5^n-A001692(n)%A000351(n)`
-/

namespace A058820.P16349770168006672645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - Int.tmod (A001692 n) (A000351 n)

end

end A058820.P16349770168006672645

/-! ## A058820.P11900024711226930884

`A000351(n)-A001692(n)%A054720(n)`
-/

namespace A058820.P11900024711226930884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - Int.tmod (A001692 n) (A054720 n)

end

end A058820.P11900024711226930884

/-!
# A058821: Dimensions of homogeneous subspaces of shuffle algebra over 6-letter alphabet (see A058766 for 2-letter case).

The programs for A058821, there is no canonical definition to state claims against.
-/

/-! ## A058821.P3370805502339956385

`A000400(n)-A032164(n)%A000400(n)`
-/

namespace A058821.P3370805502339956385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - Int.tmod (A032164 n) (A000400 n)

end

end A058821.P3370805502339956385

/-!
# A058822: a(0) = 1, a(1) = 7; for n>=2 a(n) is the number of degree-n monic reducible polynomials over GF(7), i.e., a(n) = 7^n - A001693(n).

The programs for A058822, there is no canonical definition to state claims against.
-/

/-! ## A058822.P15822100249749654136

`A232559(A186446(n))-A190988(n)`
-/

namespace A058822.P15822100249749654136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (A186446 n).toNat - A190988 n

end

end A058822.P15822100249749654136

/-!
# A058823: a(0) = 1, a(1) = 8; for n >= 2 a(n) is the number of degree-n monic reducible polynomials over GF(8), i.e., a(n) = 8^n - A027380(n).

The programs for A058823, there is no canonical definition to state claims against.
-/

/-! ## A058823.P9364056519257912366

`A133624(7*A186264(n))`
-/

namespace A058823.P9364056519257912366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133624 (7 * A186264 n).toNat

end

end A058823.P9364056519257912366

/-!
# A058824: a(0) = 1, a(1) = 9; for n >= 2 a(n) is the number of degree-n monic reducible polynomials over GF(9), i.e., a(n) = 9^n - A027381(n).

The programs for A058824, there is no canonical definition to state claims against.
-/

/-! ## A058824.P3700660043060047079

`A016813(A014824(n)+A011585(n))`
-/

namespace A058824.P3700660043060047079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A014824 n + A011585 n).toNat

end

end A058824.P3700660043060047079

/-!
# A058825: Numbers which are both totients and cototients.

The programs for A058825, there is no canonical definition to state claims against.
-/

/-! ## A058825.P8466932672162648973

`∩[A002202(n+1), A063742(n+1)]`
-/

namespace A058825.P8466932672162648973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058825.P8466932672162648973

/-! ## A058825.P4224392817301467741

`∩[A002202(n+1), ∑[A083235(n+1)]]`
-/

namespace A058825.P4224392817301467741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058825.P4224392817301467741

/-! ## A058825.P6035646033151801588

`∩[A002202(n+1), comp[A005278(n+1)]]`
-/

namespace A058825.P6035646033151801588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A058825.P6035646033151801588

/-! ## A058825.P7663555045661932138

`filter[A063742(n+2), A264739(#)]`
-/

namespace A058825.P7663555045661932138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A058825.P7663555045661932138

/-! ## A058825.P12501528880811640351

`lt[A245706(A331995(n+1)), A257106(n)]`
-/

namespace A058825.P12501528880811640351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245706 (A331995 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A058825.P12501528880811640351

/-!
# A058826: Even cototient numbers which are nontotients.

The programs for A058826, there is no canonical definition to state claims against.
-/

/-! ## A058826.P3799462298206506417

`filter[A058817(n+2), A355451(#)]`
-/

namespace A058826.P3799462298206506417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A058826.P3799462298206506417

/-! ## A058826.P12491526477675164114

`∩[A005277(n+1), A058817(n+1)]`
-/

namespace A058826.P12491526477675164114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058826.P12491526477675164114

/-! ## A058826.P10904645279380328520

`∩[2*A079695(n+1), A058817(n+1)]`
-/

namespace A058826.P10904645279380328520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058826.P10904645279380328520

/-! ## A058826.P2755207097469714093

`∩[A007617(n+1), A058817(n+1)]`
-/

namespace A058826.P2755207097469714093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058826.P2755207097469714093

/-! ## A058826.P14054200739212149972

`∩[A005277(n+1), A063742(n+1)]`
-/

namespace A058826.P14054200739212149972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058826.P14054200739212149972

/-! ## A058826.P13444692336588478954

`A103517(lt[A057826(n+1), A063748(2*(n+1))])`
-/

namespace A058826.P13444692336588478954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063748 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A058826.P13444692336588478954

/-!
# A058827: Totients which are not cototients.

The programs for A058827, there is no canonical definition to state claims against.
-/

/-! ## A058827.P17499898432686673389

`∩[A002202(n+1), A005278(n+1)]`
-/

namespace A058827.P17499898432686673389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058827.P17499898432686673389

/-! ## A058827.P3479627273537720097

`filter[A005278(n+1), A264739(#)]`
-/

namespace A058827.P3479627273537720097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A058827.P3479627273537720097

/-! ## A058827.P10310629515250925759

`lt[A063507(n+1), A014197(n+1)]+1`
-/

namespace A058827.P10310629515250925759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A058827.P10310629515250925759

/-! ## A058827.P6769292777972501578

`lt[A063507(n+1), A264739(n+1)]+1`
-/

namespace A058827.P6769292777972501578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A058827.P6769292777972501578

/-! ## A058827.P4834166623273363635

`A020725(lt[A063507(n+1), A014197(n+1)])`
-/

namespace A058827.P4834166623273363635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A058827.P4834166623273363635

/-! ## A058827.P3100203872874197543

`A133265(lt[A063507(n+1), A014197(n+1)])`
-/

namespace A058827.P3100203872874197543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A058827.P3100203872874197543

/-! ## A058827.P5795516713403261406

`A133265(lt[A063507(n+1), A264739(n+1)])`
-/

namespace A058827.P5795516713403261406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A058827.P5795516713403261406

/-! ## A058827.P7631832286971134867

`A133265(eq[1, A264739(n+1)+A063507(n+1)])`
-/

namespace A058827.P7631832286971134867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1) + A063507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058827.P7631832286971134867

/-!
# A058829: Numbers k such that 6^k - k is prime.

The programs for A058829, there is no canonical definition to state claims against.
-/

/-! ## A058829.P14863411751622953375

`eq[n, A013607(A028310(n))]`
-/

namespace A058829.P14863411751622953375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013607 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058829.P14863411751622953375

/-!
# A058830: Number of labeled n-node 4-valent graphs containing a single double edge.

The programs for A058830, there is no canonical definition to state claims against.
-/

/-! ## A058830.P18310325902891698867

`45*A241320(C(n, 4))`
-/

namespace A058830.P18310325902891698867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A241320 (Nat.choose n 4)

end

end A058830.P18310325902891698867

/-! ## A058830.P7321252796611531750

`A129533(A034330(n+1))`
-/

namespace A058830.P7321252796611531750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (A034330 (n + 1)).toNat

end

end A058830.P7321252796611531750

/-! ## A058830.P15982432813417829644

`A129533(A366594(n+1))`
-/

namespace A058830.P15982432813417829644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (A366594 (n + 1)).toNat

end

end A058830.P15982432813417829644

/-! ## A058830.P12190977971514818977

`A108782(A186770(n)+3)`
-/

namespace A058830.P12190977971514818977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A186770 n + 3).toNat

end

end A058830.P12190977971514818977

/-!
# A058831: Number of labeled n-node 4-valent graphs containing two nonadjacent double edges.

The programs for A058831, there is no canonical definition to state claims against.
-/

/-! ## A058831.P2074135626250671621

`A382343(A201169(n))`
-/

namespace A058831.P2074135626250671621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382343 (A201169 n).toNat

end

end A058831.P2074135626250671621

/-! ## A058831.P9629763398001063867

`∑[A002266(A232699(n))]`
-/

namespace A058831.P9629763398001063867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A232699 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058831.P9629763398001063867

/-! ## A058831.P15315184721641377663

`A161338(A092491(n+1))`
-/

namespace A058831.P15315184721641377663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161338 (A092491 (n + 1)).toNat

end

end A058831.P15315184721641377663

/-!
# A058833: Number of labeled n-node 4-valent graphs containing 3 double edges, a distinguished unordered pair of which are adjacent.

The programs for A058833, there is no canonical definition to state claims against.
-/

/-! ## A058833.P3398850506249569161

`A002265((n-floor(sqrt(n))²)*n!)`
-/

namespace A058833.P3398850506249569161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) * (Nat.factorial n : ℤ)).toNat

end

end A058833.P3398850506249569161

/-! ## A058833.P613401986984212157

`A294519(A026678(n))`
-/

namespace A058833.P613401986984212157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294519 (A026678 n).toNat

end

end A058833.P613401986984212157

/-! ## A058833.P7063726732122685183

`A129533(A329912(n+1))`
-/

namespace A058833.P7063726732122685183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (A329912 (n + 1)).toNat

end

end A058833.P7063726732122685183

/-!
# A058834: Number of labeled n-node 4-valent graphs containing a triple edge.

The programs for A058834, there is no canonical definition to state claims against.
-/

/-! ## A058834.P6472700886982734480

`A001281(A029573(n))*A086810(n)`
-/

namespace A058834.P6472700886982734480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A029573 n).toNat * A086810 n

end

end A058834.P6472700886982734480

/-! ## A058834.P16007979324520462310

`A002620(A309861(n))*A003418(n)`
-/

namespace A058834.P16007979324520462310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A309861 n).toNat * A003418 n

end

end A058834.P16007979324520462310

/-! ## A058834.P3099404393666971594

`A002620(A309861(n))*A080742(n)`
-/

namespace A058834.P3099404393666971594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A309861 n).toNat * A080742 n

end

end A058834.P3099404393666971594

/-! ## A058834.P14238208533512470080

`A309785(A155212(n))*A361568(n)`
-/

namespace A058834.P14238208533512470080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A155212 n).toNat * A361568 n

end

end A058834.P14238208533512470080

/-!
# A058835: Number of labeled n-node 4-valent graphs containing a triple edge and a double edge.

The programs for A058835, there is no canonical definition to state claims against.
-/

/-! ## A058835.P13924382889296370358

`A052785(a(n-2)+n)/4` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A058835.P13924382889296370358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (A052785 (SequenceMachineLib.roundAway (a (n - 2) + (n : ℚ))).toNat : ℚ) / 4

end

end A058835.P13924382889296370358

/-! ## A058835.P17232605735256189337

`A324245(A324070(n+1))`
-/

namespace A058835.P17232605735256189337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (A324070 (n + 1)).toNat

end

end A058835.P17232605735256189337

/-! ## A058835.P17789937757259844103

`2*A342123(A247006(n))`
-/

namespace A058835.P17789937757259844103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342123 (A247006 n).toNat

end

end A058835.P17789937757259844103

/-! ## A058835.P11810068359005977836

`A001281(A052783(n)/2)`
-/

namespace A058835.P11810068359005977836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway ((A052783 n : ℚ) / 2)).toNat

end

end A058835.P11810068359005977836

/-!
# A058836: Number of labeled n-node 4-valent graphs containing a loop.

The programs for A058836, there is no canonical definition to state claims against.
-/

/-! ## A058836.P12668636787805404206

`A341743(2*(2-n)²)`
-/

namespace A058836.P12668636787805404206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341743 (2 * (2 - (n : ℤ)) ^ 2).toNat

end

end A058836.P12668636787805404206

/-! ## A058836.P15678176939578341915

`lcm(n, A341743(n²+1))`
-/

namespace A058836.P15678176939578341915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A341743 (n ^ 2 + 1))

end

end A058836.P15678176939578341915

/-! ## A058836.P3502661985398042391

`2*C(n, 4)*A330015(5*C(n, 6))`
-/

namespace A058836.P3502661985398042391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n 4 : ℤ) * A330015 (5 * Nat.choose n 6)

end

end A058836.P3502661985398042391

/-! ## A058836.P3163523678466306905

`A054047(C(A097066(n), 9))`
-/

namespace A058836.P3163523678466306905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 (Nat.choose (A097066 n).toNat 9)

end

end A058836.P3163523678466306905

/-!
# A058837: Number of labeled n-node 4-valent graphs containing a loop and a double edge.

The programs for A058837, there is no canonical definition to state claims against.
-/

/-! ## A058837.P13286969216472416548

`A257684(∏[comp[5*n]])`
-/

namespace A058837.P13286969216472416548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A058837.P13286969216472416548

/-! ## A058837.P6619500516046477862

`10*A341840(∑[record[and(2, n)^n]])`
-/

namespace A058837.P6619500516046477862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A341840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058837.P6619500516046477862

/-! ## A058837.P5810181189854258520

`A007954(C(2^n-n²+1, 3))`
-/

namespace A058837.P5810181189854258520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Nat.choose ((2 ^ n : ℤ) - (n ^ 2 : ℤ) + 1).toNat 3)

end

end A058837.P5810181189854258520

/-!
# A058838: a(n) = 1 + sum of the anti-divisors of n.

The programs for A058838, there is no canonical definition to state claims against.
-/

/-! ## A058838.P326003591722338465

`A066417(n+1)+1`
-/

namespace A058838.P326003591722338465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1) + 1

end

end A058838.P326003591722338465

/-! ## A058838.P14500910185382656294

`∑[n+1]-A378414(n+1)+1`
-/

namespace A058838.P14500910185382656294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A378414 (n + 1) + 1

end

end A058838.P14500910185382656294

/-! ## A058838.P7533566986482745441

`A253145(n)%A378414(n+1)+1`
-/

namespace A058838.P7533566986482745441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A378414 (n + 1)) + 1

end

end A058838.P7533566986482745441

/-! ## A058838.P12225980973533534494

`A000217(n+1)+1-A378414(n+1)`
-/

namespace A058838.P12225980973533534494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 1 - A378414 (n + 1)

end

end A058838.P12225980973533534494

/-! ## A058838.P3736381676745529022

`A000124(n+1)-A378414(n+1)`
-/

namespace A058838.P3736381676745529022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) - A378414 (n + 1)

end

end A058838.P3736381676745529022

/-!
# A058840: From Renyi's "beta expansion of 1 in base 3/2": sequence gives y(0), y(1), ...

The programs for A058840, the canonical program `A058840.P13313517790522568928` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058840 has offset 0).

The definition of A058840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058840.P13313517790522568928

`val(A079450(n+1), 3)^n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058840

/-- `val(A079450(n+1), 3)^n` -/
def P13313517790522568928.Spec : Prop :=
  ∀ n, (P13313517790522568928.a n : ℤ) = A058840 n

theorem P13313517790522568928.correct : P13313517790522568928.Spec := by
  intro n
  simp only [A058840]

end A058840

/-! ## A058840.P8098089745213484430

`A000007(n)+val(A079450(n+1), 3)`
-/

namespace A058840.P8098089745213484430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.valuation (A079450 (n + 1)).toNat 3 : ℤ)

end

end A058840.P8098089745213484430

namespace A058840

/-- `A000007(n)+val(A079450(n+1), 3)` -/
def P8098089745213484430.Spec : Prop :=
  ∀ n, P8098089745213484430.a n = A058840 n

end A058840

/-! ## A058840.P2549807121971534354

`val(A079448(n+1)*A079450(n+1), 3)`
-/

namespace A058840.P2549807121971534354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079448 (n + 1) * A079450 (n + 1)).toNat 3

end

end A058840.P2549807121971534354

namespace A058840

/-- `val(A079448(n+1)*A079450(n+1), 3)` -/
def P2549807121971534354.Spec : Prop :=
  ∀ n, (P2549807121971534354.a n : ℤ) = A058840 n

end A058840

/-! ## A058840.P12331088015704880666

`val(A079450(n+1)*A079470(n+1), 3)`
-/

namespace A058840.P12331088015704880666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079450 (n + 1) * A079470 (n + 1)).toNat 3

end

end A058840.P12331088015704880666

namespace A058840

/-- `val(A079450(n+1)*A079470(n+1), 3)` -/
def P12331088015704880666.Spec : Prop :=
  ∀ n, (P12331088015704880666.a n : ℤ) = A058840 n

end A058840

/-! ## A058840.P3107955233745896507

`A008683(gcd((n+1)², val(A079450(n+1), 3)))`
-/

namespace A058840.P3107955233745896507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd ((n + 1) ^ 2) (SequenceMachineLib.valuation (A079450 (n + 1)).toNat 3))

end

end A058840.P3107955233745896507

namespace A058840

/-- `A008683(gcd((n+1)², val(A079450(n+1), 3)))` -/
def P3107955233745896507.Spec : Prop :=
  ∀ n, P3107955233745896507.a n = A058840 n

end A058840

/-! ## A058840.P6606449907131612314

`val(A079450(n+1)*A079477(n+1), 3)`
-/

namespace A058840.P6606449907131612314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079450 (n + 1) * A079477 (n + 1)).toNat 3

end

end A058840.P6606449907131612314

namespace A058840

/-- `val(A079450(n+1)*A079477(n+1), 3)` -/
def P6606449907131612314.Spec : Prop :=
  ∀ n, (P6606449907131612314.a n : ℤ) = A058840 n

end A058840

/-! ## A058840.P11630550055020229369

`char[A077468(n+1)]+A008683(A077476(n+1))`
-/

namespace A058840.P11630550055020229369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A008683 (A077476 (n + 1)).toNat

end

end A058840.P11630550055020229369

namespace A058840

/-- `char[A077468(n+1)]+A008683(A077476(n+1))` -/
def P11630550055020229369.Spec : Prop :=
  ∀ n, P11630550055020229369.a n = A058840 n

end A058840

/-!
# A058841: From Renyi's "beta expansion of 1 in base 3/2": sequence gives lengths of runs of 0's in A058840.

The programs for A058841, the canonical program `A058841.P3157289429620972729` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058841 has offset 0).

The definition of A058841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058841.P3157289429620972729

`Δ[eq[1, A058840(n)]]-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058841

/-- `Δ[eq[1, A058840(n)]]-1` -/
def P3157289429620972729.Spec : Prop :=
  ∀ n, P3157289429620972729.a n = A058841 n

theorem P3157289429620972729.correct : P3157289429620972729.Spec := by
  intro n
  simp only [A058841]

end A058841

/-! ## A058841.P9005487628781867717

`A266279(Δ[eq[1, A058840(n)]])`
-/

namespace A058841.P9005487628781867717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058841.P9005487628781867717

namespace A058841

/-- `A266279(Δ[eq[1, A058840(n)]])` -/
def P9005487628781867717.Spec : Prop :=
  ∀ n, P9005487628781867717.a n = A058841 n

end A058841

/-! ## A058841.P12967440016166298465

`A323048(Δ[eq[1, A058840(n)]])`
-/

namespace A058841.P12967440016166298465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058841.P12967440016166298465

namespace A058841

/-- `A323048(Δ[eq[1, A058840(n)]])` -/
def P12967440016166298465.Spec : Prop :=
  ∀ n, P12967440016166298465.a n = A058841 n

end A058841

/-! ## A058841.P6343021186257748808

`A172275(Δ[A077468(A028310(n))])`
-/

namespace A058841.P6343021186257748808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172275 (f1 (n + 1) - f1 n).toNat

end

end A058841.P6343021186257748808

namespace A058841

/-- `A172275(Δ[A077468(A028310(n))])` -/
def P6343021186257748808.Spec : Prop :=
  ∀ n, P6343021186257748808.a n = A058841 n

end A058841

/-! ## A058841.P536730076053280455

`A057428(n)+Δ[A077468(A028310(n))]`
-/

namespace A058841.P536730076053280455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (f1 (n + 1) - f1 n)

end

end A058841.P536730076053280455

namespace A058841

/-- `A057428(n)+Δ[A077468(A028310(n))]` -/
def P536730076053280455.Spec : Prop :=
  ∀ n, P536730076053280455.a n = A058841 n

end A058841

/-! ## A058841.P3765977309685571222

`Δ[A077468(A028310(n))-(A004273(n)-n)]`
-/

namespace A058841.P3765977309685571222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A028310 n).toNat - (A004273 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058841.P3765977309685571222

namespace A058841

/-- `Δ[A077468(A028310(n))-(A004273(n)-n)]` -/
def P3765977309685571222.Spec : Prop :=
  ∀ n, P3765977309685571222.a n = A058841 n

end A058841

/-! ## A058841.P12966708822534761489

`Δ[A077468(A028310(n))-A000196(n²+1)]`
-/

namespace A058841.P12966708822534761489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A028310 n).toNat - A000196 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058841.P12966708822534761489

namespace A058841

/-- `Δ[A077468(A028310(n))-A000196(n²+1)]` -/
def P12966708822534761489.Spec : Prop :=
  ∀ n, P12966708822534761489.a n = A058841 n

end A058841

/-! ## A058841.P8271750037518811680

`Δ[A077468(A028310(n))]-A000040(n+1)%2`
-/

namespace A058841.P8271750037518811680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A000040 (n + 1)) 2

end

end A058841.P8271750037518811680

namespace A058841

/-- `Δ[A077468(A028310(n))]-A000040(n+1)%2` -/
def P8271750037518811680.Spec : Prop :=
  ∀ n, P8271750037518811680.a n = A058841 n

end A058841

/-! ## A058841.P11000224037645860684

`A077468(n+1)+A057428(n)-A077468(A028310(n))`
-/

namespace A058841.P11000224037645860684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (n + 1) + (A057428 n - A077468 (A028310 n).toNat)

end

end A058841.P11000224037645860684

namespace A058841

/-- `A077468(n+1)+A057428(n)-A077468(A028310(n))` -/
def P11000224037645860684.Spec : Prop :=
  ∀ n, P11000224037645860684.a n = A058841 n

end A058841

/-!
# A058842: From Renyi's "beta expansion of 1 in base 3/2": sequence gives a(1), a(2), ... where x(n) = a(n)/2^n, with 0 < a(n) < 2^n, a(1) = 1, a(n) = 3*a(n-1) modulo 2^n.

The programs for A058842, the canonical program `A058842.P11388618391434747023` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058842 has offset 1).

The definition of A058842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058842.P11388618391434747023

`(3*a(n-1))%(2^(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058842

/-- `(3*a(n-1))%(2^(n+1))` -/
def P11388618391434747023.Spec : Prop :=
  ∀ n, (P11388618391434747023.a n : ℤ) = A058842 (n + 1)

theorem P11388618391434747023.correct : P11388618391434747023.Spec := by
  intro n
  simp only [A058842, Nat.add_sub_cancel]

end A058842

/-! ## A058842.P5125273553706670437

`2^(n+2)-A079450(n+2)`
-/

namespace A058842.P5125273553706670437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A079450 (n + 2)

end

end A058842.P5125273553706670437

namespace A058842

/-- `2^(n+2)-A079450(n+2)` -/
def P5125273553706670437.Spec : Prop :=
  ∀ n, P5125273553706670437.a n = A058842 (n + 1)

end A058842

/-! ## A058842.P8228433159261013012

`and(3*a(n-1), ∑[A000079(n)])` with `a(0)=1`
-/

namespace A058842.P8228433159261013012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (3 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058842.P8228433159261013012

namespace A058842

/-- `and(3*a(n-1), ∑[A000079(n)])` -/
def P8228433159261013012.Spec : Prop :=
  ∀ n, P8228433159261013012.a n = A058842 (n + 1)

end A058842

/-! ## A058842.P5461794727705725240

`and(3*a(n-1), A000225(n+1))` with `a(0)=1`
-/

namespace A058842.P5461794727705725240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (3 * a (n - 1)) (A000225 (n + 1))

end

end A058842.P5461794727705725240

namespace A058842

/-- `and(3*a(n-1), A000225(n+1))` -/
def P5461794727705725240.Spec : Prop :=
  ∀ n, P5461794727705725240.a n = A058842 (n + 1)

end A058842

/-! ## A058842.P2222200158070506303

`and(3*a(n-1), A255047(n+1))` with `a(0)=1`
-/

namespace A058842.P2222200158070506303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (3 * a (n - 1)) (A255047 (n + 1))

end

end A058842.P2222200158070506303

namespace A058842

/-- `and(3*a(n-1), A255047(n+1))` -/
def P2222200158070506303.Spec : Prop :=
  ∀ n, P2222200158070506303.a n = A058842 (n + 1)

end A058842

/-! ## A058842.P12365618218734083634

`abs(3*a(n-1))%A000079(n+1)` with `a(0)=1`
-/

namespace A058842.P12365618218734083634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod |3 * a (n - 1)| (A000079 (n + 1))

end

end A058842.P12365618218734083634

namespace A058842

/-- `abs(3*a(n-1))%A000079(n+1)` -/
def P12365618218734083634.Spec : Prop :=
  ∀ n, P12365618218734083634.a n = A058842 (n + 1)

end A058842

/-!
# A058843: Triangle T(n,k) = C_n(k) where C_n(k) = number of k-colored labeled graphs with n nodes (n >= 1, 1<=k<=n).

The programs for A058843, there is no canonical definition to state claims against.
-/

/-! ## A058843.P8347654304579139926

`A000079(A112367(n))*A058875(n+1)`
-/

namespace A058843.P8347654304579139926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A112367 n).toNat * A058875 (n + 1)

end

end A058843.P8347654304579139926

/-! ## A058843.P4339858892542650802

`A006125(A002260(n+1))*A058875(n+1)`
-/

namespace A058843.P4339858892542650802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (A002260 (n + 1)).toNat * A058875 (n + 1)

end

end A058843.P4339858892542650802

/-! ## A058843.P6047349060593893359

`A011266(A002260(n+1))/A166350(n+1)*A058875(n+1)`
-/

namespace A058843.P6047349060593893359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011266 (A002260 (n + 1)).toNat : ℚ) / (A166350 (n + 1) : ℚ) * (A058875 (n + 1) : ℚ)

end

end A058843.P6047349060593893359

/-! ## A058843.P11112677591735763115

`A046860(n+1)/A166350(n+1)`
-/

namespace A058843.P11112677591735763115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046860 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A058843.P11112677591735763115

/-! ## A058843.P4983056458755328231

`A046860(n+1)/A002260(n+1)!`
-/

namespace A058843.P4983056458755328231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046860 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A058843.P4983056458755328231

/-!
# A058844: Number of ways of placing n labeled balls into 4 indistinguishable boxes with at least 2 balls in each box.

The programs for A058844, there is no canonical definition to state claims against.
-/

/-! ## A058844.P8002661709193752144

`A008299(A002620(n+9)-(n+3))`
-/

namespace A058844.P8002661709193752144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (A002620 (n + 9) - (n + 3 : ℤ)).toNat

end

end A058844.P8002661709193752144

/-! ## A058844.P18189600609189265464

`record[A008299(n+17)/A008299(n+14)]`
-/

namespace A058844.P18189600609189265464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008299 (n + 17) : ℚ) / (A008299 (n + 14) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058844.P18189600609189265464

/-! ## A058844.P8615925549266312199

`A134991(A052905(n)+9)`
-/

namespace A058844.P8615925549266312199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A052905 n + 9).toNat

end

end A058844.P8615925549266312199

/-! ## A058844.P5998947772273056087

`A134991(A167614(n+2)+1)`
-/

namespace A058844.P5998947772273056087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A167614 (n + 2) + 1).toNat

end

end A058844.P5998947772273056087

/-! ## A058844.P10947387536290690852

`A134991(A000096(n+2)+5)`
-/

namespace A058844.P10947387536290690852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A000096 (n + 2) + 5).toNat

end

end A058844.P10947387536290690852

/-!
# A058845: Numbers n such that the sum of the first n odd primes is palindromic.

The programs for A058845, there is no canonical definition to state claims against.
-/

/-! ## A058845.P4475569609819829238

`A000720(A058846(n+1)-1)`
-/

namespace A058845.P4475569609819829238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A058846 (n + 1) - 1).toNat

end

end A058845.P4475569609819829238

/-! ## A058845.P6939346052428546278

`A000720(xor(1, A058846(n+1)))`
-/

namespace A058845.P6939346052428546278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A058846 (n + 1))).toNat

end

end A058845.P6939346052428546278

/-! ## A058845.P9578587509293547319

`A316524(A058846(n+1))-A260340(n)`
-/

namespace A058845.P9578587509293547319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A058846 (n + 1)).toNat - A260340 n

end

end A058845.P9578587509293547319

/-!
# A058846: Numbers k such that the sum of odd primes up to k is palindromic.

The programs for A058846, there is no canonical definition to state claims against.
-/

/-! ## A058846.P651968677532411577

`A065091(A058845(n+1))`
-/

namespace A058846.P651968677532411577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A058845 (n + 1)).toNat

end

end A058846.P651968677532411577

/-! ## A058846.P12063386096500575337

`A000040(A058845(n+1)+1)`
-/

namespace A058846.P12063386096500575337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A058845 (n + 1) + 1).toNat

end

end A058846.P12063386096500575337

/-! ## A058846.P2363068616899173188

`A006005(A058845(n+1)+1)`
-/

namespace A058846.P2363068616899173188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A058845 (n + 1) + 1).toNat

end

end A058846.P2363068616899173188

/-!
# A058847: Palindromes that are the sum of consecutive initial odd primes.

The programs for A058847, there is no canonical definition to state claims against.
-/

/-! ## A058847.P3588816610260460272

`A071148(A058845(n+1))`
-/

namespace A058847.P3588816610260460272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (A058845 (n + 1)).toNat

end

end A058847.P3588816610260460272

/-! ## A058847.P2996281896696558277

`A343859(A058845(n+1))+A242784(n)`
-/

namespace A058847.P2996281896696558277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343859 (A058845 (n + 1)).toNat + A242784 n

end

end A058847.P2996281896696558277

/-! ## A058847.P9250769897963476741

`A343859(A058845(n+1))+A195839(n+1)`
-/

namespace A058847.P9250769897963476741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343859 (A058845 (n + 1)).toNat + A195839 (n + 1)

end

end A058847.P9250769897963476741

/-!
# A058848: Numbers k such that the sum of the first k odd composites is palindromic.

The programs for A058848, there is no canonical definition to state claims against.
-/

/-! ## A058848.P15673946381547985976

`A346002(A093210(n))+A345985(3*n+5)`
-/

namespace A058848.P15673946381547985976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346002 (A093210 n).toNat + A345985 (3 * n + 5)

end

end A058848.P15673946381547985976

/-!
# A058849: Sum of odd composites up to n is palindromic.

The programs for A058849, there is no canonical definition to state claims against.
-/

/-! ## A058849.P10515799419842441138

`A071904(A058848(n+1))`
-/

namespace A058849.P10515799419842441138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (A058848 (n + 1)).toNat

end

end A058849.P10515799419842441138

/-! ## A058849.P3770734513545799065

`A014076(A058848(n+1)+1)`
-/

namespace A058849.P3770734513545799065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (A058848 (n + 1) + 1).toNat

end

end A058849.P3770734513545799065

/-! ## A058849.P2588369140332509158

`A068780(2*A058848(n+1))`
-/

namespace A058849.P2588369140332509158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (2 * A058848 (n + 1)).toNat

end

end A058849.P2588369140332509158

/-!
# A058850: Palindromes that are the sum of consecutive initial odd composites.

The programs for A058850, there is no canonical definition to state claims against.
-/

/-! ## A058850.P8459157925816634722

`A262044(A058848(n+1))`
-/

namespace A058850.P8459157925816634722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262044 (A058848 (n + 1)).toNat

end

end A058850.P8459157925816634722

/-! ## A058850.P5189974838387413648

`∩[A002113(n+1), A262044(n+1)]`
-/

namespace A058850.P5189974838387413648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058850.P5189974838387413648

/-! ## A058850.P4164398983401334831

`∩[A002113(A002808(n+1)), A163631(n+2)-1]`
-/

namespace A058850.P4164398983401334831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A002808 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058850.P4164398983401334831

/-! ## A058850.P7955736108992111546

`∩[A002113(A018252(n+1)), A163631(n+2)-1]`
-/

namespace A058850.P7955736108992111546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A018252 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058850.P7955736108992111546

/-!
# A058851: Sum of even composites up to n is palindromic.

The programs for A058851, there is no canonical definition to state claims against.
-/

/-! ## A058851.P14356411344810518989

`2*(1+A028553(n+2))`
-/

namespace A058851.P14356411344810518989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A028553 (n + 2))

end

end A058851.P14356411344810518989

/-! ## A058851.P9053592122805517670

`A103517(A028553(n+2))`
-/

namespace A058851.P9053592122805517670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A028553 (n + 2)).toNat

end

end A058851.P9053592122805517670

/-! ## A058851.P13430026393728095089

`A004277(A028553(n+2)+1)`
-/

namespace A058851.P13430026393728095089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028553 (n + 2) + 1).toNat

end

end A058851.P13430026393728095089

/-! ## A058851.P18051403286528457680

`A158705(A028553(n+2)+2)`
-/

namespace A058851.P18051403286528457680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158705 (A028553 (n + 2) + 2).toNat

end

end A058851.P18051403286528457680

/-!
# A058852: Palindromes n such that n and n^2 have same digit sum.

The programs for A058852, there is no canonical definition to state claims against.
-/

/-! ## A058852.P10299921102824544193

`∩[A002113(n+1), A058369(n+1)]`
-/

namespace A058852.P10299921102824544193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058852.P10299921102824544193

/-! ## A058852.P10331125423060558044

`filter[A058369(n+1), A136522(#)]`
-/

namespace A058852.P10331125423060558044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A058852.P10331125423060558044

/-!
# A058853: Primes p such that x^43 = 2 has a solution mod p.

The programs for A058853, there is no canonical definition to state claims against.
-/

/-! ## A058853.P11828767172792092507

`eq[A003415(n), A326028(A046346(2*n+3))]`
-/

namespace A058853.P11828767172792092507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326028 (A046346 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058853.P11828767172792092507

/-! ## A058853.P17386710531195273074

`A000040(comp[A308645(n)-A141020(3*(n+1))])`
-/

namespace A058853.P17386710531195273074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308645 n - A141020 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A058853.P17386710531195273074

/-! ## A058853.P15694204618521082714

`eq[A003415(A301987(3*n+2)), A003415(n)]`
-/

namespace A058853.P15694204618521082714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A301987 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058853.P15694204618521082714

/-! ## A058853.P5248982287406527436

`eq[A032741(A301987(3*n+2)), A032741(n)]`
-/

namespace A058853.P5248982287406527436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A301987 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058853.P5248982287406527436

/-! ## A058853.P12333961578288743110

`A000040(∑[A365167(2*n+5)!])`
-/

namespace A058853.P12333961578288743110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A365167 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058853.P12333961578288743110

/-! ## A058853.P9226794964322100986

`record[A000040(n+1)*A237048(A299203(2*n+3)+1)]`
-/

namespace A058853.P9226794964322100986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A237048 (A299203 (2 * n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058853.P9226794964322100986

/-! ## A058853.P9634343779071090089

`eq[A003415(n), A261350(A070672(n+1))]`
-/

namespace A058853.P9634343779071090089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261350 (A070672 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058853.P9634343779071090089

/-!
# A058855: Number of 6-bead necklaces where each bead is an unlabeled rooted tree, by total number of nodes.

The programs for A058855, there is no canonical definition to state claims against.
-/

/-! ## A058855.P4753951432132542237

`A100196(2*A149407(n))`
-/

namespace A058855.P4753951432132542237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * A149407 n).toNat

end

end A058855.P4753951432132542237

/-! ## A058855.P17897757139653598213

`A026819(A150903(n)+1)`
-/

namespace A058855.P17897757139653598213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A150903 n + 1).toNat

end

end A058855.P17897757139653598213

/-! ## A058855.P1973798001738026420

`A046155(A150903(n)+1)`
-/

namespace A058855.P1973798001738026420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A150903 n + 1).toNat

end

end A058855.P1973798001738026420

/-!
# A058859: Number of 1-connected rooted cubic planar maps with n faces.

The programs for A058859, there is no canonical definition to state claims against.
-/

/-! ## A058859.P15132351317160741233

`A268060(A277756(n))`
-/

namespace A058859.P15132351317160741233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268060 (A277756 n).toNat

end

end A058859.P15132351317160741233

/-!
# A058860: Number of 2-connected rooted cubic planar maps with n faces.

The programs for A058860, there is no canonical definition to state claims against.
-/

/-! ## A058860.P4402031609453430939

`A008620(∑[∑[∏[8-4/(n+1)]/4]])`
-/

namespace A058860.P4402031609453430939
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 - 4 / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f3 j) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A058860.P4402031609453430939

/-!
# A058861: Number of 3-connected rooted cubic planar maps with n faces and girth at least 4.

The programs for A058861, there is no canonical definition to state claims against.
-/

/-! ## A058861.P18310257600313095938

`A105519(∑[∑[A007863(n)+1]])`
-/

namespace A058861.P18310257600313095938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007863 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058861.P18310257600313095938

/-! ## A058861.P7992729413628945052

`A066339(A333631(n)+A008982(n))`
-/

namespace A058861.P7992729413628945052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A333631 n + A008982 n).toNat

end

end A058861.P7992729413628945052

/-! ## A058861.P3680978064998281246

`A023193(A000255(n))-A007318(n)`
-/

namespace A058861.P3680978064998281246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A000255 n).toNat - A007318 n

end

end A058861.P3680978064998281246

/-!
# A058862: Number of chordal labeled graphs (connected or not) with n nodes.

The programs for A058862, there is no canonical definition to state claims against.
-/

/-! ## A058862.P8098636728390896756

`A004728(A118891(∑[n]))`
-/

namespace A058862.P8098636728390896756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 (A118891 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A058862.P8098636728390896756

/-!
# A058863: Number of connected labeled chordal graphs on n nodes with no induced path P_4; also the number of labeled trees with each vertex replaced by a clique.

The programs for A058863, there is no canonical definition to state claims against.
-/

/-! ## A058863.P10891993849444958988

`abs(A383985(n+1))`
-/

namespace A058863.P10891993849444958988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A383985 (n + 1)|

end

end A058863.P10891993849444958988

/-! ## A058863.P1655803094962340863

`A033999(n)*A383985(n+1)`
-/

namespace A058863.P1655803094962340863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A383985 (n + 1)

end

end A058863.P1655803094962340863

/-! ## A058863.P560096472383256745

`gcd(A000038(n), A383985(n+1))`
-/

namespace A058863.P560096472383256745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A383985 (n + 1))

end

end A058863.P560096472383256745

/-! ## A058863.P10507612705171289351

`A350528(∑[n]+1)`
-/

namespace A058863.P10507612705171289351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350528 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058863.P10507612705171289351

/-! ## A058863.P8686622380050572734

`∑{digits}[n, A350528(A000124(#))]`
-/

namespace A058863.P8686622380050572734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A350528 (A000124 x).toNat).sum

end

end A058863.P8686622380050572734

/-!
# A058864: Number of labeled chordal graphs (connected or not) on n nodes with no induced path P_4.

The programs for A058864, there is no canonical definition to state claims against.
-/

/-! ## A058864.P9531019291545104874

`A003485(A308354(n+1)+floor(n/4))`
-/

namespace A058864.P9531019291545104874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A308354 (n + 1) + ⌊(n : ℚ) / 4⌋).toNat

end

end A058864.P9531019291545104874

/-! ## A058864.P2316067927369788213

`A000557(n)-A165052(A000262(n))`
-/

namespace A058864.P2316067927369788213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n - A165052 (A000262 n).toNat

end

end A058864.P2316067927369788213

/-!
# A058866: Number of 2-trees rooted at an edge.

The programs for A058866, there is no canonical definition to state claims against.
-/

/-! ## A058866.P11296882908823976712

`A063689(n+2)`
-/

namespace A058866.P11296882908823976712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063689 (n + 2)

end

end A058866.P11296882908823976712

/-! ## A058866.P969964569440287222

`A058870(n+1)+A063687(n+1)`
-/

namespace A058866.P969964569440287222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058870 (n + 1) + A063687 (n + 1)

end

end A058866.P969964569440287222

/-! ## A058866.P6473794299022109983

`A005750(n+2)-A058870(n+1)`
-/

namespace A058866.P6473794299022109983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005750 (n + 2) - A058870 (n + 1)

end

end A058866.P6473794299022109983

/-! ## A058866.P53537142193133344

`A007748(2*n+3)-A058870(n+1)`
-/

namespace A058866.P53537142193133344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007748 (2 * n + 3) - A058870 (n + 1)

end

end A058866.P53537142193133344

/-!
# A058867: Equidistant lonely primes. Each prime is the same distance (gap) from the preceding prime and the next prime. These distances are maximal: each distance is larger than all such previous distances.

The programs for A058867, there is no canonical definition to state claims against.
-/

/-! ## A058867.P14801186188190277770

`A103709(A058868(n)/2)`
-/

namespace A058867.P14801186188190277770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103709 (SequenceMachineLib.roundAway ((A058868 n : ℚ) / 2)).toNat

end

end A058867.P14801186188190277770

/-! ## A058867.P11851500931455120416

`A103709(∩[A069087(n+1), A182942(n+1)]/2)`
-/

namespace A058867.P11851500931455120416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182942 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103709 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2)).toNat

end

end A058867.P11851500931455120416

/-! ## A058867.P11120601960488597971

`A054342(lt[A317532(2*(n+2)), A136685(n+1)])`
-/

namespace A058867.P11120601960488597971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317532 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054342 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A058867.P11120601960488597971

/-! ## A058867.P18380537638678738685

`A103709(∩[A194712(n+1), A194463(n+2)]/2)`
-/

namespace A058867.P18380537638678738685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194463 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103709 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2)).toNat

end

end A058867.P18380537638678738685

/-! ## A058867.P16087993604564128658

`A054342(∑[(A113824(n+1)%3)!])`
-/

namespace A058867.P16087993604564128658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A113824 (n + 1)) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054342 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058867.P16087993604564128658

/-!
# A058868: Maximal distances of equidistant lonely primes shown in A058867.

The programs for A058868, there is no canonical definition to state claims against.
-/

/-! ## A058868.P1773550341904132241

`∩[A069087(n+1), A182942(n+1)]`
-/

namespace A058868.P1773550341904132241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058868.P1773550341904132241

/-! ## A058868.P13069464259790548754

`∑[A246631(2^A063952(n+1))]`
-/

namespace A058868.P13069464259790548754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A063952 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058868.P13069464259790548754

/-! ## A058868.P11258403891967515665

`∑[A278541(∑[A026753(n)])]`
-/

namespace A058868.P11258403891967515665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058868.P11258403891967515665

/-! ## A058868.P14978410520441373410

`∩[A194712(n+1), A194463(n+2)]`
-/

namespace A058868.P14978410520441373410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194463 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058868.P14978410520441373410

/-! ## A058868.P11761114497632168337

`record[gcd(A029578(3*n+4), A222155(n+1))]`
-/

namespace A058868.P11761114497632168337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029578 (3 * n + 4)) (A222155 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058868.P11761114497632168337

/-!
# A058870: Number of 2-trees rooted at an asymmetric edge.

The programs for A058870, there is no canonical definition to state claims against.
-/

/-! ## A058870.P255002861540270548

`A063689(n+2)-A063687(n+1)`
-/

namespace A058870.P255002861540270548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063689 (n + 2) - A063687 (n + 1)

end

end A058870.P255002861540270548

/-! ## A058870.P15799043633722420554

`A005750(n+2)-A063689(n+2)`
-/

namespace A058870.P15799043633722420554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005750 (n + 2) - A063689 (n + 2)

end

end A058870.P15799043633722420554

/-! ## A058870.P6147461526468182127

`A058866(n+1)-A063687(n+1)`
-/

namespace A058870.P6147461526468182127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058866 (n + 1) - A063687 (n + 1)

end

end A058870.P6147461526468182127

/-! ## A058870.P15938068399402724456

`A005750(n+2)-A058866(n+1)`
-/

namespace A058870.P15938068399402724456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005750 (n + 2) - A058866 (n + 1)

end

end A058870.P15938068399402724456

/-! ## A058870.P16213923762211838663

`A007748(2*n+3)-A058866(n+1)`
-/

namespace A058870.P16213923762211838663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007748 (2 * n + 3) - A058866 (n + 1)

end

end A058870.P16213923762211838663

/-!
# A058872: Number of 2-colored labeled graphs with n nodes.

The programs for A058872, there is no canonical definition to state claims against.
-/

/-! ## A058872.P260672211762651227

`A000684(n+1)-1`
-/

namespace A058872.P260672211762651227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000684 (n + 1) - 1

end

end A058872.P260672211762651227

/-! ## A058872.P8774708931162236152

`2*A000683(n+1)`
-/

namespace A058872.P8774708931162236152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000683 (n + 1)

end

end A058872.P8774708931162236152

/-! ## A058872.P8492433673461700808

`A213441(n+1)/2`
-/

namespace A058872.P8492433673461700808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213441 (n + 1) : ℚ) / 2

end

end A058872.P8492433673461700808

/-! ## A058872.P769412652289186028

`A047863(n+1)/2-1`
-/

namespace A058872.P769412652289186028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047863 (n + 1) : ℚ) / 2 - 1

end

end A058872.P769412652289186028

/-! ## A058872.P1515996426432627112

`Δ[∑[A047863(n)]/2]-1`
-/

namespace A058872.P1515996426432627112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047863 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A058872.P1515996426432627112

/-!
# A058873: Number of 3-colored labeled graphs with n nodes.

The programs for A058873, there is no canonical definition to state claims against.
-/

/-! ## A058873.P9571177884662148791

`A213442(n+1)/6`
-/

namespace A058873.P9571177884662148791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213442 (n + 1) : ℚ) / 6

end

end A058873.P9571177884662148791

/-! ## A058873.P16212220869377404628

`8*A006201(n+1)`
-/

namespace A058873.P16212220869377404628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A006201 (n + 1)

end

end A058873.P16212220869377404628

/-! ## A058873.P15200164772875059360

`ceil(A000685(n+1)/2-A000684(n+1))`
-/

namespace A058873.P15200164772875059360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000685 (n + 1) : ℚ) / 2 - (A000684 (n + 1) : ℚ)⌉

end

end A058873.P15200164772875059360

/-!
# A058874: Number of 4-colored labeled graphs with n nodes.

The programs for A058874, there is no canonical definition to state claims against.
-/

/-! ## A058874.P17602967004335657374

`A224068(n+1)/24`
-/

namespace A058874.P17602967004335657374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224068 (n + 1) : ℚ) / 24

end

end A058874.P17602967004335657374

/-! ## A058874.P1638554106185581773

`64*A006202(n+1)`
-/

namespace A058874.P1638554106185581773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A006202 (n + 1)

end

end A058874.P1638554106185581773

/-!
# A058875: Triangle T(n,k) = C_n(k)/2^(k*(k-1)/2) where C_n(k) = number of k-colored labeled graphs with n nodes (n >= 1, 1 <= k <= n).

The programs for A058875, there is no canonical definition to state claims against.
-/

/-! ## A058875.P17185381835711287515

`A058843(n+1)/A000079(A112367(n))`
-/

namespace A058875.P17185381835711287515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058843 (n + 1) : ℚ) / (A000079 (A112367 n).toNat : ℚ)

end

end A058875.P17185381835711287515

/-! ## A058875.P3011086266369779873

`A058843(n+1)/A006125(A002260(n+1))`
-/

namespace A058875.P3011086266369779873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058843 (n + 1) : ℚ) / (A006125 (A002260 (n + 1)).toNat : ℚ)

end

end A058875.P3011086266369779873

/-! ## A058875.P12846919897945370625

`A058843(n+1)/A011266(A002260(n+1))*A166350(n+1)`
-/

namespace A058875.P12846919897945370625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058843 (n + 1) : ℚ) / (A011266 (A002260 (n + 1)).toNat : ℚ) * (A166350 (n + 1) : ℚ)

end

end A058875.P12846919897945370625

/-! ## A058875.P10770954879959115026

`A046860(n+1)/A011266(A002260(n+1))`
-/

namespace A058875.P10770954879959115026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046860 (n + 1) : ℚ) / (A011266 (A002260 (n + 1)).toNat : ℚ)

end

end A058875.P10770954879959115026

/-! ## A058875.P9297748883870793788

`A396659(A228899(n))`
-/

namespace A058875.P9297748883870793788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396659 (A228899 n).toNat

end

end A058875.P9297748883870793788

/-!
# A058876: Triangle read by rows: T(n,k) = number of labeled acyclic digraphs with n nodes, containing exactly n+1-k points of in-degree zero (n >= 1, 1<=k<=n).

The programs for A058876, there is no canonical definition to state claims against.
-/

/-! ## A058876.P12474879512893902948

`A361718(A099375(n)+1+n)`
-/

namespace A058876.P12474879512893902948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361718 (A099375 n + 1 + (n : ℤ)).toNat

end

end A058876.P12474879512893902948

/-!
# A058877: Number of labeled acyclic digraphs with n nodes containing exactly n-1 points of in-degree zero.

The programs for A058877, the canonical program `A058877.P1034710005829432116` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058877 has offset 1).

The definition of A058877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058877.P1227274421615768529

`(n+1)*(2^n-1)`
-/

namespace A058877.P1227274421615768529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 ^ n : ℤ) - 1)

end

end A058877.P1227274421615768529

namespace A058877

/-- `(n+1)*(2^n-1)` -/
def P1227274421615768529.Spec : Prop :=
  ∀ n, P1227274421615768529.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P1034710005829432116

`A048493(n)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058877

/-- `A048493(n)-1` -/
def P1034710005829432116.Spec : Prop :=
  ∀ n, P1034710005829432116.a n = A058877 (n + 1)

theorem P1034710005829432116.correct : P1034710005829432116.Spec := by
  intro n
  simp only [A058877, Nat.add_sub_cancel]

end A058877

/-! ## A058877.P12871810706588843111

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=28`
-/

namespace A058877.P12871810706588843111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 9, 28] fun n a =>
  6 * a (n - 1) - 13 * a (n - 2) + 12 * a (n - 3) - 4 * a (n - 4)

end

end A058877.P12871810706588843111

namespace A058877

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P12871810706588843111.Spec : Prop :=
  ∀ n, P12871810706588843111.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P8301991200383070490

`floor((n+1)*∑[2*a(n-1)])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058877.P8301991200383070490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058877.P8301991200383070490

namespace A058877

/-- `floor((n+1)*∑[2*a(n-1)])` -/
def P8301991200383070490.Spec : Prop :=
  ∀ n, (P8301991200383070490.a n : ℤ) = A058877 (n + 1)

end A058877

/-! ## A058877.P2637558851905161737

`(2/n+2)*a(n-1)+1+n` with `a(0)=0`
-/

namespace A058877.P2637558851905161737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 / (n : ℚ) + 2) * a (n - 1) + 1 + (n : ℚ)

end

end A058877.P2637558851905161737

namespace A058877

/-- `(2/n+2)*a(n-1)+1+n` -/
def P2637558851905161737.Spec : Prop :=
  ∀ n, P2637558851905161737.a n = (A058877 (n + 1) : ℚ)

end A058877

/-! ## A058877.P2514890323763600962

`∑[4*(a(n-1)-a(n-2))-1]` with `a(0)=0, a(1)=2`
-/

namespace A058877.P2514890323763600962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058877.P2514890323763600962

namespace A058877

/-- `∑[4*(a(n-1)-a(n-2))-1]` -/
def P2514890323763600962.Spec : Prop :=
  ∀ n, P2514890323763600962.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P12364437885753616545

`(n+1)*Δ[2*a(n-1)]-(n+1)` with `a(0)=1`
-/

namespace A058877.P12364437885753616545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n + 1 : ℤ)

end

end A058877.P12364437885753616545

namespace A058877

/-- `(n+1)*Δ[2*a(n-1)]-(n+1)` -/
def P12364437885753616545.Spec : Prop :=
  ∀ n, P12364437885753616545.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P7929329160096662523

`3-(4*(a(n-2)-a(n-1))+n)` with `a(0)=0, a(1)=2`
-/

namespace A058877.P7929329160096662523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 - (4 * (a (n - 2) - a (n - 1)) + (n : ℤ))

end

end A058877.P7929329160096662523

namespace A058877

/-- `3-(4*(a(n-2)-a(n-1))+n)` -/
def P7929329160096662523.Spec : Prop :=
  ∀ n, P7929329160096662523.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P14929469325785795790

`3-4*(a(n-2)-a(n-1))-n` with `a(0)=0, a(1)=2`
-/

namespace A058877.P14929469325785795790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 - 4 * (a (n - 2) - a (n - 1)) - (n : ℤ)

end

end A058877.P14929469325785795790

namespace A058877

/-- `3-4*(a(n-2)-a(n-1))-n` -/
def P14929469325785795790.Spec : Prop :=
  ∀ n, P14929469325785795790.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P10879192495655617603

`A087323(n)-n`
-/

namespace A058877.P10879192495655617603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n - (n : ℤ)

end

end A058877.P10879192495655617603

namespace A058877

/-- `A087323(n)-n` -/
def P10879192495655617603.Spec : Prop :=
  ∀ n, P10879192495655617603.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P9234816216497182588

`∑[A001792(n)-1]`
-/

namespace A058877.P9234816216497182588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058877.P9234816216497182588

namespace A058877

/-- `∑[A001792(n)-1]` -/
def P9234816216497182588.Spec : Prop :=
  ∀ n, P9234816216497182588.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P3816200946732989782

`A092442(n)+n²`
-/

namespace A058877.P3816200946732989782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092442 n + (n ^ 2 : ℤ)

end

end A058877.P3816200946732989782

namespace A058877

/-- `A092442(n)+n²` -/
def P3816200946732989782.Spec : Prop :=
  ∀ n, P3816200946732989782.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P17873863756436912021

`∑[∑[A045623(n)]-1]`
-/

namespace A058877.P17873863756436912021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058877.P17873863756436912021

namespace A058877

/-- `∑[∑[A045623(n)]-1]` -/
def P17873863756436912021.Spec : Prop :=
  ∀ n, P17873863756436912021.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P7421857450576925405

`∑[Δ[A001787(n)]-1]`
-/

namespace A058877.P7421857450576925405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058877.P7421857450576925405

namespace A058877

/-- `∑[Δ[A001787(n)]-1]` -/
def P7421857450576925405.Spec : Prop :=
  ∀ n, P7421857450576925405.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P15320341434597859147

`∑[Δ[A005183(n)]-1]`
-/

namespace A058877.P15320341434597859147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058877.P15320341434597859147

namespace A058877

/-- `∑[Δ[A005183(n)]-1]` -/
def P15320341434597859147.Spec : Prop :=
  ∀ n, P15320341434597859147.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P2350189851053565753

`∑[A049610(n+2)-1]`
-/

namespace A058877.P2350189851053565753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058877.P2350189851053565753

namespace A058877

/-- `∑[A049610(n+2)-1]` -/
def P2350189851053565753.Spec : Prop :=
  ∀ n, P2350189851053565753.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P17869711846011890850

`∑[A132750(n)-2]+1`
-/

namespace A058877.P17869711846011890850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132750 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058877.P17869711846011890850

namespace A058877

/-- `∑[A132750(n)-2]+1` -/
def P17869711846011890850.Spec : Prop :=
  ∀ n, P17869711846011890850.a n = A058877 (n + 1)

end A058877

/-! ## A058877.P9247809127066955888

`∑[A211227(2*n)-1]`
-/

namespace A058877.P9247809127066955888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211227 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058877.P9247809127066955888

namespace A058877

/-- `∑[A211227(2*n)-1]` -/
def P9247809127066955888.Spec : Prop :=
  ∀ n, P9247809127066955888.a n = A058877 (n + 1)

end A058877

/-!
# A058878: Triangle T(n,k) is the number of labeled graphs of even degree with n nodes and k edges (n >= 0, 0 <= k <= n(n-1)/2).

The programs for A058878, there is no canonical definition to state claims against.
-/

/-! ## A058878.P8990478048273507617

`A369928(n)%A322826(A004809(n+1))`
-/

namespace A058878.P8990478048273507617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369928 n) (A322826 (A004809 (n + 1)).toNat)

end

end A058878.P8990478048273507617

/-! ## A058878.P15813678456774458012

`A165359(A274741(n))-A135136(n)`
-/

namespace A058878.P15813678456774458012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165359 (A274741 n).toNat - A135136 n

end

end A058878.P15813678456774458012

/-!
# A058884: Partial sums of the partition function (A000041), with the last term subtracted. Also the sum of the row of the character table for S_n corresponding to the partition n-1,1 for n>1. Also the sum over all partitions lambda of n of one less than the number of 1's in lambda.

The programs for A058884, there is no canonical definition to state claims against.
-/

/-! ## A058884.P17381608543273207536

`∑[2*A182712(n)]-A087787(n)`
-/

namespace A058884.P17381608543273207536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087787 n

end

end A058884.P17381608543273207536

/-! ## A058884.P3481546304553186457

`∑[∑[A085811(n+1)]]-A002865(n)`
-/

namespace A058884.P3481546304553186457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002865 n

end

end A058884.P3481546304553186457

/-! ## A058884.P5587775948395226030

`∑[A000041(n)-A002865(n)-A002865(n)]`
-/

namespace A058884.P5587775948395226030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A002865 n - A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058884.P5587775948395226030

/-! ## A058884.P8516507296560692222

`∑[∑[A085811(n+2)]]-A000041(n)`
-/

namespace A058884.P8516507296560692222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000041 n

end

end A058884.P8516507296560692222

/-! ## A058884.P5836248162050618027

`A120452(n+1)-(A002865(n)+A000041(n))`
-/

namespace A058884.P5836248162050618027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (n + 1) - (A002865 n + A000041 n)

end

end A058884.P5836248162050618027

/-! ## A058884.P11466867665673121358

`A000070(n)-A139582(n)`
-/

namespace A058884.P11466867665673121358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A139582 n

end

end A058884.P11466867665673121358

/-! ## A058884.P3949987922503340097

`∑[A000041(n)]-A139582(n)`
-/

namespace A058884.P3949987922503340097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P3949987922503340097

/-! ## A058884.P8909367943863053775

`A000070(n)-2*A000041(n)`
-/

namespace A058884.P8909367943863053775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - 2 * A000041 n

end

end A058884.P8909367943863053775

/-! ## A058884.P3722644360007561067

`∑[∑[A002865(n)]]-A139582(n)`
-/

namespace A058884.P3722644360007561067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P3722644360007561067

/-! ## A058884.P16154984726354138159

`∑[A000065(n)+1]-A139582(n)`
-/

namespace A058884.P16154984726354138159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P16154984726354138159

/-! ## A058884.P11033817253114914366

`A000070(n)-∑[2*A002865(n)]`
-/

namespace A058884.P11033817253114914366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058884.P11033817253114914366

/-! ## A058884.P81778496954473841

`∑[A000041(n)]-A299474(n)/2`
-/

namespace A058884.P81778496954473841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A299474 n : ℚ) / 2

end

end A058884.P81778496954473841

/-! ## A058884.P15006443086755741369

`∑[A052810(n)]-(A139582(n)+n)`
-/

namespace A058884.P15006443086755741369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A139582 n + (n : ℤ))

end

end A058884.P15006443086755741369

/-! ## A058884.P14830322718262355385

`∑[A133041(n)-n]-A139582(n)`
-/

namespace A058884.P14830322718262355385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P14830322718262355385

/-! ## A058884.P13330369593701887804

`A216053(n+1)-(A139582(n)+1)`
-/

namespace A058884.P13330369593701887804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - (A139582 n + 1)

end

end A058884.P13330369593701887804

/-! ## A058884.P16629650708360552515

`∑[∑[A085811(n+3)]]-A139582(n)`
-/

namespace A058884.P16629650708360552515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P16629650708360552515

/-! ## A058884.P4611126390095299482

`∑[∑{d}[n+1, A133732(#)]]-A139582(n)`
-/

namespace A058884.P4611126390095299482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A133732 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P4611126390095299482

/-! ## A058884.P16707156794778802441

`∑[A018783(n)+A000837(n)]-A139582(n)`
-/

namespace A058884.P16707156794778802441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P16707156794778802441

/-! ## A058884.P12843322759348488149

`∑[A039900(n)+A003106(n)]-A139582(n)`
-/

namespace A058884.P12843322759348488149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A003106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P12843322759348488149

/-! ## A058884.P12861725911068740086

`∑[A047967(n)+A000009(n)]-A139582(n)`
-/

namespace A058884.P12861725911068740086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A058884.P12861725911068740086

/-!
# A058886: Sum of the row of the character table of S_n corresponding to the partition 2,1^{n-2}.

The programs for A058886, there is no canonical definition to state claims against.
-/

/-! ## A058886.P12625753957125291848

`A304631(n+1)-A000700(n+2)`
-/

namespace A058886.P12625753957125291848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304631 (n + 1) - A000700 (n + 2)

end

end A058886.P12625753957125291848

/-! ## A058886.P7093643425851965349

`∑[A000700(n)]-Δ[A000700(n+1)]`
-/

namespace A058886.P7093643425851965349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A058886.P7093643425851965349

/-! ## A058886.P11727702768786963112

`A000700(n+1)+∑[A000700(n)]-A000700(n+2)`
-/

namespace A058886.P11727702768786963112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A000700 (n + 2))

end

end A058886.P11727702768786963112

/-! ## A058886.P16638852104978926213

`A304631(n)-Δ[Δ[A304631(n)]]`
-/

namespace A058886.P16638852104978926213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304631 n - (f1 (n + 1) - f1 n)

end

end A058886.P16638852104978926213

/-! ## A058886.P13318148844089589795

`A218906(n+1)+1-Δ[A218906(n+1)]`
-/

namespace A058886.P13318148844089589795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218906 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A058886.P13318148844089589795

/-! ## A058886.P9393975548992929436

`A218906(n+1)+A304631(n+1)-A218906(n+2)`
-/

namespace A058886.P9393975548992929436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218906 (n + 1) + (A304631 (n + 1) - A218906 (n + 2))

end

end A058886.P9393975548992929436

/-! ## A058886.P2835305352937198659

`A005843(A304631(n+1))-A304631(n+2)`
-/

namespace A058886.P2835305352937198659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A304631 (n + 1)).toNat - A304631 (n + 2)

end

end A058886.P2835305352937198659

/-!
# A058887: Smallest prime p such that (2^n)*p is a nontotient number.

The programs for A058887, there is no canonical definition to state claims against.
-/

/-! ## A058887.P14642499534029174552

`A316665(gcd(A000079(n), A017117(n)))`
-/

namespace A058887.P14642499534029174552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (Int.gcd (A000079 n) (A017117 n))

end

end A058887.P14642499534029174552

/-!
# A058888: Number of terms in the set invphi(2*prime(n)), where prime(n) is the n-th prime.

The programs for A058888, there is no canonical definition to state claims against.
-/

/-! ## A058888.P7427614305004662095

`A051478(A130290(n+1))`
-/

namespace A058888.P7427614305004662095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051478 (A130290 (n + 1)).toNat

end

end A058888.P7427614305004662095

/-! ## A058888.P10895944650622632167

`A032446(p?[xor(1, n)])`
-/

namespace A058888.P10895944650622632167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A058888.P10895944650622632167

/-! ## A058888.P16378550602332702921

`A032446(p?[comp[n²]])`
-/

namespace A058888.P16378550602332702921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A058888.P16378550602332702921

/-! ## A058888.P1964554358749858822

`A032446(Δ[A007504(n)])`
-/

namespace A058888.P1964554358749858822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (n + 1) - f1 n).toNat

end

end A058888.P1964554358749858822

/-! ## A058888.P16172508516317813116

`A032446(A000040(n+1))`
-/

namespace A058888.P16172508516317813116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A000040 (n + 1)).toNat

end

end A058888.P16172508516317813116

/-! ## A058888.P10253257275885122366

`A032446(A008578(n+2))`
-/

namespace A058888.P10253257275885122366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A008578 (n + 2)).toNat

end

end A058888.P10253257275885122366

/-! ## A058888.P17319949889795947934

`A032446(A182986(n+2))`
-/

namespace A058888.P17319949889795947934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A182986 (n + 2)).toNat

end

end A058888.P17319949889795947934

/-! ## A058888.P10060610641226613303

`A032446(record[A006530(n+2)])`
-/

namespace A058888.P10060610641226613303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058888.P10060610641226613303

/-! ## A058888.P327402179237549555

`A032446(record[A014963(n+2)])`
-/

namespace A058888.P327402179237549555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058888.P327402179237549555

/-! ## A058888.P3790053337239408370

`A032446(record[A020639(n+2)])`
-/

namespace A058888.P3790053337239408370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058888.P3790053337239408370

/-! ## A058888.P8002010258973722815

`A032446(A100484(n+1)/2)`
-/

namespace A058888.P8002010258973722815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A058888.P8002010258973722815

/-! ## A058888.P4590525573437985571

`A032446(A001747(n+2)/2)`
-/

namespace A058888.P4590525573437985571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A058888.P4590525573437985571

/-! ## A058888.P12561385116279755698

`A032446(record[A000010(n+1)+1])`
-/

namespace A058888.P12561385116279755698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058888.P12561385116279755698

/-! ## A058888.P10374464091633714657

`A032446(A006530(A001749(n+1)))`
-/

namespace A058888.P10374464091633714657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A006530 (A001749 (n + 1)).toNat).toNat

end

end A058888.P10374464091633714657

/-! ## A058888.P4370096297834783248

`A032446(A007504(n+1)-A007504(n))`
-/

namespace A058888.P4370096297834783248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A007504 (n + 1) - A007504 n).toNat

end

end A058888.P4370096297834783248

/-! ## A058888.P2671442678066226963

`A014197(A100484(n+1))`
-/

namespace A058888.P2671442678066226963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A100484 (n + 1)).toNat

end

end A058888.P2671442678066226963

/-! ## A058888.P6308330725451975147

`A362485(A073582(n+1))`
-/

namespace A058888.P6308330725451975147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (A073582 (n + 1)).toNat

end

end A058888.P6308330725451975147

/-! ## A058888.P13723624023557762283

`A014197(A001747(n+2))`
-/

namespace A058888.P13723624023557762283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A001747 (n + 2)).toNat

end

end A058888.P13723624023557762283

/-! ## A058888.P16715209241414516657

`A362485(A161344(n+2))`
-/

namespace A058888.P16715209241414516657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (A161344 (n + 2)).toNat

end

end A058888.P16715209241414516657

/-! ## A058888.P7912777750658670974

`A014197(Δ[2*A007504(n)])`
-/

namespace A058888.P7912777750658670974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (n + 1) - f1 n).toNat

end

end A058888.P7912777750658670974

/-!
# A058891: a(n) = 2^(2^(n-1) - 1).

The programs for A058891, the canonical program `A058891.P13289349370227338542` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058891 has offset 1).

The definition of A058891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058891.P13289349370227338542

`2^(2^n-1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058891

/-- `2^(2^n-1)` -/
def P13289349370227338542.Spec : Prop :=
  ∀ n, P13289349370227338542.a n = (A058891 (n + 1) : ℚ)

end A058891

/-! ## A058891.P3300555628032018927

`2*a(n-1)²` with `a(0)=1`
-/

namespace A058891.P3300555628032018927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) ^ 2

end

end A058891.P3300555628032018927

namespace A058891

/-- `2*a(n-1)²` -/
def P3300555628032018927.Spec : Prop :=
  ∀ n, (P3300555628032018927.a n : ℤ) = A058891 (n + 1)

end A058891

/-! ## A058891.P5464624095714929422

`2^2^dr(n)/2`
-/

namespace A058891.P5464624095714929422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 2

end

end A058891.P5464624095714929422

namespace A058891

/-- `2^2^dr(n)/2` -/
def P5464624095714929422.Spec : Prop :=
  ∀ n, P5464624095714929422.a n = (A058891 (n + 1) : ℚ)

end A058891

/-! ## A058891.P17027559669309791711

`∏[a(n-1)²]` with `a(0)=1, a(1)=2`
-/

namespace A058891.P17027559669309791711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058891.P17027559669309791711

namespace A058891

/-- `∏[a(n-1)²]` -/
def P17027559669309791711.Spec : Prop :=
  ∀ n, (P17027559669309791711.a n : ℤ) = A058891 (n + 1)

end A058891

/-!
# A058892: E.g.f.: exp(f(x)-1), where f(x) = o.g.f. for partitions (A000041), Product_{k>=1} 1/(1-x^k).

The programs for A058892, there is no canonical definition to state claims against.
-/

/-! ## A058892.P789869502363444506

`A293796(∑[n+2]-1)`
-/

namespace A058892.P789869502363444506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293796 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A058892.P789869502363444506

/-! ## A058892.P9445905485380173966

`or(1, A293796(A034856(n+1)))`
-/

namespace A058892.P9445905485380173966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293796 (A034856 (n + 1)).toNat)

end

end A058892.P9445905485380173966

/-! ## A058892.P14311395781132617549

`gcd(A000038(n), A293796(A034856(n+1)))`
-/

namespace A058892.P14311395781132617549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293796 (A034856 (n + 1)).toNat)

end

end A058892.P14311395781132617549

/-! ## A058892.P12947175675667731460

`A293796(A034856(n+1))+A000007(n+1)`
-/

namespace A058892.P12947175675667731460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293796 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A058892.P12947175675667731460

/-! ## A058892.P4376780030634545330

`A001222(A007519(n+1))*A293796(A034856(n+1))`
-/

namespace A058892.P4376780030634545330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007519 (n + 1)).toNat * A293796 (A034856 (n + 1)).toNat

end

end A058892.P4376780030634545330

/-!
# A058893: Triangle arising in enumeration of maps on projective plane.

The programs for A058893, there is no canonical definition to state claims against.
-/

/-! ## A058893.P15181067718544925301

`∩[A117125(n+1), A176114(n+1)]`
-/

namespace A058893.P15181067718544925301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058893.P15181067718544925301

/-!
# A058895: a(n) = n^4 - n.

The programs for A058895, the canonical program `A058895.P10446550936280251212` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058895 has offset 0).

The definition of A058895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-n` (program `A058895.P10446550936280251212`, by `A058895.P10446550936280251212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058895.P10446550936280251212

`n^4-n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058895

/-- `n^4-n` -/
def P10446550936280251212.Spec : Prop :=
  ∀ n, P10446550936280251212.a n = A058895 n

theorem P10446550936280251212.correct : P10446550936280251212.Spec := by
  intro n
  simp only [A058895]

end A058895

/-!
# A058896: a(n) = 4^n - 4.

The programs for A058896, the canonical program `A058896.P10849330193960451850` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058896 has offset 0).

The definition of A058896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-4` (program `A058896.P10849330193960451850`, by `A058896.P10849330193960451850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058896.P10849330193960451850

`4^n-4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058896

/-- `4^n-4` -/
def P10849330193960451850.Spec : Prop :=
  ∀ n, P10849330193960451850.a n = A058896 n

theorem P10849330193960451850.correct : P10849330193960451850.Spec := by
  intro n
  simp only [A058896]

end A058896

/-!
# A058898: Inconsummate numbers in base 2: no number is this multiple of the sum of its digits (in base 2).

The programs for A058898, there is no canonical definition to state claims against.
-/

/-! ## A058898.P6974328651579197072

`lt[A065880(n), n]`
-/

namespace A058898.P6974328651579197072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065880 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058898.P6974328651579197072

/-! ## A058898.P17714112851039873110

`eq[0, A065413(n+1)]+1`
-/

namespace A058898.P17714112851039873110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058898.P17714112851039873110

/-! ## A058898.P8198152779877022588

`lt[A065879(n+1), 1]+1`
-/

namespace A058898.P8198152779877022588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A058898.P8198152779877022588

/-! ## A058898.P17258511559764578383

`lt[A272759(n+1), 1]+1`
-/

namespace A058898.P17258511559764578383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272759 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A058898.P17258511559764578383

/-! ## A058898.P12883752910858251227

`eq[1, A065880(n+1)+1]+1`
-/

namespace A058898.P12883752910858251227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065880 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058898.P12883752910858251227

/-! ## A058898.P5828112233100209956

`lt[A065413(A028310(n)), 1]`
-/

namespace A058898.P5828112233100209956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058898.P5828112233100209956

/-! ## A058898.P13782668268153033176

`eq[A000007(n), A065880(n)]`
-/

namespace A058898.P13782668268153033176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058898.P13782668268153033176

/-! ## A058898.P16421475252361147965

`eq[A000038(n), A065880(n)]`
-/

namespace A058898.P16421475252361147965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058898.P16421475252361147965

/-! ## A058898.P18252583936810169857

`A020725(lt[A065413(n+1), 1])`
-/

namespace A058898.P18252583936810169857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A058898.P18252583936810169857

/-! ## A058898.P14889108704352779149

`eq[1, A072404(A272759(n+1)+1)]+1`
-/

namespace A058898.P14889108704352779149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072404 (A272759 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058898.P14889108704352779149

/-! ## A058898.P360590471657434427

`lt[A065413(A004277(n)), 1]`
-/

namespace A058898.P360590471657434427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058898.P360590471657434427

/-! ## A058898.P5076768112436172824

`lt[A065879(A028310(2*n)), 1]`
-/

namespace A058898.P5076768112436172824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065879 (A028310 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058898.P5076768112436172824

/-! ## A058898.P4429775503244454415

`lt[A065879(A028310(n)+n), 1]`
-/

namespace A058898.P4429775503244454415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065879 (A028310 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058898.P4429775503244454415

/-! ## A058898.P17297312258838328334

`lt[A065413(A008574(n)), 1]`
-/

namespace A058898.P17297312258838328334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058898.P17297312258838328334

/-! ## A058898.P10947771855611289992

`eq[1, A002822(A065879(n+1)+1)]+1`
-/

namespace A058898.P10947771855611289992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (A065879 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058898.P10947771855611289992

/-! ## A058898.P17834236542094444553

`eq[1, A065879(A065879(n+2)+1)]+2`
-/

namespace A058898.P17834236542094444553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065879 (A065879 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A058898.P17834236542094444553

/-! ## A058898.P16086362372118873139

`lt[A065413(A233583(n+1)), 1]`
-/

namespace A058898.P16086362372118873139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058898.P16086362372118873139

/-!
# A058899: Inconsummate numbers in base 3: no number is this multiple of the sum of its digits (in base 3).

The programs for A058899, there is no canonical definition to state claims against.
-/

/-! ## A058899.P8307027899337509262

`lt[A277249(n), n]`
-/

namespace A058899.P8307027899337509262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058899.P8307027899337509262

/-! ## A058899.P1099174617095344309

`eq[0, A277249(n+1)]+1`
-/

namespace A058899.P1099174617095344309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058899.P1099174617095344309

/-! ## A058899.P6447007296579510053

`eq[A000007(n), A277249(n)]`
-/

namespace A058899.P6447007296579510053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058899.P6447007296579510053

/-! ## A058899.P4207529836975367978

`eq[A000038(n), A277249(n)]`
-/

namespace A058899.P4207529836975367978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058899.P4207529836975367978

/-! ## A058899.P8351794573646601920

`eq[A010056(n), A277249(n)]`
-/

namespace A058899.P8351794573646601920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058899.P8351794573646601920

/-! ## A058899.P2494652070733858578

`eq[A012245(n+1), A277249(n)]`
-/

namespace A058899.P2494652070733858578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058899.P2494652070733858578

/-! ## A058899.P3211816418797101174

`eq[A010054(A060632(n)), A277249(n)]`
-/

namespace A058899.P3211816418797101174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A060632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058899.P3211816418797101174

/-! ## A058899.P18104706961808216003

`eq[A103452(A053644(n)), A277249(n)]`
-/

namespace A058899.P18104706961808216003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (A053644 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058899.P18104706961808216003

/-! ## A058899.P6243289031676093482

`eq[A277249(n), A290079(A030101(n))]`
-/

namespace A058899.P6243289031676093482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058899.P6243289031676093482

/-! ## A058899.P10558899089119519817

`eq[0, A277249(A008486(n))]`
-/

namespace A058899.P10558899089119519817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058899.P10558899089119519817

/-! ## A058899.P3161853672788583325

`eq[0, A277249(A233583(n+1))]`
-/

namespace A058899.P3161853672788583325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277249 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058899.P3161853672788583325

