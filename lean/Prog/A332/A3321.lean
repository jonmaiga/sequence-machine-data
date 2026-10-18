import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A332101: Least m such that m^n <= Sum_{k

The programs for A332101, the canonical program `A332101.P15267802862689855331` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332101 has offset 0).

The definition of A332101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332101.P17694675477822632307

`round(n/log(2))+2`
-/

namespace A332101.P17694675477822632307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)) + 2

end

end A332101.P17694675477822632307

namespace A332101

/-- `round(n/log(2))+2` -/
def P17694675477822632307.Spec : Prop :=
  ∀ n, P17694675477822632307.a n = A332101 n

end A332101

/-! ## A332101.P15267802862689855331

`abs(xor(-1, A072633(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A332101

/-- `abs(xor(-1, A072633(n)))` -/
def P15267802862689855331.Spec : Prop :=
  ∀ n, P15267802862689855331.a n = A332101 n

theorem P15267802862689855331.correct : P15267802862689855331.Spec := by
  intro n
  simp only [A332101]

end A332101

/-! ## A332101.P4034240785167548303

`A020725(A072633(n))`
-/

namespace A332101.P4034240785167548303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A072633 n).toNat

end

end A332101.P4034240785167548303

namespace A332101

/-- `A020725(A072633(n))` -/
def P4034240785167548303.Spec : Prop :=
  ∀ n, P4034240785167548303.a n = A332101 n

end A332101

/-! ## A332101.P4205547056344868787

`A000027(A072633(n)+1)`
-/

namespace A332101.P4205547056344868787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A072633 n + 1).toNat

end

end A332101.P4205547056344868787

namespace A332101

/-- `A000027(A072633(n)+1)` -/
def P4205547056344868787.Spec : Prop :=
  ∀ n, P4205547056344868787.a n = A332101 n

end A332101

/-! ## A332101.P2042128281316343069

`A008619(2*A072633(n))`
-/

namespace A332101.P2042128281316343069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A072633 n).toNat

end

end A332101.P2042128281316343069

namespace A332101

/-- `A008619(2*A072633(n))` -/
def P2042128281316343069.Spec : Prop :=
  ∀ n, P2042128281316343069.a n = A332101 n

end A332101

/-!
# A332102: Least m > 0 such that 2*m^n <= Sum_{k < m} k^n.

The programs for A332102, there is no canonical definition to state claims against.
-/

/-! ## A332102.P2117162495946380497

`round(n*root(15, 3))+3`
-/

namespace A332102.P2117162495946380497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (15 : ℝ) ^ (1 / (3 : ℝ))) + 3

end

end A332102.P2117162495946380497

/-! ## A332102.P6977275696982739217

`ceil((n+1)*acos(0)²)`
-/

namespace A332102.P6977275696982739217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arccos (0 : ℝ) ^ 2⌉

end

end A332102.P6977275696982739217

/-! ## A332102.P4496575374838462886

`ceil((n+1)*asin(1)²)`
-/

namespace A332102.P4496575374838462886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arcsin (1 : ℝ) ^ 2⌉

end

end A332102.P4496575374838462886

/-! ## A332102.P11483415300329719788

`ceil((n+1)*acos(0)^2)`
-/

namespace A332102.P11483415300329719788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arccos (0 : ℝ) ^ 2⌉

end

end A332102.P11483415300329719788

/-! ## A332102.P14403260281659822826

`ceil((n+1)*asin(1)^2)`
-/

namespace A332102.P14403260281659822826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arcsin (1 : ℝ) ^ 2⌉

end

end A332102.P14403260281659822826

/-! ## A332102.P15903963638957177110

`ceil(π*(n+1)*atan(1))`
-/

namespace A332102.P15903963638957177110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * ((n + 1 : ℝ) * Real.arctan (1 : ℝ))⌉

end

end A332102.P15903963638957177110

/-! ## A332102.P10821131508054536225

`ceil((n+1)/(1/asin(1))²)`
-/

namespace A332102.P10821131508054536225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (1 / Real.arcsin (1 : ℝ)) ^ 2⌉

end

end A332102.P10821131508054536225

/-! ## A332102.P14991421643702140005

`ceil((n+1)*(2*atan(1))²)`
-/

namespace A332102.P14991421643702140005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (2 * Real.arctan (1 : ℝ)) ^ 2⌉

end

end A332102.P14991421643702140005

/-! ## A332102.P13107981656897765050

`ceil((n+1)*(2*acot(1))²)`
-/

namespace A332102.P13107981656897765050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (2 * SequenceMachineLib.acot (1 : ℝ)) ^ 2⌉

end

end A332102.P13107981656897765050

/-! ## A332102.P7252771834701819923

`ceil((n+1)*asin(1)*asin(1))`
-/

namespace A332102.P7252771834701819923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arcsin (1 : ℝ) * Real.arcsin (1 : ℝ)⌉

end

end A332102.P7252771834701819923

/-!
# A332103: Numbers not of the form floor(p/4) + 1, where p is a prime.

The programs for A332103, there is no canonical definition to state claims against.
-/

/-! ## A332103.P16969166611894117812

`comp[ceil(A020484(n)/4)]`
-/

namespace A332103.P16969166611894117812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020484 n : ℚ) / 4⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P16969166611894117812

/-! ## A332103.P14888114698556782948

`comp[ceil(A060264(n)/4)]`
-/

namespace A332103.P14888114698556782948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060264 n : ℚ) / 4⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P14888114698556782948

/-! ## A332103.P12906254544292977265

`comp[A075518(n+1)+1]`
-/

namespace A332103.P12906254544292977265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P12906254544292977265

/-! ## A332103.P16392242496830551916

`comp[floor(A098090(n+1)/2)]`
-/

namespace A332103.P16392242496830551916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098090 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P16392242496830551916

/-! ## A332103.P16136300418679160626

`comp[ceil(A006254(n+1)/2)]`
-/

namespace A332103.P16136300418679160626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006254 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P16136300418679160626

/-! ## A332103.P16964648775203389872

`comp[floor(A113935(n+1)/4)]`
-/

namespace A332103.P16964648775203389872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113935 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P16964648775203389872

/-! ## A332103.P10765353701284532436

`comp[floor(A175221(n+1)/4)]`
-/

namespace A332103.P10765353701284532436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175221 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P10765353701284532436

/-! ## A332103.P10708232096045197295

`comp[floor(A298252(n+1)/4)]`
-/

namespace A332103.P10708232096045197295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298252 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P10708232096045197295

/-! ## A332103.P7776094501559662195

`comp[ceil(A000040(n+1)/4)]`
-/

namespace A332103.P7776094501559662195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 4⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P7776094501559662195

/-! ## A332103.P10961569237680258054

`comp[ceil(A006005(n+1)/4)]`
-/

namespace A332103.P10961569237680258054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006005 (n + 1) : ℚ) / 4⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332103.P10961569237680258054

/-!
# A332104: Triangle read by rows in which row n >= 0 lists numbers from 0 to n starting at floor(n/2) and using alternatively larger respectively smaller numbers than the values used so far.

The programs for A332104, there is no canonical definition to state claims against.
-/

/-! ## A332104.P12992170652761012649

`A209279(n+1)-1`
-/

namespace A332104.P12992170652761012649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) - 1

end

end A332104.P12992170652761012649

/-! ## A332104.P17812732904726161244

`A209278(comp[∑[n]])-2`
-/

namespace A332104.P17812732904726161244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2

end

end A332104.P17812732904726161244

/-! ## A332104.P14202225710870110742

`abs(A128180(n+1))-1`
-/

namespace A332104.P14202225710870110742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128180 (n + 1)| - 1

end

end A332104.P14202225710870110742

/-! ## A332104.P18265925304406785904

`floor((A131307(n+1)-1)/2)`
-/

namespace A332104.P18265925304406785904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131307 (n + 1) - 1 : ℚ) / 2⌋

end

end A332104.P18265925304406785904

/-! ## A332104.P1271139663084456814

`∑[char[∑[n]]]-A209278(n+1)`
-/

namespace A332104.P1271139663084456814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A209278 (n + 1)

end

end A332104.P1271139663084456814

/-! ## A332104.P6987482531490691906

`A057059(∑[char[∑[n]]]²-n)-1`
-/

namespace A332104.P6987482531490691906
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A332104.P6987482531490691906

/-! ## A332104.P6634895990041538263

`C(comp[∑[n]]-n, 2)-A057028(n+1)`
-/

namespace A332104.P6634895990041538263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - A057028 (n + 1)

end

end A332104.P6634895990041538263

/-! ## A332104.P6144019521969837637

`A025669(A057028(n+1))`
-/

namespace A332104.P6144019521969837637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (A057028 (n + 1)).toNat

end

end A332104.P6144019521969837637

/-! ## A332104.P10082925488480819202

`A000401(A209279(n+1))`
-/

namespace A332104.P10082925488480819202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A209279 (n + 1)).toNat

end

end A332104.P10082925488480819202

/-!
# A332106: Least m > n such that n + ... + m = p*2^k with p prime and k >= 0.

The programs for A332106, there is no canonical definition to state claims against.
-/

/-! ## A332106.P4879702200336345709

`A331416(∑[n]+n)+1+n`
-/

namespace A332106.P4879702200336345709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1 + (n : ℤ)

end

end A332106.P4879702200336345709

/-! ## A332106.P16104766357289922741

`A049865(A289529(n+1)+1)`
-/

namespace A332106.P16104766357289922741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049865 (A289529 (n + 1) + 1).toNat

end

end A332106.P16104766357289922741

/-! ## A332106.P18228614136390028483

`A106385(A196660(n+1))+n`
-/

namespace A332106.P18228614136390028483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106385 (A196660 (n + 1)).toNat + (n : ℤ)

end

end A332106.P18228614136390028483

/-! ## A332106.P18428855221479953000

`A331416(A000096(n))+n+1`
-/

namespace A332106.P18428855221479953000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (A000096 n).toNat + (n + 1 : ℤ)

end

end A332106.P18428855221479953000

/-! ## A332106.P10525730925628674341

`A026791(A143543(n+4))+n`
-/

namespace A332106.P10525730925628674341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (A143543 (n + 4)).toNat + (n : ℤ)

end

end A332106.P10525730925628674341

/-!
# A332107: Numbers that are not the sum of seven (7) positive cubes.

The programs for A332107, there is no canonical definition to state claims against.
-/

/-! ## A332107.P12498701655161177354

`lt[n*A025460(n), n]`
-/

namespace A332107.P12498701655161177354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025460 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332107.P12498701655161177354

/-! ## A332107.P11118218323055034630

`lt[A025460(n+1), 1]+1`
-/

namespace A332107.P11118218323055034630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A332107.P11118218323055034630

/-! ## A332107.P3381390968451887488

`eq[A000007(n), A025460(n)]`
-/

namespace A332107.P3381390968451887488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332107.P3381390968451887488

/-! ## A332107.P1717960548447860082

`eq[A000038(n), A025460(n)]`
-/

namespace A332107.P1717960548447860082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332107.P1717960548447860082

/-! ## A332107.P11930793139657141743

`lt[A025460(n), A134824(n)²]`
-/

namespace A332107.P11930793139657141743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332107.P11930793139657141743

/-! ## A332107.P9321731544050108211

`record[A028310(gcd(n, A025460(n)))]`
-/

namespace A332107.P9321731544050108211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A025460 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332107.P9321731544050108211

/-! ## A332107.P12836539869576279622

`eq[exp(A025460(n)), A054977(n)]`
-/

namespace A332107.P12836539869576279622
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A025460 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A332107.P12836539869576279622

/-! ## A332107.P10699680752688332926

`eq[1, A057427(n)+A025460(n)]`
-/

namespace A332107.P10699680752688332926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332107.P10699680752688332926

/-! ## A332107.P5620577877072508173

`eq[1, A158388(n)+A025460(n)]`
-/

namespace A332107.P5620577877072508173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332107.P5620577877072508173

/-! ## A332107.P14072341699665300161

`eq[(A025460(n)+2)², A040002(n)]`
-/

namespace A332107.P14072341699665300161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025460 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332107.P14072341699665300161

/-! ## A332107.P1898213092933963367

`eq[1, A083329(A025460(n+1)²)]+1`
-/

namespace A332107.P1898213092933963367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (A025460 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332107.P1898213092933963367

/-! ## A332107.P9573308989252242892

`eq[1, A162316(A025460(n+1)²)]+1`
-/

namespace A332107.P9573308989252242892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162316 (A025460 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332107.P9573308989252242892

/-! ## A332107.P14829243369709122075

`record[gcd(n+1, A025460(A000027(n+1)))]`
-/

namespace A332107.P14829243369709122075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025460 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332107.P14829243369709122075

/-! ## A332107.P15262618923400303782

`record[gcd(A008619(2*n), A025460(n+1))]`
-/

namespace A332107.P15262618923400303782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (2 * n)) (A025460 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332107.P15262618923400303782

/-! ## A332107.P8841339163290984367

`eq[A025450(n+1), A025451(n+1)]+1`
-/

namespace A332107.P8841339163290984367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332107.P8841339163290984367

/-! ## A332107.P9486109593845206785

`record[(n+1)/A000025(A025460(n+1)+1)]`
-/

namespace A332107.P9486109593845206785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000025 (A025460 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332107.P9486109593845206785

/-! ## A332107.P5824821545473291128

`eq[A000122(A000122(n)+n), A025460(n)]`
-/

namespace A332107.P5824821545473291128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332107.P5824821545473291128

/-! ## A332107.P10608971189102126642

`eq[A010057(A010057(n)+n), A025460(n)]`
-/

namespace A332107.P10608971189102126642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A010057 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332107.P10608971189102126642

/-!
# A332108: Numbers that are not the sum of eight (8) positive cubes.

The programs for A332108, there is no canonical definition to state claims against.
-/

/-! ## A332108.P11766047359393379807

`lt[n*A025461(n), n]`
-/

namespace A332108.P11766047359393379807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025461 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332108.P11766047359393379807

/-! ## A332108.P1098424326083540942

`lt[A025461(n+1), 1]+1`
-/

namespace A332108.P1098424326083540942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A332108.P1098424326083540942

/-! ## A332108.P16826770907699307563

`eq[A000007(n), A025461(n)]`
-/

namespace A332108.P16826770907699307563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332108.P16826770907699307563

/-! ## A332108.P9988079482975369309

`eq[A000038(n), A025461(n)]`
-/

namespace A332108.P9988079482975369309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332108.P9988079482975369309

/-! ## A332108.P13804590800805156018

`lt[A025461(n), A057427(n)]`
-/

namespace A332108.P13804590800805156018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332108.P13804590800805156018

/-! ## A332108.P153545878133816197

`lt[A025461(n), A158388(n)]`
-/

namespace A332108.P153545878133816197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332108.P153545878133816197

/-! ## A332108.P4729955776249307996

`lt[A025461(n), n/A000032(n)]`
-/

namespace A332108.P4729955776249307996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000032 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A332108.P4729955776249307996

/-! ## A332108.P18226014231242763930

`eq[A025461(n), A151933(n)]`
-/

namespace A332108.P18226014231242763930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332108.P18226014231242763930

/-!
# A332109: Numbers that are not the sum of nine (9) positive cubes.

The programs for A332109, there is no canonical definition to state claims against.
-/

/-! ## A332109.P18369465622523416264

`lt[n*A025462(n), n]`
-/

namespace A332109.P18369465622523416264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025462 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332109.P18369465622523416264

/-! ## A332109.P15463615649981226453

`eq[0, A025462(n+1)]+1`
-/

namespace A332109.P15463615649981226453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332109.P15463615649981226453

/-! ## A332109.P16355314597786921247

`eq[A000007(n), A025462(n)]`
-/

namespace A332109.P16355314597786921247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P16355314597786921247

/-! ## A332109.P13445907819724130950

`eq[A000038(n), A025462(n)]`
-/

namespace A332109.P13445907819724130950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P13445907819724130950

/-! ## A332109.P12318208065944110121

`eq[A025462(n), A063667(n)]`
-/

namespace A332109.P12318208065944110121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P12318208065944110121

/-! ## A332109.P794915195499547925

`lt[A025462(n), A057427(n)]`
-/

namespace A332109.P794915195499547925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332109.P794915195499547925

/-! ## A332109.P6898074162081577435

`lt[A025462(n), A158388(n)]`
-/

namespace A332109.P6898074162081577435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332109.P6898074162081577435

/-! ## A332109.P5750796890738604824

`lt[A054977(n)+A025462(n), 2]`
-/

namespace A332109.P5750796890738604824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A025462 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332109.P5750796890738604824

/-! ## A332109.P12333541231694897041

`lt[A025462(n)^A001222(n+1), 1]`
-/

namespace A332109.P12333541231694897041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025462 n : ℚ) ^ (A001222 (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A332109.P12333541231694897041

/-! ## A332109.P15678717386563572101

`lt[A025462(n), A000040(n+1)%2]`
-/

namespace A332109.P15678717386563572101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332109.P15678717386563572101

/-! ## A332109.P16867874477261899536

`eq[0, n^a(A001221(n))*A025462(n)]` with `a(0)=1`
-/

namespace A332109.P16867874477261899536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℝ) ^ (f2 (A001221 n).toNat) * (A025462 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A332109.P16867874477261899536

/-! ## A332109.P2906470650364355847

`eq[A000035(A001316(n)), A025462(n)]`
-/

namespace A332109.P2906470650364355847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P2906470650364355847

/-! ## A332109.P3153656801333036734

`eq[A000035(A005875(n)), A025462(n)]`
-/

namespace A332109.P3153656801333036734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005875 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P3153656801333036734

/-! ## A332109.P5794832570322091888

`eq[A008683(A000118(n)), A025462(n)]`
-/

namespace A332109.P5794832570322091888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000118 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P5794832570322091888

/-! ## A332109.P3662185008539149485

`eq[A008683(A004011(n)), A025462(n)]`
-/

namespace A332109.P3662185008539149485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004011 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P3662185008539149485

/-! ## A332109.P2607118089462954996

`eq[A008683(A008574(n)), A025462(n)]`
-/

namespace A332109.P2607118089462954996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P2607118089462954996

/-! ## A332109.P14840789647292158221

`eq[A008683(A022144(n)), A025462(n)]`
-/

namespace A332109.P14840789647292158221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P14840789647292158221

/-! ## A332109.P11172033527722113970

`eq[A008683(A034896(n)), A025462(n)]`
-/

namespace A332109.P11172033527722113970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A034896 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332109.P11172033527722113970

/-!
# A332110: Numbers that are not the sum of ten (10) positive cubes.

The programs for A332110, there is no canonical definition to state claims against.
-/

/-! ## A332110.P2951344179670596770

`lt[n*A025463(n), n]`
-/

namespace A332110.P2951344179670596770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025463 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332110.P2951344179670596770

/-! ## A332110.P2643619569828070486

`eq[0, A025463(n+1)]+1`
-/

namespace A332110.P2643619569828070486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332110.P2643619569828070486

/-! ## A332110.P9079560924090783209

`eq[A000007(n), A025463(n)]`
-/

namespace A332110.P9079560924090783209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332110.P9079560924090783209

/-! ## A332110.P16171959800991430617

`eq[A000038(n), A025463(n)]`
-/

namespace A332110.P16171959800991430617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332110.P16171959800991430617

/-! ## A332110.P13372269364305231464

`lt[A025463(n), A057427(n)]`
-/

namespace A332110.P13372269364305231464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332110.P13372269364305231464

/-! ## A332110.P7152514629040891093

`lt[A025463(n), abs(A057428(n))]`
-/

namespace A332110.P7152514629040891093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332110.P7152514629040891093

/-! ## A332110.P512482522201241796

`lt[A025463(n), A062157(n)²]`
-/

namespace A332110.P512482522201241796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332110.P512482522201241796

/-! ## A332110.P13077805286265379174

`eq[A025463(n), A204689(2*n)]`
-/

namespace A332110.P13077805286265379174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204689 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332110.P13077805286265379174

/-! ## A332110.P8247820904480327193

`lt[A025463(n), A000040(n+1)%2]`
-/

namespace A332110.P8247820904480327193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332110.P8247820904480327193

/-!
# A332111: Numbers that are not the sum of eleven (11) positive cubes.

The programs for A332111, there is no canonical definition to state claims against.
-/

/-! ## A332111.P6447171889180506558

`eq[A000007(C(n, 2)+1), A025463(n)]+1`
-/

namespace A332111.P6447171889180506558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose n 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P6447171889180506558

/-! ## A332111.P1439147680828711736

`eq[A000007(A007318(n)), A025463(n)]+1`
-/

namespace A332111.P1439147680828711736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P1439147680828711736

/-! ## A332111.P1645896928246638359

`eq[A000007(A003350(n+1)), A025463(n)]+1`
-/

namespace A332111.P1645896928246638359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A003350 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P1645896928246638359

/-! ## A332111.P7716031592088204063

`eq[A000007(A000217(n)+6), A025463(n)]+1`
-/

namespace A332111.P7716031592088204063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000217 n + 6).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P7716031592088204063

/-! ## A332111.P11892410846438435049

`eq[A000007(A045710(n+1)+1), A025463(n)]+1`
-/

namespace A332111.P11892410846438435049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A045710 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P11892410846438435049

/-! ## A332111.P4505649145751691539

`eq[A000007(A167614(n+1)+3), A025463(n)]+1`
-/

namespace A332111.P4505649145751691539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A167614 (n + 1) + 3).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P4505649145751691539

/-! ## A332111.P18219018500873675573

`eq[A000007(A058393(2*(n+2))+3), A025463(n)]+1`
-/

namespace A332111.P18219018500873675573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A058393 (2 * (n + 2)) + 3).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P18219018500873675573

/-! ## A332111.P3596591209081628540

`eq[A000007(A347756(n+1)), A025463(n)]+1`
-/

namespace A332111.P3596591209081628540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A347756 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P3596591209081628540

/-! ## A332111.P13388950282550341591

`eq[A000007(A005823(2*(n+1))), A025463(n)]+1`
-/

namespace A332111.P13388950282550341591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A005823 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P13388950282550341591

/-! ## A332111.P462456097495322856

`eq[A000007(A007623(n)+3), A025463(n)]+1`
-/

namespace A332111.P462456097495322856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A007623 n + 3).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332111.P462456097495322856

/-!
# A332112: a(n) = (10^(2n+1)-1)/9 + 10^n.

The programs for A332112, the canonical program `A332112.P5302941284350990724` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332112 has offset 0).

The definition of A332112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332112.P5302941284350990724

`(10^(2*n+1)-1)/9+10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332112

/-- `(10^(2*n+1)-1)/9+10^n` -/
def P5302941284350990724.Spec : Prop :=
  ∀ n, P5302941284350990724.a n = (A332112 n : ℚ)

end A332112

/-! ## A332112.P13269499754014665280

`A332124(n)/2`
-/

namespace A332112.P13269499754014665280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332124 n : ℚ) / 2

end

end A332112.P13269499754014665280

namespace A332112

/-- `A332124(n)/2` -/
def P13269499754014665280.Spec : Prop :=
  ∀ n, P13269499754014665280.a n = (A332112 n : ℚ)

end A332112

/-! ## A332112.P545677963831539205

`A332136(n)/3`
-/

namespace A332112.P545677963831539205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332136 n : ℚ) / 3

end

end A332112.P545677963831539205

namespace A332112

/-- `A332136(n)/3` -/
def P545677963831539205.Spec : Prop :=
  ∀ n, P545677963831539205.a n = (A332112 n : ℚ)

end A332112

/-! ## A332112.P17015484041295054244

`A332148(n)/4`
-/

namespace A332112.P17015484041295054244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332148 n : ℚ) / 4

end

end A332112.P17015484041295054244

namespace A332112

/-- `A332148(n)/4` -/
def P17015484041295054244.Spec : Prop :=
  ∀ n, P17015484041295054244.a n = (A332112 n : ℚ)

end A332112

/-! ## A332112.P2958605996013778567

`A071762(2*(n+1)²)`
-/

namespace A332112.P2958605996013778567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (2 * (n + 1) ^ 2)

end

end A332112.P2958605996013778567

namespace A332112

/-- `A071762(2*(n+1)²)` -/
def P2958605996013778567.Spec : Prop :=
  ∀ n, P2958605996013778567.a n = A332112 n

end A332112

/-! ## A332112.P3374534727753180839

`A117058(3*n+n+1)`
-/

namespace A332112.P3374534727753180839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117058 (3 * n + (n + 1))

end

end A332112.P3374534727753180839

namespace A332112

/-- `A117058(3*n+n+1)` -/
def P3374534727753180839.Spec : Prop :=
  ∀ n, P3374534727753180839.a n = A332112 n

end A332112

/-! ## A332112.P15826863389759283639

`A199986((n+1)²+n²)`
-/

namespace A332112.P15826863389759283639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199986 ((n + 1) ^ 2 + n ^ 2)

end

end A332112.P15826863389759283639

namespace A332112

/-- `A199986((n+1)²+n²)` -/
def P15826863389759283639.Spec : Prop :=
  ∀ n, P15826863389759283639.a n = A332112 n

end A332112

/-! ## A332112.P10689087085775973237

`A002275(n+1)*A062397(n)`
-/

namespace A332112.P10689087085775973237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * A062397 n

end

end A332112.P10689087085775973237

namespace A332112

/-- `A002275(n+1)*A062397(n)` -/
def P10689087085775973237.Spec : Prop :=
  ∀ n, P10689087085775973237.a n = A332112 n

end A332112

/-!
# A332113: a(n) = (10^(2*n+1) - 1)/9 + 2*10^n.

The programs for A332113, the canonical program `A332113.P17849214630822095434` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332113 has offset 0).

The definition of A332113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332113.P17849214630822095434

`(10^(2*n+1)-1)/9+2*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332113

/-- `(10^(2*n+1)-1)/9+2*10^n` -/
def P17849214630822095434.Spec : Prop :=
  ∀ n, P17849214630822095434.a n = (A332113 n : ℚ)

end A332113

/-! ## A332113.P16657136022552922953

`A332126(n)/2`
-/

namespace A332113.P16657136022552922953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332126 n : ℚ) / 2

end

end A332113.P16657136022552922953

namespace A332113

/-- `A332126(n)/2` -/
def P16657136022552922953.Spec : Prop :=
  ∀ n, P16657136022552922953.a n = (A332113 n : ℚ)

end A332113

/-! ## A332113.P16479238306550501453

`A332139(n)/3`
-/

namespace A332113.P16479238306550501453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332139 n : ℚ) / 3

end

end A332113.P16479238306550501453

namespace A332113

/-- `A332139(n)/3` -/
def P16479238306550501453.Spec : Prop :=
  ∀ n, P16479238306550501453.a n = (A332113 n : ℚ)

end A332113

/-! ## A332113.P15075922848829866927

`A117058(4*n+2)`
-/

namespace A332113.P15075922848829866927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117058 (4 * n + 2)

end

end A332113.P15075922848829866927

namespace A332113

/-- `A117058(4*n+2)` -/
def P15075922848829866927.Spec : Prop :=
  ∀ n, P15075922848829866927.a n = A332113 n

end A332113

/-! ## A332113.P8845033903784850131

`A034050(∑[4*n]+1)`
-/

namespace A332113.P8845033903784850131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332113.P8845033903784850131

namespace A332113

/-- `A034050(∑[4*n]+1)` -/
def P8845033903784850131.Spec : Prop :=
  ∀ n, P8845033903784850131.a n = A332113 n

end A332113

/-! ## A332113.P12469288745459714369

`(A332125(n)+A011557(n))/2`
-/

namespace A332113.P12469288745459714369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332125 n + A011557 n : ℚ) / 2

end

end A332113.P12469288745459714369

namespace A332113

/-- `(A332125(n)+A011557(n))/2` -/
def P12469288745459714369.Spec : Prop :=
  ∀ n, P12469288745459714369.a n = (A332113 n : ℚ)

end A332113

/-! ## A332113.P12967564335851269439

`(A332116(n)+A138148(n))/2`
-/

namespace A332113.P12967564335851269439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332116 n + A138148 n : ℚ) / 2

end

end A332113.P12967564335851269439

namespace A332113

/-- `(A332116(n)+A138148(n))/2` -/
def P12967564335851269439.Spec : Prop :=
  ∀ n, P12967564335851269439.a n = (A332113 n : ℚ)

end A332113

/-!
# A332114: a(n) = (10^(2*n+1) - 1)/9 + 3*10^n.

The programs for A332114, the canonical program `A332114.P12998186533826003753` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332114 has offset 0).

The definition of A332114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332114.P12998186533826003753

`(10^(2*n+1)-1)/9+3*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332114

/-- `(10^(2*n+1)-1)/9+3*10^n` -/
def P12998186533826003753.Spec : Prop :=
  ∀ n, P12998186533826003753.a n = (A332114 n : ℚ)

end A332114

/-! ## A332114.P11791288399551242108

`A332128(n)/2`
-/

namespace A332114.P11791288399551242108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332128 n : ℚ) / 2

end

end A332114.P11791288399551242108

namespace A332114

/-- `A332128(n)/2` -/
def P11791288399551242108.Spec : Prop :=
  ∀ n, P11791288399551242108.a n = (A332114 n : ℚ)

end A332114

/-! ## A332114.P17759197970147432074

`abs(2*(10^n+1)*∑[10^n]-A138148(n))`
-/

namespace A332114.P17759197970147432074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * ((10 ^ n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℕ) : ℤ) - A138148 n|

end

end A332114.P17759197970147432074

namespace A332114

/-- `abs(2*(10^n+1)*∑[10^n]-A138148(n))` -/
def P17759197970147432074.Spec : Prop :=
  ∀ n, P17759197970147432074.a n = A332114 n

end A332114

/-! ## A332114.P101042073162350197

`abs(5*(10*(10^n)²-1)/9-10^n-A332168(n))`
-/

namespace A332114.P101042073162350197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ) - (A332168 n : ℚ)|

end

end A332114.P101042073162350197

namespace A332114

/-- `abs(5*(10*(10^n)²-1)/9-10^n-A332168(n))` -/
def P101042073162350197.Spec : Prop :=
  ∀ n, P101042073162350197.a n = (A332114 n : ℚ)

end A332114

/-! ## A332114.P11456390295880930590

`A332129(n)%A332115(n)`
-/

namespace A332114.P11456390295880930590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332129 n) (A332115 n)

end

end A332114.P11456390295880930590

namespace A332114

/-- `A332129(n)%A332115(n)` -/
def P11456390295880930590.Spec : Prop :=
  ∀ n, P11456390295880930590.a n = A332114 n

end A332114

/-! ## A332114.P14997199757048511389

`A332139(n)%A332125(n)`
-/

namespace A332114.P14997199757048511389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332139 n) (A332125 n)

end

end A332114.P14997199757048511389

namespace A332114

/-- `A332139(n)%A332125(n)` -/
def P14997199757048511389.Spec : Prop :=
  ∀ n, P14997199757048511389.a n = A332114 n

end A332114

/-! ## A332114.P17087326882891211571

`A332149(n)%A332135(n)`
-/

namespace A332114.P17087326882891211571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332149 n) (A332135 n)

end

end A332114.P17087326882891211571

namespace A332114

/-- `A332149(n)%A332135(n)` -/
def P17087326882891211571.Spec : Prop :=
  ∀ n, P17087326882891211571.a n = A332114 n

end A332114

/-! ## A332114.P5179584726577530738

`abs(A011557(n)-A332115(n))`
-/

namespace A332114.P5179584726577530738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332115 n|

end

end A332114.P5179584726577530738

namespace A332114

/-- `abs(A011557(n)-A332115(n))` -/
def P5179584726577530738.Spec : Prop :=
  ∀ n, P5179584726577530738.a n = A332114 n

end A332114

/-! ## A332114.P3848354738782122204

`abs(A332150(n)-A332164(n))`
-/

namespace A332114.P3848354738782122204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332150 n - A332164 n|

end

end A332114.P3848354738782122204

namespace A332114

/-- `abs(A332150(n)-A332164(n))` -/
def P3848354738782122204.Spec : Prop :=
  ∀ n, P3848354738782122204.a n = A332114 n

end A332114

/-!
# A332115: a(n) = (10^(2*n+1) - 1)/9 + 4*10^n.

The programs for A332115, the canonical program `A332115.P8830179451740922607` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332115 has offset 0).

The definition of A332115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332115.P8830179451740922607

`(10^(2*n+1)-1)/9+4*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332115

/-- `(10^(2*n+1)-1)/9+4*10^n` -/
def P8830179451740922607.Spec : Prop :=
  ∀ n, P8830179451740922607.a n = (A332115 n : ℚ)

end A332115

/-! ## A332115.P10798176023480050204

`A199985(∑[4*n]+1)`
-/

namespace A332115.P10798176023480050204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199985 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332115.P10798176023480050204

namespace A332115

/-- `A199985(∑[4*n]+1)` -/
def P10798176023480050204.Spec : Prop :=
  ∀ n, P10798176023480050204.a n = A332115 n

end A332115

/-! ## A332115.P7319546855755617671

`A117058(3*(n+1)+n)`
-/

namespace A332115.P7319546855755617671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117058 (3 * (n + 1) + n)

end

end A332115.P7319546855755617671

namespace A332115

/-- `A117058(3*(n+1)+n)` -/
def P7319546855755617671.Spec : Prop :=
  ∀ n, P7319546855755617671.a n = A332115 n

end A332115

/-! ## A332115.P8617656428557317631

`abs(4*(10*(10^n)²-1)/9-10^n-A332158(n))`
-/

namespace A332115.P8617656428557317631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ) - (A332158 n : ℚ)|

end

end A332115.P8617656428557317631

namespace A332115

/-- `abs(4*(10*(10^n)²-1)/9-10^n-A332158(n))` -/
def P8617656428557317631.Spec : Prop :=
  ∀ n, P8617656428557317631.a n = (A332115 n : ℚ)

end A332115

/-! ## A332115.P17532389896364017113

`abs(6*(10*(10^n)²-1)/9-3*10^n-A332178(n))`
-/

namespace A332115.P17532389896364017113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |6 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ) - (A332178 n : ℚ)|

end

end A332115.P17532389896364017113

namespace A332115

/-- `abs(6*(10*(10^n)²-1)/9-3*10^n-A332178(n))` -/
def P17532389896364017113.Spec : Prop :=
  ∀ n, P17532389896364017113.a n = (A332115 n : ℚ)

end A332115

/-! ## A332115.P6508265985511755642

`or(1, A117058(A004767(n)))`
-/

namespace A332115.P6508265985511755642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A117058 (A004767 n).toNat)

end

end A332115.P6508265985511755642

namespace A332115

/-- `or(1, A117058(A004767(n)))` -/
def P6508265985511755642.Spec : Prop :=
  ∀ n, P6508265985511755642.a n = A332115 n

end A332115

/-! ## A332115.P17374342430362097331

`abs(A332114(n)-A332129(n))`
-/

namespace A332115.P17374342430362097331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332114 n - A332129 n|

end

end A332115.P17374342430362097331

namespace A332115

/-- `abs(A332114(n)-A332129(n))` -/
def P17374342430362097331.Spec : Prop :=
  ∀ n, P17374342430362097331.a n = A332115 n

end A332115

/-! ## A332115.P12358035230704835127

`abs(A332150(n)-A332165(n))`
-/

namespace A332115.P12358035230704835127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332150 n - A332165 n|

end

end A332115.P12358035230704835127

namespace A332115

/-- `abs(A332150(n)-A332165(n))` -/
def P12358035230704835127.Spec : Prop :=
  ∀ n, P12358035230704835127.a n = A332115 n

end A332115

/-!
# A332116: a(n) = (10^(2n+1)-1)/9 + 5*10^n.

The programs for A332116, the canonical program `A332116.P7471090904709792861` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332116 has offset 0).

The definition of A332116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332116.P7471090904709792861

`(10^(2*n+1)-1)/9+5*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332116

/-- `(10^(2*n+1)-1)/9+5*10^n` -/
def P7471090904709792861.Spec : Prop :=
  ∀ n, P7471090904709792861.a n = (A332116 n : ℚ)

end A332116

/-! ## A332116.P16716011826881632413

`abs(6*(10*(10^n)²-1)/9-3*10^n-A332179(n))`
-/

namespace A332116.P16716011826881632413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |6 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ) - (A332179 n : ℚ)|

end

end A332116.P16716011826881632413

namespace A332116

/-- `abs(6*(10*(10^n)²-1)/9-3*10^n-A332179(n))` -/
def P16716011826881632413.Spec : Prop :=
  ∀ n, P16716011826881632413.a n = (A332116 n : ℚ)

end A332116

/-! ## A332116.P16133380618901221222

`abs(A011557(n)-A332117(n))`
-/

namespace A332116.P16133380618901221222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332117 n|

end

end A332116.P16133380618901221222

namespace A332116

/-- `abs(A011557(n)-A332117(n))` -/
def P16133380618901221222.Spec : Prop :=
  ∀ n, P16133380618901221222.a n = A332116 n

end A332116

/-! ## A332116.P721122996815151099

`abs(A332113(n)-A332129(n))`
-/

namespace A332116.P721122996815151099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332113 n - A332129 n|

end

end A332116.P721122996815151099

namespace A332116

/-- `abs(A332113(n)-A332129(n))` -/
def P721122996815151099.Spec : Prop :=
  ∀ n, P721122996815151099.a n = A332116 n

end A332116

/-! ## A332116.P10984257459641617460

`abs(A332121(n)-A332137(n))`
-/

namespace A332116.P10984257459641617460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332121 n - A332137 n|

end

end A332116.P10984257459641617460

namespace A332116

/-- `abs(A332121(n)-A332137(n))` -/
def P10984257459641617460.Spec : Prop :=
  ∀ n, P10984257459641617460.a n = A332116 n

end A332116

/-! ## A332116.P9023088878476247159

`abs(A332123(n)-A332139(n))`
-/

namespace A332116.P9023088878476247159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332123 n - A332139 n|

end

end A332116.P9023088878476247159

namespace A332116

/-- `abs(A332123(n)-A332139(n))` -/
def P9023088878476247159.Spec : Prop :=
  ∀ n, P9023088878476247159.a n = A332116 n

end A332116

/-! ## A332116.P14553570382647210251

`abs(A332143(n)-A332159(n))`
-/

namespace A332116.P14553570382647210251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332143 n - A332159 n|

end

end A332116.P14553570382647210251

namespace A332116

/-- `abs(A332143(n)-A332159(n))` -/
def P14553570382647210251.Spec : Prop :=
  ∀ n, P14553570382647210251.a n = A332116 n

end A332116

/-! ## A332116.P4524081167996338819

`abs(A332151(n)-A332167(n))`
-/

namespace A332116.P4524081167996338819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332151 n - A332167 n|

end

end A332116.P4524081167996338819

namespace A332116

/-- `abs(A332151(n)-A332167(n))` -/
def P4524081167996338819.Spec : Prop :=
  ∀ n, P4524081167996338819.a n = A332116 n

end A332116

/-! ## A332116.P5102156242188672588

`abs(A332152(n)-A332168(n))`
-/

namespace A332116.P5102156242188672588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332152 n - A332168 n|

end

end A332116.P5102156242188672588

namespace A332116

/-- `abs(A332152(n)-A332168(n))` -/
def P5102156242188672588.Spec : Prop :=
  ∀ n, P5102156242188672588.a n = A332116 n

end A332116

/-! ## A332116.P6789697962986619409

`abs(A332153(n)-A332169(n))`
-/

namespace A332116.P6789697962986619409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332153 n - A332169 n|

end

end A332116.P6789697962986619409

namespace A332116

/-- `abs(A332153(n)-A332169(n))` -/
def P6789697962986619409.Spec : Prop :=
  ∀ n, P6789697962986619409.a n = A332116 n

end A332116

/-!
# A332117: a(n) = (10^(2*n+1) - 1)/9 + 6*10^n.

The programs for A332117, the canonical program `A332117.P5971171306911243718` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332117 has offset 0).

The definition of A332117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332117.P5971171306911243718

`(10^(2*n+1)-1)/9+6*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332117

/-- `(10^(2*n+1)-1)/9+6*10^n` -/
def P5971171306911243718.Spec : Prop :=
  ∀ n, P5971171306911243718.a n = (A332117 n : ℚ)

end A332117

/-! ## A332117.P17972586184909201657

`A117058(4*(n+1))`
-/

namespace A332117.P17972586184909201657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117058 (4 * (n + 1))

end

end A332117.P17972586184909201657

namespace A332117

/-- `A117058(4*(n+1))` -/
def P17972586184909201657.Spec : Prop :=
  ∀ n, P17972586184909201657.a n = A332117 n

end A332117

/-! ## A332117.P2906491880633993192

`abs(10^n-A332118(n))`
-/

namespace A332117.P2906491880633993192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332118 n|

end

end A332117.P2906491880633993192

namespace A332117

/-- `abs(10^n-A332118(n))` -/
def P2906491880633993192.Spec : Prop :=
  ∀ n, P2906491880633993192.a n = A332117 n

end A332117

/-! ## A332117.P8095064842007383843

`A034054((n+1)²+n²)`
-/

namespace A332117.P8095064842007383843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034054 ((n + 1) ^ 2 + n ^ 2)

end

end A332117.P8095064842007383843

namespace A332117

/-- `A034054((n+1)²+n²)` -/
def P8095064842007383843.Spec : Prop :=
  ∀ n, P8095064842007383843.a n = A332117 n

end A332117

/-! ## A332117.P10206432604392577908

`abs(floor(10^(2*n+1)/9)-A332128(n))`
-/

namespace A332117.P10206432604392577908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A332128 n|

end

end A332117.P10206432604392577908

namespace A332117

/-- `abs(floor(10^(2*n+1)/9)-A332128(n))` -/
def P10206432604392577908.Spec : Prop :=
  ∀ n, P10206432604392577908.a n = A332117 n

end A332117

/-! ## A332117.P9976707438809823021

`floor(A332169(n)-(5*(10*(10^n)²-1)/9-3*10^n))`
-/

namespace A332117.P9976707438809823021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332169 n : ℚ) - (5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ))⌋

end

end A332117.P9976707438809823021

namespace A332117

/-- `floor(A332169(n)-(5*(10*(10^n)²-1)/9-3*10^n))` -/
def P9976707438809823021.Spec : Prop :=
  ∀ n, P9976707438809823021.a n = A332117 n

end A332117

/-! ## A332117.P8751163698541804291

`floor(A332168(n)-(5*(10*(10^n)²-1)/9-4*10^n))`
-/

namespace A332117.P8751163698541804291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332168 n : ℚ) - (5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (4 * 10 ^ n : ℚ))⌋

end

end A332117.P8751163698541804291

namespace A332117

/-- `floor(A332168(n)-(5*(10*(10^n)²-1)/9-4*10^n))` -/
def P8751163698541804291.Spec : Prop :=
  ∀ n, P8751163698541804291.a n = A332117 n

end A332117

/-! ## A332117.P3349205266658188008

`or(1, A034054(A001844(n)))`
-/

namespace A332117.P3349205266658188008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A034054 (A001844 n).toNat)

end

end A332117.P3349205266658188008

namespace A332117

/-- `or(1, A034054(A001844(n)))` -/
def P3349205266658188008.Spec : Prop :=
  ∀ n, P3349205266658188008.a n = A332117 n

end A332117

/-! ## A332117.P344608293196524441

`abs(A332112(n)-A332129(n))`
-/

namespace A332117.P344608293196524441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332112 n - A332129 n|

end

end A332117.P344608293196524441

namespace A332117

/-- `abs(A332112(n)-A332129(n))` -/
def P344608293196524441.Spec : Prop :=
  ∀ n, P344608293196524441.a n = A332117 n

end A332117

/-! ## A332117.P3691165581159464771

`abs(A332130(n)-A332147(n))`
-/

namespace A332117.P3691165581159464771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332130 n - A332147 n|

end

end A332117.P3691165581159464771

namespace A332117

/-- `abs(A332130(n)-A332147(n))` -/
def P3691165581159464771.Spec : Prop :=
  ∀ n, P3691165581159464771.a n = A332117 n

end A332117

/-!
# A332118: a(n) = (10^(2*n+1) - 1)/9 + 7*10^n.

The programs for A332118, the canonical program `A332118.P10704963236849580905` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332118 has offset 0).

The definition of A332118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332118.P10704963236849580905

`(10^(2*n+1)-1)/9+7*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332118

/-- `(10^(2*n+1)-1)/9+7*10^n` -/
def P10704963236849580905.Spec : Prop :=
  ∀ n, P10704963236849580905.a n = (A332118 n : ℚ)

end A332118

/-! ## A332118.P14127774580915349931

`abs(floor(10*(10^n)²/9)-10^n-A332128(n))`
-/

namespace A332118.P14127774580915349931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - (10 ^ n : ℤ) - A332128 n|

end

end A332118.P14127774580915349931

namespace A332118

/-- `abs(floor(10*(10^n)²/9)-10^n-A332128(n))` -/
def P14127774580915349931.Spec : Prop :=
  ∀ n, P14127774580915349931.a n = A332118 n

end A332118

/-! ## A332118.P2301352259976976221

`abs(A332120(n)-A332138(n))`
-/

namespace A332118.P2301352259976976221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332120 n - A332138 n|

end

end A332118.P2301352259976976221

namespace A332118

/-- `abs(A332120(n)-A332138(n))` -/
def P2301352259976976221.Spec : Prop :=
  ∀ n, P2301352259976976221.a n = A332118 n

end A332118

/-! ## A332118.P11073189494430638819

`abs(A332128(n)-A332120(n)/2)`
-/

namespace A332118.P11073189494430638819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332128 n : ℚ) - (A332120 n : ℚ) / 2|

end

end A332118.P11073189494430638819

namespace A332118

/-- `abs(A332128(n)-A332120(n)/2)` -/
def P11073189494430638819.Spec : Prop :=
  ∀ n, P11073189494430638819.a n = (A332118 n : ℚ)

end A332118

/-! ## A332118.P11248368755507686004

`abs(A332128(n)-A332130(n)/3)`
-/

namespace A332118.P11248368755507686004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332128 n : ℚ) - (A332130 n : ℚ) / 3|

end

end A332118.P11248368755507686004

namespace A332118

/-- `abs(A332128(n)-A332130(n)/3)` -/
def P11248368755507686004.Spec : Prop :=
  ∀ n, P11248368755507686004.a n = (A332118 n : ℚ)

end A332118

/-! ## A332118.P1532980161166801558

`abs(A332128(n)-A332150(n)/5)`
-/

namespace A332118.P1532980161166801558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332128 n : ℚ) - (A332150 n : ℚ) / 5|

end

end A332118.P1532980161166801558

namespace A332118

/-- `abs(A332128(n)-A332150(n)/5)` -/
def P1532980161166801558.Spec : Prop :=
  ∀ n, P1532980161166801558.a n = (A332118 n : ℚ)

end A332118

/-! ## A332118.P17514756049450365717

`abs(A332128(n)-A332180(n)/8)`
-/

namespace A332118.P17514756049450365717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332128 n : ℚ) - (A332180 n : ℚ) / 8|

end

end A332118.P17514756049450365717

namespace A332118

/-- `abs(A332128(n)-A332180(n)/8)` -/
def P17514756049450365717.Spec : Prop :=
  ∀ n, P17514756049450365717.a n = (A332118 n : ℚ)

end A332118

/-! ## A332118.P17879898140349674869

`abs(A332128(n)-A332190(n)/9)`
-/

namespace A332118.P17879898140349674869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332128 n : ℚ) - (A332190 n : ℚ) / 9|

end

end A332118.P17879898140349674869

namespace A332118

/-- `abs(A332128(n)-A332190(n)/9)` -/
def P17879898140349674869.Spec : Prop :=
  ∀ n, P17879898140349674869.a n = (A332118 n : ℚ)

end A332118

/-!
# A332119: a(n) = (10^(2*n+1) - 1)/9 + 8*10^n.

The programs for A332119, the canonical program `A332119.P13091117793560681464` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332119 has offset 0).

The definition of A332119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332119.P13091117793560681464

`(10^(2*n+1)-1)/9+8*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332119

/-- `(10^(2*n+1)-1)/9+8*10^n` -/
def P13091117793560681464.Spec : Prop :=
  ∀ n, P13091117793560681464.a n = (A332119 n : ℚ)

end A332119

/-! ## A332119.P14169387410047345114

`or(1, (10^n)²+10*a(n-1))` with `a(0)=9`
-/

namespace A332119.P14169387410047345114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lor 1 ((10 ^ n) ^ 2 + 10 * a (n - 1))

end

end A332119.P14169387410047345114

namespace A332119

/-- `or(1, (10^n)²+10*a(n-1))` -/
def P14169387410047345114.Spec : Prop :=
  ∀ n, (P14169387410047345114.a n : ℤ) = A332119 n

end A332119

/-! ## A332119.P3575256527234195951

`A284294(A092431(n+1))`
-/

namespace A332119.P3575256527234195951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (A092431 (n + 1)).toNat

end

end A332119.P3575256527234195951

namespace A332119

/-- `A284294(A092431(n+1))` -/
def P3575256527234195951.Spec : Prop :=
  ∀ n, P3575256527234195951.a n = A332119 n

end A332119

/-!
# A332120: a(n) = 2*(10^(2n+1)-1)/9 - 2*10^n.

The programs for A332120, the canonical program `A332120.P3637114510926937997` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332120 has offset 0).

The definition of A332120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332120.P3637114510926937997

`2*((10^(2*n+1)-1)/9-10^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332120

/-- `2*((10^(2*n+1)-1)/9-10^n)` -/
def P3637114510926937997.Spec : Prop :=
  ∀ n, P3637114510926937997.a n = (A332120 n : ℚ)

end A332120

/-! ## A332120.P15336838857653068191

`2*(10^(2*n+1)-1)/9-2*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332120.P15336838857653068191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (2 * 10 ^ n : ℚ)

end

end A332120.P15336838857653068191

namespace A332120

/-- `2*(10^(2*n+1)-1)/9-2*10^n` -/
def P15336838857653068191.Spec : Prop :=
  ∀ n, P15336838857653068191.a n = (A332120 n : ℚ)

end A332120

/-! ## A332120.P6187393965185880111

`(6*(10*(10^n)²-1)/9-3*10^n)%(4*(10*(10^n)²-1)/9-10^n)`
-/

namespace A332120.P6187393965185880111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (6 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ))) (SequenceMachineLib.roundAway (4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ)))

end

end A332120.P6187393965185880111

namespace A332120

/-- `(6*(10*(10^n)²-1)/9-3*10^n)%(4*(10*(10^n)²-1)/9-10^n)` -/
def P6187393965185880111.Spec : Prop :=
  ∀ n, P6187393965185880111.a n = A332120 n

end A332120

/-! ## A332120.P2975829830104987687

`A332140(n)/2`
-/

namespace A332120.P2975829830104987687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332140 n : ℚ) / 2

end

end A332120.P2975829830104987687

namespace A332120

/-- `A332140(n)/2` -/
def P2975829830104987687.Spec : Prop :=
  ∀ n, P2975829830104987687.a n = (A332120 n : ℚ)

end A332120

/-! ## A332120.P14650522318988975166

`A332160(n)/3`
-/

namespace A332120.P14650522318988975166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332160 n : ℚ) / 3

end

end A332120.P14650522318988975166

namespace A332120

/-- `A332160(n)/3` -/
def P14650522318988975166.Spec : Prop :=
  ∀ n, P14650522318988975166.a n = (A332120 n : ℚ)

end A332120

/-! ## A332120.P13499212561446823415

`A332180(n)/4`
-/

namespace A332120.P13499212561446823415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332180 n : ℚ) / 4

end

end A332120.P13499212561446823415

namespace A332120

/-- `A332180(n)/4` -/
def P13499212561446823415.Spec : Prop :=
  ∀ n, P13499212561446823415.a n = (A332120 n : ℚ)

end A332120

/-! ## A332120.P203504087889074873

`A173521(n)/5`
-/

namespace A332120.P203504087889074873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173521 n : ℚ) / 5

end

end A332120.P203504087889074873

namespace A332120

/-- `A173521(n)/5` -/
def P203504087889074873.Spec : Prop :=
  ∀ n, P203504087889074873.a n = (A332120 n : ℚ)

end A332120

/-!
# A332121: a(n) = 2*(10^(2n+1)-1)/9 - 10^n.

The programs for A332121, the canonical program `A332121.P9954824828034134725` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332121 has offset 0).

The definition of A332121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332121.P9954824828034134725

`2*(10^(2*n+1)-1)/9-10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332121

/-- `2*(10^(2*n+1)-1)/9-10^n` -/
def P9954824828034134725.Spec : Prop :=
  ∀ n, P9954824828034134725.a n = (A332121 n : ℚ)

end A332121

/-! ## A332121.P17075174157415528430

`A332142(n)/2`
-/

namespace A332121.P17075174157415528430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332142 n : ℚ) / 2

end

end A332121.P17075174157415528430

namespace A332121

/-- `A332142(n)/2` -/
def P17075174157415528430.Spec : Prop :=
  ∀ n, P17075174157415528430.a n = (A332121 n : ℚ)

end A332121

/-! ## A332121.P16165661546462378728

`A332163(n)/3`
-/

namespace A332121.P16165661546462378728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332163 n : ℚ) / 3

end

end A332121.P16165661546462378728

namespace A332121

/-- `A332163(n)/3` -/
def P16165661546462378728.Spec : Prop :=
  ∀ n, P16165661546462378728.a n = (A332121 n : ℚ)

end A332121

/-! ## A332121.P16481655770407904179

`A332184(n)/4`
-/

namespace A332121.P16481655770407904179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332184 n : ℚ) / 4

end

end A332121.P16481655770407904179

namespace A332121

/-- `A332184(n)/4` -/
def P16481655770407904179.Spec : Prop :=
  ∀ n, P16481655770407904179.a n = (A332121 n : ℚ)

end A332121

/-! ## A332121.P4707413175494621187

`A332165(n)%A092900(A004767(n))`
-/

namespace A332121.P4707413175494621187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332165 n) (A092900 (A004767 n).toNat)

end

end A332121.P4707413175494621187

namespace A332121

/-- `A332165(n)%A092900(A004767(n))` -/
def P4707413175494621187.Spec : Prop :=
  ∀ n, P4707413175494621187.a n = A332121 n

end A332121

/-!
# A332123: a(n) = 2*(10^(2n+1)-1)/9 + 10^n.

The programs for A332123, the canonical program `A332123.P4892749834816991121` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332123 has offset 0).

The definition of A332123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332123.P4892749834816991121

`2*(10^(2*n+1)-1)/9+10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332123

/-- `2*(10^(2*n+1)-1)/9+10^n` -/
def P4892749834816991121.Spec : Prop :=
  ∀ n, P4892749834816991121.a n = (A332123 n : ℚ)

end A332123

/-! ## A332123.P17689701041363343424

`A332146(n)/2`
-/

namespace A332123.P17689701041363343424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332146 n : ℚ) / 2

end

end A332123.P17689701041363343424

namespace A332123

/-- `A332146(n)/2` -/
def P17689701041363343424.Spec : Prop :=
  ∀ n, P17689701041363343424.a n = (A332123 n : ℚ)

end A332123

/-! ## A332123.P7145925555394937533

`A332169(n)/3`
-/

namespace A332123.P7145925555394937533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332169 n : ℚ) / 3

end

end A332123.P7145925555394937533

namespace A332123

/-- `A332169(n)/3` -/
def P7145925555394937533.Spec : Prop :=
  ∀ n, P7145925555394937533.a n = (A332123 n : ℚ)

end A332123

/-! ## A332123.P12495224525911332250

`A332179(n)%A332156(n)`
-/

namespace A332123.P12495224525911332250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332179 n) (A332156 n)

end

end A332123.P12495224525911332250

namespace A332123

/-- `A332179(n)%A332156(n)` -/
def P12495224525911332250.Spec : Prop :=
  ∀ n, P12495224525911332250.a n = A332123 n

end A332123

/-! ## A332123.P16507316170502475582

`A332187(n)%A332164(n)`
-/

namespace A332123.P16507316170502475582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332187 n) (A332164 n)

end

end A332123.P16507316170502475582

namespace A332123

/-- `A332187(n)%A332164(n)` -/
def P16507316170502475582.Spec : Prop :=
  ∀ n, P16507316170502475582.a n = A332123 n

end A332123

/-! ## A332123.P12621738482532685849

`A332197(n)%A332174(n)`
-/

namespace A332123.P12621738482532685849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332197 n) (A332174 n)

end

end A332123.P12621738482532685849

namespace A332123

/-- `A332197(n)%A332174(n)` -/
def P12621738482532685849.Spec : Prop :=
  ∀ n, P12621738482532685849.a n = A332123 n

end A332123

/-!
# A332124: a(n) = 2*(10^(2n+1)-1)/9 + 2*10^n.

The programs for A332124, the canonical program `A332124.P83218299837370413` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332124 has offset 0).

The definition of A332124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332124.P83218299837370413

`2*((10^(2*n+1)-1)/9+10^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332124

/-- `2*((10^(2*n+1)-1)/9+10^n)` -/
def P83218299837370413.Spec : Prop :=
  ∀ n, P83218299837370413.a n = (A332124 n : ℚ)

end A332124

/-! ## A332124.P10499956522290688223

`2*(10^(2*n+1)-1)/9+2*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332124.P10499956522290688223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) + (2 * 10 ^ n : ℚ)

end

end A332124.P10499956522290688223

namespace A332124

/-- `2*(10^(2*n+1)-1)/9+2*10^n` -/
def P10499956522290688223.Spec : Prop :=
  ∀ n, P10499956522290688223.a n = (A332124 n : ℚ)

end A332124

/-! ## A332124.P12978402630471672933

`A332148(n)/2`
-/

namespace A332124.P12978402630471672933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332148 n : ℚ) / 2

end

end A332124.P12978402630471672933

namespace A332124

/-- `A332148(n)/2` -/
def P12978402630471672933.Spec : Prop :=
  ∀ n, P12978402630471672933.a n = (A332124 n : ℚ)

end A332124

/-! ## A332124.P5472412567729476428

`2*A332136(n)/3`
-/

namespace A332124.P5472412567729476428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A332136 n : ℚ) / 3

end

end A332124.P5472412567729476428

namespace A332124

/-- `2*A332136(n)/3` -/
def P5472412567729476428.Spec : Prop :=
  ∀ n, P5472412567729476428.a n = (A332124 n : ℚ)

end A332124

/-!
# A332125: a(n) = 2*(10^(2n+1)-1)/9 + 3*10^n.

The programs for A332125, the canonical program `A332125.P18055912616673767955` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332125 has offset 0).

The definition of A332125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332125.P18055912616673767955

`2*(10^(2*n+1)-1)/9+3*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332125

/-- `2*(10^(2*n+1)-1)/9+3*10^n` -/
def P18055912616673767955.Spec : Prop :=
  ∀ n, P18055912616673767955.a n = (A332125 n : ℚ)

end A332125

/-! ## A332125.P4297170914925193010

`abs(4*(10*(10^n)²-1)/9-10^n-A332168(n))`
-/

namespace A332125.P4297170914925193010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ) - (A332168 n : ℚ)|

end

end A332125.P4297170914925193010

namespace A332125

/-- `abs(4*(10*(10^n)²-1)/9-10^n-A332168(n))` -/
def P4297170914925193010.Spec : Prop :=
  ∀ n, P4297170914925193010.a n = (A332125 n : ℚ)

end A332125

/-! ## A332125.P7804841596825910037

`abs(5*(10*(10^n)²-1)/9-10^n-A332179(n))`
-/

namespace A332125.P7804841596825910037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ) - (A332179 n : ℚ)|

end

end A332125.P7804841596825910037

namespace A332125

/-- `abs(5*(10*(10^n)²-1)/9-10^n-A332179(n))` -/
def P7804841596825910037.Spec : Prop :=
  ∀ n, P7804841596825910037.a n = (A332125 n : ℚ)

end A332125

/-! ## A332125.P5113285158213521829

`(A332149(n)+A011557(n))/2`
-/

namespace A332125.P5113285158213521829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332149 n + A011557 n : ℚ) / 2

end

end A332125.P5113285158213521829

namespace A332125

/-- `(A332149(n)+A011557(n))/2` -/
def P5113285158213521829.Spec : Prop :=
  ∀ n, P5113285158213521829.a n = (A332125 n : ℚ)

end A332125

/-! ## A332125.P7206490455281778838

`(A332126(n)+A332124(n))/2`
-/

namespace A332125.P7206490455281778838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332126 n + A332124 n : ℚ) / 2

end

end A332125.P7206490455281778838

namespace A332125

/-- `(A332126(n)+A332124(n))/2` -/
def P7206490455281778838.Spec : Prop :=
  ∀ n, P7206490455281778838.a n = (A332125 n : ℚ)

end A332125

/-!
# A332126: a(n) = 2*(10^(2n+1)-1)/9 + 4*10^n.

The programs for A332126, the canonical program `A332126.P18443881036410398908` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332126 has offset 0).

The definition of A332126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332126.P6806223223975176870

`2*(10^(2*n+1)-1)/9+4*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332126.P6806223223975176870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) + (4 * 10 ^ n : ℚ)

end

end A332126.P6806223223975176870

namespace A332126

/-- `2*(10^(2*n+1)-1)/9+4*10^n` -/
def P6806223223975176870.Spec : Prop :=
  ∀ n, P6806223223975176870.a n = (A332126 n : ℚ)

end A332126

/-! ## A332126.P18443881036410398908

`2*A332113(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A332126

/-- `2*A332113(n)` -/
def P18443881036410398908.Spec : Prop :=
  ∀ n, P18443881036410398908.a n = A332126 n

theorem P18443881036410398908.correct : P18443881036410398908.Spec := by
  intro n
  simp only [A332126]

end A332126

/-! ## A332126.P11160414623515153163

`2/3*A332139(n)`
-/

namespace A332126.P11160414623515153163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A332139 n : ℚ)

end

end A332126.P11160414623515153163

namespace A332126

/-- `2/3*A332139(n)` -/
def P11160414623515153163.Spec : Prop :=
  ∀ n, P11160414623515153163.a n = (A332126 n : ℚ)

end A332126

/-! ## A332126.P18156600358867688456

`2*A034050(A001844(n))`
-/

namespace A332126.P18156600358867688456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034050 (A001844 n).toNat

end

end A332126.P18156600358867688456

namespace A332126

/-- `2*A034050(A001844(n))` -/
def P18156600358867688456.Spec : Prop :=
  ∀ n, P18156600358867688456.a n = A332126 n

end A332126

/-! ## A332126.P2628563517636465344

`lcm(A046523(A000040(n+1)), A332113(n))`
-/

namespace A332126.P2628563517636465344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046523 (A000040 (n + 1)).toNat) (A332113 n)

end

end A332126.P2628563517636465344

namespace A332126

/-- `lcm(A046523(A000040(n+1)), A332113(n))` -/
def P2628563517636465344.Spec : Prop :=
  ∀ n, (P2628563517636465344.a n : ℤ) = A332126 n

end A332126

/-!
# A332127: a(n) = 2*(10^(2n+1)-1)/9 + 5*10^n.

The programs for A332127, the canonical program `A332127.P9270629956401706178` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332127 has offset 0).

The definition of A332127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332127.P9270629956401706178

`2*(10^(2*n+1)-1)/9+5*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332127

/-- `2*(10^(2*n+1)-1)/9+5*10^n` -/
def P9270629956401706178.Spec : Prop :=
  ∀ n, P9270629956401706178.a n = (A332127 n : ℚ)

end A332127

/-! ## A332127.P16182102916887530879

`abs(10^n-A332128(n))`
-/

namespace A332127.P16182102916887530879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332128 n|

end

end A332127.P16182102916887530879

namespace A332127

/-- `abs(10^n-A332128(n))` -/
def P16182102916887530879.Spec : Prop :=
  ∀ n, P16182102916887530879.a n = A332127 n

end A332127

/-! ## A332127.P297727611942718161

`abs(floor(10^(2*n+1)/9)-A332138(n))`
-/

namespace A332127.P297727611942718161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A332138 n|

end

end A332127.P297727611942718161

namespace A332127

/-- `abs(floor(10^(2*n+1)/9)-A332138(n))` -/
def P297727611942718161.Spec : Prop :=
  ∀ n, P297727611942718161.a n = A332127 n

end A332127

/-! ## A332127.P5836700200216957460

`abs(10^(2*n+1)-10^n-1-A332171(n))`
-/

namespace A332127.P5836700200216957460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ (2 * n + 1) : ℤ) - (10 ^ n : ℤ) - 1 - A332171 n|

end

end A332127.P5836700200216957460

namespace A332127

/-- `abs(10^(2*n+1)-10^n-1-A332171(n))` -/
def P5836700200216957460.Spec : Prop :=
  ∀ n, P5836700200216957460.a n = A332127 n

end A332127

/-! ## A332127.P8341960008284825229

`abs(4*(10*(10^n)²-1)/9-2*10^n-A332169(n))`
-/

namespace A332127.P8341960008284825229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (2 * 10 ^ n : ℚ) - (A332169 n : ℚ)|

end

end A332127.P8341960008284825229

namespace A332127

/-- `abs(4*(10*(10^n)²-1)/9-2*10^n-A332169(n))` -/
def P8341960008284825229.Spec : Prop :=
  ∀ n, P8341960008284825229.a n = (A332127 n : ℚ)

end A332127

/-! ## A332127.P14234250418165780424

`abs(4*(10*(10^n)²-1)/9-3*10^n-A332168(n))`
-/

namespace A332127.P14234250418165780424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ) - (A332168 n : ℚ)|

end

end A332127.P14234250418165780424

namespace A332127

/-- `abs(4*(10*(10^n)²-1)/9-3*10^n-A332168(n))` -/
def P14234250418165780424.Spec : Prop :=
  ∀ n, P14234250418165780424.a n = (A332127 n : ℚ)

end A332127

/-! ## A332127.P17755998102096459450

`abs(5*(10*(10^n)²-1)/9-4*10^n-A332178(n))`
-/

namespace A332127.P17755998102096459450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (4 * 10 ^ n : ℚ) - (A332178 n : ℚ)|

end

end A332127.P17755998102096459450

namespace A332127

/-- `abs(5*(10*(10^n)²-1)/9-4*10^n-A332178(n))` -/
def P17755998102096459450.Spec : Prop :=
  ∀ n, P17755998102096459450.a n = (A332127 n : ℚ)

end A332127

/-! ## A332127.P6745439531042868644

`(A332137(n)+A332117(n))/2`
-/

namespace A332127.P6745439531042868644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332137 n + A332117 n : ℚ) / 2

end

end A332127.P6745439531042868644

namespace A332127

/-- `(A332137(n)+A332117(n))/2` -/
def P6745439531042868644.Spec : Prop :=
  ∀ n, P6745439531042868644.a n = (A332127 n : ℚ)

end A332127

/-! ## A332127.P2444085985738598634

`(A011557(n+1)+A002278(2*n+1))/2`
-/

namespace A332127.P2444085985738598634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) + A002278 (2 * n + 1) : ℚ) / 2

end

end A332127.P2444085985738598634

namespace A332127

/-- `(A011557(n+1)+A002278(2*n+1))/2` -/
def P2444085985738598634.Spec : Prop :=
  ∀ n, P2444085985738598634.a n = (A332127 n : ℚ)

end A332127

/-!
# A332128: a(n) = 2*(10^(2n+1)-1)/9 + 6*10^n.

The programs for A332128, the canonical program `A332128.P7823734631749699510` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332128 has offset 0).

The definition of A332128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332128.P16569934923005274837

`2*(10^(2*n+1)-1)/9+6*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332128.P16569934923005274837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) + (6 * 10 ^ n : ℚ)

end

end A332128.P16569934923005274837

namespace A332128

/-- `2*(10^(2*n+1)-1)/9+6*10^n` -/
def P16569934923005274837.Spec : Prop :=
  ∀ n, P16569934923005274837.a n = (A332128 n : ℚ)

end A332128

/-! ## A332128.P7823734631749699510

`2*A332114(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A332128

/-- `2*A332114(n)` -/
def P7823734631749699510.Spec : Prop :=
  ∀ n, P7823734631749699510.a n = A332128 n

theorem P7823734631749699510.correct : P7823734631749699510.Spec := by
  intro n
  simp only [A332128]

end A332128

/-! ## A332128.P13153919034107366416

`2*abs(5*(10*(10^n)²-1)/9-10^n-A332168(n))`
-/

namespace A332128.P13153919034107366416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * |5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ) - (A332168 n : ℚ)|

end

end A332128.P13153919034107366416

namespace A332128

/-- `2*abs(5*(10*(10^n)²-1)/9-10^n-A332168(n))` -/
def P13153919034107366416.Spec : Prop :=
  ∀ n, P13153919034107366416.a n = (A332128 n : ℚ)

end A332128

/-! ## A332128.P9786327557149211219

`2*(A332129(n)-A332115(n))`
-/

namespace A332128.P9786327557149211219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332129 n - A332115 n)

end

end A332128.P9786327557149211219

namespace A332128

/-- `2*(A332129(n)-A332115(n))` -/
def P9786327557149211219.Spec : Prop :=
  ∀ n, P9786327557149211219.a n = A332128 n

end A332128

/-! ## A332128.P12220756237214110167

`2*(A332139(n)-A332125(n))`
-/

namespace A332128.P12220756237214110167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332139 n - A332125 n)

end

end A332128.P12220756237214110167

namespace A332128

/-- `2*(A332139(n)-A332125(n))` -/
def P12220756237214110167.Spec : Prop :=
  ∀ n, P12220756237214110167.a n = A332128 n

end A332128

/-! ## A332128.P8732788895526597223

`2*abs(A011557(n)-A332115(n))`
-/

namespace A332128.P8732788895526597223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A011557 n - A332115 n|

end

end A332128.P8732788895526597223

namespace A332128

/-- `2*abs(A011557(n)-A332115(n))` -/
def P8732788895526597223.Spec : Prop :=
  ∀ n, P8732788895526597223.a n = A332128 n

end A332128

/-!
# A332129: a(n) = 2*(10^(2n+1)-1)/9 + 7*10^n.

The programs for A332129, the canonical program `A332129.P6838417951560932065` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332129 has offset 0).

The definition of A332129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332129.P6838417951560932065

`2*(10^(2*n+1)-1)/9+7*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332129

/-- `2*(10^(2*n+1)-1)/9+7*10^n` -/
def P6838417951560932065.Spec : Prop :=
  ∀ n, P6838417951560932065.a n = (A332129 n : ℚ)

end A332129

/-! ## A332129.P7067201202903904244

`floor(A332128(n)+60^n/6^n)`
-/

namespace A332129.P7067201202903904244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332128 n : ℚ) + (60 ^ n : ℚ) / (6 ^ n : ℚ)⌋

end

end A332129.P7067201202903904244

namespace A332129

/-- `floor(A332128(n)+60^n/6^n)` -/
def P7067201202903904244.Spec : Prop :=
  ∀ n, P7067201202903904244.a n = A332129 n

end A332129

/-! ## A332129.P16147775625136825064

`abs(floor(10^(2*n+1)/9)-10^n-A332139(n))`
-/

namespace A332129.P16147775625136825064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ) - A332139 n|

end

end A332129.P16147775625136825064

namespace A332129

/-- `abs(floor(10^(2*n+1)/9)-10^n-A332139(n))` -/
def P16147775625136825064.Spec : Prop :=
  ∀ n, P16147775625136825064.a n = A332129 n

end A332129

/-!
# A332130: a(n) = (10^(2n+1)-1)/3 - 3*10^n.

The programs for A332130, the canonical program `A332130.P1056416137744457395` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332130 has offset 0).

The definition of A332130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332130.P18243658971409751605

`(10^(2*n+1)-1)/3-3*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332130.P18243658971409751605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 3 - (3 * 10 ^ n : ℚ)

end

end A332130.P18243658971409751605

namespace A332130

/-- `(10^(2*n+1)-1)/3-3*10^n` -/
def P18243658971409751605.Spec : Prop :=
  ∀ n, P18243658971409751605.a n = (A332130 n : ℚ)

end A332130

/-! ## A332130.P1056416137744457395

`3*A138148(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332130

/-- `3*A138148(n)` -/
def P1056416137744457395.Spec : Prop :=
  ∀ n, P1056416137744457395.a n = A332130 n

theorem P1056416137744457395.correct : P1056416137744457395.Spec := by
  intro n
  simp only [A332130]

end A332130

/-! ## A332130.P8779410689295384975

`(2*(4*(10*(10^n)²-1)/9-3*10^n))%(5*(10*(10^n)²-1)/9-3*10^n)`
-/

namespace A332130.P8779410689295384975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 * (4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ)))) (SequenceMachineLib.roundAway (5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ)))

end

end A332130.P8779410689295384975

namespace A332130

/-- `(2*(4*(10*(10^n)²-1)/9-3*10^n))%(5*(10*(10^n)²-1)/9-3*10^n)` -/
def P8779410689295384975.Spec : Prop :=
  ∀ n, P8779410689295384975.a n = A332130 n

end A332130

/-! ## A332130.P17645411895345696154

`A332160(n)/2`
-/

namespace A332130.P17645411895345696154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332160 n : ℚ) / 2

end

end A332130.P17645411895345696154

namespace A332130

/-- `A332160(n)/2` -/
def P17645411895345696154.Spec : Prop :=
  ∀ n, P17645411895345696154.a n = (A332130 n : ℚ)

end A332130

/-! ## A332130.P16721712975694574994

`A332190(n)/3`
-/

namespace A332130.P16721712975694574994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332190 n : ℚ) / 3

end

end A332130.P16721712975694574994

namespace A332130

/-- `A332190(n)/3` -/
def P16721712975694574994.Spec : Prop :=
  ∀ n, P16721712975694574994.a n = (A332130 n : ℚ)

end A332130

/-! ## A332130.P11674384099552225989

`3/2*A332120(n)`
-/

namespace A332130.P11674384099552225989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A332120 n : ℚ)

end

end A332130.P11674384099552225989

namespace A332130

/-- `3/2*A332120(n)` -/
def P11674384099552225989.Spec : Prop :=
  ∀ n, P11674384099552225989.a n = (A332130 n : ℚ)

end A332130

/-! ## A332130.P1420460319856094062

`3/4*A332140(n)`
-/

namespace A332130.P1420460319856094062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A332140 n : ℚ)

end

end A332130.P1420460319856094062

namespace A332130

/-- `3/4*A332140(n)` -/
def P1420460319856094062.Spec : Prop :=
  ∀ n, P1420460319856094062.a n = (A332130 n : ℚ)

end A332130

/-! ## A332130.P18122247762007952037

`3/5*A332150(n)`
-/

namespace A332130.P18122247762007952037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A332150 n : ℚ)

end

end A332130.P18122247762007952037

namespace A332130

/-- `3/5*A332150(n)` -/
def P18122247762007952037.Spec : Prop :=
  ∀ n, P18122247762007952037.a n = (A332130 n : ℚ)

end A332130

/-! ## A332130.P12206064632588857751

`A000533(n+1)*A002277(n)`
-/

namespace A332130.P12206064632588857751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (n + 1) * A002277 n

end

end A332130.P12206064632588857751

namespace A332130

/-- `A000533(n+1)*A002277(n)` -/
def P12206064632588857751.Spec : Prop :=
  ∀ n, P12206064632588857751.a n = A332130 n

end A332130

/-! ## A332130.P15079145994923997505

`A169966(n+2)/A204095(n+1)*A332180(n)`
-/

namespace A332130.P15079145994923997505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (n + 2) : ℚ) / (A204095 (n + 1) : ℚ) * (A332180 n : ℚ)

end

end A332130.P15079145994923997505

namespace A332130

/-- `A169966(n+2)/A204095(n+1)*A332180(n)` -/
def P15079145994923997505.Spec : Prop :=
  ∀ n, P15079145994923997505.a n = (A332130 n : ℚ)

end A332130

/-!
# A332131: a(n) = (10^(2*n+1) - 1)/3 - 2*10^n.

The programs for A332131, the canonical program `A332131.P7570835238051229379` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332131 has offset 0).

The definition of A332131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332131.P7570835238051229379

`(10^(2*n+1)-1)/3-2*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332131

/-- `(10^(2*n+1)-1)/3-2*10^n` -/
def P7570835238051229379.Spec : Prop :=
  ∀ n, P7570835238051229379.a n = (A332131 n : ℚ)

end A332131

/-! ## A332131.P16007972945127524865

`A332162(n)/2`
-/

namespace A332131.P16007972945127524865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332162 n : ℚ) / 2

end

end A332131.P16007972945127524865

namespace A332131

/-- `A332162(n)/2` -/
def P16007972945127524865.Spec : Prop :=
  ∀ n, P16007972945127524865.a n = (A332131 n : ℚ)

end A332131

/-! ## A332131.P3564826529414905858

`A332193(n)/3`
-/

namespace A332131.P3564826529414905858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332193 n : ℚ) / 3

end

end A332131.P3564826529414905858

namespace A332131

/-- `A332193(n)/3` -/
def P3564826529414905858.Spec : Prop :=
  ∀ n, P3564826529414905858.a n = (A332131 n : ℚ)

end A332131

/-! ## A332131.P6787498338446823994

`A332185(n)%A332154(n)`
-/

namespace A332131.P6787498338446823994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332185 n) (A332154 n)

end

end A332131.P6787498338446823994

namespace A332131

/-- `A332185(n)%A332154(n)` -/
def P6787498338446823994.Spec : Prop :=
  ∀ n, P6787498338446823994.a n = A332131 n

end A332131

/-! ## A332131.P9736377590831710531

`A332187(n)%A332156(n)`
-/

namespace A332131.P9736377590831710531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332187 n) (A332156 n)

end

end A332131.P9736377590831710531

namespace A332131

/-- `A332187(n)%A332156(n)` -/
def P9736377590831710531.Spec : Prop :=
  ∀ n, P9736377590831710531.a n = A332131 n

end A332131

/-!
# A332132: a(n) = (10^(2n+1)-1)/3 - 10^n.

The programs for A332132, the canonical program `A332132.P12453461222951118055` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332132 has offset 0).

The definition of A332132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332132.P12453461222951118055

`(10^(2*n+1)-1)/3-10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332132

/-- `(10^(2*n+1)-1)/3-10^n` -/
def P12453461222951118055.Spec : Prop :=
  ∀ n, P12453461222951118055.a n = (A332132 n : ℚ)

end A332132

/-! ## A332132.P3151272842991631420

`A332164(n)/2`
-/

namespace A332132.P3151272842991631420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332164 n : ℚ) / 2

end

end A332132.P3151272842991631420

namespace A332132

/-- `A332164(n)/2` -/
def P3151272842991631420.Spec : Prop :=
  ∀ n, P3151272842991631420.a n = (A332132 n : ℚ)

end A332132

/-! ## A332132.P13702986757683368753

`A332196(n)/3`
-/

namespace A332132.P13702986757683368753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332196 n : ℚ) / 3

end

end A332132.P13702986757683368753

namespace A332132

/-- `A332196(n)/3` -/
def P13702986757683368753.Spec : Prop :=
  ∀ n, P13702986757683368753.a n = (A332132 n : ℚ)

end A332132

/-! ## A332132.P8267784274422146359

`A332197(n)%A332165(n)`
-/

namespace A332132.P8267784274422146359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332197 n) (A332165 n)

end

end A332132.P8267784274422146359

namespace A332132

/-- `A332197(n)%A332165(n)` -/
def P8267784274422146359.Spec : Prop :=
  ∀ n, P8267784274422146359.a n = A332132 n

end A332132

/-! ## A332132.P9122235241683538111

`abs(A332121(n)-A332153(n))`
-/

namespace A332132.P9122235241683538111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332121 n - A332153 n|

end

end A332132.P9122235241683538111

namespace A332132

/-- `abs(A332121(n)-A332153(n))` -/
def P9122235241683538111.Spec : Prop :=
  ∀ n, P9122235241683538111.a n = A332132 n

end A332132

/-! ## A332132.P14349127503644692730

`(A332163(n)+A011557(n))/2`
-/

namespace A332132.P14349127503644692730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332163 n + A011557 n : ℚ) / 2

end

end A332132.P14349127503644692730

namespace A332132

/-- `(A332163(n)+A011557(n))/2` -/
def P14349127503644692730.Spec : Prop :=
  ∀ n, P14349127503644692730.a n = (A332132 n : ℚ)

end A332132

/-! ## A332132.P17161118648971393775

`(A332184(n)-A332120(n))/2`
-/

namespace A332132.P17161118648971393775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332184 n - A332120 n : ℚ) / 2

end

end A332132.P17161118648971393775

namespace A332132

/-- `(A332184(n)-A332120(n))/2` -/
def P17161118648971393775.Spec : Prop :=
  ∀ n, P17161118648971393775.a n = (A332132 n : ℚ)

end A332132

/-!
# A332134: a(n) = (10^(2n+1)-1)/3 + 10^n.

The programs for A332134, the canonical program `A332134.P14538993255130828271` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332134 has offset 0).

The definition of A332134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332134.P14538993255130828271

`(10^(2*n+1)-1)/3+10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332134

/-- `(10^(2*n+1)-1)/3+10^n` -/
def P14538993255130828271.Spec : Prop :=
  ∀ n, P14538993255130828271.a n = (A332134 n : ℚ)

end A332134

/-! ## A332134.P8370696379061132853

`A332168(n)/2`
-/

namespace A332134.P8370696379061132853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332168 n : ℚ) / 2

end

end A332134.P8370696379061132853

namespace A332134

/-- `A332168(n)/2` -/
def P8370696379061132853.Spec : Prop :=
  ∀ n, P8370696379061132853.a n = (A332134 n : ℚ)

end A332134

/-! ## A332134.P13474353803973537009

`round(A332150(n)/5+A332189(n)-A332165(n))`
-/

namespace A332134.P13474353803973537009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332150 n : ℚ) / 5 + (A332189 n - A332165 n : ℚ))

end

end A332134.P13474353803973537009

namespace A332134

/-- `round(A332150(n)/5+A332189(n)-A332165(n))` -/
def P13474353803973537009.Spec : Prop :=
  ∀ n, P13474353803973537009.a n = A332134 n

end A332134

/-!
# A332135: a(n) = (10^(2n+1)-1)/3 + 2*10^n.

The programs for A332135, the canonical program `A332135.P8091249078497621856` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332135 has offset 0).

The definition of A332135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332135.P8091249078497621856

`(10^(2*n+1)-1)/3+2*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332135

/-- `(10^(2*n+1)-1)/3+2*10^n` -/
def P8091249078497621856.Spec : Prop :=
  ∀ n, P8091249078497621856.a n = (A332135 n : ℚ)

end A332135

/-! ## A332135.P14810882155562401152

`abs(floor(10^(2*n+1)/9)-A332146(n))`
-/

namespace A332135.P14810882155562401152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A332146 n|

end

end A332135.P14810882155562401152

namespace A332135

/-- `abs(floor(10^(2*n+1)/9)-A332146(n))` -/
def P14810882155562401152.Spec : Prop :=
  ∀ n, P14810882155562401152.a n = A332135 n

end A332135

/-! ## A332135.P6439775480154159318

`abs(4*(10*(10^n)²-1)/9-10^n-A332178(n))`
-/

namespace A332135.P6439775480154159318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ) - (A332178 n : ℚ)|

end

end A332135.P6439775480154159318

namespace A332135

/-- `abs(4*(10*(10^n)²-1)/9-10^n-A332178(n))` -/
def P6439775480154159318.Spec : Prop :=
  ∀ n, P6439775480154159318.a n = (A332135 n : ℚ)

end A332135

/-! ## A332135.P11314643397796136162

`abs(6*(10*(10^n)²-1)/9-10^n-A332130(n))`
-/

namespace A332135.P11314643397796136162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |6 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ) - (A332130 n : ℚ)|

end

end A332135.P11314643397796136162

namespace A332135

/-- `abs(6*(10*(10^n)²-1)/9-10^n-A332130(n))` -/
def P11314643397796136162.Spec : Prop :=
  ∀ n, P11314643397796136162.a n = (A332135 n : ℚ)

end A332135

/-! ## A332135.P7719686864005308340

`abs(6*(10*(10^n)²-1)/9-3*10^n-A181965(n))`
-/

namespace A332135.P7719686864005308340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |6 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ) - (A181965 n : ℚ)|

end

end A332135.P7719686864005308340

namespace A332135

/-- `abs(6*(10*(10^n)²-1)/9-3*10^n-A181965(n))` -/
def P7719686864005308340.Spec : Prop :=
  ∀ n, P7719686864005308340.a n = (A332135 n : ℚ)

end A332135

/-! ## A332135.P6668728556945752698

`abs(6*(10*(10^n)²-1)/9-5*10^n-A332196(n))`
-/

namespace A332135.P6668728556945752698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |6 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (5 * 10 ^ n : ℚ) - (A332196 n : ℚ)|

end

end A332135.P6668728556945752698

namespace A332135

/-- `abs(6*(10*(10^n)²-1)/9-5*10^n-A332196(n))` -/
def P6668728556945752698.Spec : Prop :=
  ∀ n, P6668728556945752698.a n = (A332135 n : ℚ)

end A332135

/-! ## A332135.P17019714262015859696

`(A332169(n)+A011557(n))/2`
-/

namespace A332135.P17019714262015859696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332169 n + A011557 n : ℚ) / 2

end

end A332135.P17019714262015859696

namespace A332135

/-- `(A332169(n)+A011557(n))/2` -/
def P17019714262015859696.Spec : Prop :=
  ∀ n, P17019714262015859696.a n = (A332135 n : ℚ)

end A332135

/-!
# A332136: a(n) = 3*(10^(2n+1)-1)/9 + 3*10^n.

The programs for A332136, the canonical program `A332136.P3185806271854131447` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332136 has offset 0).

The definition of A332136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332136.P2584326735065054690

`(10^(2*n+1)-1)/3+3*10^n`
-/

namespace A332136.P2584326735065054690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 3 + (3 * 10 ^ n : ℚ)

end

end A332136.P2584326735065054690

namespace A332136

/-- `(10^(2*n+1)-1)/3+3*10^n` -/
def P2584326735065054690.Spec : Prop :=
  ∀ n, P2584326735065054690.a n = (A332136 n : ℚ)

end A332136

/-! ## A332136.P2002285925970005070

`3*(10^(2*n+1)-1)/9+3*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332136.P2002285925970005070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) + (3 * 10 ^ n : ℚ)

end

end A332136.P2002285925970005070

namespace A332136

/-- `3*(10^(2*n+1)-1)/9+3*10^n` -/
def P2002285925970005070.Spec : Prop :=
  ∀ n, P2002285925970005070.a n = (A332136 n : ℚ)

end A332136

/-! ## A332136.P3185806271854131447

`3*A332112(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A332136

/-- `3*A332112(n)` -/
def P3185806271854131447.Spec : Prop :=
  ∀ n, P3185806271854131447.a n = A332136 n

theorem P3185806271854131447.correct : P3185806271854131447.Spec := by
  intro n
  simp only [A332136]

end A332136

/-! ## A332136.P5385651179096009905

`3/2*A332124(n)`
-/

namespace A332136.P5385651179096009905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A332124 n : ℚ)

end

end A332136.P5385651179096009905

namespace A332136

/-- `3/2*A332124(n)` -/
def P5385651179096009905.Spec : Prop :=
  ∀ n, P5385651179096009905.a n = (A332136 n : ℚ)

end A332136

/-! ## A332136.P13405785809952986654

`3/4*A332148(n)`
-/

namespace A332136.P13405785809952986654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A332148 n : ℚ)

end

end A332136.P13405785809952986654

namespace A332136

/-- `3/4*A332148(n)` -/
def P13405785809952986654.Spec : Prop :=
  ∀ n, P13405785809952986654.a n = (A332136 n : ℚ)

end A332136

/-! ## A332136.P9084700388178808501

`abs(4*(10*(10^n)²-1)/9-10^n-A332179(n))`
-/

namespace A332136.P9084700388178808501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ) - (A332179 n : ℚ)|

end

end A332136.P9084700388178808501

namespace A332136

/-- `abs(4*(10*(10^n)²-1)/9-10^n-A332179(n))` -/
def P9084700388178808501.Spec : Prop :=
  ∀ n, P9084700388178808501.a n = (A332136 n : ℚ)

end A332136

/-!
# A332137: a(n) = (10^(2n+1)-1)/3 + 4*10^n.

The programs for A332137, the canonical program `A332137.P9550829690586269634` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332137 has offset 0).

The definition of A332137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332137.P9550829690586269634

`(10^(2*n+1)-1)/3+4*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332137

/-- `(10^(2*n+1)-1)/3+4*10^n` -/
def P9550829690586269634.Spec : Prop :=
  ∀ n, P9550829690586269634.a n = (A332137 n : ℚ)

end A332137

/-! ## A332137.P9942138840715257133

`abs(10^n-A332138(n))`
-/

namespace A332137.P9942138840715257133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332138 n|

end

end A332137.P9942138840715257133

namespace A332137

/-- `abs(10^n-A332138(n))` -/
def P9942138840715257133.Spec : Prop :=
  ∀ n, P9942138840715257133.a n = A332137 n

end A332137

/-! ## A332137.P15786206210222605756

`abs(floor(10^(2*n+1)/9)-A332148(n))`
-/

namespace A332137.P15786206210222605756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A332148 n|

end

end A332137.P15786206210222605756

namespace A332137

/-- `abs(floor(10^(2*n+1)/9)-A332148(n))` -/
def P15786206210222605756.Spec : Prop :=
  ∀ n, P15786206210222605756.a n = A332137 n

end A332137

/-! ## A332137.P852819765449963104

`abs(4*(10*(10^n)²-1)/9-3*10^n-A332178(n))`
-/

namespace A332137.P852819765449963104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ) - (A332178 n : ℚ)|

end

end A332137.P852819765449963104

namespace A332137

/-- `abs(4*(10*(10^n)²-1)/9-3*10^n-A332178(n))` -/
def P852819765449963104.Spec : Prop :=
  ∀ n, P852819765449963104.a n = (A332137 n : ℚ)

end A332137

/-! ## A332137.P11973125399224032558

`abs(A332138(n)-A011557(n))`
-/

namespace A332137.P11973125399224032558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332138 n - A011557 n|

end

end A332137.P11973125399224032558

namespace A332137

/-- `abs(A332138(n)-A011557(n))` -/
def P11973125399224032558.Spec : Prop :=
  ∀ n, P11973125399224032558.a n = A332137 n

end A332137

/-! ## A332137.P330901515587721937

`round(A332116(n)+A332142(n)/2)`
-/

namespace A332137.P330901515587721937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332116 n : ℚ) + (A332142 n : ℚ) / 2)

end

end A332137.P330901515587721937

namespace A332137

/-- `round(A332116(n)+A332142(n)/2)` -/
def P330901515587721937.Spec : Prop :=
  ∀ n, P330901515587721937.a n = A332137 n

end A332137

/-! ## A332137.P975584274841926745

`round(A332116(n)+A332163(n)/3)`
-/

namespace A332137.P975584274841926745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332116 n : ℚ) + (A332163 n : ℚ) / 3)

end

end A332137.P975584274841926745

namespace A332137

/-- `round(A332116(n)+A332163(n)/3)` -/
def P975584274841926745.Spec : Prop :=
  ∀ n, P975584274841926745.a n = A332137 n

end A332137

/-! ## A332137.P10094252463828690398

`floor(A332147(n)-A332140(n)/4)`
-/

namespace A332137.P10094252463828690398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332147 n : ℚ) - (A332140 n : ℚ) / 4⌋

end

end A332137.P10094252463828690398

namespace A332137

/-- `floor(A332147(n)-A332140(n)/4)` -/
def P10094252463828690398.Spec : Prop :=
  ∀ n, P10094252463828690398.a n = A332137 n

end A332137

/-!
# A332138: a(n) = (10^(2*n+1) - 1)/3 + 5*10^n.

The programs for A332138, the canonical program `A332138.P10101472301302920758` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332138 has offset 0).

The definition of A332138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332138.P10101472301302920758

`(10^(2*n+1)-1)/3+5*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332138

/-- `(10^(2*n+1)-1)/3+5*10^n` -/
def P10101472301302920758.Spec : Prop :=
  ∀ n, P10101472301302920758.a n = (A332138 n : ℚ)

end A332138

/-! ## A332138.P7277946645756290242

`abs(A011557(n)-A332139(n))`
-/

namespace A332138.P7277946645756290242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332139 n|

end

end A332138.P7277946645756290242

namespace A332138

/-- `abs(A011557(n)-A332139(n))` -/
def P7277946645756290242.Spec : Prop :=
  ∀ n, P7277946645756290242.a n = A332138 n

end A332138

/-! ## A332138.P16639545860968847296

`abs(A100706(n)-A332149(n))`
-/

namespace A332138.P16639545860968847296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100706 n - A332149 n|

end

end A332138.P16639545860968847296

namespace A332138

/-- `abs(A100706(n)-A332149(n))` -/
def P16639545860968847296.Spec : Prop :=
  ∀ n, P16639545860968847296.a n = A332138 n

end A332138

/-! ## A332138.P12884999973178169179

`abs(A332121(n)-A332159(n))`
-/

namespace A332138.P12884999973178169179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332121 n - A332159 n|

end

end A332138.P12884999973178169179

namespace A332138

/-- `abs(A332121(n)-A332159(n))` -/
def P12884999973178169179.Spec : Prop :=
  ∀ n, P12884999973178169179.a n = A332138 n

end A332138

/-! ## A332138.P14941246196852816940

`abs(A332141(n)-A332179(n))`
-/

namespace A332138.P14941246196852816940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332141 n - A332179 n|

end

end A332138.P14941246196852816940

namespace A332138

/-- `abs(A332141(n)-A332179(n))` -/
def P14941246196852816940.Spec : Prop :=
  ∀ n, P14941246196852816940.a n = A332138 n

end A332138

/-!
# A332139: a(n) = (10^(2*n+1)-1)/3 + 6*10^n.

The programs for A332139, the canonical program `A332139.P6092008335846991546` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332139 has offset 0).

The definition of A332139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332139.P13691759673814134327

`(10^(2*n+1)-1)/3+6*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332139.P13691759673814134327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 3 + (6 * 10 ^ n : ℚ)

end

end A332139.P13691759673814134327

namespace A332139

/-- `(10^(2*n+1)-1)/3+6*10^n` -/
def P13691759673814134327.Spec : Prop :=
  ∀ n, P13691759673814134327.a n = (A332139 n : ℚ)

end A332139

/-! ## A332139.P6092008335846991546

`3*A332113(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A332139

/-- `3*A332113(n)` -/
def P6092008335846991546.Spec : Prop :=
  ∀ n, P6092008335846991546.a n = A332139 n

theorem P6092008335846991546.correct : P6092008335846991546.Spec := by
  intro n
  simp only [A332139]

end A332139

/-! ## A332139.P6294644285443293612

`3/2*A332126(n)`
-/

namespace A332139.P6294644285443293612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A332126 n : ℚ)

end

end A332139.P6294644285443293612

namespace A332139

/-- `3/2*A332126(n)` -/
def P6294644285443293612.Spec : Prop :=
  ∀ n, P6294644285443293612.a n = (A332139 n : ℚ)

end A332139

/-! ## A332139.P2338515848550946982

`abs(A138148(n)-A332149(n))`
-/

namespace A332139.P2338515848550946982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138148 n - A332149 n|

end

end A332139.P2338515848550946982

namespace A332139

/-- `abs(A138148(n)-A332149(n))` -/
def P2338515848550946982.Spec : Prop :=
  ∀ n, P2338515848550946982.a n = A332139 n

end A332139

/-! ## A332139.P4251334753382867608

`3*(A332112(n)+A011557(n))`
-/

namespace A332139.P4251334753382867608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A332112 n + A011557 n)

end

end A332139.P4251334753382867608

namespace A332139

/-- `3*(A332112(n)+A011557(n))` -/
def P4251334753382867608.Spec : Prop :=
  ∀ n, P4251334753382867608.a n = A332139 n

end A332139

/-! ## A332139.P18064697416449819266

`(A332149(n)+A332129(n))/2`
-/

namespace A332139.P18064697416449819266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332149 n + A332129 n : ℚ) / 2

end

end A332139.P18064697416449819266

namespace A332139

/-- `(A332149(n)+A332129(n))/2` -/
def P18064697416449819266.Spec : Prop :=
  ∀ n, P18064697416449819266.a n = (A332139 n : ℚ)

end A332139

/-! ## A332139.P9016965043599246508

`(A332159(n)+A332119(n))/2`
-/

namespace A332139.P9016965043599246508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332159 n + A332119 n : ℚ) / 2

end

end A332139.P9016965043599246508

namespace A332139

/-- `(A332159(n)+A332119(n))/2` -/
def P9016965043599246508.Spec : Prop :=
  ∀ n, P9016965043599246508.a n = (A332139 n : ℚ)

end A332139

/-!
# A332140: a(n) = 4*(10^(2*n+1) - 1)/9 - 4*10^n.

The programs for A332140, the canonical program `A332140.P15050806598803378739` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332140 has offset 0).

The definition of A332140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332140.P15050806598803378739

`4*((10^(2*n+1)-1)/9-10^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332140

/-- `4*((10^(2*n+1)-1)/9-10^n)` -/
def P15050806598803378739.Spec : Prop :=
  ∀ n, P15050806598803378739.a n = (A332140 n : ℚ)

end A332140

/-! ## A332140.P4610794214974341157

`4*(10^(2*n+1)-1)/9-4*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332140.P4610794214974341157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (4 * 10 ^ n : ℚ)

end

end A332140.P4610794214974341157

namespace A332140

/-- `4*(10^(2*n+1)-1)/9-4*10^n` -/
def P4610794214974341157.Spec : Prop :=
  ∀ n, P4610794214974341157.a n = (A332140 n : ℚ)

end A332140

/-! ## A332140.P10296868473142839608

`A332180(n)/2`
-/

namespace A332140.P10296868473142839608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332180 n : ℚ) / 2

end

end A332140.P10296868473142839608

namespace A332140

/-- `A332180(n)/2` -/
def P10296868473142839608.Spec : Prop :=
  ∀ n, P10296868473142839608.a n = (A332140 n : ℚ)

end A332140

/-! ## A332140.P15529992517534397859

`lcm(4, A138148(n))`
-/

namespace A332140.P15529992517534397859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A138148 n)

end

end A332140.P15529992517534397859

namespace A332140

/-- `lcm(4, A138148(n))` -/
def P15529992517534397859.Spec : Prop :=
  ∀ n, (P15529992517534397859.a n : ℤ) = A332140 n

end A332140

/-! ## A332140.P3568488274350308630

`(A332181(n)-10^n)/2`
-/

namespace A332140.P3568488274350308630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332181 n - (10 ^ n : ℤ) : ℚ) / 2

end

end A332140.P3568488274350308630

namespace A332140

/-- `(A332181(n)-10^n)/2` -/
def P3568488274350308630.Spec : Prop :=
  ∀ n, P3568488274350308630.a n = (A332140 n : ℚ)

end A332140

/-!
# A332141: a(n) = 4*(10^(2*n+1)-1)/9 - 3*10^n.

The programs for A332141, the canonical program `A332141.P6901797361627606594` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332141 has offset 0).

The definition of A332141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332141.P6901797361627606594

`4*(10^(2*n+1)-1)/9-3*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332141

/-- `4*(10^(2*n+1)-1)/9-3*10^n` -/
def P6901797361627606594.Spec : Prop :=
  ∀ n, P6901797361627606594.a n = (A332141 n : ℚ)

end A332141

/-! ## A332141.P17671562294791590663

`A332182(n)/2`
-/

namespace A332141.P17671562294791590663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332182 n : ℚ) / 2

end

end A332141.P17671562294791590663

namespace A332141

/-- `A332182(n)/2` -/
def P17671562294791590663.Spec : Prop :=
  ∀ n, P17671562294791590663.a n = (A332141 n : ℚ)

end A332141

/-! ## A332141.P12988420572204551515

`(A332181(n)+10^n)/2`
-/

namespace A332141.P12988420572204551515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332181 n + (10 ^ n : ℤ) : ℚ) / 2

end

end A332141.P12988420572204551515

namespace A332141

/-- `(A332181(n)+10^n)/2` -/
def P12988420572204551515.Spec : Prop :=
  ∀ n, P12988420572204551515.a n = (A332141 n : ℚ)

end A332141

/-! ## A332141.P82125535923805395

`(A332183(n)-10^n)/2`
-/

namespace A332141.P82125535923805395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332183 n - (10 ^ n : ℤ) : ℚ) / 2

end

end A332141.P82125535923805395

namespace A332141

/-- `(A332183(n)-10^n)/2` -/
def P82125535923805395.Spec : Prop :=
  ∀ n, P82125535923805395.a n = (A332141 n : ℚ)

end A332141

/-! ## A332141.P6573653093651834431

`(A086576(n)+1)*ceil(8/9*10^n)`
-/

namespace A332141.P6573653093651834431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086576 n + 1) * ⌈(8 : ℚ) / 9 * (10 ^ n : ℚ)⌉

end

end A332141.P6573653093651834431

namespace A332141

/-- `(A086576(n)+1)*ceil(8/9*10^n)` -/
def P6573653093651834431.Spec : Prop :=
  ∀ n, P6573653093651834431.a n = A332141 n

end A332141

/-! ## A332141.P10062544819736184389

`A332184(n)%A332143(n)`
-/

namespace A332141.P10062544819736184389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332184 n) (A332143 n)

end

end A332141.P10062544819736184389

namespace A332141

/-- `A332184(n)%A332143(n)` -/
def P10062544819736184389.Spec : Prop :=
  ∀ n, P10062544819736184389.a n = A332141 n

end A332141

/-! ## A332141.P14698273262714050877

`A332189(n)%A332148(n)`
-/

namespace A332141.P14698273262714050877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332189 n) (A332148 n)

end

end A332141.P14698273262714050877

namespace A332141

/-- `A332189(n)%A332148(n)` -/
def P14698273262714050877.Spec : Prop :=
  ∀ n, P14698273262714050877.a n = A332141 n

end A332141

/-!
# A332142: a(n) = 4*(10^(2*n+1)-1)/9 - 2*10^n.

The programs for A332142, the canonical program `A332142.P8543533334691509087` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332142 has offset 0).

The definition of A332142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332142.P3072813948686631745

`4*(10^(2*n+1)-1)/9-2*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332142.P3072813948686631745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (2 * 10 ^ n : ℚ)

end

end A332142.P3072813948686631745

namespace A332142

/-- `4*(10^(2*n+1)-1)/9-2*10^n` -/
def P3072813948686631745.Spec : Prop :=
  ∀ n, P3072813948686631745.a n = (A332142 n : ℚ)

end A332142

/-! ## A332142.P8543533334691509087

`2*A332121(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A332142

/-- `2*A332121(n)` -/
def P8543533334691509087.Spec : Prop :=
  ∀ n, P8543533334691509087.a n = A332142 n

theorem P8543533334691509087.correct : P8543533334691509087.Spec := by
  intro n
  simp only [A332142]

end A332142

/-! ## A332142.P7708853979134500884

`A332184(n)/2`
-/

namespace A332142.P7708853979134500884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332184 n : ℚ) / 2

end

end A332142.P7708853979134500884

namespace A332142

/-- `A332184(n)/2` -/
def P7708853979134500884.Spec : Prop :=
  ∀ n, P7708853979134500884.a n = (A332142 n : ℚ)

end A332142

/-! ## A332142.P9287636665925495063

`2/3*A332163(n)`
-/

namespace A332142.P9287636665925495063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A332163 n : ℚ)

end

end A332142.P9287636665925495063

namespace A332142

/-- `2/3*A332163(n)` -/
def P9287636665925495063.Spec : Prop :=
  ∀ n, P9287636665925495063.a n = (A332142 n : ℚ)

end A332142

/-! ## A332142.P6595889115935636192

`(A332183(n)+10^n)/2`
-/

namespace A332142.P6595889115935636192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332183 n + (10 ^ n : ℤ) : ℚ) / 2

end

end A332142.P6595889115935636192

namespace A332142

/-- `(A332183(n)+10^n)/2` -/
def P6595889115935636192.Spec : Prop :=
  ∀ n, P6595889115935636192.a n = (A332142 n : ℚ)

end A332142

/-! ## A332142.P13060910653091206500

`(A332185(n)-10^n)/2`
-/

namespace A332142.P13060910653091206500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332185 n - (10 ^ n : ℤ) : ℚ) / 2

end

end A332142.P13060910653091206500

namespace A332142

/-- `(A332185(n)-10^n)/2` -/
def P13060910653091206500.Spec : Prop :=
  ∀ n, P13060910653091206500.a n = (A332142 n : ℚ)

end A332142

/-! ## A332142.P12983273307551721031

`abs(A011557(n)-A332143(n))`
-/

namespace A332142.P12983273307551721031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332143 n|

end

end A332142.P12983273307551721031

namespace A332142

/-- `abs(A011557(n)-A332143(n))` -/
def P12983273307551721031.Spec : Prop :=
  ∀ n, P12983273307551721031.a n = A332142 n

end A332142

/-! ## A332142.P10198980397791262603

`2*(A138148(n)+A100706(n))`
-/

namespace A332142.P10198980397791262603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138148 n + A100706 n)

end

end A332142.P10198980397791262603

namespace A332142

/-- `2*(A138148(n)+A100706(n))` -/
def P10198980397791262603.Spec : Prop :=
  ∀ n, P10198980397791262603.a n = A332142 n

end A332142

/-! ## A332142.P9267250952791486990

`2*(A332120(n)+A011557(n))`
-/

namespace A332142.P9267250952791486990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332120 n + A011557 n)

end

end A332142.P9267250952791486990

namespace A332142

/-- `2*(A332120(n)+A011557(n))` -/
def P9267250952791486990.Spec : Prop :=
  ∀ n, P9267250952791486990.a n = A332142 n

end A332142

/-! ## A332142.P7251952645778160309

`2*(A332131(n)-A138148(n))`
-/

namespace A332142.P7251952645778160309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332131 n - A138148 n)

end

end A332142.P7251952645778160309

namespace A332142

/-- `2*(A332131(n)-A138148(n))` -/
def P7251952645778160309.Spec : Prop :=
  ∀ n, P7251952645778160309.a n = A332142 n

end A332142

/-!
# A332143: a(n) = 4*(10^(2*n+1)-1)/9 - 10^n.

The programs for A332143, the canonical program `A332143.P1622153457884055522` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332143 has offset 0).

The definition of A332143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332143.P1622153457884055522

`4*(10^(2*n+1)-1)/9-10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332143

/-- `4*(10^(2*n+1)-1)/9-10^n` -/
def P1622153457884055522.Spec : Prop :=
  ∀ n, P1622153457884055522.a n = (A332143 n : ℚ)

end A332143

/-! ## A332143.P18196389473050977097

`A332186(n)/2`
-/

namespace A332143.P18196389473050977097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332186 n : ℚ) / 2

end

end A332143.P18196389473050977097

namespace A332143

/-- `A332186(n)/2` -/
def P18196389473050977097.Spec : Prop :=
  ∀ n, P18196389473050977097.a n = (A332143 n : ℚ)

end A332143

/-! ## A332143.P14888071944618702369

`(A332185(n)+10^n)/2`
-/

namespace A332143.P14888071944618702369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332185 n + (10 ^ n : ℤ) : ℚ) / 2

end

end A332143.P14888071944618702369

namespace A332143

/-- `(A332185(n)+10^n)/2` -/
def P14888071944618702369.Spec : Prop :=
  ∀ n, P14888071944618702369.a n = (A332143 n : ℚ)

end A332143

/-! ## A332143.P17791251624995263996

`(A332187(n)-10^n)/2`
-/

namespace A332143.P17791251624995263996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332187 n - (10 ^ n : ℤ) : ℚ) / 2

end

end A332143.P17791251624995263996

namespace A332143

/-- `(A332187(n)-10^n)/2` -/
def P17791251624995263996.Spec : Prop :=
  ∀ n, P17791251624995263996.a n = (A332143 n : ℚ)

end A332143

/-! ## A332143.P2047701015500770274

`A332189(n)%A332146(n)`
-/

namespace A332143.P2047701015500770274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332189 n) (A332146 n)

end

end A332143.P2047701015500770274

namespace A332143

/-- `A332189(n)%A332146(n)` -/
def P2047701015500770274.Spec : Prop :=
  ∀ n, P2047701015500770274.a n = A332143 n

end A332143

/-! ## A332143.P2726105187294359064

`abs(A332116(n)-A332159(n))`
-/

namespace A332143.P2726105187294359064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332116 n - A332159 n|

end

end A332143.P2726105187294359064

namespace A332143

/-- `abs(A332116(n)-A332159(n))` -/
def P2726105187294359064.Spec : Prop :=
  ∀ n, P2726105187294359064.a n = A332143 n

end A332143

/-! ## A332143.P2224979203088013083

`abs(A332120(n)-A332163(n))`
-/

namespace A332143.P2224979203088013083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332120 n - A332163 n|

end

end A332143.P2224979203088013083

namespace A332143

/-- `abs(A332120(n)-A332163(n))` -/
def P2224979203088013083.Spec : Prop :=
  ∀ n, P2224979203088013083.a n = A332143 n

end A332143

/-! ## A332143.P9414294637065453906

`(A332176(n)+A138148(n))/2`
-/

namespace A332143.P9414294637065453906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332176 n + A138148 n : ℚ) / 2

end

end A332143.P9414294637065453906

namespace A332143

/-- `(A332176(n)+A138148(n))/2` -/
def P9414294637065453906.Spec : Prop :=
  ∀ n, P9414294637065453906.a n = (A332143 n : ℚ)

end A332143

/-! ## A332143.P4776308181268467501

`(A332145(n)+A332141(n))/2`
-/

namespace A332143.P4776308181268467501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332145 n + A332141 n : ℚ) / 2

end

end A332143.P4776308181268467501

namespace A332143

/-- `(A332145(n)+A332141(n))/2` -/
def P4776308181268467501.Spec : Prop :=
  ∀ n, P4776308181268467501.a n = (A332143 n : ℚ)

end A332143

/-!
# A332145: a(n) = 4*(10^(2*n+1)-1)/9 + 10^n.

The programs for A332145, the canonical program `A332145.P15528678668003936376` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332145 has offset 0).

The definition of A332145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332145.P15528678668003936376

`4*(10^(2*n+1)-1)/9+10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332145

/-- `4*(10^(2*n+1)-1)/9+10^n` -/
def P15528678668003936376.Spec : Prop :=
  ∀ n, P15528678668003936376.a n = (A332145 n : ℚ)

end A332145

/-! ## A332145.P8260243769249570635

`(A332189(n)+10^n)/2`
-/

namespace A332145.P8260243769249570635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332189 n + (10 ^ n : ℤ) : ℚ) / 2

end

end A332145.P8260243769249570635

namespace A332145

/-- `(A332189(n)+10^n)/2` -/
def P8260243769249570635.Spec : Prop :=
  ∀ n, P8260243769249570635.a n = (A332145 n : ℚ)

end A332145

/-! ## A332145.P12661637314134670458

`abs(A100706(n)-A332156(n))`
-/

namespace A332145.P12661637314134670458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100706 n - A332156 n|

end

end A332145.P12661637314134670458

namespace A332145

/-- `abs(A100706(n)-A332156(n))` -/
def P12661637314134670458.Spec : Prop :=
  ∀ n, P12661637314134670458.a n = A332145 n

end A332145

/-! ## A332145.P4346827313776487616

`abs(A332114(n)-A332159(n))`
-/

namespace A332145.P4346827313776487616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332114 n - A332159 n|

end

end A332145.P4346827313776487616

namespace A332145

/-- `abs(A332114(n)-A332159(n))` -/
def P4346827313776487616.Spec : Prop :=
  ∀ n, P4346827313776487616.a n = A332145 n

end A332145

/-! ## A332145.P14311908052191056613

`abs(A332130(n)-A332175(n))`
-/

namespace A332145.P14311908052191056613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332130 n - A332175 n|

end

end A332145.P14311908052191056613

namespace A332145

/-- `abs(A332130(n)-A332175(n))` -/
def P14311908052191056613.Spec : Prop :=
  ∀ n, P14311908052191056613.a n = A332145 n

end A332145

/-! ## A332145.P7394400554023510159

`abs(A332134(n)-A332179(n))`
-/

namespace A332145.P7394400554023510159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332134 n - A332179 n|

end

end A332145.P7394400554023510159

namespace A332145

/-- `abs(A332134(n)-A332179(n))` -/
def P7394400554023510159.Spec : Prop :=
  ∀ n, P7394400554023510159.a n = A332145 n

end A332145

/-! ## A332145.P2744448428713384500

`abs(A332151(n)-A332196(n))`
-/

namespace A332145.P2744448428713384500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332151 n - A332196 n|

end

end A332145.P2744448428713384500

namespace A332145

/-- `abs(A332151(n)-A332196(n))` -/
def P2744448428713384500.Spec : Prop :=
  ∀ n, P2744448428713384500.a n = A332145 n

end A332145

/-! ## A332145.P5220820281607125748

`(2*A332146(n))%A332147(n)`
-/

namespace A332145.P5220820281607125748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A332146 n) (A332147 n)

end

end A332145.P5220820281607125748

namespace A332145

/-- `(2*A332146(n))%A332147(n)` -/
def P5220820281607125748.Spec : Prop :=
  ∀ n, P5220820281607125748.a n = A332145 n

end A332145

/-!
# A332146: a(n) = 4*(10^(2*n+1)-1)/9 + 2*10^n.

The programs for A332146, the canonical program `A332146.P16291419532192447065` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332146 has offset 0).

The definition of A332146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332146.P1338657415293536256

`4*(10^(2*n+1)-1)/9+2*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332146.P1338657415293536256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) + (2 * 10 ^ n : ℚ)

end

end A332146.P1338657415293536256

namespace A332146

/-- `4*(10^(2*n+1)-1)/9+2*10^n` -/
def P1338657415293536256.Spec : Prop :=
  ∀ n, P1338657415293536256.a n = (A332146 n : ℚ)

end A332146

/-! ## A332146.P16291419532192447065

`2*A332123(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A332146

/-- `2*A332123(n)` -/
def P16291419532192447065.Spec : Prop :=
  ∀ n, P16291419532192447065.a n = A332146 n

theorem P16291419532192447065.correct : P16291419532192447065.Spec := by
  intro n
  simp only [A332146]

end A332146

/-! ## A332146.P6628818449369304056

`2/3*A332169(n)`
-/

namespace A332146.P6628818449369304056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A332169 n : ℚ)

end

end A332146.P6628818449369304056

namespace A332146

/-- `2/3*A332169(n)` -/
def P6628818449369304056.Spec : Prop :=
  ∀ n, P6628818449369304056.a n = (A332146 n : ℚ)

end A332146

/-! ## A332146.P2500534009885973769

`2*(A332124(n)-10^n)`
-/

namespace A332146.P2500534009885973769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332124 n - (10 ^ n : ℤ))

end

end A332146.P2500534009885973769

namespace A332146

/-- `2*(A332124(n)-10^n)` -/
def P2500534009885973769.Spec : Prop :=
  ∀ n, P2500534009885973769.a n = A332146 n

end A332146

/-! ## A332146.P7743057024991485665

`2*(A332120(n)+3*10^n)`
-/

namespace A332146.P7743057024991485665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332120 n + (3 * 10 ^ n : ℤ))

end

end A332146.P7743057024991485665

namespace A332146

/-- `2*(A332120(n)+3*10^n)` -/
def P7743057024991485665.Spec : Prop :=
  ∀ n, P7743057024991485665.a n = A332146 n

end A332146

/-! ## A332146.P12170165929418914011

`abs(A011557(n)-A332147(n))`
-/

namespace A332146.P12170165929418914011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332147 n|

end

end A332146.P12170165929418914011

namespace A332146

/-- `abs(A011557(n)-A332147(n))` -/
def P12170165929418914011.Spec : Prop :=
  ∀ n, P12170165929418914011.a n = A332146 n

end A332146

/-! ## A332146.P18175396406734814245

`abs(A332113(n)-A332159(n))`
-/

namespace A332146.P18175396406734814245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332113 n - A332159 n|

end

end A332146.P18175396406734814245

namespace A332146

/-- `abs(A332113(n)-A332159(n))` -/
def P18175396406734814245.Spec : Prop :=
  ∀ n, P18175396406734814245.a n = A332146 n

end A332146

/-! ## A332146.P487044780940348958

`abs(A332150(n)-A332196(n))`
-/

namespace A332146.P487044780940348958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332150 n - A332196 n|

end

end A332146.P487044780940348958

namespace A332146

/-- `abs(A332150(n)-A332196(n))` -/
def P487044780940348958.Spec : Prop :=
  ∀ n, P487044780940348958.a n = A332146 n

end A332146

/-! ## A332146.P11889394417474793514

`2*(A332113(n)+A138148(n))`
-/

namespace A332146.P11889394417474793514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332113 n + A138148 n)

end

end A332146.P11889394417474793514

namespace A332146

/-- `2*(A332113(n)+A138148(n))` -/
def P11889394417474793514.Spec : Prop :=
  ∀ n, P11889394417474793514.a n = A332146 n

end A332146

/-! ## A332146.P7140627085533521957

`2*(A332149(n)-A332126(n))`
-/

namespace A332146.P7140627085533521957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332149 n - A332126 n)

end

end A332146.P7140627085533521957

namespace A332146

/-- `2*(A332149(n)-A332126(n))` -/
def P7140627085533521957.Spec : Prop :=
  ∀ n, P7140627085533521957.a n = A332146 n

end A332146

/-!
# A332147: a(n) = 4*(10^(2*n+1)-1)/9 + 3*10^n.

The programs for A332147, the canonical program `A332147.P6984014411039513074` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332147 has offset 0).

The definition of A332147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332147.P6984014411039513074

`4*(10^(2*n+1)-1)/9+3*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332147

/-- `4*(10^(2*n+1)-1)/9+3*10^n` -/
def P6984014411039513074.Spec : Prop :=
  ∀ n, P6984014411039513074.a n = (A332147 n : ℚ)

end A332147

/-! ## A332147.P8720649224263988346

`abs(10^n-A332148(n))`
-/

namespace A332147.P8720649224263988346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332148 n|

end

end A332147.P8720649224263988346

namespace A332147

/-- `abs(10^n-A332148(n))` -/
def P8720649224263988346.Spec : Prop :=
  ∀ n, P8720649224263988346.a n = A332147 n

end A332147

/-! ## A332147.P3472934482088012406

`abs(floor(10^(2*n+1)/9)-A332158(n))`
-/

namespace A332147.P3472934482088012406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A332158 n|

end

end A332147.P3472934482088012406

namespace A332147

/-- `abs(floor(10^(2*n+1)/9)-A332158(n))` -/
def P3472934482088012406.Spec : Prop :=
  ∀ n, P3472934482088012406.a n = A332147 n

end A332147

/-! ## A332147.P2709457421030335049

`abs((4*(10*(10^n)²-1)/9-2*10^n)/2-A332168(n))`
-/

namespace A332147.P2709457421030335049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (2 * 10 ^ n : ℚ)) / 2 - (A332168 n : ℚ)|

end

end A332147.P2709457421030335049

namespace A332147

/-- `abs((4*(10*(10^n)²-1)/9-2*10^n)/2-A332168(n))` -/
def P2709457421030335049.Spec : Prop :=
  ∀ n, P2709457421030335049.a n = (A332147 n : ℚ)

end A332147

/-! ## A332147.P13911879277257054673

`floor(A332112(n)+(A332169(n)+A011557(n))/2)`
-/

namespace A332147.P13911879277257054673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332112 n : ℚ) + (A332169 n + A011557 n : ℚ) / 2⌋

end

end A332147.P13911879277257054673

namespace A332147

/-- `floor(A332112(n)+(A332169(n)+A011557(n))/2)` -/
def P13911879277257054673.Spec : Prop :=
  ∀ n, P13911879277257054673.a n = A332147 n

end A332147

/-!
# A332148: a(n) = 4*(10^(2*n+1) - 1)/9 + 4*10^n.

The programs for A332148, the canonical program `A332148.P6300543810910309875` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332148 has offset 0).

The definition of A332148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332148.P6300543810910309875

`4*((10^(2*n+1)-1)/9+10^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332148

/-- `4*((10^(2*n+1)-1)/9+10^n)` -/
def P6300543810910309875.Spec : Prop :=
  ∀ n, P6300543810910309875.a n = (A332148 n : ℚ)

end A332148

/-! ## A332148.P5123543208322761127

`4*(10^(2*n+1)-1)/9+4*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332148.P5123543208322761127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) + (4 * 10 ^ n : ℚ)

end

end A332148.P5123543208322761127

namespace A332148

/-- `4*(10^(2*n+1)-1)/9+4*10^n` -/
def P5123543208322761127.Spec : Prop :=
  ∀ n, P5123543208322761127.a n = (A332148 n : ℚ)

end A332148

/-!
# A332149: a(n) = 4*(10^(2*n+1)-1)/9 + 5*10^n.

The programs for A332149, the canonical program `A332149.P2520466536585489288` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332149 has offset 0).

The definition of A332149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332149.P2520466536585489288

`4*(10^(2*n+1)-1)/9+5*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332149

/-- `4*(10^(2*n+1)-1)/9+5*10^n` -/
def P2520466536585489288.Spec : Prop :=
  ∀ n, P2520466536585489288.a n = (A332149 n : ℚ)

end A332149

/-! ## A332149.P8249112758459643898

`abs(A138148(n)-A332159(n))`
-/

namespace A332149.P8249112758459643898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138148 n - A332159 n|

end

end A332149.P8249112758459643898

namespace A332149

/-- `abs(A138148(n)-A332159(n))` -/
def P8249112758459643898.Spec : Prop :=
  ∀ n, P8249112758459643898.a n = A332149 n

end A332149

/-! ## A332149.P865784877692058903

`abs(A332140(n)-A332189(n))`
-/

namespace A332149.P865784877692058903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332140 n - A332189 n|

end

end A332149.P865784877692058903

namespace A332149

/-- `abs(A332140(n)-A332189(n))` -/
def P865784877692058903.Spec : Prop :=
  ∀ n, P865784877692058903.a n = A332149 n

end A332149

/-! ## A332149.P12500129274018691726

`(A332169(n)+A332129(n))/2`
-/

namespace A332149.P12500129274018691726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332169 n + A332129 n : ℚ) / 2

end

end A332149.P12500129274018691726

namespace A332149

/-- `(A332169(n)+A332129(n))/2` -/
def P12500129274018691726.Spec : Prop :=
  ∀ n, P12500129274018691726.a n = (A332149 n : ℚ)

end A332149

/-! ## A332149.P9213265755323512720

`(A332189(n)+A052268(n+1))/2`
-/

namespace A332149.P9213265755323512720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332189 n + A052268 (n + 1) : ℚ) / 2

end

end A332149.P9213265755323512720

namespace A332149

/-- `(A332189(n)+A052268(n+1))/2` -/
def P9213265755323512720.Spec : Prop :=
  ∀ n, P9213265755323512720.a n = (A332149 n : ℚ)

end A332149

/-! ## A332149.P873050149555895868

`(A011557(n+1)+A002282(2*n+1))/2`
-/

namespace A332149.P873050149555895868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) + A002282 (2 * n + 1) : ℚ) / 2

end

end A332149.P873050149555895868

namespace A332149

/-- `(A011557(n+1)+A002282(2*n+1))/2` -/
def P873050149555895868.Spec : Prop :=
  ∀ n, P873050149555895868.a n = (A332149 n : ℚ)

end A332149

/-!
# A332150: a(n) = 5*(10^(2*n+1) - 1)/9 - 5*10^n.

The programs for A332150, the canonical program `A332150.P4285634605099160527` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332150 has offset 0).

The definition of A332150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332150.P4285634605099160527

`5*((10^(2*n+1)-1)/9-10^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332150

/-- `5*((10^(2*n+1)-1)/9-10^n)` -/
def P4285634605099160527.Spec : Prop :=
  ∀ n, P4285634605099160527.a n = (A332150 n : ℚ)

end A332150

/-! ## A332150.P17911522240683411448

`5*(10^(2*n+1)-1)/9-5*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332150.P17911522240683411448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (5 * 10 ^ n : ℚ)

end

end A332150.P17911522240683411448

namespace A332150

/-- `5*(10^(2*n+1)-1)/9-5*10^n` -/
def P17911522240683411448.Spec : Prop :=
  ∀ n, P17911522240683411448.a n = (A332150 n : ℚ)

end A332150

/-! ## A332150.P8682026055495748263

`A173521(n)/2`
-/

namespace A332150.P8682026055495748263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173521 n : ℚ) / 2

end

end A332150.P8682026055495748263

namespace A332150

/-- `A173521(n)/2` -/
def P8682026055495748263.Spec : Prop :=
  ∀ n, P8682026055495748263.a n = (A332150 n : ℚ)

end A332150

/-! ## A332150.P9626731427429387960

`lcm(5, A138148(n))`
-/

namespace A332150.P9626731427429387960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A138148 n)

end

end A332150.P9626731427429387960

namespace A332150

/-- `lcm(5, A138148(n))` -/
def P9626731427429387960.Spec : Prop :=
  ∀ n, (P9626731427429387960.a n : ℤ) = A332150 n

end A332150

/-! ## A332150.P11778729159272652080

`round(5*A332160(n)/6)`
-/

namespace A332150.P11778729159272652080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((A332160 n : ℚ) / 6))

end

end A332150.P11778729159272652080

namespace A332150

/-- `round(5*A332160(n)/6)` -/
def P11778729159272652080.Spec : Prop :=
  ∀ n, P11778729159272652080.a n = A332150 n

end A332150

/-!
# A332151: a(n) = 5*(10^(2*n+1) - 1)/9 - 4*10^n.

The programs for A332151, the canonical program `A332151.P8658252248617165184` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332151 has offset 0).

The definition of A332151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332151.P8658252248617165184

`5*(10^(2*n+1)-1)/9-4*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332151

/-- `5*(10^(2*n+1)-1)/9-4*10^n` -/
def P8658252248617165184.Spec : Prop :=
  ∀ n, P8658252248617165184.a n = (A332151 n : ℚ)

end A332151

/-! ## A332151.P13793699719699960887

`abs(floor(10*(10^n)²/9)-10^n-A332161(n))`
-/

namespace A332151.P13793699719699960887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - (10 ^ n : ℤ) - A332161 n|

end

end A332151.P13793699719699960887

namespace A332151

/-- `abs(floor(10*(10^n)²/9)-10^n-A332161(n))` -/
def P13793699719699960887.Spec : Prop :=
  ∀ n, P13793699719699960887.a n = A332151 n

end A332151

/-! ## A332151.P4733004003854914058

`abs(A332112(n)-A332163(n))`
-/

namespace A332151.P4733004003854914058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332112 n - A332163 n|

end

end A332151.P4733004003854914058

namespace A332151

/-- `abs(A332112(n)-A332163(n))` -/
def P4733004003854914058.Spec : Prop :=
  ∀ n, P4733004003854914058.a n = A332151 n

end A332151

/-! ## A332151.P14729698920364308913

`abs(A332113(n)-A332164(n))`
-/

namespace A332151.P14729698920364308913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332113 n - A332164 n|

end

end A332151.P14729698920364308913

namespace A332151

/-- `abs(A332113(n)-A332164(n))` -/
def P14729698920364308913.Spec : Prop :=
  ∀ n, P14729698920364308913.a n = A332151 n

end A332151

/-! ## A332151.P3437973100116302203

`abs(A332118(n)-A332169(n))`
-/

namespace A332151.P3437973100116302203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332118 n - A332169 n|

end

end A332151.P3437973100116302203

namespace A332151

/-- `abs(A332118(n)-A332169(n))` -/
def P3437973100116302203.Spec : Prop :=
  ∀ n, P3437973100116302203.a n = A332151 n

end A332151

/-!
# A332152: a(n) = 5*(10^(2*n+1)-1)/9 - 3*10^n.

The programs for A332152, the canonical program `A332152.P10833911742322090199` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332152 has offset 0).

The definition of A332152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332152.P10833911742322090199

`5*(10^(2*n+1)-1)/9-3*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332152

/-- `5*(10^(2*n+1)-1)/9-3*10^n` -/
def P10833911742322090199.Spec : Prop :=
  ∀ n, P10833911742322090199.a n = (A332152 n : ℚ)

end A332152

/-! ## A332152.P8746662107696491923

`abs(A011557(n)-A332153(n))`
-/

namespace A332152.P8746662107696491923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332153 n|

end

end A332152.P8746662107696491923

namespace A332152

/-- `abs(A011557(n)-A332153(n))` -/
def P8746662107696491923.Spec : Prop :=
  ∀ n, P8746662107696491923.a n = A332152 n

end A332152

/-! ## A332152.P14372719591764180256

`abs(A100706(n)-A332163(n))`
-/

namespace A332152.P14372719591764180256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100706 n - A332163 n|

end

end A332152.P14372719591764180256

namespace A332152

/-- `abs(A100706(n)-A332163(n))` -/
def P14372719591764180256.Spec : Prop :=
  ∀ n, P14372719591764180256.a n = A332152 n

end A332152

/-! ## A332152.P16450658505709500079

`abs(A332112(n)-A332164(n))`
-/

namespace A332152.P16450658505709500079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332112 n - A332164 n|

end

end A332152.P16450658505709500079

namespace A332152

/-- `abs(A332112(n)-A332164(n))` -/
def P16450658505709500079.Spec : Prop :=
  ∀ n, P16450658505709500079.a n = A332152 n

end A332152

/-! ## A332152.P8698107951519002215

`abs(A332120(n)-A332172(n))`
-/

namespace A332152.P8698107951519002215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332120 n - A332172 n|

end

end A332152.P8698107951519002215

namespace A332152

/-- `abs(A332120(n)-A332172(n))` -/
def P8698107951519002215.Spec : Prop :=
  ∀ n, P8698107951519002215.a n = A332152 n

end A332152

/-! ## A332152.P5490385098525861342

`abs(A332137(n)-A332189(n))`
-/

namespace A332152.P5490385098525861342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332137 n - A332189 n|

end

end A332152.P5490385098525861342

namespace A332152

/-- `abs(A332137(n)-A332189(n))` -/
def P5490385098525861342.Spec : Prop :=
  ∀ n, P5490385098525861342.a n = A332152 n

end A332152

/-! ## A332152.P10489387108656028022

`(A332194(n)+A138148(n))/2`
-/

namespace A332152.P10489387108656028022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332194 n + A138148 n : ℚ) / 2

end

end A332152.P10489387108656028022

namespace A332152

/-- `(A332194(n)+A138148(n))/2` -/
def P10489387108656028022.Spec : Prop :=
  ∀ n, P10489387108656028022.a n = (A332152 n : ℚ)

end A332152

/-! ## A332152.P2447564351422286051

`(A332154(n)+A332150(n))/2`
-/

namespace A332152.P2447564351422286051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332154 n + A332150 n : ℚ) / 2

end

end A332152.P2447564351422286051

namespace A332152

/-- `(A332154(n)+A332150(n))/2` -/
def P2447564351422286051.Spec : Prop :=
  ∀ n, P2447564351422286051.a n = (A332152 n : ℚ)

end A332152

/-!
# A332153: a(n) = 5*(10^(2*n+1)-1)/9 - 2*10^n.

The programs for A332153, the canonical program `A332153.P8656748173623658374` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332153 has offset 0).

The definition of A332153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332153.P8656748173623658374

`5*(10^(2*n+1)-1)/9-2*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332153

/-- `5*(10^(2*n+1)-1)/9-2*10^n` -/
def P8656748173623658374.Spec : Prop :=
  ∀ n, P8656748173623658374.a n = (A332153 n : ℚ)

end A332153

/-! ## A332153.P12073299564249788737

`abs(A011557(n)-A332154(n))`
-/

namespace A332153.P12073299564249788737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332154 n|

end

end A332153.P12073299564249788737

namespace A332153

/-- `abs(A011557(n)-A332154(n))` -/
def P12073299564249788737.Spec : Prop :=
  ∀ n, P12073299564249788737.a n = A332153 n

end A332153

/-! ## A332153.P11207452036354248815

`abs(A100706(n)-A332164(n))`
-/

namespace A332153.P11207452036354248815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100706 n - A332164 n|

end

end A332153.P11207452036354248815

namespace A332153

/-- `abs(A100706(n)-A332164(n))` -/
def P11207452036354248815.Spec : Prop :=
  ∀ n, P11207452036354248815.a n = A332153 n

end A332153

/-! ## A332153.P6488716685740973175

`abs(A332121(n)-A332174(n))`
-/

namespace A332153.P6488716685740973175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332121 n - A332174 n|

end

end A332153.P6488716685740973175

namespace A332153

/-- `abs(A332121(n)-A332174(n))` -/
def P6488716685740973175.Spec : Prop :=
  ∀ n, P6488716685740973175.a n = A332153 n

end A332153

/-! ## A332153.P7621545189976625674

`(A332163(n)+A332143(n))/2`
-/

namespace A332153.P7621545189976625674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332163 n + A332143 n : ℚ) / 2

end

end A332153.P7621545189976625674

namespace A332153

/-- `(A332163(n)+A332143(n))/2` -/
def P7621545189976625674.Spec : Prop :=
  ∀ n, P7621545189976625674.a n = (A332153 n : ℚ)

end A332153

/-! ## A332153.P9190599510552392286

`(A332193(n)+A332113(n))/2`
-/

namespace A332153.P9190599510552392286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332193 n + A332113 n : ℚ) / 2

end

end A332153.P9190599510552392286

namespace A332153

/-- `(A332193(n)+A332113(n))/2` -/
def P9190599510552392286.Spec : Prop :=
  ∀ n, P9190599510552392286.a n = (A332153 n : ℚ)

end A332153

/-! ## A332153.P8453807428410418544

`(2*A332156(n))%A332159(n)`
-/

namespace A332153.P8453807428410418544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A332156 n) (A332159 n)

end

end A332153.P8453807428410418544

namespace A332153

/-- `(2*A332156(n))%A332159(n)` -/
def P8453807428410418544.Spec : Prop :=
  ∀ n, P8453807428410418544.a n = A332153 n

end A332153

/-!
# A332154: a(n) = 5*(10^(2*n+1)-1)/9 - 10^n.

The programs for A332154, the canonical program `A332154.P9525291827818908932` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332154 has offset 0).

The definition of A332154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332154.P9525291827818908932

`5*(10^(2*n+1)-1)/9-10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332154

/-- `5*(10^(2*n+1)-1)/9-10^n` -/
def P9525291827818908932.Spec : Prop :=
  ∀ n, P9525291827818908932.a n = (A332154 n : ℚ)

end A332154

/-! ## A332154.P17108733018985529030

`abs(A100706(n)-A332165(n))`
-/

namespace A332154.P17108733018985529030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100706 n - A332165 n|

end

end A332154.P17108733018985529030

namespace A332154

/-- `abs(A100706(n)-A332165(n))` -/
def P17108733018985529030.Spec : Prop :=
  ∀ n, P17108733018985529030.a n = A332154 n

end A332154

/-! ## A332154.P9345639847471024935

`abs(A332120(n)-A332174(n))`
-/

namespace A332154.P9345639847471024935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332120 n - A332174 n|

end

end A332154.P9345639847471024935

namespace A332154

/-- `abs(A332120(n)-A332174(n))` -/
def P9345639847471024935.Spec : Prop :=
  ∀ n, P9345639847471024935.a n = A332154 n

end A332154

/-! ## A332154.P11943719532620001693

`abs(A332121(n)-A332175(n))`
-/

namespace A332154.P11943719532620001693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332121 n - A332175 n|

end

end A332154.P11943719532620001693

namespace A332154

/-- `abs(A332121(n)-A332175(n))` -/
def P11943719532620001693.Spec : Prop :=
  ∀ n, P11943719532620001693.a n = A332154 n

end A332154

/-! ## A332154.P3358194619942354392

`abs(A332135(n)-A332189(n))`
-/

namespace A332154.P3358194619942354392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332135 n - A332189 n|

end

end A332154.P3358194619942354392

namespace A332154

/-- `abs(A332135(n)-A332189(n))` -/
def P3358194619942354392.Spec : Prop :=
  ∀ n, P3358194619942354392.a n = A332154 n

end A332154

/-! ## A332154.P6936940623762280167

`(A181965(n)+A138148(n))/2`
-/

namespace A332154.P6936940623762280167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181965 n + A138148 n : ℚ) / 2

end

end A332154.P6936940623762280167

namespace A332154

/-- `(A181965(n)+A138148(n))/2` -/
def P6936940623762280167.Spec : Prop :=
  ∀ n, P6936940623762280167.a n = (A332154 n : ℚ)

end A332154

/-! ## A332154.P1937675720366128656

`(A332158(n)+A332150(n))/2`
-/

namespace A332154.P1937675720366128656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332158 n + A332150 n : ℚ) / 2

end

end A332154.P1937675720366128656

namespace A332154

/-- `(A332158(n)+A332150(n))/2` -/
def P1937675720366128656.Spec : Prop :=
  ∀ n, P1937675720366128656.a n = (A332154 n : ℚ)

end A332154

/-!
# A332155: Numbers with palindromic Morse code A060109.

The programs for A332155, there is no canonical definition to state claims against.
-/

/-! ## A332155.P13881138871879333688

`eq[n, A055120(A004086(n))]`
-/

namespace A332155.P13881138871879333688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332155.P13881138871879333688

/-! ## A332155.P11272916370223078782

`∩[A227793(n+1), A185440(n)]`
-/

namespace A332155.P11272916370223078782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332155.P11272916370223078782

/-! ## A332155.P12392215641402674803

`eq[A004086(A056964(n)), A136400(n)]`
-/

namespace A332155.P12392215641402674803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332155.P12392215641402674803

/-! ## A332155.P6620807399526180284

`eq[A061601(A055120(n)), A267193(n)]`
-/

namespace A332155.P6620807399526180284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A055120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332155.P6620807399526180284

/-! ## A332155.P7841961978771310256

`eq[A004086(A004086(n)+n), A136400(n)]`
-/

namespace A332155.P7841961978771310256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332155.P7841961978771310256

/-!
# A332156: a(n) = 5*(10^(2*n+1)-1)/9 + 10^n.

The programs for A332156, the canonical program `A332156.P10073776197927255795` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332156 has offset 0).

The definition of A332156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332156.P10073776197927255795

`5*(10^(2*n+1)-1)/9+10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332156

/-- `5*(10^(2*n+1)-1)/9+10^n` -/
def P10073776197927255795.Spec : Prop :=
  ∀ n, P10073776197927255795.a n = (A332156 n : ℚ)

end A332156

/-! ## A332156.P3831925479478848364

`abs(A332120(n)-A332176(n))`
-/

namespace A332156.P3831925479478848364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332120 n - A332176 n|

end

end A332156.P3831925479478848364

namespace A332156

/-- `abs(A332120(n)-A332176(n))` -/
def P3831925479478848364.Spec : Prop :=
  ∀ n, P3831925479478848364.a n = A332156 n

end A332156

/-! ## A332156.P11769240161410753877

`abs(A332123(n)-A332179(n))`
-/

namespace A332156.P11769240161410753877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332123 n - A332179 n|

end

end A332156.P11769240161410753877

namespace A332156

/-- `abs(A332123(n)-A332179(n))` -/
def P11769240161410753877.Spec : Prop :=
  ∀ n, P11769240161410753877.a n = A332156 n

end A332156

/-! ## A332156.P17766792540230002298

`abs(A332140(n)-A332196(n))`
-/

namespace A332156.P17766792540230002298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332140 n - A332196 n|

end

end A332156.P17766792540230002298

namespace A332156

/-- `abs(A332140(n)-A332196(n))` -/
def P17766792540230002298.Spec : Prop :=
  ∀ n, P17766792540230002298.a n = A332156 n

end A332156

/-! ## A332156.P265355586783591563

`(A332158(n)+A332154(n))/2`
-/

namespace A332156.P265355586783591563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332158 n + A332154 n : ℚ) / 2

end

end A332156.P265355586783591563

namespace A332156

/-- `(A332158(n)+A332154(n))/2` -/
def P265355586783591563.Spec : Prop :=
  ∀ n, P265355586783591563.a n = (A332156 n : ℚ)

end A332156

/-! ## A332156.P17427577351825219623

`(A332178(n)+A332134(n))/2`
-/

namespace A332156.P17427577351825219623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332178 n + A332134 n : ℚ) / 2

end

end A332156.P17427577351825219623

namespace A332156

/-- `(A332178(n)+A332134(n))/2` -/
def P17427577351825219623.Spec : Prop :=
  ∀ n, P17427577351825219623.a n = (A332156 n : ℚ)

end A332156

/-! ## A332156.P5169818613144223955

`(A332194(n)+A332118(n))/2`
-/

namespace A332156.P5169818613144223955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332194 n + A332118 n : ℚ) / 2

end

end A332156.P5169818613144223955

namespace A332156

/-- `(A332194(n)+A332118(n))/2` -/
def P5169818613144223955.Spec : Prop :=
  ∀ n, P5169818613144223955.a n = (A332156 n : ℚ)

end A332156

/-! ## A332156.P393389631452182244

`(A332196(n)+A332116(n))/2`
-/

namespace A332156.P393389631452182244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332196 n + A332116 n : ℚ) / 2

end

end A332156.P393389631452182244

namespace A332156

/-- `(A332196(n)+A332116(n))/2` -/
def P393389631452182244.Spec : Prop :=
  ∀ n, P393389631452182244.a n = (A332156 n : ℚ)

end A332156

/-!
# A332157: a(n) = 5*(10^(2*n+1)-1)/9 + 2*10^n.

The programs for A332157, the canonical program `A332157.P1024473716503056447` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332157 has offset 0).

The definition of A332157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332157.P1024473716503056447

`5*(10^(2*n+1)-1)/9+2*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332157

/-- `5*(10^(2*n+1)-1)/9+2*10^n` -/
def P1024473716503056447.Spec : Prop :=
  ∀ n, P1024473716503056447.a n = (A332157 n : ℚ)

end A332157

/-! ## A332157.P1133773803102477845

`abs(10^n-A332158(n))`
-/

namespace A332157.P1133773803102477845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332158 n|

end

end A332157.P1133773803102477845

namespace A332157

/-- `abs(10^n-A332158(n))` -/
def P1133773803102477845.Spec : Prop :=
  ∀ n, P1133773803102477845.a n = A332157 n

end A332157

/-! ## A332157.P2061388277713105438

`abs(floor(10^(2*n+1)/9)-A332168(n))`
-/

namespace A332157.P2061388277713105438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A332168 n|

end

end A332157.P2061388277713105438

namespace A332157

/-- `abs(floor(10^(2*n+1)/9)-A332168(n))` -/
def P2061388277713105438.Spec : Prop :=
  ∀ n, P2061388277713105438.a n = A332157 n

end A332157

/-! ## A332157.P11106383324681406542

`abs((4*(10*(10^n)²-1)/9-2*10^n)/2-A332178(n))`
-/

namespace A332157.P11106383324681406542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (2 * 10 ^ n : ℚ)) / 2 - (A332178 n : ℚ)|

end

end A332157.P11106383324681406542

namespace A332157

/-- `abs((4*(10*(10^n)²-1)/9-2*10^n)/2-A332178(n))` -/
def P11106383324681406542.Spec : Prop :=
  ∀ n, P11106383324681406542.a n = (A332157 n : ℚ)

end A332157

/-! ## A332157.P17495976890616179451

`abs(A332112(n)-A332169(n))`
-/

namespace A332157.P17495976890616179451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332112 n - A332169 n|

end

end A332157.P17495976890616179451

namespace A332157

/-- `abs(A332112(n)-A332169(n))` -/
def P17495976890616179451.Spec : Prop :=
  ∀ n, P17495976890616179451.a n = A332157 n

end A332157

/-! ## A332157.P14960621119201256194

`abs(A332132(n)-A332189(n))`
-/

namespace A332157.P14960621119201256194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332132 n - A332189 n|

end

end A332157.P14960621119201256194

namespace A332157

/-- `abs(A332132(n)-A332189(n))` -/
def P14960621119201256194.Spec : Prop :=
  ∀ n, P14960621119201256194.a n = A332157 n

end A332157

/-! ## A332157.P1862197714430719454

`(A332158(n)+A332156(n))/2`
-/

namespace A332157.P1862197714430719454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332158 n + A332156 n : ℚ) / 2

end

end A332157.P1862197714430719454

namespace A332157

/-- `(A332158(n)+A332156(n))/2` -/
def P1862197714430719454.Spec : Prop :=
  ∀ n, P1862197714430719454.a n = (A332157 n : ℚ)

end A332157

/-! ## A332157.P10428735469532364622

`(2*A332158(n))%A332159(n)`
-/

namespace A332157.P10428735469532364622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A332158 n) (A332159 n)

end

end A332157.P10428735469532364622

namespace A332157

/-- `(2*A332158(n))%A332159(n)` -/
def P10428735469532364622.Spec : Prop :=
  ∀ n, P10428735469532364622.a n = A332157 n

end A332157

/-! ## A332157.P4937967658256167740

`abs(Δ[A002276(n)]-A332159(n))`
-/

namespace A332157.P4937967658256167740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A332159 n|

end

end A332157.P4937967658256167740

namespace A332157

/-- `abs(Δ[A002276(n)]-A332159(n))` -/
def P4937967658256167740.Spec : Prop :=
  ∀ n, P4937967658256167740.a n = A332157 n

end A332157

/-! ## A332157.P15493075488559322769

`(A332159(n)+A332156(n))%A332158(n)`
-/

namespace A332157.P15493075488559322769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332159 n + A332156 n) (A332158 n)

end

end A332157.P15493075488559322769

namespace A332157

/-- `(A332159(n)+A332156(n))%A332158(n)` -/
def P15493075488559322769.Spec : Prop :=
  ∀ n, P15493075488559322769.a n = A332157 n

end A332157

/-!
# A332158: a(n) = 5*(10^(2*n+1)-1)/9 + 3*10^n.

The programs for A332158, the canonical program `A332158.P8905680369445695170` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332158 has offset 0).

The definition of A332158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332158.P8905680369445695170

`5*(10^(2*n+1)-1)/9+3*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332158

/-- `5*(10^(2*n+1)-1)/9+3*10^n` -/
def P8905680369445695170.Spec : Prop :=
  ∀ n, P8905680369445695170.a n = (A332158 n : ℚ)

end A332158

/-! ## A332158.P5210331671730658024

`abs(floor(10*(10^n)²/9)-A332169(n))`
-/

namespace A332158.P5210331671730658024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - A332169 n|

end

end A332158.P5210331671730658024

namespace A332158

/-- `abs(floor(10*(10^n)²/9)-A332169(n))` -/
def P5210331671730658024.Spec : Prop :=
  ∀ n, P5210331671730658024.a n = A332158 n

end A332158

/-! ## A332158.P17473395974366872347

`abs(A011557(n)-A332159(n))`
-/

namespace A332158.P17473395974366872347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332159 n|

end

end A332158.P17473395974366872347

namespace A332158

/-- `abs(A011557(n)-A332159(n))` -/
def P17473395974366872347.Spec : Prop :=
  ∀ n, P17473395974366872347.a n = A332158 n

end A332158

/-! ## A332158.P12483789405984312800

`abs(A332120(n)-A332178(n))`
-/

namespace A332158.P12483789405984312800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332120 n - A332178 n|

end

end A332158.P12483789405984312800

namespace A332158

/-- `abs(A332120(n)-A332178(n))` -/
def P12483789405984312800.Spec : Prop :=
  ∀ n, P12483789405984312800.a n = A332158 n

end A332158

/-! ## A332158.P16819268652240071622

`abs(A332121(n)-A332179(n))`
-/

namespace A332158.P16819268652240071622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332121 n - A332179 n|

end

end A332158.P16819268652240071622

namespace A332158

/-- `abs(A332121(n)-A332179(n))` -/
def P16819268652240071622.Spec : Prop :=
  ∀ n, P16819268652240071622.a n = A332158 n

end A332158

/-!
# A332159: a(n) = 5*(10^(2*n+1)-1)/9 + 4*10^n.

The programs for A332159, the canonical program `A332159.P10872267916930573026` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332159 has offset 0).

The definition of A332159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332159.P10872267916930573026

`5*(10^(2*n+1)-1)/9+4*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332159

/-- `5*(10^(2*n+1)-1)/9+4*10^n` -/
def P10872267916930573026.Spec : Prop :=
  ∀ n, P10872267916930573026.a n = (A332159 n : ℚ)

end A332159

/-! ## A332159.P12904748277979964776

`abs(floor(10*(10^n)²/9)-10^n-A332169(n))`
-/

namespace A332159.P12904748277979964776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - (10 ^ n : ℤ) - A332169 n|

end

end A332159.P12904748277979964776

namespace A332159

/-- `abs(floor(10*(10^n)²/9)-10^n-A332169(n))` -/
def P12904748277979964776.Spec : Prop :=
  ∀ n, P12904748277979964776.a n = A332159 n

end A332159

/-! ## A332159.P16996812780249855300

`abs(A332130(n)-A332189(n))`
-/

namespace A332159.P16996812780249855300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332130 n - A332189 n|

end

end A332159.P16996812780249855300

namespace A332159

/-- `abs(A332130(n)-A332189(n))` -/
def P16996812780249855300.Spec : Prop :=
  ∀ n, P16996812780249855300.a n = A332159 n

end A332159

/-! ## A332159.P13147504215276404422

`(A332169(n)+A332149(n))/2`
-/

namespace A332159.P13147504215276404422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332169 n + A332149 n : ℚ) / 2

end

end A332159.P13147504215276404422

namespace A332159

/-- `(A332169(n)+A332149(n))/2` -/
def P13147504215276404422.Spec : Prop :=
  ∀ n, P13147504215276404422.a n = (A332159 n : ℚ)

end A332159

/-! ## A332159.P12078347552833914468

`(A332189(n)+A332129(n))/2`
-/

namespace A332159.P12078347552833914468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332189 n + A332129 n : ℚ) / 2

end

end A332159.P12078347552833914468

namespace A332159

/-- `(A332189(n)+A332129(n))/2` -/
def P12078347552833914468.Spec : Prop :=
  ∀ n, P12078347552833914468.a n = (A332159 n : ℚ)

end A332159

/-! ## A332159.P171548340685349596

`or(1, A332149(n)+A138148(n))`
-/

namespace A332159.P171548340685349596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A332149 n + A138148 n)

end

end A332159.P171548340685349596

namespace A332159

/-- `or(1, A332149(n)+A138148(n))` -/
def P171548340685349596.Spec : Prop :=
  ∀ n, P171548340685349596.a n = A332159 n

end A332159

/-! ## A332159.P3565968172464500964

`abs(A332154(n)+Δ[A002279(n)])`
-/

namespace A332159.P3565968172464500964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332154 n + (f1 (n + 1) - f1 n)|

end

end A332159.P3565968172464500964

namespace A332159

/-- `abs(A332154(n)+Δ[A002279(n)])` -/
def P3565968172464500964.Spec : Prop :=
  ∀ n, P3565968172464500964.a n = A332159 n

end A332159

/-! ## A332159.P1306402099042290935

`abs(A332158(n)+Δ[A002275(n)])`
-/

namespace A332159.P1306402099042290935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332158 n + (f1 (n + 1) - f1 n)|

end

end A332159.P1306402099042290935

namespace A332159

/-- `abs(A332158(n)+Δ[A002275(n)])` -/
def P1306402099042290935.Spec : Prop :=
  ∀ n, P1306402099042290935.a n = A332159 n

end A332159

/-! ## A332159.P8589227644291081345

`abs(A332150(n)+Δ[A011557(n)])`
-/

namespace A332159.P8589227644291081345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332150 n + (f1 (n + 1) - f1 n)|

end

end A332159.P8589227644291081345

namespace A332159

/-- `abs(A332150(n)+Δ[A011557(n)])` -/
def P8589227644291081345.Spec : Prop :=
  ∀ n, P8589227644291081345.a n = A332159 n

end A332159

/-!
# A332160: a(n) = 6*(10^(2*n+1) - 1)/9 - 6*10^n.

The programs for A332160, the canonical program `A332160.P7900667285717077086` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332160 has offset 0).

The definition of A332160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332160.P7900667285717077086

`6*((10^(2*n+1)-1)/9-10^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332160

/-- `6*((10^(2*n+1)-1)/9-10^n)` -/
def P7900667285717077086.Spec : Prop :=
  ∀ n, P7900667285717077086.a n = (A332160 n : ℚ)

end A332160

/-! ## A332160.P5599865265153973696

`6*(10^(2*n+1)-1)/9-6*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332160.P5599865265153973696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (6 * 10 ^ n : ℚ)

end

end A332160.P5599865265153973696

namespace A332160

/-- `6*(10^(2*n+1)-1)/9-6*10^n` -/
def P5599865265153973696.Spec : Prop :=
  ∀ n, P5599865265153973696.a n = (A332160 n : ℚ)

end A332160

/-! ## A332160.P13993195152468345012

`abs(6*(5*(10*(10^n)²-1)/9-4*10^n)%(4*(10*(10^n)²-1)/9-3*10^n))`
-/

namespace A332160.P13993195152468345012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 * Int.tmod (SequenceMachineLib.roundAway (5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (4 * 10 ^ n : ℚ))) (SequenceMachineLib.roundAway (4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ)))|

end

end A332160.P13993195152468345012

namespace A332160

/-- `abs(6*(5*(10*(10^n)²-1)/9-4*10^n)%(4*(10*(10^n)²-1)/9-3*10^n))` -/
def P13993195152468345012.Spec : Prop :=
  ∀ n, P13993195152468345012.a n = A332160 n

end A332160

/-! ## A332160.P1610786433880337447

`9*A332120(n)/3`
-/

namespace A332160.P1610786433880337447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A332120 n : ℚ) / 3

end

end A332160.P1610786433880337447

namespace A332160

/-- `9*A332120(n)/3` -/
def P1610786433880337447.Spec : Prop :=
  ∀ n, P1610786433880337447.a n = (A332160 n : ℚ)

end A332160

/-! ## A332160.P1726416136250497097

`floor(2*A332190(n)/3)`
-/

namespace A332160.P1726416136250497097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A332190 n : ℚ) / 3)⌋

end

end A332160.P1726416136250497097

namespace A332160

/-- `floor(2*A332190(n)/3)` -/
def P1726416136250497097.Spec : Prop :=
  ∀ n, P1726416136250497097.a n = A332160 n

end A332160

/-!
# A332161: a(n) = 6*(10^(2*n+1)-1)/9 - 5*10^n.

The programs for A332161, the canonical program `A332161.P16571938051671117382` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332161 has offset 0).

The definition of A332161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332161.P16571938051671117382

`6*(10^(2*n+1)-1)/9-5*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332161

/-- `6*(10^(2*n+1)-1)/9-5*10^n` -/
def P16571938051671117382.Spec : Prop :=
  ∀ n, P16571938051671117382.a n = (A332161 n : ℚ)

end A332161

/-! ## A332161.P716470296942608637

`abs(A100706(n)-A332172(n))`
-/

namespace A332161.P716470296942608637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100706 n - A332172 n|

end

end A332161.P716470296942608637

namespace A332161

/-- `abs(A100706(n)-A332172(n))` -/
def P716470296942608637.Spec : Prop :=
  ∀ n, P716470296942608637.a n = A332161 n

end A332161

/-! ## A332161.P7653911229080703429

`abs(A332113(n)-A332174(n))`
-/

namespace A332161.P7653911229080703429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332113 n - A332174 n|

end

end A332161.P7653911229080703429

namespace A332161

/-- `abs(A332113(n)-A332174(n))` -/
def P7653911229080703429.Spec : Prop :=
  ∀ n, P7653911229080703429.a n = A332161 n

end A332161

/-! ## A332161.P13182346403996178733

`abs(A332114(n)-A332175(n))`
-/

namespace A332161.P13182346403996178733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332114 n - A332175 n|

end

end A332161.P13182346403996178733

namespace A332161

/-- `abs(A332114(n)-A332175(n))` -/
def P13182346403996178733.Spec : Prop :=
  ∀ n, P13182346403996178733.a n = A332161 n

end A332161

/-! ## A332161.P2412428975550631893

`floor(A332151(n)+A332130(n)/3)`
-/

namespace A332161.P2412428975550631893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332151 n : ℚ) + (A332130 n : ℚ) / 3⌋

end

end A332161.P2412428975550631893

namespace A332161

/-- `floor(A332151(n)+A332130(n)/3)` -/
def P2412428975550631893.Spec : Prop :=
  ∀ n, P2412428975550631893.a n = A332161 n

end A332161

/-!
# A332162: a(n) = 6*(10^(2*n+1)-1)/9 - 4*10^n.

The programs for A332162, the canonical program `A332162.P16025973414823091023` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332162 has offset 0).

The definition of A332162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332162.P5660329235436314216

`6*(10^(2*n+1)-1)/9-4*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332162.P5660329235436314216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (4 * 10 ^ n : ℚ)

end

end A332162.P5660329235436314216

namespace A332162

/-- `6*(10^(2*n+1)-1)/9-4*10^n` -/
def P5660329235436314216.Spec : Prop :=
  ∀ n, P5660329235436314216.a n = (A332162 n : ℚ)

end A332162

/-! ## A332162.P16025973414823091023

`2*A332131(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A332162

/-- `2*A332131(n)` -/
def P16025973414823091023.Spec : Prop :=
  ∀ n, P16025973414823091023.a n = A332162 n

theorem P16025973414823091023.correct : P16025973414823091023.Spec := by
  intro n
  simp only [A332162]

end A332162

/-! ## A332162.P2269111674834423774

`2/3*A332193(n)`
-/

namespace A332162.P2269111674834423774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A332193 n : ℚ)

end

end A332162.P2269111674834423774

namespace A332162

/-- `2/3*A332193(n)` -/
def P2269111674834423774.Spec : Prop :=
  ∀ n, P2269111674834423774.a n = (A332162 n : ℚ)

end A332162

/-! ## A332162.P13394326623546778613

`abs(A011557(n)-A332163(n))`
-/

namespace A332162.P13394326623546778613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332163 n|

end

end A332162.P13394326623546778613

namespace A332162

/-- `abs(A011557(n)-A332163(n))` -/
def P13394326623546778613.Spec : Prop :=
  ∀ n, P13394326623546778613.a n = A332162 n

end A332162

/-! ## A332162.P14767144376561407669

`2*(A332130(n)+A011557(n))`
-/

namespace A332162.P14767144376561407669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332130 n + A011557 n)

end

end A332162.P14767144376561407669

namespace A332162

/-- `2*(A332130(n)+A011557(n))` -/
def P14767144376561407669.Spec : Prop :=
  ∀ n, P14767144376561407669.a n = A332162 n

end A332162

/-! ## A332162.P7943984074526404845

`2*(A332132(n)-A011557(n))`
-/

namespace A332162.P7943984074526404845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332132 n - A011557 n)

end

end A332162.P7943984074526404845

namespace A332162

/-- `2*(A332132(n)-A011557(n))` -/
def P7943984074526404845.Spec : Prop :=
  ∀ n, P7943984074526404845.a n = A332162 n

end A332162

/-! ## A332162.P17743954794124620698

`2*(A332148(n)-A332117(n))`
-/

namespace A332162.P17743954794124620698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332148 n - A332117 n)

end

end A332162.P17743954794124620698

namespace A332162

/-- `2*(A332148(n)-A332117(n))` -/
def P17743954794124620698.Spec : Prop :=
  ∀ n, P17743954794124620698.a n = A332162 n

end A332162

/-! ## A332162.P7026015603174494999

`2*(A332149(n)-A332118(n))`
-/

namespace A332162.P7026015603174494999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332149 n - A332118 n)

end

end A332162.P7026015603174494999

namespace A332162

/-- `2*(A332149(n)-A332118(n))` -/
def P7026015603174494999.Spec : Prop :=
  ∀ n, P7026015603174494999.a n = A332162 n

end A332162

/-! ## A332162.P5853414262074946145

`(2*A332163(n))%A332164(n)`
-/

namespace A332162.P5853414262074946145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A332163 n) (A332164 n)

end

end A332162.P5853414262074946145

namespace A332162

/-- `(2*A332163(n))%A332164(n)` -/
def P5853414262074946145.Spec : Prop :=
  ∀ n, P5853414262074946145.a n = A332162 n

end A332162

/-! ## A332162.P2728047775884182769

`(2*A332165(n))%A332168(n)`
-/

namespace A332162.P2728047775884182769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A332165 n) (A332168 n)

end

end A332162.P2728047775884182769

namespace A332162

/-- `(2*A332165(n))%A332168(n)` -/
def P2728047775884182769.Spec : Prop :=
  ∀ n, P2728047775884182769.a n = A332162 n

end A332162

/-!
# A332163: a(n) = 6*(10^(2*n+1)-1)/9 - 3*10^n.

The programs for A332163, the canonical program `A332163.P16601454885459279620` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332163 has offset 0).

The definition of A332163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332163.P5257400413893555226

`6*(10^(2*n+1)-1)/9-3*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332163.P5257400413893555226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ)

end

end A332163.P5257400413893555226

namespace A332163

/-- `6*(10^(2*n+1)-1)/9-3*10^n` -/
def P5257400413893555226.Spec : Prop :=
  ∀ n, P5257400413893555226.a n = (A332163 n : ℚ)

end A332163

/-! ## A332163.P16601454885459279620

`3*A332121(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332163

/-- `3*A332121(n)` -/
def P16601454885459279620.Spec : Prop :=
  ∀ n, P16601454885459279620.a n = A332163 n

theorem P16601454885459279620.correct : P16601454885459279620.Spec := by
  intro n
  simp only [A332163]

end A332163

/-! ## A332163.P15724246953812699873

`3/2*A332142(n)`
-/

namespace A332163.P15724246953812699873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A332142 n : ℚ)

end

end A332163.P15724246953812699873

namespace A332163

/-- `3/2*A332142(n)` -/
def P15724246953812699873.Spec : Prop :=
  ∀ n, P15724246953812699873.a n = (A332163 n : ℚ)

end A332163

/-! ## A332163.P16720453104096584503

`3/4*A332184(n)`
-/

namespace A332163.P16720453104096584503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A332184 n : ℚ)

end

end A332163.P16720453104096584503

namespace A332163

/-- `3/4*A332184(n)` -/
def P16720453104096584503.Spec : Prop :=
  ∀ n, P16720453104096584503.a n = (A332163 n : ℚ)

end A332163

/-! ## A332163.P7975516934300233335

`3*(A332120(n)+A011557(n))`
-/

namespace A332163.P7975516934300233335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A332120 n + A011557 n)

end

end A332163.P7975516934300233335

namespace A332163

/-- `3*(A332120(n)+A011557(n))` -/
def P7975516934300233335.Spec : Prop :=
  ∀ n, P7975516934300233335.a n = A332163 n

end A332163

/-! ## A332163.P13728700597837168298

`3*(A332131(n)-A138148(n))`
-/

namespace A332163.P13728700597837168298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A332131 n - A138148 n)

end

end A332163.P13728700597837168298

namespace A332163

/-- `3*(A332131(n)-A138148(n))` -/
def P13728700597837168298.Spec : Prop :=
  ∀ n, P13728700597837168298.a n = A332163 n

end A332163

/-! ## A332163.P2581268568666426703

`(2*A332164(n))%A332165(n)`
-/

namespace A332163.P2581268568666426703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A332164 n) (A332165 n)

end

end A332163.P2581268568666426703

namespace A332163

/-- `(2*A332164(n))%A332165(n)` -/
def P2581268568666426703.Spec : Prop :=
  ∀ n, P2581268568666426703.a n = A332163 n

end A332163

/-! ## A332163.P7872513603891840332

`(2*A332165(n))%A332167(n)`
-/

namespace A332163.P7872513603891840332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A332165 n) (A332167 n)

end

end A332163.P7872513603891840332

namespace A332163

/-- `(2*A332165(n))%A332167(n)` -/
def P7872513603891840332.Spec : Prop :=
  ∀ n, P7872513603891840332.a n = A332163 n

end A332163

/-!
# A332164: a(n) = 6*(10^(2*n+1)-1)/9 - 2*10^n.

The programs for A332164, the canonical program `A332164.P10843297782638885530` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332164 has offset 0).

The definition of A332164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332164.P4061742191640882122

`6*(10^(2*n+1)-1)/9-2*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332164.P4061742191640882122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (2 * 10 ^ n : ℚ)

end

end A332164.P4061742191640882122

namespace A332164

/-- `6*(10^(2*n+1)-1)/9-2*10^n` -/
def P4061742191640882122.Spec : Prop :=
  ∀ n, P4061742191640882122.a n = (A332164 n : ℚ)

end A332164

/-! ## A332164.P10843297782638885530

`2*A332132(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332164

/-- `2*A332132(n)` -/
def P10843297782638885530.Spec : Prop :=
  ∀ n, P10843297782638885530.a n = A332164 n

theorem P10843297782638885530.correct : P10843297782638885530.Spec := by
  intro n
  simp only [A332164]

end A332164

/-! ## A332164.P2839134691710569331

`2/3*A332196(n)`
-/

namespace A332164.P2839134691710569331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A332196 n : ℚ)

end

end A332164.P2839134691710569331

namespace A332164

/-- `2/3*A332196(n)` -/
def P2839134691710569331.Spec : Prop :=
  ∀ n, P2839134691710569331.a n = (A332164 n : ℚ)

end A332164

/-! ## A332164.P14885316760227397393

`2*(A332131(n)+A011557(n))`
-/

namespace A332164.P14885316760227397393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332131 n + A011557 n)

end

end A332164.P14885316760227397393

namespace A332164

/-- `2*(A332131(n)+A011557(n))` -/
def P14885316760227397393.Spec : Prop :=
  ∀ n, P14885316760227397393.a n = A332164 n

end A332164

/-! ## A332164.P10500035427239760131

`2*(A332120(n)+A332112(n))`
-/

namespace A332164.P10500035427239760131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332120 n + A332112 n)

end

end A332164.P10500035427239760131

namespace A332164

/-- `2*(A332120(n)+A332112(n))` -/
def P10500035427239760131.Spec : Prop :=
  ∀ n, P10500035427239760131.a n = A332164 n

end A332164

/-! ## A332164.P5295790337296209325

`2*(A332153(n)-A332121(n))`
-/

namespace A332164.P5295790337296209325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332153 n - A332121 n)

end

end A332164.P5295790337296209325

namespace A332164

/-- `2*(A332153(n)-A332121(n))` -/
def P5295790337296209325.Spec : Prop :=
  ∀ n, P5295790337296209325.a n = A332164 n

end A332164

/-! ## A332164.P1885149363028275045

`(A332180(n)+A332148(n))/2`
-/

namespace A332164.P1885149363028275045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332180 n + A332148 n : ℚ) / 2

end

end A332164.P1885149363028275045

namespace A332164

/-- `(A332180(n)+A332148(n))/2` -/
def P1885149363028275045.Spec : Prop :=
  ∀ n, P1885149363028275045.a n = (A332164 n : ℚ)

end A332164

/-! ## A332164.P12146285804608276816

`2*(A332197(n)-A332165(n))`
-/

namespace A332164.P12146285804608276816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332197 n - A332165 n)

end

end A332164.P12146285804608276816

namespace A332164

/-- `2*(A332197(n)-A332165(n))` -/
def P12146285804608276816.Spec : Prop :=
  ∀ n, P12146285804608276816.a n = A332164 n

end A332164

/-!
# A332165: a(n) = 6*(10^(2*n+1)-1)/9 - 10^n.

The programs for A332165, the canonical program `A332165.P7990336384544167127` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332165 has offset 0).

The definition of A332165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332165.P7990336384544167127

`6*(10^(2*n+1)-1)/9-10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332165

/-- `6*(10^(2*n+1)-1)/9-10^n` -/
def P7990336384544167127.Spec : Prop :=
  ∀ n, P7990336384544167127.a n = (A332165 n : ℚ)

end A332165

/-! ## A332165.P15968163137873877897

`A199684(n)*A246057(n)`
-/

namespace A332165.P15968163137873877897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199684 n * A246057 n

end

end A332165.P15968163137873877897

namespace A332165

/-- `A199684(n)*A246057(n)` -/
def P15968163137873877897.Spec : Prop :=
  ∀ n, P15968163137873877897.a n = A332165 n

end A332165

/-! ## A332165.P8414442392259659122

`abs(A138148(n)-A332175(n))`
-/

namespace A332165.P8414442392259659122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138148 n - A332175 n|

end

end A332165.P8414442392259659122

namespace A332165

/-- `abs(A138148(n)-A332175(n))` -/
def P8414442392259659122.Spec : Prop :=
  ∀ n, P8414442392259659122.a n = A332165 n

end A332165

/-! ## A332165.P9514613447814227819

`abs(A332124(n)-A332189(n))`
-/

namespace A332165.P9514613447814227819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332124 n - A332189 n|

end

end A332165.P9514613447814227819

namespace A332165

/-- `abs(A332124(n)-A332189(n))` -/
def P9514613447814227819.Spec : Prop :=
  ∀ n, P9514613447814227819.a n = A332165 n

end A332165

/-! ## A332165.P13192154295586035425

`(A126109(n)-1)*A199684(n)`
-/

namespace A332165.P13192154295586035425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126109 n - 1) * A199684 n

end

end A332165.P13192154295586035425

namespace A332165

/-- `(A126109(n)-1)*A199684(n)` -/
def P13192154295586035425.Spec : Prop :=
  ∀ n, P13192154295586035425.a n = A332165 n

end A332165

/-! ## A332165.P18270008986546441369

`(A198970(n)+2)*A246057(n)`
-/

namespace A332165.P18270008986546441369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A198970 n + 2) * A246057 n

end

end A332165.P18270008986546441369

namespace A332165

/-- `(A198970(n)+2)*A246057(n)` -/
def P18270008986546441369.Spec : Prop :=
  ∀ n, P18270008986546441369.a n = A332165 n

end A332165

/-!
# A332166: Inverse permutation to A332144.

The programs for A332166, there is no canonical definition to state claims against.
-/

/-! ## A332166.P11665560504154318861

`lt[A342634(A263327(n)), 6]`
-/

namespace A332166.P11665560504154318861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342634 (A263327 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332166.P11665560504154318861

/-! ## A332166.P9972418173191939145

`∑[A213651(n)%A027889(n+1)]`
-/

namespace A332166.P9972418173191939145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213651 n) (A027889 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332166.P9972418173191939145

/-! ## A332166.P180445446655160272

`lt[A332144(n)², A180045(n+1)]`
-/

namespace A332166.P180445446655160272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332144 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332166.P180445446655160272

/-! ## A332166.P17235691721003819181

`lt[A000389(A332144(n)), A028871(n+1)]`
-/

namespace A332166.P17235691721003819181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A332144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332166.P17235691721003819181

/-! ## A332166.P7495743891395778914

`lt[A158780(A332144(n)), A003355(n+1)]`
-/

namespace A332166.P7495743891395778914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A332144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332166.P7495743891395778914

/-!
# A332167: a(n) = 6*(10^(2*n+1)-1)/9 + 10^n.

The programs for A332167, the canonical program `A332167.P10318323050089206164` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332167 has offset 0).

The definition of A332167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332167.P10318323050089206164

`6*(10^(2*n+1)-1)/9+10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332167

/-- `6*(10^(2*n+1)-1)/9+10^n` -/
def P10318323050089206164.Spec : Prop :=
  ∀ n, P10318323050089206164.a n = (A332167 n : ℚ)

end A332167

/-! ## A332167.P6733625495350257743

`floor(A350994(n)/2)`
-/

namespace A332167.P6733625495350257743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350994 n : ℚ) / 2⌋

end

end A332167.P6733625495350257743

namespace A332167

/-- `floor(A350994(n)/2)` -/
def P6733625495350257743.Spec : Prop :=
  ∀ n, P6733625495350257743.a n = A332167 n

end A332167

/-! ## A332167.P1517173679837993990

`abs(10^n-A332168(n))`
-/

namespace A332167.P1517173679837993990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332168 n|

end

end A332167.P1517173679837993990

namespace A332167

/-- `abs(10^n-A332168(n))` -/
def P1517173679837993990.Spec : Prop :=
  ∀ n, P1517173679837993990.a n = A332167 n

end A332167

/-! ## A332167.P2173306840123665690

`abs(floor(10^(2*n+1)/9)-A332178(n))`
-/

namespace A332167.P2173306840123665690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A332178 n|

end

end A332167.P2173306840123665690

namespace A332167

/-- `abs(floor(10^(2*n+1)/9)-A332178(n))` -/
def P2173306840123665690.Spec : Prop :=
  ∀ n, P2173306840123665690.a n = A332167 n

end A332167

/-! ## A332167.P4000999548825263045

`abs(A332112(n)-A332179(n))`
-/

namespace A332167.P4000999548825263045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332112 n - A332179 n|

end

end A332167.P4000999548825263045

namespace A332167

/-- `abs(A332112(n)-A332179(n))` -/
def P4000999548825263045.Spec : Prop :=
  ∀ n, P4000999548825263045.a n = A332167 n

end A332167

/-! ## A332167.P14570467170164778287

`(A332169(n)+A332165(n))/2`
-/

namespace A332167.P14570467170164778287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332169 n + A332165 n : ℚ) / 2

end

end A332167.P14570467170164778287

namespace A332167

/-- `(A332169(n)+A332165(n))/2` -/
def P14570467170164778287.Spec : Prop :=
  ∀ n, P14570467170164778287.a n = (A332167 n : ℚ)

end A332167

/-! ## A332167.P13302562511113475548

`(A332175(n)+A332159(n))/2`
-/

namespace A332167.P13302562511113475548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332175 n + A332159 n : ℚ) / 2

end

end A332167.P13302562511113475548

namespace A332167

/-- `(A332175(n)+A332159(n))/2` -/
def P13302562511113475548.Spec : Prop :=
  ∀ n, P13302562511113475548.a n = (A332167 n : ℚ)

end A332167

/-! ## A332167.P9483865841679609510

`(A332178(n)+A332156(n))/2`
-/

namespace A332167.P9483865841679609510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332178 n + A332156 n : ℚ) / 2

end

end A332167.P9483865841679609510

namespace A332167

/-- `(A332178(n)+A332156(n))/2` -/
def P9483865841679609510.Spec : Prop :=
  ∀ n, P9483865841679609510.a n = (A332167 n : ℚ)

end A332167

/-! ## A332167.P1205803542650997207

`(A332189(n)+A332145(n))/2`
-/

namespace A332167.P1205803542650997207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332189 n + A332145 n : ℚ) / 2

end

end A332167.P1205803542650997207

namespace A332167

/-- `(A332189(n)+A332145(n))/2` -/
def P1205803542650997207.Spec : Prop :=
  ∀ n, P1205803542650997207.a n = (A332167 n : ℚ)

end A332167

/-!
# A332168: a(n) = 6*(10^(2*n+1)-1)/9 + 2*10^n.

The programs for A332168, the canonical program `A332168.P10262815002557834672` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332168 has offset 0).

The definition of A332168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332168.P15171715064501102250

`6*(10^(2*n+1)-1)/9+2*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332168.P15171715064501102250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) + (2 * 10 ^ n : ℚ)

end

end A332168.P15171715064501102250

namespace A332168

/-- `6*(10^(2*n+1)-1)/9+2*10^n` -/
def P15171715064501102250.Spec : Prop :=
  ∀ n, P15171715064501102250.a n = (A332168 n : ℚ)

end A332168

/-! ## A332168.P10262815002557834672

`2*A332134(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332168

/-- `2*A332134(n)` -/
def P10262815002557834672.Spec : Prop :=
  ∀ n, P10262815002557834672.a n = A332168 n

theorem P10262815002557834672.correct : P10262815002557834672.Spec := by
  intro n
  simp only [A332168]

end A332168

/-! ## A332168.P4270164338043401583

`abs(10^n-A332169(n))`
-/

namespace A332168.P4270164338043401583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332169 n|

end

end A332168.P4270164338043401583

namespace A332168

/-- `abs(10^n-A332169(n))` -/
def P4270164338043401583.Spec : Prop :=
  ∀ n, P4270164338043401583.a n = A332168 n

end A332168

/-! ## A332168.P4709085244146526017

`abs(floor(10^(2*n+1)/9)-A332179(n))`
-/

namespace A332168.P4709085244146526017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A332179 n|

end

end A332168.P4709085244146526017

namespace A332168

/-- `abs(floor(10^(2*n+1)/9)-A332179(n))` -/
def P4709085244146526017.Spec : Prop :=
  ∀ n, P4709085244146526017.a n = A332168 n

end A332168

/-! ## A332168.P12253078717323589584

`A073553(n+1)*A198971(n)`
-/

namespace A332168.P12253078717323589584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073553 (n + 1) * A198971 n

end

end A332168.P12253078717323589584

namespace A332168

/-- `A073553(n+1)*A198971(n)` -/
def P12253078717323589584.Spec : Prop :=
  ∀ n, P12253078717323589584.a n = A332168 n

end A332168

/-! ## A332168.P14489933375177516344

`2*(A332124(n)+A138148(n))`
-/

namespace A332168.P14489933375177516344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332124 n + A138148 n)

end

end A332168.P14489933375177516344

namespace A332168

/-- `2*(A332124(n)+A138148(n))` -/
def P14489933375177516344.Spec : Prop :=
  ∀ n, P14489933375177516344.a n = A332168 n

end A332168

/-!
# A332169: a(n) = 6*(10^(2*n+1)-1)/9 + 3*10^n.

The programs for A332169, the canonical program `A332169.P17019299661943486869` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332169 has offset 0).

The definition of A332169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332169.P12488875873692957495

`6*(10^(2*n+1)-1)/9+3*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332169.P12488875873692957495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) + (3 * 10 ^ n : ℚ)

end

end A332169.P12488875873692957495

namespace A332169

/-- `6*(10^(2*n+1)-1)/9+3*10^n` -/
def P12488875873692957495.Spec : Prop :=
  ∀ n, P12488875873692957495.a n = (A332169 n : ℚ)

end A332169

/-! ## A332169.P17019299661943486869

`3*A332123(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332169

/-- `3*A332123(n)` -/
def P17019299661943486869.Spec : Prop :=
  ∀ n, P17019299661943486869.a n = A332169 n

theorem P17019299661943486869.correct : P17019299661943486869.Spec := by
  intro n
  simp only [A332169]

end A332169

/-! ## A332169.P15450656261504340884

`3/2*A332146(n)`
-/

namespace A332169.P15450656261504340884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A332146 n : ℚ)

end

end A332169.P15450656261504340884

namespace A332169

/-- `3/2*A332146(n)` -/
def P15450656261504340884.Spec : Prop :=
  ∀ n, P15450656261504340884.a n = (A332169 n : ℚ)

end A332169

/-! ## A332169.P7434437996436054688

`abs(A332120(n)-A332189(n))`
-/

namespace A332169.P7434437996436054688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332120 n - A332189 n|

end

end A332169.P7434437996436054688

namespace A332169

/-- `abs(A332120(n)-A332189(n))` -/
def P7434437996436054688.Spec : Prop :=
  ∀ n, P7434437996436054688.a n = A332169 n

end A332169

/-! ## A332169.P16942666484366892561

`3*(A332113(n)+A138148(n))`
-/

namespace A332169.P16942666484366892561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A332113 n + A138148 n)

end

end A332169.P16942666484366892561

namespace A332169

/-- `3*(A332113(n)+A138148(n))` -/
def P16942666484366892561.Spec : Prop :=
  ∀ n, P16942666484366892561.a n = A332169 n

end A332169

/-! ## A332169.P13512202126502131464

`(A332189(n)+A332149(n))/2`
-/

namespace A332169.P13512202126502131464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332189 n + A332149 n : ℚ) / 2

end

end A332169.P13512202126502131464

namespace A332169

/-- `(A332189(n)+A332149(n))/2` -/
def P13512202126502131464.Spec : Prop :=
  ∀ n, P13512202126502131464.a n = (A332169 n : ℚ)

end A332169

/-! ## A332169.P17923144562954156348

`lcm(3, A332168(n)+A011557(n))`
-/

namespace A332169.P17923144562954156348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A332168 n + A011557 n)

end

end A332169.P17923144562954156348

namespace A332169

/-- `lcm(3, A332168(n)+A011557(n))` -/
def P17923144562954156348.Spec : Prop :=
  ∀ n, (P17923144562954156348.a n : ℤ) = A332169 n

end A332169

/-!
# A332170: a(n) = 7*(10^(2n+1)-1)/9 - 7*10^n.

The programs for A332170, the canonical program `A332170.P8636327312248947799` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332170 has offset 0).

The definition of A332170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332170.P8016042437174938723

`7*(10^(2*n+1)-1)/9-7*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332170.P8016042437174938723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (7 * 10 ^ n : ℚ)

end

end A332170.P8016042437174938723

namespace A332170

/-- `7*(10^(2*n+1)-1)/9-7*10^n` -/
def P8016042437174938723.Spec : Prop :=
  ∀ n, P8016042437174938723.a n = (A332170 n : ℚ)

end A332170

/-! ## A332170.P8636327312248947799

`7*A138148(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332170

/-- `7*A138148(n)` -/
def P8636327312248947799.Spec : Prop :=
  ∀ n, P8636327312248947799.a n = A332170 n

theorem P8636327312248947799.correct : P8636327312248947799.Spec := by
  intro n
  simp only [A332170]

end A332170

/-! ## A332170.P14696288729731180000

`and(7*(floor(10^(2*n+1)/9)-10^n), -1)`
-/

namespace A332170.P14696288729731180000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (7 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ))) (-1)

end

end A332170.P14696288729731180000

namespace A332170

/-- `and(7*(floor(10^(2*n+1)/9)-10^n), -1)` -/
def P14696288729731180000.Spec : Prop :=
  ∀ n, P14696288729731180000.a n = A332170 n

end A332170

/-! ## A332170.P17595377193843939918

`7*A332120(n)/2`
-/

namespace A332170.P17595377193843939918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * A332120 n : ℚ) / 2

end

end A332170.P17595377193843939918

namespace A332170

/-- `7*A332120(n)/2` -/
def P17595377193843939918.Spec : Prop :=
  ∀ n, P17595377193843939918.a n = (A332170 n : ℚ)

end A332170

/-! ## A332170.P1413167259468823850

`7*A332130(n)/3`
-/

namespace A332170.P1413167259468823850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A332130 n : ℚ) / 3)

end

end A332170.P1413167259468823850

namespace A332170

/-- `7*A332130(n)/3` -/
def P1413167259468823850.Spec : Prop :=
  ∀ n, P1413167259468823850.a n = (A332170 n : ℚ)

end A332170

/-! ## A332170.P12193297873642991936

`A002281(n)*A062397(n+1)`
-/

namespace A332170.P12193297873642991936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n * A062397 (n + 1)

end

end A332170.P12193297873642991936

namespace A332170

/-- `A002281(n)*A062397(n+1)` -/
def P12193297873642991936.Spec : Prop :=
  ∀ n, P12193297873642991936.a n = A332170 n

end A332170

/-! ## A332170.P7351445646438713471

`A204094(n+1)/A204095(n+1)*A332180(n)`
-/

namespace A332170.P7351445646438713471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 (n + 1) : ℚ) / (A204095 (n + 1) : ℚ) * (A332180 n : ℚ)

end

end A332170.P7351445646438713471

namespace A332170

/-- `A204094(n+1)/A204095(n+1)*A332180(n)` -/
def P7351445646438713471.Spec : Prop :=
  ∀ n, P7351445646438713471.a n = (A332170 n : ℚ)

end A332170

/-!
# A332171: a(n) = 7*(10^(2n+1)-1)/9 - 6*10^n.

The programs for A332171, the canonical program `A332171.P664766736718143006` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332171 has offset 0).

The definition of A332171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332171.P664766736718143006

`7*(10^(2*n+1)-1)/9-6*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332171

/-- `7*(10^(2*n+1)-1)/9-6*10^n` -/
def P664766736718143006.Spec : Prop :=
  ∀ n, P664766736718143006.a n = (A332171 n : ℚ)

end A332171

/-! ## A332171.P2552556327425137699

`abs(A332161(n)+floor(10*(10^n)²/9)-10^n)`
-/

namespace A332171.P2552556327425137699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332161 n + (⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - (10 ^ n : ℤ))|

end

end A332171.P2552556327425137699

namespace A332171

/-- `abs(A332161(n)+floor(10*(10^n)²/9)-10^n)` -/
def P2552556327425137699.Spec : Prop :=
  ∀ n, P2552556327425137699.a n = A332171 n

end A332171

/-! ## A332171.P14001865976148653441

`floor(2*(4*(10*(10^n)²-1)/9-3*10^n)-A100706(n))`
-/

namespace A332171.P14001865976148653441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ)) - (A100706 n : ℚ)⌋

end

end A332171.P14001865976148653441

namespace A332171

/-- `floor(2*(4*(10*(10^n)²-1)/9-3*10^n)-A100706(n))` -/
def P14001865976148653441.Spec : Prop :=
  ∀ n, P14001865976148653441.a n = A332171 n

end A332171

/-! ## A332171.P5099394869362170562

`abs(A011557(n)-A332172(n))`
-/

namespace A332171.P5099394869362170562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332172 n|

end

end A332171.P5099394869362170562

namespace A332171

/-- `abs(A011557(n)-A332172(n))` -/
def P5099394869362170562.Spec : Prop :=
  ∀ n, P5099394869362170562.a n = A332171 n

end A332171

/-! ## A332171.P8858915657377881970

`abs(A138148(n)-A332181(n))`
-/

namespace A332171.P8858915657377881970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138148 n - A332181 n|

end

end A332171.P8858915657377881970

namespace A332171

/-- `abs(A138148(n)-A332181(n))` -/
def P8858915657377881970.Spec : Prop :=
  ∀ n, P8858915657377881970.a n = A332171 n

end A332171

/-!
# A332172: a(n) = 7*(10^(2*n+1) - 1)/9 - 5*10^n.

The programs for A332172, the canonical program `A332172.P4676679463160455545` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332172 has offset 0).

The definition of A332172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332172.P4676679463160455545

`7*(10^(2*n+1)-1)/9-5*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332172

/-- `7*(10^(2*n+1)-1)/9-5*10^n` -/
def P4676679463160455545.Spec : Prop :=
  ∀ n, P4676679463160455545.a n = (A332172 n : ℚ)

end A332172

/-! ## A332172.P11948585260072326252

`abs(A332121(n)-A332193(n))`
-/

namespace A332172.P11948585260072326252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332121 n - A332193 n|

end

end A332172.P11948585260072326252

namespace A332172

/-- `abs(A332121(n)-A332193(n))` -/
def P11948585260072326252.Spec : Prop :=
  ∀ n, P11948585260072326252.a n = A332172 n

end A332172

/-! ## A332172.P3656548482043410143

`abs(A332124(n)-A332196(n))`
-/

namespace A332172.P3656548482043410143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332124 n - A332196 n|

end

end A332172.P3656548482043410143

namespace A332172

/-- `abs(A332124(n)-A332196(n))` -/
def P3656548482043410143.Spec : Prop :=
  ∀ n, P3656548482043410143.a n = A332172 n

end A332172

/-! ## A332172.P17915526592059853088

`floor(A332162(n)+A332120(n)/2)`
-/

namespace A332172.P17915526592059853088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332162 n : ℚ) + (A332120 n : ℚ) / 2⌋

end

end A332172.P17915526592059853088

namespace A332172

/-- `floor(A332162(n)+A332120(n)/2)` -/
def P17915526592059853088.Spec : Prop :=
  ∀ n, P17915526592059853088.a n = A332172 n

end A332172

/-! ## A332172.P13845289074121108355

`floor(A332162(n)+A332140(n)/4)`
-/

namespace A332172.P13845289074121108355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332162 n : ℚ) + (A332140 n : ℚ) / 4⌋

end

end A332172.P13845289074121108355

namespace A332172

/-- `floor(A332162(n)+A332140(n)/4)` -/
def P13845289074121108355.Spec : Prop :=
  ∀ n, P13845289074121108355.a n = A332172 n

end A332172

/-! ## A332172.P17542124472493587143

`floor(A332162(n)+A332160(n)/6)`
-/

namespace A332172.P17542124472493587143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332162 n : ℚ) + (A332160 n : ℚ) / 6⌋

end

end A332172.P17542124472493587143

namespace A332172

/-- `floor(A332162(n)+A332160(n)/6)` -/
def P17542124472493587143.Spec : Prop :=
  ∀ n, P17542124472493587143.a n = A332172 n

end A332172

/-!
# A332173: a(n) = 7*(10^(2n+1)-1)/9 - 4*10^n.

The programs for A332173, the canonical program `A332173.P10151983742048030772` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332173 has offset 0).

The definition of A332173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332173.P10151983742048030772

`7*(10^(2*n+1)-1)/9-4*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332173

/-- `7*(10^(2*n+1)-1)/9-4*10^n` -/
def P10151983742048030772.Spec : Prop :=
  ∀ n, P10151983742048030772.a n = (A332173 n : ℚ)

end A332173

/-! ## A332173.P288447491214956045

`abs(10^(2*n+1)-5*10^n-1-A332121(n))`
-/

namespace A332173.P288447491214956045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ (2 * n + 1) : ℤ) - (5 * 10 ^ n : ℤ) - 1 - A332121 n|

end

end A332173.P288447491214956045

namespace A332173

/-- `abs(10^(2*n+1)-5*10^n-1-A332121(n))` -/
def P288447491214956045.Spec : Prop :=
  ∀ n, P288447491214956045.a n = A332173 n

end A332173

/-! ## A332173.P5240835070354115931

`abs(A332121(n)-A332194(n))`
-/

namespace A332173.P5240835070354115931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332121 n - A332194 n|

end

end A332173.P5240835070354115931

namespace A332173

/-- `abs(A332121(n)-A332194(n))` -/
def P5240835070354115931.Spec : Prop :=
  ∀ n, P5240835070354115931.a n = A332173 n

end A332173

/-! ## A332173.P4525563463104128111

`abs(A332120(n)/2-A332183(n))`
-/

namespace A332173.P4525563463104128111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332120 n : ℚ) / 2 - (A332183 n : ℚ)|

end

end A332173.P4525563463104128111

namespace A332173

/-- `abs(A332120(n)/2-A332183(n))` -/
def P4525563463104128111.Spec : Prop :=
  ∀ n, P4525563463104128111.a n = (A332173 n : ℚ)

end A332173

/-! ## A332173.P12852794827890185358

`abs(A332142(n)/2-A332194(n))`
-/

namespace A332173.P12852794827890185358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332142 n : ℚ) / 2 - (A332194 n : ℚ)|

end

end A332173.P12852794827890185358

namespace A332173

/-- `abs(A332142(n)/2-A332194(n))` -/
def P12852794827890185358.Spec : Prop :=
  ∀ n, P12852794827890185358.a n = (A332173 n : ℚ)

end A332173

/-! ## A332173.P2404669204666403875

`abs(A332163(n)/3-A332194(n))`
-/

namespace A332173.P2404669204666403875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332163 n : ℚ) / 3 - (A332194 n : ℚ)|

end

end A332173.P2404669204666403875

namespace A332173

/-- `abs(A332163(n)/3-A332194(n))` -/
def P2404669204666403875.Spec : Prop :=
  ∀ n, P2404669204666403875.a n = (A332173 n : ℚ)

end A332173

/-! ## A332173.P2252263200841229834

`abs(A332183(n)-A332190(n)/9)`
-/

namespace A332173.P2252263200841229834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332183 n : ℚ) - (A332190 n : ℚ) / 9|

end

end A332173.P2252263200841229834

namespace A332173

/-- `abs(A332183(n)-A332190(n)/9)` -/
def P2252263200841229834.Spec : Prop :=
  ∀ n, P2252263200841229834.a n = (A332173 n : ℚ)

end A332173

/-!
# A332174: a(n) = 7*(10^(2n+1)-1)/9 - 3*10^n.

The programs for A332174, the canonical program `A332174.P8743185299918701189` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332174 has offset 0).

The definition of A332174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332174.P8743185299918701189

`7*(10^(2*n+1)-1)/9-3*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332174

/-- `7*(10^(2*n+1)-1)/9-3*10^n` -/
def P8743185299918701189.Spec : Prop :=
  ∀ n, P8743185299918701189.a n = (A332174 n : ℚ)

end A332174

/-! ## A332174.P3584561735425061266

`abs(10^n-A332175(n))`
-/

namespace A332174.P3584561735425061266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332175 n|

end

end A332174.P3584561735425061266

namespace A332174

/-- `abs(10^n-A332175(n))` -/
def P3584561735425061266.Spec : Prop :=
  ∀ n, P3584561735425061266.a n = A332174 n

end A332174

/-! ## A332174.P8786333567503679191

`abs(A332120(n)/2-A332184(n))`
-/

namespace A332174.P8786333567503679191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332120 n : ℚ) / 2 - (A332184 n : ℚ)|

end

end A332174.P8786333567503679191

namespace A332174

/-- `abs(A332120(n)/2-A332184(n))` -/
def P8786333567503679191.Spec : Prop :=
  ∀ n, P8786333567503679191.a n = (A332174 n : ℚ)

end A332174

/-! ## A332174.P2829085281453360169

`abs(A332184(n)-A332190(n)/9)`
-/

namespace A332174.P2829085281453360169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332184 n : ℚ) - (A332190 n : ℚ) / 9|

end

end A332174.P2829085281453360169

namespace A332174

/-- `abs(A332184(n)-A332190(n)/9)` -/
def P2829085281453360169.Spec : Prop :=
  ∀ n, P2829085281453360169.a n = (A332174 n : ℚ)

end A332174

/-! ## A332174.P5659144042929837237

`floor(A332173(n)+sqrt(A000533(2*n)))`
-/

namespace A332174.P5659144042929837237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332173 n : ℝ) + Real.sqrt (A000533 (2 * n) : ℝ)⌋

end

end A332174.P5659144042929837237

namespace A332174

/-- `floor(A332173(n)+sqrt(A000533(2*n)))` -/
def P5659144042929837237.Spec : Prop :=
  ∀ n, P5659144042929837237.a n = A332174 n

end A332174

/-! ## A332174.P4567227351881288789

`abs(2*A332142(n)-A332120(n)/2)`
-/

namespace A332174.P4567227351881288789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * A332142 n : ℚ) - (A332120 n : ℚ) / 2|

end

end A332174.P4567227351881288789

namespace A332174

/-- `abs(2*A332142(n)-A332120(n)/2)` -/
def P4567227351881288789.Spec : Prop :=
  ∀ n, P4567227351881288789.a n = (A332174 n : ℚ)

end A332174

/-! ## A332174.P10187374145499451621

`abs(2*A332142(n)-A332190(n)/9)`
-/

namespace A332174.P10187374145499451621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * A332142 n : ℚ) - (A332190 n : ℚ) / 9|

end

end A332174.P10187374145499451621

namespace A332174

/-- `abs(2*A332142(n)-A332190(n)/9)` -/
def P10187374145499451621.Spec : Prop :=
  ∀ n, P10187374145499451621.a n = (A332174 n : ℚ)

end A332174

/-!
# A332175: a(n) = 7*(10^(2n+1)-1)/9 - 2*10^n.

The programs for A332175, the canonical program `A332175.P1050261342549855630` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332175 has offset 0).

The definition of A332175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332175.P1050261342549855630

`7*(10^(2*n+1)-1)/9-2*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332175

/-- `7*(10^(2*n+1)-1)/9-2*10^n` -/
def P1050261342549855630.Spec : Prop :=
  ∀ n, P1050261342549855630.a n = (A332175 n : ℚ)

end A332175

/-! ## A332175.P14826773701364908801

`abs(10^(2*n+1)-10^n-1-A332123(n))`
-/

namespace A332175.P14826773701364908801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ (2 * n + 1) : ℤ) - (10 ^ n : ℤ) - 1 - A332123 n|

end

end A332175.P14826773701364908801

namespace A332175

/-- `abs(10^(2*n+1)-10^n-1-A332123(n))` -/
def P14826773701364908801.Spec : Prop :=
  ∀ n, P14826773701364908801.a n = A332175 n

end A332175

/-! ## A332175.P18421813237475618270

`round(A332154(n)+A332142(n)/2)`
-/

namespace A332175.P18421813237475618270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332154 n : ℚ) + (A332142 n : ℚ) / 2)

end

end A332175.P18421813237475618270

namespace A332175

/-- `round(A332154(n)+A332142(n)/2)` -/
def P18421813237475618270.Spec : Prop :=
  ∀ n, P18421813237475618270.a n = A332175 n

end A332175

/-! ## A332175.P801979470075244125

`round(A332154(n)+A332163(n)/3)`
-/

namespace A332175.P801979470075244125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332154 n : ℚ) + (A332163 n : ℚ) / 3)

end

end A332175.P801979470075244125

namespace A332175

/-- `round(A332154(n)+A332163(n)/3)` -/
def P801979470075244125.Spec : Prop :=
  ∀ n, P801979470075244125.a n = A332175 n

end A332175

/-! ## A332175.P16067594332723811231

`round(A332165(n)+A332150(n)/5)`
-/

namespace A332175.P16067594332723811231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332165 n : ℚ) + (A332150 n : ℚ) / 5)

end

end A332175.P16067594332723811231

namespace A332175

/-- `round(A332165(n)+A332150(n)/5)` -/
def P16067594332723811231.Spec : Prop :=
  ∀ n, P16067594332723811231.a n = A332175 n

end A332175

/-!
# A332176: a(n) = 7*(10^(2*n+1) - 1)/9 - 10^n.

The programs for A332176, the canonical program `A332176.P11272254926589644546` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332176 has offset 0).

The definition of A332176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332176.P11272254926589644546

`7*(10^(2*n+1)-1)/9-10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332176

/-- `7*(10^(2*n+1)-1)/9-10^n` -/
def P11272254926589644546.Spec : Prop :=
  ∀ n, P11272254926589644546.a n = (A332176 n : ℚ)

end A332176

/-! ## A332176.P17405499543156947316

`abs(floor(10*(10^n)²/9)-10^n-A332186(n))`
-/

namespace A332176.P17405499543156947316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - (10 ^ n : ℤ) - A332186 n|

end

end A332176.P17405499543156947316

namespace A332176

/-- `abs(floor(10*(10^n)²/9)-10^n-A332186(n))` -/
def P17405499543156947316.Spec : Prop :=
  ∀ n, P17405499543156947316.a n = A332176 n

end A332176

/-! ## A332176.P9775577875534081103

`floor(A332146(n)+3/4*A332140(n))`
-/

namespace A332176.P9775577875534081103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332146 n : ℚ) + (3 : ℚ) / 4 * (A332140 n : ℚ)⌋

end

end A332176.P9775577875534081103

namespace A332176

/-- `floor(A332146(n)+3/4*A332140(n))` -/
def P9775577875534081103.Spec : Prop :=
  ∀ n, P9775577875534081103.a n = A332176 n

end A332176

/-! ## A332176.P6395045654290614314

`floor(A332146(n)+3/5*A332150(n))`
-/

namespace A332176.P6395045654290614314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332146 n : ℚ) + (3 : ℚ) / 5 * (A332150 n : ℚ)⌋

end

end A332176.P6395045654290614314

namespace A332176

/-- `floor(A332146(n)+3/5*A332150(n))` -/
def P6395045654290614314.Spec : Prop :=
  ∀ n, P6395045654290614314.a n = A332176 n

end A332176

/-!
# A332177: The digitsum of a(n) is the product of the digits of a(n+1).

The programs for A332177, there is no canonical definition to state claims against.
-/

/-! ## A332177.P17163696709596089225

`A098760(n)%A038837(A054582(n))`
-/

namespace A332177.P17163696709596089225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098760 n) (A038837 (A054582 n).toNat)

end

end A332177.P17163696709596089225

/-! ## A332177.P292866922888734714

`A107408(n)%A038837(A054582(n))`
-/

namespace A332177.P292866922888734714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107408 n) (A038837 (A054582 n).toNat)

end

end A332177.P292866922888734714

/-! ## A332177.P2288012251291108159

`A347520(A238880(n+1)+A326687(n)²)`
-/

namespace A332177.P2288012251291108159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A238880 (n + 1) + A326687 n ^ 2).toNat

end

end A332177.P2288012251291108159

/-! ## A332177.P4961984325777230415

`A107408(n)/A018252(A178688(n+1)!)`
-/

namespace A332177.P4961984325777230415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107408 n : ℚ) / (A018252 (Nat.factorial (A178688 (n + 1)).toNat) : ℚ)

end

end A332177.P4961984325777230415

/-!
# A332178: a(n) = 7*(10^(2*n+1) - 1)/9 + 10^n.

The programs for A332178, the canonical program `A332178.P13670239505251244163` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332178 has offset 0).

The definition of A332178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332178.P13670239505251244163

`7*(10^(2*n+1)-1)/9+10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332178

/-- `7*(10^(2*n+1)-1)/9+10^n` -/
def P13670239505251244163.Spec : Prop :=
  ∀ n, P13670239505251244163.a n = (A332178 n : ℚ)

end A332178

/-! ## A332178.P3025073920291040023

`abs(10^n-A332179(n))`
-/

namespace A332178.P3025073920291040023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332179 n|

end

end A332178.P3025073920291040023

namespace A332178

/-- `abs(10^n-A332179(n))` -/
def P3025073920291040023.Spec : Prop :=
  ∀ n, P3025073920291040023.a n = A332178 n

end A332178

/-! ## A332178.P15613300916249641360

`round(A332129(n)-A332115(n)+2/3*A332196(n))`
-/

namespace A332178.P15613300916249641360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332129 n - A332115 n : ℚ) + (2 : ℚ) / 3 * (A332196 n : ℚ))

end

end A332178.P15613300916249641360

namespace A332178

/-- `round(A332129(n)-A332115(n)+2/3*A332196(n))` -/
def P15613300916249641360.Spec : Prop :=
  ∀ n, P15613300916249641360.a n = A332178 n

end A332178

/-! ## A332178.P9568448792904526459

`round(A332139(n)-A332125(n)+2/3*A332196(n))`
-/

namespace A332178.P9568448792904526459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332139 n - A332125 n : ℚ) + (2 : ℚ) / 3 * (A332196 n : ℚ))

end

end A332178.P9568448792904526459

namespace A332178

/-- `round(A332139(n)-A332125(n)+2/3*A332196(n))` -/
def P9568448792904526459.Spec : Prop :=
  ∀ n, P9568448792904526459.a n = A332178 n

end A332178

/-!
# A332179: a(n) = 7*(10^(2*n+1) - 1)/9 + 2*10^n.

The programs for A332179, the canonical program `A332179.P423891560268202275` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332179 has offset 0).

The definition of A332179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332179.P423891560268202275

`7*(10^(2*n+1)-1)/9+2*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332179

/-- `7*(10^(2*n+1)-1)/9+2*10^n` -/
def P423891560268202275.Spec : Prop :=
  ∀ n, P423891560268202275.a n = (A332179 n : ℚ)

end A332179

/-! ## A332179.P13665488831135445384

`A285011(A092431(n+1))`
-/

namespace A332179.P13665488831135445384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (A092431 (n + 1)).toNat

end

end A332179.P13665488831135445384

namespace A332179

/-- `A285011(A092431(n+1))` -/
def P13665488831135445384.Spec : Prop :=
  ∀ n, P13665488831135445384.a n = A332179 n

end A332179

/-!
# A332180: a(n) = 8*(10^(2n+1)-1)/9 - 8*10^n.

The programs for A332180, the canonical program `A332180.P5665917449237434118` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332180 has offset 0).

The definition of A332180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332180.P5665917449237434118

`8*((10^(2*n+1)-1)/9-10^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332180

/-- `8*((10^(2*n+1)-1)/9-10^n)` -/
def P5665917449237434118.Spec : Prop :=
  ∀ n, P5665917449237434118.a n = (A332180 n : ℚ)

end A332180

/-! ## A332180.P9905580576985303009

`8*(10^(2*n+1)-1)/9-8*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332180.P9905580576985303009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (8 * 10 ^ n : ℚ)

end

end A332180.P9905580576985303009

namespace A332180

/-- `8*(10^(2*n+1)-1)/9-8*10^n` -/
def P9905580576985303009.Spec : Prop :=
  ∀ n, P9905580576985303009.a n = (A332180 n : ℚ)

end A332180

/-! ## A332180.P9561817731391435544

`lcm(8, A138148(n))`
-/

namespace A332180.P9561817731391435544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A138148 n)

end

end A332180.P9561817731391435544

namespace A332180

/-- `lcm(8, A138148(n))` -/
def P9561817731391435544.Spec : Prop :=
  ∀ n, (P9561817731391435544.a n : ℤ) = A332180 n

end A332180

/-! ## A332180.P6063126360159165915

`8*A332120(n)/2`
-/

namespace A332180.P6063126360159165915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A332120 n : ℚ) / 2

end

end A332180.P6063126360159165915

namespace A332180

/-- `8*A332120(n)/2` -/
def P6063126360159165915.Spec : Prop :=
  ∀ n, P6063126360159165915.a n = (A332180 n : ℚ)

end A332180

/-! ## A332180.P8922279944566175213

`A337842(3*n+n+1)`
-/

namespace A332180.P8922279944566175213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337842 (3 * n + (n + 1))

end

end A332180.P8922279944566175213

namespace A332180

/-- `A337842(3*n+n+1)` -/
def P8922279944566175213.Spec : Prop :=
  ∀ n, P8922279944566175213.a n = A332180 n

end A332180

/-!
# A332181: a(n) = 8*(10^(2n+1)-1)/9 - 7*10^n.

The programs for A332181, the canonical program `A332181.P14940150425165981456` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332181 has offset 0).

The definition of A332181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332181.P14940150425165981456

`8*(10^(2*n+1)-1)/9-7*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332181

/-- `8*(10^(2*n+1)-1)/9-7*10^n` -/
def P14940150425165981456.Spec : Prop :=
  ∀ n, P14940150425165981456.a n = (A332181 n : ℚ)

end A332181

/-! ## A332181.P103095975436873975

`abs(floor(10*(10^n)²/9)-A332192(n))`
-/

namespace A332181.P103095975436873975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - A332192 n|

end

end A332181.P103095975436873975

namespace A332181

/-- `abs(floor(10*(10^n)²/9)-A332192(n))` -/
def P103095975436873975.Spec : Prop :=
  ∀ n, P103095975436873975.a n = A332181 n

end A332181

/-! ## A332181.P4929935340424372155

`abs(A332191(n)-(floor(10*(10^n)²/9)-10^n))`
-/

namespace A332181.P4929935340424372155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332191 n - (⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - (10 ^ n : ℤ))|

end

end A332181.P4929935340424372155

namespace A332181

/-- `abs(A332191(n)-(floor(10*(10^n)²/9)-10^n))` -/
def P4929935340424372155.Spec : Prop :=
  ∀ n, P4929935340424372155.a n = A332181 n

end A332181

/-! ## A332181.P6129056965908052169

`abs(A332182(n)-A011557(n))`
-/

namespace A332181.P6129056965908052169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332182 n - A011557 n|

end

end A332181.P6129056965908052169

namespace A332181

/-- `abs(A332182(n)-A011557(n))` -/
def P6129056965908052169.Spec : Prop :=
  ∀ n, P6129056965908052169.a n = A332181 n

end A332181

/-! ## A332181.P2151749258401949893

`floor(A332171(n)+A332140(n)/4)`
-/

namespace A332181.P2151749258401949893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332171 n : ℚ) + (A332140 n : ℚ) / 4⌋

end

end A332181.P2151749258401949893

namespace A332181

/-- `floor(A332171(n)+A332140(n)/4)` -/
def P2151749258401949893.Spec : Prop :=
  ∀ n, P2151749258401949893.a n = A332181 n

end A332181

/-!
# A332182: a(n) = 8*(10^(2*n+1) - 1)/9 - 6*10^n.

The programs for A332182, the canonical program `A332182.P442223223405626062` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332182 has offset 0).

The definition of A332182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332182.P2857031842050476158

`8*(10^(2*n+1)-1)/9-6*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332182.P2857031842050476158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (6 * 10 ^ n : ℚ)

end

end A332182.P2857031842050476158

namespace A332182

/-- `8*(10^(2*n+1)-1)/9-6*10^n` -/
def P2857031842050476158.Spec : Prop :=
  ∀ n, P2857031842050476158.a n = (A332182 n : ℚ)

end A332182

/-! ## A332182.P442223223405626062

`2*A332141(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332182

/-- `2*A332141(n)` -/
def P442223223405626062.Spec : Prop :=
  ∀ n, P442223223405626062.a n = A332182 n

theorem P442223223405626062.correct : P442223223405626062.Spec := by
  intro n
  simp only [A332182]

end A332182

/-! ## A332182.P4559365532993840956

`lcm(2, A332181(n)+10^n)`
-/

namespace A332182.P4559365532993840956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A332181 n + (10 ^ n : ℤ))

end

end A332182.P4559365532993840956

namespace A332182

/-- `lcm(2, A332181(n)+10^n)` -/
def P4559365532993840956.Spec : Prop :=
  ∀ n, (P4559365532993840956.a n : ℤ) = A332182 n

end A332182

/-! ## A332182.P9171781662057331034

`abs(10^(n%(8^(n+3)))-A332183(n))`
-/

namespace A332182.P9171781662057331034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ (n % 8 ^ (n + 3)) : ℤ) - A332183 n|

end

end A332182.P9171781662057331034

namespace A332182

/-- `abs(10^(n%(8^(n+3)))-A332183(n))` -/
def P9171781662057331034.Spec : Prop :=
  ∀ n, P9171781662057331034.a n = A332182 n

end A332182

/-! ## A332182.P8466315714636226469

`2*(A332189(n)-A332148(n))`
-/

namespace A332182.P8466315714636226469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332189 n - A332148 n)

end

end A332182.P8466315714636226469

namespace A332182

/-- `2*(A332189(n)-A332148(n))` -/
def P8466315714636226469.Spec : Prop :=
  ∀ n, P8466315714636226469.a n = A332182 n

end A332182

/-!
# A332183: a(n) = 8*(10^(2n+1)-1)/9 - 5*10^n.

The programs for A332183, the canonical program `A332183.P16125061559952154522` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332183 has offset 0).

The definition of A332183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332183.P16125061559952154522

`8*(10^(2*n+1)-1)/9-5*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332183

/-- `8*(10^(2*n+1)-1)/9-5*10^n` -/
def P16125061559952154522.Spec : Prop :=
  ∀ n, P16125061559952154522.a n = (A332183 n : ℚ)

end A332183

/-! ## A332183.P6158896319809209815

`abs(10^n-A332184(n))`
-/

namespace A332183.P6158896319809209815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332184 n|

end

end A332183.P6158896319809209815

namespace A332183

/-- `abs(10^n-A332184(n))` -/
def P6158896319809209815.Spec : Prop :=
  ∀ n, P6158896319809209815.a n = A332183 n

end A332183

/-! ## A332183.P20094369128021784

`abs(2*A332142(n)-10^(n%(8^(n+3))))`
-/

namespace A332183.P20094369128021784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A332142 n - (10 ^ (n % 8 ^ (n + 3)) : ℤ)|

end

end A332183.P20094369128021784

namespace A332183

/-- `abs(2*A332142(n)-10^(n%(8^(n+3))))` -/
def P20094369128021784.Spec : Prop :=
  ∀ n, P20094369128021784.a n = A332183 n

end A332183

/-! ## A332183.P5750905991796164656

`abs(floor(10^(2*n+1)/9)-10^n-A332193(n))`
-/

namespace A332183.P5750905991796164656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ) - A332193 n|

end

end A332183.P5750905991796164656

namespace A332183

/-- `abs(floor(10^(2*n+1)/9)-10^n-A332193(n))` -/
def P5750905991796164656.Spec : Prop :=
  ∀ n, P5750905991796164656.a n = A332183 n

end A332183

/-! ## A332183.P4697742920533696828

`(10^n-A332184(n))*A316441(A000040(n+1))`
-/

namespace A332183.P4697742920533696828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - A332184 n) * A316441 (A000040 (n + 1)).toNat

end

end A332183.P4697742920533696828

namespace A332183

/-- `(10^n-A332184(n))*A316441(A000040(n+1))` -/
def P4697742920533696828.Spec : Prop :=
  ∀ n, P4697742920533696828.a n = A332183 n

end A332183

/-!
# A332184: a(n) = 8*(10^(2*n+1) - 1)/9 - 4*10^n.

The programs for A332184, the canonical program `A332184.P9540905939236527577` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332184 has offset 0).

The definition of A332184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332184.P5249428830095747880

`8*(10^(2*n+1)-1)/9-4*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332184.P5249428830095747880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (4 * 10 ^ n : ℚ)

end

end A332184.P5249428830095747880

namespace A332184

/-- `8*(10^(2*n+1)-1)/9-4*10^n` -/
def P5249428830095747880.Spec : Prop :=
  ∀ n, P5249428830095747880.a n = (A332184 n : ℚ)

end A332184

/-! ## A332184.P9540905939236527577

`2*A332142(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332184

/-- `2*A332142(n)` -/
def P9540905939236527577.Spec : Prop :=
  ∀ n, P9540905939236527577.a n = A332184 n

theorem P9540905939236527577.correct : P9540905939236527577.Spec := by
  intro n
  simp only [A332184]

end A332184

/-! ## A332184.P17893763351591225383

`4*A332121(n)`
-/

namespace A332184.P17893763351591225383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A332121 n

end

end A332184.P17893763351591225383

namespace A332184

/-- `4*A332121(n)` -/
def P17893763351591225383.Spec : Prop :=
  ∀ n, P17893763351591225383.a n = A332184 n

end A332184

/-! ## A332184.P4198937338142504002

`4/3*A332163(n)`
-/

namespace A332184.P4198937338142504002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A332163 n : ℚ)

end

end A332184.P4198937338142504002

namespace A332184

/-- `4/3*A332163(n)` -/
def P4198937338142504002.Spec : Prop :=
  ∀ n, P4198937338142504002.a n = (A332184 n : ℚ)

end A332184

/-! ## A332184.P8061005872526315914

`abs(A332120(n)/2-A332194(n))`
-/

namespace A332184.P8061005872526315914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332120 n : ℚ) / 2 - (A332194 n : ℚ)|

end

end A332184.P8061005872526315914

namespace A332184

/-- `abs(A332120(n)/2-A332194(n))` -/
def P8061005872526315914.Spec : Prop :=
  ∀ n, P8061005872526315914.a n = (A332184 n : ℚ)

end A332184

/-! ## A332184.P14453307143771730904

`abs(A332190(n)/9-A332194(n))`
-/

namespace A332184.P14453307143771730904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332190 n : ℚ) / 9 - (A332194 n : ℚ)|

end

end A332184.P14453307143771730904

namespace A332184

/-- `abs(A332190(n)/9-A332194(n))` -/
def P14453307143771730904.Spec : Prop :=
  ∀ n, P14453307143771730904.a n = (A332184 n : ℚ)

end A332184

/-!
# A332185: a(n) = 8*(10^(2n+1)-1)/9 - 3*10^n.

The programs for A332185, the canonical program `A332185.P16983580859288957202` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332185 has offset 0).

The definition of A332185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332185.P16983580859288957202

`8*(10^(2*n+1)-1)/9-3*10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332185

/-- `8*(10^(2*n+1)-1)/9-3*10^n` -/
def P16983580859288957202.Spec : Prop :=
  ∀ n, P16983580859288957202.a n = (A332185 n : ℚ)

end A332185

/-! ## A332185.P17311223329468075067

`abs(10^(2*n+1)-10^n-1-A332113(n))`
-/

namespace A332185.P17311223329468075067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ (2 * n + 1) : ℤ) - (10 ^ n : ℤ) - 1 - A332113 n|

end

end A332185.P17311223329468075067

namespace A332185

/-- `abs(10^(2*n+1)-10^n-1-A332113(n))` -/
def P17311223329468075067.Spec : Prop :=
  ∀ n, P17311223329468075067.a n = A332185 n

end A332185

/-! ## A332185.P9134861296410282772

`round(10^(n%(8^(n+3)))+4/3*A332163(n))`
-/

namespace A332185.P9134861296410282772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 ^ (n % 8 ^ (n + 3)) : ℚ) + (4 : ℚ) / 3 * (A332163 n : ℚ))

end

end A332185.P9134861296410282772

namespace A332185

/-- `round(10^(n%(8^(n+3)))+4/3*A332163(n))` -/
def P9134861296410282772.Spec : Prop :=
  ∀ n, P9134861296410282772.a n = A332185 n

end A332185

/-! ## A332185.P10597589329095178436

`abs(A011557(n)-A332186(n))`
-/

namespace A332185.P10597589329095178436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A332186 n|

end

end A332185.P10597589329095178436

namespace A332185

/-- `abs(A011557(n)-A332186(n))` -/
def P10597589329095178436.Spec : Prop :=
  ∀ n, P10597589329095178436.a n = A332185 n

end A332185

/-! ## A332185.P16622267906034880864

`floor(A332175(n)+A332120(n)/2)`
-/

namespace A332185.P16622267906034880864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332175 n : ℚ) + (A332120 n : ℚ) / 2⌋

end

end A332185.P16622267906034880864

namespace A332185

/-- `floor(A332175(n)+A332120(n)/2)` -/
def P16622267906034880864.Spec : Prop :=
  ∀ n, P16622267906034880864.a n = A332185 n

end A332185

/-! ## A332185.P15500354494008380807

`abs(A004643(A005843(n))-A332186(n))`
-/

namespace A332185.P15500354494008380807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004643 (A005843 n).toNat - A332186 n|

end

end A332185.P15500354494008380807

namespace A332185

/-- `abs(A004643(A005843(n))-A332186(n))` -/
def P15500354494008380807.Spec : Prop :=
  ∀ n, P15500354494008380807.a n = A332185 n

end A332185

/-!
# A332186: a(n) = 8*(10^(2n+1)-1)/9 - 2*10^n.

The programs for A332186, the canonical program `A332186.P6676226021013196062` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332186 has offset 0).

The definition of A332186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332186.P12042990198933838624

`8*(10^(2*n+1)-1)/9-2*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332186.P12042990198933838624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (2 * 10 ^ n : ℚ)

end

end A332186.P12042990198933838624

namespace A332186

/-- `8*(10^(2*n+1)-1)/9-2*10^n` -/
def P12042990198933838624.Spec : Prop :=
  ∀ n, P12042990198933838624.a n = (A332186 n : ℚ)

end A332186

/-! ## A332186.P6676226021013196062

`2*A332143(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332186

/-- `2*A332143(n)` -/
def P6676226021013196062.Spec : Prop :=
  ∀ n, P6676226021013196062.a n = A332186 n

theorem P6676226021013196062.correct : P6676226021013196062.Spec := by
  intro n
  simp only [A332186]

end A332186

/-! ## A332186.P903955307350130449

`2*floor((A332185(n)+10^n)/2)`
-/

namespace A332186.P903955307350130449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A332185 n + (10 ^ n : ℤ) : ℚ) / 2⌋

end

end A332186.P903955307350130449

namespace A332186

/-- `2*floor((A332185(n)+10^n)/2)` -/
def P903955307350130449.Spec : Prop :=
  ∀ n, P903955307350130449.a n = A332186 n

end A332186

/-! ## A332186.P575341534832346792

`abs(A138148(n)-A332196(n))`
-/

namespace A332186.P575341534832346792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138148 n - A332196 n|

end

end A332186.P575341534832346792

namespace A332186

/-- `abs(A138148(n)-A332196(n))` -/
def P575341534832346792.Spec : Prop :=
  ∀ n, P575341534832346792.a n = A332186 n

end A332186

/-! ## A332186.P5189376330072722950

`(A332185(n)+10^n)*char[A330091(n)]`
-/

namespace A332186.P5189376330072722950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332185 n + (10 ^ n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332186.P5189376330072722950

namespace A332186

/-- `(A332185(n)+10^n)*char[A330091(n)]` -/
def P5189376330072722950.Spec : Prop :=
  ∀ n, P5189376330072722950.a n = A332186 n

end A332186

/-! ## A332186.P2995511760603776656

`(A332185(n)+10^n)*char[A364916(n)]`
-/

namespace A332186.P2995511760603776656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332185 n + (10 ^ n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332186.P2995511760603776656

namespace A332186

/-- `(A332185(n)+10^n)*char[A364916(n)]` -/
def P2995511760603776656.Spec : Prop :=
  ∀ n, P2995511760603776656.a n = A332186 n

end A332186

/-!
# A332187: a(n) = 8*(10^(2n+1)-1)/9 - 10^n.

The programs for A332187, the canonical program `A332187.P5622656720389181108` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332187 has offset 0).

The definition of A332187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332187.P5622656720389181108

`8*(10^(2*n+1)-1)/9-10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332187

/-- `8*(10^(2*n+1)-1)/9-10^n` -/
def P5622656720389181108.Spec : Prop :=
  ∀ n, P5622656720389181108.a n = (A332187 n : ℚ)

end A332187

/-! ## A332187.P6522486520789598184

`abs(floor(10^(2*n+1)/9)-A181965(n))`
-/

namespace A332187.P6522486520789598184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - A181965 n|

end

end A332187.P6522486520789598184

namespace A332187

/-- `abs(floor(10^(2*n+1)/9)-A181965(n))` -/
def P6522486520789598184.Spec : Prop :=
  ∀ n, P6522486520789598184.a n = A332187 n

end A332187

/-! ## A332187.P4803577132937835910

`floor(A332175(n)+A332136(n)/3)`
-/

namespace A332187.P4803577132937835910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332175 n : ℚ) + (A332136 n : ℚ) / 3⌋

end

end A332187.P4803577132937835910

namespace A332187

/-- `floor(A332175(n)+A332136(n)/3)` -/
def P4803577132937835910.Spec : Prop :=
  ∀ n, P4803577132937835910.a n = A332187 n

end A332187

/-! ## A332187.P6384532524133957460

`floor(A332175(n)+A332148(n)/4)`
-/

namespace A332187.P6384532524133957460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332175 n : ℚ) + (A332148 n : ℚ) / 4⌋

end

end A332187.P6384532524133957460

namespace A332187

/-- `floor(A332175(n)+A332148(n)/4)` -/
def P6384532524133957460.Spec : Prop :=
  ∀ n, P6384532524133957460.a n = A332187 n

end A332187

/-! ## A332187.P11304685225326373271

`round(A332197(n)-A332140(n)/4)`
-/

namespace A332187.P11304685225326373271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332197 n : ℚ) - (A332140 n : ℚ) / 4)

end

end A332187.P11304685225326373271

namespace A332187

/-- `round(A332197(n)-A332140(n)/4)` -/
def P11304685225326373271.Spec : Prop :=
  ∀ n, P11304685225326373271.a n = A332187 n

end A332187

/-! ## A332187.P2051933842567629911

`round(A332197(n)-A332160(n)/6)`
-/

namespace A332187.P2051933842567629911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332197 n : ℚ) - (A332160 n : ℚ) / 6)

end

end A332187.P2051933842567629911

namespace A332187

/-- `round(A332197(n)-A332160(n)/6)` -/
def P2051933842567629911.Spec : Prop :=
  ∀ n, P2051933842567629911.a n = A332187 n

end A332187

/-!
# A332189: a(n) = 8*(10^(2n+1)-1)/9 + 10^n.

The programs for A332189, the canonical program `A332189.P15337409903865154264` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332189 has offset 0).

The definition of A332189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332189.P15337409903865154264

`8*(10^(2*n+1)-1)/9+10^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332189

/-- `8*(10^(2*n+1)-1)/9+10^n` -/
def P15337409903865154264.Spec : Prop :=
  ∀ n, P15337409903865154264.a n = (A332189 n : ℚ)

end A332189

/-! ## A332189.P17660580328829491501

`floor(A332159(n)+3/4*A332140(n))`
-/

namespace A332189.P17660580328829491501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332159 n : ℚ) + (3 : ℚ) / 4 * (A332140 n : ℚ)⌋

end

end A332189.P17660580328829491501

namespace A332189

/-- `floor(A332159(n)+3/4*A332140(n))` -/
def P17660580328829491501.Spec : Prop :=
  ∀ n, P17660580328829491501.a n = A332189 n

end A332189

/-! ## A332189.P17153048089324868028

`floor(A332159(n)+3/5*A332150(n))`
-/

namespace A332189.P17153048089324868028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332159 n : ℚ) + (3 : ℚ) / 5 * (A332150 n : ℚ)⌋

end

end A332189.P17153048089324868028

namespace A332189

/-- `floor(A332159(n)+3/5*A332150(n))` -/
def P17153048089324868028.Spec : Prop :=
  ∀ n, P17153048089324868028.a n = A332189 n

end A332189

/-!
# A332190: a(n) = 10^(2n+1) - 1 - 9*10^n.

The programs for A332190, the canonical program `A332190.P3450388084797590206` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332190 has offset 0).

The definition of A332190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332190.P3450388084797590206

`9*A138148(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332190

/-- `9*A138148(n)` -/
def P3450388084797590206.Spec : Prop :=
  ∀ n, P3450388084797590206.a n = A332190 n

theorem P3450388084797590206.correct : P3450388084797590206.Spec := by
  intro n
  simp only [A332190]

end A332190

/-! ## A332190.P692362649175708147

`9*(floor(10*(10^n)²/9)-10^n)`
-/

namespace A332190.P692362649175708147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - (10 ^ n : ℤ))

end

end A332190.P692362649175708147

namespace A332190

/-- `9*(floor(10*(10^n)²/9)-10^n)` -/
def P692362649175708147.Spec : Prop :=
  ∀ n, P692362649175708147.a n = A332190 n

end A332190

/-! ## A332190.P1535485823341284226

`or(n, 9*(floor(10^(2*n+1)/9)-10^n))`
-/

namespace A332190.P1535485823341284226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (9 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ)))

end

end A332190.P1535485823341284226

namespace A332190

/-- `or(n, 9*(floor(10^(2*n+1)/9)-10^n))` -/
def P1535485823341284226.Spec : Prop :=
  ∀ n, P1535485823341284226.a n = A332190 n

end A332190

/-! ## A332190.P10689457117065509252

`and(9*(floor(10^(2*n+1)/9)-10^n), -1)`
-/

namespace A332190.P10689457117065509252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (9 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ))) (-1)

end

end A332190.P10689457117065509252

namespace A332190

/-- `and(9*(floor(10^(2*n+1)/9)-10^n), -1)` -/
def P10689457117065509252.Spec : Prop :=
  ∀ n, P10689457117065509252.a n = A332190 n

end A332190

/-! ## A332190.P2412112562744863245

`9*(floor(10^(2*n+1)/9)-10^n)/dr(10^n)`
-/

namespace A332190.P2412112562744863245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ)) : ℚ) / (SequenceMachineLib.digitalRoot (10 ^ n : ℤ) : ℚ)

end

end A332190.P2412112562744863245

namespace A332190

/-- `9*(floor(10^(2*n+1)/9)-10^n)/dr(10^n)` -/
def P2412112562744863245.Spec : Prop :=
  ∀ n, P2412112562744863245.a n = (A332190 n : ℚ)

end A332190

/-! ## A332190.P3935116667701069511

`gcd(9*(floor(10^(2*n+1)/9)-10^n), abs(9*(floor(10^(2*n+1)/9)-10^n)))`
-/

namespace A332190.P3935116667701069511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ))) |9 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ))|

end

end A332190.P3935116667701069511

namespace A332190

/-- `gcd(9*(floor(10^(2*n+1)/9)-10^n), abs(9*(floor(10^(2*n+1)/9)-10^n)))` -/
def P3935116667701069511.Spec : Prop :=
  ∀ n, (P3935116667701069511.a n : ℤ) = A332190 n

end A332190

/-! ## A332190.P7776818548756406374

`9*A332120(n)/2`
-/

namespace A332190.P7776818548756406374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A332120 n : ℚ) / 2

end

end A332190.P7776818548756406374

namespace A332190

/-- `9*A332120(n)/2` -/
def P7776818548756406374.Spec : Prop :=
  ∀ n, P7776818548756406374.a n = (A332190 n : ℚ)

end A332190

/-! ## A332190.P7609037474271216979

`A332191(n)-10^n`
-/

namespace A332190.P7609037474271216979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332191 n - (10 ^ n : ℤ)

end

end A332190.P7609037474271216979

namespace A332190

/-- `A332191(n)-10^n` -/
def P7609037474271216979.Spec : Prop :=
  ∀ n, P7609037474271216979.a n = A332190 n

end A332190

/-! ## A332190.P5087317879388470804

`A002283(2*n+1)-Δ[10^n]`
-/

namespace A332190.P5087317879388470804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A332190.P5087317879388470804

namespace A332190

/-- `A002283(2*n+1)-Δ[10^n]` -/
def P5087317879388470804.Spec : Prop :=
  ∀ n, P5087317879388470804.a n = A332190 n

end A332190

/-! ## A332190.P15826744901464463099

`A332180(n)+(5*(10*(10^n)²-1)/9+3*10^n)%(4*(10*(10^n)²-1)/9+4*10^n)`
-/

namespace A332190.P15826744901464463099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332180 n + Int.tmod (SequenceMachineLib.roundAway (5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) + (3 * 10 ^ n : ℚ))) (SequenceMachineLib.roundAway (4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) + (4 * 10 ^ n : ℚ)))

end

end A332190.P15826744901464463099

namespace A332190

/-- `A332180(n)+(5*(10*(10^n)²-1)/9+3*10^n)%(4*(10*(10^n)²-1)/9+4*10^n)` -/
def P15826744901464463099.Spec : Prop :=
  ∀ n, P15826744901464463099.a n = A332190 n

end A332190

/-!
# A332191: a(n) = 10^(2*n+1) - 1 - 8*10^n.

The programs for A332191, the canonical program `A332191.P5845772219414210510` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332191 has offset 0).

The definition of A332191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332191.P5845772219414210510

`9*A138148(n)+10^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332191

/-- `9*A138148(n)+10^n` -/
def P5845772219414210510.Spec : Prop :=
  ∀ n, P5845772219414210510.a n = A332191 n

theorem P5845772219414210510.correct : P5845772219414210510.Spec := by
  intro n
  simp only [A332191]

end A332191

/-! ## A332191.P15104275001096112589

`10^(2*n+1)-8*10^n-1`
-/

namespace A332191.P15104275001096112589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (2 * n + 1) : ℤ) - (8 * 10 ^ n : ℤ) - 1

end

end A332191.P15104275001096112589

namespace A332191

/-- `10^(2*n+1)-8*10^n-1` -/
def P15104275001096112589.Spec : Prop :=
  ∀ n, P15104275001096112589.a n = A332191 n

end A332191

/-! ## A332191.P9187144890096855831

`abs(10^n-A332192(n))`
-/

namespace A332191.P9187144890096855831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332192 n|

end

end A332191.P9187144890096855831

namespace A332191

/-- `abs(10^n-A332192(n))` -/
def P9187144890096855831.Spec : Prop :=
  ∀ n, P9187144890096855831.a n = A332191 n

end A332191

/-! ## A332191.P7782334543966740091

`abs(A332192(n)-A011557(n))`
-/

namespace A332191.P7782334543966740091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332192 n - A011557 n|

end

end A332191.P7782334543966740091

namespace A332191

/-- `abs(A332192(n)-A011557(n))` -/
def P7782334543966740091.Spec : Prop :=
  ∀ n, P7782334543966740091.a n = A332191 n

end A332191

/-! ## A332191.P14154622806805201700

`(A332192(n)+A332190(n))/2`
-/

namespace A332191.P14154622806805201700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332192 n + A332190 n : ℚ) / 2

end

end A332191.P14154622806805201700

namespace A332191

/-- `(A332192(n)+A332190(n))/2` -/
def P14154622806805201700.Spec : Prop :=
  ∀ n, P14154622806805201700.a n = (A332191 n : ℚ)

end A332191

/-! ## A332191.P7104290508904697394

`floor(A332181(n)+A332120(n)/2)`
-/

namespace A332191.P7104290508904697394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332181 n : ℚ) + (A332120 n : ℚ) / 2⌋

end

end A332191.P7104290508904697394

namespace A332191

/-- `floor(A332181(n)+A332120(n)/2)` -/
def P7104290508904697394.Spec : Prop :=
  ∀ n, P7104290508904697394.a n = A332191 n

end A332191

/-! ## A332191.P8157240657500380502

`floor(A332181(n)+A332140(n)/4)`
-/

namespace A332191.P8157240657500380502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332181 n : ℚ) + (A332140 n : ℚ) / 4⌋

end

end A332191.P8157240657500380502

namespace A332191

/-- `floor(A332181(n)+A332140(n)/4)` -/
def P8157240657500380502.Spec : Prop :=
  ∀ n, P8157240657500380502.a n = A332191 n

end A332191

/-! ## A332191.P8293887184137992768

`floor(A332181(n)+A332160(n)/6)`
-/

namespace A332191.P8293887184137992768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332181 n : ℚ) + (A332160 n : ℚ) / 6⌋

end

end A332191.P8293887184137992768

namespace A332191

/-- `floor(A332181(n)+A332160(n)/6)` -/
def P8293887184137992768.Spec : Prop :=
  ∀ n, P8293887184137992768.a n = A332191 n

end A332191

/-! ## A332191.P6014416200771474940

`floor(A332181(n)+A332170(n)/7)`
-/

namespace A332191.P6014416200771474940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332181 n : ℚ) + (A332170 n : ℚ) / 7⌋

end

end A332191.P6014416200771474940

namespace A332191

/-- `floor(A332181(n)+A332170(n)/7)` -/
def P6014416200771474940.Spec : Prop :=
  ∀ n, P6014416200771474940.a n = A332191 n

end A332191

/-!
# A332192: a(n) = 10^(2*n+1) - 1 - 7*10^n.

The programs for A332192, the canonical program `A332192.P7576915221099269629` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332192 has offset 0).

The definition of A332192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332192.P7576915221099269629

`9*A138148(n)+2*10^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332192

/-- `9*A138148(n)+2*10^n` -/
def P7576915221099269629.Spec : Prop :=
  ∀ n, P7576915221099269629.a n = A332192 n

theorem P7576915221099269629.correct : P7576915221099269629.Spec := by
  intro n
  simp only [A332192]

end A332192

/-! ## A332192.P770945550860417551

`A002283(2*n+1)-7*10^n`
-/

namespace A332192.P770945550860417551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (2 * n + 1) - (7 * 10 ^ n : ℤ)

end

end A332192.P770945550860417551

namespace A332192

/-- `A002283(2*n+1)-7*10^n` -/
def P770945550860417551.Spec : Prop :=
  ∀ n, P770945550860417551.a n = A332192 n

end A332192

/-! ## A332192.P7435714369665601259

`10^(2*n+1)-7*10^n-1`
-/

namespace A332192.P7435714369665601259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (2 * n + 1) : ℤ) - (7 * 10 ^ n : ℤ) - 1

end

end A332192.P7435714369665601259

namespace A332192

/-- `10^(2*n+1)-7*10^n-1` -/
def P7435714369665601259.Spec : Prop :=
  ∀ n, P7435714369665601259.a n = A332192 n

end A332192

/-! ## A332192.P2153788965451203165

`abs(10^n-A332193(n))`
-/

namespace A332192.P2153788965451203165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332193 n|

end

end A332192.P2153788965451203165

namespace A332192

/-- `abs(10^n-A332193(n))` -/
def P2153788965451203165.Spec : Prop :=
  ∀ n, P2153788965451203165.a n = A332192 n

end A332192

/-! ## A332192.P2008482917585832111

`floor(A332180(n)+A332136(n)/3)`
-/

namespace A332192.P2008482917585832111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332180 n : ℚ) + (A332136 n : ℚ) / 3⌋

end

end A332192.P2008482917585832111

namespace A332192

/-- `floor(A332180(n)+A332136(n)/3)` -/
def P2008482917585832111.Spec : Prop :=
  ∀ n, P2008482917585832111.a n = A332192 n

end A332192

/-! ## A332192.P3781829282648478298

`floor(A332180(n)+A332148(n)/4)`
-/

namespace A332192.P3781829282648478298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332180 n : ℚ) + (A332148 n : ℚ) / 4⌋

end

end A332192.P3781829282648478298

namespace A332192

/-- `floor(A332180(n)+A332148(n)/4)` -/
def P3781829282648478298.Spec : Prop :=
  ∀ n, P3781829282648478298.a n = A332192 n

end A332192

/-!
# A332193: a(n) = 10^(2n+1) - 1 - 6*10^n.

The programs for A332193, the canonical program `A332193.P6582621100085936854` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332193 has offset 0).

The definition of A332193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332193.P6582621100085936854

`9*A138148(n)+3*10^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332193

/-- `9*A138148(n)+3*10^n` -/
def P6582621100085936854.Spec : Prop :=
  ∀ n, P6582621100085936854.a n = A332193 n

theorem P6582621100085936854.correct : P6582621100085936854.Spec := by
  intro n
  simp only [A332193]

end A332193

/-! ## A332193.P6131740953953791865

`A002283(2*n+1)-6*10^n`
-/

namespace A332193.P6131740953953791865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (2 * n + 1) - (6 * 10 ^ n : ℤ)

end

end A332193.P6131740953953791865

namespace A332193

/-- `A002283(2*n+1)-6*10^n` -/
def P6131740953953791865.Spec : Prop :=
  ∀ n, P6131740953953791865.a n = A332193 n

end A332193

/-! ## A332193.P4560915300201615428

`10^(2*n+1)-6*10^n-1`
-/

namespace A332193.P4560915300201615428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (2 * n + 1) : ℤ) - (6 * 10 ^ n : ℤ) - 1

end

end A332193.P4560915300201615428

namespace A332193

/-- `10^(2*n+1)-6*10^n-1` -/
def P4560915300201615428.Spec : Prop :=
  ∀ n, P4560915300201615428.a n = A332193 n

end A332193

/-! ## A332193.P9480921713287047824

`3*A332131(n)`
-/

namespace A332193.P9480921713287047824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A332131 n

end

end A332193.P9480921713287047824

namespace A332193

/-- `3*A332131(n)` -/
def P9480921713287047824.Spec : Prop :=
  ∀ n, P9480921713287047824.a n = A332193 n

end A332193

/-! ## A332193.P16843815809319387837

`3/2*A332162(n)`
-/

namespace A332193.P16843815809319387837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A332162 n : ℚ)

end

end A332193.P16843815809319387837

namespace A332193

/-- `3/2*A332162(n)` -/
def P16843815809319387837.Spec : Prop :=
  ∀ n, P16843815809319387837.a n = (A332193 n : ℚ)

end A332193

/-!
# A332194: a(n) = 10^(2*n+1) - 1 - 5*10^n.

The programs for A332194, the canonical program `A332194.P1034572506105866844` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332194 has offset 0).

The definition of A332194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332194.P1034572506105866844

`9*A138148(n)+4*10^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332194

/-- `9*A138148(n)+4*10^n` -/
def P1034572506105866844.Spec : Prop :=
  ∀ n, P1034572506105866844.a n = A332194 n

theorem P1034572506105866844.correct : P1034572506105866844.Spec := by
  intro n
  simp only [A332194]

end A332194

/-! ## A332194.P6319122571164249919

`A002283(2*n+1)-5*A011557(n)`
-/

namespace A332194.P6319122571164249919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (2 * n + 1) - 5 * A011557 n

end

end A332194.P6319122571164249919

namespace A332194

/-- `A002283(2*n+1)-5*A011557(n)` -/
def P6319122571164249919.Spec : Prop :=
  ∀ n, P6319122571164249919.a n = A332194 n

end A332194

/-! ## A332194.P4301959000959894565

`10^(2*n+1)-5*10^n-1`
-/

namespace A332194.P4301959000959894565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (2 * n + 1) : ℤ) - (5 * 10 ^ n : ℤ) - 1

end

end A332194.P4301959000959894565

namespace A332194

/-- `10^(2*n+1)-5*10^n-1` -/
def P4301959000959894565.Spec : Prop :=
  ∀ n, P4301959000959894565.a n = A332194 n

end A332194

/-! ## A332194.P16262160696305251871

`abs(10^n-A332195(n))`
-/

namespace A332194.P16262160696305251871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332195 n|

end

end A332194.P16262160696305251871

namespace A332194

/-- `abs(10^n-A332195(n))` -/
def P16262160696305251871.Spec : Prop :=
  ∀ n, P16262160696305251871.a n = A332194 n

end A332194

/-! ## A332194.P4249705612416445003

`floor(A332184(n)+A332120(n)/2)`
-/

namespace A332194.P4249705612416445003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332184 n : ℚ) + (A332120 n : ℚ) / 2⌋

end

end A332194.P4249705612416445003

namespace A332194

/-- `floor(A332184(n)+A332120(n)/2)` -/
def P4249705612416445003.Spec : Prop :=
  ∀ n, P4249705612416445003.a n = A332194 n

end A332194

/-!
# A332195: a(n) = 10^(2*n+1) - 4*10^n - 1.

The programs for A332195, the canonical program `A332195.P12923792730573572301` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332195 has offset 0).

The definition of A332195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(2*n+1)-4*10^n-1` (program `A332195.P12923792730573572301`, by `A332195.P12923792730573572301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332195.P12923792730573572301

`10^(2*n+1)-4*10^n-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A332195

/-- `10^(2*n+1)-4*10^n-1` -/
def P12923792730573572301.Spec : Prop :=
  ∀ n, P12923792730573572301.a n = A332195 n

theorem P12923792730573572301.correct : P12923792730573572301.Spec := by
  intro n
  simp only [A332195]

end A332195

/-! ## A332195.P8041425838104209504

`abs(10^n-A332196(n))`
-/

namespace A332195.P8041425838104209504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A332196 n|

end

end A332195.P8041425838104209504

namespace A332195

/-- `abs(10^n-A332196(n))` -/
def P8041425838104209504.Spec : Prop :=
  ∀ n, P8041425838104209504.a n = A332195 n

end A332195

/-! ## A332195.P5140991122748277390

`abs(A332196(n)-A011557(n))`
-/

namespace A332195.P5140991122748277390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332196 n - A011557 n|

end

end A332195.P5140991122748277390

namespace A332195

/-- `abs(A332196(n)-A011557(n))` -/
def P5140991122748277390.Spec : Prop :=
  ∀ n, P5140991122748277390.a n = A332195 n

end A332195

/-! ## A332195.P1858980416964908161

`abs(A093136(n+1)-A332197(n))`
-/

namespace A332195.P1858980416964908161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093136 (n + 1) - A332197 n|

end

end A332195.P1858980416964908161

namespace A332195

/-- `abs(A093136(n+1)-A332197(n))` -/
def P1858980416964908161.Spec : Prop :=
  ∀ n, P1858980416964908161.a n = A332195 n

end A332195

/-! ## A332195.P16573918524870983682

`floor(A332185(n)+A332120(n)/2)`
-/

namespace A332195.P16573918524870983682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332185 n : ℚ) + (A332120 n : ℚ) / 2⌋

end

end A332195.P16573918524870983682

namespace A332195

/-- `floor(A332185(n)+A332120(n)/2)` -/
def P16573918524870983682.Spec : Prop :=
  ∀ n, P16573918524870983682.a n = A332195 n

end A332195

/-!
# A332196: a(n) = 10^(2n+1) - 1 - 3*10^n.

The programs for A332196, the canonical program `A332196.P18253647614395274730` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332196 has offset 0).

The definition of A332196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332196.P18253647614395274730

`9*A138148(n)+6*10^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332196

/-- `9*A138148(n)+6*10^n` -/
def P18253647614395274730.Spec : Prop :=
  ∀ n, P18253647614395274730.a n = A332196 n

theorem P18253647614395274730.correct : P18253647614395274730.Spec := by
  intro n
  simp only [A332196]

end A332196

/-! ## A332196.P4643091475697156909

`10^(2*n+1)-3*10^n-1`
-/

namespace A332196.P4643091475697156909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (2 * n + 1) : ℤ) - (3 * 10 ^ n : ℤ) - 1

end

end A332196.P4643091475697156909

namespace A332196

/-- `10^(2*n+1)-3*10^n-1` -/
def P4643091475697156909.Spec : Prop :=
  ∀ n, P4643091475697156909.a n = A332196 n

end A332196

/-! ## A332196.P17077139679717592043

`3*A332132(n)`
-/

namespace A332196.P17077139679717592043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A332132 n

end

end A332196.P17077139679717592043

namespace A332196

/-- `3*A332132(n)` -/
def P17077139679717592043.Spec : Prop :=
  ∀ n, P17077139679717592043.a n = A332196 n

end A332196

/-! ## A332196.P3386507756939438138

`3/2*A332164(n)`
-/

namespace A332196.P3386507756939438138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A332164 n : ℚ)

end

end A332196.P3386507756939438138

namespace A332196

/-- `3/2*A332164(n)` -/
def P3386507756939438138.Spec : Prop :=
  ∀ n, P3386507756939438138.a n = (A332196 n : ℚ)

end A332196

/-! ## A332196.P12655234936318539343

`(A199682(n)-2)*A199685(n)`
-/

namespace A332196.P12655234936318539343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A199682 n - 2) * A199685 n

end

end A332196.P12655234936318539343

namespace A332196

/-- `(A199682(n)-2)*A199685(n)` -/
def P12655234936318539343.Spec : Prop :=
  ∀ n, P12655234936318539343.a n = A332196 n

end A332196

/-!
# A332197: a(n) = 10^(2n+1) - 1 - 2*10^n.

The programs for A332197, the canonical program `A332197.P4340004087403755620` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332197 has offset 0).

The definition of A332197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332197.P4340004087403755620

`9*A138148(n)+7*10^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332197

/-- `9*A138148(n)+7*10^n` -/
def P4340004087403755620.Spec : Prop :=
  ∀ n, P4340004087403755620.a n = A332197 n

theorem P4340004087403755620.correct : P4340004087403755620.Spec := by
  intro n
  simp only [A332197]

end A332197

/-! ## A332197.P9863403687572963583

`10^(2*n+1)-10^n-1-10^n`
-/

namespace A332197.P9863403687572963583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (2 * n + 1) : ℤ) - (10 ^ n : ℤ) - 1 - (10 ^ n : ℤ)

end

end A332197.P9863403687572963583

namespace A332197

/-- `10^(2*n+1)-10^n-1-10^n` -/
def P9863403687572963583.Spec : Prop :=
  ∀ n, P9863403687572963583.a n = A332197 n

end A332197

/-! ## A332197.P3667964938434226969

`abs(10^n-A181965(n))`
-/

namespace A332197.P3667964938434226969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A181965 n|

end

end A332197.P3667964938434226969

namespace A332197

/-- `abs(10^n-A181965(n))` -/
def P3667964938434226969.Spec : Prop :=
  ∀ n, P3667964938434226969.a n = A332197 n

end A332197

/-! ## A332197.P2555003840784279135

`abs(A181965(n)-A011557(n))`
-/

namespace A332197.P2555003840784279135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181965 n - A011557 n|

end

end A332197.P2555003840784279135

namespace A332197

/-- `abs(A181965(n)-A011557(n))` -/
def P2555003840784279135.Spec : Prop :=
  ∀ n, P2555003840784279135.a n = A332197 n

end A332197

/-! ## A332197.P13977445316129888538

`floor(A332134(n)+3/2*A332142(n))`
-/

namespace A332197.P13977445316129888538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332134 n : ℚ) + (3 : ℚ) / 2 * (A332142 n : ℚ)⌋

end

end A332197.P13977445316129888538

namespace A332197

/-- `floor(A332134(n)+3/2*A332142(n))` -/
def P13977445316129888538.Spec : Prop :=
  ∀ n, P13977445316129888538.a n = A332197 n

end A332197

/-! ## A332197.P1967562666947599675

`floor(A332134(n)+3/4*A332184(n))`
-/

namespace A332197.P1967562666947599675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332134 n : ℚ) + (3 : ℚ) / 4 * (A332184 n : ℚ)⌋

end

end A332197.P1967562666947599675

namespace A332197

/-- `floor(A332134(n)+3/4*A332184(n))` -/
def P1967562666947599675.Spec : Prop :=
  ∀ n, P1967562666947599675.a n = A332197 n

end A332197

/-! ## A332197.P12008511943916800658

`abs(A332134(n)+3*(A332131(n)-A138148(n)))`
-/

namespace A332197.P12008511943916800658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332134 n + 3 * (A332131 n - A138148 n)|

end

end A332197.P12008511943916800658

namespace A332197

/-- `abs(A332134(n)+3*(A332131(n)-A138148(n)))` -/
def P12008511943916800658.Spec : Prop :=
  ∀ n, P12008511943916800658.a n = A332197 n

end A332197

/-! ## A332197.P6287263300355914217

`round(A332143(n)+(A332163(n)+A332145(n))/2)`
-/

namespace A332197.P6287263300355914217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332143 n : ℚ) + (A332163 n + A332145 n : ℚ) / 2)

end

end A332197.P6287263300355914217

namespace A332197

/-- `round(A332143(n)+(A332163(n)+A332145(n))/2)` -/
def P6287263300355914217.Spec : Prop :=
  ∀ n, P6287263300355914217.a n = A332197 n

end A332197

/-! ## A332197.P7353680692810968407

`round(A332143(n)+(A332194(n)+A332114(n))/2)`
-/

namespace A332197.P7353680692810968407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332143 n : ℚ) + (A332194 n + A332114 n : ℚ) / 2)

end

end A332197.P7353680692810968407

namespace A332197

/-- `round(A332143(n)+(A332194(n)+A332114(n))/2)` -/
def P7353680692810968407.Spec : Prop :=
  ∀ n, P7353680692810968407.a n = A332197 n

end A332197

/-!
# A332199: Expansion of Product_{i>=1, j>=1} 1/(1 - i*x^(i*j)).

The programs for A332199, there is no canonical definition to state claims against.
-/

/-! ## A332199.P10542161407914306389

`A118248(∑{digits}[A304983(n), #])`
-/

namespace A332199.P10542161407914306389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A332199.P10542161407914306389

/-! ## A332199.P9192648452921889882

`A131408(n)+A051903(A000312(n))`
-/

namespace A332199.P9192648452921889882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131408 n + A051903 (A000312 n).toNat

end

end A332199.P9192648452921889882

/-! ## A332199.P11903156660221280247

`A345917(A000740(n+1))+A185143(n)`
-/

namespace A332199.P11903156660221280247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 (A000740 (n + 1)).toNat + A185143 n

end

end A332199.P11903156660221280247

