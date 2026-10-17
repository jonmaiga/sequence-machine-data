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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
# A319700: a(n) = A051953(A252463(n)).

The programs for A319700, there is no canonical definition to state claims against.
-/

/-! ## A319700.P12804728464698407420

`A051953(A252463(n+1))`
-/

namespace A319700.P12804728464698407420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A252463 (n + 1)).toNat

end

end A319700.P12804728464698407420

/-! ## A319700.P3022470752408176043

`∑{d}[A252463(n+1), A062790(#)]`
-/

namespace A319700.P3022470752408176043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A319700.P3022470752408176043

/-! ## A319700.P13928934535486899118

`A252463(ϕ²-(ϕ-n))-A000010(A252463(n+1))`
-/

namespace A319700.P13928934535486899118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - A000010 (A252463 (n + 1)).toNat

end

end A319700.P13928934535486899118

/-! ## A319700.P1993954254572494523

`A252463(n+1)-A000010(A252463(n+1)%A048058(n))`
-/

namespace A319700.P1993954254572494523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1) - A000010 (Int.tmod (A252463 (n + 1)) (A048058 n)).toNat

end

end A319700.P1993954254572494523

/-! ## A319700.P8360944889670876396

`(A252463(n+1)-A000010(A252463(n+1)))%A000041(n)`
-/

namespace A319700.P8360944889670876396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252463 (n + 1) - A000010 (A252463 (n + 1)).toNat) (A000041 n)

end

end A319700.P8360944889670876396

/-!
# A319701: Filter sequence for sequences that are constant for all odd terms >= 3.

The programs for A319701, the canonical program `A319701.P9494443904892368313` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319701 has offset 1).

The definition of A319701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319701.P9494443904892368313

`a(n-2)+n%2` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A319701

/-- `a(n-2)+n%2` -/
def P9494443904892368313.Spec : Prop :=
  ∀ n, (P9494443904892368313.a n : ℤ) = A319701 (n + 1)

theorem P9494443904892368313.correct : P9494443904892368313.Spec := by
  intro n
  simp only [A319701, Nat.add_sub_cancel]

end A319701

/-! ## A319701.P13431545883010107363

`a(n-2)+2-gcd(2, n)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A319701.P13431545883010107363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 2) + (2 - (Nat.gcd 2 n : ℤ))

end

end A319701.P13431545883010107363

namespace A319701

/-- `a(n-2)+2-gcd(2, n)` -/
def P13431545883010107363.Spec : Prop :=
  ∀ n, P13431545883010107363.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P3833525815594963585

`floor(a(n-2)+3/a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A319701.P3833525815594963585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  ⌊(a (n - 2) : ℚ) + 3 / (a (n - 1) : ℚ)⌋

end

end A319701.P3833525815594963585

namespace A319701

/-- `floor(a(n-2)+3/a(n-1))` -/
def P3833525815594963585.Spec : Prop :=
  ∀ n, P3833525815594963585.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P2894507298696286835

`n+1-floor(lcm(n+1, n-1)/(n+2))`
-/

namespace A319701.P2894507298696286835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A319701.P2894507298696286835

namespace A319701

/-- `n+1-floor(lcm(n+1, n-1)/(n+2))` -/
def P2894507298696286835.Spec : Prop :=
  ∀ n, P2894507298696286835.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P2206577329996439747

`a(n-3)+a(n-2)-a(n-1)+1` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=3`
-/

namespace A319701.P2206577329996439747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 3] fun n a =>
  a (n - 3) + (a (n - 2) - a (n - 1)) + 1

end

end A319701.P2206577329996439747

namespace A319701

/-- `a(n-3)+a(n-2)-a(n-1)+1` -/
def P2206577329996439747.Spec : Prop :=
  ∀ n, P2206577329996439747.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P15409981091298348610

`A134869(xor(1, n)+1)%(n+1)+1`
-/

namespace A319701.P15409981091298348610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134869 (Nat.xor 1 n + 1)) (n + 1 : ℤ) + 1

end

end A319701.P15409981091298348610

namespace A319701

/-- `A134869(xor(1, n)+1)%(n+1)+1` -/
def P15409981091298348610.Spec : Prop :=
  ∀ n, P15409981091298348610.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P3551948513196950944

`ceil(atan(n)+gcd(n+1, A004525(n+1)))`
-/

namespace A319701.P3551948513196950944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ) + (Int.gcd (n + 1 : ℤ) (A004525 (n + 1)) : ℝ)⌉

end

end A319701.P3551948513196950944

namespace A319701

/-- `ceil(atan(n)+gcd(n+1, A004525(n+1)))` -/
def P3551948513196950944.Spec : Prop :=
  ∀ n, P3551948513196950944.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P16929626510719726521

`A152271(n)+A130130(n)`
-/

namespace A319701.P16929626510719726521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + A130130 n

end

end A319701.P16929626510719726521

namespace A319701

/-- `A152271(n)+A130130(n)` -/
def P16929626510719726521.Spec : Prop :=
  ∀ n, P16929626510719726521.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P10120693341570051711

`A081350(n)%A321220(n)`
-/

namespace A319701.P10120693341570051711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081350 n) (A321220 n)

end

end A319701.P10120693341570051711

namespace A319701

/-- `A081350(n)%A321220(n)` -/
def P10120693341570051711.Spec : Prop :=
  ∀ n, P10120693341570051711.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P6769506053552475712

`A063914(n+1)-A289207(n)`
-/

namespace A319701.P6769506053552475712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063914 (n + 1) - A289207 n

end

end A319701.P6769506053552475712

namespace A319701

/-- `A063914(n+1)-A289207(n)` -/
def P6769506053552475712.Spec : Prop :=
  ∀ n, P6769506053552475712.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P15665225787432876184

`A153284(n+1)*A282738(n)`
-/

namespace A319701.P15665225787432876184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A282738 n

end

end A319701.P15665225787432876184

namespace A319701

/-- `A153284(n+1)*A282738(n)` -/
def P15665225787432876184.Spec : Prop :=
  ∀ n, P15665225787432876184.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P2970655389952735241

`A020639(A266593(n))+∑[n]%(n+1)`
-/

namespace A319701.P2970655389952735241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A266593 n).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A319701.P2970655389952735241

namespace A319701

/-- `A020639(A266593(n))+∑[n]%(n+1)` -/
def P2970655389952735241.Spec : Prop :=
  ∀ n, P2970655389952735241.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P1158911574127885636

`A323161(2*n+1)+A000035(n+1)-A026741(n+1)`
-/

namespace A319701.P1158911574127885636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (2 * n + 1) + (A000035 (n + 1) - A026741 (n + 1))

end

end A319701.P1158911574127885636

namespace A319701

/-- `A323161(2*n+1)+A000035(n+1)-A026741(n+1)` -/
def P1158911574127885636.Spec : Prop :=
  ∀ n, P1158911574127885636.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P3558074576483192819

`A057979(n+2)+ceil(atan(n))`
-/

namespace A319701.P3558074576483192819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 2) + ⌈Real.arctan (n : ℝ)⌉

end

end A319701.P3558074576483192819

namespace A319701

/-- `A057979(n+2)+ceil(atan(n))` -/
def P3558074576483192819.Spec : Prop :=
  ∀ n, P3558074576483192819.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P2319979003489620663

`A004736(eq[A003056(n), A007318(n)])`
-/

namespace A319701.P2319979003489620663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319701.P2319979003489620663

namespace A319701

/-- `A004736(eq[A003056(n), A007318(n)])` -/
def P2319979003489620663.Spec : Prop :=
  ∀ n, P2319979003489620663.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P15778907187795620154

`n+2-gcd(n-1, A007318(∑[n]+2))`
-/

namespace A319701.P15778907187795620154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Int.gcd ((n : ℤ) - 1) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) : ℤ)

end

end A319701.P15778907187795620154

namespace A319701

/-- `n+2-gcd(n-1, A007318(∑[n]+2))` -/
def P15778907187795620154.Spec : Prop :=
  ∀ n, P15778907187795620154.a n = A319701 (n + 1)

end A319701

/-! ## A319701.P7106912773095312888

`∑[A274923((2-n)²+n+1)]`
-/

namespace A319701.P7106912773095312888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 ((2 - (n : ℤ)) ^ 2 + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319701.P7106912773095312888

namespace A319701

/-- `∑[A274923((2-n)²+n+1)]` -/
def P7106912773095312888.Spec : Prop :=
  ∀ n, P7106912773095312888.a n = A319701 (n + 1)

end A319701

/-!
# A319702: Filter sequence for sequences that are constant for all even terms >= 2.

The programs for A319702, the canonical program `A319702.P5221238381667900773` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319702 has offset 1).

The definition of A319702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319702.P5221238381667900773

`ceil((n+3)/a(n-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A319702

/-- `ceil((n+3)/a(n-1))` -/
def P5221238381667900773.Spec : Prop :=
  ∀ n, P5221238381667900773.a n = A319702 (n + 1)

theorem P5221238381667900773.correct : P5221238381667900773.Spec := by
  intro n
  simp only [A319702, Nat.add_sub_cancel]

end A319702

/-! ## A319702.P9905638483613044554

`floor((n+4)/a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A319702.P9905638483613044554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(n + 4 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A319702.P9905638483613044554

namespace A319702

/-- `floor((n+4)/a(n-1))` -/
def P9905638483613044554.Spec : Prop :=
  ∀ n, P9905638483613044554.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P3013856152751694887

`round((n+3)/a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A319702.P3013856152751694887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) / (a (n - 1) : ℚ))

end

end A319702.P3013856152751694887

namespace A319702

/-- `round((n+3)/a(n-1))` -/
def P3013856152751694887.Spec : Prop :=
  ∀ n, P3013856152751694887.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P6380199434554677487

`ceil(n²/2)%(n+1)+1`
-/

namespace A319702.P6380199434554677487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n ^ 2 : ℚ) / 2⌉ (n + 1 : ℤ) + 1

end

end A319702.P6380199434554677487

namespace A319702

/-- `ceil(n²/2)%(n+1)+1` -/
def P6380199434554677487.Spec : Prop :=
  ∀ n, P6380199434554677487.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P1683649493391106702

`a(n-2)+log2(gcd(2, n))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A319702.P1683649493391106702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A319702.P1683649493391106702

namespace A319702

/-- `a(n-2)+log2(gcd(2, n))` -/
def P1683649493391106702.Spec : Prop :=
  ∀ n, P1683649493391106702.a n = (A319702 (n + 1) : ℝ)

end A319702

/-! ## A319702.P17386893512988092051

`∑[(-1)^n]+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A319702.P17386893512988092051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A319702.P17386893512988092051

namespace A319702

/-- `∑[(-1)^n]+a(n-2)` -/
def P17386893512988092051.Spec : Prop :=
  ∀ n, P17386893512988092051.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P1891819800658438626

`gcd(n+2, a(n-2))+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A319702.P1891819800658438626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Nat.gcd (n + 2) (a (n - 2)) + 1

end

end A319702.P1891819800658438626

namespace A319702

/-- `gcd(n+2, a(n-2))+1` -/
def P1891819800658438626.Spec : Prop :=
  ∀ n, (P1891819800658438626.a n : ℤ) = A319702 (n + 1)

end A319702

/-! ## A319702.P3985790860226124481

`1-(n%2-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A319702.P3985790860226124481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - a (n - 2))

end

end A319702.P3985790860226124481

namespace A319702

/-- `1-(n%2-a(n-2))` -/
def P3985790860226124481.Spec : Prop :=
  ∀ n, P3985790860226124481.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P7547044871448725629

`a(n-2)+and(1, n+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A319702.P7547044871448725629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + Nat.land 1 (n + 1)

end

end A319702.P7547044871448725629

namespace A319702

/-- `a(n-2)+and(1, n+1)` -/
def P7547044871448725629.Spec : Prop :=
  ∀ n, (P7547044871448725629.a n : ℤ) = A319702 (n + 1)

end A319702

/-! ## A319702.P8449065965380091152

`4-(a(n-1)-floor(n/2))` with `a(0)=1, a(1)=2`
-/

namespace A319702.P8449065965380091152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (a (n - 1) - ⌊(n : ℚ) / 2⌋)

end

end A319702.P8449065965380091152

namespace A319702

/-- `4-(a(n-1)-floor(n/2))` -/
def P8449065965380091152.Spec : Prop :=
  ∀ n, P8449065965380091152.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P8498438955359335345

`n+1-floor(n²/lcm(2, n+1))`
-/

namespace A319702.P8498438955359335345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(n ^ 2 : ℚ) / (Nat.lcm 2 (n + 1) : ℚ)⌋

end

end A319702.P8498438955359335345

namespace A319702

/-- `n+1-floor(n²/lcm(2, n+1))` -/
def P8498438955359335345.Spec : Prop :=
  ∀ n, P8498438955359335345.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P6697213456175163276

`∑[∑[(-1)^n]-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A319702.P6697213456175163276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319702.P6697213456175163276

namespace A319702

/-- `∑[∑[(-1)^n]-a(n-1)]` -/
def P6697213456175163276.Spec : Prop :=
  ∀ n, P6697213456175163276.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P3605395336238888559

`a(2*(a(n-2)-2))+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A319702.P3605395336238888559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (2 * ((a (n - 2) : ℤ) - 2)).toNat + 1

end

end A319702.P3605395336238888559

namespace A319702

/-- `a(2*(a(n-2)-2))+1` -/
def P3605395336238888559.Spec : Prop :=
  ∀ n, (P3605395336238888559.a n : ℤ) = A319702 (n + 1)

end A319702

/-! ## A319702.P9496874178565363126

`a(n-2)+C(2, a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A319702.P9496874178565363126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + Nat.choose 2 (a (n - 1))

end

end A319702.P9496874178565363126

namespace A319702

/-- `a(n-2)+C(2, a(n-1))` -/
def P9496874178565363126.Spec : Prop :=
  ∀ n, (P9496874178565363126.a n : ℤ) = A319702 (n + 1)

end A319702

/-! ## A319702.P4500071796450471830

`n+1-floor(lcm(n, n+2)/(n+3))`
-/

namespace A319702.P4500071796450471830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(Nat.lcm n (n + 2) : ℚ) / (n + 3 : ℚ)⌋

end

end A319702.P4500071796450471830

namespace A319702

/-- `n+1-floor(lcm(n, n+2)/(n+3))` -/
def P4500071796450471830.Spec : Prop :=
  ∀ n, P4500071796450471830.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P11709138208831836543

`a(a(n-2)+a(n-2)-4)+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A319702.P11709138208831836543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a ((a (n - 2) : ℤ) + ((a (n - 2) : ℤ) - 4)).toNat + 1

end

end A319702.P11709138208831836543

namespace A319702

/-- `a(a(n-2)+a(n-2)-4)+1` -/
def P11709138208831836543.Spec : Prop :=
  ∀ n, (P11709138208831836543.a n : ℤ) = A319702 (n + 1)

end A319702

/-! ## A319702.P12037492251759744820

`A319701(n+2)-1`
-/

namespace A319702.P12037492251759744820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 2) - 1

end

end A319702.P12037492251759744820

namespace A319702

/-- `A319701(n+2)-1` -/
def P12037492251759744820.Spec : Prop :=
  ∀ n, P12037492251759744820.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P9210887479936081214

`A181440(a(n-2))+1` with `a(0)=1, a(1)=2`
-/

namespace A319702.P9210887479936081214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A181440 (a (n - 2)).toNat + 1

end

end A319702.P9210887479936081214

namespace A319702

/-- `A181440(a(n-2))+1` -/
def P9210887479936081214.Spec : Prop :=
  ∀ n, P9210887479936081214.a n = A319702 (n + 1)

end A319702

/-! ## A319702.P14987657872215185067

`(A354008(n+1)+n)/(n+1)`
-/

namespace A319702.P14987657872215185067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354008 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A319702.P14987657872215185067

namespace A319702

/-- `(A354008(n+1)+n)/(n+1)` -/
def P14987657872215185067.Spec : Prop :=
  ∀ n, P14987657872215185067.a n = (A319702 (n + 1) : ℚ)

end A319702

/-! ## A319702.P14175802366272930357

`a(n-1)+n-A225126(n)` with `a(0)=1`
-/

namespace A319702.P14175802366272930357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - A225126 n)

end

end A319702.P14175802366272930357

namespace A319702

/-- `a(n-1)+n-A225126(n)` -/
def P14175802366272930357.Spec : Prop :=
  ∀ n, P14175802366272930357.a n = A319702 (n + 1)

end A319702

/-!
# A319703: a(n) = A003415(A252463(n)).

The programs for A319703, there is no canonical definition to state claims against.
-/

/-! ## A319703.P7776989415077906572

`A003415(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319703.P7776989415077906572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A252463 (n + 1)).toNat

end

end A319703.P7776989415077906572

/-! ## A319703.P17951802264428191355

`∑{d}[A252463(n+1), A300251(#)]`
-/

namespace A319703.P17951802264428191355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A319703.P17951802264428191355

/-! ## A319703.P5776245378228894541

`A003415(∑{d}[n+1, #*A349437((n+1)/#)])`
-/

namespace A319703.P5776245378228894541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A319703.P5776245378228894541

/-! ## A319703.P7152050330915966312

`A003415(A349349(n+1)-A349348(n+1))`
-/

namespace A319703.P7152050330915966312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A349349 (n + 1) - A349348 (n + 1)).toNat

end

end A319703.P7152050330915966312

/-! ## A319703.P5885807166177393400

`A003415(A285727(2*(n+1)))`
-/

namespace A319703.P5885807166177393400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A285727 (2 * (n + 1))).toNat

end

end A319703.P5885807166177393400

/-! ## A319703.P14791215900175139054

`A003415(A246277(2*lcm(2, n+1)-(n+1)))`
-/

namespace A319703.P14791215900175139054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A246277 (2 * Nat.lcm 2 (n + 1) - (n + 1))).toNat

end

end A319703.P14791215900175139054

/-!
# A319704: Filter sequence which records for primes their residue modulo 4, and for all other numbers assigns a unique number.

The programs for A319704, there is no canonical definition to state claims against.
-/

/-! ## A319704.P12797674227175919238

`A305801(n+1)+A323081(n+1)-A322805(n+1)`
-/

namespace A319704.P12797674227175919238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1) + (A323081 (n + 1) - A322805 (n + 1))

end

end A319704.P12797674227175919238

/-! ## A319704.P14382274687892972425

`A320004(n+1)%A325232(n)`
-/

namespace A319704.P14382274687892972425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320004 (n + 1)) (A325232 n)

end

end A319704.P14382274687892972425

/-! ## A319704.P17057521176520938105

`gcd(and(1, A209874(n)), A320004(n+1))`
-/

namespace A319704.P17057521176520938105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.land 1 (A209874 n)) (A320004 (n + 1))

end

end A319704.P17057521176520938105

/-! ## A319704.P1664566227772774725

`A320004(n+1)+A000007(C(floor(n/2)+3, 3))`
-/

namespace A319704.P1664566227772774725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320004 (n + 1) + A000007 (Nat.choose (⌊(n : ℚ) / 2⌋ + 3).toNat 3)

end

end A319704.P1664566227772774725

/-! ## A319704.P2745269141763777811

`A002260(A320004(n+1)+A000384(n))`
-/

namespace A319704.P2745269141763777811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A320004 (n + 1) + A000384 n).toNat

end

end A319704.P2745269141763777811

/-! ## A319704.P12275304001820123476

`A320004(n+1)+A073424(A001105(n))`
-/

namespace A319704.P12275304001820123476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320004 (n + 1) + A073424 (A001105 n).toNat

end

end A319704.P12275304001820123476

/-! ## A319704.P2802615683133277388

`A320004(n+1)+A000038(A209874(n))`
-/

namespace A319704.P2802615683133277388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320004 (n + 1) + A000038 (A209874 n).toNat

end

end A319704.P2802615683133277388

/-! ## A319704.P9364346353805072942

`A320004(n+1)*A329900(A213998(n))`
-/

namespace A319704.P9364346353805072942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320004 (n + 1) * A329900 (A213998 n).toNat

end

end A319704.P9364346353805072942

/-!
# A319706: Filter sequence which for primes p records the prime signature of 2p+1, and for all other numbers assigns a unique number.

The programs for A319706, there is no canonical definition to state claims against.
-/

/-! ## A319706.P9330057300287043963

`A305894(n+1)%A305874(A305849(n+2))`
-/

namespace A319706.P9330057300287043963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305894 (n + 1)) (A305874 (A305849 (n + 2)).toNat)

end

end A319706.P9330057300287043963

/-!
# A319708: a(n) = Product_{d|n, d

The programs for A319708, there is no canonical definition to state claims against.
-/

/-! ## A319708.P4698233439174039839

`∏{d}[n+1, A276086(#%(n+1))]`
-/

namespace A319708.P4698233439174039839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A276086 (d % (n + 1))

end

end A319708.P4698233439174039839

/-! ## A319708.P14891502659829407543

`A329380(n+1)/A318809(A302033(n))`
-/

namespace A319708.P14891502659829407543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329380 (n + 1) : ℚ) / (A318809 (A302033 n).toNat : ℚ)

end

end A319708.P14891502659829407543

/-! ## A319708.P1965060034771327127

`A068911(A001065(n+1)%A322647(n+1))`
-/

namespace A319708.P1965060034771327127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (Int.tmod (A001065 (n + 1)) (A322647 (n + 1))).toNat

end

end A319708.P1965060034771327127

/-! ## A319708.P13909398126875122320

`A068911(A001065(n+1))%A357592(n+1)`
-/

namespace A319708.P13909398126875122320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068911 (A001065 (n + 1)).toNat) (A357592 (n + 1))

end

end A319708.P13909398126875122320

/-! ## A319708.P1814687598746690188

`A068911(A294888(n+1)%A129872(n+1))`
-/

namespace A319708.P1814687598746690188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (Int.tmod (A294888 (n + 1)) (A129872 (n + 1))).toNat

end

end A319708.P1814687598746690188

/-!
# A319710: a(n) = 1 if n is divisible by the square of its smallest prime factor, 0 otherwise.

The programs for A319710, there is no canonical definition to state claims against.
-/

/-! ## A319710.P16950920734015891687

`floor(atan(A087179(n+1)))`
-/

namespace A319710.P16950920734015891687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A087179 (n + 1) : ℝ)⌋

end

end A319710.P16950920734015891687

/-! ## A319710.P16884447622115023553

`char[A283050(n+1)-1]`
-/

namespace A319710.P16884447622115023553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A319710.P16884447622115023553

/-! ## A319710.P17922976352771143688

`char[A285109(n+2)-1]`
-/

namespace A319710.P17922976352771143688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A319710.P17922976352771143688

/-! ## A319710.P2317756510034463481

`char[eq[1, A286471(n+1)]]`
-/

namespace A319710.P2317756510034463481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A319710.P2317756510034463481

/-! ## A319710.P574948506035667544

`char[lt[1, A067029(n+1)]]`
-/

namespace A319710.P574948506035667544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A319710.P574948506035667544

/-! ## A319710.P11021277925110037420

`A011765(A071364(n+1))`
-/

namespace A319710.P11021277925110037420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A071364 (n + 1)).toNat

end

end A319710.P11021277925110037420

/-! ## A319710.P15721196106175104269

`A056170(A028233(n+1))`
-/

namespace A319710.P15721196106175104269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A028233 (n + 1)).toNat

end

end A319710.P15721196106175104269

/-! ## A319710.P11533569041648029442

`A011765(A083260(n+1))`
-/

namespace A319710.P11533569041648029442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A083260 (n + 1)).toNat

end

end A319710.P11533569041648029442

/-! ## A319710.P16561541848960160871

`A011765(A348717(n+1))`
-/

namespace A319710.P16561541848960160871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A348717 (n + 1)).toNat

end

end A319710.P16561541848960160871

/-! ## A319710.P8106745260142743428

`A056170(A323130(n+1))`
-/

namespace A319710.P8106745260142743428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A323130 (n + 1)).toNat

end

end A319710.P8106745260142743428

/-! ## A319710.P9741475121027832520

`A359374(A348717(n+1)+2)`
-/

namespace A319710.P9741475121027832520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359374 (A348717 (n + 1) + 2).toNat

end

end A319710.P9741475121027832520

/-! ## A319710.P7128440996842301892

`A091247(2*A067029(n+1))`
-/

namespace A319710.P7128440996842301892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * A067029 (n + 1)).toNat

end

end A319710.P7128440996842301892

/-! ## A319710.P1303625166111109778

`A056924(or(1, A067029(n+1)))`
-/

namespace A319710.P1303625166111109778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (Int.lor 1 (A067029 (n + 1))).toNat

end

end A319710.P1303625166111109778

/-! ## A319710.P464717910085431061

`A341996(A067029(n+1)²²)`
-/

namespace A319710.P464717910085431061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 ((A067029 (n + 1) ^ 2) ^ 2).toNat

end

end A319710.P464717910085431061

/-! ## A319710.P15482013349682408639

`A003415(∑{p}[A087179(n+1), #])`
-/

namespace A319710.P15482013349682408639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A319710.P15482013349682408639

/-! ## A319710.P15187180061355883341

`A067029(∏{p}[A067029(n+1), #])`
-/

namespace A319710.P15187180061355883341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A319710.P15187180061355883341

/-! ## A319710.P4750922029455561981

`A087179(∏{p}[A087179(n+1), #])`
-/

namespace A319710.P4750922029455561981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A319710.P4750922029455561981

/-! ## A319710.P10734532598292048985

`A007814(∏{p}[A246277(n+1), #])`
-/

namespace A319710.P10734532598292048985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A319710.P10734532598292048985

/-! ## A319710.P12928771034256019385

`A056170((n+1)/A028234(n+1))`
-/

namespace A319710.P12928771034256019385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A319710.P12928771034256019385

/-!
# A319711: Sum of A034968(d) over proper divisors d of n, where A034968 gives the sum of digits in factorial base.

The programs for A319711, the canonical program `A319711.P4258072044163212966` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319711 has offset 1).

The definition of A319711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319711.P4258072044163212966

`∑{d}[n+1, A034968(#%(n+1))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A319711

/-- `∑{d}[n+1, A034968(#%(n+1))]` -/
def P4258072044163212966.Spec : Prop :=
  ∀ n, P4258072044163212966.a n = A319711 (n + 1)

theorem P4258072044163212966.correct : P4258072044163212966.Spec := by
  intro n
  simp only [A319711, Nat.add_sub_cancel]

end A319711

/-! ## A319711.P10885072721312531077

`A319712(n+1)-A034968(n+1)`
-/

namespace A319711.P10885072721312531077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319712 (n + 1) - A034968 (n + 1)

end

end A319711.P10885072721312531077

namespace A319711

/-- `A319712(n+1)-A034968(n+1)` -/
def P10885072721312531077.Spec : Prop :=
  ∀ n, P10885072721312531077.a n = A319711 (n + 1)

end A319711

/-! ## A319711.P2851991674021542955

`∑{d}[n+1, A034968(#)]-A034968(n+1)`
-/

namespace A319711.P2851991674021542955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034968 d - A034968 (n + 1)

end

end A319711.P2851991674021542955

namespace A319711

/-- `∑{d}[n+1, A034968(#)]-A034968(n+1)` -/
def P2851991674021542955.Spec : Prop :=
  ∀ n, P2851991674021542955.a n = A319711 (n + 1)

end A319711

/-! ## A319711.P14996002913357896725

`∑{d}[n+1, A157658(#)*A319712((n+1)/#)]`
-/

namespace A319711.P14996002913357896725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A319712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319711.P14996002913357896725

namespace A319711

/-- `∑{d}[n+1, A157658(#)*A319712((n+1)/#)]` -/
def P14996002913357896725.Spec : Prop :=
  ∀ n, P14996002913357896725.a n = A319711 (n + 1)

end A319711

/-! ## A319711.P5269218075815555198

`A319712(n+1)-A139365(A220655(n+1)+1)`
-/

namespace A319711.P5269218075815555198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319712 (n + 1) - A139365 (A220655 (n + 1) + 1).toNat

end

end A319711.P5269218075815555198

namespace A319711

/-- `A319712(n+1)-A139365(A220655(n+1)+1)` -/
def P5269218075815555198.Spec : Prop :=
  ∀ n, P5269218075815555198.a n = A319711 (n + 1)

end A319711

/-! ## A319711.P17502879772794880575

`A319712(n+1)-A139365(A220655(n+2))`
-/

namespace A319711.P17502879772794880575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319712 (n + 1) - A139365 (A220655 (n + 2)).toNat

end

end A319711.P17502879772794880575

namespace A319711

/-- `A319712(n+1)-A139365(A220655(n+2))` -/
def P17502879772794880575.Spec : Prop :=
  ∀ n, P17502879772794880575.a n = A319711 (n + 1)

end A319711

/-!
# A319712: Sum of A034968(d) over divisors d of n, where A034968 gives the sum of digits in factorial base.

The programs for A319712, the canonical program `A319712.P4375645309056527447` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319712 has offset 1).

The definition of A319712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319712.P4375645309056527447

`∑{d}[n+1, A034968(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A319712

/-- `∑{d}[n+1, A034968(#)]` -/
def P4375645309056527447.Spec : Prop :=
  ∀ n, P4375645309056527447.a n = A319712 (n + 1)

theorem P4375645309056527447.correct : P4375645309056527447.Spec := by
  intro n
  simp only [A319712, Nat.add_sub_cancel]

end A319712

/-! ## A319712.P6913995635387812243

`∑{d}[n+1, #-A219651(#)]`
-/

namespace A319712.P6913995635387812243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A219651 d)

end

end A319712.P6913995635387812243

namespace A319712

/-- `∑{d}[n+1, #-A219651(#)]` -/
def P6913995635387812243.Spec : Prop :=
  ∀ n, P6913995635387812243.a n = A319712 (n + 1)

end A319712

/-! ## A319712.P12974217456940558250

`A319711(n+1)+A034968(n+1)`
-/

namespace A319712.P12974217456940558250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319711 (n + 1) + A034968 (n + 1)

end

end A319712.P12974217456940558250

namespace A319712

/-- `A319711(n+1)+A034968(n+1)` -/
def P12974217456940558250.Spec : Prop :=
  ∀ n, P12974217456940558250.a n = A319712 (n + 1)

end A319712

/-! ## A319712.P16473063853521932500

`∑{d}[n+1, A276146(A225901(#))]`
-/

namespace A319712.P16473063853521932500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276146 (A225901 d).toNat

end

end A319712.P16473063853521932500

namespace A319712

/-- `∑{d}[n+1, A276146(A225901(#))]` -/
def P16473063853521932500.Spec : Prop :=
  ∀ n, P16473063853521932500.a n = A319712 (n + 1)

end A319712

/-! ## A319712.P3140702557764115042

`∑{d}[n+1, A001222(A278236(#))]`
-/

namespace A319712.P3140702557764115042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A278236 d).toNat

end

end A319712.P3140702557764115042

namespace A319712

/-- `∑{d}[n+1, A001222(A278236(#))]` -/
def P3140702557764115042.Spec : Prop :=
  ∀ n, P3140702557764115042.a n = A319712 (n + 1)

end A319712

/-! ## A319712.P1041981180724265179

`∑{d}[n+1, A230419(A000217(#))]`
-/

namespace A319712.P1041981180724265179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230419 (A000217 d).toNat

end

end A319712.P1041981180724265179

namespace A319712

/-- `∑{d}[n+1, A230419(A000217(#))]` -/
def P1041981180724265179.Spec : Prop :=
  ∀ n, P1041981180724265179.a n = A319712 (n + 1)

end A319712

/-!
# A319713: Sum of A276150(d) over proper divisors d of n, where A276150 gives the sum of digits in primorial base.

The programs for A319713, the canonical program `A319713.P11183865929377716110` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319713 has offset 1).

The definition of A319713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319713.P11183865929377716110

`∑{d}[n+1, A276150(#%(n+1))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319713

/-- `∑{d}[n+1, A276150(#%(n+1))]` -/
def P11183865929377716110.Spec : Prop :=
  ∀ n, P11183865929377716110.a n = A319713 (n + 1)

theorem P11183865929377716110.correct : P11183865929377716110.Spec := by
  intro n
  simp only [A319713, Nat.add_sub_cancel]

end A319713

/-! ## A319713.P63459542084956252

`A319715(n+1)-A276150(n+1)`
-/

namespace A319713.P63459542084956252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319715 (n + 1) - A276150 (n + 1)

end

end A319713.P63459542084956252

namespace A319713

/-- `A319715(n+1)-A276150(n+1)` -/
def P63459542084956252.Spec : Prop :=
  ∀ n, P63459542084956252.a n = A319713 (n + 1)

end A319713

/-! ## A319713.P8812839169862384318

`∑{d}[n+1, A276150(#)]-A276150(n+1)`
-/

namespace A319713.P8812839169862384318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276150 d - A276150 (n + 1)

end

end A319713.P8812839169862384318

namespace A319713

/-- `∑{d}[n+1, A276150(#)]-A276150(n+1)` -/
def P8812839169862384318.Spec : Prop :=
  ∀ n, P8812839169862384318.a n = A319713 (n + 1)

end A319713

/-! ## A319713.P98727056637252538

`∑{d}[n+1, A157658(#)*A319715((n+1)/#)]`
-/

namespace A319713.P98727056637252538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A319715 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319713.P98727056637252538

namespace A319713

/-- `∑{d}[n+1, A157658(#)*A319715((n+1)/#)]` -/
def P98727056637252538.Spec : Prop :=
  ∀ n, P98727056637252538.a n = A319713 (n + 1)

end A319713

/-! ## A319713.P5820223430744565778

`A319715(n+1)+A355686(n+1)-A355687(n+1)`
-/

namespace A319713.P5820223430744565778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319715 (n + 1) + (A355686 (n + 1) - A355687 (n + 1))

end

end A319713.P5820223430744565778

namespace A319713

/-- `A319715(n+1)+A355686(n+1)-A355687(n+1)` -/
def P5820223430744565778.Spec : Prop :=
  ∀ n, P5820223430744565778.a n = A319713 (n + 1)

end A319713

/-! ## A319713.P7529083547067378439

`A319715(n+1)-A001222(A278226(n+1))`
-/

namespace A319713.P7529083547067378439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319715 (n + 1) - A001222 (A278226 (n + 1)).toNat

end

end A319713.P7529083547067378439

namespace A319713

/-- `A319715(n+1)-A001222(A278226(n+1))` -/
def P7529083547067378439.Spec : Prop :=
  ∀ n, P7529083547067378439.a n = A319713 (n + 1)

end A319713

/-!
# A319715: Sum of A276150(d) over divisors d of n, where A276150 gives the sum of digits in primorial base.

The programs for A319715, the canonical program `A319715.P13658229882711999882` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319715 has offset 1).

The definition of A319715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319715.P13658229882711999882

`∑{d}[n+1, A276150(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319715

/-- `∑{d}[n+1, A276150(#)]` -/
def P13658229882711999882.Spec : Prop :=
  ∀ n, P13658229882711999882.a n = A319715 (n + 1)

theorem P13658229882711999882.correct : P13658229882711999882.Spec := by
  intro n
  simp only [A319715, Nat.add_sub_cancel]

end A319715

/-! ## A319715.P2645840201832669613

`A319713(n+1)+A276150(n+1)`
-/

namespace A319715.P2645840201832669613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (n + 1) + A276150 (n + 1)

end

end A319715.P2645840201832669613

namespace A319715

/-- `A319713(n+1)+A276150(n+1)` -/
def P2645840201832669613.Spec : Prop :=
  ∀ n, P2645840201832669613.a n = A319715 (n + 1)

end A319715

/-! ## A319715.P18406230477811451170

`A319713(n+1)+A355687(n+1)-A355686(n+1)`
-/

namespace A319715.P18406230477811451170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (n + 1) + (A355687 (n + 1) - A355686 (n + 1))

end

end A319715.P18406230477811451170

namespace A319715

/-- `A319713(n+1)+A355687(n+1)-A355686(n+1)` -/
def P18406230477811451170.Spec : Prop :=
  ∀ n, P18406230477811451170.a n = A319715 (n + 1)

end A319715

/-! ## A319715.P10164806310554611978

`∑{d}[n+1, A007953(A049345(#))]`
-/

namespace A319715.P10164806310554611978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007953 (A049345 d).toNat

end

end A319715.P10164806310554611978

namespace A319715

/-- `∑{d}[n+1, A007953(A049345(#))]` -/
def P10164806310554611978.Spec : Prop :=
  ∀ n, P10164806310554611978.a n = A319715 (n + 1)

end A319715

/-! ## A319715.P3260425435693188776

`∑{d}[n+1, A001222(A278226(#))]`
-/

namespace A319715.P3260425435693188776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A278226 d).toNat

end

end A319715.P3260425435693188776

namespace A319715

/-- `∑{d}[n+1, A001222(A278226(#))]` -/
def P3260425435693188776.Spec : Prop :=
  ∀ n, P3260425435693188776.a n = A319715 (n + 1)

end A319715

/-! ## A319715.P4323088570826942925

`∑{d}[n+1, A001222(A276086(#))]`
-/

namespace A319715.P4323088570826942925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A276086 d).toNat

end

end A319715.P4323088570826942925

namespace A319715

/-- `∑{d}[n+1, A001222(A276086(#))]` -/
def P4323088570826942925.Spec : Prop :=
  ∀ n, P4323088570826942925.a n = A319715 (n + 1)

end A319715

/-! ## A319715.P18410544966039136821

`A319713(n+1)+A001222(A276086(n+1))`
-/

namespace A319715.P18410544966039136821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (n + 1) + A001222 (A276086 (n + 1)).toNat

end

end A319715.P18410544966039136821

namespace A319715

/-- `A319713(n+1)+A001222(A276086(n+1))` -/
def P18410544966039136821.Spec : Prop :=
  ∀ n, P18410544966039136821.a n = A319715 (n + 1)

end A319715

/-!
# A319717: Filter sequence combining the largest proper divisor of n (A032742) with modulo 6 residue of the smallest prime factor, A010875(A020639(n)), and a single bit A319710(n) telling whether the smallest prime factor is unitary.

The programs for A319717, there is no canonical definition to state claims against.
-/

/-! ## A319717.P4898784734116243012

`A319707(n+1)%A000203(A352359(n+4))`
-/

namespace A319717.P4898784734116243012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319707 (n + 1)) (A000203 (A352359 (n + 4)).toNat)

end

end A319717.P4898784734116243012

/-! ## A319717.P8107276177223140082

`A319707(n+1)+A193095(A133263(n))`
-/

namespace A319717.P8107276177223140082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1) + A193095 (A133263 n).toNat

end

end A319717.P8107276177223140082

/-! ## A319717.P1397566326044662281

`A319707(n+1)+A000007(A080827(n+1))`
-/

namespace A319717.P1397566326044662281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1) + A000007 (A080827 (n + 1)).toNat

end

end A319717.P1397566326044662281

/-! ## A319717.P17269732435988874885

`A319707(n+1)/A001055(A094407(n+4))`
-/

namespace A319717.P17269732435988874885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319707 (n + 1) : ℚ) / (A001055 (A094407 (n + 4)).toNat : ℚ)

end

end A319717.P17269732435988874885

/-! ## A319717.P5876363788513236781

`A319707(A002024(∑[n+1]))`
-/

namespace A319717.P5876363788513236781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A319717.P5876363788513236781

/-! ## A319717.P11451368795113568640

`or(A000007(A000096(n)), A319707(n+1))`
-/

namespace A319717.P11451368795113568640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000096 n).toNat) (A319707 (n + 1))

end

end A319717.P11451368795113568640

/-! ## A319717.P13813054210251562387

`A129372(A000217(n+3))*A319707(n+1)`
-/

namespace A319717.P13813054210251562387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (A000217 (n + 3)).toNat * A319707 (n + 1)

end

end A319717.P13813054210251562387

/-! ## A319717.P777623601477335379

`A319710(A073102(n+1))+A319707(n+1)`
-/

namespace A319717.P777623601477335379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A073102 (n + 1)).toNat + A319707 (n + 1)

end

end A319717.P777623601477335379

/-! ## A319717.P5562192475692165377

`A319707(n+1)+A000007(A131053(n+1))`
-/

namespace A319717.P5562192475692165377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1) + A000007 (A131053 (n + 1)).toNat

end

end A319717.P5562192475692165377

/-! ## A319717.P7876513759456923523

`A319707(n+1)*A327167(A045715(n+1))`
-/

namespace A319717.P7876513759456923523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1) * A327167 (A045715 (n + 1)).toNat

end

end A319717.P7876513759456923523

/-! ## A319717.P14646866661943319542

`A319707(n+1)+A000038(A319707(n+1)²)`
-/

namespace A319717.P14646866661943319542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1) + A000038 (A319707 (n + 1) ^ 2).toNat

end

end A319717.P14646866661943319542

/-! ## A319717.P1451544554267829332

`and(A319707(n+1), A381707(n+1))`
-/

namespace A319717.P1451544554267829332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A319707 (n + 1)) (A381707 (n + 1))

end

end A319717.P1451544554267829332

/-! ## A319717.P6565704700758583854

`A319707(n+1)+A000007(A319707(n+1)²)`
-/

namespace A319717.P6565704700758583854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1) + A000007 (A319707 (n + 1) ^ 2).toNat

end

end A319717.P6565704700758583854

/-! ## A319717.P17850676478582880806

`A054977(A125265(n+1))*A319707(n+1)`
-/

namespace A319717.P17850676478582880806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A125265 (n + 1)).toNat * A319707 (n + 1)

end

end A319717.P17850676478582880806

/-! ## A319717.P5464403434326450209

`A319716(n+1)%A106108(A223541(n))`
-/

namespace A319717.P5464403434326450209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319716 (n + 1)) (A106108 (A223541 n).toNat)

end

end A319717.P5464403434326450209

/-! ## A319717.P1601743240749275745

`A319707(n+1)+A023533(A025023(n+1))`
-/

namespace A319717.P1601743240749275745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1) + A023533 (A025023 (n + 1)).toNat

end

end A319717.P1601743240749275745

/-! ## A319717.P9663885060449698658

`A067029(A031928(n+1))*A319716(n+1)`
-/

namespace A319717.P9663885060449698658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A031928 (n + 1)).toNat * A319716 (n + 1)

end

end A319717.P9663885060449698658

/-! ## A319717.P9175518362980052759

`A319707(n+1)+A000038(A261170(2*(n+1)))`
-/

namespace A319717.P9175518362980052759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1) + A000038 (A261170 (2 * (n + 1))).toNat

end

end A319717.P9175518362980052759

/-! ## A319717.P8484554685220943428

`and(A086827(n+1), A319707(n+1))`
-/

namespace A319717.P8484554685220943428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A319707 (n + 1))

end

end A319717.P8484554685220943428

/-! ## A319717.P2960599825277665023

`and(A086827(n+1), A319716(n+1))`
-/

namespace A319717.P2960599825277665023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A319716 (n + 1))

end

end A319717.P2960599825277665023

/-!
# A319720: Write n in 4-ary, sort digits into decreasing order.

The programs for A319720, there is no canonical definition to state claims against.
-/

/-! ## A319720.P16896097913571868838

`A319652(n)+A165012(n)`
-/

namespace A319720.P16896097913571868838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n + A165012 n

end

end A319720.P16896097913571868838

/-! ## A319720.P13911224856196222386

`A319804(n)-A319652(n)`
-/

namespace A319720.P13911224856196222386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319804 n - A319652 n

end

end A319720.P13911224856196222386

/-! ## A319720.P9566109271565634077

`(A319804(n)+A165012(n))/2`
-/

namespace A319720.P9566109271565634077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319804 n + A165012 n : ℚ) / 2

end

end A319720.P9566109271565634077

/-! ## A319720.P8442206471144442927

`A319804(n)-A038572(A319804(n)-A165012(n))`
-/

namespace A319720.P8442206471144442927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319804 n - A038572 (A319804 n - A165012 n).toNat

end

end A319720.P8442206471144442927

/-! ## A319720.P18120054777162353635

`A319804(n)-A001281(A319804(n)-A165012(n))`
-/

namespace A319720.P18120054777162353635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319804 n - A001281 (A319804 n - A165012 n).toNat

end

end A319720.P18120054777162353635

/-! ## A319720.P17413393475520499928

`A319804(n)-A004526(A319804(n)-A165012(n))`
-/

namespace A319720.P17413393475520499928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319804 n - A004526 (A319804 n - A165012 n).toNat

end

end A319720.P17413393475520499928

/-! ## A319720.P8107761911870897187

`A038572(A319804(n)+A165012(n))`
-/

namespace A319720.P8107761911870897187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A319804 n + A165012 n).toNat

end

end A319720.P8107761911870897187

/-! ## A319720.P598378297211730297

`A001281(A319804(n)+A165012(n))`
-/

namespace A319720.P598378297211730297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319804 n + A165012 n).toNat

end

end A319720.P598378297211730297

/-! ## A319720.P180303618444600039

`A004526(A319804(n)+A165012(n))`
-/

namespace A319720.P180303618444600039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319804 n + A165012 n).toNat

end

end A319720.P180303618444600039

/-! ## A319720.P4774020054254142201

`(A165012(4*n)-A165012(n))/A020639(A001748(n+1))`
-/

namespace A319720.P4774020054254142201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165012 (4 * n) - A165012 n : ℚ) / (A020639 (A001748 (n + 1)).toNat : ℚ)

end

end A319720.P4774020054254142201

/-! ## A319720.P7005173274646335022

`A165013(4*n)-A165013(n)`
-/

namespace A319720.P7005173274646335022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165013 (4 * n) - A165013 n

end

end A319720.P7005173274646335022

/-! ## A319720.P15145889834233746683

`A002264(A165012(4*n)-A165012(n))`
-/

namespace A319720.P15145889834233746683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A165012 (4 * n) - A165012 n).toNat

end

end A319720.P15145889834233746683

/-!
# A319721: Number of non-isomorphic antichains of multisets of weight n.

The programs for A319721, there is no canonical definition to state claims against.
-/

/-! ## A319721.P13586161884824914772

`A199408(∑[A000831(n)])-char[1]`
-/

namespace A319721.P13586161884824914772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319721.P13586161884824914772

/-! ## A319721.P17505107142394977318

`A057820(A000302(n))+A002529(n)`
-/

namespace A319721.P17505107142394977318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A000302 n).toNat + A002529 n

end

end A319721.P17505107142394977318

/-! ## A319721.P8573046177622312377

`A345167(A265947(n)+A110880(n))`
-/

namespace A319721.P8573046177622312377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A265947 n + A110880 n).toNat

end

end A319721.P8573046177622312377

/-!
# A319722: Write n in 5-ary, sort digits into decreasing order.

The programs for A319722, there is no canonical definition to state claims against.
-/

/-! ## A319722.P16927864385002695550

`A319653(n)+A165032(n)`
-/

namespace A319722.P16927864385002695550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n + A165032 n

end

end A319722.P16927864385002695550

/-! ## A319722.P1938091457861686608

`A319805(n)-A319653(n)`
-/

namespace A319722.P1938091457861686608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n - A319653 n

end

end A319722.P1938091457861686608

/-! ## A319722.P11975098529424302633

`(A319805(n)+A165032(n))/2`
-/

namespace A319722.P11975098529424302633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319805 n + A165032 n : ℚ) / 2

end

end A319722.P11975098529424302633

/-! ## A319722.P16949542168632302873

`A319805(n)-A038572(A319805(n)-A165032(n))`
-/

namespace A319722.P16949542168632302873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n - A038572 (A319805 n - A165032 n).toNat

end

end A319722.P16949542168632302873

/-! ## A319722.P5881647206833668467

`A319805(n)-A001281(A319805(n)-A165032(n))`
-/

namespace A319722.P5881647206833668467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n - A001281 (A319805 n - A165032 n).toNat

end

end A319722.P5881647206833668467

/-! ## A319722.P18371463578649706668

`A319805(n)-A004525(A319805(n)-A165032(n))`
-/

namespace A319722.P18371463578649706668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n - A004525 (A319805 n - A165032 n).toNat

end

end A319722.P18371463578649706668

/-! ## A319722.P7710540289360522936

`A319805(n)-A004526(A319805(n)-A165032(n))`
-/

namespace A319722.P7710540289360522936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n - A004526 (A319805 n - A165032 n).toNat

end

end A319722.P7710540289360522936

/-! ## A319722.P9177889609946619838

`A038572(A319805(n)+A165032(n))`
-/

namespace A319722.P9177889609946619838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A319805 n + A165032 n).toNat

end

end A319722.P9177889609946619838

/-! ## A319722.P1890395076981704918

`A001281(A319805(n)+A165032(n))`
-/

namespace A319722.P1890395076981704918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319805 n + A165032 n).toNat

end

end A319722.P1890395076981704918

/-! ## A319722.P15401666981775399622

`A004525(A319805(n)+A165032(n))`
-/

namespace A319722.P15401666981775399622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319805 n + A165032 n).toNat

end

end A319722.P15401666981775399622

/-! ## A319722.P6630216355182374830

`A004526(A319805(n)+A165032(n))`
-/

namespace A319722.P6630216355182374830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319805 n + A165032 n).toNat

end

end A319722.P6630216355182374830

/-! ## A319722.P11293798758187362271

`A319653(n)+A008586(A165033(n))`
-/

namespace A319722.P11293798758187362271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n + A008586 (A165033 n).toNat

end

end A319722.P11293798758187362271

/-! ## A319722.P13714296108161763292

`A165033(5*n)-A165033(n)`
-/

namespace A319722.P13714296108161763292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 (5 * n) - A165033 n

end

end A319722.P13714296108161763292

/-!
# A319723: Write n in 6-ary, sort digits into decreasing order.

The programs for A319723, there is no canonical definition to state claims against.
-/

/-! ## A319723.P7386539362301679292

`A319654(n)+A165051(n)`
-/

namespace A319723.P7386539362301679292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 n + A165051 n

end

end A319723.P7386539362301679292

/-! ## A319723.P14400477172127103005

`A319806(n)-A319654(n)`
-/

namespace A319723.P14400477172127103005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319806 n - A319654 n

end

end A319723.P14400477172127103005

/-! ## A319723.P820192144468958240

`(A319806(n)+A165051(n))/2`
-/

namespace A319723.P820192144468958240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319806 n + A165051 n : ℚ) / 2

end

end A319723.P820192144468958240

/-! ## A319723.P6665426498552635642

`A001281(A319806(n)+A165051(n))`
-/

namespace A319723.P6665426498552635642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319806 n + A165051 n).toNat

end

end A319723.P6665426498552635642

/-! ## A319723.P6615995330411276520

`A004525(A319806(n)+A165051(n))`
-/

namespace A319723.P6615995330411276520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319806 n + A165051 n).toNat

end

end A319723.P6615995330411276520

/-! ## A319723.P10093350788213694465

`A004526(A319806(n)+A165051(n))`
-/

namespace A319723.P10093350788213694465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319806 n + A165051 n).toNat

end

end A319723.P10093350788213694465

/-! ## A319723.P9525078909449162295

`A025480(A319806(n)+A165051(n))`
-/

namespace A319723.P9525078909449162295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319806 n + A165051 n).toNat

end

end A319723.P9525078909449162295

/-! ## A319723.P15558380476319581155

`A319654(n)+A008587(A165052(n))`
-/

namespace A319723.P15558380476319581155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 n + A008587 (A165052 n).toNat

end

end A319723.P15558380476319581155

/-! ## A319723.P6558815702461500030

`A165052(6*n)-A165052(n)`
-/

namespace A319723.P6558815702461500030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 (6 * n) - A165052 n

end

end A319723.P6558815702461500030

/-!
# A319724: Write n in 7-ary, sort digits into decreasing order.

The programs for A319724, there is no canonical definition to state claims against.
-/

/-! ## A319724.P12989759016725326932

`A319655(n)+A165071(n)`
-/

namespace A319724.P12989759016725326932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n + A165071 n

end

end A319724.P12989759016725326932

/-! ## A319724.P7043684282041329268

`A319807(n)-A319655(n)`
-/

namespace A319724.P7043684282041329268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319807 n - A319655 n

end

end A319724.P7043684282041329268

/-! ## A319724.P10043785431219059701

`(A319807(n)+A165071(n))/2`
-/

namespace A319724.P10043785431219059701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319807 n + A165071 n : ℚ) / 2

end

end A319724.P10043785431219059701

/-! ## A319724.P5281079964215839607

`A038572(A319807(n)+A165071(n))`
-/

namespace A319724.P5281079964215839607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A319807 n + A165071 n).toNat

end

end A319724.P5281079964215839607

/-! ## A319724.P1744391344406180341

`A001281(A319807(n)+A165071(n))`
-/

namespace A319724.P1744391344406180341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319807 n + A165071 n).toNat

end

end A319724.P1744391344406180341

/-! ## A319724.P2684542650290626525

`A004525(A319807(n)+A165071(n))`
-/

namespace A319724.P2684542650290626525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319807 n + A165071 n).toNat

end

end A319724.P2684542650290626525

/-! ## A319724.P10200830321095148522

`A025480(A319807(n)+A165071(n))`
-/

namespace A319724.P10200830321095148522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319807 n + A165071 n).toNat

end

end A319724.P10200830321095148522

/-! ## A319724.P2255689918487182725

`A319655(n)+A008588(A165072(n))`
-/

namespace A319724.P2255689918487182725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n + A008588 (A165072 n).toNat

end

end A319724.P2255689918487182725

/-! ## A319724.P15539065846820680335

`A165072(A008589(n))-A165072(n)`
-/

namespace A319724.P15539065846820680335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165072 (A008589 n).toNat - A165072 n

end

end A319724.P15539065846820680335

/-!
# A319725: Write n in 8-ary, sort digits into decreasing order.

The programs for A319725, there is no canonical definition to state claims against.
-/

/-! ## A319725.P15803220124492617670

`A319656(n)+A165090(n)`
-/

namespace A319725.P15803220124492617670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n + A165090 n

end

end A319725.P15803220124492617670

/-! ## A319725.P14511687647091253013

`A319808(n)-A319656(n)`
-/

namespace A319725.P14511687647091253013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319808 n - A319656 n

end

end A319725.P14511687647091253013

/-! ## A319725.P12746285172920513061

`(A319808(n)+A165090(n))/2`
-/

namespace A319725.P12746285172920513061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319808 n + A165090 n : ℚ) / 2

end

end A319725.P12746285172920513061

/-! ## A319725.P5217456689623790368

`A025480(A319808(n)+A165090(n))`
-/

namespace A319725.P5217456689623790368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319808 n + A165090 n).toNat

end

end A319725.P5217456689623790368

/-! ## A319725.P13685028729785483504

`A165091(8*n)-A165091(n)`
-/

namespace A319725.P13685028729785483504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 (8 * n) - A165091 n

end

end A319725.P13685028729785483504

/-!
# A319726: Write n in 9-ary, sort digits into decreasing order.

The programs for A319726, there is no canonical definition to state claims against.
-/

/-! ## A319726.P4542285082242948397

`A319657(n)+A165110(n)`
-/

namespace A319726.P4542285082242948397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n + A165110 n

end

end A319726.P4542285082242948397

/-! ## A319726.P14737728625051658290

`A319747(n)-A319657(n)`
-/

namespace A319726.P14737728625051658290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319747 n - A319657 n

end

end A319726.P14737728625051658290

/-! ## A319726.P7422933854473956154

`A319657(n)+8*A165111(n)`
-/

namespace A319726.P7422933854473956154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n + 8 * A165111 n

end

end A319726.P7422933854473956154

/-! ## A319726.P14045378374249026710

`A319657(n)+A008590(A165111(n))`
-/

namespace A319726.P14045378374249026710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n + A008590 (A165111 n).toNat

end

end A319726.P14045378374249026710

/-! ## A319726.P11644046598815171696

`A165111(9*n)-A165111(n)`
-/

namespace A319726.P11644046598815171696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 (9 * n) - A165111 n

end

end A319726.P11644046598815171696

/-! ## A319726.P6974830388832233411

`A265556(n)-A037903(n)`
-/

namespace A319726.P6974830388832233411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n - A037903 n

end

end A319726.P6974830388832233411

/-! ## A319726.P11376617975129845782

`A319657(n)+A002262(2*A055959(n)²)`
-/

namespace A319726.P11376617975129845782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n + A002262 (2 * A055959 n ^ 2).toNat

end

end A319726.P11376617975129845782

/-! ## A319726.P2534406455710510874

`A319657(n)+A053616(2*A055959(n)²)`
-/

namespace A319726.P2534406455710510874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n + A053616 (2 * A055959 n ^ 2).toNat

end

end A319726.P2534406455710510874

/-!
# A319728: Number of strict T_0 integer partitions of n.

The programs for A319728, there is no canonical definition to state claims against.
-/

/-! ## A319728.P15393295054254107197

`A332577(n)-A350866(A100822(n+1))`
-/

namespace A319728.P15393295054254107197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 n - A350866 (A100822 (n + 1)).toNat

end

end A319728.P15393295054254107197

/-! ## A319728.P2465106198489838127

`A048766(A162580(n)+A120400(A098180(n)))`
-/

namespace A319728.P2465106198489838127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A162580 n + A120400 (A098180 n).toNat).toNat

end

end A319728.P2465106198489838127

/-! ## A319728.P16808178988542129077

`A071673(A193487(n+1)+A051031(3*n+4))`
-/

namespace A319728.P16808178988542129077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A193487 (n + 1) + A051031 (3 * n + 4)).toNat

end

end A319728.P16808178988542129077

/-!
# A319729: Regular triangle read by rows where T(n,k) is the number of labeled simple graphs on n vertices where all non-isolated vertices have degree k.

The programs for A319729, there is no canonical definition to state claims against.
-/

/-! ## A319729.P1448593900560333360

`A184162(A009998(n)^A247364(n))`
-/

namespace A319729.P1448593900560333360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184162 (SequenceMachineLib.roundAway ((A009998 n : ℚ) ^ (A247364 n : ℤ))).toNat

end

end A319729.P1448593900560333360

/-!
# A319730: Number T(n,k) of plane partitions of n into parts of exactly k sorts which are introduced in ascending order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A319730, there is no canonical definition to state claims against.
-/

/-! ## A319730.P2900878029153367237

`A319600(n)/A233543(n)`
-/

namespace A319730.P2900878029153367237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319600 n : ℚ) / (A233543 n : ℚ)

end

end A319730.P2900878029153367237

/-! ## A319730.P8873033632841697134

`A319600(n)/A002262(n)!`
-/

namespace A319730.P8873033632841697134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319600 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A319730.P8873033632841697134

/-! ## A319730.P15628712991873342934

`A319600(n)/A144328(n+1)!`
-/

namespace A319730.P15628712991873342934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319600 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A319730.P15628712991873342934

/-! ## A319730.P7283332041838340365

`A319600(n)/A119502(A061579(n))`
-/

namespace A319730.P7283332041838340365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319600 n : ℚ) / (A119502 (A061579 n).toNat : ℚ)

end

end A319730.P7283332041838340365

/-! ## A319730.P15087030294539283065

`A319600(n)/A166350(A233583(n+1))`
-/

namespace A319730.P15087030294539283065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319600 n : ℚ) / (A166350 (A233583 (n + 1)).toNat : ℚ)

end

end A319730.P15087030294539283065

/-! ## A319730.P8809823977640701160

`A319600(n)/A265312(A245300(n))`
-/

namespace A319730.P8809823977640701160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319600 n : ℚ) / (A265312 (A245300 n).toNat : ℚ)

end

end A319730.P8809823977640701160

/-! ## A319730.P8300382892013682289

`A319600(n)/A265312(A292564(n))`
-/

namespace A319730.P8300382892013682289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319600 n : ℚ) / (A265312 (A292564 n).toNat : ℚ)

end

end A319730.P8300382892013682289

/-! ## A319730.P979325405152287900

`A319600(n)/A112624(A059268(n))`
-/

namespace A319730.P979325405152287900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319600 n : ℚ) / (A112624 (A059268 n).toNat : ℚ)

end

end A319730.P979325405152287900

/-!
# A319731: Number of plane partitions of n into parts of sorts {1, 2, ... } which are introduced in ascending order.

The programs for A319731, there is no canonical definition to state claims against.
-/

/-! ## A319731.P17621849471195494833

`A167865(A037972(n))+A052409(n+1)`
-/

namespace A319731.P17621849471195494833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A037972 n).toNat + A052409 (n + 1)

end

end A319731.P17621849471195494833

/-! ## A319731.P14139092381048673729

`A357786(n+1)+A144197(A001006(n))`
-/

namespace A319731.P14139092381048673729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357786 (n + 1) + A144197 (A001006 n).toNat

end

end A319731.P14139092381048673729

/-!
# A319732: Number of plane partitions of 2n into parts of exactly n sorts which are introduced in ascending order.

The programs for A319732, there is no canonical definition to state claims against.
-/

/-! ## A319732.P6299552555273939653

`A319730(∑[4*n])`
-/

namespace A319732.P6299552555273939653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319730 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319732.P6299552555273939653

/-! ## A319732.P4072537538409428460

`record[A319730(gcd(n, A003987(n)))]`
-/

namespace A319732.P4072537538409428460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319730 (Int.gcd (n : ℤ) (A003987 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319732.P4072537538409428460

/-! ## A319732.P6512608657893673290

`record[(1-A003987(n))*A319730(n)]`
-/

namespace A319732.P6512608657893673290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003987 n) * A319730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319732.P6512608657893673290

/-! ## A319732.P12040537029695611451

`or(A000007(n), A319730(A046092(n)))`
-/

namespace A319732.P12040537029695611451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A319730 (A046092 n).toNat)

end

end A319732.P12040537029695611451

/-! ## A319732.P9387266036881850597

`record[A000007(A003987(n))*A319730(n)]`
-/

namespace A319732.P9387266036881850597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A003987 n).toNat * A319730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319732.P9387266036881850597

/-!
# A319733: a(n) is the sum of the digits of all positive integers k <= 2^n.

The programs for A319733, there is no canonical definition to state claims against.
-/

/-! ## A319733.P15352587162784930065

`A037123(2^n)`
-/

namespace A319733.P15352587162784930065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (2 ^ n)

end

end A319733.P15352587162784930065

/-! ## A319733.P10673090530559573286

`record[A037123(A029930(n))]`
-/

namespace A319733.P10673090530559573286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319733.P10673090530559573286

/-! ## A319733.P8600325409961731522

`record[A037123(A034008(n))]`
-/

namespace A319733.P8600325409961731522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319733.P8600325409961731522

/-! ## A319733.P10841898746936944487

`record[A037123(A055248(n))]`
-/

namespace A319733.P10841898746936944487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319733.P10841898746936944487

/-! ## A319733.P4006081567236062790

`record[A037123(A059268(n))]`
-/

namespace A319733.P4006081567236062790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319733.P4006081567236062790

/-!
# A319734: Expansion of Product_{0 < i < j} (1 + x^(i^2 + j^2)).

The programs for A319734, there is no canonical definition to state claims against.
-/

/-! ## A319734.P6399467870773503764

`A072670(3^A321445(n))`
-/

namespace A319734.P6399467870773503764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A321445 n : ℤ))).toNat

end

end A319734.P6399467870773503764

/-! ## A319734.P1170443565763737485

`A241091(A321445(n)%A141214(n))`
-/

namespace A319734.P1170443565763737485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 (Int.tmod (A321445 n) (A141214 n)).toNat

end

end A319734.P1170443565763737485

/-! ## A319734.P3963316895239739566

`A225767(A321445(n))^Δ[A024640(n)]`
-/

namespace A319734.P3963316895239739566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024640 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225767 (A321445 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A319734.P3963316895239739566

/-! ## A319734.P1727091039432239878

`A225767(A321445(n))%A050543(n+1)`
-/

namespace A319734.P1727091039432239878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225767 (A321445 n).toNat) (A050543 (n + 1))

end

end A319734.P1727091039432239878

/-! ## A319734.P2290416680201614373

`A225767(A321445(n))^A014963(A000726(n))`
-/

namespace A319734.P2290416680201614373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225767 (A321445 n).toNat : ℚ) ^ (A014963 (A000726 n).toNat : ℤ)

end

end A319734.P2290416680201614373

/-!
# A319735: Primitive weird numbers (pwn; A002975) congruent to 2 mod 4.

The programs for A319735, there is no canonical definition to state claims against.
-/

/-! ## A319735.P15043439617403809662

`∩[or(2, A002975(n+1)), A002975(n+1)]`
-/

namespace A319735.P15043439617403809662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A002975 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319735.P15043439617403809662

/-!
# A319736: The lexicographically earliest increasing sequence such that n divides the sum of the first a(n) terms.

The programs for A319736, there is no canonical definition to state claims against.
-/

/-! ## A319736.P1636314351585000166

`∑[A030305(record[A109449(n)])]`
-/

namespace A319736.P1636314351585000166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030305 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319736.P1636314351585000166

/-! ## A319736.P5990942034298921638

`lt[A357887(A185126(n+1)), A355531(n+1)]`
-/

namespace A319736.P5990942034298921638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357887 (A185126 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319736.P5990942034298921638

/-!
# A319738: Numbers whose Collatz trajectories cross their initial values a record number of times.

The programs for A319738, there is no canonical definition to state claims against.
-/

/-! ## A319738.P5884583447699123817

`A301937(record[A304030(n+1)])`
-/

namespace A319738.P5884583447699123817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301937 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319738.P5884583447699123817

/-!
# A319739: The 10-adic integer cube root of one seventh (1/7), that is, satisfying 7 * x^3 == 1 (mod 10^(n+1)), for all n.

The programs for A319739, there is no canonical definition to state claims against.
-/

/-! ## A319739.P10875720330571931943

`A225401(n)+A225410(n)-A306552(n+1)`
-/

namespace A319739.P10875720330571931943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A306552 (n + 1))

end

end A319739.P10875720330571931943

/-! ## A319739.P2445809893564864613

`A225402(n)+A225411(n)-A306552(n+1)`
-/

namespace A319739.P2445809893564864613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A306552 (n + 1))

end

end A319739.P2445809893564864613

/-! ## A319739.P12455229435067406846

`A225405(n)+A225408(n)-A306552(n+1)`
-/

namespace A319739.P12455229435067406846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A306552 (n + 1))

end

end A319739.P12455229435067406846

/-! ## A319739.P17198246755707426476

`A225406(n)+A225409(n)-A306552(n+1)`
-/

namespace A319739.P17198246755707426476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A306552 (n + 1))

end

end A319739.P17198246755707426476

/-! ## A319739.P17422253911526838322

`A225442(n)+A225451(n)-A306552(n+1)`
-/

namespace A319739.P17422253911526838322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A306552 (n + 1))

end

end A319739.P17422253911526838322

/-! ## A319739.P2394569835806378921

`A153042(n+1)+A225412(n)-A306552(n+1)`
-/

namespace A319739.P2394569835806378921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A306552 (n + 1))

end

end A319739.P2394569835806378921

/-! ## A319739.P11183114604373489764

`A225404(n+1)+A225407(n)-A306552(n+1)`
-/

namespace A319739.P11183114604373489764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A306552 (n + 1))

end

end A319739.P11183114604373489764

/-! ## A319739.P15936143345251050357

`A306554(n+1)+A306555(n+1)-A306552(n+1)`
-/

namespace A319739.P15936143345251050357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A306552 (n + 1))

end

end A319739.P15936143345251050357

/-! ## A319739.P1655240391775895998

`A306553(n+1)+A319740(n+1)-A306552(n+1)`
-/

namespace A319739.P1655240391775895998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306553 (n + 1) + (A319740 (n + 1) - A306552 (n + 1))

end

end A319739.P1655240391775895998

/-!
# A319740: The 10-adic integer cube root of one eleventh (1/11), that is, satisfying 11 * x^3 == 1 (mod 10^n), for all n.

The programs for A319740, there is no canonical definition to state claims against.
-/

/-! ## A319740.P7678508911585249294

`A225401(n)+A225410(n)-A306553(n+1)`
-/

namespace A319740.P7678508911585249294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A306553 (n + 1))

end

end A319740.P7678508911585249294

/-! ## A319740.P5885025661375551347

`A225402(n)+A225411(n)-A306553(n+1)`
-/

namespace A319740.P5885025661375551347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A306553 (n + 1))

end

end A319740.P5885025661375551347

/-! ## A319740.P10500336003906298622

`A225405(n)+A225408(n)-A306553(n+1)`
-/

namespace A319740.P10500336003906298622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A306553 (n + 1))

end

end A319740.P10500336003906298622

/-! ## A319740.P10254678868039032971

`A225406(n)+A225409(n)-A306553(n+1)`
-/

namespace A319740.P10254678868039032971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A306553 (n + 1))

end

end A319740.P10254678868039032971

/-! ## A319740.P15581694941859917013

`A225442(n)+A225451(n)-A306553(n+1)`
-/

namespace A319740.P15581694941859917013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A306553 (n + 1))

end

end A319740.P15581694941859917013

/-! ## A319740.P12929865270046318675

`A153042(n+1)+A225412(n)-A306553(n+1)`
-/

namespace A319740.P12929865270046318675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A306553 (n + 1))

end

end A319740.P12929865270046318675

/-! ## A319740.P18104433636068131818

`A225404(n+1)+A225407(n)-A306553(n+1)`
-/

namespace A319740.P18104433636068131818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A306553 (n + 1))

end

end A319740.P18104433636068131818

/-! ## A319740.P1089001542092520320

`A306552(n+1)+A319739(n)-A306553(n+1)`
-/

namespace A319740.P1089001542092520320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A306553 (n + 1))

end

end A319740.P1089001542092520320

/-! ## A319740.P10000116789832633519

`A306554(n+1)+A306555(n+1)-A306553(n+1)`
-/

namespace A319740.P10000116789832633519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A306553 (n + 1))

end

end A319740.P10000116789832633519

/-!
# A319743: Row sums of A174158.

The programs for A319743, there is no canonical definition to state claims against.
-/

/-! ## A319743.P10323154825169238917

`A334237(n+1)/(2*(n+1)²)`
-/

namespace A319743.P10323154825169238917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334237 (n + 1) : ℚ) / (2 * (n + 1) ^ 2 : ℚ)

end

end A319743.P10323154825169238917

/-! ## A319743.P1365331558780903698

`floor(A334237(n+1)/∑[A016825(n)])`
-/

namespace A319743.P1365331558780903698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334237 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A319743.P1365331558780903698

/-!
# A319744: Partial sums of bouncy numbers (A152054).

The programs for A319744, there is no canonical definition to state claims against.
-/

/-! ## A319744.P8688872901256677035

`∑[A152054(n+1)]`
-/

namespace A319744.P8688872901256677035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319744.P8688872901256677035

/-! ## A319744.P16437737846139389031

`∑[record[A152054(A331303(n))]]`
-/

namespace A319744.P16437737846139389031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152054 (A331303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319744.P16437737846139389031

/-! ## A319744.P14334124332437029939

`∑[A028310(A152054(-xor(n, -1)))]`
-/

namespace A319744.P14334124332437029939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152054 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319744.P14334124332437029939

/-! ## A319744.P10124785543251658471

`∑[record[A152054(A133310(n))]]`
-/

namespace A319744.P10124785543251658471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152054 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319744.P10124785543251658471

/-! ## A319744.P7412901274359934068

`∑[record[A152054(A152271(n))]]`
-/

namespace A319744.P7412901274359934068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152054 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319744.P7412901274359934068

/-! ## A319744.P15105049075770689543

`∑[record[A152054(A065648(n))]]`
-/

namespace A319744.P15105049075770689543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152054 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319744.P15105049075770689543

/-!
# A319745: Nonunitary harmonic numbers: numbers such that the harmonic mean of their nonunitary divisors is an integer.

The programs for A319745, there is no canonical definition to state claims against.
-/

/-! ## A319745.P11282008906796440658

`∩[A357497(n+1), A101771(n)]`
-/

namespace A319745.P11282008906796440658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319745.P11282008906796440658

/-! ## A319745.P16878765995639863585

`∩[A357497(n+1), A201997(n)]`
-/

namespace A319745.P16878765995639863585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201997 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319745.P16878765995639863585

/-! ## A319745.P13025929356729725270

`∩[A010432(n+1), A357497(n+1)]`
-/

namespace A319745.P13025929356729725270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319745.P13025929356729725270

/-! ## A319745.P6783337991575444152

`∩[A219227(n+1), A357497(n+1)]`
-/

namespace A319745.P6783337991575444152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319745.P6783337991575444152

/-! ## A319745.P7152914503878716013

`∩[A272978(n+1), A357497(n+1)]`
-/

namespace A319745.P7152914503878716013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319745.P7152914503878716013

/-!
# A319747: a(n) = A319726(n) + A319657(n).

The programs for A319747, there is no canonical definition to state claims against.
-/

/-! ## A319747.P7249831639368409017

`A319726(n)+A319657(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319747.P7249831639368409017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n + A319657 n

end

end A319747.P7249831639368409017

/-! ## A319747.P8999891922282502943

`A165110(n)+2*A319657(n)`
-/

namespace A319747.P8999891922282502943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n + 2 * A319657 n

end

end A319747.P8999891922282502943

/-! ## A319747.P11444899832259206874

`2*A319726(n)-A165110(n)`
-/

namespace A319747.P11444899832259206874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319726 n - A165110 n

end

end A319747.P11444899832259206874

/-! ## A319747.P5231635250668606938

`A055958(A319726(n))`
-/

namespace A319747.P5231635250668606938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 (A319726 n).toNat

end

end A319747.P5231635250668606938

/-! ## A319747.P11336915148282752444

`A055958(A319657(n)+A165110(n))`
-/

namespace A319747.P11336915148282752444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 (A319657 n + A165110 n).toNat

end

end A319747.P11336915148282752444

/-! ## A319747.P7993761148141248967

`A265556(n)+A265523(n)`
-/

namespace A319747.P7993761148141248967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n + A265523 n

end

end A319747.P7993761148141248967

/-!
# A319749: a(n) is the numerator of the Heron sequence with h(0)=3.

The programs for A319749, there is no canonical definition to state claims against.
-/

/-! ## A319749.P4618042225383794170

`a(n-1)²-2` with `a(0)=3, a(1)=11`
-/

namespace A319749.P4618042225383794170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11] fun n a =>
  a (n - 1) ^ 2 - 2

end

end A319749.P4618042225383794170

/-! ## A319749.P4854404122867134322

`a(n-1)*a(n-1)-2` with `a(0)=3, a(1)=11`
-/

namespace A319749.P4854404122867134322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11] fun n a =>
  a (n - 1) * a (n - 1) - 2

end

end A319749.P4854404122867134322

/-! ## A319749.P5405808115781815271

`A006497(2^n)`
-/

namespace A319749.P5405808115781815271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (2 ^ n)

end

end A319749.P5405808115781815271

/-! ## A319749.P1543046680407578906

`A100230(2^n)+1`
-/

namespace A319749.P1543046680407578906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100230 (2 ^ n) + 1

end

end A319749.P1543046680407578906

/-!
# A319750: a(n) is the denominator of the Heron sequence with h(0) = 3.

The programs for A319750, the canonical program `A319750.P4324588437210756397` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319750 has offset 0).

The definition of A319750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319750.P4324588437210756397

`A006190(2^n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A319750

/-- `A006190(2^n)` -/
def P4324588437210756397.Spec : Prop :=
  ∀ n, P4324588437210756397.a n = A319750 n

theorem P4324588437210756397.correct : P4324588437210756397.Spec := by
  intro n
  simp only [A319750]

end A319750

/-! ## A319750.P5739835671348585285

`∏[a(n-1)²-2]` with `a(0)=1, a(1)=3, a(2)=11`
-/

namespace A319750.P5739835671348585285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11] fun n f1 =>
  f1 (n - 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319750.P5739835671348585285

namespace A319750

/-- `∏[a(n-1)²-2]` -/
def P5739835671348585285.Spec : Prop :=
  ∀ n, P5739835671348585285.a n = A319750 n

end A319750

/-! ## A319750.P13141234334993793077

`A305889(2^(n+1))`
-/

namespace A319750.P13141234334993793077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 ^ (n + 1))

end

end A319750.P13141234334993793077

namespace A319750

/-- `A305889(2^(n+1))` -/
def P13141234334993793077.Spec : Prop :=
  ∀ n, P13141234334993793077.a n = A319750 n

end A319750

/-! ## A319750.P4530944296686568181

`A249579(2^(n+2))`
-/

namespace A319750.P4530944296686568181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (2 ^ (n + 2))

end

end A319750.P4530944296686568181

namespace A319750

/-- `A249579(2^(n+2))` -/
def P4530944296686568181.Spec : Prop :=
  ∀ n, P4530944296686568181.a n = A319750 n

end A319750

/-!
# A319751: Number of non-isomorphic set systems of weight n with empty intersection.

The programs for A319751, there is no canonical definition to state claims against.
-/

/-! ## A319751.P16197618824918862575

`A054404(A293548(n)+A193649(n))`
-/

namespace A319751.P16197618824918862575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A293548 n + A193649 n).toNat

end

end A319751.P16197618824918862575

/-!
# A319752: Number of non-isomorphic intersecting multiset partitions of weight n.

The programs for A319752, there is no canonical definition to state claims against.
-/

/-! ## A319752.P2016180341682685487

`A319779(round(acot(n)+n))+A319765(n)`
-/

namespace A319752.P2016180341682685487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319779 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A319765 n

end

end A319752.P2016180341682685487

/-! ## A319752.P15608127930196511255

`A319779(round(sqrt(n²+1)))+A319765(n)`
-/

namespace A319752.P15608127930196511255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319779 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A319765 n

end

end A319752.P15608127930196511255

/-! ## A319752.P11020010967380592103

`A319765(n)+A319779(n)%A007716(n)`
-/

namespace A319752.P11020010967380592103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319765 n + Int.tmod (A319779 n) (A007716 n)

end

end A319752.P11020010967380592103

/-! ## A319752.P13792161228500406218

`A319779(n)+A319765(n)%A018106(n)`
-/

namespace A319752.P13792161228500406218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319779 n + Int.tmod (A319765 n) (A018106 n)

end

end A319752.P13792161228500406218

/-! ## A319752.P11499584538854308103

`A319765(n)+lcm(A000120(n), A319779(n))`
-/

namespace A319752.P11499584538854308103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319765 n + (Int.lcm (A000120 n) (A319779 n) : ℤ)

end

end A319752.P11499584538854308103

/-!
# A319753: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - x^j)/(1 - k*x^j).

The programs for A319753, there is no canonical definition to state claims against.
-/

/-! ## A319753.P8629022898900085995

`A316441(A245539(n+1)^A289978(n))`
-/

namespace A319753.P8629022898900085995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (SequenceMachineLib.roundAway ((A245539 (n + 1) : ℚ) ^ (A289978 n : ℤ))).toNat

end

end A319753.P8629022898900085995

/-! ## A319753.P14369352651916889349

`A321928(lcm(A011776(n+1), A188211(n+1)))`
-/

namespace A319753.P14369352651916889349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321928 (Int.lcm (A011776 (n + 1)) (A188211 (n + 1)))

end

end A319753.P14369352651916889349

/-!
# A319754: a(n) = [x^n] Product_{k>=1} (1 - x^k)/(1 - n*x^k).

The programs for A319754, there is no canonical definition to state claims against.
-/

/-! ## A319754.P12138826666552014981

`A319753(∑[4*n])`
-/

namespace A319754.P12138826666552014981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319754.P12138826666552014981

/-! ## A319754.P10460876883619841708

`abs(A319753(A046092(n)))`
-/

namespace A319754.P10460876883619841708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319753 (A046092 n).toNat|

end

end A319754.P10460876883619841708

/-! ## A319754.P6800742909020194715

`lcm(A033999(n), A319753(A046092(n)))`
-/

namespace A319754.P6800742909020194715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A319753 (A046092 n).toNat)

end

end A319754.P6800742909020194715

/-! ## A319754.P12604464922058730619

`or(A000007(n), A319753(A046092(n)))`
-/

namespace A319754.P12604464922058730619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A319753 (A046092 n).toNat)

end

end A319754.P12604464922058730619

/-! ## A319754.P10995841529723082197

`A319753(A046092(n))+A035597(n)%2`
-/

namespace A319754.P10995841529723082197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A046092 n).toNat + Int.tmod (A035597 n) 2

end

end A319754.P10995841529723082197

/-!
# A319755: Number of non-isomorphic intersecting set multipartitions (multisets of sets) of weight n.

The programs for A319755, there is no canonical definition to state claims against.
-/

/-! ## A319755.P15811350532974511523

`A344607(n)+A004526(A094537(n))`
-/

namespace A319755.P15811350532974511523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344607 n + A004526 (A094537 n).toNat

end

end A319755.P15811350532974511523

/-! ## A319755.P12033498370919360606

`A246565(n)-A106167(A324754(n))`
-/

namespace A319755.P12033498370919360606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246565 n - A106167 (A324754 n).toNat

end

end A319755.P12033498370919360606

/-! ## A319755.P17418137362939014890

`A002024(A148668(n))-A051709(n+1)`
-/

namespace A319755.P17418137362939014890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148668 n).toNat - A051709 (n + 1)

end

end A319755.P17418137362939014890

/-! ## A319755.P12226455147064611283

`A309807(A085908(n+1))-A025465(n)`
-/

namespace A319755.P12226455147064611283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309807 (A085908 (n + 1)).toNat - A025465 n

end

end A319755.P12226455147064611283

/-! ## A319755.P3274635685628090635

`or(A000196(A059966(n+1)²), A349061(n))`
-/

namespace A319755.P3274635685628090635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A059966 (n + 1) ^ 2).toNat) (A349061 n)

end

end A319755.P3274635685628090635

/-!
# A319756: Expansion of Product_{k>=1} (1 - x^k)/(1 - k*x^k).

The programs for A319756, there is no canonical definition to state claims against.
-/

/-! ## A319756.P198496283664853467

`A353847(A026757(n)-A069359(n+1))`
-/

namespace A319756.P198496283664853467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A026757 n - A069359 (n + 1)).toNat

end

end A319756.P198496283664853467

/-!
# A319758: Expansion of Product_{k>=1} 1/(1 - Sum_{j=1..k} x^(j*k)).

The programs for A319758, there is no canonical definition to state claims against.
-/

/-! ## A319758.P9335916250542261879

`A129374(n)-A184946(A064924(n+2))`
-/

namespace A319758.P9335916250542261879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129374 n - A184946 (A064924 (n + 2)).toNat

end

end A319758.P9335916250542261879

/-! ## A319758.P6837862735778146031

`A129374(n)+A016389(A129374(n))`
-/

namespace A319758.P6837862735778146031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129374 n + A016389 (A129374 n).toNat

end

end A319758.P6837862735778146031

/-! ## A319758.P17105539868666226793

`A129374(n)-A025466(A060696(n))`
-/

namespace A319758.P17105539868666226793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129374 n - A025466 (A060696 n).toNat

end

end A319758.P17105539868666226793

/-! ## A319758.P5769872466949267949

`A129374(n)-A184993(A104725(n))`
-/

namespace A319758.P5769872466949267949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129374 n - A184993 (A104725 n).toNat

end

end A319758.P5769872466949267949

/-! ## A319758.P16516910536757075883

`A129374(n)-A359162(A018033(n))`
-/

namespace A319758.P16516910536757075883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129374 n - A359162 (A018033 n).toNat

end

end A319758.P16516910536757075883

/-!
# A319759: Number of non-isomorphic intersecting multiset partitions of weight n with empty intersection.

The programs for A319759, there is no canonical definition to state claims against.
-/

/-! ## A319759.P3476356848952357862

`A319764(A000009(n))+A319763(n)`
-/

namespace A319759.P3476356848952357862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319764 (A000009 n).toNat + A319763 n

end

end A319759.P3476356848952357862

/-! ## A319759.P15250403826268064004

`A319763(n)+A036860(A006093(n+1))`
-/

namespace A319759.P15250403826268064004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319763 n + A036860 (A006093 (n + 1)).toNat

end

end A319759.P15250403826268064004

/-! ## A319759.P8442887020773842652

`A317757(n)+A319752(n)-A007716(n)`
-/

namespace A319759.P8442887020773842652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317757 n + (A319752 n - A007716 n)

end

end A319759.P8442887020773842652

/-! ## A319759.P15402400177960801409

`A319763(n)+A014081(A186735(n))`
-/

namespace A319759.P15402400177960801409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319763 n + A014081 (A186735 n).toNat

end

end A319759.P15402400177960801409

/-! ## A319759.P13159254909314001793

`A138470(A349061(n)^A036043(n))`
-/

namespace A319759.P13159254909314001793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138470 (SequenceMachineLib.roundAway ((A349061 n : ℚ) ^ (A036043 n : ℤ))).toNat

end

end A319759.P13159254909314001793

/-!
# A319760: Number of non-isomorphic intersecting strict multiset partitions (sets of multisets) of weight n.

The programs for A319760, there is no canonical definition to state claims against.
-/

/-! ## A319760.P7263359992995649260

`A208452(n)+A121902(A076875(n))`
-/

namespace A319760.P7263359992995649260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208452 n + A121902 (A076875 n).toNat

end

end A319760.P7263359992995649260

/-! ## A319760.P426640969556142210

`A277194(A335457(n)+A008441(n))`
-/

namespace A319760.P426640969556142210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (A335457 n + A008441 n).toNat

end

end A319760.P426640969556142210

/-! ## A319760.P8184173999831530704

`A325166(A215524(n))+A209660(n)`
-/

namespace A319760.P8184173999831530704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (A215524 n).toNat + A209660 n

end

end A319760.P8184173999831530704

/-! ## A319760.P14316393157260190194

`A369054(A324621(n))+A079223(n)`
-/

namespace A319760.P14316393157260190194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A324621 n).toNat + A079223 n

end

end A319760.P14316393157260190194

/-!
# A319761: a(n) = Product_{i=1..n} i^s(n,i), where s is an unsigned Stirling number of the 1st kind.

The programs for A319761, there is no canonical definition to state claims against.
-/

/-! ## A319761.P8286849395053409021

`round(2*A033428(a(n-1))^(n-2))` with `a(0)=1`
-/

namespace A319761.P8286849395053409021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (2 * (A033428 (a (n - 1)).toNat : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A319761.P8286849395053409021

/-!
# A319763: Number of non-isomorphic strict intersecting multiset partitions (sets of multisets) of weight n with empty intersection.

The programs for A319763, there is no canonical definition to state claims against.
-/

/-! ## A319763.P4569256812501068753

`A319759(n)-A337193(n%∑[char[n!]]!)`
-/

namespace A319763.P4569256812501068753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 n - A337193 (n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A319763.P4569256812501068753

/-! ## A319763.P6809155432457489443

`A029436(A049853(n))+A000007(n)`
-/

namespace A319763.P6809155432457489443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (A049853 n).toNat + A000007 n

end

end A319763.P6809155432457489443

/-! ## A319763.P12725418568620459980

`A029436(A049853(n)-A000007(n))`
-/

namespace A319763.P12725418568620459980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (A049853 n - A000007 n).toNat

end

end A319763.P12725418568620459980

/-! ## A319763.P7551125102402493413

`A319759(n)-A319764(A000009(n))`
-/

namespace A319763.P7551125102402493413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 n - A319764 (A000009 n).toNat

end

end A319763.P7551125102402493413

/-! ## A319763.P6078957665360091406

`A319759(n)-A036860(A006093(n+1))`
-/

namespace A319763.P6078957665360091406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 n - A036860 (A006093 (n + 1)).toNat

end

end A319763.P6078957665360091406

/-!
# A319765: Number of non-isomorphic intersecting multiset partitions of weight n whose dual is also an intersecting multiset partition.

The programs for A319765, there is no canonical definition to state claims against.
-/

/-! ## A319765.P12804088325875332899

`A319752(n)-A319779(round(acot(n)+n))`
-/

namespace A319765.P12804088325875332899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319752 n - A319779 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A319765.P12804088325875332899

/-! ## A319765.P10134113593055144714

`A319752(n)-A319779(round(sqrt(n²+1)))`
-/

namespace A319765.P10134113593055144714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319752 n - A319779 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A319765.P10134113593055144714

/-! ## A319765.P11497100395231817091

`A028310(A319752(n)-A319779(n))`
-/

namespace A319765.P11497100395231817091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A319752 n - A319779 n).toNat

end

end A319765.P11497100395231817091

/-! ## A319765.P8241413677435026027

`A319752(n)-A178334(n)*A319779(n)`
-/

namespace A319765.P8241413677435026027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319752 n - A178334 n * A319779 n

end

end A319765.P8241413677435026027

/-! ## A319765.P5418789843491315494

`A008683((n+1)²)+A319752(n)-A319779(n)`
-/

namespace A319765.P5418789843491315494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A319752 n - A319779 n)

end

end A319765.P5418789843491315494

/-!
# A319768: Number of non-isomorphic strict multiset partitions (sets of multisets) of weight n whose dual is a (not necessarily strict) intersecting multiset partition.

The programs for A319768, there is no canonical definition to state claims against.
-/

/-! ## A319768.P15769713842426346851

`A262689(A173314(n))-1`
-/

namespace A319768.P15769713842426346851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A173314 n).toNat - 1

end

end A319768.P15769713842426346851

/-! ## A319768.P868628501961986603

`A208062(n)+A031346(A073525(n))`
-/

namespace A319768.P868628501961986603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 n + A031346 (A073525 n).toNat

end

end A319768.P868628501961986603

/-! ## A319768.P7476214087294428729

`A262689(A277968(n)+A229811(n+1))`
-/

namespace A319768.P7476214087294428729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A277968 n + A229811 (n + 1)).toNat

end

end A319768.P7476214087294428729

/-! ## A319768.P693620404230836082

`A077774(2*(n+1))+A072530(A000984(n))`
-/

namespace A319768.P693620404230836082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077774 (2 * (n + 1)) + A072530 (A000984 n).toNat

end

end A319768.P693620404230836082

/-!
# A319769: Number of non-isomorphic intersecting set multipartitions (multisets of sets) of weight n whose dual is also an intersecting set multipartition.

The programs for A319769, there is no canonical definition to state claims against.
-/

/-! ## A319769.P12708032729678036175

`A179822(n)+∑[∑[floor(n/9)]]`
-/

namespace A319769.P12708032729678036175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179822 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319769.P12708032729678036175

/-! ## A319769.P18163566772010390807

`A130571(A094947(n))`
-/

namespace A319769.P18163566772010390807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (A094947 n).toNat

end

end A319769.P18163566772010390807

/-! ## A319769.P1018492282280467511

`A070915(A179822(n))`
-/

namespace A319769.P1018492282280467511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (A179822 n).toNat

end

end A319769.P1018492282280467511

/-! ## A319769.P12946397444734564123

`A082288(A206100(n))`
-/

namespace A319769.P12946397444734564123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082288 (A206100 n).toNat

end

end A319769.P12946397444734564123

/-! ## A319769.P5283522092824170643

`A175712(n)+A060026(n)`
-/

namespace A319769.P5283522092824170643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175712 n + A060026 n

end

end A319769.P5283522092824170643

/-!
# A319770: Let f(1) = 1, f(2) = 1 + i (where i denotes the imaginary unit), f(3) = 2 + i, and for n > 2, f(n+1) is the Gaussian integer in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus and sharing at least one prime factor with f(n-1) but none with f(n) (in case of a tie, minimize the imaginary part); a(n) = the square of the modulus of f(n).

The programs for A319770, there is no canonical definition to state claims against.
-/

/-! ## A319770.P4612222696302157518

`A319771(n+1)²+A319772(n+1)²`
-/

namespace A319770.P4612222696302157518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319771 (n + 1) ^ 2 + A319772 (n + 1) ^ 2

end

end A319770.P4612222696302157518

/-!
# A319771: Let f(1) = 1, f(2) = 1 + i (where i denotes the imaginary unit), f(3) = 2 + i, and for n > 2, f(n+1) is the Gaussian integer in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus and sharing at least one prime factor with f(n-1) but none with f(n) (in case of a tie, minimize the imaginary part); a(n) = the real part of f(n).

The programs for A319771, there is no canonical definition to state claims against.
-/

/-! ## A319771.P7860413362104417429

`sqrt(A319770(n+1)-A319772(n+1)²)`
-/

namespace A319771.P7860413362104417429
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319770 (n + 1) - A319772 (n + 1) ^ 2 : ℝ)

end

end A319771.P7860413362104417429

/-! ## A319771.P5099899253250917715

`A000188(A319770(n+1)-A319772(n+1)²)`
-/

namespace A319771.P5099899253250917715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A319770 (n + 1) - A319772 (n + 1) ^ 2).toNat

end

end A319771.P5099899253250917715

/-! ## A319771.P18219269673178751805

`A000196(A319770(n+1)-A319772(n+1)²)`
-/

namespace A319771.P18219269673178751805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A319770 (n + 1) - A319772 (n + 1) ^ 2).toNat

end

end A319771.P18219269673178751805

/-! ## A319771.P17973657809222541060

`A019554(A319770(n+1)-A319772(n+1)²)`
-/

namespace A319771.P17973657809222541060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A319770 (n + 1) - A319772 (n + 1) ^ 2).toNat

end

end A319771.P17973657809222541060

/-!
# A319772: Let f(1) = 1, f(2) = 1 + i (where i denotes the imaginary unit), f(3) = 2 + i, and for n > 2, f(n+1) is the Gaussian integer in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus and sharing at least one prime factor with f(n-1) but none with f(n) (in case of a tie, minimize the imaginary part); a(n) = the imaginary part of f(n).

The programs for A319772, there is no canonical definition to state claims against.
-/

/-! ## A319772.P14168136026566203405

`sqrt(A319770(n+1)-A319771(n+1)²)`
-/

namespace A319772.P14168136026566203405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319770 (n + 1) - A319771 (n + 1) ^ 2 : ℝ)

end

end A319772.P14168136026566203405

/-! ## A319772.P6925975459951107925

`A000196(A319770(n+1)-A319771(n+1)²)`
-/

namespace A319772.P6925975459951107925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A319770 (n + 1) - A319771 (n + 1) ^ 2).toNat

end

end A319772.P6925975459951107925

/-!
# A319774: Number of intersecting set systems spanning n vertices whose dual is also an intersecting set system.

The programs for A319774, there is no canonical definition to state claims against.
-/

/-! ## A319774.P15483124700781326649

`A221991(n!)-n!`
-/

namespace A319774.P15483124700781326649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221991 (Nat.factorial n) - (Nat.factorial n : ℤ)

end

end A319774.P15483124700781326649

/-!
# A319775: Number of non-isomorphic multiset partitions of weight n with empty intersection and no part containing all the vertices.

The programs for A319775, there is no canonical definition to state claims against.
-/

/-! ## A319775.P8661412584051949879

`A117641(n)+A061313(A000665(n))`
-/

namespace A319775.P8661412584051949879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117641 n + A061313 (A000665 n).toNat

end

end A319775.P8661412584051949879

/-! ## A319775.P11538113747457760763

`A309262(A051336(n+1)*A125654(n))`
-/

namespace A319775.P11538113747457760763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309262 (A051336 (n + 1) * A125654 n).toNat

end

end A319775.P11538113747457760763

/-!
# A319776: Number of partitions of 2n in which any two distinct parts differ by at least n.

The programs for A319776, the canonical program `A319776.P4984269611817693773` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319776 has offset 0).

The definition of A319776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319776.P4047100307987146876

`A000005(A004277(n))+∑[A032741(n)]`
-/

namespace A319776.P4047100307987146876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004277 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319776.P4047100307987146876

namespace A319776

/-- `A000005(A004277(n))+∑[A032741(n)]` -/
def P4047100307987146876.Spec : Prop :=
  ∀ n, P4047100307987146876.a n = A319776 n

end A319776

/-! ## A319776.P7316929820803745055

`A000005(A004277(n))+A006218(n)-n`
-/

namespace A319776.P7316929820803745055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004277 n).toNat + (A006218 n - (n : ℤ))

end

end A319776.P7316929820803745055

namespace A319776

/-- `A000005(A004277(n))+A006218(n)-n` -/
def P7316929820803745055.Spec : Prop :=
  ∀ n, P7316929820803745055.a n = A319776 n

end A319776

/-! ## A319776.P4984269611817693773

`A320111(A008574(n))+∑[A032741(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A319776

/-- `A320111(A008574(n))+∑[A032741(n)]` -/
def P4984269611817693773.Spec : Prop :=
  ∀ n, P4984269611817693773.a n = A319776 n

theorem P4984269611817693773.correct : P4984269611817693773.Spec := by
  intro n
  simp only [A319776]

end A319776

/-! ## A319776.P13067001751818548374

`A032741(2*n)+∑[A032741(n)]+1`
-/

namespace A319776.P13067001751818548374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A319776.P13067001751818548374

namespace A319776

/-- `A032741(2*n)+∑[A032741(n)]+1` -/
def P13067001751818548374.Spec : Prop :=
  ∀ n, P13067001751818548374.a n = A319776 n

end A319776

/-! ## A319776.P6560916091526941273

`A032741(2*n)-n+A006218(n)+1`
-/

namespace A319776.P6560916091526941273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n) - (n : ℤ) + (A006218 n + 1)

end

end A319776.P6560916091526941273

namespace A319776

/-- `A032741(2*n)-n+A006218(n)+1` -/
def P6560916091526941273.Spec : Prop :=
  ∀ n, P6560916091526941273.a n = A319776 n

end A319776

/-! ## A319776.P12988854096705585849

`A218698(∑[4*n])`
-/

namespace A319776.P12988854096705585849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319776.P12988854096705585849

namespace A319776

/-- `A218698(∑[4*n])` -/
def P12988854096705585849.Spec : Prop :=
  ∀ n, P12988854096705585849.a n = A319776 n

end A319776

/-! ## A319776.P5293003173788050715

`A028310(A218698(n*2*(n+1)))`
-/

namespace A319776.P5293003173788050715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A218698 (n * (2 * (n + 1)))).toNat

end

end A319776.P5293003173788050715

namespace A319776

/-- `A028310(A218698(n*2*(n+1)))` -/
def P5293003173788050715.Spec : Prop :=
  ∀ n, P5293003173788050715.a n = A319776 n

end A319776

/-! ## A319776.P4684513249217615965

`A320226(n)+A032741(2*n)`
-/

namespace A319776.P4684513249217615965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 n + A032741 (2 * n)

end

end A319776.P4684513249217615965

namespace A319776

/-- `A320226(n)+A032741(2*n)` -/
def P4684513249217615965.Spec : Prop :=
  ∀ n, P4684513249217615965.a n = A319776 n

end A319776

/-!
# A319777: a(n) is the number of equivalence classes of triples of sets each with n or fewer elements where two triples are equivalent if the number of elements in all intersections is the same.

The programs for A319777, the canonical program `A319777.P6131394071393715367` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319777 has offset 0).

The definition of A319777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319777.P6131394071393715367

`∑[∑[∑[∑[∑[(3*n)²+2]-1]]-∑[floor(((n+1)/2)^4)]]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A319777

/-- `∑[∑[∑[∑[∑[(3*n)²+2]-1]]-∑[floor(((n+1)/2)^4)]]]` -/
def P6131394071393715367.Spec : Prop :=
  ∀ n, P6131394071393715367.a n = A319777 n

theorem P6131394071393715367.correct : P6131394071393715367.Spec := by
  intro n
  simp only [A319777]

end A319777

/-! ## A319777.P2818219945265566628

`2*∑[A244865(n)/2]`
-/

namespace A319777.P2818219945265566628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244865 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319777.P2818219945265566628

namespace A319777

/-- `2*∑[A244865(n)/2]` -/
def P2818219945265566628.Spec : Prop :=
  ∀ n, P2818219945265566628.a n = (A319777 n : ℚ)

end A319777

/-! ## A319777.P11011762181996585491

`∑[A244865(n)]-A020639(2*(n+1))+2`
-/

namespace A319777.P11011762181996585491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A020639 (2 * (n + 1)) + 2

end

end A319777.P11011762181996585491

namespace A319777

/-- `∑[A244865(n)]-A020639(2*(n+1))+2` -/
def P11011762181996585491.Spec : Prop :=
  ∀ n, P11011762181996585491.a n = A319777 n

end A319777

/-! ## A319777.P4135417373233894439

`A154257(A020639(2*(n+1))+1)+∑[A244865(n)]`
-/

namespace A319777.P4135417373233894439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154257 (A020639 (2 * (n + 1)) + 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319777.P4135417373233894439

namespace A319777

/-- `A154257(A020639(2*(n+1))+1)+∑[A244865(n)]` -/
def P4135417373233894439.Spec : Prop :=
  ∀ n, P4135417373233894439.a n = A319777 n

end A319777

/-! ## A319777.P13698803283717159683

`∑[A244865(n)]%A244881(n+1)`
-/

namespace A319777.P13698803283717159683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A244881 (n + 1))

end

end A319777.P13698803283717159683

namespace A319777

/-- `∑[A244865(n)]%A244881(n+1)` -/
def P13698803283717159683.Spec : Prop :=
  ∀ n, P13698803283717159683.a n = A319777 n

end A319777

/-!
# A319778: Number of non-isomorphic set systems of weight n with empty intersection whose dual is also a set system with empty intersection.

The programs for A319778, there is no canonical definition to state claims against.
-/

/-! ## A319778.P13033753188387462077

`A241087(A008760(n)+A000124(n))`
-/

namespace A319778.P13033753188387462077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 (A008760 n + A000124 n).toNat

end

end A319778.P13033753188387462077

/-! ## A319778.P6202641013829990719

`A079071(n)+A003056(A203852(n))`
-/

namespace A319778.P6202641013829990719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 n + A003056 (A203852 n).toNat

end

end A319778.P6202641013829990719

/-! ## A319778.P10394205622749279458

`A282838(n+1)+A003056(A203852(n))`
-/

namespace A319778.P10394205622749279458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (n + 1) + A003056 (A203852 n).toNat

end

end A319778.P10394205622749279458

/-! ## A319778.P13362317997374179310

`A341023(n+1)+A003056(A203852(n))`
-/

namespace A319778.P13362317997374179310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341023 (n + 1 + 56) + A003056 (A203852 n).toNat

end

end A319778.P13362317997374179310

/-!
# A319779: Number of intersecting multiset partitions of weight n whose dual is not an intersecting multiset partition.

The programs for A319779, there is no canonical definition to state claims against.
-/

/-! ## A319779.P6913996006801144823

`A000007(n)+A319752(n)-A319765(n)`
-/

namespace A319779.P6913996006801144823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A319752 n - A319765 n)

end

end A319779.P6913996006801144823

/-! ## A319779.P5008397926988295486

`A205295(n)+A319752(n)-A319765(n)`
-/

namespace A319779.P5008397926988295486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 n + (A319752 n - A319765 n)

end

end A319779.P5008397926988295486

/-! ## A319779.P16739300957683524532

`A319752(n)+A057428(n)*A319765(n)`
-/

namespace A319779.P16739300957683524532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319752 n + A057428 n * A319765 n

end

end A319779.P16739300957683524532

/-! ## A319779.P3622423083148157387

`A319752(n)-A165471(n²)*A319765(n)`
-/

namespace A319779.P3622423083148157387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319752 n - A165471 (n ^ 2) * A319765 n

end

end A319779.P3622423083148157387

/-! ## A319779.P10235681831193470573

`A008683(6*(n+1)²)+A319752(n)-A319765(n)`
-/

namespace A319779.P10235681831193470573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * (n + 1) ^ 2) + (A319752 n - A319765 n)

end

end A319779.P10235681831193470573

/-!
# A319780: a(n) is the period of cyclic structures that appear in the 3-state (0,1,2) 1D cellular automaton started from a single cell at state 1 with rule n.

The programs for A319780, there is no canonical definition to state claims against.
-/

/-! ## A319780.P14087774811851463339

`A349194(A168536(n+1))%3`
-/

namespace A319780.P14087774811851463339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349194 (A168536 (n + 1)).toNat) 3

end

end A319780.P14087774811851463339

/-! ## A319780.P15751312692726282357

`A316826(or(A001405(n), A339367(n)))`
-/

namespace A319780.P15751312692726282357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (Int.lor (A001405 n) (A339367 n)).toNat

end

end A319780.P15751312692726282357

/-! ## A319780.P16238548156347836281

`A035154(n+1)*A316826(A001405(n))`
-/

namespace A319780.P16238548156347836281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A316826 (A001405 n).toNat

end

end A319780.P16238548156347836281

/-! ## A319780.P3781335673606900980

`A316826(A001405(n))*A332997(n+1)`
-/

namespace A319780.P3781335673606900980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A001405 n).toNat * A332997 (n + 1)

end

end A319780.P3781335673606900980

/-! ## A319780.P10809641381508272320

`Δ[A005100(n+1)]*A316826(A001405(n))`
-/

namespace A319780.P10809641381508272320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A316826 (A001405 n).toNat

end

end A319780.P10809641381508272320

/-!
# A319781: Number of multiset partitions of integer partitions of n with empty intersection. Number of relatively prime factorizations of Heinz numbers of integer partitions of n.

The programs for A319781, there is no canonical definition to state claims against.
-/

/-! ## A319781.P10834572199698291430

`A002024(A102318(n))-n`
-/

namespace A319781.P10834572199698291430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A102318 n).toNat - (n : ℤ)

end

end A319781.P10834572199698291430

/-! ## A319781.P507916449573854720

`A257639(A150336(n))-n`
-/

namespace A319781.P507916449573854720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A150336 n).toNat - (n : ℤ)

end

end A319781.P507916449573854720

/-! ## A319781.P18208879945402542978

`A103128(A339036(n))-n`
-/

namespace A319781.P18208879945402542978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A339036 n).toNat - (n : ℤ)

end

end A319781.P18208879945402542978

/-! ## A319781.P17252324396449947278

`A119267(A001104(n+1))-n`
-/

namespace A319781.P17252324396449947278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119267 (A001104 (n + 1)).toNat - (n : ℤ)

end

end A319781.P17252324396449947278

/-! ## A319781.P5353313427842461238

`A119267(A061219(n+1))-n`
-/

namespace A319781.P5353313427842461238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119267 (A061219 (n + 1)).toNat - (n : ℤ)

end

end A319781.P5353313427842461238

/-!
# A319783: Number of set systems spanning n vertices with empty intersection whose dual is also a set system with empty intersection.

The programs for A319783, there is no canonical definition to state claims against.
-/

/-! ## A319783.P11852763042769829573

`203^a(n-1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A319783.P11852763042769829573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  203 ^ a (n - 1)

end

end A319783.P11852763042769829573

/-!
# A319785: a(n) = A073138(n) + A038573(n).

The programs for A319785, the canonical program `A319785.P17238291360876731257` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319785 has offset 0).

The definition of A319785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319785.P17238291360876731257

`A073138(n)+A038573(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A319785

/-- `A073138(n)+A038573(n)` -/
def P17238291360876731257.Spec : Prop :=
  ∀ n, P17238291360876731257.a n = A319785 n

theorem P17238291360876731257.correct : P17238291360876731257.Spec := by
  intro n
  simp only [A319785]

end A319785

/-! ## A319785.P4102939382645154769

`A001316(n)+A073138(n)-1`
-/

namespace A319785.P4102939382645154769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (A073138 n - 1)

end

end A319785.P4102939382645154769

namespace A319785

/-- `A001316(n)+A073138(n)-1` -/
def P4102939382645154769.Spec : Prop :=
  ∀ n, P4102939382645154769.a n = A319785 n

end A319785

/-! ## A319785.P5553008201096860066

`(A080100(n)+1)*A038573(n)`
-/

namespace A319785.P5553008201096860066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080100 n + 1) * A038573 n

end

end A319785.P5553008201096860066

namespace A319785

/-- `(A080100(n)+1)*A038573(n)` -/
def P5553008201096860066.Spec : Prop :=
  ∀ n, P5553008201096860066.a n = A319785 n

end A319785

/-! ## A319785.P11416128063598747715

`A164884(n)+2*A038573(n)`
-/

namespace A319785.P11416128063598747715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n + 2 * A038573 n

end

end A319785.P11416128063598747715

namespace A319785

/-- `A164884(n)+2*A038573(n)` -/
def P11416128063598747715.Spec : Prop :=
  ∀ n, P11416128063598747715.a n = A319785 n

end A319785

/-! ## A319785.P12573730908175043489

`2*A073138(n)-A164884(n)`
-/

namespace A319785.P12573730908175043489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073138 n - A164884 n

end

end A319785.P12573730908175043489

namespace A319785

/-- `2*A073138(n)-A164884(n)` -/
def P12573730908175043489.Spec : Prop :=
  ∀ n, P12573730908175043489.a n = A319785 n

end A319785

/-! ## A319785.P1025890216388870276

`A038573(n)+A319650(n)+n`
-/

namespace A319785.P1025890216388870276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n + (A319650 n + (n : ℤ))

end

end A319785.P1025890216388870276

namespace A319785

/-- `A038573(n)+A319650(n)+n` -/
def P1025890216388870276.Spec : Prop :=
  ∀ n, P1025890216388870276.a n = A319785 n

end A319785

/-! ## A319785.P11476303922016870480

`A073138(n)+n-A048967(n)`
-/

namespace A319785.P11476303922016870480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n + ((n : ℤ) - A048967 n)

end

end A319785.P11476303922016870480

namespace A319785

/-- `A073138(n)+n-A048967(n)` -/
def P11476303922016870480.Spec : Prop :=
  ∀ n, P11476303922016870480.a n = A319785 n

end A319785

/-! ## A319785.P1980039911166063438

`A264596(A073137(n))+A073137(n)`
-/

namespace A319785.P1980039911166063438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 (A073137 n).toNat + A073137 n

end

end A319785.P1980039911166063438

namespace A319785

/-- `A264596(A073137(n))+A073137(n)` -/
def P1980039911166063438.Spec : Prop :=
  ∀ n, P1980039911166063438.a n = A319785 n

end A319785

/-! ## A319785.P2385439391920251781

`(A080100(n)+1)*A000225(A000120(n))`
-/

namespace A319785.P2385439391920251781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080100 n + 1) * A000225 (A000120 n).toNat

end

end A319785.P2385439391920251781

namespace A319785

/-- `(A080100(n)+1)*A000225(A000120(n))` -/
def P2385439391920251781.Spec : Prop :=
  ∀ n, P2385439391920251781.a n = A319785 n

end A319785

/-! ## A319785.P11245525902524230785

`(A000225(A023416(n))+2)*A038573(n)`
-/

namespace A319785.P11245525902524230785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (A023416 n).toNat + 2) * A038573 n

end

end A319785.P11245525902524230785

namespace A319785

/-- `(A000225(A023416(n))+2)*A038573(n)` -/
def P11245525902524230785.Spec : Prop :=
  ∀ n, P11245525902524230785.a n = A319785 n

end A319785

/-! ## A319785.P3341160223001401334

`(A038573(A035327(n))+2)*A038573(n)`
-/

namespace A319785.P3341160223001401334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 (A035327 n).toNat + 2) * A038573 n

end

end A319785.P3341160223001401334

namespace A319785

/-- `(A038573(A035327(n))+2)*A038573(n)` -/
def P3341160223001401334.Spec : Prop :=
  ∀ n, P3341160223001401334.a n = A319785 n

end A319785

/-! ## A319785.P10954863372171023096

`A073139(n)+A073140(n)-A164884(n)`
-/

namespace A319785.P10954863372171023096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 n + (A073140 n - A164884 n)

end

end A319785.P10954863372171023096

namespace A319785

/-- `A073139(n)+A073140(n)-A164884(n)` -/
def P10954863372171023096.Spec : Prop :=
  ∀ n, P10954863372171023096.a n = A319785 n

end A319785

/-! ## A319785.P18278864653365966906

`A073138(n)+A073138(n)/A080100(n)`
-/

namespace A319785.P18278864653365966906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073138 n : ℚ) + (A073138 n : ℚ) / (A080100 n : ℚ)

end

end A319785.P18278864653365966906

namespace A319785

/-- `A073138(n)+A073138(n)/A080100(n)` -/
def P18278864653365966906.Spec : Prop :=
  ∀ n, P18278864653365966906.a n = (A319785 n : ℚ)

end A319785

/-! ## A319785.P13593586745918164899

`A073138(n)+A073138(A073138(n)-A164884(n))`
-/

namespace A319785.P13593586745918164899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n + A073138 (A073138 n - A164884 n).toNat

end

end A319785.P13593586745918164899

namespace A319785

/-- `A073138(n)+A073138(A073138(n)-A164884(n))` -/
def P13593586745918164899.Spec : Prop :=
  ∀ n, P13593586745918164899.a n = A319785 n

end A319785

/-! ## A319785.P12738399702163898899

`A055944(A073138(n))`
-/

namespace A319785.P12738399702163898899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (A073138 n).toNat

end

end A319785.P12738399702163898899

namespace A319785

/-- `A055944(A073138(n))` -/
def P12738399702163898899.Spec : Prop :=
  ∀ n, P12738399702163898899.a n = A319785 n

end A319785

/-! ## A319785.P13990697282978645403

`A256999(A073137(n))+A038573(n)`
-/

namespace A319785.P13990697282978645403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A073137 n).toNat + A038573 n

end

end A319785.P13990697282978645403

namespace A319785

/-- `A256999(A073137(n))+A038573(n)` -/
def P13990697282978645403.Spec : Prop :=
  ∀ n, P13990697282978645403.a n = A319785 n

end A319785

/-! ## A319785.P3250422288616477416

`(A038573(A036044(n))+2)*A038573(n)`
-/

namespace A319785.P3250422288616477416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 (A036044 n).toNat + 2) * A038573 n

end

end A319785.P3250422288616477416

namespace A319785

/-- `(A038573(A036044(n))+2)*A038573(n)` -/
def P3250422288616477416.Spec : Prop :=
  ∀ n, P3250422288616477416.a n = A319785 n

end A319785

/-! ## A319785.P1966816511201242162

`A088512(2*n+1)+A073138(n)`
-/

namespace A319785.P1966816511201242162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 (2 * n + 1) + A073138 n

end

end A319785.P1966816511201242162

namespace A319785

/-- `A088512(2*n+1)+A073138(n)` -/
def P1966816511201242162.Spec : Prop :=
  ∀ n, P1966816511201242162.a n = A319785 n

end A319785

/-! ## A319785.P1374635164088043551

`A073137(2*n+1)-A080100(n)`
-/

namespace A319785.P1374635164088043551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (2 * n + 1) - A080100 n

end

end A319785.P1374635164088043551

namespace A319785

/-- `A073137(2*n+1)-A080100(n)` -/
def P1374635164088043551.Spec : Prop :=
  ∀ n, P1374635164088043551.a n = A319785 n

end A319785

/-! ## A319785.P1063933074475655430

`(A080100(n)+1)*A088512(2*n+1)`
-/

namespace A319785.P1063933074475655430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080100 n + 1) * A088512 (2 * n + 1)

end

end A319785.P1063933074475655430

namespace A319785

/-- `(A080100(n)+1)*A088512(2*n+1)` -/
def P1063933074475655430.Spec : Prop :=
  ∀ n, P1063933074475655430.a n = A319785 n

end A319785

/-!
# A319786: Number of factorizations of n where no two factors are relatively prime.

The programs for A319786, there is no canonical definition to state claims against.
-/

/-! ## A319786.P18253044156674231676

`Δ[A096276(n)]-A281116(n+1)`
-/

namespace A319786.P18253044156674231676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A281116 (n + 1)

end

end A319786.P18253044156674231676

/-! ## A319786.P17490098349726956181

`A001055(n+1)-A281116(n+1)`
-/

namespace A319786.P17490098349726956181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A281116 (n + 1)

end

end A319786.P17490098349726956181

/-! ## A319786.P16033974680384277171

`A028422(n+1)+1-A281116(n+1)`
-/

namespace A319786.P16033974680384277171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A281116 (n + 1))

end

end A319786.P16033974680384277171

/-! ## A319786.P3851536110692231893

`A028422(n+1)-A023443(A281116(n+1))`
-/

namespace A319786.P3851536110692231893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) - A023443 (A281116 (n + 1)).toNat

end

end A319786.P3851536110692231893

/-! ## A319786.P48673156778434396

`A050322(A101296(n+1))-A281116(n+1)`
-/

namespace A319786.P48673156778434396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A101296 (n + 1)).toNat - A281116 (n + 1)

end

end A319786.P48673156778434396

/-! ## A319786.P1540029805814752118

`A318284(A181819(n+1))-A281116(n+1)`
-/

namespace A319786.P1540029805814752118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181819 (n + 1)).toNat - A281116 (n + 1)

end

end A319786.P1540029805814752118

/-! ## A319786.P10054144851642778389

`A349907(A003961(n+1))-A281116(n+1)`
-/

namespace A319786.P10054144851642778389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (A003961 (n + 1)).toNat - A281116 (n + 1)

end

end A319786.P10054144851642778389

/-! ## A319786.P11629805516693518539

`A349907(A064988(n+1))-A281116(n+1)`
-/

namespace A319786.P11629805516693518539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (A064988 (n + 1)).toNat - A281116 (n + 1)

end

end A319786.P11629805516693518539

/-! ## A319786.P11739387511896349285

`A327658(A046523(n+1))`
-/

namespace A319786.P11739387511896349285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327658 (A046523 (n + 1)).toNat

end

end A319786.P11739387511896349285

/-! ## A319786.P17033651689337895077

`A327658(n+1)`
-/

namespace A319786.P17033651689337895077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327658 (n + 1)

end

end A319786.P17033651689337895077

/-!
# A319787: Number of intersecting multiset partitions of normal multisets of size n.

The programs for A319787, there is no canonical definition to state claims against.
-/

/-! ## A319787.P17678292573041001570

`floor(root(A173210(∑[n+2]+3), 4))`
-/

namespace A319787.P17678292573041001570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173210 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A319787.P17678292573041001570

/-! ## A319787.P8184103080392182961

`A070564(A150768(n))`
-/

namespace A319787.P8184103080392182961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A150768 n).toNat

end

end A319787.P8184103080392182961

/-! ## A319787.P10747020986234662075

`A113215(A144085(n))`
-/

namespace A319787.P10747020986234662075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A144085 n).toNat

end

end A319787.P10747020986234662075

/-!
# A319788: Tetrahedral numbers divisible by a record number of smaller tetrahedral numbers.

The programs for A319788, there is no canonical definition to state claims against.
-/

/-! ## A319788.P6058041095492443363

`A000292(lcm(A164402(n), A276097(n+1)))`
-/

namespace A319788.P6058041095492443363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.lcm (A164402 n) (A276097 (n + 1)))

end

end A319788.P6058041095492443363

/-! ## A319788.P14866917694036122229

`A358927(A028374(n+1)%A049292(n+1))`
-/

namespace A319788.P14866917694036122229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358927 (Int.tmod (A028374 (n + 1)) (A049292 (n + 1))).toNat

end

end A319788.P14866917694036122229

/-!
# A319789: Number of intersecting multiset partitions of strongly normal multisets of size n.

The programs for A319789, there is no canonical definition to state claims against.
-/

/-! ## A319789.P5773167483335063416

`round(sqrt(A347959((n+1)!)+1))`
-/

namespace A319789.P5773167483335063416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A347959 (Nat.factorial (n + 1)) + 1 : ℝ))

end

end A319789.P5773167483335063416

/-! ## A319789.P5601400576267581966

`A121208(A063834(n))`
-/

namespace A319789.P5601400576267581966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (A063834 n).toNat

end

end A319789.P5601400576267581966

/-! ## A319789.P12692069144229858603

`A121208(A086737(n))`
-/

namespace A319789.P12692069144229858603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (A086737 n).toNat

end

end A319789.P12692069144229858603

/-!
# A319790: Number of non-isomorphic connected multiset partitions of weight n with empty intersection.

The programs for A319790, there is no canonical definition to state claims against.
-/

/-! ## A319790.P11242322342452399943

`A007718(n)-A007716(n)+A317757(n)`
-/

namespace A319790.P11242322342452399943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007718 n - A007716 n + A317757 n

end

end A319790.P11242322342452399943

/-! ## A319790.P11487416042354720115

`and(A052905(A094855(n)), A114297(n))`
-/

namespace A319790.P11487416042354720115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052905 (A094855 n).toNat) (A114297 n)

end

end A319790.P11487416042354720115

/-! ## A319790.P8801286463326684498

`A033183(A235879(n+1)%A006318(n))`
-/

namespace A319790.P8801286463326684498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (Int.tmod (A235879 (n + 1)) (A006318 n)).toNat

end

end A319790.P8801286463326684498

/-! ## A319790.P1261708112587953819

`A022290(C(A027338(n), A317143(n+1)))`
-/

namespace A319790.P1261708112587953819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (Nat.choose (A027338 n).toNat (A317143 (n + 1)).toNat)

end

end A319790.P1261708112587953819

/-!
# A319792: Number of non-isomorphic connected set systems of weight n with empty intersection.

The programs for A319792, there is no canonical definition to state claims against.
-/

/-! ## A319792.P13859110261815795599

`A300913(n)-A283877(n)+A319751(n)`
-/

namespace A319792.P13859110261815795599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300913 n - A283877 n + A319751 n

end

end A319792.P13859110261815795599

/-! ## A319792.P5667722535365406685

`A224931(abs(A131577(n)+2-n-n)+2)`
-/

namespace A319792.P5667722535365406685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224931 (|A131577 n + (2 - (n : ℤ)) - (n : ℤ)| + 2).toNat

end

end A319792.P5667722535365406685

/-! ## A319792.P14410041780840728014

`A127431(A297196(n))-A001190(n)`
-/

namespace A319792.P14410041780840728014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127431 (A297196 n).toNat - A001190 n

end

end A319792.P14410041780840728014

/-! ## A319792.P11705531912676702048

`A257212(A121688(n))-A126302(n)`
-/

namespace A319792.P11705531912676702048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A121688 n).toNat - A126302 n

end

end A319792.P11705531912676702048

/-!
# A319793: Number of non-isomorphic connected strict multiset partitions (sets of multisets) of weight n with empty intersection.

The programs for A319793, there is no canonical definition to state claims against.
-/

/-! ## A319793.P16953159822426227126

`A319557(n)-A316980(n)+A319077(n)`
-/

namespace A319793.P16953159822426227126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319557 n - A316980 n + A319077 n

end

end A319793.P16953159822426227126

/-!
# A319794: Number of ways to split a strict integer partition of n into consecutive subsequences with weakly decreasing sums.

The programs for A319794, there is no canonical definition to state claims against.
-/

/-! ## A319794.P7627597798043996185

`A346130(A342343(n))`
-/

namespace A319794.P7627597798043996185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A342343 n).toNat

end

end A319794.P7627597798043996185

/-! ## A319794.P1149289394636670731

`A027338(n)-A168068(A062399(n))`
-/

namespace A319794.P1149289394636670731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 n - A168068 (A062399 n).toNat

end

end A319794.P1149289394636670731

/-! ## A319794.P8858018373108923724

`A027338(n)-A168068(A351870(n))`
-/

namespace A319794.P8858018373108923724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 n - A168068 (A351870 n).toNat

end

end A319794.P8858018373108923724

/-! ## A319794.P6220755745305756147

`xor(A056556(A141344(n)), A331195(n))`
-/

namespace A319794.P6220755745305756147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056556 (A141344 n).toNat) (A331195 n)

end

end A319794.P6220755745305756147

/-!
# A319795: a(n) = n^(n+1)/(n-1)^n for n>1, rounded to nearest integer.

The programs for A319795, there is no canonical definition to state claims against.
-/

/-! ## A319795.P7229185785154865538

`round((n+1)*((n+2)/(n+1))^(n+3))`
-/

namespace A319795.P7229185785154865538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 2 : ℚ) / (n + 1 : ℚ)) ^ (n + 3))

end

end A319795.P7229185785154865538

/-! ## A319795.P15215699772909289547

`floor(A000217(3*n+4)/log(A163071(n)))+1`
-/

namespace A319795.P15215699772909289547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (3 * n + 4) : ℝ) / Real.log (A163071 n : ℝ)⌋ + 1

end

end A319795.P15215699772909289547

/-! ## A319795.P13054046647311133140

`ceil(log2(A339631(2*n+3)²))`
-/

namespace A319795.P13054046647311133140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A339631 (2 * n + 3) ^ 2 : ℝ)⌉

end

end A319795.P13054046647311133140

/-! ## A319795.P11302761251160409759

`ceil(log2(A100937(n+3)+1))+1`
-/

namespace A319795.P11302761251160409759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A100937 (n + 3) + 1 : ℝ)⌉ + 1

end

end A319795.P11302761251160409759

/-! ## A319795.P1470850702968693068

`floor(ratio[A376871(n+2)])`
-/

namespace A319795.P1470850702968693068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A319795.P1470850702968693068

/-!
# A319796: Even numbers that have middle divisors, where "middle divisor" means a divisor in the half-open interval [sqrt(n/2), sqrt(n*2)).

The programs for A319796, the canonical program `A319796.P9183521595932726378` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319796 has offset 1).

The definition of A319796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319796.P9183521595932726378

`eq[gcd(2, n), A347950(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A319796

/-- `eq[gcd(2, n), A347950(n+1)]+1` -/
def P9183521595932726378.Spec : Prop :=
  ∀ n, (P9183521595932726378.a n : ℤ) = A319796 (n + 1)

theorem P9183521595932726378.correct : P9183521595932726378.Spec := by
  intro n
  simp only [A319796, Nat.add_sub_cancel]

end A319796

/-! ## A319796.P4976569677413733066

`eq[1, and(n, A348327(n+1)+1)]+1`
-/

namespace A319796.P4976569677413733066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A348327 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319796.P4976569677413733066

namespace A319796

/-- `eq[1, and(n, A348327(n+1)+1)]+1` -/
def P4976569677413733066.Spec : Prop :=
  ∀ n, (P4976569677413733066.a n : ℤ) = A319796 (n + 1)

end A319796

/-! ## A319796.P1195952715811751621

`∩[2*(n+1), A071562(n+1)]`
-/

namespace A319796.P1195952715811751621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319796.P1195952715811751621

namespace A319796

/-- `∩[2*(n+1), A071562(n+1)]` -/
def P1195952715811751621.Spec : Prop :=
  ∀ n, (P1195952715811751621.a n : ℤ) = A319796 (n + 1)

end A319796

/-! ## A319796.P13758519700103608269

`filter[A004277(n+1), A347950(#)]`
-/

namespace A319796.P13758519700103608269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P13758519700103608269

namespace A319796

/-- `filter[A004277(n+1), A347950(#)]` -/
def P13758519700103608269.Spec : Prop :=
  ∀ n, P13758519700103608269.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P14734334891864460216

`filter[A005843(n+1), A347950(#)]`
-/

namespace A319796.P14734334891864460216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P14734334891864460216

namespace A319796

/-- `filter[A005843(n+1), A347950(#)]` -/
def P14734334891864460216.Spec : Prop :=
  ∀ n, P14734334891864460216.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P4821480205698209233

`filter[A092486(2*n+1), A347950(#)]`
-/

namespace A319796.P4821480205698209233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P4821480205698209233

namespace A319796

/-- `filter[A092486(2*n+1), A347950(#)]` -/
def P4821480205698209233.Spec : Prop :=
  ∀ n, P4821480205698209233.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P692865932980859394

`∩[A071562(n+1), 2*n]`
-/

namespace A319796.P692865932980859394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A319796.P692865932980859394

namespace A319796

/-- `∩[A071562(n+1), 2*n]` -/
def P692865932980859394.Spec : Prop :=
  ∀ n, (P692865932980859394.a n : ℤ) = A319796 (n + 1)

end A319796

/-! ## A319796.P5974381137220528679

`filter[A004275(n+2), A347950(#)]`
-/

namespace A319796.P5974381137220528679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P5974381137220528679

namespace A319796

/-- `filter[A004275(n+2), A347950(#)]` -/
def P5974381137220528679.Spec : Prop :=
  ∀ n, P5974381137220528679.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P14075421107190449378

`filter[A004279(n+1), A347950(#)]`
-/

namespace A319796.P14075421107190449378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P14075421107190449378

namespace A319796

/-- `filter[A004279(n+1), A347950(#)]` -/
def P14075421107190449378.Spec : Prop :=
  ∀ n, P14075421107190449378.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P12655563531125026303

`filter[A004271(n+2), A347950(#)]`
-/

namespace A319796.P12655563531125026303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P12655563531125026303

namespace A319796

/-- `filter[A004271(n+2), A347950(#)]` -/
def P12655563531125026303.Spec : Prop :=
  ∀ n, P12655563531125026303.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P1224002741278287543

`filter[A004272(n+2), A347950(#)]`
-/

namespace A319796.P1224002741278287543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P1224002741278287543

namespace A319796

/-- `filter[A004272(n+2), A347950(#)]` -/
def P1224002741278287543.Spec : Prop :=
  ∀ n, P1224002741278287543.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P7461950197798886800

`filter[A004278(n+2), A347950(#)]`
-/

namespace A319796.P7461950197798886800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P7461950197798886800

namespace A319796

/-- `filter[A004278(n+2), A347950(#)]` -/
def P7461950197798886800.Spec : Prop :=
  ∀ n, P7461950197798886800.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P11338667830171289548

`filter[A300576(n+3), A347950(#)]`
-/

namespace A319796.P11338667830171289548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P11338667830171289548

namespace A319796

/-- `filter[A300576(n+3), A347950(#)]` -/
def P11338667830171289548.Spec : Prop :=
  ∀ n, P11338667830171289548.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P4958717998402777295

`record[(n+1)*A348364(2*(n+1))]`
-/

namespace A319796.P4958717998402777295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A348364 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319796.P4958717998402777295

namespace A319796

/-- `record[(n+1)*A348364(2*(n+1))]` -/
def P4958717998402777295.Spec : Prop :=
  ∀ n, P4958717998402777295.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P698884276875316641

`eq[A020639(n+1), A348364(n+1)]+1`
-/

namespace A319796.P698884276875316641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319796.P698884276875316641

namespace A319796

/-- `eq[A020639(n+1), A348364(n+1)]+1` -/
def P698884276875316641.Spec : Prop :=
  ∀ n, (P698884276875316641.a n : ℤ) = A319796 (n + 1)

end A319796

/-! ## A319796.P1621157217604732408

`filter[A106092(n+1), A347950(#)]`
-/

namespace A319796.P1621157217604732408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P1621157217604732408

namespace A319796

/-- `filter[A106092(n+1), A347950(#)]` -/
def P1621157217604732408.Spec : Prop :=
  ∀ n, P1621157217604732408.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P11651280180740960602

`filter[A071562(n+2), A135528(#)]`
-/

namespace A319796.P11651280180740960602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A319796.P11651280180740960602

namespace A319796

/-- `filter[A071562(n+2), A135528(#)]` -/
def P11651280180740960602.Spec : Prop :=
  ∀ n, P11651280180740960602.a n = A319796 (n + 1)

end A319796

/-! ## A319796.P833405007947335995

`filter[A321220(2*n), A347950(#)]`
-/

namespace A319796.P833405007947335995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319796.P833405007947335995

namespace A319796

/-- `filter[A321220(2*n), A347950(#)]` -/
def P833405007947335995.Spec : Prop :=
  ∀ n, P833405007947335995.a n = A319796 (n + 1)

end A319796

/-!
# A319797: Number T(n,k) of partitions of n into exactly k positive triangular numbers; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A319797, there is no canonical definition to state claims against.
-/

/-! ## A319797.P14328474586760578421

`and(A273945(n+1), A348533(n+1))`
-/

namespace A319797.P14328474586760578421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273945 (n + 1)) (A348533 (n + 1))

end

end A319797.P14328474586760578421

/-! ## A319797.P10879319428769369907

`and(A348533(n+1), A360967(n+1))`
-/

namespace A319797.P10879319428769369907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A348533 (n + 1)) (A360967 (n + 1))

end

end A319797.P10879319428769369907

/-! ## A319797.P2456372066776340966

`and(A348533(n+1), A362225(n+1))`
-/

namespace A319797.P2456372066776340966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A348533 (n + 1)) (A362225 (n + 1))

end

end A319797.P2456372066776340966

/-! ## A319797.P14226065274805231326

`and(A015969(n+1), A348533(n+1))`
-/

namespace A319797.P14226065274805231326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015969 (n + 1)) (A348533 (n + 1))

end

end A319797.P14226065274805231326

/-!
# A319799: Number of partitions of 2n into exactly n positive triangular numbers.

The programs for A319799, there is no canonical definition to state claims against.
-/

/-! ## A319799.P3573276728845510467

`A319797(A210981(n))`
-/

namespace A319799.P3573276728845510467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A210981 n).toNat

end

end A319799.P3573276728845510467

/-! ## A319799.P4037503679181310591

`A319797(∑[A165355(n)-1])`
-/

namespace A319799.P4037503679181310591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319799.P4037503679181310591

/-! ## A319799.P15303325707030660034

`A319797(A008795(n)+(n+1)²)`
-/

namespace A319799.P15303325707030660034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A008795 n + ((n + 1) ^ 2 : ℤ)).toNat

end

end A319799.P15303325707030660034

/-! ## A319799.P9925900595241623505

`A319797(A117748(n+2)-(n+1))`
-/

namespace A319799.P9925900595241623505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A117748 (n + 2) - (n + 1 : ℤ)).toNat

end

end A319799.P9925900595241623505

/-! ## A319799.P3210811389388456297

`A319797(A008805(3*n+1)-(n+1))`
-/

namespace A319799.P3210811389388456297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A008805 (3 * n + 1) - (n + 1 : ℤ)).toNat

end

end A319799.P3210811389388456297

/-! ## A319799.P14173678877047258453

`A319797(∑[A032766(A022998(n))])`
-/

namespace A319799.P14173678877047258453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319799.P14173678877047258453

/-! ## A319799.P6201478081329518274

`A319797(∑[A004526(A298028(n))])`
-/

namespace A319799.P6201478081329518274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A298028 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319799.P6201478081329518274

/-! ## A319799.P9402760607473119034

`A319797(A245300(record[A245300(n)]))`
-/

namespace A319799.P9402760607473119034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A245300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A319799.P9402760607473119034

/-! ## A319799.P2585416542338971912

`A319797(A000096(A099267(n+1))-n)`
-/

namespace A319799.P2585416542338971912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000096 (A099267 (n + 1)).toNat - (n : ℤ)).toNat

end

end A319799.P2585416542338971912

/-! ## A319799.P3127973621864324060

`A319797(A000096(A093995(n+1))-n)`
-/

namespace A319799.P3127973621864324060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000096 (A093995 (n + 1)).toNat - (n : ℤ)).toNat

end

end A319799.P3127973621864324060

/-! ## A319799.P12837994011418019820

`A319797(∑[4*n])`
-/

namespace A319799.P12837994011418019820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319799.P12837994011418019820

/-! ## A319799.P12053158010836975630

`A002264(3*A319797(2*(n²+n)))`
-/

namespace A319799.P12053158010836975630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A319797 (2 * (n ^ 2 + n))).toNat

end

end A319799.P12053158010836975630

/-! ## A319799.P10260666390321518245

`A319797(2*(n²+n))%A135177(n+1)`
-/

namespace A319799.P10260666390321518245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319797 (2 * (n ^ 2 + n))) (A135177 (n + 1))

end

end A319799.P10260666390321518245

