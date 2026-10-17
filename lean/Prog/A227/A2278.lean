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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A227800: Number of different values the product p*q can have where p >= 1, q >= 1 with p+q < n.

The programs for A227800, there is no canonical definition to state claims against.
-/

/-! ## A227800.P8137896145333048263

`A225527(n)-1`
-/

namespace A227800.P8137896145333048263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225527 n - 1

end

end A227800.P8137896145333048263

/-! ## A227800.P13116357000496061581

`floor(A225523(n)/2)`
-/

namespace A227800.P13116357000496061581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225523 n : ℚ) / 2⌋

end

end A227800.P13116357000496061581

/-! ## A227800.P6223665768669200736

`A014682(A225523(n)-1)`
-/

namespace A227800.P6223665768669200736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A225523 n - 1).toNat

end

end A227800.P6223665768669200736

/-! ## A227800.P10035820828961225699

`A225523(n)%A225527(n)`
-/

namespace A227800.P10035820828961225699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225523 n) (A225527 n)

end

end A227800.P10035820828961225699

/-! ## A227800.P8385482594694310974

`((A225523(n)-1)/2)%(2*A014574(n+1))`
-/

namespace A227800.P8385482594694310974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A225523 n - 1 : ℚ) / 2)) (2 * A014574 (n + 1))

end

end A227800.P8385482594694310974

/-! ## A227800.P7384539513671609398

`A023443(A225527(n))`
-/

namespace A227800.P7384539513671609398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A225527 n).toNat

end

end A227800.P7384539513671609398

/-! ## A227800.P4157948015544200491

`A038572(A225523(n)-1)`
-/

namespace A227800.P4157948015544200491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A225523 n - 1).toNat

end

end A227800.P4157948015544200491

/-! ## A227800.P6866849003952751638

`A004524(A225523(n))`
-/

namespace A227800.P6866849003952751638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A225523 n).toNat

end

end A227800.P6866849003952751638

/-! ## A227800.P11114352980377845690

`A004525(A225523(n)-1)`
-/

namespace A227800.P11114352980377845690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A225523 n - 1).toNat

end

end A227800.P11114352980377845690

/-! ## A227800.P15342651557438128970

`A078898(A225523(n)-1)`
-/

namespace A227800.P15342651557438128970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A225523 n - 1).toNat

end

end A227800.P15342651557438128970

/-! ## A227800.P1432234417918473010

`A032742(A225523(n)+1)-1`
-/

namespace A227800.P1432234417918473010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A225523 n + 1).toNat - 1

end

end A227800.P1432234417918473010

/-! ## A227800.P8436936231654014991

`A008619(A225523(n)+1)-2`
-/

namespace A227800.P8436936231654014991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A225523 n + 1).toNat - 2

end

end A227800.P8436936231654014991

/-! ## A227800.P14348199623428705665

`A003602(A225523(n)+2)-2`
-/

namespace A227800.P14348199623428705665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A225523 n + 2).toNat - 2

end

end A227800.P14348199623428705665

/-! ## A227800.P14391490914191601973

`A003602(or(1, A225523(n)))-1`
-/

namespace A227800.P14391490914191601973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor 1 (A225523 n)).toNat - 1

end

end A227800.P14391490914191601973

/-! ## A227800.P569429222388502052

`A008619(or(1, A225523(n)))-1`
-/

namespace A227800.P569429222388502052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A225523 n)).toNat - 1

end

end A227800.P569429222388502052

/-! ## A227800.P10946677852761652754

`A110657(2*(A225523(n)-1))`
-/

namespace A227800.P10946677852761652754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * (A225523 n - 1)).toNat

end

end A227800.P10946677852761652754

/-! ## A227800.P5413474419859191915

`A110657(A225523(n)+A225523(n)-2)`
-/

namespace A227800.P5413474419859191915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A225523 n + (A225523 n - 2)).toNat

end

end A227800.P5413474419859191915

/-! ## A227800.P15306262154750883303

`A110657(A225523(n)-(2-A225523(n)))`
-/

namespace A227800.P15306262154750883303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A225523 n - (2 - A225523 n)).toNat

end

end A227800.P15306262154750883303

/-! ## A227800.P14363173633503549376

`A110657(2*A225523(n)+1)`
-/

namespace A227800.P14363173633503549376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A225523 n + 1).toNat

end

end A227800.P14363173633503549376

/-! ## A227800.P14015161443867085538

`A003602(2*A225523(n))-1`
-/

namespace A227800.P14015161443867085538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A225523 n).toNat - 1

end

end A227800.P14015161443867085538

/-!
# A227804: a(1) = greatest k such that H(k) - H(8) < H(8) - H(4); a(2) = greatest k such that H(k) - H(a(1)) < H(a(1)) - H(8), and for n > 2, a(n) = greatest k such that H(k) - H(a(n-1)) > H(a(n-1)) - H(a(n-2)), where H = harmonic number.

The programs for A227804, the canonical program `A227804.P2616192900655170233` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227804 has offset 1).

The definition of A227804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227804.P2616192900655170233

`A289692(n+6)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227804

/-- `A289692(n+6)` -/
def P2616192900655170233.Spec : Prop :=
  ∀ n, P2616192900655170233.a n = A227804 (n + 1)

theorem P2616192900655170233.correct : P2616192900655170233.Spec := by
  intro n
  simp only [A227804, Nat.add_sub_cancel]

end A227804

/-! ## A227804.P17680601918124331708

`A020713(n+2)-1`
-/

namespace A227804.P17680601918124331708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 2) - 1

end

end A227804.P17680601918124331708

namespace A227804

/-- `A020713(n+2)-1` -/
def P17680601918124331708.Spec : Prop :=
  ∀ n, P17680601918124331708.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P2154763020482484364

`A048587(n+2)-2`
-/

namespace A227804.P2154763020482484364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048587 (n + 2) - 2

end

end A227804.P2154763020482484364

namespace A227804

/-- `A048587(n+2)-2` -/
def P2154763020482484364.Spec : Prop :=
  ∀ n, P2154763020482484364.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P11346453965921255896

`A020716(2*n+3)`
-/

namespace A227804.P11346453965921255896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 (2 * n + 3)

end

end A227804.P11346453965921255896

namespace A227804

/-- `A020716(2*n+3)` -/
def P11346453965921255896.Spec : Prop :=
  ∀ n, P11346453965921255896.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P790708537507764436

`A023434(2*n+9)`
-/

namespace A227804.P790708537507764436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (2 * n + 9)

end

end A227804.P790708537507764436

namespace A227804

/-- `A023434(2*n+9)` -/
def P790708537507764436.Spec : Prop :=
  ∀ n, P790708537507764436.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P7770291688018705834

`A054405(2*(n+3))+1`
-/

namespace A227804.P7770291688018705834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (2 * (n + 3)) + 1

end

end A227804.P7770291688018705834

namespace A227804

/-- `A054405(2*(n+3))+1` -/
def P7770291688018705834.Spec : Prop :=
  ∀ n, P7770291688018705834.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P18343924265361505698

`A020720(2*n+3)-1`
-/

namespace A227804.P18343924265361505698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (2 * n + 3) - 1

end

end A227804.P18343924265361505698

namespace A227804

/-- `A020720(2*n+3)-1` -/
def P18343924265361505698.Spec : Prop :=
  ∀ n, P18343924265361505698.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P8626548370736973664

`A096231(2*(n+3))-1`
-/

namespace A227804.P8626548370736973664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (2 * (n + 3)) - 1

end

end A227804.P8626548370736973664

namespace A227804

/-- `A096231(2*(n+3))-1` -/
def P8626548370736973664.Spec : Prop :=
  ∀ n, P8626548370736973664.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P5252649491616468357

`A167385(2*(n+2))+3`
-/

namespace A227804.P5252649491616468357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 (2 * (n + 2)) + 3

end

end A227804.P5252649491616468357

namespace A227804

/-- `A167385(2*(n+2))+3` -/
def P5252649491616468357.Spec : Prop :=
  ∀ n, P5252649491616468357.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P12186293166865604223

`A018917(2*n+3)+3`
-/

namespace A227804.P12186293166865604223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 (2 * n + 3) + 3

end

end A227804.P12186293166865604223

namespace A227804

/-- `A018917(2*n+3)+3` -/
def P12186293166865604223.Spec : Prop :=
  ∀ n, P12186293166865604223.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P17173450358332349073

`A164315(2*n+5)+2`
-/

namespace A227804.P17173450358332349073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (2 * n + 5) + 2

end

end A227804.P17173450358332349073

namespace A227804

/-- `A164315(2*n+5)+2` -/
def P17173450358332349073.Spec : Prop :=
  ∀ n, P17173450358332349073.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P15492115599223768827

`A018918(n+2)+A010901(n)`
-/

namespace A227804.P15492115599223768827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018918 (n + 2) + A010901 n

end

end A227804.P15492115599223768827

namespace A227804

/-- `A018918(n+2)+A010901(n)` -/
def P15492115599223768827.Spec : Prop :=
  ∀ n, P15492115599223768827.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P5990907294625277168

`A077855(n+3)+A010901(n)`
-/

namespace A227804.P5990907294625277168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 3) + A010901 n

end

end A227804.P5990907294625277168

namespace A227804

/-- `A077855(n+3)+A010901(n)` -/
def P5990907294625277168.Spec : Prop :=
  ∀ n, P5990907294625277168.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P15567916459073800753

`A077855(n+2)+A020713(n+1)`
-/

namespace A227804.P15567916459073800753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 2) + A020713 (n + 1)

end

end A227804.P15567916459073800753

namespace A227804

/-- `A077855(n+2)+A020713(n+1)` -/
def P15567916459073800753.Spec : Prop :=
  ∀ n, P15567916459073800753.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P17193185626901744637

`A010901(n+2)+A010901(n)-1`
-/

namespace A227804.P17193185626901744637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 (n + 2) + (A010901 n - 1)

end

end A227804.P17193185626901744637

namespace A227804

/-- `A010901(n+2)+A010901(n)-1` -/
def P17193185626901744637.Spec : Prop :=
  ∀ n, P17193185626901744637.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P7331407453515525662

`3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=15, a(1)=27, a(2)=48, a(3)=85`
-/

namespace A227804.P7331407453515525662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 27, 48, 85] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A227804.P7331407453515525662

namespace A227804

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P7331407453515525662.Spec : Prop :=
  ∀ n, P7331407453515525662.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P12713920244319334514

`Δ[A010901(n+3)]-1`
-/

namespace A227804.P12713920244319334514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A227804.P12713920244319334514

namespace A227804

/-- `Δ[A010901(n+3)]-1` -/
def P12713920244319334514.Spec : Prop :=
  ∀ n, P12713920244319334514.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P13914772254980996970

`Δ[A018918(n+3)]-1`
-/

namespace A227804.P13914772254980996970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018918 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A227804.P13914772254980996970

namespace A227804

/-- `Δ[A018918(n+3)]-1` -/
def P13914772254980996970.Spec : Prop :=
  ∀ n, P13914772254980996970.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P2760514089036738220

`Δ[A020736(n+3)]-1`
-/

namespace A227804.P2760514089036738220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020736 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A227804.P2760514089036738220

namespace A227804

/-- `Δ[A020736(n+3)]-1` -/
def P2760514089036738220.Spec : Prop :=
  ∀ n, P2760514089036738220.a n = A227804 (n + 1)

end A227804

/-! ## A227804.P5696591584594822144

`Δ[A020716(A020705(2*n))]-1`
-/

namespace A227804.P5696591584594822144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 (A020705 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A227804.P5696591584594822144

namespace A227804

/-- `Δ[A020716(A020705(2*n))]-1` -/
def P5696591584594822144.Spec : Prop :=
  ∀ n, P5696591584594822144.a n = A227804 (n + 1)

end A227804

/-!
# A227805: Sum of even numbers starting at 2, alternating signs.

The programs for A227805, the canonical program `A227805.P11896246168484615479` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227805 has offset 1).

The definition of A227805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227805.P11896246168484615479

`Δ[lcm(2, n+1)]+2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227805

/-- `Δ[lcm(2, n+1)]+2` -/
def P11896246168484615479.Spec : Prop :=
  ∀ n, P11896246168484615479.a n = A227805 (n + 1)

theorem P11896246168484615479.correct : P11896246168484615479.Spec := by
  intro n
  simp only [A227805, Nat.add_sub_cancel]

end A227805

/-! ## A227805.P12262706851506902662

`Δ[C(xor(1, n), n)]+3`
-/

namespace A227805.P12262706851506902662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3

end

end A227805.P12262706851506902662

namespace A227805

/-- `Δ[C(xor(1, n), n)]+3` -/
def P12262706851506902662.Spec : Prop :=
  ∀ n, P12262706851506902662.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P9290441104385187309

`3-xor(n+1, -and(1, n))`
-/

namespace A227805.P9290441104385187309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.xor (n + 1 : ℤ) (-(Nat.land 1 n : ℤ))

end

end A227805.P9290441104385187309

namespace A227805

/-- `3-xor(n+1, -and(1, n))` -/
def P9290441104385187309.Spec : Prop :=
  ∀ n, P9290441104385187309.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P6434896903623088801

`Δ[(gcd(2, n)+2)*(n+1)]`
-/

namespace A227805.P6434896903623088801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 2) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227805.P6434896903623088801

namespace A227805

/-- `Δ[(gcd(2, n)+2)*(n+1)]` -/
def P6434896903623088801.Spec : Prop :=
  ∀ n, P6434896903623088801.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P12055857293926708576

`Δ[(4-n%2)*(n+1)]`
-/

namespace A227805.P12055857293926708576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ((n % 2 : ℕ) : ℤ)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227805.P12055857293926708576

namespace A227805

/-- `Δ[(4-n%2)*(n+1)]` -/
def P12055857293926708576.Spec : Prop :=
  ∀ n, P12055857293926708576.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P17063902636000880734

`Δ[(4-and(1, n))*(n+1)]`
-/

namespace A227805.P17063902636000880734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (Nat.land 1 n : ℤ)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227805.P17063902636000880734

namespace A227805

/-- `Δ[(4-and(1, n))*(n+1)]` -/
def P17063902636000880734.Spec : Prop :=
  ∀ n, P17063902636000880734.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P3636773195133305560

`4-Δ[(n+2)^and(1, n)]`
-/

namespace A227805.P3636773195133305560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A227805.P3636773195133305560

namespace A227805

/-- `4-Δ[(n+2)^and(1, n)]` -/
def P3636773195133305560.Spec : Prop :=
  ∀ n, P3636773195133305560.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P13499761084447785140

`xor(n+1, and(1, n)-1)+4`
-/

namespace A227805.P13499761084447785140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((Nat.land 1 n : ℤ) - 1) + 4

end

end A227805.P13499761084447785140

namespace A227805

/-- `xor(n+1, and(1, n)-1)+4` -/
def P13499761084447785140.Spec : Prop :=
  ∀ n, P13499761084447785140.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P4315788542783180385

`2*(2-∑[xor(n, (-1)^n)])`
-/

namespace A227805.P4315788542783180385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227805.P4315788542783180385

namespace A227805

/-- `2*(2-∑[xor(n, (-1)^n)])` -/
def P4315788542783180385.Spec : Prop :=
  ∀ n, P4315788542783180385.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P3637660745891823382

`xor(n+1, -and(1, n+1))+4`
-/

namespace A227805.P3637660745891823382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-(Nat.land 1 (n + 1) : ℤ)) + 4

end

end A227805.P3637660745891823382

namespace A227805

/-- `xor(n+1, -and(1, n+1))+4` -/
def P3637660745891823382.Spec : Prop :=
  ∀ n, P3637660745891823382.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P12222618731320608513

`Δ[((n+1)%2+3)*(n+1)]`
-/

namespace A227805.P12222618731320608513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 2 + 3) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227805.P12222618731320608513

namespace A227805

/-- `Δ[((n+1)%2+3)*(n+1)]` -/
def P12222618731320608513.Spec : Prop :=
  ∀ n, P12222618731320608513.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P4669312369933358985

`Δ[(and(1, n+1)+3)*(n+1)]`
-/

namespace A227805.P4669312369933358985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 3) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227805.P4669312369933358985

namespace A227805

/-- `Δ[(and(1, n+1)+3)*(n+1)]` -/
def P4669312369933358985.Spec : Prop :=
  ∀ n, P4669312369933358985.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P724665460941010497

`Δ[(n+2)^and(1, n+1)]+3`
-/

namespace A227805.P724665460941010497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3

end

end A227805.P724665460941010497

namespace A227805

/-- `Δ[(n+2)^and(1, n+1)]+3` -/
def P724665460941010497.Spec : Prop :=
  ∀ n, P724665460941010497.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P12756048252651374275

`Δ[(n+1)*(or(1, n)-(n-3))]`
-/

namespace A227805.P12756048252651374275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227805.P12756048252651374275

namespace A227805

/-- `Δ[(n+1)*(or(1, n)-(n-3))]` -/
def P12756048252651374275.Spec : Prop :=
  ∀ n, P12756048252651374275.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P9045604372924639918

`2*(2-∑[(n+1)*(-1)^n])`
-/

namespace A227805.P9045604372924639918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227805.P9045604372924639918

namespace A227805

/-- `2*(2-∑[(n+1)*(-1)^n])` -/
def P9045604372924639918.Spec : Prop :=
  ∀ n, P9045604372924639918.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P15849010885881130884

`a(n-2)-2*(-1)^n` with `a(0)=2, a(1)=6`
-/

namespace A227805.P15849010885881130884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 2) - 2 * (-1) ^ n

end

end A227805.P15849010885881130884

namespace A227805

/-- `a(n-2)-2*(-1)^n` -/
def P15849010885881130884.Spec : Prop :=
  ∀ n, P15849010885881130884.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P15822242067083112914

`(2*n+3)*and(1, n)-(n-2)`
-/

namespace A227805.P15822242067083112914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) * Nat.land 1 n : ℤ) - ((n : ℤ) - 2)

end

end A227805.P15822242067083112914

namespace A227805

/-- `(2*n+3)*and(1, n)-(n-2)` -/
def P15822242067083112914.Spec : Prop :=
  ∀ n, P15822242067083112914.a n = A227805 (n + 1)

end A227805

/-! ## A227805.P16850944547951158945

`lcm(n+3+n, and(1, n))-(n-2)`
-/

namespace A227805.P16850944547951158945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3 + n) (Nat.land 1 n) : ℤ) - ((n : ℤ) - 2)

end

end A227805.P16850944547951158945

namespace A227805

/-- `lcm(n+3+n, and(1, n))-(n-2)` -/
def P16850944547951158945.Spec : Prop :=
  ∀ n, P16850944547951158945.a n = A227805 (n + 1)

end A227805

/-!
# A227806: Number of rooted identity trees with n nodes and exactly 2 subtrees from the root.

The programs for A227806, there is no canonical definition to state claims against.
-/

/-! ## A227806.P4015465237343796928

`A262689(xor(A126792(n), A344623(n)))`
-/

namespace A227806.P4015465237343796928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor (A126792 n) (A344623 n)).toNat

end

end A227806.P4015465237343796928

/-! ## A227806.P12600578666046809021

`A225687(A091148(n))`
-/

namespace A227806.P12600578666046809021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A091148 n).toNat

end

end A227806.P12600578666046809021

/-! ## A227806.P4783313591592109209

`A225687(A149735(n))`
-/

namespace A227806.P4783313591592109209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A149735 n).toNat

end

end A227806.P4783313591592109209

/-! ## A227806.P7509281708062142293

`A225687(A149736(n))`
-/

namespace A227806.P7509281708062142293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A149736 n).toNat

end

end A227806.P7509281708062142293

/-!
# A227807: Number of rooted identity trees with n nodes and exactly 3 subtrees from the root.

The programs for A227807, there is no canonical definition to state claims against.
-/

/-! ## A227807.P16170168151033017293

`A243283(A055099(n)+2)`
-/

namespace A227807.P16170168151033017293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A055099 n + 2).toNat

end

end A227807.P16170168151033017293

/-! ## A227807.P10398711613377404663

`A243283(Δ[A193653(n)]+2)`
-/

namespace A227807.P10398711613377404663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (f1 (n + 1) - f1 n + 2).toNat

end

end A227807.P10398711613377404663

/-! ## A227807.P11794435753510770104

`∑[A251482(A252723(3*n+2))]`
-/

namespace A227807.P11794435753510770104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251482 (A252723 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227807.P11794435753510770104

/-! ## A227807.P17210566757280799026

`A181984(n)+A086016(A001764(n))`
-/

namespace A227807.P17210566757280799026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A086016 (A001764 n).toNat

end

end A227807.P17210566757280799026

/-!
# A227808: Number of rooted identity trees with n nodes and exactly 4 subtrees from the root.

The programs for A227808, there is no canonical definition to state claims against.
-/

/-! ## A227808.P10708054029536519610

`Δ[A034973(∑[A082138(n)])]`
-/

namespace A227808.P10708054029536519610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227808.P10708054029536519610

/-! ## A227808.P16187909076684706191

`A202091(n)+A027833(A001142(n))`
-/

namespace A227808.P16187909076684706191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202091 n + A027833 (A001142 n).toNat

end

end A227808.P16187909076684706191

/-!
# A227809: Number of rooted identity trees with n nodes and exactly 5 subtrees from the root.

The programs for A227809, there is no canonical definition to state claims against.
-/

/-! ## A227809.P13826780011638624315

`A266986(A027129(n))+A056453(n+1)`
-/

namespace A227809.P13826780011638624315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266986 (A027129 n).toNat + A056453 (n + 1)

end

end A227809.P13826780011638624315

/-! ## A227809.P10421214217591797140

`A341022(A145471(n+1))+A003208(n)`
-/

namespace A227809.P10421214217591797140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341022 ((A145471 (n + 1)).toNat + 35) + A003208 n

end

end A227809.P10421214217591797140

/-!
# A227816: a(1) = greatest k such that H(k) - H(6) < H(6) - H(3); a(2) = greatest k such that H(k) - H(a(1)) < H(a(1)) - H(6), and for n > 2, a(n) = greatest k such that H(k) - H(a(n-1)) > H(a(n-1)) - H(a(n-2)), where H = harmonic number.

The programs for A227816, there is no canonical definition to state claims against.
-/

/-! ## A227816.P1125129338719802979

`A020730(A077168(n)+1)-1`
-/

namespace A227816.P1125129338719802979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020730 (A077168 n + 1).toNat - 1

end

end A227816.P1125129338719802979

/-! ## A227816.P12172079388086332154

`A020730(n+2)-A257679(A216315(n+1))`
-/

namespace A227816.P12172079388086332154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020730 (n + 2) - A257679 (A216315 (n + 1)).toNat

end

end A227816.P12172079388086332154

/-! ## A227816.P12819568516360940713

`A020730(n+2)-A014963(A344791(n+6))`
-/

namespace A227816.P12819568516360940713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020730 (n + 2) - A014963 (A344791 (n + 6)).toNat

end

end A227816.P12819568516360940713

/-! ## A227816.P11021974133804445446

`A020730(n+2)-A151848(A151840(n))`
-/

namespace A227816.P11021974133804445446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020730 (n + 2) - A151848 (A151840 n).toNat

end

end A227816.P11021974133804445446

/-! ## A227816.P10604338874569317125

`A299202(A001747(n+3))+A020730(n+2)`
-/

namespace A227816.P10604338874569317125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299202 (A001747 (n + 3)).toNat + A020730 (n + 2)

end

end A227816.P10604338874569317125

/-!
# A227819: Number T(n,k) of n-node rooted identity trees of height k; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A227819, there is no canonical definition to state claims against.
-/

/-! ## A227819.P10245517363471175709

`A185284(A028275(n))+A177517(n+1)`
-/

namespace A227819.P10245517363471175709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A028275 n).toNat + A177517 (n + 1)

end

end A227819.P10245517363471175709

/-! ## A227819.P4667191241806472438

`A043283(A059922(n))*A177517(n+1)`
-/

namespace A227819.P4667191241806472438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A059922 n).toNat * A177517 (n + 1)

end

end A227819.P4667191241806472438

/-! ## A227819.P12795102068855183020

`A043289(A112492(n))*A177517(n+1)`
-/

namespace A227819.P12795102068855183020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043289 (A112492 n).toNat * A177517 (n + 1)

end

end A227819.P12795102068855183020

/-! ## A227819.P17602371717215656627

`A043283(A168551(n))*A177517(n+1)`
-/

namespace A227819.P17602371717215656627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A168551 n).toNat * A177517 (n + 1)

end

end A227819.P17602371717215656627

/-! ## A227819.P13422352516331177928

`A085576(A109433(n))*A177517(n+1)`
-/

namespace A227819.P13422352516331177928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085576 (A109433 n).toNat * A177517 (n + 1)

end

end A227819.P13422352516331177928

/-!
# A227820: G.f.: 1/(1-x) = Sum_{n>=0} a(n) * x^n * Sum_{k=0..n} binomial(n,k)^2 * (-x)^k*(1+x)^(n-k).

The programs for A227820, there is no canonical definition to state claims against.
-/

/-! ## A227820.P4037324186230941638

`A210717(n*Δ[n²])+1`
-/

namespace A227820.P4037324186230941638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + 1

end

end A227820.P4037324186230941638

/-! ## A227820.P7545295266650384690

`A215127(∑[floor(n/3)^n])`
-/

namespace A227820.P7545295266650384690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215127 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227820.P7545295266650384690

/-!
# A227823: Numbers n with property that each sum of any k-subsequence of digits of n with k>=2 is prime.

The programs for A227823, there is no canonical definition to state claims against.
-/

/-! ## A227823.P9899562501816756747

`∩[A028834(n+1), A221699(n+1)]`
-/

namespace A227823.P9899562501816756747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227823.P9899562501816756747

/-! ## A227823.P7420415356654109900

`∩[A129630(n+1)+1, A221699(n+1)]`
-/

namespace A227823.P7420415356654109900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227823.P7420415356654109900

/-! ## A227823.P12726249408883709481

`∩[A020725(A129630(n+1)), A221699(n+1)]`
-/

namespace A227823.P12726249408883709481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A129630 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227823.P12726249408883709481

/-!
# A227824: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^n * Sum_{k=0..n} binomial(n,k)^2 * x^k*(1-x)^(n-k).

The programs for A227824, there is no canonical definition to state claims against.
-/

/-! ## A227824.P3518671743360961877

`A289496(A150943(n))`
-/

namespace A227824.P3518671743360961877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A150943 n).toNat

end

end A227824.P3518671743360961877

/-!
# A227829: Primes occurring in the Fibonacci sequences 2, 3, 5, ...; 5, 12, 29, ...; 10, 33, 109, ...; 17, 72, 305, ...; ..., where F(n) = m*F(n-1) + F(n-2) (n>2), with F(1) = 1, F(2) = positive integer m.

The programs for A227829, there is no canonical definition to state claims against.
-/

/-! ## A227829.P13337569418605876832

`p?[A277625(n+1)]`
-/

namespace A227829.P13337569418605876832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227829.P13337569418605876832

/-! ## A227829.P12201523970978208438

`p?[record[A277625(A117910(n))]]`
-/

namespace A227829.P12201523970978208438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227829.P12201523970978208438

/-! ## A227829.P15806764174423950178

`p?[record[A277625(A126759(n))]]`
-/

namespace A227829.P15806764174423950178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227829.P15806764174423950178

/-! ## A227829.P3894113822404734015

`p?[record[A277625(A133310(n))]]`
-/

namespace A227829.P3894113822404734015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227829.P3894113822404734015

/-! ## A227829.P12640794902782876455

`∩[A042998(n+1), A277625(n+1)]`
-/

namespace A227829.P12640794902782876455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227829.P12640794902782876455

/-! ## A227829.P381252079117252365

`∩[A049585(n+1), A277625(n+1)]`
-/

namespace A227829.P381252079117252365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227829.P381252079117252365

/-! ## A227829.P389163344276167839

`∩[A058853(n+1), A277625(n+1)]`
-/

namespace A227829.P389163344276167839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227829.P389163344276167839

/-! ## A227829.P15426905384215574843

`∩[A216884(n+1), A277625(n+1)]`
-/

namespace A227829.P15426905384215574843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227829.P15426905384215574843

/-! ## A227829.P8581974102957848464

`filter[A277625(n+1), A010051(#)]`
-/

namespace A227829.P8581974102957848464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A227829.P8581974102957848464

/-! ## A227829.P5088196980396034165

`∩[A277625(n+1), A260442(n)]`
-/

namespace A227829.P5088196980396034165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227829.P5088196980396034165

/-!
# A227830: Denominators of coefficients in expansion of x/(exp(x)-1).

The programs for A227830, there is no canonical definition to state claims against.
-/

/-! ## A227830.P8597440263353017024

`ceil(A120083(n)/(n+1))`
-/

namespace A227830.P8597440263353017024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120083 n : ℚ) / (n + 1 : ℚ)⌉

end

end A227830.P8597440263353017024

/-! ## A227830.P10284126062564008664

`ceil(A120085(n)/A080513(n))`
-/

namespace A227830.P10284126062564008664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120085 n : ℚ) / (A080513 n : ℚ)⌉

end

end A227830.P10284126062564008664

/-! ## A227830.P14300225499066354928

`A027642(n)*A120087(n)/A227574(n)`
-/

namespace A227830.P14300225499066354928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n * A120087 n : ℚ) / (A227574 n : ℚ)

end

end A227830.P14300225499066354928

/-! ## A227830.P14285969212605675205

`A027642(n)*A120083(n)/A227540(n)`
-/

namespace A227830.P14285969212605675205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n * A120083 n : ℚ) / (A227540 n : ℚ)

end

end A227830.P14285969212605675205

/-! ## A227830.P10340307637861324599

`A027642(n)*A120081(n)/A227571(n)`
-/

namespace A227830.P10340307637861324599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n * A120081 n : ℚ) / (A227571 n : ℚ)

end

end A227830.P10340307637861324599

/-!
# A227831: Numerators of coefficients in Taylor series for LambertW(x).

The programs for A227831, there is no canonical definition to state claims against.
-/

/-! ## A227831.P11234290348940778899

`A036504(floor(n-atan(n))+2)*A062157(n)`
-/

namespace A227831.P11234290348940778899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036504 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 2).toNat * A062157 n

end

end A227831.P11234290348940778899

/-! ## A227831.P10753691027678977422

`A036504(round(1/(n+2))+n)*A062157(n)`
-/

namespace A227831.P10753691027678977422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036504 (SequenceMachineLib.roundAway (1 / (n + 2 : ℚ)) + (n : ℤ)).toNat * A062157 n

end

end A227831.P10753691027678977422

/-!
# A227832: Sum of odd numbers starting with 1, alternating signs (beginning with plus).

The programs for A227832, the canonical program `A227832.P8081725001495576263` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227832 has offset 1).

The definition of A227832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227832.P8081725001495576263

`2-xor(n, (-1)^n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227832

/-- `2-xor(n, (-1)^n)` -/
def P8081725001495576263.Spec : Prop :=
  ∀ n, P8081725001495576263.a n = A227832 (n + 1)

theorem P8081725001495576263.correct : P8081725001495576263.Spec := by
  intro n
  simp only [A227832, Nat.add_sub_cancel]

end A227832

/-! ## A227832.P12913829353604685373

`2-(n+1)*(-1)^n`
-/

namespace A227832.P12913829353604685373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n + 1 : ℤ) * (-1) ^ n

end

end A227832.P12913829353604685373

namespace A227832

/-- `2-(n+1)*(-1)^n` -/
def P12913829353604685373.Spec : Prop :=
  ∀ n, P12913829353604685373.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P8287943115394300144

`-xor(1, a(n-1)-4)` with `a(0)=1`
-/

namespace A227832.P8287943115394300144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor 1 (a (n - 1) - 4)

end

end A227832.P8287943115394300144

namespace A227832

/-- `-xor(1, a(n-1)-4)` -/
def P8287943115394300144.Spec : Prop :=
  ∀ n, P8287943115394300144.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P12283134366260125240

`Δ[floor(n/2)+n*gcd(2, n)]`
-/

namespace A227832.P12283134366260125240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (n * Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227832.P12283134366260125240

namespace A227832

/-- `Δ[floor(n/2)+n*gcd(2, n)]` -/
def P12283134366260125240.Spec : Prop :=
  ∀ n, P12283134366260125240.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P13091486437614519893

`floor(Δ[lcm(2, (n+1)²)]/(n+2))`
-/

namespace A227832.P13091486437614519893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 2 : ℚ)⌋

end

end A227832.P13091486437614519893

namespace A227832

/-- `floor(Δ[lcm(2, (n+1)²)]/(n+2))` -/
def P13091486437614519893.Spec : Prop :=
  ∀ n, P13091486437614519893.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P2111395575483944406

`floor(4-a(n-1)-(-1)^n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A227832.P2111395575483944406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - a (n - 1) - (-1) ^ n

end

end A227832.P2111395575483944406

namespace A227832

/-- `floor(4-a(n-1)-(-1)^n)` -/
def P2111395575483944406.Spec : Prop :=
  ∀ n, P2111395575483944406.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P9832225739839041636

`floor(2*n%2+3-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A227832.P9832225739839041636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * (n % 2) : ℕ) : ℤ) + (3 - a (n - 1))

end

end A227832.P9832225739839041636

namespace A227832

/-- `floor(2*n%2+3-a(n-1))` -/
def P9832225739839041636.Spec : Prop :=
  ∀ n, P9832225739839041636.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P10810714475461043257

`floor((2*n)%4-(a(n-1)-3))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A227832.P10810714475461043257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n % 4 : ℕ) : ℤ) - (a (n - 1) - 3)

end

end A227832.P10810714475461043257

namespace A227832

/-- `floor((2*n)%4-(a(n-1)-3))` -/
def P10810714475461043257.Spec : Prop :=
  ∀ n, P10810714475461043257.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P6223281533107858813

`Δ[a(n-2)+(-1)^n+4]` with `a(0)=1, a(1)=2`
-/

namespace A227832.P6223281533107858813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + ((-1) ^ n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227832.P6223281533107858813

namespace A227832

/-- `Δ[a(n-2)+(-1)^n+4]` -/
def P6223281533107858813.Spec : Prop :=
  ∀ n, P6223281533107858813.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P17074743896883437447

`((n+1)*(4-a(n-1))-2)/n` with `a(0)=1`
-/

namespace A227832.P17074743896883437447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℚ) * (4 - a (n - 1)) - 2) / (n : ℚ)

end

end A227832.P17074743896883437447

namespace A227832

/-- `((n+1)*(4-a(n-1))-2)/n` -/
def P17074743896883437447.Spec : Prop :=
  ∀ n, P17074743896883437447.a n = (A227832 (n + 1) : ℚ)

end A227832

/-! ## A227832.P3254508257493927552

`floor((Δ[lcm(n+1, 2*n)]-1)/(n+1))`
-/

namespace A227832.P3254508257493927552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A227832.P3254508257493927552

namespace A227832

/-- `floor((Δ[lcm(n+1, 2*n)]-1)/(n+1))` -/
def P3254508257493927552.Spec : Prop :=
  ∀ n, P3254508257493927552.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P7362794694874974258

`∑[2/(-1)^(n+1)-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A227832.P7362794694874974258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 / ((-1) ^ (n + 1) : ℚ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227832.P7362794694874974258

namespace A227832

/-- `∑[2/(-1)^(n+1)-a(n-1)]` -/
def P7362794694874974258.Spec : Prop :=
  ∀ n, P7362794694874974258.a n = (A227832 (n + 1) : ℚ)

end A227832

/-! ## A227832.P3997176311625505931

`((4-a(n-1))²-1)/a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A227832.P3997176311625505931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((4 - a (n - 1)) ^ 2 - 1) / a (n - 2)

end

end A227832.P3997176311625505931

namespace A227832

/-- `((4-a(n-1))²-1)/a(n-2)` -/
def P3997176311625505931.Spec : Prop :=
  ∀ n, P3997176311625505931.a n = (A227832 (n + 1) : ℚ)

end A227832

/-! ## A227832.P5890103439457731578

`floor(2*(4-a(n-1))-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A227832.P5890103439457731578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (4 - a (n - 1)) - a (n - 2)

end

end A227832.P5890103439457731578

namespace A227832

/-- `floor(2*(4-a(n-1))-a(n-2))` -/
def P5890103439457731578.Spec : Prop :=
  ∀ n, P5890103439457731578.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P9855557015853000261

`floor(5-a(n-1)/n-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A227832.P9855557015853000261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊5 - (a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A227832.P9855557015853000261

namespace A227832

/-- `floor(5-a(n-1)/n-a(n-1))` -/
def P9855557015853000261.Spec : Prop :=
  ∀ n, P9855557015853000261.a n = A227832 (n + 1)

end A227832

/-! ## A227832.P15186574851975361097

`2*(4-a(n-1)-a(n-2)/2)` with `a(0)=1, a(1)=4`
-/

namespace A227832.P15186574851975361097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (4 - a (n - 1) - a (n - 2) / 2)

end

end A227832.P15186574851975361097

namespace A227832

/-- `2*(4-a(n-1)-a(n-2)/2)` -/
def P15186574851975361097.Spec : Prop :=
  ∀ n, P15186574851975361097.a n = (A227832 (n + 1) : ℚ)

end A227832

/-! ## A227832.P18190940575884420489

`(n+1)*(2*and(1, n)-(n-1)/(n+1))`
-/

namespace A227832.P18190940575884420489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((2 * Nat.land 1 n : ℚ) - ((n : ℤ) - 1 : ℚ) / (n + 1 : ℚ))

end

end A227832.P18190940575884420489

namespace A227832

/-- `(n+1)*(2*and(1, n)-(n-1)/(n+1))` -/
def P18190940575884420489.Spec : Prop :=
  ∀ n, P18190940575884420489.a n = (A227832 (n + 1) : ℚ)

end A227832

/-! ## A227832.P13171837116414539190

`floor(gcd(4, a(n-1)-n)+1-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A227832.P13171837116414539190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd 4 (a (n - 1) - (n : ℤ)) : ℤ) + (1 - a (n - 1))

end

end A227832.P13171837116414539190

namespace A227832

/-- `floor(gcd(4, a(n-1)-n)+1-a(n-1))` -/
def P13171837116414539190.Spec : Prop :=
  ∀ n, P13171837116414539190.a n = A227832 (n + 1)

end A227832

/-!
# A227833: 3-adic valuation of A005130(n).

The programs for A227833, the canonical program `A227833.P120039270851023164` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227833 has offset 0).

The definition of A227833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227833.P9058624700135968381

`∑[A253786(n)]-A343754(n)`
-/

namespace A227833.P9058624700135968381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A343754 n

end

end A227833.P9058624700135968381

namespace A227833

/-- `∑[A253786(n)]-A343754(n)` -/
def P9058624700135968381.Spec : Prop :=
  ∀ n, P9058624700135968381.a n = A227833 n

end A227833

/-! ## A227833.P120039270851023164

`A127427(n)-(A343754(n)+n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227833

/-- `A127427(n)-(A343754(n)+n)` -/
def P120039270851023164.Spec : Prop :=
  ∀ n, P120039270851023164.a n = A227833 n

theorem P120039270851023164.correct : P120039270851023164.Spec := by
  intro n
  simp only [A227833]

end A227833

/-! ## A227833.P7822001029501279186

`∑[A253786(n)+A065363(n)]-n`
-/

namespace A227833.P7822001029501279186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n + A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A227833.P7822001029501279186

namespace A227833

/-- `∑[A253786(n)+A065363(n)]-n` -/
def P7822001029501279186.Spec : Prop :=
  ∀ n, P7822001029501279186.a n = A227833 n

end A227833

/-! ## A227833.P15278844122903751591

`A174574(n)+∑[A253786(n)]-n`
-/

namespace A227833.P15278844122903751591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174574 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A227833.P15278844122903751591

namespace A227833

/-- `A174574(n)+∑[A253786(n)]-n` -/
def P15278844122903751591.Spec : Prop :=
  ∀ n, P15278844122903751591.a n = A227833 n

end A227833

/-! ## A227833.P434803585511027613

`A174574(n)+A127427(n)-2*n`
-/

namespace A227833.P434803585511027613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174574 n + A127427 n - (2 * n : ℤ)

end

end A227833.P434803585511027613

namespace A227833

/-- `A174574(n)+A127427(n)-2*n` -/
def P434803585511027613.Spec : Prop :=
  ∀ n, P434803585511027613.a n = A227833 n

end A227833

/-! ## A227833.P11035366949233792586

`A127427(n)+A174574(n)-A005843(n)`
-/

namespace A227833.P11035366949233792586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 n + (A174574 n - A005843 n)

end

end A227833.P11035366949233792586

namespace A227833

/-- `A127427(n)+A174574(n)-A005843(n)` -/
def P11035366949233792586.Spec : Prop :=
  ∀ n, P11035366949233792586.a n = A227833 n

end A227833

/-! ## A227833.P15055821284475379457

`A000989(n)+A054861(n)-A343754(n)`
-/

namespace A227833.P15055821284475379457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n + (A054861 n - A343754 n)

end

end A227833.P15055821284475379457

namespace A227833

/-- `A000989(n)+A054861(n)-A343754(n)` -/
def P15055821284475379457.Spec : Prop :=
  ∀ n, P15055821284475379457.a n = A227833 n

end A227833

/-! ## A227833.P8656232554461524786

`(A174574(n)+A127427(n))%A028310(n)`
-/

namespace A227833.P8656232554461524786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174574 n + A127427 n) (A028310 n)

end

end A227833.P8656232554461524786

namespace A227833

/-- `(A174574(n)+A127427(n))%A028310(n)` -/
def P8656232554461524786.Spec : Prop :=
  ∀ n, P8656232554461524786.a n = A227833 n

end A227833

/-! ## A227833.P9168220057932614121

`A001489(n)+∑[A253786(n)+A065363(n)]`
-/

namespace A227833.P9168220057932614121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n + A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227833.P9168220057932614121

namespace A227833

/-- `A001489(n)+∑[A253786(n)+A065363(n)]` -/
def P9168220057932614121.Spec : Prop :=
  ∀ n, P9168220057932614121.a n = A227833 n

end A227833

/-! ## A227833.P9547122046045153556

`(A000007(n)+∑[A253786(n)+A065363(n)]+1)%(n+1)`
-/

namespace A227833.P9547122046045153556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n + A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 1 : ℤ)

end

end A227833.P9547122046045153556

namespace A227833

/-- `(A000007(n)+∑[A253786(n)+A065363(n)]+1)%(n+1)` -/
def P9547122046045153556.Spec : Prop :=
  ∀ n, P9547122046045153556.a n = A227833 n

end A227833

/-!
# A227834: 2^a(n) is the highest power of 2 dividing A000930(n).

The programs for A227834, the canonical program `A227834.P16691215398278504182` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227834 has offset 0).

The definition of A227834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227834.P16691215398278504182

`val(A000930(n), 2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227834

/-- `val(A000930(n), 2)` -/
def P16691215398278504182.Spec : Prop :=
  ∀ n, (P16691215398278504182.a n : ℤ) = A227834 n

theorem P16691215398278504182.correct : P16691215398278504182.Spec := by
  intro n
  simp only [A227834]

end A227834

/-! ## A227834.P1261599963194168462

`val(abs(A199804(n)), 2)`
-/

namespace A227834.P1261599963194168462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A199804 n|.toNat 2

end

end A227834.P1261599963194168462

namespace A227834

/-- `val(abs(A199804(n)), 2)` -/
def P1261599963194168462.Spec : Prop :=
  ∀ n, (P1261599963194168462.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P6596001194812745510

`val(∑[A078012(n)], 2)`
-/

namespace A227834.P6596001194812745510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A227834.P6596001194812745510

namespace A227834

/-- `val(∑[A078012(n)], 2)` -/
def P6596001194812745510.Spec : Prop :=
  ∀ n, (P6596001194812745510.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P9939632419189455613

`val(A078012(n+3), 2)`
-/

namespace A227834.P9939632419189455613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078012 (n + 3)).toNat 2

end

end A227834.P9939632419189455613

namespace A227834

/-- `val(A078012(n+3), 2)` -/
def P9939632419189455613.Spec : Prop :=
  ∀ n, (P9939632419189455613.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P2765528567828482075

`val(A108104(2*n), 2)`
-/

namespace A227834.P2765528567828482075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108104 (2 * n)).toNat 2

end

end A227834.P2765528567828482075

namespace A227834

/-- `val(A108104(2*n), 2)` -/
def P2765528567828482075.Spec : Prop :=
  ∀ n, (P2765528567828482075.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P10085239879201632110

`val(A226916(2*n+7), 2)`
-/

namespace A227834.P10085239879201632110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A226916 (2 * n + 7)).toNat 2

end

end A227834.P10085239879201632110

namespace A227834

/-- `val(A226916(2*n+7), 2)` -/
def P10085239879201632110.Spec : Prop :=
  ∀ n, (P10085239879201632110.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P2713141981621936176

`val(A277253(n)+A277252(n), 2)`
-/

namespace A227834.P2713141981621936176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277253 n + A277252 n).toNat 2

end

end A227834.P2713141981621936176

namespace A227834

/-- `val(A277253(n)+A277252(n), 2)` -/
def P2713141981621936176.Spec : Prop :=
  ∀ n, (P2713141981621936176.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P13951812768861434550

`val(lcm(A008836(n+1), A199804(n)), 2)`
-/

namespace A227834.P13951812768861434550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm (A008836 (n + 1)) (A199804 n)) 2

end

end A227834.P13951812768861434550

namespace A227834

/-- `val(lcm(A008836(n+1), A199804(n)), 2)` -/
def P13951812768861434550.Spec : Prop :=
  ∀ n, (P13951812768861434550.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P15438006317438471828

`val(Δ[A068921(n+1)], 2)`
-/

namespace A227834.P15438006317438471828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A227834.P15438006317438471828

namespace A227834

/-- `val(Δ[A068921(n+1)], 2)` -/
def P15438006317438471828.Spec : Prop :=
  ∀ n, (P15438006317438471828.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P9166657235110403665

`A001222(gcd(A000079(n), A000930(n)))`
-/

namespace A227834.P9166657235110403665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A000930 n))

end

end A227834.P9166657235110403665

namespace A227834

/-- `A001222(gcd(A000079(n), A000930(n)))` -/
def P9166657235110403665.Spec : Prop :=
  ∀ n, P9166657235110403665.a n = A227834 n

end A227834

/-! ## A227834.P14380266876130285152

`val(∑[a(n-1)+a(n-3)]², 4)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A227834.P14380266876130285152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) 4

end

end A227834.P14380266876130285152

namespace A227834

/-- `val(∑[a(n-1)+a(n-3)]², 4)` -/
def P14380266876130285152.Spec : Prop :=
  ∀ n, (P14380266876130285152.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P13314437207609254665

`val(A233247(n), 4)`
-/

namespace A227834.P13314437207609254665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233247 n).toNat 4

end

end A227834.P13314437207609254665

namespace A227834

/-- `val(A233247(n), 4)` -/
def P13314437207609254665.Spec : Prop :=
  ∀ n, (P13314437207609254665.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P17920433579917754558

`val(A224809(2*n), 4)`
-/

namespace A227834.P17920433579917754558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224809 (2 * n)).toNat 4

end

end A227834.P17920433579917754558

namespace A227834

/-- `val(A224809(2*n), 4)` -/
def P17920433579917754558.Spec : Prop :=
  ∀ n, (P17920433579917754558.a n : ℤ) = A227834 n

end A227834

/-! ## A227834.P6943865358578518135

`val(A224810(3*n), 8)`
-/

namespace A227834.P6943865358578518135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224810 (3 * n)).toNat 8

end

end A227834.P6943865358578518135

namespace A227834

/-- `val(A224810(3*n), 8)` -/
def P6943865358578518135.Spec : Prop :=
  ∀ n, (P6943865358578518135.a n : ℤ) = A227834 n

end A227834

/-!
# A227835: 3^a(n) is the highest power of 3 dividing A000930(n).

The programs for A227835, the canonical program `A227835.P3967408715461086615` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227835 has offset 0).

The definition of A227835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227835.P3967408715461086615

`val(A000930(n), 3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227835

/-- `val(A000930(n), 3)` -/
def P3967408715461086615.Spec : Prop :=
  ∀ n, (P3967408715461086615.a n : ℤ) = A227835 n

theorem P3967408715461086615.correct : P3967408715461086615.Spec := by
  intro n
  simp only [A227835]

end A227835

/-! ## A227835.P7268278236623348679

`val(abs(A199804(n)), 3)`
-/

namespace A227835.P7268278236623348679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A199804 n|.toNat 3

end

end A227835.P7268278236623348679

namespace A227835

/-- `val(abs(A199804(n)), 3)` -/
def P7268278236623348679.Spec : Prop :=
  ∀ n, (P7268278236623348679.a n : ℤ) = A227835 n

end A227835

/-! ## A227835.P3826902967691256161

`val(∑[A078012(n)], 3)`
-/

namespace A227835.P3826902967691256161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A227835.P3826902967691256161

namespace A227835

/-- `val(∑[A078012(n)], 3)` -/
def P3826902967691256161.Spec : Prop :=
  ∀ n, (P3826902967691256161.a n : ℤ) = A227835 n

end A227835

/-! ## A227835.P8885791258896108476

`val(A078012(n+3), 3)`
-/

namespace A227835.P8885791258896108476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078012 (n + 3)).toNat 3

end

end A227835.P8885791258896108476

namespace A227835

/-- `val(A078012(n+3), 3)` -/
def P8885791258896108476.Spec : Prop :=
  ∀ n, (P8885791258896108476.a n : ℤ) = A227835 n

end A227835

/-! ## A227835.P15547159990641649289

`val(A108104(2*n), 3)`
-/

namespace A227835.P15547159990641649289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108104 (2 * n)).toNat 3

end

end A227835.P15547159990641649289

namespace A227835

/-- `val(A108104(2*n), 3)` -/
def P15547159990641649289.Spec : Prop :=
  ∀ n, (P15547159990641649289.a n : ℤ) = A227835 n

end A227835

/-! ## A227835.P9438798499155688043

`val(A226916(2*n+7), 3)`
-/

namespace A227835.P9438798499155688043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A226916 (2 * n + 7)).toNat 3

end

end A227835.P9438798499155688043

namespace A227835

/-- `val(A226916(2*n+7), 3)` -/
def P9438798499155688043.Spec : Prop :=
  ∀ n, (P9438798499155688043.a n : ℤ) = A227835 n

end A227835

/-! ## A227835.P12947101711059235666

`val(A233247(n), 9)`
-/

namespace A227835.P12947101711059235666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233247 n).toNat 9

end

end A227835.P12947101711059235666

namespace A227835

/-- `val(A233247(n), 9)` -/
def P12947101711059235666.Spec : Prop :=
  ∀ n, (P12947101711059235666.a n : ℤ) = A227835 n

end A227835

/-! ## A227835.P17082736536590648381

`val(A224809(2*n), 9)`
-/

namespace A227835.P17082736536590648381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224809 (2 * n)).toNat 9

end

end A227835.P17082736536590648381

namespace A227835

/-- `val(A224809(2*n), 9)` -/
def P17082736536590648381.Spec : Prop :=
  ∀ n, (P17082736536590648381.a n : ℤ) = A227835 n

end A227835

/-! ## A227835.P4337732519383194944

`val(∑[A041813(n)], 3)`
-/

namespace A227835.P4337732519383194944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A227835.P4337732519383194944

namespace A227835

/-- `val(∑[A041813(n)], 3)` -/
def P4337732519383194944.Spec : Prop :=
  ∀ n, (P4337732519383194944.a n : ℤ) = A227835 n

end A227835

/-!
# A227836: 2^a(n) is the highest power of 2 dividing A214551(n).

The programs for A227836, the canonical program `A227836.P12041666106557242195` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227836 has offset 0).

The definition of A227836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227836.P12041666106557242195

`val(A214551(n), 2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227836

/-- `val(A214551(n), 2)` -/
def P12041666106557242195.Spec : Prop :=
  ∀ n, (P12041666106557242195.a n : ℤ) = A227836 n

theorem P12041666106557242195.correct : P12041666106557242195.Spec := by
  intro n
  simp only [A227836]

end A227836

/-! ## A227836.P3539998416493600850

`A001222(and(-A214551(n), A214551(n)))`
-/

namespace A227836.P3539998416493600850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A214551 n) (A214551 n)).toNat

end

end A227836.P3539998416493600850

namespace A227836

/-- `A001222(and(-A214551(n), A214551(n)))` -/
def P3539998416493600850.Spec : Prop :=
  ∀ n, P3539998416493600850.a n = A227836 n

end A227836

/-! ## A227836.P737762267458996440

`A014701(and(-A214551(n), A214551(n)))`
-/

namespace A227836.P737762267458996440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014701 (Int.land (-A214551 n) (A214551 n)).toNat

end

end A227836.P737762267458996440

namespace A227836

/-- `A014701(and(-A214551(n), A214551(n)))` -/
def P737762267458996440.Spec : Prop :=
  ∀ n, P737762267458996440.a n = A227836 n

end A227836

/-! ## A227836.P13046715714319533651

`val(A214322(n)/A214323(n), 2)`
-/

namespace A227836.P13046715714319533651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A214322 n : ℚ) / (A214323 n : ℚ))).toNat 2

end

end A227836.P13046715714319533651

namespace A227836

/-- `val(A214322(n)/A214323(n), 2)` -/
def P13046715714319533651.Spec : Prop :=
  ∀ n, (P13046715714319533651.a n : ℤ) = A227836 n

end A227836

/-! ## A227836.P11825243168659151066

`A001222(gcd(A143095(n), A214551(n)))`
-/

namespace A227836.P11825243168659151066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A143095 n) (A214551 n))

end

end A227836.P11825243168659151066

namespace A227836

/-- `A001222(gcd(A143095(n), A214551(n)))` -/
def P11825243168659151066.Spec : Prop :=
  ∀ n, P11825243168659151066.a n = A227836 n

end A227836

/-! ## A227836.P3869735379684606166

`A007814(A214551(n))`
-/

namespace A227836.P3869735379684606166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A214551 n).toNat

end

end A227836.P3869735379684606166

namespace A227836

/-- `A007814(A214551(n))` -/
def P3869735379684606166.Spec : Prop :=
  ∀ n, P3869735379684606166.a n = A227836 n

end A227836

/-! ## A227836.P12629857928822672136

`∑{d}[A214551(n), A035455(A014963(#))]`
-/

namespace A227836.P12629857928822672136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A035455 (A014963 d).toNat

end

end A227836.P12629857928822672136

namespace A227836

/-- `∑{d}[A214551(n), A035455(A014963(#))]` -/
def P12629857928822672136.Spec : Prop :=
  ∀ n, P12629857928822672136.a n = A227836 n

end A227836

/-! ## A227836.P4760234902836419511

`A001222(A006519(A214551(n)))%A270093(n)`
-/

namespace A227836.P4760234902836419511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A006519 (A214551 n).toNat).toNat) (A270093 n)

end

end A227836.P4760234902836419511

namespace A227836

/-- `A001222(A006519(A214551(n)))%A270093(n)` -/
def P4760234902836419511.Spec : Prop :=
  ∀ n, P4760234902836419511.a n = A227836 n

end A227836

/-!
# A227837: 3^a(n) is the highest power of 3 dividing A214551(n).

The programs for A227837, the canonical program `A227837.P3683269354223994012` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227837 has offset 0).

The definition of A227837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227837.P3683269354223994012

`val(A214551(n), 3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227837

/-- `val(A214551(n), 3)` -/
def P3683269354223994012.Spec : Prop :=
  ∀ n, (P3683269354223994012.a n : ℤ) = A227837 n

theorem P3683269354223994012.correct : P3683269354223994012.Spec := by
  intro n
  simp only [A227837]

end A227837

/-! ## A227837.P18073164703964951809

`val(A214322(n)/A214323(n), 3)`
-/

namespace A227837.P18073164703964951809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A214322 n : ℚ) / (A214323 n : ℚ))).toNat 3

end

end A227837.P18073164703964951809

namespace A227837

/-- `val(A214322(n)/A214323(n), 3)` -/
def P18073164703964951809.Spec : Prop :=
  ∀ n, (P18073164703964951809.a n : ℤ) = A227837 n

end A227837

/-! ## A227837.P8706477724293777726

`A067029(gcd(3^n, A214551(n)))`
-/

namespace A227837.P8706477724293777726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (Int.gcd (3 ^ n : ℤ) (A214551 n))

end

end A227837.P8706477724293777726

namespace A227837

/-- `A067029(gcd(3^n, A214551(n)))` -/
def P8706477724293777726.Spec : Prop :=
  ∀ n, P8706477724293777726.a n = A227837 n

end A227837

/-! ## A227837.P3871829757542953043

`A007949(A214551(n)%A111219(2*(n+1)))`
-/

namespace A227837.P3871829757542953043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (Int.tmod (A214551 n) (A111219 (2 * (n + 1)))).toNat

end

end A227837.P3871829757542953043

namespace A227837

/-- `A007949(A214551(n)%A111219(2*(n+1)))` -/
def P3871829757542953043.Spec : Prop :=
  ∀ n, P3871829757542953043.a n = A227837 n

end A227837

/-! ## A227837.P9403181522859985893

`A007949(A214551(n))`
-/

namespace A227837.P9403181522859985893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A214551 n).toNat

end

end A227837.P9403181522859985893

namespace A227837

/-- `A007949(A214551(n))` -/
def P9403181522859985893.Spec : Prop :=
  ∀ n, P9403181522859985893.a n = A227837 n

end A227837

/-!
# A227838: 2^a(n) is the highest power of 2 dividing A005132(n).

The programs for A227838, there is no canonical definition to state claims against.
-/

/-! ## A227838.P3079285504505054927

`val(Δ[A065056(n)], 2)`
-/

namespace A227838.P3079285504505054927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A227838.P3079285504505054927

/-! ## A227838.P5157533949370015910

`val(A005132(n+1), 2)`
-/

namespace A227838.P5157533949370015910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005132 (n + 1)).toNat 2

end

end A227838.P5157533949370015910

/-! ## A227838.P5479940142817907544

`val(∑[A160356(n+1)], 2)`
-/

namespace A227838.P5479940142817907544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A227838.P5479940142817907544

/-! ## A227838.P18354586680722106048

`val(A169631(n+1), 2)`
-/

namespace A227838.P18354586680722106048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169631 (n + 1)).toNat 2

end

end A227838.P18354586680722106048

/-! ## A227838.P710922582090843947

`val(A209386(n+1), 2)-1`
-/

namespace A227838.P710922582090843947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A209386 (n + 1)).toNat 2 : ℤ) - 1

end

end A227838.P710922582090843947

/-! ## A227838.P4273282268389567791

`A007814(A005132(n+1))`
-/

namespace A227838.P4273282268389567791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005132 (n + 1)).toNat

end

end A227838.P4273282268389567791

/-! ## A227838.P10332720864648473291

`A220779(A209386(n+1))`
-/

namespace A227838.P10332720864648473291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220779 (A209386 (n + 1)).toNat

end

end A227838.P10332720864648473291

/-! ## A227838.P6472329803395861152

`val(A066201(∑[n+3]), 2)`
-/

namespace A227838.P6472329803395861152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066201 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A227838.P6472329803395861152

/-!
# A227839: 3^a(n) is the highest power of 3 dividing A005132(n).

The programs for A227839, there is no canonical definition to state claims against.
-/

/-! ## A227839.P17395182427864388290

`val(Δ[A065056(n)], 3)`
-/

namespace A227839.P17395182427864388290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A227839.P17395182427864388290

/-! ## A227839.P1742067324858095929

`val(A005132(n+1), 3)`
-/

namespace A227839.P1742067324858095929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005132 (n + 1)).toNat 3

end

end A227839.P1742067324858095929

/-! ## A227839.P14132514153006761479

`val(∑[A160356(n+1)], 3)`
-/

namespace A227839.P14132514153006761479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A227839.P14132514153006761479

/-! ## A227839.P8716909705551927691

`val(∑[(n+1)*A160357(n+1)], 3)`
-/

namespace A227839.P8716909705551927691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A160357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A227839.P8716909705551927691

/-! ## A227839.P6719091284871179351

`val(A209386(n+1), 3)`
-/

namespace A227839.P6719091284871179351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A209386 (n + 1)).toNat 3

end

end A227839.P6719091284871179351

/-! ## A227839.P8056702993983012486

`A007949(A005132(n+1))`
-/

namespace A227839.P8056702993983012486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A005132 (n + 1)).toNat

end

end A227839.P8056702993983012486

/-! ## A227839.P5336770569170832860

`A007949(A209386(n+1)/2)`
-/

namespace A227839.P5336770569170832860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A209386 (n + 1) : ℚ) / 2)).toNat

end

end A227839.P5336770569170832860

/-! ## A227839.P4953362915010203894

`A007949(A209386(n+1))`
-/

namespace A227839.P4953362915010203894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A209386 (n + 1)).toNat

end

end A227839.P4953362915010203894

/-!
# A227840: 3^a(n) is the highest power of 3 dividing A000110(n).

The programs for A227840, there is no canonical definition to state claims against.
-/

/-! ## A227840.P3046485891463017816

`val(A000110(n), 3)`
-/

namespace A227840.P3046485891463017816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000110 n).toNat 3

end

end A227840.P3046485891463017816

/-! ## A227840.P2475336527981460111

`val(abs(A292935(n)), 3)`
-/

namespace A227840.P2475336527981460111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A292935 n|.toNat 3

end

end A227840.P2475336527981460111

/-! ## A227840.P5640088252039901421

`val(A011971(∑[n]), 3)`
-/

namespace A227840.P5640088252039901421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A227840.P5640088252039901421

/-! ## A227840.P5257746521281157141

`val(A095149(∑[n]), 3)`
-/

namespace A227840.P5257746521281157141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A227840.P5257746521281157141

/-! ## A227840.P9943481958502844407

`val(A108087(∑[n]), 3)`
-/

namespace A227840.P9943481958502844407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A227840.P9943481958502844407

/-! ## A227840.P17698646090747689461

`val(A186020(∑[n]), 3)`
-/

namespace A227840.P17698646090747689461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A186020 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A227840.P17698646090747689461

/-! ## A227840.P11744543401407422192

`val(A212431(∑[n]), 3)`
-/

namespace A227840.P11744543401407422192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A212431 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A227840.P11744543401407422192

/-! ## A227840.P20366604770935445

`val(A259691(∑[n]), 3)`
-/

namespace A227840.P20366604770935445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A259691 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A227840.P20366604770935445

/-! ## A227840.P13900380742257297564

`val(A327884(∑[n]), 3)`
-/

namespace A227840.P13900380742257297564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A227840.P13900380742257297564

/-! ## A227840.P11973227620554092607

`val(Δ[A005001(n)], 3)`
-/

namespace A227840.P11973227620554092607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A227840.P11973227620554092607

/-!
# A227841: Partial sums of A014817.

The programs for A227841, there is no canonical definition to state claims against.
-/

/-! ## A227841.P5898542243305552528

`∑[A014817(n+1)]`
-/

namespace A227841.P5898542243305552528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227841.P5898542243305552528

/-! ## A227841.P14971388565065413243

`∑[A227842(n)+a(n-1)]` with `a(0)=1`
-/

namespace A227841.P14971388565065413243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A227842 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227841.P14971388565065413243

/-! ## A227841.P7511601275597535876

`∑[A014811(n+1)+A000188(n+1)]`
-/

namespace A227841.P7511601275597535876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014811 (n + 1) + A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227841.P7511601275597535876

/-! ## A227841.P17637615596815429074

`A120486(n+1)+∑[A014811(n+1)]`
-/

namespace A227841.P17637615596815429074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120486 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227841.P17637615596815429074

/-! ## A227841.P6561689973817865048

`∑[record[A014817(A133310(n))]]`
-/

namespace A227841.P6561689973817865048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227841.P6561689973817865048

/-! ## A227841.P7059878198477350900

`∑[∑[A227842(A065033(2*n))]]`
-/

namespace A227841.P7059878198477350900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227841.P7059878198477350900

/-! ## A227841.P11152248241650376342

`∑[record[A014817(A126759(n))]]`
-/

namespace A227841.P11152248241650376342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227841.P11152248241650376342

/-!
# A227842: First differences of A014817.

The programs for A227842, there is no canonical definition to state claims against.
-/

/-! ## A227842.P1524967819528948601

`A014817(n+2)-A014817(n+1)`
-/

namespace A227842.P1524967819528948601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 2) - A014817 (n + 1)

end

end A227842.P1524967819528948601

/-! ## A227842.P11859644653987975941

`Δ[A014817(n+1)]`
-/

namespace A227842.P11859644653987975941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227842.P11859644653987975941

/-! ## A227842.P6396118116604664462

`Δ[A014811(n+1)+A000188(n+1)]`
-/

namespace A227842.P6396118116604664462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014811 (n + 1) + A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227842.P6396118116604664462

/-! ## A227842.P15250935682378721964

`Δ[A057918(n+1)+A014811(n+1)]`
-/

namespace A227842.P15250935682378721964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + A014811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227842.P15250935682378721964

/-! ## A227842.P4321884102891877644

`Δ[record[A014817(A133310(n))]]`
-/

namespace A227842.P4321884102891877644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227842.P4321884102891877644

/-!
# A227843: Numbers n such that the binary XOR of the divisors of n (A178910(n)) is a binary repunit (A000225).

The programs for A227843, there is no canonical definition to state claims against.
-/

/-! ## A227843.P12154673534730183467

`∩[A326750(n+1), A387491(n+1)]`
-/

namespace A227843.P12154673534730183467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227843.P12154673534730183467

/-! ## A227843.P15896358641348888080

`∩[A387491(n+1), A217833(n)]`
-/

namespace A227843.P15896358641348888080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227843.P15896358641348888080

/-! ## A227843.P3636106325274534738

`∩[A251642(n+1), A387491(n+1)]`
-/

namespace A227843.P3636106325274534738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227843.P3636106325274534738

/-! ## A227843.P8022094218121994199

`∩[A318588(n+1), A387491(n+1)]`
-/

namespace A227843.P8022094218121994199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227843.P8022094218121994199

/-! ## A227843.P13980701218313206062

`filter[A387491(n+1), A359824(#)]`
-/

namespace A227843.P13980701218313206062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A227843.P13980701218313206062

/-!
# A227844: Lexicographically earliest sequence whose second differences are the digits of Pi.

The programs for A227844, there is no canonical definition to state claims against.
-/

/-! ## A227844.P17335423743382135561

`∑[A046974(n)+1-A000796(n)]-(A046974(n)+1-A000796(n))`
-/

namespace A227844.P17335423743382135561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n + (1 - A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A046974 n + (1 - A000796 (n + 1)))

end

end A227844.P17335423743382135561

/-! ## A227844.P7736076274716528750

`A059582(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A227844.P7736076274716528750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059582 (n - 1) + a (n - 1)

end

end A227844.P7736076274716528750

/-! ## A227844.P12242535572214623791

`∑[A059582(n)]-A059582(n)`
-/

namespace A227844.P12242535572214623791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059582 n

end

end A227844.P12242535572214623791

/-! ## A227844.P3967237779522308153

`∑[lt[A258682(n+1), A258642(2*(n+2))]]`
-/

namespace A227844.P3967237779522308153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258642 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227844.P3967237779522308153

/-!
# A227845: G.f.: Sum_{n>=0} x^n / (1-x)^(2*n+1) * [ Sum_{k=0..n} C(n,k)^2*x^k ]^2.

The programs for A227845, there is no canonical definition to state claims against.
-/

/-! ## A227845.P7202821931517951921

`A065033(A166228(n+1)-A001076(n))`
-/

namespace A227845.P7202821931517951921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A166228 (n + 1) - A001076 n).toNat

end

end A227845.P7202821931517951921

/-! ## A227845.P18123750971278149493

`A008621(Δ[A150861(n)])`
-/

namespace A227845.P18123750971278149493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A227845.P18123750971278149493

/-!
# A227846: Self-convolution equals A227845.

The programs for A227846, there is no canonical definition to state claims against.
-/

/-! ## A227846.P17344564815089100692

`A028310(A301770(n)-A224293(n+1))`
-/

namespace A227846.P17344564815089100692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A301770 n - A224293 (n + 1)).toNat

end

end A227846.P17344564815089100692

/-! ## A227846.P13136854516700075769

`A244988(A022567(∑[n]))`
-/

namespace A227846.P13136854516700075769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244988 (A022567 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A227846.P13136854516700075769

/-! ## A227846.P17238946078734004762

`A130497(A007166(n+1))`
-/

namespace A227846.P17238946078734004762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A007166 (n + 1)).toNat

end

end A227846.P17238946078734004762

/-!
# A227849: a(n) = 2 * floor( 3/14 * n^2) if n even, a(n) = 2 * round( 3/14 * n^2) -1 if n odd.

The programs for A227849, the canonical program `A227849.P3798066996558267507` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227849 has offset 0).

The definition of A227849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227849.P3798066996558267507

`A033439(n)-and(1, A033439(n)+n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227849

/-- `A033439(n)-and(1, A033439(n)+n)` -/
def P3798066996558267507.Spec : Prop :=
  ∀ n, P3798066996558267507.a n = A227849 n

theorem P3798066996558267507.correct : P3798066996558267507.Spec := by
  intro n
  simp only [A227849]

end A227849

/-! ## A227849.P7398102939450041396

`A033439(n)-and(1, A000290(n)-A033439(n))`
-/

namespace A227849.P7398102939450041396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033439 n - Int.land 1 (A000290 n - A033439 n)

end

end A227849.P7398102939450041396

namespace A227849

/-- `A033439(n)-and(1, A000290(n)-A033439(n))` -/
def P7398102939450041396.Spec : Prop :=
  ∀ n, P7398102939450041396.a n = A227849 n

end A227849

/-! ## A227849.P2873541591600167935

`A033439(n)-Δ[A289139(n)]`
-/

namespace A227849.P2873541591600167935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033439 n - (f1 (n + 1) - f1 n)

end

end A227849.P2873541591600167935

namespace A227849

/-- `A033439(n)-Δ[A289139(n)]` -/
def P2873541591600167935.Spec : Prop :=
  ∀ n, P2873541591600167935.a n = A227849 n

end A227849

/-! ## A227849.P1524101135125107460

`A008811(2*n+5)-(A008814(2*(n+3))+n)`
-/

namespace A227849.P1524101135125107460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 (2 * n + 5) - (A008814 (2 * (n + 3)) + (n : ℤ))

end

end A227849.P1524101135125107460

namespace A227849

/-- `A008811(2*n+5)-(A008814(2*(n+3))+n)` -/
def P1524101135125107460.Spec : Prop :=
  ∀ n, P1524101135125107460.a n = A227849 n

end A227849

/-! ## A227849.P7792678150227015279

`n²-A008808(A111284(n+1))`
-/

namespace A227849.P7792678150227015279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008808 (A111284 (n + 1)).toNat

end

end A227849.P7792678150227015279

namespace A227849

/-- `n²-A008808(A111284(n+1))` -/
def P7792678150227015279.Spec : Prop :=
  ∀ n, P7792678150227015279.a n = A227849 n

end A227849

/-! ## A227849.P3694862435748551891

`A008808(5*(n+1))-(A008808(2*n+5)+A008808(3*n+5))`
-/

namespace A227849.P3694862435748551891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008808 (5 * (n + 1)) - (A008808 (2 * n + 5) + A008808 (3 * n + 5))

end

end A227849.P3694862435748551891

namespace A227849

/-- `A008808(5*(n+1))-(A008808(2*n+5)+A008808(3*n+5))` -/
def P3694862435748551891.Spec : Prop :=
  ∀ n, P3694862435748551891.a n = A227849 n

end A227849

/-! ## A227849.P14100827991219199014

`A033439(n)-and(1, A033439(6*n))`
-/

namespace A227849.P14100827991219199014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033439 n - Int.land 1 (A033439 (6 * n))

end

end A227849.P14100827991219199014

namespace A227849

/-- `A033439(n)-and(1, A033439(6*n))` -/
def P14100827991219199014.Spec : Prop :=
  ∀ n, P14100827991219199014.a n = A227849 n

end A227849

/-! ## A227849.P14467261854178965916

`2*A057359(n²)-n²`
-/

namespace A227849.P14467261854178965916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057359 (n ^ 2) - (n ^ 2 : ℤ)

end

end A227849.P14467261854178965916

namespace A227849

/-- `2*A057359(n²)-n²` -/
def P14467261854178965916.Spec : Prop :=
  ∀ n, P14467261854178965916.a n = A227849 n

end A227849

/-! ## A227849.P6107703495558406007

`n²-A194511(A189833(2*n))`
-/

namespace A227849.P6107703495558406007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A194511 (A189833 (2 * n)).toNat

end

end A227849.P6107703495558406007

namespace A227849

/-- `n²-A194511(A189833(2*n))` -/
def P6107703495558406007.Spec : Prop :=
  ∀ n, P6107703495558406007.a n = A227849 n

end A227849

/-!
# A227851: G.f.: Sum_{n>=1} n^n * x^n * Product_{k=1..n} (k + x) / (1 + n*k*x + n*x^2).

The programs for A227851, there is no canonical definition to state claims against.
-/

/-! ## A227851.P2273462489758575596

`A005117(A134054(n))-comp[2*(n+1)]`
-/

namespace A227851.P2273462489758575596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A134054 n).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A227851.P2273462489758575596

/-!
# A227852: G.f. A(x) satisfies: A(x) = Series_Reversion( x - (A(x)^2 + A(-x)^2)/2 ).

The programs for A227852, there is no canonical definition to state claims against.
-/

/-! ## A227852.P14211721637333896463

`A371291(A148288(n))`
-/

namespace A227852.P14211721637333896463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371291 (A148288 n).toNat

end

end A227852.P14211721637333896463

/-! ## A227852.P2688930450308862532

`A371291(A369578(n))`
-/

namespace A227852.P2688930450308862532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371291 (A369578 n).toNat

end

end A227852.P2688930450308862532

/-!
# A227854: Loeschian 3-almost primes: numbers with exactly three prime factors (with multiplicity) and of the form x^2 + x*y + y^2.

The programs for A227854, the canonical program `A227854.P8575566533649913162` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227854 has offset 1).

The definition of A227854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227854.P8575566533649913162

`filter[A014612(n+1), A353816(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A227854

/-- `filter[A014612(n+1), A353816(#)]` -/
def P8575566533649913162.Spec : Prop :=
  ∀ n, P8575566533649913162.a n = A227854 (n + 1)

theorem P8575566533649913162.correct : P8575566533649913162.Spec := by
  intro n
  simp only [A227854, Nat.add_sub_cancel]

end A227854

/-! ## A227854.P4975498599603560206

`∩[A003136(n+1), A014612(n+1)]`
-/

namespace A227854.P4975498599603560206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227854.P4975498599603560206

namespace A227854

/-- `∩[A003136(n+1), A014612(n+1)]` -/
def P4975498599603560206.Spec : Prop :=
  ∀ n, (P4975498599603560206.a n : ℤ) = A227854 (n + 1)

end A227854

/-! ## A227854.P17157788487580309902

`∩[A014612(n+1), A024614(n+1)]`
-/

namespace A227854.P17157788487580309902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227854.P17157788487580309902

namespace A227854

/-- `∩[A014612(n+1), A024614(n+1)]` -/
def P17157788487580309902.Spec : Prop :=
  ∀ n, (P17157788487580309902.a n : ℤ) = A227854 (n + 1)

end A227854

/-! ## A227854.P18209046463881575136

`∩[A014612(n+1), A270248(n+1)-A270672(n+1)]`
-/

namespace A227854.P18209046463881575136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 1) - A270672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227854.P18209046463881575136

namespace A227854

/-- `∩[A014612(n+1), A270248(n+1)-A270672(n+1)]` -/
def P18209046463881575136.Spec : Prop :=
  ∀ n, (P18209046463881575136.a n : ℤ) = A227854 (n + 1)

end A227854

/-! ## A227854.P14658439619153400245

`filter[A024614(n+1), A101605(#)]`
-/

namespace A227854.P14658439619153400245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A227854.P14658439619153400245

namespace A227854

/-- `filter[A024614(n+1), A101605(#)]` -/
def P14658439619153400245.Spec : Prop :=
  ∀ n, P14658439619153400245.a n = A227854 (n + 1)

end A227854

/-! ## A227854.P12139420909610383245

`filter[A003136(n+2), A101605(#)]`
-/

namespace A227854.P12139420909610383245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A227854.P12139420909610383245

namespace A227854

/-- `filter[A003136(n+2), A101605(#)]` -/
def P12139420909610383245.Spec : Prop :=
  ∀ n, P12139420909610383245.a n = A227854 (n + 1)

end A227854

/-!
# A227855: Numbers of the form x^4 + 4*y^4.

The programs for A227855, there is no canonical definition to state claims against.
-/

/-! ## A227855.P269841197906218898

`record[and(A000695(n+2), A325101(n))]`
-/

namespace A227855.P269841197906218898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000695 (n + 2)) (A325101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227855.P269841197906218898

/-! ## A227855.P7781320388980678219

`eq[A110503(A348853(n+1)), A151666(n)]`
-/

namespace A227855.P7781320388980678219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 (A348853 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227855.P7781320388980678219

/-! ## A227855.P8002829139295959719

`eq[A110503(A348853(n+1)), A338854(n)]`
-/

namespace A227855.P8002829139295959719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 (A348853 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227855.P8002829139295959719

/-! ## A227855.P8057071729328671915

`lt[A063695(n), A110503(A348853(n+1))]`
-/

namespace A227855.P8057071729328671915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 (A348853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227855.P8057071729328671915

/-! ## A227855.P4901008788058850144

`lt[A139352(n), A110503(A348853(n+1))]`
-/

namespace A227855.P4901008788058850144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 (A348853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227855.P4901008788058850144

/-!
# A227858: 

The programs for A227858, there is no canonical definition to state claims against.
-/

/-! ## A227858.P13567623583986226450

`record[(n+1)*(1-A040163(n+1))]`
-/

namespace A227858.P13567623583986226450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A040163 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227858.P13567623583986226450

/-!
# A227859: Sequence of integers such that there are d terms between pairs of integers d. Cycle through d=0,...,9, trying to insert the least unused pair starting at the next free position.

The programs for A227859, there is no canonical definition to state claims against.
-/

/-! ## A227859.P8649868135467501865

`gcd(A185044(A035363(n)), A193564(n+1))`
-/

namespace A227859.P8649868135467501865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185044 (A035363 n).toNat) (A193564 (n + 1))

end

end A227859.P8649868135467501865

/-! ## A227859.P3234727772272530020

`A113230(A026242(n+1)%A113240(2*n+1))`
-/

namespace A227859.P3234727772272530020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113230 (Int.tmod (A026242 (n + 1)) (A113240 (2 * n + 1))).toNat

end

end A227859.P3234727772272530020

/-! ## A227859.P13195483464007828867

`A004427(A193564(n+1))*A093178(A000013(n))`
-/

namespace A227859.P13195483464007828867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A193564 (n + 1)).toNat * A093178 (A000013 n).toNat

end

end A227859.P13195483464007828867

/-! ## A227859.P3172060558461799365

`A004427(A193564(n+1))*A093178(A000016(n))`
-/

namespace A227859.P3172060558461799365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A193564 (n + 1)).toNat * A093178 (A000016 n).toNat

end

end A227859.P3172060558461799365

/-! ## A227859.P13340903571377328124

`A004427(A193564(n+1))^A000016(A185044(n))`
-/

namespace A227859.P13340903571377328124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004427 (A193564 (n + 1)).toNat : ℚ) ^ (A000016 (A185044 n).toNat : ℤ)

end

end A227859.P13340903571377328124

/-!
# A227860: Sequence of integers such that there are d terms between pairs of integers d. Cycle through d=0,1,2,3, trying to insert the least unused pair starting at the next free position.

The programs for A227860, the canonical program `A227860.P3402347102790630213` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227860 has offset 1).

The definition of A227860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227860.P3402347102790630213

`a(n-8)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=1, a(5)=3, a(6)=2, a(7)=0, a(8)=0, a(9)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227860

/-- `a(n-8)` -/
def P3402347102790630213.Spec : Prop :=
  ∀ n, (P3402347102790630213.a n : ℤ) = A227860 (n + 1)

theorem P3402347102790630213.correct : P3402347102790630213.Spec := by
  intro n
  simp only [A227860, Nat.add_sub_cancel]

end A227860

/-!
# A227861: Sum i + j for integers 2^i*3^j (A033845).

The programs for A227861, there is no canonical definition to state claims against.
-/

/-! ## A227861.P13100360761945697759

`A069352(n+1)+2`
-/

namespace A227861.P13100360761945697759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1) + 2

end

end A227861.P13100360761945697759

/-! ## A227861.P5141600286910233183

`A158456(n+1)+A134583(n+1)`
-/

namespace A227861.P5141600286910233183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158456 (n + 1) + A134583 (n + 1)

end

end A227861.P5141600286910233183

/-! ## A227861.P15403139615511412630

`A022328(n+1)+A134583(n+1)+1`
-/

namespace A227861.P15403139615511412630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1) + (A134583 (n + 1) + 1)

end

end A227861.P15403139615511412630

/-! ## A227861.P237376853073710564

`A022329(n+1)+A158456(n+1)+1`
-/

namespace A227861.P237376853073710564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1) + (A158456 (n + 1) + 1)

end

end A227861.P237376853073710564

/-! ## A227861.P3763345060000158977

`A022328(n+1)+A022329(n+1)+2`
-/

namespace A227861.P3763345060000158977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1) + (A022329 (n + 1) + 2)

end

end A227861.P3763345060000158977

/-! ## A227861.P17821005002419972445

`A134583(n+1)+A086416(n+1)/A134583(n+1)`
-/

namespace A227861.P17821005002419972445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134583 (n + 1) : ℚ) + (A086416 (n + 1) : ℚ) / (A134583 (n + 1) : ℚ)

end

end A227861.P17821005002419972445

/-! ## A227861.P2883808638096584868

`A158456(n+1)+A086416(n+1)/A158456(n+1)`
-/

namespace A227861.P2883808638096584868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158456 (n + 1) : ℚ) + (A086416 (n + 1) : ℚ) / (A158456 (n + 1) : ℚ)

end

end A227861.P2883808638096584868

/-! ## A227861.P14268430323704343062

`A134583(n+1)+A134583(A372744(n+1))`
-/

namespace A227861.P14268430323704343062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134583 (n + 1) + A134583 (A372744 (n + 1)).toNat

end

end A227861.P14268430323704343062

/-! ## A227861.P691598538217459027

`A158456(n+1)+A158456(A372744(n+1))`
-/

namespace A227861.P691598538217459027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158456 (n + 1) + A158456 (A372744 (n + 1)).toNat

end

end A227861.P691598538217459027

/-! ## A227861.P2570881804732431390

`A112759(eq[2, A112762(n+1)]+1)`
-/

namespace A227861.P2570881804732431390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A227861.P2570881804732431390

/-! ## A227861.P18164207144990252026

`A124831(eq[2, A124830(n+1)])`
-/

namespace A227861.P18164207144990252026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227861.P18164207144990252026

/-! ## A227861.P2860331593630634

`∑{e}[∑[A061987(n)], #]+2`
-/

namespace A227861.P2860331593630634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2

end

end A227861.P2860331593630634

/-! ## A227861.P2045073870392121131

`∑{e}[A003586(n+1), #]+2`
-/

namespace A227861.P2045073870392121131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2

end

end A227861.P2045073870392121131

/-! ## A227861.P17293317838730261866

`∑{e}[sqrt(A025620(n+1)), #]+2`
-/

namespace A227861.P17293317838730261866
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 2

end

end A227861.P17293317838730261866

/-! ## A227861.P8429816043947175869

`∑{e}[A007694(n+2), #]+1`
-/

namespace A227861.P8429816043947175869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A227861.P8429816043947175869

/-! ## A227861.P9072348162713307101

`∑{e}[A033845(n+1), #]`
-/

namespace A227861.P9072348162713307101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227861.P9072348162713307101

/-! ## A227861.P16590810518732802542

`∑{e}[A187778(n+2), #]`
-/

namespace A227861.P16590810518732802542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227861.P16590810518732802542

/-! ## A227861.P15194438944030676722

`∑{e}[A000423(n+3), #]`
-/

namespace A227861.P15194438944030676722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000423 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227861.P15194438944030676722

/-! ## A227861.P6409475925967922298

`A001222(∑[A061987(n)])+2`
-/

namespace A227861.P6409475925967922298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A227861.P6409475925967922298

/-! ## A227861.P1755504275666062337

`A001222(Δ[A259823(n)])+2`
-/

namespace A227861.P1755504275666062337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat + 2

end

end A227861.P1755504275666062337

/-!
# A227863: Numbers congruent to {1,49} mod 120.

The programs for A227863, the canonical program `A227863.P9147502583929794188` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227863 has offset 1).

The definition of A227863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227863.P9147502583929794188

`a(n-2)+120` with `a(0)=1, a(1)=49`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227863

/-- `a(n-2)+120` -/
def P9147502583929794188.Spec : Prop :=
  ∀ n, (P9147502583929794188.a n : ℤ) = A227863 (n + 1)

theorem P9147502583929794188.correct : P9147502583929794188.Spec := by
  intro n
  simp only [A227863, Nat.add_sub_cancel]

end A227863

/-! ## A227863.P9387774313184747849

`12*(5*n-n%2)+1`
-/

namespace A227863.P9387774313184747849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((5 * n : ℤ) - ((n % 2 : ℕ) : ℤ)) + 1

end

end A227863.P9387774313184747849

namespace A227863

/-- `12*(5*n-n%2)+1` -/
def P9387774313184747849.Spec : Prop :=
  ∀ n, P9387774313184747849.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P15635714702971348772

`12*A146763(n)+1`
-/

namespace A227863.P15635714702971348772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A146763 n + 1

end

end A227863.P15635714702971348772

namespace A227863

/-- `12*A146763(n)+1` -/
def P15635714702971348772.Spec : Prop :=
  ∀ n, P15635714702971348772.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P101560427648734124

`12*(A047470(n+1)+n)+1`
-/

namespace A227863.P101560427648734124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A047470 (n + 1) + (n : ℤ)) + 1

end

end A227863.P101560427648734124

namespace A227863

/-- `12*(A047470(n+1)+n)+1` -/
def P101560427648734124.Spec : Prop :=
  ∀ n, P101560427648734124.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P1366151514209648571

`A008606(n)+A008606(A032766(n))+1`
-/

namespace A227863.P1366151514209648571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n + (A008606 (A032766 n).toNat + 1)

end

end A227863.P1366151514209648571

namespace A227863

/-- `A008606(n)+A008606(A032766(n))+1` -/
def P1366151514209648571.Spec : Prop :=
  ∀ n, P1366151514209648571.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P12308733617782130461

`A045797(2*n+1)+A045800(2*n+1)-1`
-/

namespace A227863.P12308733617782130461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (2 * n + 1) + (A045800 (2 * n + 1) - 1)

end

end A227863.P12308733617782130461

namespace A227863

/-- `A045797(2*n+1)+A045800(2*n+1)-1` -/
def P12308733617782130461.Spec : Prop :=
  ∀ n, P12308733617782130461.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P13565666550567913415

`A103214(A047215(n))`
-/

namespace A227863.P13565666550567913415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A047215 n).toNat

end

end A227863.P13565666550567913415

namespace A227863

/-- `A103214(A047215(n))` -/
def P13565666550567913415.Spec : Prop :=
  ∀ n, P13565666550567913415.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P9220854829785738391

`A008606(A032766(n)+n)+1`
-/

namespace A227863.P9220854829785738391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A032766 n + (n : ℤ)).toNat + 1

end

end A227863.P9220854829785738391

namespace A227863

/-- `A008606(A032766(n)+n)+1` -/
def P9220854829785738391.Spec : Prop :=
  ∀ n, P9220854829785738391.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P6735131329969389010

`A103214(A266297(2*n+1)/2)`
-/

namespace A227863.P6735131329969389010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (SequenceMachineLib.roundAway ((A266297 (2 * n + 1) : ℚ) / 2)).toNat

end

end A227863.P6735131329969389010

namespace A227863

/-- `A103214(A266297(2*n+1)/2)` -/
def P6735131329969389010.Spec : Prop :=
  ∀ n, P6735131329969389010.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P7445603307175983195

`2*A228141(3*n+1)-1`
-/

namespace A227863.P7445603307175983195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228141 (3 * n + 1) - 1

end

end A227863.P7445603307175983195

namespace A227863

/-- `2*A228141(3*n+1)-1` -/
def P7445603307175983195.Spec : Prop :=
  ∀ n, P7445603307175983195.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P15061395203657590883

`A017533(A146763(n))`
-/

namespace A227863.P15061395203657590883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A146763 n).toNat

end

end A227863.P15061395203657590883

namespace A227863

/-- `A017533(A146763(n))` -/
def P15061395203657590883.Spec : Prop :=
  ∀ n, P15061395203657590883.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P3363876648745611910

`A017533(A187715(n+1)-1)`
-/

namespace A227863.P3363876648745611910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A187715 (n + 1) - 1).toNat

end

end A227863.P3363876648745611910

namespace A227863

/-- `A017533(A187715(n+1)-1)` -/
def P3363876648745611910.Spec : Prop :=
  ∀ n, P3363876648745611910.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P17479991750960344704

`A017533(2*A004526(5*n))`
-/

namespace A227863.P17479991750960344704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (2 * A004526 (5 * n)).toNat

end

end A227863.P17479991750960344704

namespace A227863

/-- `A017533(2*A004526(5*n))` -/
def P17479991750960344704.Spec : Prop :=
  ∀ n, P17479991750960344704.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P15788414519877487322

`A017533(A047246(2*n+1)+2*n)`
-/

namespace A227863.P15788414519877487322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A047246 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A227863.P15788414519877487322

namespace A227863

/-- `A017533(A047246(2*n+1)+2*n)` -/
def P15788414519877487322.Spec : Prop :=
  ∀ n, P15788414519877487322.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P12462389492590731449

`24*(A002265(6*n)+n)+1`
-/

namespace A227863.P12462389492590731449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (A002265 (6 * n) + (n : ℤ)) + 1

end

end A227863.P12462389492590731449

namespace A227863

/-- `24*(A002265(6*n)+n)+1` -/
def P12462389492590731449.Spec : Prop :=
  ∀ n, P12462389492590731449.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P2156109736065317396

`A017077(A151972(2*n+1))`
-/

namespace A227863.P2156109736065317396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A151972 (2 * n + 1)).toNat

end

end A227863.P2156109736065317396

namespace A227863

/-- `A017077(A151972(2*n+1))` -/
def P2156109736065317396.Spec : Prop :=
  ∀ n, P2156109736065317396.a n = A227863 (n + 1)

end A227863

/-! ## A227863.P13477178809332702878

`∩[A057538(n+1), A103214(n)]`
-/

namespace A227863.P13477178809332702878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227863.P13477178809332702878

namespace A227863

/-- `∩[A057538(n+1), A103214(n)]` -/
def P13477178809332702878.Spec : Prop :=
  ∀ n, (P13477178809332702878.a n : ℤ) = A227863 (n + 1)

end A227863

/-! ## A227863.P16400450484118615663

`∩[A146510(n+1), A017077(n)]`
-/

namespace A227863.P16400450484118615663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227863.P16400450484118615663

namespace A227863

/-- `∩[A146510(n+1), A017077(n)]` -/
def P16400450484118615663.Spec : Prop :=
  ∀ n, (P16400450484118615663.a n : ℤ) = A227863 (n + 1)

end A227863

/-! ## A227863.P5748454313279484503

`∩[A146510(n+1), A103214(n)]`
-/

namespace A227863.P5748454313279484503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227863.P5748454313279484503

namespace A227863

/-- `∩[A146510(n+1), A103214(n)]` -/
def P5748454313279484503.Spec : Prop :=
  ∀ n, (P5748454313279484503.a n : ℤ) = A227863 (n + 1)

end A227863

/-! ## A227863.P8374605564558739225

`∩[A057538(n+1), A334832(n+1)]`
-/

namespace A227863.P8374605564558739225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227863.P8374605564558739225

namespace A227863

/-- `∩[A057538(n+1), A334832(n+1)]` -/
def P8374605564558739225.Spec : Prop :=
  ∀ n, (P8374605564558739225.a n : ℤ) = A227863 (n + 1)

end A227863

/-!
# A227866: Derived from von Mangoldt matrix sequence.

The programs for A227866, there is no canonical definition to state claims against.
-/

/-! ## A227866.P9181786782862268533

`A214394((n*gcd(2, n))^gcd(n, ∑[n]))`
-/

namespace A227866.P9181786782862268533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 ((n * Nat.gcd 2 n) ^ Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A227866.P9181786782862268533

/-! ## A227866.P14661427449049487615

`A161399(n^A330332(n))`
-/

namespace A227866.P14661427449049487615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161399 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A330332 n : ℤ))).toNat

end

end A227866.P14661427449049487615

/-! ## A227866.P677273069667676101

`A053627(n^A304818(n+1))`
-/

namespace A227866.P677273069667676101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A304818 (n + 1) : ℤ))).toNat

end

end A227866.P677273069667676101

/-!
# A227867: Number of Lipschitz quaternions X such that X^2 == 1 (mod n).

The programs for A227867, there is no canonical definition to state claims against.
-/

/-! ## A227867.P4072124306666274086

`A066907(A000265(n+1))*A146160(n+1)*A000034(n)`
-/

namespace A227867.P4072124306666274086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066907 (A000265 (n + 1)).toNat * A146160 (n + 1) * A000034 n

end

end A227867.P4072124306666274086

/-! ## A227867.P16510292070182912602

`A146160(n+1)/A000034(n)*A066907(A259445(n+1))`
-/

namespace A227867.P16510292070182912602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146160 (n + 1) : ℚ) / (A000034 n : ℚ) * (A066907 (A259445 (n + 1)).toNat : ℚ)

end

end A227867.P16510292070182912602

/-! ## A227867.P11158334107780812143

`A066907(A259445(n+1))/A010673(n)!*A146160(n+1)`
-/

namespace A227867.P11158334107780812143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066907 (A259445 (n + 1)).toNat : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ) * (A146160 (n + 1) : ℚ)

end

end A227867.P11158334107780812143

/-! ## A227867.P4029556616671083586

`A010156(n+1)*A227628(n+1)`
-/

namespace A227867.P4029556616671083586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (n + 1) * A227628 (n + 1)

end

end A227867.P4029556616671083586

/-! ## A227867.P16281331363118307078

`A146160(n+1)*A227628(n+1)`
-/

namespace A227867.P16281331363118307078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146160 (n + 1) * A227628 (n + 1)

end

end A227867.P16281331363118307078

/-!
# A227868: Composite numbers congruent to 7 or 23 (mod 30).

The programs for A227868, there is no canonical definition to state claims against.
-/

/-! ## A227868.P15824717207606972740

`eq[2, A341982(n+2)+A040658(n)]`
-/

namespace A227868.P15824717207606972740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 2) + A040658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227868.P15824717207606972740

/-! ## A227868.P10697780585077432353

`eq[A040658(n), A155212(A341945(n+2))]`
-/

namespace A227868.P10697780585077432353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (A341945 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227868.P10697780585077432353

/-! ## A227868.P6045472964894764945

`∩[A063226(3*n+5), A002808(n+1)]`
-/

namespace A227868.P6045472964894764945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227868.P6045472964894764945

/-! ## A227868.P10698966725786236986

`∩[A063226(3*n+5), A220571(n+1)]`
-/

namespace A227868.P10698966725786236986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227868.P10698966725786236986

/-! ## A227868.P15666320338497914512

`eq[A107279(n), A167528(A312926(n))]`
-/

namespace A227868.P15666320338497914512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167528 (A312926 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227868.P15666320338497914512

/-!
# A227869: Composite numbers congruent to 7 (mod 30).

The programs for A227869, the canonical program `A227869.P7864650989961761614` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227869 has offset 1).

The definition of A227869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227869.P7864650989961761614

`A128471(comp[A158573(n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227869

/-- `A128471(comp[A158573(n+1)])` -/
def P7864650989961761614.Spec : Prop :=
  ∀ n, P7864650989961761614.a n = A227869 (n + 1)

theorem P7864650989961761614.correct : P7864650989961761614.Spec := by
  intro n
  simp only [A227869, Nat.add_sub_cancel]

end A227869

/-! ## A227869.P3098401170899825530

`∩[A227868(n+1), A128471(n)]`
-/

namespace A227869.P3098401170899825530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P3098401170899825530

namespace A227869

/-- `∩[A227868(n+1), A128471(n)]` -/
def P3098401170899825530.Spec : Prop :=
  ∀ n, (P3098401170899825530.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P3740044723960274088

`∩[A227868(n+1), A267985(n+1)]`
-/

namespace A227869.P3740044723960274088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P3740044723960274088

namespace A227869

/-- `∩[A227868(n+1), A267985(n+1)]` -/
def P3740044723960274088.Spec : Prop :=
  ∀ n, (P3740044723960274088.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P5780852307653797256

`∩[A227868(n+1), A358244(n+1)]`
-/

namespace A227869.P5780852307653797256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P5780852307653797256

namespace A227869

/-- `∩[A227868(n+1), A358244(n+1)]` -/
def P5780852307653797256.Spec : Prop :=
  ∀ n, (P5780852307653797256.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P3979600546888153143

`∩[A053180(n+1), A128471(n)]`
-/

namespace A227869.P3979600546888153143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P3979600546888153143

namespace A227869

/-- `∩[A053180(n+1), A128471(n)]` -/
def P3979600546888153143.Spec : Prop :=
  ∀ n, (P3979600546888153143.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P11058476729848097668

`∩[A053180(n+1), A227868(n+1)]`
-/

namespace A227869.P11058476729848097668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P11058476729848097668

namespace A227869

/-- `∩[A053180(n+1), A227868(n+1)]` -/
def P11058476729848097668.Spec : Prop :=
  ∀ n, (P11058476729848097668.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P17720331992858619693

`∩[A053180(n+1), A267985(n+1)]`
-/

namespace A227869.P17720331992858619693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P17720331992858619693

namespace A227869

/-- `∩[A053180(n+1), A267985(n+1)]` -/
def P17720331992858619693.Spec : Prop :=
  ∀ n, (P17720331992858619693.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P5391420841945110976

`∩[A227868(n+1), A229978(n+1)]`
-/

namespace A227869.P5391420841945110976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P5391420841945110976

namespace A227869

/-- `∩[A227868(n+1), A229978(n+1)]` -/
def P5391420841945110976.Spec : Prop :=
  ∀ n, (P5391420841945110976.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P2445340898438312392

`filter[A128471(n), A373977(#)]`
-/

namespace A227869.P2445340898438312392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A227869.P2445340898438312392

namespace A227869

/-- `filter[A128471(n), A373977(#)]` -/
def P2445340898438312392.Spec : Prop :=
  ∀ n, P2445340898438312392.a n = A227869 (n + 1)

end A227869

/-! ## A227869.P7052708025682894860

`filter[A053180(n+1), A373977(#)]`
-/

namespace A227869.P7052708025682894860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A227869.P7052708025682894860

namespace A227869

/-- `filter[A053180(n+1), A373977(#)]` -/
def P7052708025682894860.Spec : Prop :=
  ∀ n, P7052708025682894860.a n = A227869 (n + 1)

end A227869

/-! ## A227869.P16551977304882058038

`filter[A227868(n+1), A373977(#)]`
-/

namespace A227869.P16551977304882058038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A227869.P16551977304882058038

namespace A227869

/-- `filter[A227868(n+1), A373977(#)]` -/
def P16551977304882058038.Spec : Prop :=
  ∀ n, P16551977304882058038.a n = A227869 (n + 1)

end A227869

/-! ## A227869.P15848669025972391867

`∩[A227868(n+1), A017353(n)]`
-/

namespace A227869.P15848669025972391867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P15848669025972391867

namespace A227869

/-- `∩[A227868(n+1), A017353(n)]` -/
def P15848669025972391867.Spec : Prop :=
  ∀ n, (P15848669025972391867.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P4090016142959803397

`∩[A160912(n+1), A227868(n+1)]`
-/

namespace A227869.P4090016142959803397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P4090016142959803397

namespace A227869

/-- `∩[A160912(n+1), A227868(n+1)]` -/
def P4090016142959803397.Spec : Prop :=
  ∀ n, (P4090016142959803397.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P2960173774048665400

`∩[A227868(n+1), A277594(n+1)]`
-/

namespace A227869.P2960173774048665400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P2960173774048665400

namespace A227869

/-- `∩[A227868(n+1), A277594(n+1)]` -/
def P2960173774048665400.Spec : Prop :=
  ∀ n, (P2960173774048665400.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P17990251217201754152

`∩[A091300(n+1), A017353(n)]`
-/

namespace A227869.P17990251217201754152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P17990251217201754152

namespace A227869

/-- `∩[A091300(n+1), A017353(n)]` -/
def P17990251217201754152.Spec : Prop :=
  ∀ n, (P17990251217201754152.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P17312972898307853410

`∩[A091300(n+1), A128471(n)]`
-/

namespace A227869.P17312972898307853410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P17312972898307853410

namespace A227869

/-- `∩[A091300(n+1), A128471(n)]` -/
def P17312972898307853410.Spec : Prop :=
  ∀ n, (P17312972898307853410.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P6155858603959461232

`∩[A053180(n+1), A091300(n+1)]`
-/

namespace A227869.P6155858603959461232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P6155858603959461232

namespace A227869

/-- `∩[A053180(n+1), A091300(n+1)]` -/
def P6155858603959461232.Spec : Prop :=
  ∀ n, (P6155858603959461232.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P11502517708128031884

`∩[A091300(n+1), A227868(n+1)]`
-/

namespace A227869.P11502517708128031884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P11502517708128031884

namespace A227869

/-- `∩[A091300(n+1), A227868(n+1)]` -/
def P11502517708128031884.Spec : Prop :=
  ∀ n, (P11502517708128031884.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P9519904054919595438

`∩[A091300(n+1), A277594(n+1)]`
-/

namespace A227869.P9519904054919595438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P9519904054919595438

namespace A227869

/-- `∩[A091300(n+1), A277594(n+1)]` -/
def P9519904054919595438.Spec : Prop :=
  ∀ n, (P9519904054919595438.a n : ℤ) = A227869 (n + 1)

end A227869

/-! ## A227869.P16367278440690168480

`∩[A091300(n+1), A017245(n)+n]`
-/

namespace A227869.P16367278440690168480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227869.P16367278440690168480

namespace A227869

/-- `∩[A091300(n+1), A017245(n)+n]` -/
def P16367278440690168480.Spec : Prop :=
  ∀ n, (P16367278440690168480.a n : ℤ) = A227869 (n + 1)

end A227869

/-!
# A227870: Numbers with equal number of even and odd digits.

The programs for A227870, there is no canonical definition to state claims against.
-/

/-! ## A227870.P17392869547608045128

`∪[A375213(n+1), A375214(n+1)]`
-/

namespace A227870.P17392869547608045128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227870.P17392869547608045128

/-! ## A227870.P16472177054946891018

`eq[7, A006530(A073053(n))]`
-/

namespace A227870.P16472177054946891018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227870.P16472177054946891018

/-! ## A227870.P17597060092298759238

`eq[A196563(n), A196564(n)]`
-/

namespace A227870.P17597060092298759238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227870.P17597060092298759238

/-! ## A227870.P13199740627000927765

`eq[A073053(n), A392477(n)]`
-/

namespace A227870.P13199740627000927765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392477 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227870.P13199740627000927765

/-! ## A227870.P5976078247504414386

`eq[A171797(n), A392220(n)]`
-/

namespace A227870.P5976078247504414386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227870.P5976078247504414386

/-! ## A227870.P10083675128071343470

`eq[A308003(n), A308005(n)]`
-/

namespace A227870.P10083675128071343470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227870.P10083675128071343470

/-! ## A227870.P15812247568067077098

`eq[2*A196564(n), A055642(n)]`
-/

namespace A227870.P15812247568067077098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227870.P15812247568067077098

/-! ## A227870.P6649482940619090378

`eq[A001221(A308005(n)), A196564(n)]`
-/

namespace A227870.P6649482940619090378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A308005 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227870.P6649482940619090378

/-! ## A227870.P14738282244808243181

`eq[A055642(n)-A196563(n), A196563(n)]`
-/

namespace A227870.P14738282244808243181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227870.P14738282244808243181

/-! ## A227870.P271081518172862763

`eq[n, A355504(n)]`
-/

namespace A227870.P271081518172862763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227870.P271081518172862763

/-!
# A227871: Sum of digits of 14^n.

The programs for A227871, there is no canonical definition to state claims against.
-/

/-! ## A227871.P8220032344403454322

`∑{digits}[14^n, #]`
-/

namespace A227871.P8220032344403454322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A227871.P8220032344403454322

/-! ## A227871.P4424503230206075811

`A000027(∑{digits}[A001023(n), #])`
-/

namespace A227871.P4424503230206075811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A227871.P4424503230206075811

/-! ## A227871.P4210654507823950936

`A028310(∑{digits}[A001023(n), #])`
-/

namespace A227871.P4210654507823950936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A227871.P4210654507823950936

/-! ## A227871.P2535787848191255456

`A186101(∑{digits}[A001023(n), #])`
-/

namespace A227871.P2535787848191255456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A227871.P2535787848191255456

/-! ## A227871.P10370437353035835148

`gcd(∑{digits}[A001023(n), #], A000038(n))`
-/

namespace A227871.P10370437353035835148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000038 n)

end

end A227871.P10370437353035835148

/-!
# A227872: Number of odious divisors (A000069) of n.

The programs for A227872, the canonical program `A227872.P9091759505244018972` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227872 has offset 1).

The definition of A227872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227872.P9091759505244018972

`∑{d}[n+1, A010060(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227872

/-- `∑{d}[n+1, A010060(#)]` -/
def P9091759505244018972.Spec : Prop :=
  ∀ n, P9091759505244018972.a n = A227872 (n + 1)

theorem P9091759505244018972.correct : P9091759505244018972.Spec := by
  intro n
  simp only [A227872, Nat.add_sub_cancel]

end A227872

/-! ## A227872.P1077642243372068598

`∑{d}[n+1, A001285(#)-1]`
-/

namespace A227872.P1077642243372068598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001285 d - 1)

end

end A227872.P1077642243372068598

namespace A227872

/-- `∑{d}[n+1, A001285(#)-1]` -/
def P1077642243372068598.Spec : Prop :=
  ∀ n, P1077642243372068598.a n = A227872 (n + 1)

end A227872

/-! ## A227872.P6895449956032067206

`∑{d}[n+1, A000120(#)%2]`
-/

namespace A227872.P6895449956032067206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000120 d) 2

end

end A227872.P6895449956032067206

namespace A227872

/-- `∑{d}[n+1, A000120(#)%2]` -/
def P6895449956032067206.Spec : Prop :=
  ∀ n, P6895449956032067206.a n = A227872 (n + 1)

end A227872

/-! ## A227872.P10393112180103127669

`∑{d}[n+1, A005187(#)%2]`
-/

namespace A227872.P10393112180103127669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A005187 d) 2

end

end A227872.P10393112180103127669

namespace A227872

/-- `∑{d}[n+1, A005187(#)%2]` -/
def P10393112180103127669.Spec : Prop :=
  ∀ n, P10393112180103127669.a n = A227872 (n + 1)

end A227872

/-! ## A227872.P1669483537965672187

`A290090(n+1)+A010060(n+1)`
-/

namespace A227872.P1669483537965672187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290090 (n + 1) + A010060 (n + 1)

end

end A227872.P1669483537965672187

namespace A227872

/-- `A290090(n+1)+A010060(n+1)` -/
def P1669483537965672187.Spec : Prop :=
  ∀ n, P1669483537965672187.a n = A227872 (n + 1)

end A227872

/-! ## A227872.P11551367121763581947

`A357761(n+1)+A356018(n+1)`
-/

namespace A227872.P11551367121763581947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357761 (n + 1) + A356018 (n + 1)

end

end A227872.P11551367121763581947

namespace A227872

/-- `A357761(n+1)+A356018(n+1)` -/
def P11551367121763581947.Spec : Prop :=
  ∀ n, P11551367121763581947.a n = A227872 (n + 1)

end A227872

/-! ## A227872.P11754428697472791385

`A000005(n+1)-A356018(n+1)`
-/

namespace A227872.P11754428697472791385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A356018 (n + 1)

end

end A227872.P11754428697472791385

namespace A227872

/-- `A000005(n+1)-A356018(n+1)` -/
def P11754428697472791385.Spec : Prop :=
  ∀ n, P11754428697472791385.a n = A227872 (n + 1)

end A227872

/-! ## A227872.P994421061550402885

`∑{d}[n+1, A001511(#)*A228495((n+1)/#)]`
-/

namespace A227872.P994421061550402885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A228495 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A227872.P994421061550402885

namespace A227872

/-- `∑{d}[n+1, A001511(#)*A228495((n+1)/#)]` -/
def P994421061550402885.Spec : Prop :=
  ∀ n, P994421061550402885.a n = A227872 (n + 1)

end A227872

/-! ## A227872.P15849676232492994218

`A087990(n+1)+A087991(n+1)-A356018(n+1)`
-/

namespace A227872.P15849676232492994218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A356018 (n + 1))

end

end A227872.P15849676232492994218

namespace A227872

/-- `A087990(n+1)+A087991(n+1)-A356018(n+1)` -/
def P15849676232492994218.Spec : Prop :=
  ∀ n, P15849676232492994218.a n = A227872 (n + 1)

end A227872

/-! ## A227872.P16616299782181800194

`A290090(n+1)+A000035(A193231(n+1))`
-/

namespace A227872.P16616299782181800194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290090 (n + 1) + A000035 (A193231 (n + 1)).toNat

end

end A227872.P16616299782181800194

namespace A227872

/-- `A290090(n+1)+A000035(A193231(n+1))` -/
def P16616299782181800194.Spec : Prop :=
  ∀ n, P16616299782181800194.a n = A227872 (n + 1)

end A227872

/-!
# A227873: Sum of odious divisors of n. See A000069 for odious numbers.

The programs for A227873, the canonical program `A227873.P5669908514505112701` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227873 has offset 1).

The definition of A227873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227873.P5669908514505112701

`∑{d}[n+1, #*A010060(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227873

/-- `∑{d}[n+1, #*A010060(#)]` -/
def P5669908514505112701.Spec : Prop :=
  ∀ n, P5669908514505112701.a n = A227873 (n + 1)

theorem P5669908514505112701.correct : P5669908514505112701.Spec := by
  intro n
  simp only [A227873, Nat.add_sub_cancel]

end A227873

/-! ## A227873.P10996753296117091366

`∑{d}[n+1, #*(A001285(#)-1)]`
-/

namespace A227873.P10996753296117091366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A001285 d - 1)

end

end A227873.P10996753296117091366

namespace A227873

/-- `∑{d}[n+1, #*(A001285(#)-1)]` -/
def P10996753296117091366.Spec : Prop :=
  ∀ n, P10996753296117091366.a n = A227873 (n + 1)

end A227873

/-! ## A227873.P12198845941730791565

`∑{d}[n+1, #*A000120(#)%2]`
-/

namespace A227873.P12198845941730791565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A000120 d) 2

end

end A227873.P12198845941730791565

namespace A227873

/-- `∑{d}[n+1, #*A000120(#)%2]` -/
def P12198845941730791565.Spec : Prop :=
  ∀ n, P12198845941730791565.a n = A227873 (n + 1)

end A227873

/-! ## A227873.P10018686015610399594

`A000203(n+1)-A260934(n+1)`
-/

namespace A227873.P10018686015610399594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A260934 (n + 1)

end

end A227873.P10018686015610399594

namespace A227873

/-- `A000203(n+1)-A260934(n+1)` -/
def P10018686015610399594.Spec : Prop :=
  ∀ n, P10018686015610399594.a n = A227873 (n + 1)

end A227873

/-! ## A227873.P3410460234799286399

`∑{d}[n+1, A102392(#)]`
-/

namespace A227873.P3410460234799286399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102392 d

end

end A227873.P3410460234799286399

namespace A227873

/-- `∑{d}[n+1, A102392(#)]` -/
def P3410460234799286399.Spec : Prop :=
  ∀ n, P3410460234799286399.a n = A227873 (n + 1)

end A227873

/-!
# A227874: Numbers n such that tau(n+1) - tau(n) = -2, where tau(n) = the number of divisors of n (A000005).

The programs for A227874, the canonical program `A227874.P3056215725130656370` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227874 has offset 1).

The definition of A227874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227874.P3056215725130656370

`eq[A000005(n+2)+2, A000005(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227874

/-- `eq[A000005(n+2)+2, A000005(n+1)]+1` -/
def P3056215725130656370.Spec : Prop :=
  ∀ n, (P3056215725130656370.a n : ℤ) = A227874 (n + 1)

theorem P3056215725130656370.correct : P3056215725130656370.Spec := by
  intro n
  simp only [A227874, Nat.add_sub_cancel]

end A227874

/-! ## A227874.P15012493225240643094

`∩[A074827(n+1), A162318(n+1)]`
-/

namespace A227874.P15012493225240643094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227874.P15012493225240643094

namespace A227874

/-- `∩[A074827(n+1), A162318(n+1)]` -/
def P15012493225240643094.Spec : Prop :=
  ∀ n, (P15012493225240643094.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P9423425352371930027

`eq[2, -A341062(n+1)]`
-/

namespace A227874.P9423425352371930027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227874.P9423425352371930027

namespace A227874

/-- `eq[2, -A341062(n+1)]` -/
def P9423425352371930027.Spec : Prop :=
  ∀ n, (P9423425352371930027.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P12289302555275005602

`eq[A032741(n), A212356(n+1)]`
-/

namespace A227874.P12289302555275005602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P12289302555275005602

namespace A227874

/-- `eq[A032741(n), A212356(n+1)]` -/
def P12289302555275005602.Spec : Prop :=
  ∀ n, (P12289302555275005602.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P5850146161619293212

`eq[A032741(n), A334954(n+1)]`
-/

namespace A227874.P5850146161619293212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P5850146161619293212

namespace A227874

/-- `eq[A032741(n), A334954(n+1)]` -/
def P5850146161619293212.Spec : Prop :=
  ∀ n, (P5850146161619293212.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P2163106699540126001

`eq[A325765(n)+2, A032741(n)]`
-/

namespace A227874.P2163106699540126001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P2163106699540126001

namespace A227874

/-- `eq[A325765(n)+2, A032741(n)]` -/
def P2163106699540126001.Spec : Prop :=
  ∀ n, (P2163106699540126001.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P4317426979871555952

`eq[A000005(n+1)+1, A032741(n)]`
-/

namespace A227874.P4317426979871555952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P4317426979871555952

namespace A227874

/-- `eq[A000005(n+1)+1, A032741(n)]` -/
def P4317426979871555952.Spec : Prop :=
  ∀ n, (P4317426979871555952.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P4145566942309139644

`eq[A032741(n+1)+2, A032741(n)]`
-/

namespace A227874.P4145566942309139644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P4145566942309139644

namespace A227874

/-- `eq[A032741(n+1)+2, A032741(n)]` -/
def P4145566942309139644.Spec : Prop :=
  ∀ n, (P4145566942309139644.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P3922585602998609576

`eq[A062011(n+1)+2, A319410(n)]`
-/

namespace A227874.P3922585602998609576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P3922585602998609576

namespace A227874

/-- `eq[A062011(n+1)+2, A319410(n)]` -/
def P3922585602998609576.Spec : Prop :=
  ∀ n, (P3922585602998609576.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P2893777860008572192

`eq[A051950(n+2)+2, A051951(n)]`
-/

namespace A227874.P2893777860008572192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P2893777860008572192

namespace A227874

/-- `eq[A051950(n+2)+2, A051951(n)]` -/
def P2893777860008572192.Spec : Prop :=
  ∀ n, (P2893777860008572192.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P11344126889123611693

`eq[2*A334954(n+1), A319410(n)]`
-/

namespace A227874.P11344126889123611693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P11344126889123611693

namespace A227874

/-- `eq[2*A334954(n+1), A319410(n)]` -/
def P11344126889123611693.Spec : Prop :=
  ∀ n, (P11344126889123611693.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P329102341487992487

`eq[A000005(n+1), A023443(A032741(n))]`
-/

namespace A227874.P329102341487992487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P329102341487992487

namespace A227874

/-- `eq[A000005(n+1), A023443(A032741(n))]` -/
def P329102341487992487.Spec : Prop :=
  ∀ n, (P329102341487992487.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P13838904249105695363

`eq[A000005(n+1), A070824(A028310(n))]`
-/

namespace A227874.P13838904249105695363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P13838904249105695363

namespace A227874

/-- `eq[A000005(n+1), A070824(A028310(n))]` -/
def P13838904249105695363.Spec : Prop :=
  ∀ n, (P13838904249105695363.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P5789564761963380939

`eq[A004277(A334954(n+1)), A319410(n)]`
-/

namespace A227874.P5789564761963380939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A334954 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P5789564761963380939

namespace A227874

/-- `eq[A004277(A334954(n+1)), A319410(n)]` -/
def P5789564761963380939.Spec : Prop :=
  ∀ n, (P5789564761963380939.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P13710097181890625488

`eq[A000005(n+1)+2, A000005(A055456(n+1))]`
-/

namespace A227874.P13710097181890625488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P13710097181890625488

namespace A227874

/-- `eq[A000005(n+1)+2, A000005(A055456(n+1))]` -/
def P13710097181890625488.Spec : Prop :=
  ∀ n, (P13710097181890625488.a n : ℤ) = A227874 (n + 1)

end A227874

/-! ## A227874.P11151342742039140682

`eq[A000005(n+1)+2, A000005(A060000(n+1))]`
-/

namespace A227874.P11151342742039140682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227874.P11151342742039140682

namespace A227874

/-- `eq[A000005(n+1)+2, A000005(A060000(n+1))]` -/
def P11151342742039140682.Spec : Prop :=
  ∀ n, (P11151342742039140682.a n : ℤ) = A227874 (n + 1)

end A227874

/-!
# A227876: Write the decimal digits of n and take successive absolute differences; sequence is the sum of all digits at each level of the pyramid.

The programs for A227876, there is no canonical definition to state claims against.
-/

/-! ## A227876.P3803123487177317132

`∑{digits}[A240237(n), #]`
-/

namespace A227876.P3803123487177317132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A227876.P3803123487177317132

/-! ## A227876.P8979193918687383732

`A007953(A240237(n))`
-/

namespace A227876.P8979193918687383732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A240237 n).toNat

end

end A227876.P8979193918687383732

/-! ## A227876.P7955144471764485968

`∑{digits}[n, #]+A151950(n)%A058331(n²)`
-/

namespace A227876.P7955144471764485968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + Int.tmod (A151950 n) (A058331 (n ^ 2))

end

end A227876.P7955144471764485968

/-! ## A227876.P4445381260114822435

`A064834(A000196(n²+1))+val(∏{digits}[n, 2^#], 2)`
-/

namespace A227876.P4445381260114822435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A000196 (n ^ 2 + 1)).toNat + (SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2 : ℤ)

end

end A227876.P4445381260114822435

/-! ## A227876.P5362950656620599977

`A347689(A118759(n))+A007953(n)`
-/

namespace A227876.P5362950656620599977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A118759 n).toNat + A007953 n

end

end A227876.P5362950656620599977

/-! ## A227876.P6454396959954330573

`A054055(A056142(n))*A055642(n)`
-/

namespace A227876.P6454396959954330573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A056142 n).toNat * A055642 n

end

end A227876.P6454396959954330573

/-! ## A227876.P1580405819052471752

`A037904(A000007(n²)+n)+A007953(n)`
-/

namespace A227876.P1580405819052471752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A000007 (n ^ 2) + (n : ℤ)).toNat + A007953 n

end

end A227876.P1580405819052471752

/-! ## A227876.P17185186481386920454

`A007953(n)+A064834(n)%A085089(A033081(n+1))`
-/

namespace A227876.P17185186481386920454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + Int.tmod (A064834 n) (A085089 (A033081 (n + 1)).toNat)

end

end A227876.P17185186481386920454

/-! ## A227876.P13701501786606424890

`A007953(n)+A064834(n)%A106245(n+5)`
-/

namespace A227876.P13701501786606424890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + Int.tmod (A064834 n) (A106245 (n + 5))

end

end A227876.P13701501786606424890

/-!
# A227878: Primes occurring twice in A051701.

The programs for A227878, there is no canonical definition to state claims against.
-/

/-! ## A227878.P6250883137994259249

`record[gcd(A051701(n+1), A051701(n+3))]`
-/

namespace A227878.P6250883137994259249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051701 (n + 1)) (A051701 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227878.P6250883137994259249

/-! ## A227878.P17129012223254742135

`A051701(eq[A051701(n+3), A051701(n+1)]+1)`
-/

namespace A227878.P17129012223254742135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A227878.P17129012223254742135

/-! ## A227878.P15878389055844500506

`p?[A124114(2*n+5)%A124092(n)]`
-/

namespace A227878.P15878389055844500506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124114 (2 * n + 5)) (A124092 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227878.P15878389055844500506

/-!
# A227880: Primes in the union of all n-Fibonacci sequences.

The programs for A227880, there is no canonical definition to state claims against.
-/

/-! ## A227880.P6237509036736394212

`p?[A124168(n+1)]`
-/

namespace A227880.P6237509036736394212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227880.P6237509036736394212

/-! ## A227880.P17057869661126792759

`p?[record[A124168(A133310(n))]]`
-/

namespace A227880.P17057869661126792759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124168 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227880.P17057869661126792759

/-! ## A227880.P1563824551290834318

`p?[record[A124168(A152271(n))]]`
-/

namespace A227880.P1563824551290834318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124168 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227880.P1563824551290834318

/-! ## A227880.P6460981187437566382

`p?[record[A124168(A246694(n))]]`
-/

namespace A227880.P6460981187437566382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124168 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227880.P6460981187437566382

/-! ## A227880.P3376158568310782306

`p?[record[A124168(A291769(n))]]`
-/

namespace A227880.P3376158568310782306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124168 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227880.P3376158568310782306

/-!
# A227881: Sum of digits of 17^n.

The programs for A227881, there is no canonical definition to state claims against.
-/

/-! ## A227881.P6079069830036382495

`∑{digits}[17^n, #]`
-/

namespace A227881.P6079069830036382495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A227881.P6079069830036382495

/-! ## A227881.P15136380422302345304

`∑{digits}[A001026(n), #]+lcm(3, n)%3`
-/

namespace A227881.P15136380422302345304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + Nat.lcm 3 n % 3

end

end A227881.P15136380422302345304

/-! ## A227881.P6815150696912980260

`A000027(∑{digits}[A001026(n), #])`
-/

namespace A227881.P6815150696912980260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A227881.P6815150696912980260

/-! ## A227881.P8059807944742786844

`A028310(∑{digits}[A001026(n), #])`
-/

namespace A227881.P8059807944742786844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A227881.P8059807944742786844

/-! ## A227881.P15881256274535566124

`or(∑{digits}[A001026(n), #], A000007(n))`
-/

namespace A227881.P15881256274535566124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000007 n)

end

end A227881.P15881256274535566124

/-! ## A227881.P609863679509906536

`∑{digits}[A001026(n), #]%∑[A016897(n)]`
-/

namespace A227881.P609863679509906536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A227881.P609863679509906536

/-! ## A227881.P4592062292286911045

`A014963(xor(42, n)+n)*∑{digits}[A001026(n), #]`
-/

namespace A227881.P4592062292286911045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.xor 42 n + n) * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A227881.P4592062292286911045

/-! ## A227881.P18091676632422466916

`A014963(∑[4*n+1])*∑{digits}[A001026(n), #]`
-/

namespace A227881.P18091676632422466916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A227881.P18091676632422466916

/-!
# A227883: Number of permutations of [n] with exactly one occurrence of the consecutive step pattern up, down, up.

The programs for A227883, there is no canonical definition to state claims against.
-/

/-! ## A227883.P10940569037415955733

`A316491(A150932(n))`
-/

namespace A227883.P10940569037415955733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316491 (A150932 n).toNat

end

end A227883.P10940569037415955733

/-! ## A227883.P3447500011632869501

`A339376(A082268(n+1))*A349464(n)`
-/

namespace A227883.P3447500011632869501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339376 (A082268 (n + 1)).toNat * A349464 n

end

end A227883.P3447500011632869501

/-!
# A227885: Primes in the union of all n-step Lucas sequences.

The programs for A227885, there is no canonical definition to state claims against.
-/

/-! ## A227885.P3113275369751864454

`p?[floor(A127208(n+1)+acot(n))]`
-/

namespace A227885.P3113275369751864454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127208 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227885.P3113275369751864454

/-! ## A227885.P7394098983202709712

`p?[A127208(n+1)+A000007(n)]`
-/

namespace A227885.P7394098983202709712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127208 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227885.P7394098983202709712

/-! ## A227885.P2735061381957972055

`p?[A054977(n)*A127208(n+1)]`
-/

namespace A227885.P2735061381957972055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A127208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227885.P2735061381957972055

/-! ## A227885.P12854646708634392857

`p?[A000038(n)!*A127208(n+1)]`
-/

namespace A227885.P12854646708634392857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A127208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227885.P12854646708634392857

/-! ## A227885.P18010819117773552362

`p?[A127208(n+1)+A008683(A008574(n))]`
-/

namespace A227885.P18010819117773552362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127208 (n + 1) + A008683 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227885.P18010819117773552362

/-!
# A227887: O.g.f.: 1/(1 - x/(1 - 2^4*x/(1 - 3^4*x/(1 - 4^4*x/(1 - 5^4*x/(1 - 6^4*x/(1 -...))))))), a continued fraction.

The programs for A227887, there is no canonical definition to state claims against.
-/

/-! ## A227887.P846819146564905174

`A371997(∑[n]+n)`
-/

namespace A227887.P846819146564905174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371997 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A227887.P846819146564905174

/-! ## A227887.P1128205167268719862

`A290569(∑[n+5]+5)`
-/

namespace A227887.P1128205167268719862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290569 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A227887.P1128205167268719862

/-!
# A227888: Smallest odd k such that k*2^n-1, k*2^n-1+2*j, k*2^n-1+4*j or k*2^n-1-2*j, k*2^n-1, k*2^n-1+2*j are consecutive primes in arithmetic progression for some j.

The programs for A227888, there is no canonical definition to state claims against.
-/

/-! ## A227888.P14980013385127193976

`A348008(A350948(∑[floor(n/2)!]))`
-/

namespace A227888.P14980013385127193976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348008 (A350948 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A227888.P14980013385127193976

/-!
# A227890: Primes of the form prime(k)^2 - k.

The programs for A227890, there is no canonical definition to state claims against.
-/

/-! ## A227890.P4678308055413429216

`A182174(A064713(n+1))`
-/

namespace A227890.P4678308055413429216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (A064713 (n + 1)).toNat

end

end A227890.P4678308055413429216

/-! ## A227890.P667337784191212436

`p?[A182174(n+1)]`
-/

namespace A227890.P667337784191212436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227890.P667337784191212436

/-! ## A227890.P13637985628604026635

`p?[A084920(n+1)-n]`
-/

namespace A227890.P13637985628604026635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227890.P13637985628604026635

/-! ## A227890.P15631012960793810089

`p?[A280076(n+1)-n]`
-/

namespace A227890.P15631012960793810089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227890.P15631012960793810089

/-! ## A227890.P8936667005981616065

`p?[A008578(n+1)²-n]`
-/

namespace A227890.P8936667005981616065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227890.P8936667005981616065

/-!
# A227891: Numbers for which the number of odious proper divisors (A000069) equals the number of evil proper divisors (A001969).

The programs for A227891, there is no canonical definition to state claims against.
-/

/-! ## A227891.P8631346583182263109

`lt[A217354(n+1), A327859(3*n+1)]²`
-/

namespace A227891.P8631346583182263109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A227891.P8631346583182263109

/-! ## A227891.P4159917498266954653

`∑[gcd(n^4+n, A277748(n+1))]²`
-/

namespace A227891.P4159917498266954653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 4 + n : ℤ) (A277748 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A227891.P4159917498266954653

/-! ## A227891.P3862019077434971414

`∑[A060438(A166590(n+1))]²`
-/

namespace A227891.P3862019077434971414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060438 (A166590 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A227891.P3862019077434971414

/-!
# A227895: Integer areas of integer-sided triangles where at least one median is of prime length.

The programs for A227895, there is no canonical definition to state claims against.
-/

/-! ## A227895.P12157860018183014203

`∩[A144761(n+1), A336772(n+1)]`
-/

namespace A227895.P12157860018183014203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227895.P12157860018183014203

/-! ## A227895.P5821399246803300651

`∩[A026500(n+1), A181924(n+1)]`
-/

namespace A227895.P5821399246803300651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227895.P5821399246803300651

/-!
# A227896: 32-beat repeating palindromic sequence: digital roots of Fibonacci numbers indexed by the set of natural numbers not divisible by 2, 3 or 5 (A007775).

The programs for A227896, the canonical program `A227896.P1502342098669639840` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227896 has offset 1).

The definition of A227896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227896.P1502342098669639840

`A007887(A007775(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227896

/-- `A007887(A007775(n+1))` -/
def P1502342098669639840.Spec : Prop :=
  ∀ n, P1502342098669639840.a n = A227896 (n + 1)

theorem P1502342098669639840.correct : P1502342098669639840.Spec := by
  intro n
  simp only [A227896, Nat.add_sub_cancel]

end A227896

/-!
# A227897: Numbers k such that k^2 + 2 is not squarefree.

The programs for A227897, the canonical program `A227897.P1547566676741746970` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227897 has offset 1).

The definition of A227897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227897.P1547566676741746970

`lt[1, ∏{e}[n²+2, #]]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227897

/-- `lt[1, ∏{e}[n²+2, #]]` -/
def P1547566676741746970.Spec : Prop :=
  ∀ n, (P1547566676741746970.a n : ℤ) = A227897 (n + 1)

theorem P1547566676741746970.correct : P1547566676741746970.Spec := by
  intro n
  simp only [A227897, Nat.add_sub_cancel]

end A227897

/-! ## A227897.P14671385181759950037

`eq[0, A008683(n²+2)]`
-/

namespace A227897.P14671385181759950037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227897.P14671385181759950037

namespace A227897

/-- `eq[0, A008683(n²+2)]` -/
def P14671385181759950037.Spec : Prop :=
  ∀ n, (P14671385181759950037.a n : ℤ) = A227897 (n + 1)

end A227897

/-! ## A227897.P10721418648760174120

`eq[0, A008966(n²+2)]`
-/

namespace A227897.P10721418648760174120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227897.P10721418648760174120

namespace A227897

/-- `eq[0, A008966(n²+2)]` -/
def P10721418648760174120.Spec : Prop :=
  ∀ n, (P10721418648760174120.a n : ℤ) = A227897 (n + 1)

end A227897

/-! ## A227897.P9229040199526418908

`lt[1, A008833(n²+2)]`
-/

namespace A227897.P9229040199526418908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227897.P9229040199526418908

namespace A227897

/-- `lt[1, A008833(n²+2)]` -/
def P9229040199526418908.Spec : Prop :=
  ∀ n, (P9229040199526418908.a n : ℤ) = A227897 (n + 1)

end A227897

/-! ## A227897.P9976532917922222990

`lt[1, A051903(n²+2)]`
-/

namespace A227897.P9976532917922222990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227897.P9976532917922222990

namespace A227897

/-- `lt[1, A051903(n²+2)]` -/
def P9976532917922222990.Spec : Prop :=
  ∀ n, (P9976532917922222990.a n : ℤ) = A227897 (n + 1)

end A227897

/-! ## A227897.P4841316535538393604

`eq[0, abs(A008683(or(2, n²)))]`
-/

namespace A227897.P4841316535538393604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (Nat.lor 2 (n ^ 2))|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227897.P4841316535538393604

namespace A227897

/-- `eq[0, abs(A008683(or(2, n²)))]` -/
def P4841316535538393604.Spec : Prop :=
  ∀ n, (P4841316535538393604.a n : ℤ) = A227897 (n + 1)

end A227897

/-! ## A227897.P4664105467126070379

`lt[A008683(xor(2, n²))², 1]`
-/

namespace A227897.P4664105467126070379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.xor 2 (n ^ 2)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227897.P4664105467126070379

namespace A227897

/-- `lt[A008683(xor(2, n²))², 1]` -/
def P4664105467126070379.Spec : Prop :=
  ∀ n, (P4664105467126070379.a n : ℤ) = A227897 (n + 1)

end A227897

/-! ## A227897.P13301142212410459246

`lt[A008683(n^(4/2)+2)², 1]`
-/

namespace A227897.P13301142212410459246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((4 : ℚ) / 2 : ℝ) + 2)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227897.P13301142212410459246

namespace A227897

/-- `lt[A008683(n^(4/2)+2)², 1]` -/
def P13301142212410459246.Spec : Prop :=
  ∀ n, (P13301142212410459246.a n : ℤ) = A227897 (n + 1)

end A227897

/-! ## A227897.P8827729897794760116

`eq[0, -A008683(ceil(n/acot(n))+1)]`
-/

namespace A227897.P8827729897794760116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227897.P8827729897794760116

namespace A227897

/-- `eq[0, -A008683(ceil(n/acot(n))+1)]` -/
def P8827729897794760116.Spec : Prop :=
  ∀ n, (P8827729897794760116.a n : ℤ) = A227897 (n + 1)

end A227897

/-! ## A227897.P12649813749430701668

`eq[0, A008683(∑[2*n]-(n-2))²]`
-/

namespace A227897.P12649813749430701668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227897.P12649813749430701668

namespace A227897

/-- `eq[0, A008683(∑[2*n]-(n-2))²]` -/
def P12649813749430701668.Spec : Prop :=
  ∀ n, (P12649813749430701668.a n : ℤ) = A227897 (n + 1)

end A227897

/-!
# A227899: Number of primes p < n with 3*p - 4 and n^2 + (n - p)^2 both prime.

The programs for A227899, there is no canonical definition to state claims against.
-/

/-! ## A227899.P18377759198065141723

`A124766(∑[A004396(n)-A124766(n)])`
-/

namespace A227899.P18377759198065141723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n - A124766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227899.P18377759198065141723

/-! ## A227899.P8156804456851634051

`A001221(A232406(3*n+4))-1`
-/

namespace A227899.P8156804456851634051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A232406 (3 * n + 4)).toNat - 1

end

end A227899.P8156804456851634051

/-! ## A227899.P14313926917244515525

`∑{p}[A232406(3*n+4), A024361(#)]`
-/

namespace A227899.P14313926917244515525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A024361 p

end

end A227899.P14313926917244515525

/-! ## A227899.P10825154891292118375

`A140361(A140361(n+1)+A140356(3*(n+1)))`
-/

namespace A227899.P10825154891292118375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (A140361 (n + 1) + A140356 (3 * (n + 1))).toNat

end

end A227899.P10825154891292118375

/-! ## A227899.P14903302079395504089

`A057428(n+1)+A001221(A232406(3*n+4))`
-/

namespace A227899.P14903302079395504089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A001221 (A232406 (3 * n + 4)).toNat

end

end A227899.P14903302079395504089

