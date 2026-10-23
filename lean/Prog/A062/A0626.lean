import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A062600: Numbers k such that 34^k - 33^k is prime.

The programs for A062600, there is no canonical definition to state claims against.
-/

/-! ## A062600.P313578045663498548

`A133955(n+1)+A108578(A294920(n+1))`
-/

namespace A062600.P313578045663498548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133955 (n + 1) + A108578 (A294920 (n + 1)).toNat

end

end A062600.P313578045663498548

/-!
# A062601: Numbers k such that 35^k - 34^k is prime.

The programs for A062601, there is no canonical definition to state claims against.
-/

/-! ## A062601.P11041716461157880821

`A117272(A121908(n))`
-/

namespace A062601.P11041716461157880821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117272 (A121908 n).toNat

end

end A062601.P11041716461157880821

/-!
# A062602: Number of ways of writing n = p+c with p prime and c nonprime (1 or a composite number).

The programs for A062602, there is no canonical definition to state claims against.
-/

/-! ## A062602.P12493504848444618046

`A230980(n)-A073610(n+1)`
-/

namespace A062602.P12493504848444618046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A073610 (n + 1)

end

end A062602.P12493504848444618046

/-! ## A062602.P171403286937375966

`A110654(n)-A291708(n+1)`
-/

namespace A062602.P171403286937375966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A291708 (n + 1)

end

end A062602.P171403286937375966

/-! ## A062602.P13797790722849573795

`A302481(n+1)+A302480(n+1)`
-/

namespace A062602.P13797790722849573795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302481 (n + 1) + A302480 (n + 1)

end

end A062602.P13797790722849573795

/-! ## A062602.P15976741372333884415

`A295629(n+1)-A062610(n+1)`
-/

namespace A062602.P15976741372333884415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295629 (n + 1) - A062610 (n + 1)

end

end A062602.P15976741372333884415

/-! ## A062602.P14807363688369680304

`A295630(n+1)-A302479(n+1)`
-/

namespace A062602.P14807363688369680304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295630 (n + 1) - A302479 (n + 1)

end

end A062602.P14807363688369680304

/-! ## A062602.P2812859417195133095

`A224712(n+1)+char[A000040(n+1)]`
-/

namespace A062602.P2812859417195133095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062602.P2812859417195133095

/-! ## A062602.P16402264353096178481

`∑[char[A000040(n+1)]]-A073610(n+1)`
-/

namespace A062602.P16402264353096178481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A073610 (n + 1)

end

end A062602.P16402264353096178481

/-! ## A062602.P15408430458154244470

`∑[char[A018252(n+1)]]-A076608(n+1)`
-/

namespace A062602.P15408430458154244470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A076608 (n + 1)

end

end A062602.P15408430458154244470

/-! ## A062602.P9981323719221431784

`A000720(n+1)-(A073610(n+1)+A010051(n+1))`
-/

namespace A062602.P9981323719221431784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (A073610 (n + 1) + A010051 (n + 1))

end

end A062602.P9981323719221431784

/-! ## A062602.P14149105259244544112

`∑[A005171(n+1)]-(A076608(n+1)+A005171(n+1))`
-/

namespace A062602.P14149105259244544112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A076608 (n + 1) + A005171 (n + 1))

end

end A062602.P14149105259244544112

/-! ## A062602.P3725526435174901583

`A004526(n+1)-(A062610(n+1)+A061358(n+1))`
-/

namespace A062602.P3725526435174901583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - (A062610 (n + 1) + A061358 (n + 1))

end

end A062602.P3725526435174901583

/-! ## A062602.P15809802891324878630

`∑[A302048(n²)]-A073610(n+1)`
-/

namespace A062602.P15809802891324878630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073610 (n + 1)

end

end A062602.P15809802891324878630

/-!
# A062606: Numbers k such that 40^k - 39^k is prime.

The programs for A062606, there is no canonical definition to state claims against.
-/

/-! ## A062606.P11180611946943609077

`A220627(A299988(n)+A007297(n+1))`
-/

namespace A062606.P11180611946943609077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220627 (A299988 n + A007297 (n + 1)).toNat

end

end A062606.P11180611946943609077

/-!
# A062607: Numbers k such that 41^k - 40^k is prime.

The programs for A062607, there is no canonical definition to state claims against.
-/

/-! ## A062607.P11798598352051669904

`A257328(A062740(n)+n)`
-/

namespace A062607.P11798598352051669904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257328 (A062740 n + (n : ℤ)).toNat

end

end A062607.P11798598352051669904

/-!
# A062608: Numbers k such that 42^k - 41^k is prime.

The programs for A062608, there is no canonical definition to state claims against.
-/

/-! ## A062608.P15070153302995264471

`A052291(∑[gcd(n+1, n%3)])`
-/

namespace A062608.P15070153302995264471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062608.P15070153302995264471

/-!
# A062610: Number of ways of writing n = c1 + c2 with c1 and c2 nonprimes [=1 or composite].

The programs for A062610, there is no canonical definition to state claims against.
-/

/-! ## A062610.P975593595766330542

`ceil(A076608(n+1)/2)`
-/

namespace A062610.P975593595766330542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076608 (n + 1) : ℚ) / 2⌉

end

end A062610.P975593595766330542

/-! ## A062610.P13656837967666746814

`A110654(A076608(n+1))`
-/

namespace A062610.P13656837967666746814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A076608 (n + 1)).toNat

end

end A062610.P13656837967666746814

/-! ## A062610.P2155086445898275918

`A004526(A076608(n+1)+1)`
-/

namespace A062610.P2155086445898275918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (n + 1) + 1).toNat

end

end A062610.P2155086445898275918

/-! ## A062610.P13580291129859511570

`A008619(A076608(n+1)+1)-1`
-/

namespace A062610.P13580291129859511570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A076608 (n + 1) + 1).toNat - 1

end

end A062610.P13580291129859511570

/-! ## A062610.P9630654965965942393

`A065033(A076608(n+1)+2)-1`
-/

namespace A062610.P9630654965965942393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A076608 (n + 1) + 2).toNat - 1

end

end A062610.P9630654965965942393

/-! ## A062610.P6120559044898015892

`A057979(or(1, A076608(n+1)+1))`
-/

namespace A062610.P6120559044898015892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A076608 (n + 1) + 1)).toNat

end

end A062610.P6120559044898015892

/-! ## A062610.P3741691579341383029

`A171691(n+1)-A005171(n+1)`
-/

namespace A062610.P3741691579341383029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (n + 1) - A005171 (n + 1)

end

end A062610.P3741691579341383029

/-! ## A062610.P17389614845105106507

`A295629(n+1)-A062602(n+1)`
-/

namespace A062610.P17389614845105106507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295629 (n + 1) - A062602 (n + 1)

end

end A062610.P17389614845105106507

/-! ## A062610.P2560069131224776098

`A076608(n+1)-A302479(n+1)`
-/

namespace A062610.P2560069131224776098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (n + 1) - A302479 (n + 1)

end

end A062610.P2560069131224776098

/-! ## A062610.P17507550963894706194

`A076608(n+1)-A140106(A076608(n+1)+2)`
-/

namespace A062610.P17507550963894706194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (n + 1) - A140106 (A076608 (n + 1) + 2).toNat

end

end A062610.P17507550963894706194

/-! ## A062610.P3782917960578043704

`A004525(A076608(n+1)+and(1, A076608(n+1)))`
-/

namespace A062610.P3782917960578043704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A076608 (n + 1) + Int.land 1 (A076608 (n + 1))).toNat

end

end A062610.P3782917960578043704

/-! ## A062610.P18048087934829238973

`A347788(n+1)-(A302479(n+1)+A005171(n+1))`
-/

namespace A062610.P18048087934829238973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347788 (n + 1) - (A302479 (n + 1) + A005171 (n + 1))

end

end A062610.P18048087934829238973

/-! ## A062610.P11065299025166801803

`A004526(n+1)-(A062602(n+1)+A061358(n+1))`
-/

namespace A062610.P11065299025166801803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - (A062602 (n + 1) + A061358 (n + 1))

end

end A062610.P11065299025166801803

/-! ## A062610.P10856025659074392526

`A345039(n+1)+A185279(n+1)`
-/

namespace A062610.P10856025659074392526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345039 (n + 1) + A185279 (n + 1)

end

end A062610.P10856025659074392526

/-! ## A062610.P10690149826855054488

`A002265(2*(A076608(n+1)+1))`
-/

namespace A062610.P10690149826855054488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A076608 (n + 1) + 1)).toNat

end

end A062610.P10690149826855054488

/-! ## A062610.P13510391260824011412

`A002265(A076608(n+1)+A076608(n+1)+2)`
-/

namespace A062610.P13510391260824011412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A076608 (n + 1) + (A076608 (n + 1) + 2)).toNat

end

end A062610.P13510391260824011412

/-! ## A062610.P3413652839876452076

`A347788(n+1)-A358638(n+1)`
-/

namespace A062610.P3413652839876452076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347788 (n + 1) - A358638 (n + 1)

end

end A062610.P3413652839876452076

/-!
# A062613: Numbers k such that 47^k - 46^k is prime.

The programs for A062613, there is no canonical definition to state claims against.
-/

/-! ## A062613.P7090515543393581034

`A179240(A223331(n+1))`
-/

namespace A062613.P7090515543393581034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179240 (A223331 (n + 1)).toNat

end

end A062613.P7090515543393581034

/-!
# A062614: Squarefree parts of products of numbers of faces of Platonic solids.

The programs for A062614, there is no canonical definition to state claims against.
-/

/-! ## A062614.P8841811325878252922

`A007913(A062554(n+1))`
-/

namespace A062614.P8841811325878252922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062554 (n + 1)).toNat

end

end A062614.P8841811325878252922

/-! ## A062614.P11736192079488856089

`A062554(ceil((2*n+1)/2))/A008833(A062554(n+1))`
-/

namespace A062614.P11736192079488856089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062554 ⌈(2 * n + 1 : ℚ) / 2⌉.toNat : ℚ) / (A008833 (A062554 (n + 1)).toNat : ℚ)

end

end A062614.P11736192079488856089

/-! ## A062614.P13114640650538255281

`A007947(A062554(n+1)/A008833(A062554(n+1)))`
-/

namespace A062614.P13114640650538255281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A062554 (n + 1) : ℚ) / (A008833 (A062554 (n + 1)).toNat : ℚ))).toNat

end

end A062614.P13114640650538255281

/-! ## A062614.P7466131311644222917

`A076686(A062554(n+1)+char[1])`
-/

namespace A062614.P7466131311644222917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (A062554 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A062614.P7466131311644222917

/-!
# A062616: Numbers k such that 50^k - 49^k is a prime.

The programs for A062616, there is no canonical definition to state claims against.
-/

/-! ## A062616.P10927436159525097314

`p?[A307519(n+1)+A166635(n+1)]`
-/

namespace A062616.P10927436159525097314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307519 (n + 1) + A166635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062616.P10927436159525097314

/-!
# A062619: Numbers k such that 53^k - 52^k is a prime.

The programs for A062619, there is no canonical definition to state claims against.
-/

/-! ## A062619.P14660485610129290083

`A074593(A196723(n)+A074622(n)+n)`
-/

namespace A062619.P14660485610129290083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074593 (A196723 n + A074622 n + (n : ℤ)).toNat

end

end A062619.P14660485610129290083

/-!
# A062624: Number of integers less than A000108(n) relatively prime to A000108(n).

The programs for A062624, the canonical program `A062624.P14204432833030423673` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062624 has offset 0).

The definition of A062624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062624.P14204432833030423673

`A000010(A000108(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062624

/-- `A000010(A000108(n))` -/
def P14204432833030423673.Spec : Prop :=
  ∀ n, P14204432833030423673.a n = A062624 n

theorem P14204432833030423673.correct : P14204432833030423673.Spec := by
  intro n
  simp only [A062624]

end A062624

/-! ## A062624.P10259816634815854729

`A000010(C(2*n, n)/(n+1))`
-/

namespace A062624.P10259816634815854729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat

end

end A062624.P10259816634815854729

namespace A062624

/-- `A000010(C(2*n, n)/(n+1))` -/
def P10259816634815854729.Spec : Prop :=
  ∀ n, P10259816634815854729.a n = A062624 n

end A062624

/-! ## A062624.P16801504183453588989

`A000010(sqrt(floor((C(2*n, n)/(2*n-(n-1)))²)))`
-/

namespace A062624.P16801504183453588989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (⌊((Nat.choose (2 * n) n : ℚ) / ((2 * n : ℤ) - ((n : ℤ) - 1) : ℚ)) ^ 2⌋ : ℝ))).toNat

end

end A062624.P16801504183453588989

namespace A062624

/-- `A000010(sqrt(floor((C(2*n, n)/(2*n-(n-1)))²)))` -/
def P16801504183453588989.Spec : Prop :=
  ∀ n, P16801504183453588989.a n = A062624 n

end A062624

/-! ## A062624.P1666843171625089990

`A000010(abs(A168491(n)))`
-/

namespace A062624.P1666843171625089990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A168491 n|.toNat

end

end A062624.P1666843171625089990

namespace A062624

/-- `A000010(abs(A168491(n)))` -/
def P1666843171625089990.Spec : Prop :=
  ∀ n, P1666843171625089990.a n = A062624 n

end A062624

/-! ## A062624.P2559838423756475278

`A000010(A008313(n²))`
-/

namespace A062624.P2559838423756475278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008313 (n ^ 2)).toNat

end

end A062624.P2559838423756475278

namespace A062624

/-- `A000010(A008313(n²))` -/
def P2559838423756475278.Spec : Prop :=
  ∀ n, P2559838423756475278.a n = A062624 n

end A062624

/-!
# A062627: a(n) = mu(n) * Catalan(n).

The programs for A062627, the canonical program `A062627.P16947834308808858695` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062627 has offset 0).

The definition of A062627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062627.P6859714691610578044

`A000108(n)*A008683(round(sqrt(n²+1)))`
-/

namespace A062627.P6859714691610578044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A008683 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A062627.P6859714691610578044

namespace A062627

/-- `A000108(n)*A008683(round(sqrt(n²+1)))` -/
def P6859714691610578044.Spec : Prop :=
  ∀ n, P6859714691610578044.a n = A062627 n

end A062627

/-! ## A062627.P12439279772279151294

`A008683(round(sqrt(n²+1)))*A120588(n+1)`
-/

namespace A062627.P12439279772279151294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat * A120588 (n + 1)

end

end A062627.P12439279772279151294

namespace A062627

/-- `A008683(round(sqrt(n²+1)))*A120588(n+1)` -/
def P12439279772279151294.Spec : Prop :=
  ∀ n, P12439279772279151294.a n = A062627 n

end A062627

/-! ## A062627.P477635657219442043

`(A120304(n)+2)*A008683(round(sqrt(n²+1)))`
-/

namespace A062627.P477635657219442043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * A008683 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A062627.P477635657219442043

namespace A062627

/-- `(A120304(n)+2)*A008683(round(sqrt(n²+1)))` -/
def P477635657219442043.Spec : Prop :=
  ∀ n, P477635657219442043.a n = A062627 n

end A062627

/-! ## A062627.P10105133287808597749

`(A246604(n)+n)*A008683(round(sqrt(n²+1)))`
-/

namespace A062627.P10105133287808597749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246604 n + (n : ℤ)) * A008683 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A062627.P10105133287808597749

namespace A062627

/-- `(A246604(n)+n)*A008683(round(sqrt(n²+1)))` -/
def P10105133287808597749.Spec : Prop :=
  ∀ n, P10105133287808597749.a n = A062627 n

end A062627

/-! ## A062627.P1778227928436431788

`A008683(A028310(n))*A000108(n)`
-/

namespace A062627.P1778227928436431788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028310 n).toNat * A000108 n

end

end A062627.P1778227928436431788

namespace A062627

/-- `A008683(A028310(n))*A000108(n)` -/
def P1778227928436431788.Spec : Prop :=
  ∀ n, P1778227928436431788.a n = A062627 n

end A062627

/-! ## A062627.P14401612298782432140

`A008683(A028310(n))*A126120(2*n)`
-/

namespace A062627.P14401612298782432140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028310 n).toNat * A126120 (2 * n)

end

end A062627.P14401612298782432140

namespace A062627

/-- `A008683(A028310(n))*A126120(2*n)` -/
def P14401612298782432140.Spec : Prop :=
  ∀ n, P14401612298782432140.a n = A062627 n

end A062627

/-! ## A062627.P14590027568056665290

`A008683(A007318(A000124(n)))*A000108(n)`
-/

namespace A062627.P14590027568056665290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007318 (A000124 n).toNat).toNat * A000108 n

end

end A062627.P14590027568056665290

namespace A062627

/-- `A008683(A007318(A000124(n)))*A000108(n)` -/
def P14590027568056665290.Spec : Prop :=
  ∀ n, P14590027568056665290.a n = A062627 n

end A062627

/-! ## A062627.P16024907780405641720

`A008683(A162514(A133263(n)))*A000108(n)`
-/

namespace A062627.P16024907780405641720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A162514 (A133263 n).toNat).toNat * A000108 n

end

end A062627.P16024907780405641720

namespace A062627

/-- `A008683(A162514(A133263(n)))*A000108(n)` -/
def P16024907780405641720.Spec : Prop :=
  ∀ n, P16024907780405641720.a n = A062627 n

end A062627

/-! ## A062627.P16947834308808858695

`A000108(n)*A054527(A034856(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A062627

/-- `A000108(n)*A054527(A034856(n+1))` -/
def P16947834308808858695.Spec : Prop :=
  ∀ n, P16947834308808858695.a n = A062627 n

theorem P16947834308808858695.correct : P16947834308808858695.Spec := by
  intro n
  simp only [A062627]

end A062627

/-!
# A062630: Numbers k such that 64^k - 63^k is prime.

The programs for A062630, there is no canonical definition to state claims against.
-/

/-! ## A062630.P16463764951482447576

`p?[∑[A185195(A142465(n))]]`
-/

namespace A062630.P16463764951482447576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A142465 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062630.P16463764951482447576

/-! ## A062630.P4002863639839676539

`p?[or(A048671(n+1), A090460(n))]`
-/

namespace A062630.P4002863639839676539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048671 (n + 1)) (A090460 (n + 15))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062630.P4002863639839676539

/-!
# A062632: Numbers k such that 66^k - 65^k is prime.

The programs for A062632, there is no canonical definition to state claims against.
-/

/-! ## A062632.P14016665956622926349

`p?[xor(A063958(n+5), A106446(3*n+2))]`
-/

namespace A062632.P14016665956622926349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063958 (n + 5)) (A106446 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062632.P14016665956622926349

/-!
# A062634: Numbers k such that every divisor of k contains the digit 1.

The programs for A062634, there is no canonical definition to state claims against.
-/

/-! ## A062634.P3037492421976932152

`eq[A266586(A017293(n)), A326850(n)]`
-/

namespace A062634.P3037492421976932152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266586 (A017293 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062634.P3037492421976932152

/-! ## A062634.P16065867919217643230

`eq[A266586(A017305(n)), A326850(n)]`
-/

namespace A062634.P16065867919217643230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266586 (A017305 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062634.P16065867919217643230

/-! ## A062634.P7702135416785103238

`eq[A266586(A017329(n)), A326850(n)]`
-/

namespace A062634.P7702135416785103238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266586 (A017329 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062634.P7702135416785103238

/-! ## A062634.P17774567372733534592

`eq[A266586(A017341(n)), A326850(n)]`
-/

namespace A062634.P17774567372733534592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266586 (A017341 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062634.P17774567372733534592

/-! ## A062634.P1598519244948657090

`eq[A266586(A017377(n)), A326850(n)]`
-/

namespace A062634.P1598519244948657090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266586 (A017377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062634.P1598519244948657090

/-!
# A062641: Numbers k such that 75^k - 74^k is prime.

The programs for A062641, there is no canonical definition to state claims against.
-/

/-! ## A062641.P7717843564401363156

`p?[∑[xor(3, A280189(n+1))]]`
-/

namespace A062641.P7717843564401363156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A280189 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062641.P7717843564401363156

/-!
# A062642: Numbers k such that 76^k - 75^k is prime.

The programs for A062642, there is no canonical definition to state claims against.
-/

/-! ## A062642.P8916516041584307766

`p?[∑[A191841(A187342(n+1))]]`
-/

namespace A062642.P8916516041584307766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191841 (A187342 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062642.P8916516041584307766

/-!
# A062648: Numbers k such that 82^k - 81^k is prime.

The programs for A062648, there is no canonical definition to state claims against.
-/

/-! ## A062648.P17748922467312771959

`p?[∑[A246123(A025581(n))]]`
-/

namespace A062648.P17748922467312771959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246123 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062648.P17748922467312771959

/-!
# A062649: Composite numbers with property that every divisor contains the digit 1.

The programs for A062649, there is no canonical definition to state claims against.
-/

/-! ## A062649.P14353060330762858460

`∩[A038511(n+1), A062634(n+1)]`
-/

namespace A062649.P14353060330762858460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P14353060330762858460

/-! ## A062649.P351074468526353122

`∩[A062634(n+1), A271630(n+1)]`
-/

namespace A062649.P351074468526353122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P351074468526353122

/-! ## A062649.P15202865394123898632

`filter[A062634(n+1), A066247(#)]`
-/

namespace A062649.P15202865394123898632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A062649.P15202865394123898632

/-! ## A062649.P8551182374032233196

`filter[A062634(n+1), A202238(#)]`
-/

namespace A062649.P8551182374032233196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A062649.P8551182374032233196

/-! ## A062649.P789166926173847451

`filter[A062634(n+1), A323162(#)]`
-/

namespace A062649.P789166926173847451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A062649.P789166926173847451

/-! ## A062649.P17402287188083762969

`filter[A062634(n+2), A005171(#)]`
-/

namespace A062649.P17402287188083762969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A062649.P17402287188083762969

/-! ## A062649.P5206159880736249296

`filter[A062634(n+2), A292438(#)]`
-/

namespace A062649.P5206159880736249296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A062649.P5206159880736249296

/-! ## A062649.P6809571211195785574

`∩[A038510(n+1), A062634(n+1)]`
-/

namespace A062649.P6809571211195785574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P6809571211195785574

/-! ## A062649.P15717372445671428793

`∩[A062634(n+1), A133630(n+1)]`
-/

namespace A062649.P15717372445671428793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P15717372445671428793

/-! ## A062649.P12614560954299651743

`∩[A052054(n+1), A062634(n+1)]`
-/

namespace A062649.P12614560954299651743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P12614560954299651743

/-! ## A062649.P10991293881464094605

`∩[A038509(n+1), A062634(n+1)]`
-/

namespace A062649.P10991293881464094605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P10991293881464094605

/-! ## A062649.P18176220215665703512

`∩[A062634(n+1), A069063(n+1)]`
-/

namespace A062649.P18176220215665703512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P18176220215665703512

/-! ## A062649.P2904640424604618031

`∩[A053795(n+1), A062634(n+1)]`
-/

namespace A062649.P2904640424604618031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P2904640424604618031

/-! ## A062649.P10862887870039477589

`∩[A062634(n+1), A067887(n+1)]`
-/

namespace A062649.P10862887870039477589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P10862887870039477589

/-! ## A062649.P16470650305510613026

`∩[A062634(n+1), A071904(n+1)]`
-/

namespace A062649.P16470650305510613026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P16470650305510613026

/-! ## A062649.P2272675228277194985

`∩[A062634(n+1), A333039(n+1)]`
-/

namespace A062649.P2272675228277194985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P2272675228277194985

/-! ## A062649.P5866858854861959733

`∩[A062634(n+1), A270574(n+1)]`
-/

namespace A062649.P5866858854861959733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P5866858854861959733

/-! ## A062649.P3081640587058161584

`∩[A052202(n+1), A062634(n+1)]`
-/

namespace A062649.P3081640587058161584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P3081640587058161584

/-! ## A062649.P2466701153828063126

`∩[A062634(n+1), A078505(n+1)]`
-/

namespace A062649.P2466701153828063126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P2466701153828063126

/-! ## A062649.P10501080592363751051

`∩[A062634(n+1), A083247(n+1)]`
-/

namespace A062649.P10501080592363751051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062649.P10501080592363751051

/-!
# A062653: Every divisor (except 1) contains the digit 2.

The programs for A062653, there is no canonical definition to state claims against.
-/

/-! ## A062653.P10517086440645272974

`∪[A062664(n+1), A208272(n+1)]`
-/

namespace A062653.P10517086440645272974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062653.P10517086440645272974

/-! ## A062653.P18222762330968783203

`∏{e}[3*a(n-1), A208272(#)]` with `a(0)=3`
-/

namespace A062653.P18222762330968783203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A208272 (Nat.factorization (f1 n) p)

end

end A062653.P18222762330968783203

/-! ## A062653.P3466381882040009006

`A048146(p?[A092451(n)]²)`
-/

namespace A062653.P3466381882040009006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A062653.P3466381882040009006

/-! ## A062653.P18260593603987978619

`A048146(A208272(n+1)²)`
-/

namespace A062653.P18260593603987978619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A208272 (n + 1) ^ 2).toNat

end

end A062653.P18260593603987978619

/-! ## A062653.P16372626834017476382

`A208272(n+1)%A241899(n)²`
-/

namespace A062653.P16372626834017476382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208272 (n + 1)) (A241899 (n + 10) ^ 2)

end

end A062653.P16372626834017476382

/-!
# A062654: Numbers k such that 88^k - 87^k is prime or a strong pseudoprime.

The programs for A062654, there is no canonical definition to state claims against.
-/

/-! ## A062654.P3952350973411078759

`A216882(A216859(n)+A216826(n+1))`
-/

namespace A062654.P3952350973411078759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (A216859 n + A216826 (n + 1)).toNat

end

end A062654.P3952350973411078759

/-!
# A062662: Numbers k such that 96^k - 95^k is prime.

The programs for A062662, there is no canonical definition to state claims against.
-/

/-! ## A062662.P11622323541359226508

`A119660(A154906(n+1))`
-/

namespace A062662.P11622323541359226508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (A154906 (n + 1)).toNat

end

end A062662.P11622323541359226508

/-!
# A062664: Composite and every divisor (except for 1) contains the digit 2.

The programs for A062664, there is no canonical definition to state claims against.
-/

/-! ## A062664.P9548625462916025717

`filter[A062653(n+1), A005171(#)]`
-/

namespace A062664.P9548625462916025717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A062664.P9548625462916025717

/-! ## A062664.P2693038345888724758

`filter[A062653(n+1), A066247(#)]`
-/

namespace A062664.P2693038345888724758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A062664.P2693038345888724758

/-! ## A062664.P593902057271500015

`filter[A062653(n+1), A202238(#)]`
-/

namespace A062664.P593902057271500015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A062664.P593902057271500015

/-! ## A062664.P15338693267536125947

`filter[A062653(n+1), A292438(#)]`
-/

namespace A062664.P15338693267536125947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A062664.P15338693267536125947

/-! ## A062664.P12306366079403664872

`∩[A052054(n+1), A062653(n+1)]`
-/

namespace A062664.P12306366079403664872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062664.P12306366079403664872

/-! ## A062664.P2262237788095110777

`∩[A062653(n+1), A282668(n+1)]`
-/

namespace A062664.P2262237788095110777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062664.P2262237788095110777

/-! ## A062664.P2386079606747462976

`∩[A062653(n+1), A067893(n+1)]`
-/

namespace A062664.P2386079606747462976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062664.P2386079606747462976

/-! ## A062664.P14244590419216169422

`∩[A062653(n+1), A208273(n+1)]`
-/

namespace A062664.P14244590419216169422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062664.P14244590419216169422

/-! ## A062664.P18301052040784256219

`∩[A062653(n+1), A067809(n+1)]`
-/

namespace A062664.P18301052040784256219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062664.P18301052040784256219

/-! ## A062664.P18195827402514422026

`filter[A062653(n+1), A383575(#)]`
-/

namespace A062664.P18195827402514422026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A062664.P18195827402514422026

/-! ## A062664.P12128823719966279969

`filter[A062653(n+1), A385055(#)]`
-/

namespace A062664.P12128823719966279969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385055 (f1 j).toNat = 1) n)

end

end A062664.P12128823719966279969

/-!
# A062666: Numbers k such that 100^k - 99^k is prime.

The programs for A062666, there is no canonical definition to state claims against.
-/

/-! ## A062666.P15423972916393813585

`p?[A006368(A124425(n))]`
-/

namespace A062666.P15423972916393813585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A124425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062666.P15423972916393813585

/-!
# A062667: Every divisor (except 1) contains the digit 3.

The programs for A062667, there is no canonical definition to state claims against.
-/

/-! ## A062667.P8921288900995334431

`∪[A062668(n+1), A212525(n+1)]`
-/

namespace A062667.P8921288900995334431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062667.P8921288900995334431

/-!
# A062668: Composite and every divisor (except 1) contains the digit 3.

The programs for A062668, there is no canonical definition to state claims against.
-/

/-! ## A062668.P3381631683570148609

`filter[A062667(n+1), A005171(#)]`
-/

namespace A062668.P3381631683570148609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A062668.P3381631683570148609

/-! ## A062668.P11021900307805221709

`∩[A052054(n+1), A062667(n+1)]`
-/

namespace A062668.P11021900307805221709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062668.P11021900307805221709

/-! ## A062668.P8534816623830339864

`∩[A053795(n+1), A062667(n+1)]`
-/

namespace A062668.P8534816623830339864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062668.P8534816623830339864

/-! ## A062668.P642316302832942083

`∩[A062667(n+1), A100490(n)]`
-/

namespace A062668.P642316302832942083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062668.P642316302832942083

/-! ## A062668.P2180266623287808931

`∩[A062667(n+1), A067800(n+1)]`
-/

namespace A062668.P2180266623287808931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062668.P2180266623287808931

/-! ## A062668.P5445035923366528201

`∩[A014076(n+1), A062667(n+1)]`
-/

namespace A062668.P5445035923366528201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062668.P5445035923366528201

/-! ## A062668.P2927607332560665436

`∩[A062667(n+1), A067887(n+1)]`
-/

namespace A062668.P2927607332560665436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062668.P2927607332560665436

/-! ## A062668.P16570308338727831403

`∩[A062667(n+1), A071904(n+1)]`
-/

namespace A062668.P16570308338727831403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062668.P16570308338727831403

/-! ## A062668.P18349577297424497850

`∩[A062667(n+1), A333039(n+1)]`
-/

namespace A062668.P18349577297424497850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062668.P18349577297424497850

/-!
# A062669: Every divisor (except 1) contains the digit 4.

The programs for A062669, there is no canonical definition to state claims against.
-/

/-! ## A062669.P13792612634504660557

`∪[A062670(n+1), A284290(n+1)]`
-/

namespace A062669.P13792612634504660557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062669.P13792612634504660557

/-! ## A062669.P8653840269455816566

`p?[A342768(A011534(n+1))]`
-/

namespace A062669.P8653840269455816566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342768 (A011534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062669.P8653840269455816566

/-! ## A062669.P757515755559263483

`A284290(n+1)^A185246(n)!`
-/

namespace A062669.P757515755559263483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1) ^ Nat.factorial (A185246 n).toNat

end

end A062669.P757515755559263483

/-! ## A062669.P18351077605104846103

`∩[A272477(n+1), A284290(n+1)]`
-/

namespace A062669.P18351077605104846103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062669.P18351077605104846103

/-! ## A062669.P12125800395905590651

`A006530(A036065(n)*A284290(n+1))`
-/

namespace A062669.P12125800395905590651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036065 n * A284290 (n + 1)).toNat

end

end A062669.P12125800395905590651

/-! ## A062669.P2135739701567452917

`∩[A245757(n+1), A284290(n+1)]`
-/

namespace A062669.P2135739701567452917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062669.P2135739701567452917

/-! ## A062669.P11163302568836612242

`∩[A139711(n+1), A284290(n+1)]`
-/

namespace A062669.P11163302568836612242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062669.P11163302568836612242

/-! ## A062669.P15541674622050676590

`∩[A161153(n+1), A284290(n+1)]`
-/

namespace A062669.P15541674622050676590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062669.P15541674622050676590

/-!
# A062671: Every divisor (except 1) contains the digit 5.

The programs for A062671, there is no canonical definition to state claims against.
-/

/-! ## A062671.P13123213790330629235

`∪[A062672(n+1), A257667(n+1)]`
-/

namespace A062671.P13123213790330629235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062671.P13123213790330629235

/-! ## A062671.P2292390907060944241

`A004086(A004086(2*A062672(n+1)))`
-/

namespace A062671.P2292390907060944241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (2 * A062672 (n + 1)).toNat).toNat

end

end A062671.P2292390907060944241

/-! ## A062671.P16166816386743925189

`or(A062672(n+1)/5, A333058(A124625(n)))`
-/

namespace A062671.P16166816386743925189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A062672 (n + 1) : ℚ) / 5)) (A333058 (A124625 n).toNat)

end

end A062671.P16166816386743925189

/-! ## A062671.P17583807826680260685

`A062672(n+1)/A305900(A142023(3*(n+1)))`
-/

namespace A062671.P17583807826680260685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062672 (n + 1) : ℚ) / (A305900 (A142023 (3 * (n + 1))).toNat : ℚ)

end

end A062671.P17583807826680260685

/-! ## A062671.P11420204398964799222

`A335462(A066446(3*n+5))+A322982(A062672(n+1))`
-/

namespace A062671.P11420204398964799222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A066446 (3 * n + 5)).toNat + A322982 (A062672 (n + 1)).toNat

end

end A062671.P11420204398964799222

/-! ## A062671.P12812803104593228799

`A135416(A033570(n+1))+A062672(n+1)/5`
-/

namespace A062671.P12812803104593228799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135416 (A033570 (n + 1)).toNat : ℚ) + (A062672 (n + 1) : ℚ) / 5

end

end A062671.P12812803104593228799

/-! ## A062671.P13787446600409106669

`A062672(n+1)/A094473(A017281(n))`
-/

namespace A062671.P13787446600409106669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062672 (n + 1) : ℚ) / (A094473 (A017281 n).toNat : ℚ)

end

end A062671.P13787446600409106669

/-! ## A062671.P12692142132998706117

`A062672(n+1)/A094473(A017305(n))`
-/

namespace A062671.P12692142132998706117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062672 (n + 1) : ℚ) / (A094473 (A017305 n).toNat : ℚ)

end

end A062671.P12692142132998706117

/-! ## A062671.P11520969530930841479

`A062672(n+1)/A000001(A054397(n+1))`
-/

namespace A062671.P11520969530930841479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062672 (n + 1) : ℚ) / (A000001 (A054397 (n + 1)).toNat : ℚ)

end

end A062671.P11520969530930841479

/-! ## A062671.P16757749942192080338

`A062672(n+1)/5%A249912(n+1)`
-/

namespace A062671.P16757749942192080338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062672 (n + 1) : ℚ) / (Int.tmod 5 (A249912 (n + 1)) : ℚ)

end

end A062671.P16757749942192080338

/-! ## A062671.P16902732454373123175

`A000089(A117950(n))+A062672(n+1)/5`
-/

namespace A062671.P16902732454373123175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000089 (A117950 n).toNat : ℚ) + (A062672 (n + 1) : ℚ) / 5

end

end A062671.P16902732454373123175

/-!
# A062672: Composite and every divisor (except 1) contains the digit 5.

The programs for A062672, there is no canonical definition to state claims against.
-/

/-! ## A062672.P737406435958567223

`record[A171435(A062671(n+2))]`
-/

namespace A062672.P737406435958567223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A062671 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062672.P737406435958567223

/-! ## A062672.P12995789944053045687

`filter[A062671(n+1), A005171(#)]`
-/

namespace A062672.P12995789944053045687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A062672.P12995789944053045687

/-! ## A062672.P2559342091444502074

`filter[A062671(n+1), A066247(#)]`
-/

namespace A062672.P2559342091444502074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A062672.P2559342091444502074

/-! ## A062672.P6844185029763398168

`filter[A062671(n+1), A202238(#)]`
-/

namespace A062672.P6844185029763398168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A062672.P6844185029763398168

/-! ## A062672.P11285674154323970576

`filter[A062671(n+1), A292438(#)]`
-/

namespace A062672.P11285674154323970576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A062672.P11285674154323970576

/-! ## A062672.P3974583373294353505

`filter[A062671(n+1), A323162(#)]`
-/

namespace A062672.P3974583373294353505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A062672.P3974583373294353505

/-! ## A062672.P2672097806207221581

`∩[A052054(n+1), A062671(n+1)]`
-/

namespace A062672.P2672097806207221581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P2672097806207221581

/-! ## A062672.P17060013941662428405

`∩[A062671(n+1), A067794(n+1)]`
-/

namespace A062672.P17060013941662428405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P17060013941662428405

/-! ## A062672.P10323589673304867152

`∩[A062671(n+1), A067793(n+1)]`
-/

namespace A062672.P10323589673304867152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P10323589673304867152

/-! ## A062672.P10792667869779593553

`∩[A038509(n+1), A062671(n+1)]`
-/

namespace A062672.P10792667869779593553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P10792667869779593553

/-! ## A062672.P12029624831908096295

`∩[A062671(n+1), A390467(n+1)]`
-/

namespace A062672.P12029624831908096295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P12029624831908096295

/-! ## A062672.P15886623434620303053

`∩[A062671(n+1), A069063(n+1)]`
-/

namespace A062672.P15886623434620303053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P15886623434620303053

/-! ## A062672.P7004280303607068420

`∩[A062671(n+1), A090818(n+1)]`
-/

namespace A062672.P7004280303607068420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P7004280303607068420

/-! ## A062672.P16786482334757690928

`∩[A062671(n+1), A067800(n+1)]`
-/

namespace A062672.P16786482334757690928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P16786482334757690928

/-! ## A062672.P3119983007848460810

`∩[A014076(n+1), A062671(n+1)]`
-/

namespace A062672.P3119983007848460810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P3119983007848460810

/-! ## A062672.P11883845895112907984

`∩[A062671(n+1), A067887(n+1)]`
-/

namespace A062672.P11883845895112907984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P11883845895112907984

/-! ## A062672.P5916317407295185808

`∩[A060976(n+1), A062671(n+1)]`
-/

namespace A062672.P5916317407295185808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062672.P5916317407295185808

/-! ## A062672.P16019497619283960333

`A008706(A062671(n+1))%A102168(A163096(n+1))`
-/

namespace A062672.P16019497619283960333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A062671 (n + 1)).toNat) (A102168 (A163096 (n + 1)).toNat)

end

end A062672.P16019497619283960333

/-! ## A062672.P6582812236603660068

`A062671(n+1)*A094473(A005408(A004086(n)))`
-/

namespace A062672.P6582812236603660068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1) * A094473 (A005408 (A004086 n).toNat).toNat

end

end A062672.P6582812236603660068

/-! ## A062672.P14255148795301845296

`A001222(A132955(n+2))*A008706(A062671(n+1))`
-/

namespace A062672.P14255148795301845296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A132955 (n + 2)).toNat * A008706 (A062671 (n + 1)).toNat

end

end A062672.P14255148795301845296

/-!
# A062673: Every divisor (except 1) contains the digit 6.

The programs for A062673, the canonical program `A062673.P17258762634191360488` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062673 has offset 1).

The definition of A062673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062673.P17258762634191360488

`p?[A011536(A110654(A008486(n)))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062673

/-- `p?[A011536(A110654(A008486(n)))]` -/
def P17258762634191360488.Spec : Prop :=
  ∀ n, P17258762634191360488.a n = A062673 (n + 1)

theorem P17258762634191360488.correct : P17258762634191360488.Spec := by
  intro n
  simp only [A062673, Nat.add_sub_cancel]

end A062673

/-! ## A062673.P11794453956964761575

`p?[A257223(n+1)]`
-/

namespace A062673.P11794453956964761575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062673.P11794453956964761575

namespace A062673

/-- `p?[A257223(n+1)]` -/
def P11794453956964761575.Spec : Prop :=
  ∀ n, P11794453956964761575.a n = A062673 (n + 1)

end A062673

/-! ## A062673.P4948882654164634089

`∩[A000040(n+1), A257223(n+1)]`
-/

namespace A062673.P4948882654164634089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062673.P4948882654164634089

namespace A062673

/-- `∩[A000040(n+1), A257223(n+1)]` -/
def P4948882654164634089.Spec : Prop :=
  ∀ n, (P4948882654164634089.a n : ℤ) = A062673 (n + 1)

end A062673

/-! ## A062673.P9666903397970049474

`∩[A004139(n+1), A257223(n+1)]`
-/

namespace A062673.P9666903397970049474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062673.P9666903397970049474

namespace A062673

/-- `∩[A004139(n+1), A257223(n+1)]` -/
def P9666903397970049474.Spec : Prop :=
  ∀ n, (P9666903397970049474.a n : ℤ) = A062673 (n + 1)

end A062673

/-! ## A062673.P6373978036114292830

`∩[A006005(n+1), A257223(n+1)]`
-/

namespace A062673.P6373978036114292830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062673.P6373978036114292830

namespace A062673

/-- `∩[A006005(n+1), A257223(n+1)]` -/
def P6373978036114292830.Spec : Prop :=
  ∀ n, (P6373978036114292830.a n : ℤ) = A062673 (n + 1)

end A062673

/-! ## A062673.P9184755126808263227

`∩[A008578(n+1), A257223(n+1)]`
-/

namespace A062673.P9184755126808263227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062673.P9184755126808263227

namespace A062673

/-- `∩[A008578(n+1), A257223(n+1)]` -/
def P9184755126808263227.Spec : Prop :=
  ∀ n, (P9184755126808263227.a n : ℤ) = A062673 (n + 1)

end A062673

/-! ## A062673.P3900453686071971269

`∩[A033946(n+1), A257223(n+1)]`
-/

namespace A062673.P3900453686071971269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062673.P3900453686071971269

namespace A062673

/-- `∩[A033946(n+1), A257223(n+1)]` -/
def P3900453686071971269.Spec : Prop :=
  ∀ n, (P3900453686071971269.a n : ℤ) = A062673 (n + 1)

end A062673

/-! ## A062673.P8144615808837767408

`∩[A045319(n+1), A257223(n+1)]`
-/

namespace A062673.P8144615808837767408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062673.P8144615808837767408

namespace A062673

/-- `∩[A045319(n+1), A257223(n+1)]` -/
def P8144615808837767408.Spec : Prop :=
  ∀ n, (P8144615808837767408.a n : ℤ) = A062673 (n + 1)

end A062673

/-!
# A062675: Every divisor (except 1) contains the digit 7.

The programs for A062675, there is no canonical definition to state claims against.
-/

/-! ## A062675.P17648790937640175503

`∪[A062676(n+1), A257668(n+1)]`
-/

namespace A062675.P17648790937640175503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062675.P17648790937640175503

/-! ## A062675.P7118120531731467424

`p?[A011537(A118759(n+1))]`
-/

namespace A062675.P7118120531731467424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (A118759 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062675.P7118120531731467424

/-! ## A062675.P17456230356088955054

`A257668(n+1)+A000007(A000041(n))`
-/

namespace A062675.P17456230356088955054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1) + A000007 (A000041 n).toNat

end

end A062675.P17456230356088955054

/-! ## A062675.P12447480954723670559

`A006530(A144151(n)*A257668(n+1))`
-/

namespace A062675.P12447480954723670559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A144151 n * A257668 (n + 1)).toNat

end

end A062675.P12447480954723670559

/-! ## A062675.P11877887544983452448

`A257668(n+1)+A080300(A161612(n+1))`
-/

namespace A062675.P11877887544983452448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1) + A080300 (A161612 (n + 1)).toNat

end

end A062675.P11877887544983452448

/-!
# A062676: Composite and every divisor (except 1) contains the digit 7.

The programs for A062676, there is no canonical definition to state claims against.
-/

/-! ## A062676.P18095709444688009165

`∩[A062675(n+1), A158725(n+1)]`
-/

namespace A062676.P18095709444688009165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062676.P18095709444688009165

/-! ## A062676.P8715174245889695288

`∩[A038510(n+1), A062675(n+1)]`
-/

namespace A062676.P8715174245889695288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062676.P8715174245889695288

/-! ## A062676.P1685877427002089413

`∩[A038509(n+1), A062675(n+1)]`
-/

namespace A062676.P1685877427002089413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062676.P1685877427002089413

/-! ## A062676.P18434215102945645443

`∩[A052202(n+1), A062675(n+1)]`
-/

namespace A062676.P18434215102945645443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062676.P18434215102945645443

/-!
# A062681: Numbers that are sums of 2 or more consecutive squares in more than 1 way.

The programs for A062681, there is no canonical definition to state claims against.
-/

/-! ## A062681.P11184194008818364410

`filter[A130052(n+1), A132350(#)]`
-/

namespace A062681.P11184194008818364410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A062681.P11184194008818364410

/-! ## A062681.P18294801575444543664

`filter[A130052(n+1), A267594(#)]`
-/

namespace A062681.P18294801575444543664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A062681.P18294801575444543664

/-! ## A062681.P9047432459062158207

`filter[A130052(n+1), A267612(#)]`
-/

namespace A062681.P9047432459062158207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A062681.P9047432459062158207

/-! ## A062681.P17836744718870259890

`filter[A130052(n+1), A267635(#)]`
-/

namespace A062681.P17836744718870259890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A062681.P17836744718870259890

/-! ## A062681.P16569068954433023731

`record[A130052(A130026(n+2)+1)]`
-/

namespace A062681.P16569068954433023731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (A130026 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062681.P16569068954433023731

/-!
# A062683: Numbers that are products of all rotations of some number.

The programs for A062683, there is no canonical definition to state claims against.
-/

/-! ## A062683.P16435500745630416463

`lt[A068527(A051022(n)), 5]`
-/

namespace A062683.P16435500745630416463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A051022 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062683.P16435500745630416463

/-! ## A062683.P8908058960563698141

`A061378(lt[A061378(n), 98])`
-/

namespace A062683.P8908058960563698141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061378 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061378 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A062683.P8908058960563698141

/-! ## A062683.P15208314765001301944

`lt[A187844(n), A216577(n)]`
-/

namespace A062683.P15208314765001301944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062683.P15208314765001301944

/-! ## A062683.P2746949811381027785

`∩[A202272(n+1), record[A007954(n)]]`
-/

namespace A062683.P2746949811381027785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062683.P2746949811381027785

/-! ## A062683.P16816232547067601840

`∩[A069024(n+1), A247801(n+1)]`
-/

namespace A062683.P16816232547067601840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062683.P16816232547067601840

/-!
# A062684: Number of addition triangles with apex n (version 1).

The programs for A062684, there is no canonical definition to state claims against.
-/

/-! ## A062684.P6050757875322404441

`∑[A325391(n)]`
-/

namespace A062684.P6050757875322404441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062684.P6050757875322404441

/-! ## A062684.P9066643319360518588

`A325391(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A062684.P9066643319360518588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325391 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A062684.P9066643319360518588

/-! ## A062684.P4333984505654942943

`a(n-1)+A325391(n)+A000007(n)` with `a(0)=1`
-/

namespace A062684.P4333984505654942943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A325391 n + A000007 n)

end

end A062684.P4333984505654942943

/-! ## A062684.P10261255274437864314

`a(n-1)+A057427(n)*A325391(n)` with `a(0)=1`
-/

namespace A062684.P10261255274437864314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A325391 n

end

end A062684.P10261255274437864314

/-! ## A062684.P18089097221416472747

`a(n-1)+A325391(n)%A165602(n)` with `a(0)=1`
-/

namespace A062684.P18089097221416472747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A325391 n) (A165602 n)

end

end A062684.P18089097221416472747

/-!
# A062685: Smallest square with digit sum n (or 0 if no such square exists).

The programs for A062685, there is no canonical definition to state claims against.
-/

/-! ## A062685.P12874068885929144580

`A358702(n+1)²`
-/

namespace A062685.P12874068885929144580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358702 (n + 1) ^ 2

end

end A062685.P12874068885929144580

/-! ## A062685.P3479835633358686692

`A358702(n+1)^A040001(2*n)`
-/

namespace A062685.P3479835633358686692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A040001 (2 * n) : ℤ)

end

end A062685.P3479835633358686692

/-! ## A062685.P3717081880605883399

`A358702(n+1)^(A358692(n+1)+1)`
-/

namespace A062685.P3717081880605883399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A358692 (n + 1) + 1 : ℤ)

end

end A062685.P3717081880605883399

/-! ## A062685.P7916484963838543364

`A358702(n+1)^(A358691(n+5)+1)`
-/

namespace A062685.P7916484963838543364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A358691 (n + 5) + 1 : ℤ)

end

end A062685.P7916484963838543364

/-! ## A062685.P5812794275393166644

`A358702(n+1)^(A008683(4*(n+1))+2)`
-/

namespace A062685.P5812794275393166644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A008683 (4 * (n + 1)) + 2 : ℤ)

end

end A062685.P5812794275393166644

/-! ## A062685.P13313270400556011454

`A358702(n+1)^A035250(∑{d}[n+1, (#+n)%2])`
-/

namespace A062685.P13313270400556011454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A035250 (∑ d ∈ Nat.divisors (f1 n), (d + n) % 2) : ℤ)

end

end A062685.P13313270400556011454

/-! ## A062685.P2255239923010179266

`A358702(n+1)^A006530(A001316(n))`
-/

namespace A062685.P2255239923010179266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A062685.P2255239923010179266

/-! ## A062685.P11995398272490530174

`A358702(n+1)^A000005(A007918(n))`
-/

namespace A062685.P11995398272490530174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A062685.P11995398272490530174

/-! ## A062685.P13588201641723011312

`A358702(n+1)^A020639(A008458(n))`
-/

namespace A062685.P13588201641723011312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A062685.P13588201641723011312

/-! ## A062685.P9162179193908375367

`A358702(n+1)^A000005(A001359(n+1))`
-/

namespace A062685.P9162179193908375367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358702 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A062685.P9162179193908375367

/-!
# A062686: Smallest cube with digit sum n (or 0 if no such cube exists).

The programs for A062686, there is no canonical definition to state claims against.
-/

/-! ## A062686.P7204774833148803975

`(A112310(A347668(n+1))-n)^3`
-/

namespace A062686.P7204774833148803975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112310 (A347668 (n + 1)).toNat - (n : ℤ)) ^ 3

end

end A062686.P7204774833148803975

/-! ## A062686.P434365630927939437

`and(A161680(n+6), A181592(n+1))`
-/

namespace A062686.P434365630927939437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161680 (n + 6)) (A181592 (n + 1))

end

end A062686.P434365630927939437

/-! ## A062686.P14642790409537019340

`A025458(floor(3^(n-1)))^A003056(n)`
-/

namespace A062686.P14642790409537019340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025458 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat : ℚ) ^ (A003056 n : ℤ)

end

end A062686.P14642790409537019340

/-! ## A062686.P11881751204968152923

`and(A000096(n+4)+1, A181592(n+1))`
-/

namespace A062686.P11881751204968152923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000096 (n + 4) + 1) (A181592 (n + 1))

end

end A062686.P11881751204968152923

/-! ## A062686.P5819477348742343155

`A025458(ceil(3^(n-1)))^A297113(n+1)`
-/

namespace A062686.P5819477348742343155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025458 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℚ) ^ (A297113 (n + 1) : ℤ)

end

end A062686.P5819477348742343155

/-!
# A062687: Numbers all of whose divisors are palindromic.

The programs for A062687, there is no canonical definition to state claims against.
-/

/-! ## A062687.P9536206719927608575

`∩[A002113(n+1), A084981(n+1)]`
-/

namespace A062687.P9536206719927608575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P9536206719927608575

/-! ## A062687.P1521708034889830060

`∩[A080716(n+1), A084981(n+1)]`
-/

namespace A062687.P1521708034889830060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P1521708034889830060

/-! ## A062687.P17048401619483042523

`∩[A085869(n+1), A188650(n+1)]`
-/

namespace A062687.P17048401619483042523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P17048401619483042523

/-! ## A062687.P9846536598138083177

`∩[A002113(n+1), A072227(n+1)]`
-/

namespace A062687.P9846536598138083177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P9846536598138083177

/-! ## A062687.P17700551893038214813

`∩[A061917(n+1), A072227(n+1)]`
-/

namespace A062687.P17700551893038214813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P17700551893038214813

/-! ## A062687.P759596295107349627

`∩[A072227(n+1), A080716(n+1)]`
-/

namespace A062687.P759596295107349627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P759596295107349627

/-! ## A062687.P6976132202833408232

`∩[A072227(n+1), A169824(n+1)]`
-/

namespace A062687.P6976132202833408232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P6976132202833408232

/-! ## A062687.P15616248489884297624

`∩[A080716(n+1), A161597(n+1)]`
-/

namespace A062687.P15616248489884297624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P15616248489884297624

/-! ## A062687.P16168439914396340791

`∩[A072227(n+1), A188650(n+1)]`
-/

namespace A062687.P16168439914396340791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P16168439914396340791

/-! ## A062687.P6811411866046939249

`∩[A161597(n+1), A188650(n+1)]`
-/

namespace A062687.P6811411866046939249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P6811411866046939249

/-! ## A062687.P13648838346655892796

`∩[A002113(n+1), A165209(n+1)]`
-/

namespace A062687.P13648838346655892796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P13648838346655892796

/-! ## A062687.P3807512737031254159

`∩[A061917(n+1), A165209(n+1)]`
-/

namespace A062687.P3807512737031254159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P3807512737031254159

/-! ## A062687.P15219673947002259534

`∩[A080716(n+1), A165209(n+1)]`
-/

namespace A062687.P15219673947002259534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P15219673947002259534

/-! ## A062687.P9549043517414745095

`∩[A083970(n+1), A165209(n+1)]`
-/

namespace A062687.P9549043517414745095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P9549043517414745095

/-! ## A062687.P6508402949880360824

`∩[A165209(n+1), A169824(n+1)]`
-/

namespace A062687.P6508402949880360824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P6508402949880360824

/-! ## A062687.P17858436745991022366

`∩[A110751(n+1), A165209(n+1)]`
-/

namespace A062687.P17858436745991022366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P17858436745991022366

/-! ## A062687.P12764031841683089000

`∩[A110751(n+1), A188650(n+1)]`
-/

namespace A062687.P12764031841683089000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P12764031841683089000

/-! ## A062687.P14051808060042877680

`∩[A188650(n+1), A085429(n)]`
-/

namespace A062687.P14051808060042877680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062687.P14051808060042877680

/-!
# A062688: Smallest triangular number with digit sum n (or 0 if no such number exists).

The programs for A062688, there is no canonical definition to state claims against.
-/

/-! ## A062688.P3781649306139551643

`3^val(n+1, 3)*A035181(∑[2^n*Δ[n²]])`
-/

namespace A062688.P3781649306139551643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) * A035181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062688.P3781649306139551643

/-! ## A062688.P6301743508498686088

`lcm((n+1)/4^val(n+1, 4), A219496(3^n-1))`
-/

namespace A062688.P6301743508498686088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) (A219496 (3 ^ n - 1))

end

end A062688.P6301743508498686088

/-! ## A062688.P5689397444133742136

`record[A333226(n+1)]*A094544(n)`
-/

namespace A062688.P5689397444133742136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A094544 n

end

end A062688.P5689397444133742136

/-! ## A062688.P3060501838197446014

`(n+1)*A360675(A229083(n+1))`
-/

namespace A062688.P3060501838197446014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360675 (A229083 (n + 1)).toNat

end

end A062688.P3060501838197446014

/-! ## A062688.P13719960052243324049

`C(n+1, A211790(A302656(n+1)))`
-/

namespace A062688.P13719960052243324049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A211790 (A302656 (n + 1)).toNat).toNat

end

end A062688.P13719960052243324049

/-!
# A062690: Smallest triangular number that contains the string n in its exact center.

The programs for A062690, there is no canonical definition to state claims against.
-/

/-! ## A062690.P16982830076913150684

`A163598(A028310(n))-A000007(n)`
-/

namespace A062690.P16982830076913150684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163598 (A028310 n).toNat - A000007 n

end

end A062690.P16982830076913150684

/-! ## A062690.P15181999395207021011

`A057427(n)*A163598(A028310(n))`
-/

namespace A062690.P15181999395207021011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A163598 (A028310 n).toNat

end

end A062690.P15181999395207021011

/-! ## A062690.P15903772471553244159

`A163598(A028310(n))%A014769(n)`
-/

namespace A062690.P15903772471553244159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163598 (A028310 n).toNat) (A014769 n)

end

end A062690.P15903772471553244159

/-! ## A062690.P3163061445177343101

`A163598(A000007(n)+n)-A000007(n)`
-/

namespace A062690.P3163061445177343101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163598 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A062690.P3163061445177343101

/-! ## A062690.P16510947514946147817

`A001221(A001316(n))*A163598(A028310(n))`
-/

namespace A062690.P16510947514946147817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A163598 (A028310 n).toNat

end

end A062690.P16510947514946147817

/-! ## A062690.P13483429507761457783

`A057427(n)*A163598(A065033(2*n))`
-/

namespace A062690.P13483429507761457783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A163598 (A065033 (2 * n)).toNat

end

end A062690.P13483429507761457783

/-! ## A062690.P10595287838835615285

`A163598(A151909(n)+n)%Δ[n²]²²`
-/

namespace A062690.P10595287838835615285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163598 (A151909 n + (n : ℤ)).toNat) ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2)

end

end A062690.P10595287838835615285

/-! ## A062690.P11719406082278991771

`A163598(A151909(n)+n)-A151909(n)`
-/

namespace A062690.P11719406082278991771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163598 (A151909 n + (n : ℤ)).toNat - A151909 n

end

end A062690.P11719406082278991771

/-!
# A062691: Triangular numbers that contain exactly 2 different digits.

The programs for A062691, there is no canonical definition to state claims against.
-/

/-! ## A062691.P8838104370535461485

`C(A213518(n+1)+1, 2)`
-/

namespace A062691.P8838104370535461485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A213518 (n + 1) + 1).toNat 2

end

end A062691.P8838104370535461485

/-! ## A062691.P10819635625275584854

`A000217(A213518(n+1))`
-/

namespace A062691.P10819635625275584854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A213518 (n + 1)).toNat

end

end A062691.P10819635625275584854

/-! ## A062691.P18377687033560686242

`A000217(eq[2, A118668(n)])`
-/

namespace A062691.P18377687033560686242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062691.P18377687033560686242

/-! ## A062691.P1084489488548691952

`A253145(A213518(n+1)-1)`
-/

namespace A062691.P1084489488548691952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A213518 (n + 1) - 1).toNat

end

end A062691.P1084489488548691952

/-! ## A062691.P15938868821891422882

`A161680(A213518(n+1)+1)`
-/

namespace A062691.P15938868821891422882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A213518 (n + 1) + 1).toNat

end

end A062691.P15938868821891422882

/-!
# A062692: Number of irreducible polynomials over F_2 of degree at most n.

The programs for A062692, the canonical program `A062692.P12181960848858303464` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062692 has offset 1).

The definition of A062692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062692.P16962921541696149387

`A091226(2^(n+2))`
-/

namespace A062692.P16962921541696149387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (2 ^ (n + 2))

end

end A062692.P16962921541696149387

namespace A062692

/-- `A091226(2^(n+2))` -/
def P16962921541696149387.Spec : Prop :=
  ∀ n, P16962921541696149387.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P16766312750682618849

`∑[A001037(n+1)]`
-/

namespace A062692.P16766312750682618849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062692.P16766312750682618849

namespace A062692

/-- `∑[A001037(n+1)]` -/
def P16766312750682618849.Spec : Prop :=
  ∀ n, P16766312750682618849.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P17988470138389793676

`∑[abs(Δ[A173270(n)])]`
-/

namespace A062692.P17988470138389793676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062692.P17988470138389793676

namespace A062692

/-- `∑[abs(Δ[A173270(n)])]` -/
def P17988470138389793676.Spec : Prop :=
  ∀ n, P17988470138389793676.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P1799135906245376603

`A001036(n+1)+1`
-/

namespace A062692.P1799135906245376603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001036 (n + 1) + 1

end

end A062692.P1799135906245376603

namespace A062692

/-- `A001036(n+1)+1` -/
def P1799135906245376603.Spec : Prop :=
  ∀ n, P1799135906245376603.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P202296959073564259

`A173270(n+1)-1`
-/

namespace A062692.P202296959073564259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 (n + 1) - 1

end

end A062692.P202296959073564259

namespace A062692

/-- `A173270(n+1)-1` -/
def P202296959073564259.Spec : Prop :=
  ∀ n, P202296959073564259.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P15683288742269957822

`∑[A059966(n+1)]+1`
-/

namespace A062692.P15683288742269957822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062692.P15683288742269957822

namespace A062692

/-- `∑[A059966(n+1)]+1` -/
def P15683288742269957822.Spec : Prop :=
  ∀ n, P15683288742269957822.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P11265928591640933183

`∑[A060477(n+1)]-1`
-/

namespace A062692.P11265928591640933183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062692.P11265928591640933183

namespace A062692

/-- `∑[A060477(n+1)]-1` -/
def P11265928591640933183.Spec : Prop :=
  ∀ n, P11265928591640933183.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P4440512606379276157

`∑[ratio[A001037(n)]*A001037(n)]`
-/

namespace A062692.P4440512606379276157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A001037 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062692.P4440512606379276157

namespace A062692

/-- `∑[ratio[A001037(n)]*A001037(n)]` -/
def P4440512606379276157.Spec : Prop :=
  ∀ n, P4440512606379276157.a n = (A062692 (n + 1) : ℚ)

end A062692

/-! ## A062692.P5350037914941650717

`A001037(A000007(n)+1+n)+a(n-1)` with `a(0)=2`
-/

namespace A062692.P5350037914941650717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001037 (A000007 n + 1 + (n : ℤ)).toNat + a (n - 1)

end

end A062692.P5350037914941650717

namespace A062692

/-- `A001037(A000007(n)+1+n)+a(n-1)` -/
def P5350037914941650717.Spec : Prop :=
  ∀ n, P5350037914941650717.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P2011300580956128973

`∑[A027375(n+1)/(n+1)]`
-/

namespace A062692.P2011300580956128973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027375 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062692.P2011300580956128973

namespace A062692

/-- `∑[A027375(n+1)/(n+1)]` -/
def P2011300580956128973.Spec : Prop :=
  ∀ n, P2011300580956128973.a n = (A062692 (n + 1) : ℚ)

end A062692

/-! ## A062692.P12181960848858303464

`a(n-1)+A038199(n+1)/(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A062692

/-- `a(n-1)+A038199(n+1)/(n+1)` -/
def P12181960848858303464.Spec : Prop :=
  ∀ n, P12181960848858303464.a n = (A062692 (n + 1) : ℚ)

end A062692

/-! ## A062692.P15999038954072015766

`∑[A045664(n+1)/(n+1)²]`
-/

namespace A062692.P15999038954072015766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045664 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062692.P15999038954072015766

namespace A062692

/-- `∑[A045664(n+1)/(n+1)²]` -/
def P15999038954072015766.Spec : Prop :=
  ∀ n, P15999038954072015766.a n = (A062692 (n + 1) : ℚ)

end A062692

/-! ## A062692.P7646091931624451190

`∑[A269456(∑[n]+1)]`
-/

namespace A062692.P7646091931624451190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269456 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062692.P7646091931624451190

namespace A062692

/-- `∑[A269456(∑[n]+1)]` -/
def P7646091931624451190.Spec : Prop :=
  ∀ n, P7646091931624451190.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P11348809041777163719

`A001115(2*n)+A001037(n+1)-A001037(2*n)`
-/

namespace A062692.P11348809041777163719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001115 (2 * n) + (A001037 (n + 1) - A001037 (2 * n))

end

end A062692.P11348809041777163719

namespace A062692

/-- `A001115(2*n)+A001037(n+1)-A001037(2*n)` -/
def P11348809041777163719.Spec : Prop :=
  ∀ n, P11348809041777163719.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P14554584300049823883

`A001115(2*(n+1))-A001037(2*(n+1))`
-/

namespace A062692.P14554584300049823883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001115 (2 * (n + 1)) - A001037 (2 * (n + 1))

end

end A062692.P14554584300049823883

namespace A062692

/-- `A001115(2*(n+1))-A001037(2*(n+1))` -/
def P14554584300049823883.Spec : Prop :=
  ∀ n, P14554584300049823883.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P13478682183641481446

`∑[A123223(∑[n+1])]`
-/

namespace A062692.P13478682183641481446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062692.P13478682183641481446

namespace A062692

/-- `∑[A123223(∑[n+1])]` -/
def P13478682183641481446.Spec : Prop :=
  ∀ n, P13478682183641481446.a n = A062692 (n + 1)

end A062692

/-! ## A062692.P9122541793810315626

`∑[A203398(∑[n+1])]`
-/

namespace A062692.P9122541793810315626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203398 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062692.P9122541793810315626

namespace A062692

/-- `∑[A203398(∑[n+1])]` -/
def P9122541793810315626.Spec : Prop :=
  ∀ n, P9122541793810315626.a n = A062692 (n + 1)

end A062692

/-!
# A062695: Squarefree n such that the elliptic curve n*y^2 = x^3 - x arising in the "congruent number" problem has rank 2.

The programs for A062695, there is no canonical definition to state claims against.
-/

/-! ## A062695.P14696072110143431730

`filter[A006991(n+1), A131078(#)]`
-/

namespace A062695.P14696072110143431730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A062695.P14696072110143431730

/-! ## A062695.P4491063126201776934

`∩[A006991(n+1), A047453(n+1)]`
-/

namespace A062695.P4491063126201776934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062695.P4491063126201776934

/-! ## A062695.P15689304982329679101

`∩[A006991(n+1), A047454(n+1)]`
-/

namespace A062695.P15689304982329679101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062695.P15689304982329679101

/-! ## A062695.P15110854527752809751

`∩[A006991(n+1), A047475(n+1)]`
-/

namespace A062695.P15110854527752809751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062695.P15110854527752809751

/-! ## A062695.P12338667982987446356

`∩[A006991(n+1), A047476(n+1)]`
-/

namespace A062695.P12338667982987446356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062695.P12338667982987446356

/-! ## A062695.P18083620881460578898

`∩[A006991(n+1), A047574(n+4)+4]`
-/

namespace A062695.P18083620881460578898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 4) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062695.P18083620881460578898

/-!
# A062696: Palindromes that are the sum of two shorter palindromes.

The programs for A062696, there is no canonical definition to state claims against.
-/

/-! ## A062696.P9867623707271329867

`∩[A043036(n+1), A062697(n+1)]`
-/

namespace A062696.P9867623707271329867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062696.P9867623707271329867

/-! ## A062696.P5530388497070494371

`∩[A062697(n+1), A125098(n)]`
-/

namespace A062696.P5530388497070494371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062696.P5530388497070494371

/-! ## A062696.P16832230184426168018

`∩[A062697(n+1), A208259(n+1)]`
-/

namespace A062696.P16832230184426168018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062696.P16832230184426168018

/-! ## A062696.P5952991385255599690

`∩[A062697(n+1), A017281(n)]`
-/

namespace A062696.P5952991385255599690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062696.P5952991385255599690

/-! ## A062696.P13258963744653497469

`∩[A062697(n+1), A049345(n)]`
-/

namespace A062696.P13258963744653497469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062696.P13258963744653497469

/-!
# A062697: Palindromes > 10 that are the sum of two distinct smaller palindromes.

The programs for A062697, there is no canonical definition to state claims against.
-/

/-! ## A062697.P17906336850963736041

`A033865(A067030(a(floor(n/10))+n))` with `a(0)=11`
-/

namespace A062697.P17906336850963736041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A033865 (A067030 (a ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat).toNat

end

end A062697.P17906336850963736041

/-! ## A062697.P15519115364713181249

`eq[A004018(A171890(n)), A256756(n)]`
-/

namespace A062697.P15519115364713181249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A171890 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062697.P15519115364713181249

/-! ## A062697.P15455900233197471908

`A109303(A002113(n+3)^A373696(n))`
-/

namespace A062697.P15455900233197471908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (SequenceMachineLib.roundAway ((A002113 (n + 3) : ℚ) ^ (A373696 n : ℤ))).toNat

end

end A062697.P15455900233197471908

/-! ## A062697.P6969118608302578548

`A062687(eq[11, A139337(n)]^A139337(n))`
-/

namespace A062697.P6969118608302578548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A062697.P6969118608302578548

/-! ## A062697.P17861186287722673007

`A062687(A029742(n+1))%A125834(2*n+1)`
-/

namespace A062697.P17861186287722673007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062687 (A029742 (n + 1)).toNat) (A125834 (2 * n + 1))

end

end A062697.P17861186287722673007

/-!
# A062698: Primes of form 2*k! + 1.

The programs for A062698, there is no canonical definition to state claims against.
-/

/-! ## A062698.P3093507701615627095

`A052898(A051915(n+2))`
-/

namespace A062698.P3093507701615627095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052898 (A051915 (n + 2)).toNat

end

end A062698.P3093507701615627095

/-!
# A062699: Numbers n such that sigma(n) = 2*phi(n).

The programs for A062699, there is no canonical definition to state claims against.
-/

/-! ## A062699.P4545121002496437137

`∩[A067780(n+1), A076376(n+1)]`
-/

namespace A062699.P4545121002496437137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062699.P4545121002496437137

/-! ## A062699.P11599684665500190542

`record[∏{p}[A292390(n+1), #]]`
-/

namespace A062699.P11599684665500190542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292390 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062699.P11599684665500190542

/-! ## A062699.P2806671241351049772

`filter[A292390(n+1), A008966(#)]`
-/

namespace A062699.P2806671241351049772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A062699.P2806671241351049772

/-! ## A062699.P11348575694369164593

`filter[A076376(n+1), A374134(#)]`
-/

namespace A062699.P11348575694369164593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A062699.P11348575694369164593

/-! ## A062699.P14945530199319301302

`filter[A292390(n+1), A351114(#)]`
-/

namespace A062699.P14945530199319301302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A062699.P14945530199319301302

