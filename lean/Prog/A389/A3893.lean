import SequenceMachineLib
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
import Seq.B000.C012
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
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
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

/-!
# A389301: Total number of consecutive pairs across all heapable permutations of length n.

The programs for A389301, there is no canonical definition to state claims against.
-/

/-! ## A389301.P12318701737797816847

`A166274(A099785(n))`
-/

namespace A389301.P12318701737797816847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166274 (A099785 n).toNat

end

end A389301.P12318701737797816847

/-! ## A389301.P16466077603716481756

`A383533(A003022(n+2))`
-/

namespace A389301.P16466077603716481756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383533 (A003022 (n + 2)).toNat

end

end A389301.P16466077603716481756

/-!
# A389302: Position of records in A389235.

The programs for A389302, there is no canonical definition to state claims against.
-/

/-! ## A389302.P14858464517157359097

`A235601(A141769(n+1))`
-/

namespace A389302.P14858464517157359097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235601 (A141769 (n + 1)).toNat

end

end A389302.P14858464517157359097

/-! ## A389302.P3445986095253781488

`A235601(A186143(n+1)+n)`
-/

namespace A389302.P3445986095253781488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235601 (A186143 (n + 1) + (n : ℤ)).toNat

end

end A389302.P3445986095253781488

/-! ## A389302.P15320575405541708640

`A235601((n+1)^A219347(n))`
-/

namespace A389302.P15320575405541708640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235601 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A219347 n : ℤ))).toNat

end

end A389302.P15320575405541708640

/-!
# A389305: Numbers that can terminate in 3 by successively dividing a contiguous substring of digits by 2 but cannot terminate in 1.

The programs for A389305, there is no canonical definition to state claims against.
-/

/-! ## A389305.P14341120694374015337

`eq[3, A389140(n+1)]+1`
-/

namespace A389305.P14341120694374015337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389305.P14341120694374015337

/-!
# A389306: Row sums of triangle A387098.

The programs for A389306, there is no canonical definition to state claims against.
-/

/-! ## A389306.P3931244494857960687

`A008619(2*A002464(n+1))`
-/

namespace A389306.P3931244494857960687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A002464 (n + 1)).toNat

end

end A389306.P3931244494857960687

/-! ## A389306.P10838194560765649464

`A028242(2*A002464(n+1))`
-/

namespace A389306.P10838194560765649464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A002464 (n + 1)).toNat

end

end A389306.P10838194560765649464

/-! ## A389306.P13909438117634930749

`A131732(2*A002464(n+1))`
-/

namespace A389306.P13909438117634930749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A002464 (n + 1)).toNat

end

end A389306.P13909438117634930749

/-!
# A389311: Number of permutations of [2n] having exactly n consecutive ascending pairs.

The programs for A389311, there is no canonical definition to state claims against.
-/

/-! ## A389311.P7333039739616867079

`A123513(A058331(n))`
-/

namespace A389311.P7333039739616867079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A058331 n).toNat

end

end A389311.P7333039739616867079

/-! ## A389311.P2195685075304045695

`A123513(A267872(n²))`
-/

namespace A389311.P2195685075304045695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A267872 (n ^ 2)).toNat

end

end A389311.P2195685075304045695

/-! ## A389311.P1482198576852540270

`A123513(A001105(n)+1)`
-/

namespace A389311.P1482198576852540270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A001105 n + 1).toNat

end

end A389311.P1482198576852540270

/-! ## A389311.P12091879543892283156

`A123513(A000384(n)+n+1)`
-/

namespace A389311.P12091879543892283156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A000384 n + (n + 1 : ℤ)).toNat

end

end A389311.P12091879543892283156

/-! ## A389311.P6580829060003032573

`A010027(A028310(2*n)*A028310(n))`
-/

namespace A389311.P6580829060003032573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010027 (A028310 (2 * n) * A028310 n).toNat

end

end A389311.P6580829060003032573

/-!
# A389312: Powers k^m, m > 1, such that k is in A303946 and A053669(k) > A006530(k).

The programs for A389312, there is no canonical definition to state claims against.
-/

/-! ## A389312.P11597537638441486877

`∪[A380452(n+1), A390290(n+1)]`
-/

namespace A389312.P11597537638441486877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P11597537638441486877

/-! ## A389312.P12531791517146715088

`∪[A389226(n+1), A389394(n+1)]`
-/

namespace A389312.P12531791517146715088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P12531791517146715088

/-! ## A389312.P17327919333313848618

`∩[A055932(n+1), A389864(n+1)]`
-/

namespace A389312.P17327919333313848618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P17327919333313848618

/-! ## A389312.P3613196244654675898

`∩[A304250(n+1), A389864(n+1)]`
-/

namespace A389312.P3613196244654675898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P3613196244654675898

/-! ## A389312.P17791219498841613915

`∩[A363814(n+1), A389864(n+1)]`
-/

namespace A389312.P17791219498841613915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P17791219498841613915

/-! ## A389312.P18195003127655865212

`∩[A369374(n+1), A389864(n+1)]`
-/

namespace A389312.P18195003127655865212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P18195003127655865212

/-! ## A389312.P10119330392492022276

`∩[A380446(n+1), A389864(n+1)]`
-/

namespace A389312.P10119330392492022276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P10119330392492022276

/-! ## A389312.P5506424190691520851

`∩[A387901(n+1), A389864(n+1)]`
-/

namespace A389312.P5506424190691520851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P5506424190691520851

/-! ## A389312.P4808562930933074118

`∩[A304250(n+1), A395067(n+1)]`
-/

namespace A389312.P4808562930933074118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P4808562930933074118

/-! ## A389312.P8391508176334804378

`∩[A380446(n+1), A395067(n+1)]`
-/

namespace A389312.P8391508176334804378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P8391508176334804378

/-! ## A389312.P16147669262107986544

`∩[A304250(n+1), A359280(n+1)]`
-/

namespace A389312.P16147669262107986544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P16147669262107986544

/-! ## A389312.P3732176362087870722

`∩[A359280(n+1), A380446(n+1)]`
-/

namespace A389312.P3732176362087870722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389312.P3732176362087870722

/-!
# A389313: a(n) is the smallest m such that for every red-blue edge-coloring of the graph K_{m} there exists either a red or a blue n-cycle; Ramsey number r(C_n, C_n).

The programs for A389313, there is no canonical definition to state claims against.
-/

/-! ## A389313.P5765252141263920930

`A389310(∑[n+1]+2)`
-/

namespace A389313.P5765252141263920930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389310 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A389313.P5765252141263920930

/-!
# A389314: Decimal expansion of 1/3432.

The programs for A389314, the canonical program `A389314.P15676417665564126010` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389314 has offset 0).

The definition of A389314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389314.P15676417665564126010

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=9, a(5)=1, a(6)=3, a(7)=7, a(8)=5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389314

/-- `a(n-6)` -/
def P15676417665564126010.Spec : Prop :=
  ∀ n, (P15676417665564126010.a n : ℤ) = A389314 n

theorem P15676417665564126010.correct : P15676417665564126010.Spec := by
  intro n
  simp only [A389314]

end A389314

/-!
# A389316: Lower (2/3)-midsequence of square numbers and triangular numbers; see Comments.

The programs for A389316, the canonical program `A389316.P139881400455844798` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389316 has offset 0).

The definition of A389316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389316.P139881400455844798

`floor((3*n²+n)/3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389316

/-- `floor((3*n²+n)/3)` -/
def P139881400455844798.Spec : Prop :=
  ∀ n, P139881400455844798.a n = A389316 n

theorem P139881400455844798.correct : P139881400455844798.Spec := by
  intro n
  simp only [A389316]

end A389316

/-! ## A389316.P2155181933994349012

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=17`
-/

namespace A389316.P2155181933994349012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 10, 17] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A389316.P2155181933994349012

namespace A389316

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P2155181933994349012.Spec : Prop :=
  ∀ n, P2155181933994349012.a n = A389316 n

end A389316

/-! ## A389316.P12484281559216787634

`∑[∑[dr(3*n)/3]]`
-/

namespace A389316.P12484281559216787634
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P12484281559216787634

namespace A389316

/-- `∑[∑[dr(3*n)/3]]` -/
def P12484281559216787634.Spec : Prop :=
  ∀ n, P12484281559216787634.a n = (A389316 n : ℚ)

end A389316

/-! ## A389316.P15797394113209381430

`∑[∑[(n-1)%3+1]]`
-/

namespace A389316.P15797394113209381430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 3 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P15797394113209381430

namespace A389316

/-- `∑[∑[(n-1)%3+1]]` -/
def P15797394113209381430.Spec : Prop :=
  ∀ n, P15797394113209381430.a n = A389316 n

end A389316

/-! ## A389316.P15003540295652404213

`∑[2*n-n²%3]`
-/

namespace A389316.P15003540295652404213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P15003540295652404213

namespace A389316

/-- `∑[2*n-n²%3]` -/
def P15003540295652404213.Spec : Prop :=
  ∀ n, P15003540295652404213.a n = A389316 n

end A389316

/-! ## A389316.P17366043261852417911

`∑[a(n-3)+6]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A389316.P17366043261852417911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P17366043261852417911

namespace A389316

/-- `∑[a(n-3)+6]` -/
def P17366043261852417911.Spec : Prop :=
  ∀ n, (P17366043261852417911.a n : ℤ) = A389316 n

end A389316

/-! ## A389316.P13487729525515679189

`(n-n%3)/3+n²`
-/

namespace A389316.P13487729525515679189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) / 3 + (n ^ 2 : ℚ)

end

end A389316.P13487729525515679189

namespace A389316

/-- `(n-n%3)/3+n²` -/
def P13487729525515679189.Spec : Prop :=
  ∀ n, P13487729525515679189.a n = (A389316 n : ℚ)

end A389316

/-! ## A389316.P486556347497474038

`∑[∑[abs(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A389316.P486556347497474038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P486556347497474038

namespace A389316

/-- `∑[∑[abs(a(n-3))]]` -/
def P486556347497474038.Spec : Prop :=
  ∀ n, (P486556347497474038.a n : ℤ) = A389316 n

end A389316

/-! ## A389316.P1298063684182286582

`∑[∑[dr(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A389316.P1298063684182286582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P1298063684182286582

namespace A389316

/-- `∑[∑[dr(a(n-3))]]` -/
def P1298063684182286582.Spec : Prop :=
  ∀ n, (P1298063684182286582.a n : ℤ) = A389316 n

end A389316

/-! ## A389316.P2298640927465321540

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A389316.P2298640927465321540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P2298640927465321540

namespace A389316

/-- `∑[∑[floor(a(n-3))]]` -/
def P2298640927465321540.Spec : Prop :=
  ∀ n, (P2298640927465321540.a n : ℤ) = A389316 n

end A389316

/-! ## A389316.P8247956299945661616

`∑[∑[ceil(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A389316.P8247956299945661616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P8247956299945661616

namespace A389316

/-- `∑[∑[ceil(a(n-3))]]` -/
def P8247956299945661616.Spec : Prop :=
  ∀ n, (P8247956299945661616.a n : ℤ) = A389316 n

end A389316

/-! ## A389316.P2322124143008015479

`∑[∑[round(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A389316.P2322124143008015479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P2322124143008015479

namespace A389316

/-- `∑[∑[round(a(n-3))]]` -/
def P2322124143008015479.Spec : Prop :=
  ∀ n, (P2322124143008015479.a n : ℤ) = A389316 n

end A389316

/-! ## A389316.P8157336197335880956

`∑[2*n-floor(1/gcd(3, n))]`
-/

namespace A389316.P8157336197335880956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊1 / (Nat.gcd 3 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P8157336197335880956

namespace A389316

/-- `∑[2*n-floor(1/gcd(3, n))]` -/
def P8157336197335880956.Spec : Prop :=
  ∀ n, P8157336197335880956.a n = A389316 n

end A389316

/-! ## A389316.P6760062165436141264

`lcm(n, n+1)-ceil(2*n/3)`
-/

namespace A389316.P6760062165436141264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℤ) - ⌈(2 * n : ℚ) / 3⌉

end

end A389316.P6760062165436141264

namespace A389316

/-- `lcm(n, n+1)-ceil(2*n/3)` -/
def P6760062165436141264.Spec : Prop :=
  ∀ n, P6760062165436141264.a n = A389316 n

end A389316

/-! ## A389316.P321927352513272175

`∑[2*n]-∑[a(n-3)²]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A389316.P321927352513272175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A389316.P321927352513272175

namespace A389316

/-- `∑[2*n]-∑[a(n-3)²]` -/
def P321927352513272175.Spec : Prop :=
  ∀ n, P321927352513272175.a n = A389316 n

end A389316

/-! ## A389316.P1277652483099661066

`a(n-1)-gcd(2, a(n-2))+2*n+1` with `a(0)=0, a(1)=1`
-/

namespace A389316.P1277652483099661066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (Int.gcd 2 (a (n - 2)) : ℤ) + (2 * n + 1 : ℤ)

end

end A389316.P1277652483099661066

namespace A389316

/-- `a(n-1)-gcd(2, a(n-2))+2*n+1` -/
def P1277652483099661066.Spec : Prop :=
  ∀ n, P1277652483099661066.a n = A389316 n

end A389316

/-! ## A389316.P2946644517324065609

`∑[A047242(n+1)]`
-/

namespace A389316.P2946644517324065609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389316.P2946644517324065609

namespace A389316

/-- `∑[A047242(n+1)]` -/
def P2946644517324065609.Spec : Prop :=
  ∀ n, P2946644517324065609.a n = A389316 n

end A389316

/-! ## A389316.P4762583681465745387

`A002264(n)+n²`
-/

namespace A389316.P4762583681465745387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + (n ^ 2 : ℤ)

end

end A389316.P4762583681465745387

namespace A389316

/-- `A002264(n)+n²` -/
def P4762583681465745387.Spec : Prop :=
  ∀ n, P4762583681465745387.a n = A389316 n

end A389316

/-! ## A389316.P12752188685564939561

`A171452(n)+∑[n]`
-/

namespace A389316.P12752188685564939561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171452 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A389316.P12752188685564939561

namespace A389316

/-- `A171452(n)+∑[n]` -/
def P12752188685564939561.Spec : Prop :=
  ∀ n, P12752188685564939561.a n = A389316 n

end A389316

/-!
# A389317: Upper (2/3)-midsequence of square numbers and triangular numbers; see Comments.

The programs for A389317, the canonical program `A389317.P4950096540508044717` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389317 has offset 0).

The definition of A389317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389317.P4950096540508044717

`ceil((3*n²+n)/3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389317

/-- `ceil((3*n²+n)/3)` -/
def P4950096540508044717.Spec : Prop :=
  ∀ n, P4950096540508044717.a n = A389317 n

theorem P4950096540508044717.correct : P4950096540508044717.Spec := by
  intro n
  simp only [A389317]

end A389317

/-! ## A389317.P2750755519117370294

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=10, a(4)=18`
-/

namespace A389317.P2750755519117370294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 10, 18] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A389317.P2750755519117370294

namespace A389317

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P2750755519117370294.Spec : Prop :=
  ∀ n, P2750755519117370294.a n = A389317 n

end A389317

/-! ## A389317.P7011341076674432492

`∑[(n%3)%2]+n²`
-/

namespace A389317.P7011341076674432492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A389317.P7011341076674432492

namespace A389317

/-- `∑[(n%3)%2]+n²` -/
def P7011341076674432492.Spec : Prop :=
  ∀ n, (P7011341076674432492.a n : ℤ) = A389317 n

end A389317

/-! ## A389317.P7680000769320052020

`∑[a(n-3)+6]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A389317.P7680000769320052020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 5] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389317.P7680000769320052020

namespace A389317

/-- `∑[a(n-3)+6]` -/
def P7680000769320052020.Spec : Prop :=
  ∀ n, (P7680000769320052020.a n : ℤ) = A389317 n

end A389317

/-! ## A389317.P9199737988333420624

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A389317.P9199737988333420624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389317.P9199737988333420624

namespace A389317

/-- `∑[∑[floor(a(n-3))]]` -/
def P9199737988333420624.Spec : Prop :=
  ∀ n, (P9199737988333420624.a n : ℤ) = A389317 n

end A389317

/-! ## A389317.P13003986563607512791

`round(A056108(n)/3)`
-/

namespace A389317.P13003986563607512791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056108 n : ℚ) / 3)

end

end A389317.P13003986563607512791

namespace A389317

/-- `round(A056108(n)/3)` -/
def P13003986563607512791.Spec : Prop :=
  ∀ n, P13003986563607512791.a n = A389317 n

end A389317

/-! ## A389317.P7173739960197430282

`∑[A047231(n+1)]-n`
-/

namespace A389317.P7173739960197430282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A389317.P7173739960197430282

namespace A389317

/-- `∑[A047231(n+1)]-n` -/
def P7173739960197430282.Spec : Prop :=
  ∀ n, P7173739960197430282.a n = A389317 n

end A389317

/-! ## A389317.P16069834505393821664

`n²+n-A004523(n)`
-/

namespace A389317.P16069834505393821664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A004523 n

end

end A389317.P16069834505393821664

namespace A389317

/-- `n²+n-A004523(n)` -/
def P16069834505393821664.Spec : Prop :=
  ∀ n, P16069834505393821664.a n = A389317 n

end A389317

/-! ## A389317.P15010604746930633950

`A080341(n+1)-Δ[n²]`
-/

namespace A389317.P15010604746930633950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080341 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A389317.P15010604746930633950

namespace A389317

/-- `A080341(n+1)-Δ[n²]` -/
def P15010604746930633950.Spec : Prop :=
  ∀ n, P15010604746930633950.a n = A389317 n

end A389317

/-! ## A389317.P4897407155378435983

`(n+1)²-A032793(n+1)`
-/

namespace A389317.P4897407155378435983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A032793 (n + 1)

end

end A389317.P4897407155378435983

namespace A389317

/-- `(n+1)²-A032793(n+1)` -/
def P4897407155378435983.Spec : Prop :=
  ∀ n, P4897407155378435983.a n = A389317 n

end A389317

/-! ## A389317.P5339229422319526784

`A090168(n)+A014848(n)`
-/

namespace A389317.P5339229422319526784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 n + A014848 n

end

end A389317.P5339229422319526784

namespace A389317

/-- `A090168(n)+A014848(n)` -/
def P5339229422319526784.Spec : Prop :=
  ∀ n, P5339229422319526784.a n = A389317 n

end A389317

/-! ## A389317.P14160001736805172227

`A389316(n)+A011655(n)`
-/

namespace A389317.P14160001736805172227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389316 n + A011655 n

end

end A389317.P14160001736805172227

namespace A389317

/-- `A389316(n)+A011655(n)` -/
def P14160001736805172227.Spec : Prop :=
  ∀ n, P14160001736805172227.a n = A389317 n

end A389317

/-! ## A389317.P5156961274160530580

`A008577(n)-A007980(n)`
-/

namespace A389317.P5156961274160530580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n - A007980 n

end

end A389317.P5156961274160530580

namespace A389317

/-- `A008577(n)-A007980(n)` -/
def P5156961274160530580.Spec : Prop :=
  ∀ n, P5156961274160530580.a n = A389317 n

end A389317

/-! ## A389317.P3015862189172238549

`A213396(n)-A006527(n)`
-/

namespace A389317.P3015862189172238549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213396 n - A006527 n

end

end A389317.P3015862189172238549

namespace A389317

/-- `A213396(n)-A006527(n)` -/
def P3015862189172238549.Spec : Prop :=
  ∀ n, P3015862189172238549.a n = A389317 n

end A389317

/-! ## A389317.P13590437649150911440

`A005449(n)-A389142(n)`
-/

namespace A389317.P13590437649150911440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A389142 n

end

end A389317.P13590437649150911440

namespace A389317

/-- `A005449(n)-A389142(n)` -/
def P13590437649150911440.Spec : Prop :=
  ∀ n, P13590437649150911440.a n = A389317 n

end A389317

/-! ## A389317.P3896772672962308394

`A397983(n)-A000212(n)`
-/

namespace A389317.P3896772672962308394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397983 n - A000212 n

end

end A389317.P3896772672962308394

namespace A389317

/-- `A397983(n)-A000212(n)` -/
def P3896772672962308394.Spec : Prop :=
  ∀ n, P3896772672962308394.a n = A389317 n

end A389317

/-! ## A389317.P5001076780071911578

`A317186(n)-A103221(n)`
-/

namespace A389317.P5001076780071911578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n - A103221 n

end

end A389317.P5001076780071911578

namespace A389317

/-- `A317186(n)-A103221(n)` -/
def P5001076780071911578.Spec : Prop :=
  ∀ n, P5001076780071911578.a n = A389317 n

end A389317

/-! ## A389317.P6371828166722559326

`A067998(n)+A047390(n+1)`
-/

namespace A389317.P6371828166722559326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n + A047390 (n + 1)

end

end A389317.P6371828166722559326

namespace A389317

/-- `A067998(n)+A047390(n+1)` -/
def P6371828166722559326.Spec : Prop :=
  ∀ n, P6371828166722559326.a n = A389317 n

end A389317

/-!
# A389318: Upper (1/4)-midsequence of square numbers and (-1)*(triangular numbers); see Comments.

The programs for A389318, the canonical program `A389318.P10323438831737550613` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389318 has offset 0).

The definition of A389318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389318.P10323438831737550613

`ceil((n²-n)/8)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389318

/-- `ceil((n²-n)/8)` -/
def P10323438831737550613.Spec : Prop :=
  ∀ n, P10323438831737550613.a n = A389318 n

theorem P10323438831737550613.correct : P10323438831737550613.Spec := by
  intro n
  simp only [A389318]

end A389318

/-! ## A389318.P2864929778201740388

`round((C(n, 2)+1)/4)`
-/

namespace A389318.P2864929778201740388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 + 1 : ℚ) / 4)

end

end A389318.P2864929778201740388

namespace A389318

/-- `round((C(n, 2)+1)/4)` -/
def P2864929778201740388.Spec : Prop :=
  ∀ n, P2864929778201740388.a n = A389318 n

end A389318

/-! ## A389318.P1393089391954681405

`floor((C(n, 2)+3)/4)`
-/

namespace A389318.P1393089391954681405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 + 3 : ℚ) / 4⌋

end

end A389318.P1393089391954681405

namespace A389318

/-- `floor((C(n, 2)+3)/4)` -/
def P1393089391954681405.Spec : Prop :=
  ∀ n, P1393089391954681405.a n = A389318 n

end A389318

/-! ## A389318.P7671437104095028103

`(or(3, ∑[n-1])+1)/4`
-/

namespace A389318.P7671437104095028103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 4

end

end A389318.P7671437104095028103

namespace A389318

/-- `(or(3, ∑[n-1])+1)/4` -/
def P7671437104095028103.Spec : Prop :=
  ∀ n, P7671437104095028103.a n = (A389318 n : ℚ)

end A389318

/-! ## A389318.P16864269016319639007

`floor((4-∑[a(n-1)-1])/4)` with `a(0)=1`
-/

namespace A389318.P16864269016319639007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A389318.P16864269016319639007

namespace A389318

/-- `floor((4-∑[a(n-1)-1])/4)` -/
def P16864269016319639007.Spec : Prop :=
  ∀ n, P16864269016319639007.a n = A389318 n

end A389318

/-! ## A389318.P14057549228502013699

`A024182(n+1)-n`
-/

namespace A389318.P14057549228502013699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024182 (n + 1) - (n : ℤ)

end

end A389318.P14057549228502013699

namespace A389318

/-- `A024182(n+1)-n` -/
def P14057549228502013699.Spec : Prop :=
  ∀ n, P14057549228502013699.a n = A389318 n

end A389318

/-! ## A389318.P9974267841492911589

`A161680(n)-A389319(n)`
-/

namespace A389318.P9974267841492911589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A389319 n

end

end A389318.P9974267841492911589

namespace A389318

/-- `A161680(n)-A389319(n)` -/
def P9974267841492911589.Spec : Prop :=
  ∀ n, P9974267841492911589.a n = A389318 n

end A389318

/-! ## A389318.P17621942780953148397

`n²-(A389319(n)+A000217(n))`
-/

namespace A389318.P17621942780953148397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A389319 n + A000217 n)

end

end A389318.P17621942780953148397

namespace A389318

/-- `n²-(A389319(n)+A000217(n))` -/
def P17621942780953148397.Spec : Prop :=
  ∀ n, P17621942780953148397.a n = A389318 n

end A389318

/-! ## A389318.P1378203530140556969

`A110654(A054925(n))`
-/

namespace A389318.P1378203530140556969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A054925 n).toNat

end

end A389318.P1378203530140556969

namespace A389318

/-- `A110654(A054925(n))` -/
def P1378203530140556969.Spec : Prop :=
  ∀ n, P1378203530140556969.a n = A389318 n

end A389318

/-! ## A389318.P14157776630010882582

`A110654(A011848(n+2)-n)`
-/

namespace A389318.P14157776630010882582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A011848 (n + 2) - (n : ℤ)).toNat

end

end A389318.P14157776630010882582

namespace A389318

/-- `A110654(A011848(n+2)-n)` -/
def P14157776630010882582.Spec : Prop :=
  ∀ n, P14157776630010882582.a n = A389318 n

end A389318

/-! ## A389318.P3375616883916900014

`A057360(A097922(n))`
-/

namespace A389318.P3375616883916900014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A097922 n).toNat

end

end A389318.P3375616883916900014

namespace A389318

/-- `A057360(A097922(n))` -/
def P3375616883916900014.Spec : Prop :=
  ∀ n, P3375616883916900014.a n = A389318 n

end A389318

/-! ## A389318.P10692973705738394132

`A110655(C(n, 2))`
-/

namespace A389318.P10692973705738394132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Nat.choose n 2)

end

end A389318.P10692973705738394132

namespace A389318

/-- `A110655(C(n, 2))` -/
def P10692973705738394132.Spec : Prop :=
  ∀ n, P10692973705738394132.a n = A389318 n

end A389318

/-! ## A389318.P1609751214078325723

`A110655(∑[n]-n)`
-/

namespace A389318.P1609751214078325723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A389318.P1609751214078325723

namespace A389318

/-- `A110655(∑[n]-n)` -/
def P1609751214078325723.Spec : Prop :=
  ∀ n, P1609751214078325723.a n = A389318 n

end A389318

/-! ## A389318.P17596431289192959576

`A002265(A152949(n+1))`
-/

namespace A389318.P17596431289192959576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A152949 (n + 1)).toNat

end

end A389318.P17596431289192959576

namespace A389318

/-- `A002265(A152949(n+1))` -/
def P17596431289192959576.Spec : Prop :=
  ∀ n, P17596431289192959576.a n = A389318 n

end A389318

/-! ## A389318.P8739448463430693979

`A002265(A016028(n+2))`
-/

namespace A389318.P8739448463430693979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A016028 (n + 2)).toNat

end

end A389318.P8739448463430693979

namespace A389318

/-- `A002265(A016028(n+2))` -/
def P8739448463430693979.Spec : Prop :=
  ∀ n, P8739448463430693979.a n = A389318 n

end A389318

/-! ## A389318.P14996496675016678089

`A110654(A110654(A000217(n)-n))`
-/

namespace A389318.P14996496675016678089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (A000217 n - (n : ℤ)).toNat).toNat

end

end A389318.P14996496675016678089

namespace A389318

/-- `A110654(A110654(A000217(n)-n))` -/
def P14996496675016678089.Spec : Prop :=
  ∀ n, P14996496675016678089.a n = A389318 n

end A389318

/-! ## A389318.P5350117601010338328

`A002265(A028242(A118403(n))+n+1)`
-/

namespace A389318.P5350117601010338328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A028242 (A118403 n).toNat + (n + 1 : ℤ)).toNat

end

end A389318.P5350117601010338328

namespace A389318

/-- `A002265(A028242(A118403(n))+n+1)` -/
def P5350117601010338328.Spec : Prop :=
  ∀ n, P5350117601010338328.a n = A389318 n

end A389318

/-! ## A389318.P13860577938150915389

`A110656(n²-n)`
-/

namespace A389318.P13860577938150915389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (n ^ 2 - n)

end

end A389318.P13860577938150915389

namespace A389318

/-- `A110656(n²-n)` -/
def P13860577938150915389.Spec : Prop :=
  ∀ n, P13860577938150915389.a n = A389318 n

end A389318

/-! ## A389318.P13564163210666471676

`A391075(n²-n)`
-/

namespace A389318.P13564163210666471676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391075 (n ^ 2 - n)

end

end A389318.P13564163210666471676

namespace A389318

/-- `A391075(n²-n)` -/
def P13564163210666471676.Spec : Prop :=
  ∀ n, P13564163210666471676.a n = A389318 n

end A389318

/-! ## A389318.P1916843803136472754

`A002265(A028242(A158552(A118403(n+1))))`
-/

namespace A389318.P1916843803136472754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A028242 (A158552 (A118403 (n + 1)).toNat).toNat).toNat

end

end A389318.P1916843803136472754

namespace A389318

/-- `A002265(A028242(A158552(A118403(n+1))))` -/
def P1916843803136472754.Spec : Prop :=
  ∀ n, P1916843803136472754.a n = A389318 n

end A389318

/-!
# A389319: Lower (3/4)-midsequence of square numbers and negative triangular numbers; see Comments.

The programs for A389319, the canonical program `A389319.P7944822161179526840` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389319 has offset 0).

The definition of A389319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389319.P7944822161179526840

`floor(3/8*(n²-n))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389319

/-- `floor(3/8*(n²-n))` -/
def P7944822161179526840.Spec : Prop :=
  ∀ n, P7944822161179526840.a n = A389319 n

theorem P7944822161179526840.correct : P7944822161179526840.Spec := by
  intro n
  simp only [A389319]

end A389319

/-! ## A389319.P6904432947548943287

`∑[n]-A024182(n+1)`
-/

namespace A389319.P6904432947548943287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A024182 (n + 1)

end

end A389319.P6904432947548943287

namespace A389319

/-- `∑[n]-A024182(n+1)` -/
def P6904432947548943287.Spec : Prop :=
  ∀ n, P6904432947548943287.a n = A389319 n

end A389319

/-! ## A389319.P13612822301972265963

`A161680(n)-A389318(n)`
-/

namespace A389319.P13612822301972265963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A389318 n

end

end A389319.P13612822301972265963

namespace A389319

/-- `A161680(n)-A389318(n)` -/
def P13612822301972265963.Spec : Prop :=
  ∀ n, P13612822301972265963.a n = A389319 n

end A389319

/-! ## A389319.P16272967608787784780

`n²-(A389318(n)+A000217(n))`
-/

namespace A389319.P16272967608787784780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A389318 n + A000217 n)

end

end A389319.P16272967608787784780

namespace A389319

/-- `n²-(A389318(n)+A000217(n))` -/
def P16272967608787784780.Spec : Prop :=
  ∀ n, P16272967608787784780.a n = A389319 n

end A389319

/-! ## A389319.P13786100104999678231

`A011861(n)+A389320(n)-A389318(n)`
-/

namespace A389319.P13786100104999678231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n + (A389320 n - A389318 n)

end

end A389319.P13786100104999678231

namespace A389319

/-- `A011861(n)+A389320(n)-A389318(n)` -/
def P13786100104999678231.Spec : Prop :=
  ∀ n, P13786100104999678231.a n = A389319 n

end A389319

/-! ## A389319.P4578223577635683650

`A128422(n+1)+A007997(n+3)-A389318(n)`
-/

namespace A389319.P4578223577635683650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1) + (A007997 (n + 3) - A389318 n)

end

end A389319.P4578223577635683650

namespace A389319

/-- `A128422(n+1)+A007997(n+3)-A389318(n)` -/
def P4578223577635683650.Spec : Prop :=
  ∀ n, P4578223577635683650.a n = A389319 n

end A389319

/-! ## A389319.P4316234722405981767

`A057353(C(n, 2))`
-/

namespace A389319.P4316234722405981767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Nat.choose n 2)

end

end A389319.P4316234722405981767

namespace A389319

/-- `A057353(C(n, 2))` -/
def P4316234722405981767.Spec : Prop :=
  ∀ n, P4316234722405981767.a n = A389319 n

end A389319

/-! ## A389319.P16915381570816344263

`A057353(∑[n]-n)`
-/

namespace A389319.P16915381570816344263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A389319.P16915381570816344263

namespace A389319

/-- `A057353(∑[n]-n)` -/
def P16915381570816344263.Spec : Prop :=
  ∀ n, P16915381570816344263.a n = A389319 n

end A389319

/-! ## A389319.P18145382877004113092

`A004526(A330707(n)-n)`
-/

namespace A389319.P18145382877004113092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A330707 n - (n : ℤ)).toNat

end

end A389319.P18145382877004113092

namespace A389319

/-- `A004526(A330707(n)-n)` -/
def P18145382877004113092.Spec : Prop :=
  ∀ n, P18145382877004113092.a n = A389319 n

end A389319

/-! ## A389319.P4942951309300496394

`A057360(n²-n)`
-/

namespace A389319.P4942951309300496394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (n ^ 2 - n)

end

end A389319.P4942951309300496394

namespace A389319

/-- `A057360(n²-n)` -/
def P4942951309300496394.Spec : Prop :=
  ∀ n, P4942951309300496394.a n = A389319 n

end A389319

/-!
# A389320: Upper (3/4)-midsequence of square numbers and negative triangular numbers; see Comments.

The programs for A389320, the canonical program `A389320.P2480373306257187130` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389320 has offset 0).

The definition of A389320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389320.P2480373306257187130

`ceil(3/8*(n²-n))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389320

/-- `ceil(3/8*(n²-n))` -/
def P2480373306257187130.Spec : Prop :=
  ∀ n, P2480373306257187130.a n = A389320 n

theorem P2480373306257187130.correct : P2480373306257187130.Spec := by
  intro n
  simp only [A389320]

end A389320

/-! ## A389320.P581430065791278363

`floor(∑[a(n-1)+3]/4)` with `a(0)=3, a(1)=0`
-/

namespace A389320.P581430065791278363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A389320.P581430065791278363

namespace A389320

/-- `floor(∑[a(n-1)+3]/4)` -/
def P581430065791278363.Spec : Prop :=
  ∀ n, P581430065791278363.a n = A389320 n

end A389320

/-! ## A389320.P1360476042854051647

`A161680(n)-A011861(n)`
-/

namespace A389320.P1360476042854051647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A011861 n

end

end A389320.P1360476042854051647

namespace A389320

/-- `A161680(n)-A011861(n)` -/
def P1360476042854051647.Spec : Prop :=
  ∀ n, P1360476042854051647.a n = A389320 n

end A389320

/-! ## A389320.P9834038739944646857

`A128422(n+1)+A007997(n+3)-A011861(n)`
-/

namespace A389320.P9834038739944646857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1) + (A007997 (n + 3) - A011861 n)

end

end A389320.P9834038739944646857

namespace A389320

/-- `A128422(n+1)+A007997(n+3)-A011861(n)` -/
def P9834038739944646857.Spec : Prop :=
  ∀ n, P9834038739944646857.a n = A389320 n

end A389320

/-! ## A389320.P3446844084084028638

`∑[A004523(comp[A090570(2*n+3)])]`
-/

namespace A389320.P3446844084084028638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (2 * n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389320.P3446844084084028638

namespace A389320

/-- `∑[A004523(comp[A090570(2*n+3)])]` -/
def P3446844084084028638.Spec : Prop :=
  ∀ n, P3446844084084028638.a n = A389320 n

end A389320

/-! ## A389320.P2779726905681582609

`A057353(∑[abs(1-n)])`
-/

namespace A389320.P2779726905681582609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A389320.P2779726905681582609

namespace A389320

/-- `A057353(∑[abs(1-n)])` -/
def P2779726905681582609.Spec : Prop :=
  ∀ n, P2779726905681582609.a n = A389320 n

end A389320

/-! ## A389320.P8964074238950008396

`A004526(A330707(n+2))-(2*n+1)`
-/

namespace A389320.P8964074238950008396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A330707 (n + 2)).toNat - (2 * n + 1 : ℤ)

end

end A389320.P8964074238950008396

namespace A389320

/-- `A004526(A330707(n+2))-(2*n+1)` -/
def P8964074238950008396.Spec : Prop :=
  ∀ n, P8964074238950008396.a n = A389320 n

end A389320

/-! ## A389320.P13854911771183901455

`A057360(A386480(n))`
-/

namespace A389320.P13854911771183901455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A386480 n).toNat

end

end A389320.P13854911771183901455

namespace A389320

/-- `A057360(A386480(n))` -/
def P13854911771183901455.Spec : Prop :=
  ∀ n, P13854911771183901455.a n = A389320 n

end A389320

/-!
# A389321: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+2*k-1,n-k).

The programs for A389321, there is no canonical definition to state claims against.
-/

/-! ## A389321.P11990191331494671515

`((5*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4))!+1)/e` with `a(0)=1, a(1)=1, a(2)=7, a(3)=37, a(4)=203`
-/

namespace A389321.P11990191331494671515
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 7, 37, 203] fun n a =>
  (Nat.factorial (SequenceMachineLib.roundAway (5 * a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3) - a (n - 4))).toNat + 1 : ℝ) / Real.exp 1

end

end A389321.P11990191331494671515

/-!
# A389322: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+3*k-1,n-k).

The programs for A389322, there is no canonical definition to state claims against.
-/

/-! ## A389322.P12621583596118868882

`A124741(A000172(n))`
-/

namespace A389322.P12621583596118868882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A000172 n).toNat

end

end A389322.P12621583596118868882

/-!
# A389323: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+4*k-1,n-k).

The programs for A389323, there is no canonical definition to state claims against.
-/

/-! ## A389323.P11155334289716880148

`A124122(∑{d}[∏{p}[n+1, #], (n+1)/#])%A163493(3*n+1)`
-/

namespace A389323.P11155334289716880148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124122 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat) (A163493 (3 * n + 1))

end

end A389323.P11155334289716880148

/-!
# A389325: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k) * binomial(n+k-1,n-2*k).

The programs for A389325, there is no canonical definition to state claims against.
-/

/-! ## A389325.P17981126694157730891

`A033182(A055991(n+2))`
-/

namespace A389325.P17981126694157730891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A055991 (n + 2)).toNat

end

end A389325.P17981126694157730891

/-! ## A389325.P5376370238727826057

`A002330(A006153(n))-n`
-/

namespace A389325.P5376370238727826057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A006153 n).toNat - (n : ℤ)

end

end A389325.P5376370238727826057

/-!
# A389326: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k) * binomial(n+2*k-1,n-2*k).

The programs for A389326, there is no canonical definition to state claims against.
-/

/-! ## A389326.P16155604922675611135

`A004136(A351013(n))-A004111(n)`
-/

namespace A389326.P16155604922675611135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004136 (A351013 n).toNat - A004111 n

end

end A389326.P16155604922675611135

/-! ## A389326.P8469577224863802786

`A304628(n)-A060576(A370245(n))`
-/

namespace A389326.P8469577224863802786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304628 n - A060576 (A370245 n).toNat

end

end A389326.P8469577224863802786

/-!
# A389329: a(n) = Sum_{k=0..floor(n/3)} binomial(n,k) * binomial(n+k-1,n-3*k).

The programs for A389329, there is no canonical definition to state claims against.
-/

/-! ## A389329.P5596459211625339383

`A085860(A023426(n)*A110286(n))`
-/

namespace A389329.P5596459211625339383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A023426 n * A110286 n).toNat

end

end A389329.P5596459211625339383

/-! ## A389329.P5307145337914129294

`A003056(A074422(n+1)*A342818(n+1))`
-/

namespace A389329.P5307145337914129294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A074422 (n + 1) * A342818 (n + 1)).toNat

end

end A389329.P5307145337914129294

/-!
# A389330: Exponential unitary deficient numbers that have at least one exponential unitary abundant divisor.

The programs for A389330, there is no canonical definition to state claims against.
-/

/-! ## A389330.P2869829785305751540

`∪[A389297(n+1), A391090(n+1)]`
-/

namespace A389330.P2869829785305751540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389330.P2869829785305751540

/-! ## A389330.P18059383915972137763

`A389331(n+1)+A216599(A002327(n+1))`
-/

namespace A389330.P18059383915972137763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389331 (n + 1) + A216599 (A002327 (n + 1)).toNat

end

end A389330.P18059383915972137763

/-! ## A389330.P16425648329669190658

`A389331(n+1)%A134947(A176246(n+3))`
-/

namespace A389330.P16425648329669190658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389331 (n + 1)) (A134947 (A176246 (n + 3)).toNat)

end

end A389330.P16425648329669190658

/-! ## A389330.P2791060807175155856

`A270096(A019546(3*n+4))*A389331(n+1)`
-/

namespace A389330.P2791060807175155856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (A019546 (3 * n + 4)).toNat * A389331 (n + 1)

end

end A389330.P2791060807175155856

/-! ## A389330.P15966098437949905806

`A053814(A389331(n+1))`
-/

namespace A389330.P15966098437949905806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053814 (A389331 (n + 1)).toNat

end

end A389330.P15966098437949905806

/-!
# A389331: Primitive terms in A389330: powerful numbers that are exponential unitary deficient and having at least one exponential unitary abundant divisor.

The programs for A389331, there is no canonical definition to state claims against.
-/

/-! ## A389331.P2251706647793183113

`∪[A389298(n+1), A391091(n+1)]`
-/

namespace A389331.P2251706647793183113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P2251706647793183113

/-! ## A389331.P14713418505282937996

`∩[A192636(n+1), A389330(n+1)]`
-/

namespace A389331.P14713418505282937996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P14713418505282937996

/-! ## A389331.P6617681319017819029

`∩[A286708(n+1), A389330(n+1)]`
-/

namespace A389331.P6617681319017819029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P6617681319017819029

/-! ## A389331.P14422922194963661488

`∩[A320966(n+1), A389330(n+1)]`
-/

namespace A389331.P14422922194963661488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P14422922194963661488

/-! ## A389331.P6983075444228469155

`∩[A356871(n+1), A389330(n+1)]`
-/

namespace A389331.P6983075444228469155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P6983075444228469155

/-! ## A389331.P4749879635206324239

`∩[A363169(n+1), A389330(n+1)]`
-/

namespace A389331.P4749879635206324239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P4749879635206324239

/-! ## A389331.P17520336676114995793

`∩[A363216(n+1), A389330(n+1)]`
-/

namespace A389331.P17520336676114995793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P17520336676114995793

/-! ## A389331.P7307799616340143871

`∩[A372404(n+1), A389330(n+1)]`
-/

namespace A389331.P7307799616340143871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P7307799616340143871

/-! ## A389331.P11961600735766219616

`∩[A389330(n+1), A390010(n+1)]`
-/

namespace A389331.P11961600735766219616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P11961600735766219616

/-! ## A389331.P4897404494488688358

`∩[A389330(n+1), A390950(n+1)]`
-/

namespace A389331.P4897404494488688358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P4897404494488688358

/-! ## A389331.P17681928503813691509

`∩[A389330(n+1), A395197(n+1)]`
-/

namespace A389331.P17681928503813691509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389331.P17681928503813691509

/-!
# A389337: Number of chiral pairs of asymmetric polyominoes with n hexagonal cells of the hyperbolic regular tiling with Schläfli symbol {6,oo}.

The programs for A389337, there is no canonical definition to state claims against.
-/

/-! ## A389337.P3419979354849483695

`A025462(A161905(n+2))`
-/

namespace A389337.P3419979354849483695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (A161905 (n + 2)).toNat

end

end A389337.P3419979354849483695

/-! ## A389337.P17390421705741829768

`A300192(A067142(n))*A327421(n+1)`
-/

namespace A389337.P17390421705741829768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300192 (A067142 n).toNat * A327421 (n + 1)

end

end A389337.P17390421705741829768

/-! ## A389337.P10246132346755897213

`A000001(A367143(n+1))*A367144(n)`
-/

namespace A389337.P10246132346755897213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A367143 (n + 1)).toNat * A367144 n

end

end A389337.P10246132346755897213

/-!
# A389338: Final digit of Carmichael(n).

The programs for A389338, there is no canonical definition to state claims against.
-/

/-! ## A389338.P16186620706579212084

`A002997(n+1)%10`
-/

namespace A389338.P16186620706579212084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002997 (n + 1)) 10

end

end A389338.P16186620706579212084

/-!
# A389341: Powers k^m, m > 1, where k is an Achilles number such that A053669(k) < A006530(k).

The programs for A389341, there is no canonical definition to state claims against.
-/

/-! ## A389341.P9388694021842215122

`record[A386434(A326700(n+1))²]`
-/

namespace A389341.P9388694021842215122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (A326700 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389341.P9388694021842215122

/-! ## A389341.P4246325697037465216

`A069821(A386434(n+1))`
-/

namespace A389341.P4246325697037465216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069821 (A386434 (n + 1)).toNat

end

end A389341.P4246325697037465216

/-! ## A389341.P7502218457868717072

`A386434(n+1)^A018892(A116581(n+1))`
-/

namespace A389341.P7502218457868717072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386434 (n + 1) : ℚ) ^ (A018892 (A116581 (n + 1)).toNat : ℤ)

end

end A389341.P7502218457868717072

/-!
# A389343: Number of integer partitions of n with parts colored by {0, 1, 2} such that the sum of colors is congruent to 0 (mod 3).

The programs for A389343, there is no canonical definition to state claims against.
-/

/-! ## A389343.P17273970099056340101

`A390208(n)+A035377(n)`
-/

namespace A389343.P17273970099056340101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390208 n + A035377 n

end

end A389343.P17273970099056340101

/-! ## A389343.P13829421936507507933

`A000716(n)-2*A390208(n)`
-/

namespace A389343.P13829421936507507933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n - 2 * A390208 n

end

end A389343.P13829421936507507933

/-! ## A389343.P6439037614189280681

`A350969(A284482(n))`
-/

namespace A389343.P6439037614189280681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A284482 n).toNat

end

end A389343.P6439037614189280681

/-!
# A389344: Irregular triangle read by rows: T(n,k) is the number of partitions of n into k distinct parts containing k as a part.

The programs for A389344, there is no canonical definition to state claims against.
-/

/-! ## A389344.P16184599635478979855

`A011747(A232801(n))`
-/

namespace A389344.P16184599635478979855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011747 (A232801 n).toNat

end

end A389344.P16184599635478979855

/-! ## A389344.P12737316960413871568

`A156595(A105614(n+1))`
-/

namespace A389344.P12737316960413871568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A105614 (n + 1)).toNat

end

end A389344.P12737316960413871568

/-! ## A389344.P17535299792666655719

`A365495(A334271(n+1))`
-/

namespace A389344.P17535299792666655719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365495 (A334271 (n + 1)).toNat

end

end A389344.P17535299792666655719

/-! ## A389344.P10538080608759132048

`A373260(A085589(n+4))`
-/

namespace A389344.P10538080608759132048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (A085589 (n + 4)).toNat

end

end A389344.P10538080608759132048

/-! ## A389344.P14619412781140490654

`A048793(A365101(n+4))%2`
-/

namespace A389344.P14619412781140490654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048793 (A365101 (n + 4)).toNat) 2

end

end A389344.P14619412781140490654

/-!
# A389345: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 / (1 - x)^3) ).

The programs for A389345, there is no canonical definition to state claims against.
-/

/-! ## A389345.P17536104328852302454

`A192262(A397978(n))`
-/

namespace A389345.P17536104328852302454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192262 (A397978 n).toNat

end

end A389345.P17536104328852302454

/-! ## A389345.P7205590611740069895

`A352130(A386847(n+2))`
-/

namespace A389345.P7205590611740069895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A386847 (n + 2)).toNat

end

end A389345.P7205590611740069895

/-! ## A389345.P18153886480649669599

`A321861(A030019(n))+A002851(n)`
-/

namespace A389345.P18153886480649669599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321861 (A030019 n).toNat + A002851 n

end

end A389345.P18153886480649669599

/-!
# A389346: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 / (1 - x)^4) ).

The programs for A389346, there is no canonical definition to state claims against.
-/

/-! ## A389346.P13248807482413368599

`or(A241467(A299746(n+1)), A357642(n))`
-/

namespace A389346.P13248807482413368599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241467 (A299746 (n + 1)).toNat) (A357642 n)

end

end A389346.P13248807482413368599

/-!
# A389351: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 / (1 - x)^5) ).

The programs for A389351, there is no canonical definition to state claims against.
-/

/-! ## A389351.P9258996616750726008

`A001462(A111004(n))-A237413(n+1)`
-/

namespace A389351.P9258996616750726008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A111004 n).toNat - A237413 (n + 1)

end

end A389351.P9258996616750726008

/-! ## A389351.P15105659090749897721

`A002024(A015448(n))-A334967(A174715(2*n))`
-/

namespace A389351.P15105659090749897721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A015448 n).toNat - A334967 (A174715 (2 * n)).toNat

end

end A389351.P15105659090749897721

/-!
# A389354: a(n) = (A388289(n)^2 - 1)/(3*2^5), for n >= 1.

The programs for A389354, there is no canonical definition to state claims against.
-/

/-! ## A389354.P9871098314784541172

`(A388289(n+1)²-1)/(3*2^5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389354.P9871098314784541172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388289 (n + 1) ^ 2 - 1 : ℚ) / (3 * 2 ^ 5 : ℚ)

end

end A389354.P9871098314784541172

/-!
# A389355: a(n) = (A388291(n)^2 - 1)/24.

The programs for A389355, there is no canonical definition to state claims against.
-/

/-! ## A389355.P3644733101609586586

`(A388291(n+1)²-1)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389355.P3644733101609586586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388291 (n + 1) ^ 2 - 1 : ℚ) / 24

end

end A389355.P3644733101609586586

/-! ## A389355.P8535544411390119314

`A008742(A388291(n+1))`
-/

namespace A389355.P8535544411390119314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A388291 (n + 1)).toNat

end

end A389355.P8535544411390119314

/-!
# A389358: a(n) is the least k such that k + n * A001414(k) is prime.

The programs for A389358, there is no canonical definition to state claims against.
-/

/-! ## A389358.P14441559997058930311

`A381805(A050492(n+1))`
-/

namespace A389358.P14441559997058930311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381805 (A050492 (n + 1)).toNat

end

end A389358.P14441559997058930311

/-! ## A389358.P15490232080821304744

`A381805(A110723(n+1))`
-/

namespace A389358.P15490232080821304744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381805 (A110723 (n + 1)).toNat

end

end A389358.P15490232080821304744

/-!
# A389361: a(n) = Sum_{k=0..n} binomial(4*n+k,n-k).

The programs for A389361, there is no canonical definition to state claims against.
-/

/-! ## A389361.P1300918098999290108

`A125171(A139277(n))`
-/

namespace A389361.P1300918098999290108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A139277 n).toNat

end

end A389361.P1300918098999290108

/-! ## A389361.P2175010194071063930

`A193667(A139274(n))`
-/

namespace A389361.P2175010194071063930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A139274 n).toNat

end

end A389361.P2175010194071063930

/-! ## A389361.P11332571966086653010

`A193923(A194268(n))`
-/

namespace A389361.P11332571966086653010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A194268 n).toNat

end

end A389361.P11332571966086653010

/-! ## A389361.P13630365445293926940

`A193924(A125201(n+1))`
-/

namespace A389361.P13630365445293926940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (A125201 (n + 1)).toNat

end

end A389361.P13630365445293926940

/-!
# A389362: Number of divisors d of n such that d^2 - 1 is not relatively prime to n.

The programs for A389362, there is no canonical definition to state claims against.
-/

/-! ## A389362.P15992466576287737005

`A000005(n+1)-A386476(n+1)`
-/

namespace A389362.P15992466576287737005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A386476 (n + 1)

end

end A389362.P15992466576287737005

/-! ## A389362.P357176470290124164

`A325169(A076078(n+1))+A065205(n+1)`
-/

namespace A389362.P357176470290124164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A076078 (n + 1)).toNat + A065205 (n + 1)

end

end A389362.P357176470290124164

/-! ## A389362.P16310075687896167957

`A124762(A087207(n+1))+(∑{e}[n+1, #]!/∏{e}[n+1, #!])%(n+1)`
-/

namespace A389362.P16310075687896167957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A087207 (n + 1)).toNat + Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))) (n + 1 : ℤ)

end

end A389362.P16310075687896167957

/-! ## A389362.P7035089404624146924

`A001221(C(A325470(n+1)+n, n))`
-/

namespace A389362.P7035089404624146924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A325470 (n + 1) + (n : ℤ)).toNat n)

end

end A389362.P7035089404624146924

/-! ## A389362.P5062156948922163827

`A124761(A280547(n+2))+A001221(n+1)`
-/

namespace A389362.P5062156948922163827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A280547 (n + 2)).toNat + A001221 (n + 1)

end

end A389362.P5062156948922163827

/-!
# A389363: a(n) is the number of isosceles trapezoids in a triangular grid of side length n.

The programs for A389363, the canonical program `A389363.P4317471653549527365` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389363 has offset 1).

The definition of A389363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389363.P4317471653549527365

`floor(((n+1)²-1)*(3*(n+1)²+4*(n+1)-3)/16)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389363

/-- `floor(((n+1)²-1)*(3*(n+1)²+4*(n+1)-3)/16)` -/
def P4317471653549527365.Spec : Prop :=
  ∀ n, P4317471653549527365.a n = A389363 (n + 1)

theorem P4317471653549527365.correct : P4317471653549527365.Spec := by
  intro n
  simp only [A389363, Nat.add_sub_cancel]

end A389363

/-! ## A389363.P13592743731976629412

`∑[∑[∑[a(n-2)+9]]]` with `a(0)=0, a(1)=3`
-/

namespace A389363.P13592743731976629412
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f3 =>
  f3 (n - 2) + 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389363.P13592743731976629412

namespace A389363

/-- `∑[∑[∑[a(n-2)+9]]]` -/
def P13592743731976629412.Spec : Prop :=
  ∀ n, (P13592743731976629412.a n : ℤ) = A389363 (n + 1)

end A389363

/-! ## A389363.P12457485774311673875

`∑[∑[∑[∑[floor(a(n-2))]]]]` with `a(0)=0, a(1)=3, a(2)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A389363.P12457485774311673875
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f4 =>
  f4 (n - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389363.P12457485774311673875

namespace A389363

/-- `∑[∑[∑[∑[floor(a(n-2))]]]]` -/
def P12457485774311673875.Spec : Prop :=
  ∀ n, (P12457485774311673875.a n : ℤ) = A389363 (n + 1)

end A389363

/-! ## A389363.P15042194854641673043

`3*∑[n*∑[n]-a(n-1)]` with `a(0)=0`
-/

namespace A389363.P15042194854641673043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A389363.P15042194854641673043

namespace A389363

/-- `3*∑[n*∑[n]-a(n-1)]` -/
def P15042194854641673043.Spec : Prop :=
  ∀ n, P15042194854641673043.a n = A389363 (n + 1)

end A389363

/-! ## A389363.P11931976511977931921

`∑[3*A002717(n)]`
-/

namespace A389363.P11931976511977931921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389363.P11931976511977931921

namespace A389363

/-- `∑[3*A002717(n)]` -/
def P11931976511977931921.Spec : Prop :=
  ∀ n, P11931976511977931921.a n = A389363 (n + 1)

end A389363

/-! ## A389363.P15182691514166136389

`A070893(n+1)+A001296(n)-A006578(n+1)`
-/

namespace A389363.P15182691514166136389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (n + 1) + (A001296 n - A006578 (n + 1))

end

end A389363.P15182691514166136389

namespace A389363

/-- `A070893(n+1)+A001296(n)-A006578(n+1)` -/
def P15182691514166136389.Spec : Prop :=
  ∀ n, P15182691514166136389.a n = A389363 (n + 1)

end A389363

/-! ## A389363.P9681237039496908003

`Δ[A176646(n+1)]`
-/

namespace A389363.P9681237039496908003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389363.P9681237039496908003

namespace A389363

/-- `Δ[A176646(n+1)]` -/
def P9681237039496908003.Spec : Prop :=
  ∀ n, P9681237039496908003.a n = A389363 (n + 1)

end A389363

/-! ## A389363.P10318326420668182622

`A176646(n+2)-A176646(n+1)`
-/

namespace A389363.P10318326420668182622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176646 (n + 2) - A176646 (n + 1)

end

end A389363.P10318326420668182622

namespace A389363

/-- `A176646(n+2)-A176646(n+1)` -/
def P10318326420668182622.Spec : Prop :=
  ∀ n, P10318326420668182622.a n = A389363 (n + 1)

end A389363

/-! ## A389363.P10752666882873359493

`A131479(n+1)-(A011863(n)+A004526(n+1))`
-/

namespace A389363.P10752666882873359493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 (n + 1) - (A011863 n + A004526 (n + 1))

end

end A389363.P10752666882873359493

namespace A389363

/-- `A131479(n+1)-(A011863(n)+A004526(n+1))` -/
def P10752666882873359493.Spec : Prop :=
  ∀ n, P10752666882873359493.a n = A389363 (n + 1)

end A389363

/-!
# A389364: Harshad numbers h (terms of A005349) such that A389235(h) + 2 = A055642(h) and A385105(h) is a 2 digit number with digit sum 10.

The programs for A389364, there is no canonical definition to state claims against.
-/

/-! ## A389364.P9128685131727955540

`∩[A235591(n+1), A389220(n+1)]`
-/

namespace A389364.P9128685131727955540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389364.P9128685131727955540

/-!
# A389365: Smallest integer > 1 whose congruence speed never stabilizes in the radix-n numeral system.

The programs for A389365, there is no canonical definition to state claims against.
-/

/-! ## A389365.P14697555886442854105

`A007947(n+2)-A124763(A333651(n+2))`
-/

namespace A389365.P14697555886442854105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) - A124763 (A333651 (n + 2)).toNat

end

end A389365.P14697555886442854105

/-! ## A389365.P12468356729196948172

`∏{p}[A006472(A296150(n+1))!%5+n+1, #]`
-/

namespace A389365.P12468356729196948172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006472 (A296150 (n + 1)).toNat).toNat % 5 + n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A389365.P12468356729196948172

/-! ## A389365.P9292968130800328766

`A007947(A159586(A056135(n+2)))`
-/

namespace A389365.P9292968130800328766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A159586 (A056135 (n + 2)).toNat).toNat

end

end A389365.P9292968130800328766

/-! ## A389365.P13157926390834257765

`A088835(n+2)-A066283(A206497(n+1))`
-/

namespace A389365.P13157926390834257765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088835 (n + 2) - A066283 (A206497 (n + 1)).toNat

end

end A389365.P13157926390834257765

/-! ## A389365.P8605285907790132396

`A007947(n+2)-A380958(A037289(n+1))`
-/

namespace A389365.P8605285907790132396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) - A380958 (A037289 (n + 1)).toNat

end

end A389365.P8605285907790132396

/-!
# A389366: Indices of normal subgroups of the modular group (without repetition).

The programs for A389366, there is no canonical definition to state claims against.
-/

/-! ## A389366.P15882992488271632339

`∩[A226537(n+1), A280681(n+1)]`
-/

namespace A389366.P15882992488271632339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389366.P15882992488271632339

/-! ## A389366.P15167877329424980312

`record[gcd(A334953(n+1), A334985(n+3))]`
-/

namespace A389366.P15167877329424980312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334953 (n + 1)) (A334985 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389366.P15167877329424980312

/-!
# A389367: Semilengths of the Dyck natural numbers.

The programs for A389367, there is no canonical definition to state claims against.
-/

/-! ## A389367.P11293145281522964022

`A252464(A302696(n+1)%A107633(n+1))`
-/

namespace A389367.P11293145281522964022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (Int.tmod (A302696 (n + 1)) (A107633 (n + 1))).toNat

end

end A389367.P11293145281522964022

/-! ## A389367.P17929567220601076715

`A252464(A302696(n+1))%A353432(3*(n+1))`
-/

namespace A389367.P17929567220601076715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (A302696 (n + 1)).toNat) (A353432 (3 * (n + 1)))

end

end A389367.P17929567220601076715

/-! ## A389367.P15017131322214706875

`A252464(A004277(n))%A101078(n+4)`
-/

namespace A389367.P15017131322214706875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (A004277 n).toNat) (A101078 (n + 4))

end

end A389367.P15017131322214706875

/-! ## A389367.P4019439273183187681

`A252464(A302696(n+1))%A236066(n+1)`
-/

namespace A389367.P4019439273183187681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (A302696 (n + 1)).toNat) (A236066 (n + 1))

end

end A389367.P4019439273183187681

/-! ## A389367.P13894892548406757601

`A075167(2^n)`
-/

namespace A389367.P13894892548406757601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (2 ^ n)

end

end A389367.P13894892548406757601

/-!
# A389368: a(n) = R(A007310(n)), where R(k) = (5*k+1)/(2^r*3^s), with r and s as large as possible, that is R(k) = A065330(A016861(k)).

The programs for A389368, there is no canonical definition to state claims against.
-/

/-! ## A389368.P2923439386149538919

`A332018(A007310(n+1))`
-/

namespace A389368.P2923439386149538919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332018 (A007310 (n + 1)).toNat

end

end A389368.P2923439386149538919

/-! ## A389368.P16850833522322116952

`A332018(A038179(n+2))`
-/

namespace A389368.P16850833522322116952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332018 (A038179 (n + 2)).toNat

end

end A389368.P16850833522322116952

/-!
# A389371: Number of distinct branching structures with up to 3 branches per node after n generations.

The programs for A389371, there is no canonical definition to state claims against.
-/

/-! ## A389371.P16036556443964223393

`A000125(a(n-1))` with `a(0)=1`
-/

namespace A389371.P16036556443964223393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000125 (a (n - 1)).toNat

end

end A389371.P16036556443964223393

/-!
# A389372: Expansion of g/(1 + x^3*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A389372, there is no canonical definition to state claims against.
-/

/-! ## A389372.P1093777368261046486

`A002293(n)-A104414(A000166(n))`
-/

namespace A389372.P1093777368261046486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n - A104414 (A000166 n).toNat

end

end A389372.P1093777368261046486

/-!
# A389373: Expansion of g.f.: x/((1-x^2)^3*(1-2*x)).

The programs for A389373, the canonical program `A389373.P11873220984344781085` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389373 has offset 0).

The definition of A389373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x-3x^2+6x^3+3x^4-6x^5-x^6+2x^7))` (program `A389373.P11873220984344781085`, by `A389373.P11873220984344781085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389373.P11873220984344781085

`ogf(x/(1-2x-3x^2+6x^3+3x^4-6x^5-x^6+2x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389373

/-- `ogf(x/(1-2x-3x^2+6x^3+3x^4-6x^5-x^6+2x^7))` -/
def P11873220984344781085.Spec : Prop :=
  ∀ n, P11873220984344781085.a n = A389373 n

theorem P11873220984344781085.correct : P11873220984344781085.Spec := by
  intro n
  simp only [A389373]

end A389373

/-!
# A389374: Powers k^m, m > 1, where k is an Achilles number that has a primorial kernel but is not a product of primorials.

The programs for A389374, there is no canonical definition to state claims against.
-/

/-! ## A389374.P5454129081818460486

`∩[A380452(n+1), A389226(n+1)]`
-/

namespace A389374.P5454129081818460486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P5454129081818460486

/-! ## A389374.P13600927049085511436

`∩[A380452(n+1), A391376(n+1)]`
-/

namespace A389374.P13600927049085511436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P13600927049085511436

/-! ## A389374.P14890022725263402039

`∩[A304250(n+1), A389814(n+1)]`
-/

namespace A389374.P14890022725263402039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P14890022725263402039

/-! ## A389374.P494385006350817356

`∩[A380446(n+1), A389814(n+1)]`
-/

namespace A389374.P494385006350817356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P494385006350817356

/-! ## A389374.P12427176231935351802

`∩[A380452(n+1), A389814(n+1)]`
-/

namespace A389374.P12427176231935351802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P12427176231935351802

/-! ## A389374.P17557445647138904073

`∩[A389226(n+1), A389814(n+1)]`
-/

namespace A389374.P17557445647138904073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P17557445647138904073

/-! ## A389374.P11740964036494447809

`∩[A389312(n+1), A389814(n+1)]`
-/

namespace A389374.P11740964036494447809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P11740964036494447809

/-! ## A389374.P4075514679324634689

`∩[A380452(n+1), A383394(n+1)]`
-/

namespace A389374.P4075514679324634689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P4075514679324634689

/-! ## A389374.P7652767799669387113

`∩[A369420(n+1), A383394(n+1)]`
-/

namespace A389374.P7652767799669387113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P7652767799669387113

/-! ## A389374.P7721309462130600203

`∩[A369420(n+1), A389226(n+1)]`
-/

namespace A389374.P7721309462130600203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P7721309462130600203

/-! ## A389374.P2670027872873084137

`∩[A369420(n+1), A389814(n+1)]`
-/

namespace A389374.P2670027872873084137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P2670027872873084137

/-! ## A389374.P8985093249915688128

`∩[A369420(n+1), A391376(n+1)]`
-/

namespace A389374.P8985093249915688128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389374.P8985093249915688128

/-!
# A389376: a(n) = Sum_{k=0..floor(n/3)} binomial(n+k-1,k) * binomial(n-1,n-3*k).

The programs for A389376, there is no canonical definition to state claims against.
-/

/-! ## A389376.P823761130139098969

`A157897(2*n²)`
-/

namespace A389376.P823761130139098969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157897 (2 * n ^ 2)

end

end A389376.P823761130139098969

/-!
# A389378: a(n) = Sum_{k=0..floor(n/3)} binomial(n+k-1,k) * binomial(n+2*k-1,n-3*k).

The programs for A389378, there is no canonical definition to state claims against.
-/

/-! ## A389378.P15795747496714271291

`A102830(A239872(2*n+3))-A239866(3*n+2)`
-/

namespace A389378.P15795747496714271291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102830 (A239872 (2 * n + 3)).toNat - A239866 (3 * n + 2)

end

end A389378.P15795747496714271291

/-!
# A389384: Triangle read by rows: T(n,k) is the number of k-factors of the n-dimensional hypercube graph, 0 <= k <= n.

The programs for A389384, there is no canonical definition to state claims against.
-/

/-! ## A389384.P15179954463882528690

`A005271(A114202(n))`
-/

namespace A389384.P15179954463882528690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005271 (A114202 n).toNat

end

end A389384.P15179954463882528690

/-! ## A389384.P11895914137213427198

`A088275(A091378(n))`
-/

namespace A389384.P11895914137213427198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088275 (A091378 n).toNat

end

end A389384.P11895914137213427198

/-! ## A389384.P14361327579171780216

`A238790(A045912(n))`
-/

namespace A389384.P14361327579171780216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (A045912 n).toNat

end

end A389384.P14361327579171780216

/-! ## A389384.P2036612629721655301

`A302235(A173043(n))`
-/

namespace A389384.P2036612629721655301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302235 (A173043 n).toNat

end

end A389384.P2036612629721655301

/-! ## A389384.P5461896491091518084

`A237870(A259471(n))`
-/

namespace A389384.P5461896491091518084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237870 (A259471 n).toNat

end

end A389384.P5461896491091518084

/-!
# A389385: Number of 2-factors of the n-dimensional hypercube graph.

The programs for A389385, there is no canonical definition to state claims against.
-/

/-! ## A389385.P5283004028217156011

`A060144(eq[1, and(n-1, 1-n)%3]^A320813(n))`
-/

namespace A389385.P5283004028217156011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land ((n : ℤ) - 1) (1 - (n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A320813 n : ℤ))).toNat

end

end A389385.P5283004028217156011

/-!
# A389386: Number of 3-factors of the n-dimensional hypercube graph.

The programs for A389386, there is no canonical definition to state claims against.
-/

/-! ## A389386.P17108827344235286689

`A380211(C(n+3, 6))`
-/

namespace A389386.P17108827344235286689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380211 (Nat.choose (n + 3) 6)

end

end A389386.P17108827344235286689

/-!
# A389391: Records in A389240.

The programs for A389391, there is no canonical definition to state claims against.
-/

/-! ## A389391.P1856607118999163293

`record[A389240(n+1)]`
-/

namespace A389391.P1856607118999163293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389391.P1856607118999163293

/-! ## A389391.P7116912185949785236

`A389240(A386819(n+1))`
-/

namespace A389391.P7116912185949785236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389240 (A386819 (n + 1)).toNat

end

end A389391.P7116912185949785236

/-!
# A389392: a(n) is the number of 4 element sets of distinct integer sided trapezoids whose base angles are 60 degrees that fill an equilateral triangular grid of side n units.

The programs for A389392, there is no canonical definition to state claims against.
-/

/-! ## A389392.P9984882581486424240

`Δ[A391453(n+1)]`
-/

namespace A389392.P9984882581486424240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389392.P9984882581486424240

/-! ## A389392.P6478850199029013359

`A391453(n+2)-A391453(n+1)`
-/

namespace A389392.P6478850199029013359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391453 (n + 2) - A391453 (n + 1)

end

end A389392.P6478850199029013359

/-!
# A389394: Powers k^m, m > 1, where k is neither squarefree nor squareful and A006530(k) < A053669(k).

The programs for A389394, there is no canonical definition to state claims against.
-/

/-! ## A389394.P4854381755776221515

`∪[A389397(n+1), A389682(n+1)]`
-/

namespace A389394.P4854381755776221515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P4854381755776221515

/-! ## A389394.P8362532749280162296

`∩[A055932(n+1), A392424(n+1)]`
-/

namespace A389394.P8362532749280162296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P8362532749280162296

/-! ## A389394.P990668424534038555

`∩[A304250(n+1), A392424(n+1)]`
-/

namespace A389394.P990668424534038555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P990668424534038555

/-! ## A389394.P7291827019585837706

`∩[A363814(n+1), A392424(n+1)]`
-/

namespace A389394.P7291827019585837706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P7291827019585837706

/-! ## A389394.P13410888492547790741

`∩[A369374(n+1), A392424(n+1)]`
-/

namespace A389394.P13410888492547790741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P13410888492547790741

/-! ## A389394.P12124494765867874982

`∩[A380446(n+1), A392424(n+1)]`
-/

namespace A389394.P12124494765867874982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P12124494765867874982

/-! ## A389394.P6306732089465700844

`∩[A387901(n+1), A392424(n+1)]`
-/

namespace A389394.P6306732089465700844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P6306732089465700844

/-! ## A389394.P5506057641045217602

`∩[A389312(n+1), A392424(n+1)]`
-/

namespace A389394.P5506057641045217602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P5506057641045217602

/-! ## A389394.P8072023829676675717

`∩[A055932(n+1), A386762(n+1)]`
-/

namespace A389394.P8072023829676675717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P8072023829676675717

/-! ## A389394.P1249742633754886606

`∩[A304250(n+1), A386762(n+1)]`
-/

namespace A389394.P1249742633754886606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P1249742633754886606

/-! ## A389394.P703540902437736607

`∩[A363814(n+1), A386762(n+1)]`
-/

namespace A389394.P703540902437736607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P703540902437736607

/-! ## A389394.P15068753225520717291

`∩[A369374(n+1), A386762(n+1)]`
-/

namespace A389394.P15068753225520717291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P15068753225520717291

/-! ## A389394.P939494642636392024

`∩[A380446(n+1), A386762(n+1)]`
-/

namespace A389394.P939494642636392024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P939494642636392024

/-! ## A389394.P6702334718043038935

`∩[A386762(n+1), A387901(n+1)]`
-/

namespace A389394.P6702334718043038935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P6702334718043038935

/-! ## A389394.P8332780197223328353

`∩[A386762(n+1), A389312(n+1)]`
-/

namespace A389394.P8332780197223328353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P8332780197223328353

/-! ## A389394.P9487391031900281476

`∩[A389312(n+1), A390823(n+1)]`
-/

namespace A389394.P9487391031900281476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389394.P9487391031900281476

/-!
# A389395: Sequence which is the partial sums of the proper divisors of its own elements.

The programs for A389395, there is no canonical definition to state claims against.
-/

/-! ## A389395.P5566993578908925369

`A389613(n)+a(n-1)` with `a(0)=1`
-/

namespace A389395.P5566993578908925369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A389613 n + a (n - 1)

end

end A389395.P5566993578908925369

/-!
# A389396: Numbers k such that binomial(2*k,k) is divisible by (k+1)^2*(k+2)^2.

The programs for A389396, there is no canonical definition to state claims against.
-/

/-! ## A389396.P4209730880793497950

`A004526(A056068(2*(n+1)))`
-/

namespace A389396.P4209730880793497950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056068 (2 * (n + 1))).toNat

end

end A389396.P4209730880793497950

/-! ## A389396.P14046233724012893657

`A006370(A056068(2*n+1)*A175782(n))`
-/

namespace A389396.P14046233724012893657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A056068 (2 * n + 1) * A175782 n).toNat

end

end A389396.P14046233724012893657

/-!
# A389397: Powers k^m, m > 1, where k is neither squarefree nor squareful and is a product of primorials.

The programs for A389397, there is no canonical definition to state claims against.
-/

/-! ## A389397.P1712770497759892425

`∩[A368681(n+1), A389394(n+1)]`
-/

namespace A389397.P1712770497759892425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P1712770497759892425

/-! ## A389397.P6571685369200830562

`∩[A368682(n+1), A389394(n+1)]`
-/

namespace A389397.P6571685369200830562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P6571685369200830562

/-! ## A389397.P13635050888370891759

`∩[A389394(n+1), A390290(n+1)]`
-/

namespace A389397.P13635050888370891759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P13635050888370891759

/-! ## A389397.P4766405986976316188

`∩[A364930(n+1), A389394(n+1)]`
-/

namespace A389397.P4766405986976316188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P4766405986976316188

/-! ## A389397.P1427437994049966895

`∩[A181800(n+1), A389394(n+1)]`
-/

namespace A389397.P1427437994049966895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P1427437994049966895

/-! ## A389397.P11663812487398146805

`∩[A363280(n+1), A389394(n+1)]`
-/

namespace A389397.P11663812487398146805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P11663812487398146805

/-! ## A389397.P3360070463666936098

`∩[A364710(n+1), A389394(n+1)]`
-/

namespace A389397.P3360070463666936098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P3360070463666936098

/-! ## A389397.P11067859582817237659

`∩[A025487(n+1), A389394(n+1)]`
-/

namespace A389397.P11067859582817237659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P11067859582817237659

/-! ## A389397.P9402562986463705931

`∩[A025487(n+1), A392424(n+1)]`
-/

namespace A389397.P9402562986463705931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P9402562986463705931

/-! ## A389397.P12130358070269572283

`∩[A181800(n+1), A392424(n+1)]`
-/

namespace A389397.P12130358070269572283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389397.P12130358070269572283

/-!
# A389399: Number of distinct positive integers reachable from n by successively dividing a contiguous substring of digits by 2, including n itself.

The programs for A389399, there is no canonical definition to state claims against.
-/

/-! ## A389399.P2391180788206568066

`gcd(∑[A320874(n+1)], A320837(n+1))`
-/

namespace A389399.P2391180788206568066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A320837 (n + 1))

end

end A389399.P2391180788206568066

/-! ## A389399.P15064806300665868939

`A383535(A087114(n+1))`
-/

namespace A389399.P15064806300665868939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383535 (A087114 (n + 1)).toNat

end

end A389399.P15064806300665868939

/-! ## A389399.P12270864161788768185

`A001462(gcd(n+1, A390678(3*n+2)))`
-/

namespace A389399.P12270864161788768185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.gcd (n + 1 : ℤ) (A390678 (3 * n + 2)))

end

end A389399.P12270864161788768185

/-! ## A389399.P7096486776784333459

`gcd(A062504(A055205(n+1)), A141742(n))`
-/

namespace A389399.P7096486776784333459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062504 (A055205 (n + 1)).toNat) (A141742 n)

end

end A389399.P7096486776784333459

/-! ## A389399.P1071026427366409705

`gcd(A000005(A331603(n+1)), A026430(2*(n+1)))`
-/

namespace A389399.P1071026427366409705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A331603 (n + 1)).toNat) (A026430 (2 * (n + 1)))

end

end A389399.P1071026427366409705

