import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A234600: Denominators of the expectation of the process defined by randomly moving 2n balls between bins.

The programs for A234600, there is no canonical definition to state claims against.
-/

/-! ## A234600.P14462367080438019631

`A399081(2*(n+1)²)`
-/

namespace A234600.P14462367080438019631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399081 (2 * (n + 1) ^ 2)

end

end A234600.P14462367080438019631

/-! ## A234600.P7179129877174905975

`lcm(16, A091342(n+1))/16`
-/

namespace A234600.P7179129877174905975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 16 (A091342 (n + 1)) : ℚ) / 16

end

end A234600.P7179129877174905975

/-! ## A234600.P4465414545400302830

`lcm(n+1, A025547(n+1))/(n+1)`
-/

namespace A234600.P4465414545400302830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A025547 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A234600.P4465414545400302830

/-! ## A234600.P10333870274604821354

`gcd(A025535(n), A025547(n+1))`
-/

namespace A234600.P10333870274604821354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025535 n) (A025547 (n + 1))

end

end A234600.P10333870274604821354

/-! ## A234600.P13242560190107258133

`A025547(n+1)/A000265(n+1)`
-/

namespace A234600.P13242560190107258133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025547 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A234600.P13242560190107258133

/-!
# A234601: Total number of (undirected) cycles for all simple graphs of order n.

The programs for A234601, there is no canonical definition to state claims against.
-/

/-! ## A234601.P10350527622436763677

`A140106(A078634(n))`
-/

namespace A234601.P10350527622436763677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A078634 n).toNat

end

end A234601.P10350527622436763677

/-! ## A234601.P4924467522340400026

`floor(A121195(n+1)/A301071(2*n+3))`
-/

namespace A234601.P4924467522340400026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121195 (n + 1) : ℚ) / (A301071 (2 * n + 3) : ℚ)⌋

end

end A234601.P4924467522340400026

/-!
# A234603: Numbers of undirected cycles in the n X n black bishop graph.

The programs for A234603, there is no canonical definition to state claims against.
-/

/-! ## A234603.P8289275279790727026

`A234636(n+3)-A234630(n+3)`
-/

namespace A234603.P8289275279790727026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234636 (n + 3) - A234630 (n + 3)

end

end A234603.P8289275279790727026

/-!
# A234612: Self-inverse permutation of nonnegative integers, "blue-gray" code: a(n) = A003188(A193231(n)).

The programs for A234612, the canonical program `A234612.P6700788415382480833` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234612 has offset 0).

The definition of A234612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234612.P6700788415382480833

`A003188(A193231(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A234612

/-- `A003188(A193231(n))` -/
def P6700788415382480833.Spec : Prop :=
  ∀ n, P6700788415382480833.a n = A234612 n

theorem P6700788415382480833.correct : P6700788415382480833.Spec := by
  intro n
  simp only [A234612]

end A234612

/-! ## A234612.P14355052322759377627

`A193231(A006068(n))`
-/

namespace A234612.P14355052322759377627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A006068 n).toNat

end

end A234612.P14355052322759377627

namespace A234612

/-- `A193231(A006068(n))` -/
def P14355052322759377627.Spec : Prop :=
  ∀ n, P14355052322759377627.a n = A234612 n

end A234612

/-! ## A234612.P9653085555628904755

`A193231(A234613(A193231(n)))`
-/

namespace A234612.P9653085555628904755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234613 (A193231 n).toNat).toNat

end

end A234612.P9653085555628904755

namespace A234612

/-- `A193231(A234613(A193231(n)))` -/
def P9653085555628904755.Spec : Prop :=
  ∀ n, P9653085555628904755.a n = A234612 n

end A234612

/-! ## A234612.P4579833542286575884

`A064706(A234613(n))`
-/

namespace A234612.P4579833542286575884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A234613 n).toNat

end

end A234612.P4579833542286575884

namespace A234612

/-- `A064706(A234613(n))` -/
def P4579833542286575884.Spec : Prop :=
  ∀ n, P4579833542286575884.a n = A234612 n

end A234612

/-! ## A234612.P13235701224172625729

`A234613(A064707(n))`
-/

namespace A234612.P13235701224172625729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A064707 n).toNat

end

end A234612.P13235701224172625729

namespace A234612

/-- `A234613(A064707(n))` -/
def P13235701224172625729.Spec : Prop :=
  ∀ n, P13235701224172625729.a n = A234612 n

end A234612

/-! ## A234612.P13613174393572843034

`A234026(A233279(n))`
-/

namespace A234612.P13613174393572843034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A233279 n).toNat

end

end A234612.P13613174393572843034

namespace A234612

/-- `A234026(A233279(n))` -/
def P13613174393572843034.Spec : Prop :=
  ∀ n, P13613174393572843034.a n = A234612 n

end A234612

/-! ## A234612.P1161760392243637617

`A233280(A234025(n))`
-/

namespace A234612.P1161760392243637617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A234025 n).toNat

end

end A234612.P1161760392243637617

namespace A234612

/-- `A233280(A234025(n))` -/
def P1161760392243637617.Spec : Prop :=
  ∀ n, P1161760392243637617.a n = A234612 n

end A234612

/-! ## A234612.P80019497895277200

`A105081(A193231(n)+1)-1`
-/

namespace A234612.P80019497895277200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A193231 n + 1).toNat - 1

end

end A234612.P80019497895277200

namespace A234612

/-- `A105081(A193231(n)+1)-1` -/
def P80019497895277200.Spec : Prop :=
  ∀ n, P80019497895277200.a n = A234612 n

end A234612

/-! ## A234612.P14424832848586313052

`floor(A193231(2*n)/2)`
-/

namespace A234612.P14424832848586313052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193231 (2 * n) : ℚ) / 2⌋

end

end A234612.P14424832848586313052

namespace A234612

/-- `floor(A193231(2*n)/2)` -/
def P14424832848586313052.Spec : Prop :=
  ∀ n, P14424832848586313052.a n = A234612 n

end A234612

/-! ## A234612.P7200177877499789652

`A193231(comp[xor(n, 2*n+1)])/2`
-/

namespace A234612.P7200177877499789652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193231 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A234612.P7200177877499789652

namespace A234612

/-- `A193231(comp[xor(n, 2*n+1)])/2` -/
def P7200177877499789652.Spec : Prop :=
  ∀ n, P7200177877499789652.a n = (A234612 n : ℚ)

end A234612

/-! ## A234612.P860168447862496064

`A193231(A001969(n+1))/2`
-/

namespace A234612.P860168447862496064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193231 (A001969 (n + 1)).toNat : ℚ) / 2

end

end A234612.P860168447862496064

namespace A234612

/-- `A193231(A001969(n+1))/2` -/
def P860168447862496064.Spec : Prop :=
  ∀ n, P860168447862496064.a n = (A234612 n : ℚ)

end A234612

/-! ## A234612.P17831650001199556386

`A277813(A193231(2*n+1))-1`
-/

namespace A234612.P17831650001199556386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277813 (A193231 (2 * n + 1)).toNat - 1

end

end A234612.P17831650001199556386

namespace A234612

/-- `A277813(A193231(2*n+1))-1` -/
def P17831650001199556386.Spec : Prop :=
  ∀ n, P17831650001199556386.a n = A234612 n

end A234612

/-! ## A234612.P17432074372815836524

`A004526(A193231(2*n))`
-/

namespace A234612.P17432074372815836524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A193231 (2 * n)).toNat

end

end A234612.P17432074372815836524

namespace A234612

/-- `A004526(A193231(2*n))` -/
def P17432074372815836524.Spec : Prop :=
  ∀ n, P17432074372815836524.a n = A234612 n

end A234612

/-! ## A234612.P5804066388100380652

`A245444(A180200(n))`
-/

namespace A234612.P5804066388100380652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245444 (A180200 n).toNat

end

end A234612.P5804066388100380652

namespace A234612

/-- `A245444(A180200(n))` -/
def P5804066388100380652.Spec : Prop :=
  ∀ n, P5804066388100380652.a n = A234612 n

end A234612

/-! ## A234612.P15848711549250970634

`A180201(A245443(n))`
-/

namespace A234612.P15848711549250970634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A245443 n).toNat

end

end A234612.P15848711549250970634

namespace A234612

/-- `A180201(A245443(n))` -/
def P15848711549250970634.Spec : Prop :=
  ∀ n, P15848711549250970634.a n = A234612 n

end A234612

/-! ## A234612.P2165936814474314891

`A341915(A245445(n))`
-/

namespace A234612.P2165936814474314891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A245445 n).toNat

end

end A234612.P2165936814474314891

namespace A234612

/-- `A341915(A245445(n))` -/
def P2165936814474314891.Spec : Prop :=
  ∀ n, P2165936814474314891.a n = A234612 n

end A234612

/-! ## A234612.P127193387504019980

`A245446(A341916(n))`
-/

namespace A234612.P127193387504019980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A341916 n).toNat

end

end A234612.P127193387504019980

namespace A234612

/-- `A245446(A341916(n))` -/
def P127193387504019980.Spec : Prop :=
  ∀ n, P127193387504019980.a n = A234612 n

end A234612

/-!
# A234613: Self-inverse permutation of nonnegative integers, "gray-blue" code: a(n) = A193231(A003188(n)).

The programs for A234613, the canonical program `A234613.P1680756600396285344` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234613 has offset 0).

The definition of A234613 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234613.P1680756600396285344

`A193231(A003188(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A234613

/-- `A193231(A003188(n))` -/
def P1680756600396285344.Spec : Prop :=
  ∀ n, P1680756600396285344.a n = A234613 n

theorem P1680756600396285344.correct : P1680756600396285344.Spec := by
  intro n
  simp only [A234613]

end A234613

/-! ## A234613.P7920213195508829116

`A006068(A193231(n))`
-/

namespace A234613.P7920213195508829116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A193231 n).toNat

end

end A234613.P7920213195508829116

namespace A234613

/-- `A006068(A193231(n))` -/
def P7920213195508829116.Spec : Prop :=
  ∀ n, P7920213195508829116.a n = A234613 n

end A234613

/-! ## A234613.P11235965277890811858

`A193231(A234612(A193231(n)))`
-/

namespace A234613.P11235965277890811858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234612 (A193231 n).toNat).toNat

end

end A234613.P11235965277890811858

namespace A234613

/-- `A193231(A234612(A193231(n)))` -/
def P11235965277890811858.Spec : Prop :=
  ∀ n, P11235965277890811858.a n = A234613 n

end A234613

/-! ## A234613.P14514653169664073867

`A003188(2*a(floor(n/2))+floor((n+1)/2)%2)` with `a(0)=0`
-/

namespace A234613.P14514653169664073867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003188 (2 * a ⌊(n : ℚ) / 2⌋.toNat + Int.tmod ⌊(n + 1 : ℚ) / 2⌋ 2).toNat

end

end A234613.P14514653169664073867

namespace A234613

/-- `A003188(2*a(floor(n/2))+floor((n+1)/2)%2)` -/
def P14514653169664073867.Spec : Prop :=
  ∀ n, P14514653169664073867.a n = A234613 n

end A234613

/-! ## A234613.P13009099564420079222

`xor(A234612(A002265(n)), A234612(n))`
-/

namespace A234613.P13009099564420079222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A234612 (A002265 n).toNat) (A234612 n)

end

end A234613.P13009099564420079222

namespace A234613

/-- `xor(A234612(A002265(n)), A234612(n))` -/
def P13009099564420079222.Spec : Prop :=
  ∀ n, P13009099564420079222.a n = A234613 n

end A234613

/-! ## A234613.P10062971718487405042

`A000035(n)+2*A193231(A004526(n))`
-/

namespace A234613.P10062971718487405042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 2 * A193231 (A004526 n).toNat

end

end A234613.P10062971718487405042

namespace A234613

/-- `A000035(n)+2*A193231(A004526(n))` -/
def P10062971718487405042.Spec : Prop :=
  ∀ n, P10062971718487405042.a n = A234613 n

end A234613

/-! ## A234613.P8354436512285954891

`A193231(xor(n, floor(n/2)))`
-/

namespace A234613.P8354436512285954891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A234613.P8354436512285954891

namespace A234613

/-- `A193231(xor(n, floor(n/2)))` -/
def P8354436512285954891.Spec : Prop :=
  ∀ n, P8354436512285954891.a n = A234613 n

end A234613

/-! ## A234613.P2230474282469878610

`A234612(A064706(n))`
-/

namespace A234613.P2230474282469878610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A064706 n).toNat

end

end A234613.P2230474282469878610

namespace A234613

/-- `A234612(A064706(n))` -/
def P2230474282469878610.Spec : Prop :=
  ∀ n, P2230474282469878610.a n = A234613 n

end A234613

/-! ## A234613.P264656042871629076

`A064707(A234612(n))`
-/

namespace A234613.P264656042871629076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A234612 n).toNat

end

end A234613.P264656042871629076

namespace A234613

/-- `A064707(A234612(n))` -/
def P264656042871629076.Spec : Prop :=
  ∀ n, P264656042871629076.a n = A234613 n

end A234613

/-! ## A234613.P17846434145548820154

`A180200(A234025(n))`
-/

namespace A234613.P17846434145548820154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A234025 n).toNat

end

end A234613.P17846434145548820154

namespace A234613

/-- `A180200(A234025(n))` -/
def P17846434145548820154.Spec : Prop :=
  ∀ n, P17846434145548820154.a n = A234613 n

end A234613

/-! ## A234613.P73241387768955493

`A234026(A180201(n))`
-/

namespace A234613.P73241387768955493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A180201 n).toNat

end

end A234613.P73241387768955493

namespace A234613

/-- `A234026(A180201(n))` -/
def P73241387768955493.Spec : Prop :=
  ∀ n, P73241387768955493.a n = A234613 n

end A234613

/-! ## A234613.P13320817326978586055

`A292600(2*A193231(n))`
-/

namespace A234613.P13320817326978586055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A193231 n).toNat

end

end A234613.P13320817326978586055

namespace A234613

/-- `A292600(2*A193231(n))` -/
def P13320817326978586055.Spec : Prop :=
  ∀ n, P13320817326978586055.a n = A234613 n

end A234613

/-! ## A234613.P13373707392651651999

`A004526(A193231(A048724(A004526(A048724(n)))))`
-/

namespace A234613.P13373707392651651999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A193231 (A048724 (A004526 (A048724 n).toNat).toNat).toNat).toNat

end

end A234613.P13373707392651651999

namespace A234613

/-- `A004526(A193231(A048724(A004526(A048724(n)))))` -/
def P13373707392651651999.Spec : Prop :=
  ∀ n, P13373707392651651999.a n = A234613 n

end A234613

/-! ## A234613.P5383964533454414362

`A243354(A366263(n))`
-/

namespace A234613.P5383964533454414362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A366263 n).toNat

end

end A234613.P5383964533454414362

namespace A234613

/-- `A243354(A366263(n))` -/
def P5383964533454414362.Spec : Prop :=
  ∀ n, P5383964533454414362.a n = A234613 n

end A234613

/-!
# A234615: Number of ways to write n = k + m with k > 0 and m > 0 such that p = prime(k) + phi(m) and q(p) - 1 are both prime, where phi(.) is Euler's totient function and q(.) is the strict partition function (A000009).

The programs for A234615, there is no canonical definition to state claims against.
-/

/-! ## A234615.P10078967179532030572

`A269303(A000929(2*n))%A000929(n)`
-/

namespace A234615.P10078967179532030572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269303 (A000929 (2 * n)).toNat) (A000929 n)

end

end A234615.P10078967179532030572

/-!
# A234617: Numbers of undirected cycles in the 2n-crossed prism graph.

The programs for A234617, the canonical program `A234617.P14389326993764515837` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234617 has offset 1).

The definition of A234617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234617.P14389326993764515837

`2^n+4^(n+1)+(2^(n+2)-3)*(n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234617

/-- `2^n+4^(n+1)+(2^(n+2)-3)*(n+1)` -/
def P14389326993764515837.Spec : Prop :=
  ∀ n, P14389326993764515837.a n = A234617 (n + 1)

theorem P14389326993764515837.correct : P14389326993764515837.Spec := by
  intro n
  simp only [A234617, Nat.add_sub_cancel]

end A234617

/-! ## A234617.P14409257977808411033

`ogf((6-32x+49x^2-38x^3+24x^4)/(1-10x+37x^2-64x^3+52x^4-16x^5))`
-/

namespace A234617.P14409257977808411033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -32, 49, -38, 24] [1, -10, 37, -64, 52, -16] n

end

end A234617.P14409257977808411033

namespace A234617

/-- `ogf((6-32x+49x^2-38x^3+24x^4)/(1-10x+37x^2-64x^3+52x^4-16x^5))` -/
def P14409257977808411033.Spec : Prop :=
  ∀ n, P14409257977808411033.a n = A234617 (n + 1)

end A234617

/-!
# A234624: Number of (undirected) cycles in the n X n rook graph.

The programs for A234624, there is no canonical definition to state claims against.
-/

/-! ## A234624.P12356229356446431553

`A286418((n+1)²+n²)`
-/

namespace A234624.P12356229356446431553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286418 ((n + 1) ^ 2 + n ^ 2)

end

end A234624.P12356229356446431553

/-!
# A234627: Numbers of undirected cycles in the n-sun graph.

The programs for A234627, there is no canonical definition to state claims against.
-/

/-! ## A234627.P12349029139849741203

`A334267(A000108(n))+A010842(n)`
-/

namespace A234627.P12349029139849741203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A000108 n).toNat + A010842 n

end

end A234627.P12349029139849741203

/-! ## A234627.P1336498907864493049

`A116540(n+1)+A048675(A005867(n))`
-/

namespace A234627.P1336498907864493049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116540 (n + 1) + A048675 (A005867 n).toNat

end

end A234627.P1336498907864493049

/-!
# A234630: Numbers of undirected cycles in the n X n white bishop graph.

The programs for A234630, there is no canonical definition to state claims against.
-/

/-! ## A234630.P2221445859529797412

`A234636(n+3)-A234603(n+3)`
-/

namespace A234630.P2221445859529797412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234636 (n + 3) - A234603 (n + 3)

end

end A234630.P2221445859529797412

/-!
# A234632: Numbers of directed Hamiltonian paths in the n X n black bishop graph.

The programs for A234632, there is no canonical definition to state claims against.
-/

/-! ## A234632.P1269729798658453544

`2*A307934(n+2)`
-/

namespace A234632.P1269729798658453544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307934 (n + 2)

end

end A234632.P1269729798658453544

/-! ## A234632.P6948984009348552050

`A000034(n)*A307556(n+2)`
-/

namespace A234632.P6948984009348552050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A307556 (n + 2)

end

end A234632.P6948984009348552050

/-!
# A234633: Numbers of directed Hamiltonian paths in the complete tripartite graph K_{n,n,n}.

The programs for A234633, the canonical program `A234633.P11207606583156982210` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234633 has offset 1).

The definition of A234633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234633.P11207606583156982210

`(n+1)!^3*A110706(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A234633

/-- `(n+1)!^3*A110706(n+1)` -/
def P11207606583156982210.Spec : Prop :=
  ∀ n, P11207606583156982210.a n = A234633 (n + 1)

theorem P11207606583156982210.correct : P11207606583156982210.Spec := by
  intro n
  simp only [A234633, Nat.add_sub_cancel]

end A234633

/-! ## A234633.P13552648522870514515

`2*A307936(n+1)`
-/

namespace A234633.P13552648522870514515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307936 (n + 1)

end

end A234633.P13552648522870514515

namespace A234633

/-- `2*A307936(n+1)` -/
def P13552648522870514515.Spec : Prop :=
  ∀ n, P13552648522870514515.a n = A234633 (n + 1)

end A234633

/-! ## A234633.P5452507624238353393

`A307936(A249818(n+1))+A307936(n+1)`
-/

namespace A234633.P5452507624238353393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307936 (A249818 (n + 1)).toNat + A307936 (n + 1)

end

end A234633.P5452507624238353393

namespace A234633

/-- `A307936(A249818(n+1))+A307936(n+1)` -/
def P5452507624238353393.Spec : Prop :=
  ∀ n, P5452507624238353393.a n = A234633 (n + 1)

end A234633

/-!
# A234635: Numbers of directed Hamiltonian paths in the n-Sierpinski gasket graph.

The programs for A234635, there is no canonical definition to state claims against.
-/

/-! ## A234635.P9693639819497276102

`2*A246957(n+1)`
-/

namespace A234635.P9693639819497276102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246957 (n + 1)

end

end A234635.P9693639819497276102

/-!
# A234637: Number of directed Hamiltonian paths in the n X n white bishop graph.

The programs for A234637, there is no canonical definition to state claims against.
-/

/-! ## A234637.P16260103329927485763

`2*A308146(n+2)`
-/

namespace A234637.P16260103329927485763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308146 (n + 2)

end

end A234637.P16260103329927485763

/-! ## A234637.P821742279937168403

`A308146(A308110(n+2))+A308146(n+2)`
-/

namespace A234637.P821742279937168403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308146 (A308110 (n + 2)).toNat + A308146 (n + 2)

end

end A234637.P821742279937168403

/-!
# A234638: Numbers n for which sigma(sigma(n)) is odd.

The programs for A234638, the canonical program `A234638.P1618051015318160246` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234638 has offset 1).

The definition of A234638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234638.P1618051015318160246

`lt[A007913(A000203(n+1)), 3]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A234638

/-- `lt[A007913(A000203(n+1)), 3]+1` -/
def P1618051015318160246.Spec : Prop :=
  ∀ n, (P1618051015318160246.a n : ℤ) = A234638 (n + 1)

theorem P1618051015318160246.correct : P1618051015318160246.Spec := by
  intro n
  simp only [A234638, Nat.add_sub_cancel]

end A234638

/-! ## A234638.P5225564981850332295

`record[(n+1)/gcd(2, A000203(2*A000203(n+1)))]`
-/

namespace A234638.P5225564981850332295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A000203 (2 * A000203 (n + 1)).toNat) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234638.P5225564981850332295

namespace A234638

/-- `record[(n+1)/gcd(2, A000203(2*A000203(n+1)))]` -/
def P5225564981850332295.Spec : Prop :=
  ∀ n, P5225564981850332295.a n = (A234638 (n + 1) : ℚ)

end A234638

/-! ## A234638.P1538067372152042758

`eq[1, gcd(4, ∑{d}[∑{d}[n, #], #])]`
-/

namespace A234638.P1538067372152042758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234638.P1538067372152042758

namespace A234638

/-- `eq[1, gcd(4, ∑{d}[∑{d}[n, #], #])]` -/
def P1538067372152042758.Spec : Prop :=
  ∀ n, (P1538067372152042758.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P10749722279709953034

`eq[1, and(1, A051027(n+1))]+1`
-/

namespace A234638.P10749722279709953034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234638.P10749722279709953034

namespace A234638

/-- `eq[1, and(1, A051027(n+1))]+1` -/
def P10749722279709953034.Spec : Prop :=
  ∀ n, (P10749722279709953034.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P13642892691480315316

`lt[val(A000203(A001065(n+1)+1+n), 2), 1]+1`
-/

namespace A234638.P13642892691480315316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (A001065 (n + 1) + 1 + (n : ℤ)).toNat).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234638.P13642892691480315316

namespace A234638

/-- `lt[val(A000203(A001065(n+1)+1+n), 2), 1]+1` -/
def P13642892691480315316.Spec : Prop :=
  ∀ n, (P13642892691480315316.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P8005930450019558618

`lt[2, A020639(∑{d}[∑{d}[n, #], #]+64)]`
-/

namespace A234638.P8005930450019558618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f3 n), d + 64)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A234638.P8005930450019558618

namespace A234638

/-- `lt[2, A020639(∑{d}[∑{d}[n, #], #]+64)]` -/
def P8005930450019558618.Spec : Prop :=
  ∀ n, (P8005930450019558618.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P7773166724599466640

`lt[A193336(A000203(n+1)), A051027(n+1)]+1`
-/

namespace A234638.P7773166724599466640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234638.P7773166724599466640

namespace A234638

/-- `lt[A193336(A000203(n+1)), A051027(n+1)]+1` -/
def P7773166724599466640.Spec : Prop :=
  ∀ n, (P7773166724599466640.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P15772220778337178905

`record[(n+1)*and(1, A033879(A074400(n+1)))]`
-/

namespace A234638.P15772220778337178905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A033879 (A074400 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234638.P15772220778337178905

namespace A234638

/-- `record[(n+1)*and(1, A033879(A074400(n+1)))]` -/
def P15772220778337178905.Spec : Prop :=
  ∀ n, P15772220778337178905.a n = A234638 (n + 1)

end A234638

/-! ## A234638.P3693979867692407871

`eq[1, A286357(A161942(n+1))]+1`
-/

namespace A234638.P3693979867692407871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (A161942 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234638.P3693979867692407871

namespace A234638

/-- `eq[1, A286357(A161942(n+1))]+1` -/
def P3693979867692407871.Spec : Prop :=
  ∀ n, (P3693979867692407871.a n : ℤ) = A234638 (n + 1)

end A234638

/-!
# A234639: Numbers n for which sigma(sigma(sigma(n))) is odd.

The programs for A234639, the canonical program `A234639.P10335545487523328048` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234639 has offset 1).

The definition of A234639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234639.P10335545487523328048

`record[(n+1)*A000203(A000203(A000203(n+1)))%2]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A234639

/-- `record[(n+1)*A000203(A000203(A000203(n+1)))%2]` -/
def P10335545487523328048.Spec : Prop :=
  ∀ n, P10335545487523328048.a n = A234639 (n + 1)

theorem P10335545487523328048.correct : P10335545487523328048.Spec := by
  intro n
  simp only [A234639, Nat.add_sub_cancel]

end A234639

/-! ## A234639.P687202533533348173

`eq[1, A051027(A000203(n+1))%2]+1`
-/

namespace A234639.P687202533533348173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051027 (A000203 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234639.P687202533533348173

namespace A234639

/-- `eq[1, A051027(A000203(n+1))%2]+1` -/
def P687202533533348173.Spec : Prop :=
  ∀ n, (P687202533533348173.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P11730974441189822794

`eq[0, A193336(A051027(n+1))]+1`
-/

namespace A234639.P11730974441189822794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234639.P11730974441189822794

namespace A234639

/-- `eq[0, A193336(A051027(n+1))]+1` -/
def P11730974441189822794.Spec : Prop :=
  ∀ n, (P11730974441189822794.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P12350627578373383911

`lt[A193336(A051027(n+1)), A000203(n+1)]+1`
-/

namespace A234639.P12350627578373383911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P12350627578373383911

namespace A234639

/-- `lt[A193336(A051027(n+1)), A000203(n+1)]+1` -/
def P12350627578373383911.Spec : Prop :=
  ∀ n, (P12350627578373383911.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P10077763411369749011

`lt[A193336(A051027(n+1)), A003817(n)+1]+1`
-/

namespace A234639.P10077763411369749011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P10077763411369749011

namespace A234639

/-- `lt[A193336(A051027(n+1)), A003817(n)+1]+1` -/
def P10077763411369749011.Spec : Prop :=
  ∀ n, (P10077763411369749011.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P17516301058119813502

`lt[A193336(A051027(n+1)), A025431(n)+1]+1`
-/

namespace A234639.P17516301058119813502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P17516301058119813502

namespace A234639

/-- `lt[A193336(A051027(n+1)), A025431(n)+1]+1` -/
def P17516301058119813502.Spec : Prop :=
  ∀ n, (P17516301058119813502.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P5099282961621110887

`lt[A193336(A051027(n+1)), A140773(n+1)]+1`
-/

namespace A234639.P5099282961621110887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P5099282961621110887

namespace A234639

/-- `lt[A193336(A051027(n+1)), A140773(n+1)]+1` -/
def P5099282961621110887.Spec : Prop :=
  ∀ n, (P5099282961621110887.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P17775180457704086954

`lt[A193336(A051027(n+1)), A155828(n+3)]+1`
-/

namespace A234639.P17775180457704086954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P17775180457704086954

namespace A234639

/-- `lt[A193336(A051027(n+1)), A155828(n+3)]+1` -/
def P17775180457704086954.Spec : Prop :=
  ∀ n, (P17775180457704086954.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P5977803001191538430

`lt[A193336(A051027(n+1))-1, A063377(n+1)]+1`
-/

namespace A234639.P5977803001191538430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P5977803001191538430

namespace A234639

/-- `lt[A193336(A051027(n+1))-1, A063377(n+1)]+1` -/
def P5977803001191538430.Spec : Prop :=
  ∀ n, (P5977803001191538430.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P8252328931601388006

`lt[A025475(n+1)*A193336(A051027(n+1)), 1]+1`
-/

namespace A234639.P8252328931601388006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1) * A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A234639.P8252328931601388006

namespace A234639

/-- `lt[A025475(n+1)*A193336(A051027(n+1)), 1]+1` -/
def P8252328931601388006.Spec : Prop :=
  ∀ n, (P8252328931601388006.a n : ℤ) = A234639 (n + 1)

end A234639

/-!
# A234640: Odd numbers n for which sigma(sigma(sigma(n))) is odd.

The programs for A234640, there is no canonical definition to state claims against.
-/

/-! ## A234640.P3479494176015670225

`∩[2*n+1, A234639(n+1)]`
-/

namespace A234640.P3479494176015670225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234640.P3479494176015670225

/-! ## A234640.P3663617883651008744

`record[A000265(A234639(1+n))]`
-/

namespace A234640.P3663617883651008744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A234639 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234640.P3663617883651008744

/-! ## A234640.P2313315812251230489

`record[A093178(A234639(n+1))]`
-/

namespace A234640.P2313315812251230489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A234639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234640.P2313315812251230489

/-! ## A234640.P11101068699695084481

`filter[A234639(n+1), A000035(#)]`
-/

namespace A234640.P11101068699695084481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A234640.P11101068699695084481

/-! ## A234640.P13878832697036768659

`∩[A234639(n+1), A247328(n+1)]`
-/

namespace A234640.P13878832697036768659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234640.P13878832697036768659

/-! ## A234640.P2013174198282084251

`∩[A234639(n+1), A317439(n+1)]`
-/

namespace A234640.P2013174198282084251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234640.P2013174198282084251

/-! ## A234640.P14916572595320648220

`record[2*n+1-A193336(A051027(2*n+1))]`
-/

namespace A234640.P14916572595320648220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A193336 (A051027 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234640.P14916572595320648220

/-! ## A234640.P1171728291219587499

`eq[gcd(2, n+1)², A051027(A000203(n+1))%2]+1`
-/

namespace A234640.P1171728291219587499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051027 (A000203 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234640.P1171728291219587499

/-! ## A234640.P11559545455448441566

`A004273(record[A003602(A234639(n+1))])`
-/

namespace A234640.P11559545455448441566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A234639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234640.P11559545455448441566

/-!
# A234641: Odd numbers k such that sigma(sigma(k^2)) is odd.

The programs for A234641, there is no canonical definition to state claims against.
-/

/-! ## A234641.P7283673147727728730

`sqrt(A231484(n+1))`
-/

namespace A234641.P7283673147727728730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A231484 (n + 1) : ℝ)

end

end A234641.P7283673147727728730

/-! ## A234641.P148733235723920090

`record[and(1, A008847(n+1))*A008847(n+1)]`
-/

namespace A234641.P148733235723920090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008847 (n + 1)) * A008847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234641.P148733235723920090

/-! ## A234641.P9418487270422327144

`root(A231484(n+1), A034444(A034444(n+1)))`
-/

namespace A234641.P9418487270422327144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231484 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A234641.P9418487270422327144

/-! ## A234641.P2537085982472542517

`root(A231484(n+1), A071188(A071188(n+1)))`
-/

namespace A234641.P2537085982472542517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231484 (n + 1) : ℝ) ^ (1 / (A071188 (A071188 (n + 1)).toNat : ℝ))

end

end A234641.P2537085982472542517

/-! ## A234641.P5949683360539977517

`A231484(n+1)^(A005843(n)/A008574(n))`
-/

namespace A234641.P5949683360539977517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231484 (n + 1) : ℝ) ^ ((A005843 n : ℚ) / (A008574 n : ℚ) : ℝ)

end

end A234641.P5949683360539977517

/-!
# A234642: Smallest x such that x mod phi(x) = n, or 0 if no such x exists.

The programs for A234642, the canonical program `A234642.P1581993958068499789` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234642 has offset 0).

The definition of A234642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234642.P1581993958068499789

`fo[A068494(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A234642

/-- `fo[A068494(n+1)]+1` -/
def P1581993958068499789.Spec : Prop :=
  ∀ n, (P1581993958068499789.a n : ℤ) = A234642 n

theorem P1581993958068499789.correct : P1581993958068499789.Spec := by
  intro n
  simp only [A234642]

end A234642

/-!
# A234643: E.g.f.: Sum_{n>=0} Integral^n (exp(x) + 1)^n dx^n, where integral^n F(x) dx^n is the n-th integration of F(x) with no constant of integration.

The programs for A234643, there is no canonical definition to state claims against.
-/

/-! ## A234643.P10133234931681361385

`∑[floor(root(A198761(n+2), 5))]`
-/

namespace A234643.P10133234931681361385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198761 (n + 2) : ℝ) ^ (1 / (5 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234643.P10133234931681361385

/-! ## A234643.P9066628678747892103

`A342696(A114277(n))+A000079(n)`
-/

namespace A234643.P9066628678747892103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A114277 n).toNat + A000079 n

end

end A234643.P9066628678747892103

/-! ## A234643.P12807266399846936920

`A000079(n)-(A342696(n)-A342696(A114277(n)))`
-/

namespace A234643.P12807266399846936920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A342696 n - A342696 (A114277 n).toNat)

end

end A234643.P12807266399846936920

/-!
# A234644: Primes p with q(p) - 1 also prime, where q(.) is the strict partition function (A000009).

The programs for A234644, there is no canonical definition to state claims against.
-/

/-! ## A234644.P10822863010555728559

`record[A342659(A301678(n)+1)]`
-/

namespace A234644.P10822863010555728559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342659 (A301678 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234644.P10822863010555728559

/-! ## A234644.P16768229413471765077

`record[A342659(A128913(n+2))]`
-/

namespace A234644.P16768229413471765077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342659 (A128913 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234644.P16768229413471765077

/-! ## A234644.P3163147660428611627

`p?[eq[1, A032741(A111133(n))]]`
-/

namespace A234644.P3163147660428611627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A111133 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A234644.P3163147660428611627

/-! ## A234644.P15368549718876721850

`p?[∑[A080905(A081856(n+1))]]`
-/

namespace A234644.P15368549718876721850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080905 (A081856 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234644.P15368549718876721850

/-! ## A234644.P7161964451094398600

`record[A228200(A136181(n+4)%A028779(2*n+3))]`
-/

namespace A234644.P7161964451094398600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228200 (Int.tmod (A136181 (n + 4)) (A028779 (2 * n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234644.P7161964451094398600

/-!
# A234645: Sum of the divisors of n^3+1.

The programs for A234645, the canonical program `A234645.P6321357318504303839` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234645 has offset 0).

The definition of A234645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234645.P6321357318504303839

`A000203(n^3+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A234645

/-- `A000203(n^3+1)` -/
def P6321357318504303839.Spec : Prop :=
  ∀ n, P6321357318504303839.a n = A234645 n

theorem P6321357318504303839.correct : P6321357318504303839.Spec := by
  intro n
  simp only [A234645]

end A234645

/-! ## A234645.P3468272744539412325

`∑{d}[1+n^3, #]`
-/

namespace A234645.P3468272744539412325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A234645.P3468272744539412325

namespace A234645

/-- `∑{d}[1+n^3, #]` -/
def P3468272744539412325.Spec : Prop :=
  ∀ n, (P3468272744539412325.a n : ℤ) = A234645 n

theorem P3468272744539412325.correct : P3468272744539412325.Spec := by
  intro n
  simp only [A234645, Nat.add_sub_cancel, A234645.P3468272744539412325.f1, A234645.P3468272744539412325.a, A234645.P6321357318504303839.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234645

/-! ## A234645.P16832653863479151101

`2*∑{d}[n*n²+1, #/2]`
-/

namespace A234645.P16832653863479151101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2)

end

end A234645.P16832653863479151101

namespace A234645

/-- `2*∑{d}[n*n²+1, #/2]` -/
def P16832653863479151101.Spec : Prop :=
  ∀ n, P16832653863479151101.a n = (A234645 n : ℚ)

end A234645

/-! ## A234645.P2919738352316372000

`abs(1-∑{d}[n*n²+1, #])+1`
-/

namespace A234645.P2919738352316372000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)| + 1

end

end A234645.P2919738352316372000

namespace A234645

/-- `abs(1-∑{d}[n*n²+1, #])+1` -/
def P2919738352316372000.Spec : Prop :=
  ∀ n, P2919738352316372000.a n = A234645 n

end A234645

/-! ## A234645.P8110348174706434899

`floor(sqrt(∑{d}[n*n²+1, #]²+1))`
-/

namespace A234645.P8110348174706434899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2 + 1)

end

end A234645.P8110348174706434899

namespace A234645

/-- `floor(sqrt(∑{d}[n*n²+1, #]²+1))` -/
def P8110348174706434899.Spec : Prop :=
  ∀ n, (P8110348174706434899.a n : ℤ) = A234645 n

end A234645

/-! ## A234645.P12055399237200669063

`∑{d}[n*n²+1, #]%(2*(n+1))²²`
-/

namespace A234645.P12055399237200669063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % ((2 * (n + 1)) ^ 2) ^ 2

end

end A234645.P12055399237200669063

namespace A234645

/-- `∑{d}[n*n²+1, #]%(2*(n+1))²²` -/
def P12055399237200669063.Spec : Prop :=
  ∀ n, (P12055399237200669063.a n : ℤ) = A234645 n

end A234645

/-!
# A234646: Sum of the distinct prime divisors of n^3 + 1.

The programs for A234646, the canonical program `A234646.P14047031751974978695` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234646 has offset 0).

The definition of A234646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234646.P14047031751974978695

`A005070((1-n)²+n)+∑{p}[n+1, #]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A234646

/-- `A005070((1-n)²+n)+∑{p}[n+1, #]` -/
def P14047031751974978695.Spec : Prop :=
  ∀ n, P14047031751974978695.a n = A234646 n

theorem P14047031751974978695.correct : P14047031751974978695.Spec := by
  intro n
  simp only [A234646]

end A234646

/-! ## A234646.P9359456019126972242

`A008472(n+1)+A005070((1-n)²+n)`
-/

namespace A234646.P9359456019126972242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A005070 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A234646.P9359456019126972242

namespace A234646

/-- `A008472(n+1)+A005070((1-n)²+n)` -/
def P9359456019126972242.Spec : Prop :=
  ∀ n, P9359456019126972242.a n = A234646 n

theorem P9359456019126972242.correct : P9359456019126972242.Spec := by
  intro n
  simp only [A234646, Nat.add_sub_cancel, A234646.P9359456019126972242.a, A234646.P14047031751974978695.f1, A234646.P14047031751974978695.a, A005070, A005070.P10126547095800783810.f1, A005070.P10126547095800783810.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A080029, A080029.P10167826981226000952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234646

/-! ## A234646.P11553483576117599386

`∑{p}[1+n^3, #]`
-/

namespace A234646.P11553483576117599386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A234646.P11553483576117599386

namespace A234646

/-- `∑{p}[1+n^3, #]` -/
def P11553483576117599386.Spec : Prop :=
  ∀ n, (P11553483576117599386.a n : ℤ) = A234646 n

end A234646

/-! ## A234646.P8524064082256785073

`A008472(n^3+1)`
-/

namespace A234646.P8524064082256785073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n ^ 3 + 1)

end

end A234646.P8524064082256785073

namespace A234646

/-- `A008472(n^3+1)` -/
def P8524064082256785073.Spec : Prop :=
  ∀ n, P8524064082256785073.a n = A234646 n

end A234646

/-!
# A234647: Primes of the form q(p) - 1, where p is a prime and q(.) is the strict partition function (A000009).

The programs for A234647, there is no canonical definition to state claims against.
-/

/-! ## A234647.P16751562667501195155

`A079124(A234644(n+1))`
-/

namespace A234647.P16751562667501195155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079124 (A234644 (n + 1)).toNat

end

end A234647.P16751562667501195155

/-! ## A234647.P16751215016136411948

`A111133(or(1, A234644(n+1)))`
-/

namespace A234647.P16751215016136411948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (Int.lor 1 (A234644 (n + 1))).toNat

end

end A234647.P16751215016136411948

/-! ## A234647.P17734642729238060787

`A036998(A234644(n+1))`
-/

namespace A234647.P17734642729238060787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036998 (A234644 (n + 1)).toNat

end

end A234647.P17734642729238060787

/-! ## A234647.P10556291081533596359

`p?[A123557(n+1)]`
-/

namespace A234647.P10556291081533596359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234647.P10556291081533596359

/-! ## A234647.P12820814153144288427

`p?[record[A036998(n+1)]]`
-/

namespace A234647.P12820814153144288427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036998 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234647.P12820814153144288427

/-!
# A234648: Even sums of 2 consecutive odious numbers (A000069).

The programs for A234648, the canonical program `A234648.P5813461578857952792` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234648 has offset 1).

The definition of A234648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A225822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234648.P5813461578857952792

`A225822(n+1)+(-1)^(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A234648

/-- `A225822(n+1)+(-1)^(n+1)` -/
def P5813461578857952792.Spec : Prop :=
  ∀ n, P5813461578857952792.a n = A234648 (n + 1)

theorem P5813461578857952792.correct : P5813461578857952792.Spec := by
  intro n
  simp only [A234648, Nat.add_sub_cancel]

end A234648

/-! ## A234648.P17662167216586418199

`A234011(A036554(n+1))`
-/

namespace A234648.P17662167216586418199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (A036554 (n + 1)).toNat

end

end A234648.P17662167216586418199

namespace A234648

/-- `A234011(A036554(n+1))` -/
def P17662167216586418199.Spec : Prop :=
  ∀ n, P17662167216586418199.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P1827182733436038740

`abs(xor((-1)^n, A225822(n+1)))`
-/

namespace A234648.P1827182733436038740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((-1) ^ n) (A225822 (n + 1))|

end

end A234648.P1827182733436038740

namespace A234648

/-- `abs(xor((-1)^n, A225822(n+1)))` -/
def P1827182733436038740.Spec : Prop :=
  ∀ n, P1827182733436038740.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P9403632488387616120

`2*(A131323(n+1)+A000035(n))`
-/

namespace A234648.P9403632488387616120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131323 (n + 1) + A000035 n)

end

end A234648.P9403632488387616120

namespace A234648

/-- `2*(A131323(n+1)+A000035(n))` -/
def P9403632488387616120.Spec : Prop :=
  ∀ n, P9403632488387616120.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P5795734976272281641

`2*(A108269(n+1)-A059841(n))`
-/

namespace A234648.P5795734976272281641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108269 (n + 1) - A059841 n)

end

end A234648.P5795734976272281641

namespace A234648

/-- `2*(A108269(n+1)-A059841(n))` -/
def P5795734976272281641.Spec : Prop :=
  ∀ n, P5795734976272281641.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P13005985011571394614

`2*(A108269(n+1)-A056594(n)²)`
-/

namespace A234648.P13005985011571394614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108269 (n + 1) - A056594 n ^ 2)

end

end A234648.P13005985011571394614

namespace A234648

/-- `2*(A108269(n+1)-A056594(n)²)` -/
def P13005985011571394614.Spec : Prop :=
  ∀ n, P13005985011571394614.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P6443397678420677409

`2*(A131323(n+1)+A010060(A121539(n+1)))`
-/

namespace A234648.P6443397678420677409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131323 (n + 1) + A010060 (A121539 (n + 1)).toNat)

end

end A234648.P6443397678420677409

namespace A234648

/-- `2*(A131323(n+1)+A010060(A121539(n+1)))` -/
def P6443397678420677409.Spec : Prop :=
  ∀ n, P6443397678420677409.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P4671636498501821805

`2*∪[A131323(2*n+1), A108269(2*(n+1))]`
-/

namespace A234648.P4671636498501821805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A234648.P4671636498501821805

namespace A234648

/-- `2*∪[A131323(2*n+1), A108269(2*(n+1))]` -/
def P4671636498501821805.Spec : Prop :=
  ∀ n, (P4671636498501821805.a n : ℤ) = A234648 (n + 1)

end A234648

/-! ## A234648.P11092893164799854059

`2*(A286056(2*(n+1))-2*(n+1))`
-/

namespace A234648.P11092893164799854059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A286056 (2 * (n + 1)) - (2 * (n + 1) : ℤ))

end

end A234648.P11092893164799854059

namespace A234648

/-- `2*(A286056(2*(n+1))-2*(n+1))` -/
def P11092893164799854059.Spec : Prop :=
  ∀ n, P11092893164799854059.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P9934112148689610193

`2*A344346(A014601(n)+1)`
-/

namespace A234648.P9934112148689610193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344346 (A014601 n + 1).toNat

end

end A234648.P9934112148689610193

namespace A234648

/-- `2*A344346(A014601(n)+1)` -/
def P9934112148689610193.Spec : Prop :=
  ∀ n, P9934112148689610193.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P8368794287623407417

`2*A344346(A042948(n+1))`
-/

namespace A234648.P8368794287623407417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344346 (A042948 (n + 1)).toNat

end

end A234648.P8368794287623407417

namespace A234648

/-- `2*A344346(A042948(n+1))` -/
def P8368794287623407417.Spec : Prop :=
  ∀ n, P8368794287623407417.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P6631280738468223509

`2*(A081706(2*(n+1))+A000035(n))`
-/

namespace A234648.P6631280738468223509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081706 (2 * (n + 1)) + A000035 n)

end

end A234648.P6631280738468223509

namespace A234648

/-- `2*(A081706(2*(n+1))+A000035(n))` -/
def P6631280738468223509.Spec : Prop :=
  ∀ n, P6631280738468223509.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P12035989908611109038

`2*(A249034(n+1)-A001285(A171947(n+1)))`
-/

namespace A234648.P12035989908611109038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A249034 (n + 1) - A001285 (A171947 (n + 1)).toNat)

end

end A234648.P12035989908611109038

namespace A234648

/-- `2*(A249034(n+1)-A001285(A171947(n+1)))` -/
def P12035989908611109038.Spec : Prop :=
  ∀ n, P12035989908611109038.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P16911122371835505806

`∩[2*n, A234011(n+1)]`
-/

namespace A234648.P16911122371835505806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234648.P16911122371835505806

namespace A234648

/-- `∩[2*n, A234011(n+1)]` -/
def P16911122371835505806.Spec : Prop :=
  ∀ n, (P16911122371835505806.a n : ℤ) = A234648 (n + 1)

end A234648

/-! ## A234648.P2593620123659450777

`filter[A234011(n+1), A217586(#)]`
-/

namespace A234648.P2593620123659450777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A234648.P2593620123659450777

namespace A234648

/-- `filter[A234011(n+1), A217586(#)]` -/
def P2593620123659450777.Spec : Prop :=
  ∀ n, P2593620123659450777.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P3907340605590864680

`filter[A234011(n+1), A354034(#)]`
-/

namespace A234648.P3907340605590864680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A234648.P3907340605590864680

namespace A234648

/-- `filter[A234011(n+1), A354034(#)]` -/
def P3907340605590864680.Spec : Prop :=
  ∀ n, P3907340605590864680.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P14546311065416066229

`∩[A234011(n+1), A248056(n+1)]`
-/

namespace A234648.P14546311065416066229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234648.P14546311065416066229

namespace A234648

/-- `∩[A234011(n+1), A248056(n+1)]` -/
def P14546311065416066229.Spec : Prop :=
  ∀ n, (P14546311065416066229.a n : ℤ) = A234648 (n + 1)

end A234648

/-! ## A234648.P5957344851739711579

`∩[A162648(n+1), A248056(n+1)]`
-/

namespace A234648.P5957344851739711579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234648.P5957344851739711579

namespace A234648

/-- `∩[A162648(n+1), A248056(n+1)]` -/
def P5957344851739711579.Spec : Prop :=
  ∀ n, (P5957344851739711579.a n : ℤ) = A234648 (n + 1)

end A234648

/-! ## A234648.P18191004381245086955

`∩[A234011(n+1), A257637(n+1)]`
-/

namespace A234648.P18191004381245086955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234648.P18191004381245086955

namespace A234648

/-- `∩[A234011(n+1), A257637(n+1)]` -/
def P18191004381245086955.Spec : Prop :=
  ∀ n, (P18191004381245086955.a n : ℤ) = A234648 (n + 1)

end A234648

/-! ## A234648.P5425213805648657573

`∩[A234011(n+1), A372771(n+1)]`
-/

namespace A234648.P5425213805648657573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234648.P5425213805648657573

namespace A234648

/-- `∩[A234011(n+1), A372771(n+1)]` -/
def P5425213805648657573.Spec : Prop :=
  ∀ n, (P5425213805648657573.a n : ℤ) = A234648 (n + 1)

end A234648

/-!
# A234649: Difference between the first members of the widest and the narrowest prime pair having an arithmetic mean of n.

The programs for A234649, there is no canonical definition to state claims against.
-/

/-! ## A234649.P12482149910339183813

`A078587(n+8)-A002373(n+8)`
-/

namespace A234649.P12482149910339183813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (n + 8) - A002373 (n + 8)

end

end A234649.P12482149910339183813

/-!
# A234650: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234650, there is no canonical definition to state claims against.
-/

/-! ## A234650.P11395404023179983210

`A234658(∑[4*n]+1)`
-/

namespace A234650.P11395404023179983210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234650.P11395404023179983210

/-! ## A234650.P4888747533490249649

`record[A003982(n)*A234658(n+1)]`
-/

namespace A234650.P4888747533490249649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234650.P4888747533490249649

/-! ## A234650.P4420510395818786182

`record[A214505(n)*A234658(n+1)]`
-/

namespace A234650.P4420510395818786182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A234658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234650.P4420510395818786182

/-!
# A234651: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234651, there is no canonical definition to state claims against.
-/

/-! ## A234651.P10271869273684457476

`A234658(∑[n]+1)`
-/

namespace A234651.P10271869273684457476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234651.P10271869273684457476

/-! ## A234651.P9462779286825774799

`record[A234658(1+n)]`
-/

namespace A234651.P9462779286825774799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234651.P9462779286825774799

/-!
# A234652: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234652, there is no canonical definition to state claims against.
-/

/-! ## A234652.P4688436126594646054

`A234658(∑[n+1]+2)`
-/

namespace A234652.P4688436126594646054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234652.P4688436126594646054

/-! ## A234652.P10089128683900690383

`record[A234658(A152948(col(n)+1))]`
-/

namespace A234652.P10089128683900690383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A152948 (SequenceMachineLib.triCol n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234652.P10089128683900690383

/-! ## A234652.P4490259734373380225

`record[gcd(A025581(n), A234658(n+3))]`
-/

namespace A234652.P4490259734373380225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A234658 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234652.P4490259734373380225

/-! ## A234652.P16750858828992487357

`record[gcd(n%A209518(n)², A234658(n+2))]`
-/

namespace A234652.P16750858828992487357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (n : ℤ) (A209518 n ^ 2)) (A234658 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234652.P16750858828992487357

/-!
# A234653: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234653, there is no canonical definition to state claims against.
-/

/-! ## A234653.P1383874852035161443

`A234658(∑[n+2]+4)`
-/

namespace A234653.P1383874852035161443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234653.P1383874852035161443

/-! ## A234653.P8957733927660220593

`record[gcd(A025581(n), A234658(n+4))]`
-/

namespace A234653.P8957733927660220593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A234658 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234653.P8957733927660220593

/-! ## A234653.P8444777613856335077

`record[root(A234658(n+4), A208721(n+1))]`
-/

namespace A234653.P8444777613856335077
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234658 (n + 4) : ℝ) ^ (1 / (A208721 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234653.P8444777613856335077

/-! ## A234653.P16428975417106317795

`record[A234658(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A234653.P16428975417106317795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234653.P16428975417106317795

/-!
# A234654: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234654, there is no canonical definition to state claims against.
-/

/-! ## A234654.P10306289484749177198

`A234658(∑[n+3]+7)`
-/

namespace A234654.P10306289484749177198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234654.P10306289484749177198

/-!
# A234655: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234655, there is no canonical definition to state claims against.
-/

/-! ## A234655.P15856881935329395236

`A234658(A374005(n+1))`
-/

namespace A234655.P15856881935329395236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A374005 (n + 1)).toNat

end

end A234655.P15856881935329395236

/-!
# A234656: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234656, there is no canonical definition to state claims against.
-/

/-! ## A234656.P7930211706717685048

`A234658(∑[n+5]+16)`
-/

namespace A234656.P7930211706717685048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A234656.P7930211706717685048

/-!
# A234657: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234657, there is no canonical definition to state claims against.
-/

/-! ## A234657.P7128580809378194116

`A234658(A374008(n+1))`
-/

namespace A234657.P7128580809378194116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A374008 (n + 1)).toNat

end

end A234657.P7128580809378194116

/-!
# A234659: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234659, there is no canonical definition to state claims against.
-/

/-! ## A234659.P2344871438837415742

`A234665(∑[n]+1)`
-/

namespace A234659.P2344871438837415742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234659.P2344871438837415742

/-! ## A234659.P3978894215211491471

`record[A234665(n+1)]`
-/

namespace A234659.P3978894215211491471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234659.P3978894215211491471

/-!
# A234660: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234660, there is no canonical definition to state claims against.
-/

/-! ## A234660.P5925639543862112142

`A234665(∑[n+1]+2)`
-/

namespace A234660.P5925639543862112142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234660.P5925639543862112142

/-! ## A234660.P9845949939558593205

`record[root(A234665(n+2), A002260(n+1))]`
-/

namespace A234660.P9845949939558593205
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234660.P9845949939558593205

/-! ## A234660.P12989486245434729971

`record[root(A234665(n+2), A008517(n+1))]`
-/

namespace A234660.P12989486245434729971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 2) : ℝ) ^ (1 / (A008517 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234660.P12989486245434729971

/-! ## A234660.P924876024945920322

`record[A234665(abs(A201163(n)))]`
-/

namespace A234660.P924876024945920322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234660.P924876024945920322

/-!
# A234661: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234661, there is no canonical definition to state claims against.
-/

/-! ## A234661.P13338907600907409865

`A234665(∑[n+2]+4)`
-/

namespace A234661.P13338907600907409865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234661.P13338907600907409865

/-! ## A234661.P11187553980889908090

`record[A234665(n+4)/A027465(n)]`
-/

namespace A234661.P11187553980889908090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 4) : ℚ) / (A027465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234661.P11187553980889908090

/-! ## A234661.P13492548885805699214

`record[A234665(n+4)/A093565(n)]`
-/

namespace A234661.P13492548885805699214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 4) : ℚ) / (A093565 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234661.P13492548885805699214

/-! ## A234661.P996112540212146774

`record[root(A234665(n+4), A125232(n+1))]`
-/

namespace A234661.P996112540212146774
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 4) : ℝ) ^ (1 / (A125232 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234661.P996112540212146774

/-!
# A234662: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234662, there is no canonical definition to state claims against.
-/

/-! ## A234662.P10411175150314308437

`A234665(∑[n+3]+7)`
-/

namespace A234662.P10411175150314308437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234662.P10411175150314308437

/-! ## A234662.P13308101916104158391

`A234665(eq[5, A131818(n+1)])%A234664(n+1)`
-/

namespace A234662.P13308101916104158391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A234664 (n + 1))

end

end A234662.P13308101916104158391

/-! ## A234662.P900399855430528470

`A234665(eq[3, A193592(n)])%A234664(n+1)`
-/

namespace A234662.P900399855430528470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A234664 (n + 1))

end

end A234662.P900399855430528470

/-!
# A234663: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234663, there is no canonical definition to state claims against.
-/

/-! ## A234663.P15420948831981316047

`A234665(A167499(n+3))`
-/

namespace A234663.P15420948831981316047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A167499 (n + 3)).toNat

end

end A234663.P15420948831981316047

/-! ## A234663.P10234962598051634080

`A234665(A374005(n+1))`
-/

namespace A234663.P10234962598051634080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A374005 (n + 1)).toNat

end

end A234663.P10234962598051634080

/-!
# A234664: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234664, there is no canonical definition to state claims against.
-/

/-! ## A234664.P13263425077580538146

`A234665(A167614(n+4)+3)`
-/

namespace A234664.P13263425077580538146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A167614 (n + 4) + 3).toNat

end

end A234664.P13263425077580538146

/-! ## A234664.P12345084275605891289

`A234665(A374007(n+1))`
-/

namespace A234664.P12345084275605891289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A374007 (n + 1)).toNat

end

end A234664.P12345084275605891289

/-!
# A234666: Number of combinations for the sum of 6 different numbers from 1 to 49.

The programs for A234666, there is no canonical definition to state claims against.
-/

/-! ## A234666.P16054571726921669296

`A001402(n)-A002262(A010894(n))`
-/

namespace A234666.P16054571726921669296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A002262 (A010894 (n + 21)).toNat

end

end A234666.P16054571726921669296

/-!
# A234667: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234667, there is no canonical definition to state claims against.
-/

/-! ## A234667.P16211067023572732601

`A234672(∑[n]+1)`
-/

namespace A234667.P16211067023572732601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234667.P16211067023572732601

/-! ## A234667.P6856377818257087060

`record[A234672(1+n)]`
-/

namespace A234667.P6856377818257087060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234667.P6856377818257087060

/-! ## A234667.P8659089220696383637

`record[A234672(A008619(n))-n%2]`
-/

namespace A234667.P8659089220696383637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A008619 n).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234667.P8659089220696383637

/-!
# A234668: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234668, there is no canonical definition to state claims against.
-/

/-! ## A234668.P1346778824656450854

`A234672(∑[n+1]+2)`
-/

namespace A234668.P1346778824656450854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234668.P1346778824656450854

/-! ## A234668.P13610521103002139280

`record[A234672(A220693(n+1)+2)]`
-/

namespace A234668.P13610521103002139280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A220693 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234668.P13610521103002139280

/-! ## A234668.P15325577089702852150

`record[A010054(n)*A234672(n+2)]`
-/

namespace A234668.P15325577089702852150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234672 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234668.P15325577089702852150

/-! ## A234668.P14981801190046382126

`record[A234672(n+3)/A053122(n)]`
-/

namespace A234668.P14981801190046382126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234672 (n + 3) : ℚ) / (A053122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234668.P14981801190046382126

/-! ## A234668.P12563201703315236293

`record[gcd(A002262(n), A234672(n+2))]`
-/

namespace A234668.P12563201703315236293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234672 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234668.P12563201703315236293

/-!
# A234669: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234669, there is no canonical definition to state claims against.
-/

/-! ## A234669.P3789067277480918647

`A234672(∑[n+2]+4)`
-/

namespace A234669.P3789067277480918647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234669.P3789067277480918647

/-!
# A234670: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234670, there is no canonical definition to state claims against.
-/

/-! ## A234670.P4906217700385120960

`A234672(∑[n+3]+7)`
-/

namespace A234670.P4906217700385120960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234670.P4906217700385120960

/-!
# A234671: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234671, there is no canonical definition to state claims against.
-/

/-! ## A234671.P4372802921849992052

`A234672(A374005(n+1))`
-/

namespace A234671.P4372802921849992052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A374005 (n + 1)).toNat

end

end A234671.P4372802921849992052

/-!
# A234673: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234673, there is no canonical definition to state claims against.
-/

/-! ## A234673.P2533311664100068099

`A234681(∑[4*n]+1)`
-/

namespace A234673.P2533311664100068099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234673.P2533311664100068099

/-! ## A234673.P3179122712368237154

`record[A234681(A152271(n²))]`
-/

namespace A234673.P3179122712368237154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234673.P3179122712368237154

/-! ## A234673.P354233119785904692

`record[A003982(n)*A234681(n+1)]`
-/

namespace A234673.P354233119785904692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234673.P354233119785904692

/-! ## A234673.P4212508082860282336

`record[gcd(A114327(n), A234681(n+1))]`
-/

namespace A234673.P4212508082860282336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A234681 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234673.P4212508082860282336

/-!
# A234674: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234674, there is no canonical definition to state claims against.
-/

/-! ## A234674.P14705346273214395845

`A234681(∑[n]+1)`
-/

namespace A234674.P14705346273214395845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234674.P14705346273214395845

/-! ## A234674.P2199056029891442666

`record[A234681(1+n)]`
-/

namespace A234674.P2199056029891442666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234674.P2199056029891442666

/-!
# A234675: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234675, there is no canonical definition to state claims against.
-/

/-! ## A234675.P3067489365486012788

`A234681(2+∑[n+1])`
-/

namespace A234675.P3067489365486012788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234675.P3067489365486012788

/-! ## A234675.P9016228054729626460

`record[root(A234681(n+3), A038622(n))]`
-/

namespace A234675.P9016228054729626460
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234681 (n + 3) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234675.P9016228054729626460

/-! ## A234675.P9436653567926015762

`record[gcd(A002262(n), A234681(n+2))]`
-/

namespace A234675.P9436653567926015762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234681 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234675.P9436653567926015762

/-!
# A234676: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234676, there is no canonical definition to state claims against.
-/

/-! ## A234676.P11649273068820272265

`A234681(∑[n+2]+4)`
-/

namespace A234676.P11649273068820272265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234676.P11649273068820272265

/-! ## A234676.P13203422557052504019

`record[A234681(n+4)/A038622(n)]`
-/

namespace A234676.P13203422557052504019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234681 (n + 4) : ℚ) / (A038622 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234676.P13203422557052504019

/-! ## A234676.P8123128785486644682

`record[A234681(n+4)/A093565(n)]`
-/

namespace A234676.P8123128785486644682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234681 (n + 4) : ℚ) / (A093565 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234676.P8123128785486644682

/-!
# A234677: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234677, there is no canonical definition to state claims against.
-/

/-! ## A234677.P7240126319232077591

`A234681(∑[n+3]+7)`
-/

namespace A234677.P7240126319232077591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234677.P7240126319232077591

/-!
# A234678: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234678, there is no canonical definition to state claims against.
-/

/-! ## A234678.P1022117706374470174

`A234681(A374005(n+1))`
-/

namespace A234678.P1022117706374470174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A374005 (n + 1)).toNat

end

end A234678.P1022117706374470174

/-!
# A234679: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234679, there is no canonical definition to state claims against.
-/

/-! ## A234679.P1838761150589152350

`A234681(A374007(n+1))`
-/

namespace A234679.P1838761150589152350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A374007 (n + 1)).toNat

end

end A234679.P1838761150589152350

/-!
# A234680: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234680, there is no canonical definition to state claims against.
-/

/-! ## A234680.P14451377090680685421

`A234681(∑[n+6]+22)`
-/

namespace A234680.P14451377090680685421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A234680.P14451377090680685421

/-!
# A234682: Number of (n+1) X (n+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234682, there is no canonical definition to state claims against.
-/

/-! ## A234682.P8848595403614367480

`A234690(∑[4*n]+1)`
-/

namespace A234682.P8848595403614367480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234682.P8848595403614367480

/-! ## A234682.P9441083524612646241

`record[A003982(n)*A234690(n+1)]`
-/

namespace A234682.P9441083524612646241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234682.P9441083524612646241

/-! ## A234682.P9396444574938396841

`record[gcd(A003987(n), A234690(n+1))]`
-/

namespace A234682.P9396444574938396841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A234690 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234682.P9396444574938396841

/-!
# A234683: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234683, there is no canonical definition to state claims against.
-/

/-! ## A234683.P11918556237289418370

`A234690(1+∑[n])`
-/

namespace A234683.P11918556237289418370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234683.P11918556237289418370

/-! ## A234683.P13576810398277516138

`record[A234690(n+1)]`
-/

namespace A234683.P13576810398277516138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234683.P13576810398277516138

/-!
# A234684: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234684, there is no canonical definition to state claims against.
-/

/-! ## A234684.P14527534341830526789

`A234690(∑[1+n]+2)`
-/

namespace A234684.P14527534341830526789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234684.P14527534341830526789

/-! ## A234684.P16232132123948506120

`record[root(A234690(n+3), A038622(n))]`
-/

namespace A234684.P16232132123948506120
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234690 (n + 3) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234684.P16232132123948506120

/-! ## A234684.P11668351907274900064

`record[root(A234690(n+3), A093565(n))]`
-/

namespace A234684.P11668351907274900064
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234690 (n + 3) : ℝ) ^ (1 / (A093565 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234684.P11668351907274900064

/-! ## A234684.P15569365173968769227

`record[root(A234690(n+3), A066657(n+2))]`
-/

namespace A234684.P15569365173968769227
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234690 (n + 3) : ℝ) ^ (1 / (A066657 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234684.P15569365173968769227

/-!
# A234685: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234685, there is no canonical definition to state claims against.
-/

/-! ## A234685.P3949590634623306886

`A234690(∑[n+2]+4)`
-/

namespace A234685.P3949590634623306886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234685.P3949590634623306886

/-!
# A234686: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234686, there is no canonical definition to state claims against.
-/

/-! ## A234686.P5869684975837859710

`A234690(∑[n+3]+7)`
-/

namespace A234686.P5869684975837859710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234686.P5869684975837859710

/-!
# A234687: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234687, there is no canonical definition to state claims against.
-/

/-! ## A234687.P2148569232799936538

`A234690(A374005(n+1))`
-/

namespace A234687.P2148569232799936538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A374005 (n + 1)).toNat

end

end A234687.P2148569232799936538

/-!
# A234688: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234688, there is no canonical definition to state claims against.
-/

/-! ## A234688.P14240205388720835373

`A234690(A374007(n+1))`
-/

namespace A234688.P14240205388720835373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A374007 (n + 1)).toNat

end

end A234688.P14240205388720835373

/-!
# A234689: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234689, there is no canonical definition to state claims against.
-/

/-! ## A234689.P15482843119278665745

`A234690(A374008(n+1))`
-/

namespace A234689.P15482843119278665745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A374008 (n + 1)).toNat

end

end A234689.P15482843119278665745

/-!
# A234693: Primes of the form n^2 + 1 such that (n - 1)^2 + 1 and (n + 1)^2 + 1 are semiprimes.

The programs for A234693, there is no canonical definition to state claims against.
-/

/-! ## A234693.P4500319295085904503

`1+A321795(1+n)²`
-/

namespace A234693.P4500319295085904503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A321795 (1 + n) ^ 2

end

end A234693.P4500319295085904503

/-! ## A234693.P17574420726432542756

`A321795(n+1)^2+1`
-/

namespace A234693.P17574420726432542756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321795 (n + 1) ^ 2 + 1

end

end A234693.P17574420726432542756

/-! ## A234693.P842415836530383937

`char[A061601(n)]+A321795(n+1)*A321795(n+1)`
-/

namespace A234693.P842415836530383937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A321795 (n + 1) * A321795 (n + 1)

end

end A234693.P842415836530383937

/-! ## A234693.P16677512584224702653

`A125256(A321795(n+1))`
-/

namespace A234693.P16677512584224702653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A321795 (n + 1)).toNat

end

end A234693.P16677512584224702653

/-! ## A234693.P11165368418902655102

`A002522(A321795(n+1))`
-/

namespace A234693.P11165368418902655102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A321795 (n + 1)).toNat

end

end A234693.P11165368418902655102

/-!
# A234694: a(n) = |{0 < k < n: p = k + prime(n-k) and prime(p) - p + 1 are both prime}|.

The programs for A234694, there is no canonical definition to state claims against.
-/

/-! ## A234694.P10944285217882032805

`A007814(A048330(∑[A047130(n)]))`
-/

namespace A234694.P10944285217882032805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A234694.P10944285217882032805

/-! ## A234694.P14543984901370509884

`A151945(A324886(n+1))%A070082(n+1)`
-/

namespace A234694.P14543984901370509884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151945 (A324886 (n + 1)).toNat) (A070082 (n + 1))

end

end A234694.P14543984901370509884

/-! ## A234694.P6359414511245863369

`A046019(C(n, ceil(n/2)))%A366707(n+1)`
-/

namespace A234694.P6359414511245863369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046019 (Nat.choose n ⌈(n : ℚ) / 2⌉.toNat)) (A366707 (n + 1))

end

end A234694.P6359414511245863369

/-! ## A234694.P18039256591900853432

`A003101(n)%A113965(A003081(n))`
-/

namespace A234694.P18039256591900853432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003101 n) (A113965 (A003081 n).toNat)

end

end A234694.P18039256591900853432

/-! ## A234694.P16647235415416719278

`A366615(A354010(n+1))%A366615(n)`
-/

namespace A234694.P16647235415416719278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366615 (A354010 (n + 1)).toNat) (A366615 n)

end

end A234694.P16647235415416719278

/-!
# A234695: Primes p with prime(p) - p + 1 also prime.

The programs for A234695, the canonical program `A234695.P11730189554864400723` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234695 has offset 1).

The definition of A234695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234695.P16394963033649179907

`A000040(A234852(n+1))`
-/

namespace A234695.P16394963033649179907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A234852 (n + 1)).toNat

end

end A234695.P16394963033649179907

namespace A234695

/-- `A000040(A234852(n+1))` -/
def P16394963033649179907.Spec : Prop :=
  ∀ n, P16394963033649179907.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P11730189554864400723

`p?[A234851(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A234695

/-- `p?[A234851(n+1)]` -/
def P11730189554864400723.Spec : Prop :=
  ∀ n, P11730189554864400723.a n = A234695 (n + 1)

theorem P11730189554864400723.correct : P11730189554864400723.Spec := by
  intro n
  simp only [A234695, Nat.add_sub_cancel]

end A234695

/-! ## A234695.P15495684986564593307

`A234851(A234853(1+n))`
-/

namespace A234695.P15495684986564593307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (A234853 (1 + n)).toNat

end

end A234695.P15495684986564593307

namespace A234695

/-- `A234851(A234853(1+n))` -/
def P15495684986564593307.Spec : Prop :=
  ∀ n, P15495684986564593307.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P12105898283325220636

`∩[A106118(n+1), A234851(n+1)]`
-/

namespace A234695.P12105898283325220636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P12105898283325220636

namespace A234695

/-- `∩[A106118(n+1), A234851(n+1)]` -/
def P12105898283325220636.Spec : Prop :=
  ∀ n, (P12105898283325220636.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P15331698706218317112

`∩[A000040(n+1), A234851(n+1)]`
-/

namespace A234695.P15331698706218317112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P15331698706218317112

namespace A234695

/-- `∩[A000040(n+1), A234851(n+1)]` -/
def P15331698706218317112.Spec : Prop :=
  ∀ n, (P15331698706218317112.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P11673468586665289655

`∩[A093515(n+1), A234851(n+1)]`
-/

namespace A234695.P11673468586665289655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P11673468586665289655

namespace A234695

/-- `∩[A093515(n+1), A234851(n+1)]` -/
def P11673468586665289655.Spec : Prop :=
  ∀ n, (P11673468586665289655.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P6918142963092628285

`∩[A051948(n+1), A234851(n+1)]`
-/

namespace A234695.P6918142963092628285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P6918142963092628285

namespace A234695

/-- `∩[A051948(n+1), A234851(n+1)]` -/
def P6918142963092628285.Spec : Prop :=
  ∀ n, (P6918142963092628285.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P14099661975753468046

`∩[A053813(n+1), A234851(n+1)]`
-/

namespace A234695.P14099661975753468046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P14099661975753468046

namespace A234695

/-- `∩[A053813(n+1), A234851(n+1)]` -/
def P14099661975753468046.Spec : Prop :=
  ∀ n, (P14099661975753468046.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P3050957161888413816

`∩[A116974(n+1), A234851(n+1)]`
-/

namespace A234695.P3050957161888413816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P3050957161888413816

namespace A234695

/-- `∩[A116974(n+1), A234851(n+1)]` -/
def P3050957161888413816.Spec : Prop :=
  ∀ n, (P3050957161888413816.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P13517120388954415016

`∩[A175787(n+1), A234851(n+1)]`
-/

namespace A234695.P13517120388954415016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P13517120388954415016

namespace A234695

/-- `∩[A175787(n+1), A234851(n+1)]` -/
def P13517120388954415016.Spec : Prop :=
  ∀ n, (P13517120388954415016.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P14026929447597861393

`∩[A182986(n+1), A234851(n+1)]`
-/

namespace A234695.P14026929447597861393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P14026929447597861393

namespace A234695

/-- `∩[A182986(n+1), A234851(n+1)]` -/
def P14026929447597861393.Spec : Prop :=
  ∀ n, (P14026929447597861393.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P4710012136442674837

`∩[A234851(n+1), A301987(n+1)]`
-/

namespace A234695.P4710012136442674837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P4710012136442674837

namespace A234695

/-- `∩[A234851(n+1), A301987(n+1)]` -/
def P4710012136442674837.Spec : Prop :=
  ∀ n, (P4710012136442674837.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P12029621677634193586

`∩[A053577(n+1), A234851(n+1)]`
-/

namespace A234695.P12029621677634193586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P12029621677634193586

namespace A234695

/-- `∩[A053577(n+1), A234851(n+1)]` -/
def P12029621677634193586.Spec : Prop :=
  ∀ n, (P12029621677634193586.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P12477185242134531570

`∩[A066191(n+1), A234851(n+1)]`
-/

namespace A234695.P12477185242134531570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P12477185242134531570

namespace A234695

/-- `∩[A066191(n+1), A234851(n+1)]` -/
def P12477185242134531570.Spec : Prop :=
  ∀ n, (P12477185242134531570.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P417176076517777628

`record[A006530(A234851(n+2))]`
-/

namespace A234695.P417176076517777628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A234851 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234695.P417176076517777628

namespace A234695

/-- `record[A006530(A234851(n+2))]` -/
def P417176076517777628.Spec : Prop :=
  ∀ n, P417176076517777628.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P13844021969661458552

`filter[A234851(n+1), A001222(#)]`
-/

namespace A234695.P13844021969661458552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A234695.P13844021969661458552

namespace A234695

/-- `filter[A234851(n+1), A001222(#)]` -/
def P13844021969661458552.Spec : Prop :=
  ∀ n, P13844021969661458552.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P5114983333653852835

`filter[A234851(n+1), A010051(#)]`
-/

namespace A234695.P5114983333653852835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A234695.P5114983333653852835

namespace A234695

/-- `filter[A234851(n+1), A010051(#)]` -/
def P5114983333653852835.Spec : Prop :=
  ∀ n, P5114983333653852835.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P14346786905738724164

`filter[A234851(n+2), A365716(#)]`
-/

namespace A234695.P14346786905738724164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A234695.P14346786905738724164

namespace A234695

/-- `filter[A234851(n+2), A365716(#)]` -/
def P14346786905738724164.Spec : Prop :=
  ∀ n, P14346786905738724164.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P14597224588321710501

`filter[A234851(n+2), A380467(#)]`
-/

namespace A234695.P14597224588321710501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A234695.P14597224588321710501

namespace A234695

/-- `filter[A234851(n+2), A380467(#)]` -/
def P14597224588321710501.Spec : Prop :=
  ∀ n, P14597224588321710501.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P16891138058214316775

`∩[A174219(n+1), A234851(n+1)]`
-/

namespace A234695.P16891138058214316775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P16891138058214316775

namespace A234695

/-- `∩[A174219(n+1), A234851(n+1)]` -/
def P16891138058214316775.Spec : Prop :=
  ∀ n, (P16891138058214316775.a n : ℤ) = A234695 (n + 1)

end A234695

/-!
# A234696: Indices of primes in the tribonacci-like sequence, A214727.

The programs for A234696, there is no canonical definition to state claims against.
-/

/-! ## A234696.P17447472787543434455

`A253593(n+1)*A253593(A237770(n))`
-/

namespace A234696.P17447472787543434455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253593 (n + 1) * A253593 (A237770 n).toNat

end

end A234696.P17447472787543434455

/-!
# A234697: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234697, there is no canonical definition to state claims against.
-/

/-! ## A234697.P7644874891177180269

`A234702(∑[n]+1)`
-/

namespace A234697.P7644874891177180269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234697.P7644874891177180269

/-! ## A234697.P9403728969837740616

`record[A234702(1+n)]`
-/

namespace A234697.P9403728969837740616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234697.P9403728969837740616

/-! ## A234697.P14401671953552635759

`lcm(3, record[A234702(A065033(n))])`
-/

namespace A234697.P14401671953552635759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A234697.P14401671953552635759

/-!
# A234698: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234698, there is no canonical definition to state claims against.
-/

/-! ## A234698.P11776022747338704715

`A234702(∑[n+1]+2)`
-/

namespace A234698.P11776022747338704715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234698.P11776022747338704715

/-! ## A234698.P11482125237963193639

`record[A010054(n)*A234702(n+2)]`
-/

namespace A234698.P11482125237963193639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234698.P11482125237963193639

/-!
# A234699: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234699, there is no canonical definition to state claims against.
-/

/-! ## A234699.P5142020212451099852

`A234702(∑[n+2]+4)`
-/

namespace A234699.P5142020212451099852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234699.P5142020212451099852

