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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A350304: Maximum number of 1's in an n X n binary matrix without an all-ones 3 X 3 submatrix.

The programs for A350304, there is no canonical definition to state claims against.
-/

/-! ## A350304.P12562121089875848857

`(n+1)²-A350237(n+1)`
-/

namespace A350304.P12562121089875848857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A350237 (n + 1)

end

end A350304.P12562121089875848857

/-! ## A350304.P1302521628099494488

`A005563(n)+1-A350237(n+1)`
-/

namespace A350304.P1302521628099494488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A350237 (n + 1))

end

end A350304.P1302521628099494488

/-! ## A350304.P16667482292518735754

`abs(A350237(n+1)-Δ[A000330(n)])`
-/

namespace A350304.P16667482292518735754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A350237 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A350304.P16667482292518735754

/-! ## A350304.P17676608860970614830

`A002378(n)+n+1-A350237(n+1)`
-/

namespace A350304.P17676608860970614830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + ((n + 1 : ℤ) - A350237 (n + 1))

end

end A350304.P17676608860970614830

/-! ## A350304.P9834424609026508272

`(n+1)^2-A000045(A014963(2*(n+1)))*A350237(n+1)`
-/

namespace A350304.P9834424609026508272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000045 (A014963 (2 * (n + 1))).toNat * A350237 (n + 1)

end

end A350304.P9834424609026508272

/-!
# A350306: a(n) is the constant term in the expansion of Product_{k=1..n} (x^k + 1 + 1/x^k)^k.

The programs for A350306, there is no canonical definition to state claims against.
-/

/-! ## A350306.P3915484733976837222

`A058838(A076876(∑[n]))`
-/

namespace A350306.P3915484733976837222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (A076876 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A350306.P3915484733976837222

/-!
# A350309: a(n) = (n+2)*a(n-1) + (n+1)*(A003422(n) - 4)/6 for n > 0 with a(0) = 1.

The programs for A350309, the canonical program `A350309.P511503102631748073` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350309 has offset 0).

The definition of A350309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350309.P511503102631748073

`(n+2)*a(n-1)+(n+1)*(A003422(n)-4)/6` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350309

/-- `(n+2)*a(n-1)+(n+1)*(A003422(n)-4)/6` -/
def P511503102631748073.Spec : Prop :=
  ∀ n, P511503102631748073.a n = (A350309 n : ℚ)

end A350309

/-! ## A350309.P1149712560439211031

`A006157(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A350309.P1149712560439211031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006157 (n + 1) + a (n - 1)

end

end A350309.P1149712560439211031

namespace A350309

/-- `A006157(n+1)+a(n-1)` -/
def P1149712560439211031.Spec : Prop :=
  ∀ n, P1149712560439211031.a n = A350309 n

end A350309

/-! ## A350309.P14194689849851081888

`∑[A006157(A233583(n+2))]`
-/

namespace A350309.P14194689849851081888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006157 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350309.P14194689849851081888

namespace A350309

/-- `∑[A006157(A233583(n+2))]` -/
def P14194689849851081888.Spec : Prop :=
  ∀ n, P14194689849851081888.a n = A350309 n

end A350309

/-! ## A350309.P12463378573616229129

`A014288(n+1)+A056199(n+2)-A007489(n+1)`
-/

namespace A350309.P12463378573616229129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 (n + 1) + (A056199 (n + 2) - A007489 (n + 1))

end

end A350309.P12463378573616229129

namespace A350309

/-- `A014288(n+1)+A056199(n+2)-A007489(n+1)` -/
def P12463378573616229129.Spec : Prop :=
  ∀ n, P12463378573616229129.a n = A350309 n

end A350309

/-! ## A350309.P17712297186918689942

`∑[A104035(A055998(n))]`
-/

namespace A350309.P17712297186918689942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350309.P17712297186918689942

namespace A350309

/-- `∑[A104035(A055998(n))]` -/
def P17712297186918689942.Spec : Prop :=
  ∀ n, P17712297186918689942.a n = A350309 n

end A350309

/-! ## A350309.P16338328562258525732

`∑[A104035(A000096(n)+n)]`
-/

namespace A350309.P16338328562258525732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (A000096 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350309.P16338328562258525732

namespace A350309

/-- `∑[A104035(A000096(n)+n)]` -/
def P16338328562258525732.Spec : Prop :=
  ∀ n, P16338328562258525732.a n = A350309 n

end A350309

/-! ## A350309.P9808273867355990584

`∑[A104035(A034856(n+1)-1)]`
-/

namespace A350309.P9808273867355990584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (A034856 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350309.P9808273867355990584

namespace A350309

/-- `∑[A104035(A034856(n+1)-1)]` -/
def P9808273867355990584.Spec : Prop :=
  ∀ n, P9808273867355990584.a n = A350309 n

end A350309

/-!
# A350311: Replace 2^k in the binary expansion of n with A000930(k+2), Narayana's cows sequence.

The programs for A350311, there is no canonical definition to state claims against.
-/

/-! ## A350311.P1422597852427119626

`A324966(A290686(n))+A029931(n)`
-/

namespace A350311.P1422597852427119626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A290686 n).toNat + A029931 n

end

end A350311.P1422597852427119626

/-! ## A350311.P13101349065531206105

`A071625(A260897(2*n+3))+A029931(n)`
-/

namespace A350311.P13101349065531206105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A260897 (2 * n + 3)).toNat + A029931 n

end

end A350311.P13101349065531206105

/-! ## A350311.P8689666663538202322

`A029931(n)+∑[A332671(3*n+2)]`
-/

namespace A350311.P8689666663538202322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350311.P8689666663538202322

/-! ## A350311.P2059989952242986058

`A073642(2*n+1)+∑[A335453(3*n+2)]`
-/

namespace A350311.P2059989952242986058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350311.P2059989952242986058

/-! ## A350311.P18305936385813138382

`∑[A335453(3*n+2)]+A393336(n)+A359400(n)`
-/

namespace A350311.P18305936385813138382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A393336 n + A359400 n)

end

end A350311.P18305936385813138382

/-!
# A350312: Narayana weighted representation of n (the bottom version). Also binary representation of numbers not containing 00 or 010 as a substring.

The programs for A350312, there is no canonical definition to state claims against.
-/

/-! ## A350312.P8127791721287107783

`A007088(eq[0, A342700(2*n+1)])`
-/

namespace A350312.P8127791721287107783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342700 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350312.P8127791721287107783

/-! ## A350312.P6842140591523347152

`A007088(∩[A003754(n+1), A004746(n+1)])`
-/

namespace A350312.P6842140591523347152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004746 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A350312.P6842140591523347152

/-! ## A350312.P11598733647079562666

`A007088(lt[A000378(n+1), A323642(n+1)])`
-/

namespace A350312.P11598733647079562666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350312.P11598733647079562666

/-! ## A350312.P10141971803611498570

`A007088(lt[A328594(n+1), A151710(n+1)])`
-/

namespace A350312.P10141971803611498570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350312.P10141971803611498570

/-! ## A350312.P5573070211867503421

`A205598(lt[A048735(n), A130556(2*n+5)])`
-/

namespace A350312.P5573070211867503421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130556 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205598 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350312.P5573070211867503421

/-!
# A350314: The catch-up points of the Redstone permutation A350313.

The programs for A350314, there is no canonical definition to state claims against.
-/

/-! ## A350314.P14114544733812476334

`∑[A350315(n+1)]`
-/

namespace A350314.P14114544733812476334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350314.P14114544733812476334

/-! ## A350314.P2615471913679378247

`A079578(a(n-1)+1)` with `a(0)=2`
-/

namespace A350314.P2615471913679378247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079578 (a (n - 1) + 1).toNat

end

end A350314.P2615471913679378247

/-! ## A350314.P9017798089468253967

`∑[A350315(Δ[n²]-n)%13]`
-/

namespace A350314.P9017798089468253967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350315 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350314.P9017798089468253967

/-! ## A350314.P12729221447727638616

`a(n-1)+A071222(a(n-1))+2` with `a(0)=2`
-/

namespace A350314.P12729221447727638616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A071222 (a (n - 1)).toNat + 2)

end

end A350314.P12729221447727638616

/-! ## A350314.P2113891093317420733

`A353187(A008486(n)+1)`
-/

namespace A350314.P2113891093317420733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353187 (A008486 n + 1).toNat

end

end A350314.P2113891093317420733

/-! ## A350314.P17273799195016316306

`A353187(A033627(n+2))`
-/

namespace A350314.P17273799195016316306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353187 (A033627 (n + 2)).toNat

end

end A350314.P17273799195016316306

/-! ## A350314.P7060683904840708485

`A079578(A020725(a(n-1)))` with `a(0)=2`
-/

namespace A350314.P7060683904840708485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079578 (A020725 (a (n - 1)).toNat).toNat

end

end A350314.P7060683904840708485

/-! ## A350314.P9128127453103570569

`A079578(A326178(a(n-1)))` with `a(0)=2`
-/

namespace A350314.P9128127453103570569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079578 (A326178 (a (n - 1)).toNat).toNat

end

end A350314.P9128127453103570569

/-! ## A350314.P13095698877922126776

`filter[A353187(n+1), A266611(#)]`
-/

namespace A350314.P13095698877922126776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A350314.P13095698877922126776

/-! ## A350314.P15670794240046665111

`filter[A353187(n+1), A266719(#)]`
-/

namespace A350314.P15670794240046665111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A350314.P15670794240046665111

/-!
# A350315: Length of the rows of the Redstone permutation A350313.

The programs for A350315, there is no canonical definition to state claims against.
-/

/-! ## A350315.P705960260473996536

`Δ[A079578(a(n-1)+1)]` with `a(0)=0, a(1)=2`
-/

namespace A350315.P705960260473996536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A079578 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350315.P705960260473996536

/-! ## A350315.P1182412619919948621

`Δ[A079578(A020725(a(n-1)))]` with `a(0)=0, a(1)=2`
-/

namespace A350315.P1182412619919948621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A079578 (A020725 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350315.P1182412619919948621

/-! ## A350315.P11714683541427881901

`Δ[A079578(A326178(a(n-1)))]` with `a(0)=0, a(1)=2`
-/

namespace A350315.P11714683541427881901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A079578 (A326178 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350315.P11714683541427881901

/-!
# A350316: Totient numbers k such that 3*k is a nontotient.

The programs for A350316, there is no canonical definition to state claims against.
-/

/-! ## A350316.P14821775278796111044

`eq[3, A316665(n+1)]+1`
-/

namespace A350316.P14821775278796111044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350316.P14821775278796111044

/-! ## A350316.P8547894707569201587

`A015906(eq[3, A316665(n+1)])`
-/

namespace A350316.P8547894707569201587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350316.P8547894707569201587

/-! ## A350316.P14749479479647288701

`A106247(eq[3, A316665(n+1)])`
-/

namespace A350316.P14749479479647288701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350316.P14749479479647288701

/-! ## A350316.P17945586446056230790

`eq[3, A316665(A000038(n)+n)]`
-/

namespace A350316.P17945586446056230790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350316.P17945586446056230790

/-! ## A350316.P13825194633761085873

`A164020(eq[3, A316665(n+1)])`
-/

namespace A350316.P13825194633761085873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350316.P13825194633761085873

/-!
# A350319: Totient numbers k such that 9*k is a nontotient.

The programs for A350319, there is no canonical definition to state claims against.
-/

/-! ## A350319.P9671958812809607146

`record[∏{p}[A105041(n+1)^A001222(n+1), #]]`
-/

namespace A350319.P9671958812809607146
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105041 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350319.P9671958812809607146

/-! ## A350319.P9763351197824368120

`A179875(2*n+1)+A059448(A001423(n))`
-/

namespace A350319.P9763351197824368120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (2 * n + 1) + A059448 (A001423 n).toNat

end

end A350319.P9763351197824368120

/-!
# A350321: Totient numbers k such that 14*k is a nontotient.

The programs for A350321, there is no canonical definition to state claims against.
-/

/-! ## A350321.P15817040692975309717

`∩[floor(A350318(n+1)/2), A350318(n+1)]`
-/

namespace A350321.P15817040692975309717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350318 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350321.P15817040692975309717

/-! ## A350321.P13820947590759759650

`∩[A350318(n+1), A014682(A350318(n+2))]`
-/

namespace A350321.P13820947590759759650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A350318 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350321.P13820947590759759650

/-!
# A350322: Abelian orders m for which there exist exactly 2 groups of order m.

The programs for A350322, there is no canonical definition to state claims against.
-/

/-! ## A350322.P9958369787832542200

`∩[A054395(n+1), A350152(n+1)]`
-/

namespace A350322.P9958369787832542200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P9958369787832542200

/-! ## A350322.P7390902836987532156

`∩[A013929(n+1), A054395(n+1)]`
-/

namespace A350322.P7390902836987532156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P7390902836987532156

/-! ## A350322.P3614019405850481193

`filter[A350152(n+1), A359466(#)]`
-/

namespace A350322.P3614019405850481193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A350322.P3614019405850481193

/-! ## A350322.P13493617848046516256

`filter[A350152(n+1), A359471(#)]`
-/

namespace A350322.P13493617848046516256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A350322.P13493617848046516256

/-! ## A350322.P6728192610829495532

`filter[A350152(n+1), A359474(#)]`
-/

namespace A350322.P6728192610829495532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A350322.P6728192610829495532

/-! ## A350322.P9767119255963849750

`record[A105570(A054395(n+1))]`
-/

namespace A350322.P9767119255963849750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A054395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350322.P9767119255963849750

/-! ## A350322.P17684474927526290712

`filter[A054395(n+1), A087049(#)]`
-/

namespace A350322.P17684474927526290712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A350322.P17684474927526290712

/-! ## A350322.P11762079658052798997

`filter[A054395(n+1), A353470(#)]`
-/

namespace A350322.P11762079658052798997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A350322.P11762079658052798997

/-! ## A350322.P1009155972939703933

`filter[A054395(n+1), A359429(#)]`
-/

namespace A350322.P1009155972939703933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A350322.P1009155972939703933

/-! ## A350322.P10780453109441302889

`filter[A054395(n+1), A359466(#)]`
-/

namespace A350322.P10780453109441302889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A350322.P10780453109441302889

/-! ## A350322.P2550150819477419083

`filter[A054395(n+1), A359469(#)]`
-/

namespace A350322.P2550150819477419083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A350322.P2550150819477419083

/-! ## A350322.P285044597260495354

`filter[A054395(n+1), A359474(#)]`
-/

namespace A350322.P285044597260495354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A350322.P285044597260495354

/-! ## A350322.P2000248562617181908

`∩[A054395(n+1), A087244(n+1)]`
-/

namespace A350322.P2000248562617181908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P2000248562617181908

/-! ## A350322.P3683436197039730336

`∩[A054395(n+1), A060687(n+1)]`
-/

namespace A350322.P3683436197039730336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P3683436197039730336

/-! ## A350322.P4692429510566107925

`∩[A060687(n+1), A350152(n+1)]`
-/

namespace A350322.P4692429510566107925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P4692429510566107925

/-! ## A350322.P12248875286022985125

`∩[A054395(n+1), A067259(n+1)]`
-/

namespace A350322.P12248875286022985125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P12248875286022985125

/-! ## A350322.P10213331555717228966

`∩[A054395(n+1), A386796(n+1)]`
-/

namespace A350322.P10213331555717228966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P10213331555717228966

/-! ## A350322.P7452467795546687691

`∩[A350152(n+1), A386796(n+1)]`
-/

namespace A350322.P7452467795546687691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P7452467795546687691

/-! ## A350322.P5565763676377482869

`∩[A054395(n+1), A377562(n+1)]`
-/

namespace A350322.P5565763676377482869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350322.P5565763676377482869

/-!
# A350323: Abelian orders m for which there exist at least 4 groups of order m.

The programs for A350323, there is no canonical definition to state claims against.
-/

/-! ## A350323.P15938271047280885799

`A109395(A350345(n+1))²`
-/

namespace A350323.P15938271047280885799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A350345 (n + 1)).toNat ^ 2

end

end A350323.P15938271047280885799

/-! ## A350323.P11975704368138191795

`A350345(A361658(n)²+n)`
-/

namespace A350323.P11975704368138191795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350345 (A361658 n ^ 2 + (n : ℤ)).toNat

end

end A350323.P11975704368138191795

/-!
# A350324: Missing even distances in full prime rulers, i.e., even numbers k, 0 < k < p-3 for some prime p, such that k is not the difference of two primes less than or equal to p.

The programs for A350324, there is no canonical definition to state claims against.
-/

/-! ## A350324.P12688726668729891553

`eq[2, A097109(A071960(n+1))]`
-/

namespace A350324.P12688726668729891553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 (A071960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350324.P12688726668729891553

/-! ## A350324.P16956344850750695164

`lt[2, A007920(A013632(n+1))]`
-/

namespace A350324.P16956344850750695164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A013632 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350324.P16956344850750695164

/-! ## A350324.P331278689558327270

`lt[2, A007920(A013632(n))]-1`
-/

namespace A350324.P331278689558327270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A013632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A350324.P331278689558327270

/-! ## A350324.P11356046422834972751

`lt[3, A013632(A013632(n+2))]`
-/

namespace A350324.P11356046422834972751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A013632 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350324.P11356046422834972751

/-! ## A350324.P17801875779369869915

`eq[2, A071960(A071960(n+1)+1)]`
-/

namespace A350324.P17801875779369869915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071960 (A071960 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350324.P17801875779369869915

/-! ## A350324.P4134519610781120105

`A004277(lt[A020484(n+1), A020484(n)])`
-/

namespace A350324.P4134519610781120105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350324.P4134519610781120105

/-!
# A350325: Binomial transform of A339399(n).

The programs for A350325, there is no canonical definition to state claims against.
-/

/-! ## A350325.P6689821721528164301

`A008676(8*A336724(n))`
-/

namespace A350325.P6689821721528164301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (8 * A336724 n).toNat

end

end A350325.P6689821721528164301

/-! ## A350325.P215252387719273107

`A008676(lcm(8, A336724(n)))`
-/

namespace A350325.P215252387719273107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.lcm 8 (A336724 n))

end

end A350325.P215252387719273107

/-! ## A350325.P17463941623227049200

`A324092(A062504(n))+A035530(n)`
-/

namespace A350325.P17463941623227049200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (A062504 n).toNat + A035530 n

end

end A350325.P17463941623227049200

/-! ## A350325.P12494670683873179264

`A008998(n)-A210716(A053637(n+1))`
-/

namespace A350325.P12494670683873179264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n - A210716 (A053637 (n + 1)).toNat

end

end A350325.P12494670683873179264

/-!
# A350326: Binomial transform of A339443(n).

The programs for A350326, there is no canonical definition to state claims against.
-/

/-! ## A350326.P5808221585921468279

`A039708(A156616(n))`
-/

namespace A350326.P5808221585921468279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A156616 n).toNat

end

end A350326.P5808221585921468279

/-! ## A350326.P9360216501517081063

`∑[A005041(Δ[A007454(n+1)])]`
-/

namespace A350326.P9360216501517081063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007454 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350326.P9360216501517081063

/-! ## A350326.P11869725728906689934

`∑[A055086(A149587(n))]`
-/

namespace A350326.P11869725728906689934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A149587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350326.P11869725728906689934

/-! ## A350326.P16032343265352465146

`A026819(floor(sqrt(A021384(n))))`
-/

namespace A350326.P16032343265352465146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.sqrt (A021384 n)).toNat

end

end A350326.P16032343265352465146

/-!
# A350327: Maximum domination number of connected graphs with n vertices and minimum degree 2.

The programs for A350327, the canonical program `A350327.P15746075285235179687` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350327 has offset 3).

The definition of A350327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350327.P15919330937213743848

`∑[(ceil(16/acot(n))%5)%2]`
-/

namespace A350327.P15919330937213743848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ⌈16 / SequenceMachineLib.acot (n : ℝ)⌉ 5) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350327.P15919330937213743848

namespace A350327

/-- `∑[(ceil(16/acot(n))%5)%2]` -/
def P15919330937213743848.Spec : Prop :=
  ∀ n, P15919330937213743848.a n = A350327 (n + 3)

end A350327

/-! ## A350327.P1742726933891545651

`ceil(comp[6*(n+2)]/3)+1`
-/

namespace A350327.P1742726933891545651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 3⌉ + 1

end

end A350327.P1742726933891545651

namespace A350327

/-- `ceil(comp[6*(n+2)]/3)+1` -/
def P1742726933891545651.Spec : Prop :=
  ∀ n, P1742726933891545651.a n = A350327 (n + 3)

end A350327

/-! ## A350327.P15084402375802386538

`round(sqrt(((or(3, 12*n)+19)/30)²+1))`
-/

namespace A350327.P15084402375802386538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((Nat.lor 3 (12 * n) + 19 : ℚ) / 30) ^ 2 + 1 : ℝ))

end

end A350327.P15084402375802386538

namespace A350327

/-- `round(sqrt(((or(3, 12*n)+19)/30)²+1))` -/
def P15084402375802386538.Spec : Prop :=
  ∀ n, P15084402375802386538.a n = A350327 (n + 3)

end A350327

/-! ## A350327.P15746075285235179687

`ceil(A299264(n)/A001844(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A350327

/-- `ceil(A299264(n)/A001844(n))` -/
def P15746075285235179687.Spec : Prop :=
  ∀ n, P15746075285235179687.a n = A350327 (n + 3)

theorem P15746075285235179687.correct : P15746075285235179687.Spec := by
  intro n
  simp only [A350327, Nat.add_sub_cancel]

end A350327

/-! ## A350327.P14280018227881334889

`floor((A184629(n+1)+n)/A005893(n))`
-/

namespace A350327.P14280018227881334889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184629 (n + 1) + (n : ℤ) : ℚ) / (A005893 n : ℚ)⌋

end

end A350327.P14280018227881334889

namespace A350327

/-- `floor((A184629(n+1)+n)/A005893(n))` -/
def P14280018227881334889.Spec : Prop :=
  ∀ n, P14280018227881334889.a n = A350327 (n + 3)

end A350327

/-! ## A350327.P13453364917884535992

`round(log2(A018125(n+2)))`
-/

namespace A350327.P13453364917884535992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A018125 (n + 2) : ℝ))

end

end A350327.P13453364917884535992

namespace A350327

/-- `round(log2(A018125(n+2)))` -/
def P13453364917884535992.Spec : Prop :=
  ∀ n, P13453364917884535992.a n = A350327 (n + 3)

end A350327

/-!
# A350328: Numbers k such that pi(k) = Sum_{i=1..k} pi(k*(i-1)+i) - pi(k*(i-1)+i-1).

The programs for A350328, there is no canonical definition to state claims against.
-/

/-! ## A350328.P16669882227756946412

`eq[A000720(n+1), A221490(n+1)]+1`
-/

namespace A350328.P16669882227756946412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350328.P16669882227756946412

/-!
# A350330: Lexicographically earliest sequence of positive integers such that the Hankel matrix of any odd number of consecutive terms is invertible.

The programs for A350330, there is no canonical definition to state claims against.
-/

/-! ## A350330.P12716355947511998842

`Δ[A350350(2*(n+1))]`
-/

namespace A350330.P12716355947511998842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350350 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350330.P12716355947511998842

/-! ## A350330.P4031161471248299957

`abs(Δ[A350350(n+2+n)])`
-/

namespace A350330.P4031161471248299957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350350 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A350330.P4031161471248299957

/-! ## A350330.P5917239333516658657

`A000041(Δ[A350350(n+2+n)])`
-/

namespace A350330.P5917239333516658657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350350 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A350330.P5917239333516658657

/-! ## A350330.P2917227178130137213

`A006530(Δ[A350350(n+2+n)])`
-/

namespace A350330.P2917227178130137213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350350 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A350330.P2917227178130137213

/-! ## A350330.P11151464415747555618

`A014963(Δ[A350350(n+2+n)])`
-/

namespace A350330.P11151464415747555618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350350 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A350330.P11151464415747555618

/-!
# A350331: Number of divisors of n that are prime or the product of 2 (not necessarily distinct) primes.

The programs for A350331, the canonical program `A350331.P13927814064560633855` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350331 has offset 1).

The definition of A350331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350331.P13927814064560633855

`A001221(n+1)+A086971(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A350331

/-- `A001221(n+1)+A086971(n+1)` -/
def P13927814064560633855.Spec : Prop :=
  ∀ n, P13927814064560633855.a n = A350331 (n + 1)

theorem P13927814064560633855.correct : P13927814064560633855.Spec := by
  intro n
  simp only [A350331, Nat.add_sub_cancel]

end A350331

/-! ## A350331.P9544992449509709546

`∑{d}[n+1, A101040(#)]`
-/

namespace A350331.P9544992449509709546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101040 d

end

end A350331.P9544992449509709546

namespace A350331

/-- `∑{d}[n+1, A101040(#)]` -/
def P9544992449509709546.Spec : Prop :=
  ∀ n, P9544992449509709546.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P8061639927210185649

`A266475(A073184(n+1))`
-/

namespace A350331.P8061639927210185649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266475 (A073184 (n + 1)).toNat

end

end A350331.P8061639927210185649

namespace A350331

/-- `A266475(A073184(n+1))` -/
def P8061639927210185649.Spec : Prop :=
  ∀ n, P8061639927210185649.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P12528034357576082601

`A198332(2*A073184(n+1))/2`
-/

namespace A350331.P12528034357576082601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198332 (2 * A073184 (n + 1)).toNat : ℚ) / 2

end

end A350331.P12528034357576082601

namespace A350331

/-- `A198332(2*A073184(n+1))/2` -/
def P12528034357576082601.Spec : Prop :=
  ∀ n, P12528034357576082601.a n = (A350331 (n + 1) : ℚ)

end A350331

/-! ## A350331.P9710730570825948855

`A238949(n+1)+A079275(n+1)`
-/

namespace A350331.P9710730570825948855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) + A079275 (n + 1)

end

end A350331.P9710730570825948855

namespace A350331

/-- `A238949(n+1)+A079275(n+1)` -/
def P9710730570825948855.Spec : Prop :=
  ∀ n, P9710730570825948855.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P4638408184670135964

`A163523(n+1)-A262095(n+1)`
-/

namespace A350331.P4638408184670135964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) - A262095 (n + 1)

end

end A350331.P4638408184670135964

namespace A350331

/-- `A163523(n+1)-A262095(n+1)` -/
def P4638408184670135964.Spec : Prop :=
  ∀ n, P4638408184670135964.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P16234183217432345418

`A350338(n+1)-A101606(n+1)`
-/

namespace A350331.P16234183217432345418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350338 (n + 1) - A101606 (n + 1)

end

end A350331.P16234183217432345418

namespace A350331

/-- `A350338(n+1)-A101606(n+1)` -/
def P16234183217432345418.Spec : Prop :=
  ∀ n, P16234183217432345418.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P15766383430090214307

`A086971(n+1)+A001222(∏{p}[n+1, #])`
-/

namespace A350331.P15766383430090214307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A350331.P15766383430090214307

namespace A350331

/-- `A086971(n+1)+A001222(∏{p}[n+1, #])` -/
def P15766383430090214307.Spec : Prop :=
  ∀ n, P15766383430090214307.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P3051848245931937773

`A001221(n+1)+A106405(n+1)+A106404(n+1)`
-/

namespace A350331.P3051848245931937773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A106405 (n + 1) + A106404 (n + 1))

end

end A350331.P3051848245931937773

namespace A350331

/-- `A001221(n+1)+A106405(n+1)+A106404(n+1)` -/
def P3051848245931937773.Spec : Prop :=
  ∀ n, P3051848245931937773.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P14501579536066211355

`A086971(n+1)+A249767(n+1)-A008683(n+1)`
-/

namespace A350331.P14501579536066211355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) + (A249767 (n + 1) - A008683 (n + 1))

end

end A350331.P14501579536066211355

namespace A350331

/-- `A086971(n+1)+A249767(n+1)-A008683(n+1)` -/
def P14501579536066211355.Spec : Prop :=
  ∀ n, P14501579536066211355.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P11522127194718039521

`A106404(2*(n+1))+A086971(n+1)`
-/

namespace A350331.P11522127194718039521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (2 * (n + 1)) + A086971 (n + 1)

end

end A350331.P11522127194718039521

namespace A350331

/-- `A106404(2*(n+1))+A086971(n+1)` -/
def P11522127194718039521.Spec : Prop :=
  ∀ n, P11522127194718039521.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P4708461686266778021

`A086971(A087560(n+1))`
-/

namespace A350331.P4708461686266778021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A087560 (n + 1)).toNat

end

end A350331.P4708461686266778021

namespace A350331

/-- `A086971(A087560(n+1))` -/
def P4708461686266778021.Spec : Prop :=
  ∀ n, P4708461686266778021.a n = A350331 (n + 1)

end A350331

/-! ## A350331.P1123789481056423469

`A086971(A119416(n+1))`
-/

namespace A350331.P1123789481056423469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A119416 (n + 1)).toNat

end

end A350331.P1123789481056423469

namespace A350331

/-- `A086971(A119416(n+1))` -/
def P1123789481056423469.Spec : Prop :=
  ∀ n, P1123789481056423469.a n = A350331 (n + 1)

end A350331

/-!
# A350332: Numbers p^2*q, p < q odd primes such that p does not divide q-1.

The programs for A350332, there is no canonical definition to state claims against.
-/

/-! ## A350332.P4658941413262948602

`filter[A350152(n+1), A353474(#)]`
-/

namespace A350332.P4658941413262948602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353474 (f1 j).toNat = 1) n)

end

end A350332.P4658941413262948602

/-! ## A350332.P13094055314387790635

`filter[A350322(n+1), A353474(#)]`
-/

namespace A350332.P13094055314387790635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353474 (f1 j).toNat = 1) n)

end

end A350332.P13094055314387790635

/-! ## A350332.P4474120974118117895

`filter[A350322(n+1), A384709(#)]`
-/

namespace A350332.P4474120974118117895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384709 (f1 j).toNat = 1) n)

end

end A350332.P4474120974118117895

/-! ## A350332.P10279673804171436534

`∩[A051532(n+1), A096156(n+1)]`
-/

namespace A350332.P10279673804171436534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350332.P10279673804171436534

/-! ## A350332.P17432287695248720662

`∩[A051532(n+1), A097320(n+1)]`
-/

namespace A350332.P17432287695248720662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350332.P17432287695248720662

/-!
# A350333: Irregular triangle read by rows in which row n lists all elements of the arrangement of the correspondence divisor/part related to the partitions of n in the following order: row n lists the n-th row of A026792 followed by the n-th row of A338156.

The programs for A350333, there is no canonical definition to state claims against.
-/

/-! ## A350333.P10966220899863555622

`A246028(and(7*n², A096185(n+4)))`
-/

namespace A350333.P10966220899863555622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 (Int.land (7 * n ^ 2 : ℤ) (A096185 (n + 4))).toNat

end

end A350333.P10966220899863555622

/-! ## A350333.P6852125385169960736

`gcd(A008347(A000285(n)), A049237(n+1))`
-/

namespace A350333.P6852125385169960736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008347 (A000285 n).toNat) (A049237 (n + 1))

end

end A350333.P6852125385169960736

/-! ## A350333.P3690491448407943818

`A277873(A296119(3*n+4)+A218289(n))`
-/

namespace A350333.P3690491448407943818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 (A296119 (3 * n + 4) + A218289 n).toNat

end

end A350333.P3690491448407943818

/-! ## A350333.P4313181250935093040

`gcd(A160929(n+1), A163100(A160950(n+1)))`
-/

namespace A350333.P4313181250935093040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160929 (n + 1)) (A163100 (A160950 (n + 1)).toNat)

end

end A350333.P4313181250935093040

/-! ## A350333.P5034264942774924421

`A066099(A187238(n+4)-A244122(n))`
-/

namespace A350333.P5034264942774924421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A187238 (n + 4) - A244122 n).toNat

end

end A350333.P5034264942774924421

/-!
# A350337: Sum of the divisors of n that are prime or the product of 2 (not necessarily distinct) primes.

The programs for A350337, the canonical program `A350337.P9833079415363379822` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350337 has offset 1).

The definition of A350337 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A076290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350337.P9833079415363379822

`A008472(n+1)+A076290(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A350337

/-- `A008472(n+1)+A076290(n+1)` -/
def P9833079415363379822.Spec : Prop :=
  ∀ n, P9833079415363379822.a n = A350337 (n + 1)

theorem P9833079415363379822.correct : P9833079415363379822.Spec := by
  intro n
  simp only [A350337, Nat.add_sub_cancel]

end A350337

/-! ## A350337.P8033732762890741042

`∑{d}[n+1, #*A101040(#)]`
-/

namespace A350337.P8033732762890741042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101040 d

end

end A350337.P8033732762890741042

namespace A350337

/-- `∑{d}[n+1, #*A101040(#)]` -/
def P8033732762890741042.Spec : Prop :=
  ∀ n, P8033732762890741042.a n = A350337 (n + 1)

end A350337

/-! ## A350337.P14839455156430225846

`∑{p}[n+1, #]+∑{d}[n+1, #*A064911(#)]`
-/

namespace A350337.P14839455156430225846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A064911 d

end

end A350337.P14839455156430225846

namespace A350337

/-- `∑{p}[n+1, #]+∑{d}[n+1, #*A064911(#)]` -/
def P14839455156430225846.Spec : Prop :=
  ∀ n, P14839455156430225846.a n = A350337 (n + 1)

end A350337

/-! ## A350337.P7969060704531704536

`A076290(n+1)+Δ[A024924(n)]`
-/

namespace A350337.P7969060704531704536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (n + 1) + (f1 (n + 1) - f1 n)

end

end A350337.P7969060704531704536

namespace A350337

/-- `A076290(n+1)+Δ[A024924(n)]` -/
def P7969060704531704536.Spec : Prop :=
  ∀ n, P7969060704531704536.a n = A350337 (n + 1)

end A350337

/-! ## A350337.P7726491076312031615

`A076290(n+1)+sqrt(A235323(n+1))`
-/

namespace A350337.P7726491076312031615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076290 (n + 1) : ℝ) + Real.sqrt (A235323 (n + 1) : ℝ)

end

end A350337.P7726491076312031615

namespace A350337

/-- `A076290(n+1)+sqrt(A235323(n+1))` -/
def P7726491076312031615.Spec : Prop :=
  ∀ n, P7726491076312031615.a n = (A350337 (n + 1) : ℝ)

end A350337

/-! ## A350337.P4497147781767695331

`A076290(n+1)+A001414(A007947(n+1))`
-/

namespace A350337.P4497147781767695331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (n + 1) + A001414 (A007947 (n + 1)).toNat

end

end A350337.P4497147781767695331

namespace A350337

/-- `A076290(n+1)+A001414(A007947(n+1))` -/
def P4497147781767695331.Spec : Prop :=
  ∀ n, P4497147781767695331.a n = A350337 (n + 1)

end A350337

/-! ## A350337.P10017257302782929861

`∑{p}[n+1, #]+∑{d}[n+1, #*A101605(2*#)]`
-/

namespace A350337.P10017257302782929861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A101605 (2 * d)

end

end A350337.P10017257302782929861

namespace A350337

/-- `∑{p}[n+1, #]+∑{d}[n+1, #*A101605(2*#)]` -/
def P10017257302782929861.Spec : Prop :=
  ∀ n, P10017257302782929861.a n = A350337 (n + 1)

end A350337

/-! ## A350337.P7805397371811988226

`∑{p}[n+1, #]+∑{d}[n+1, #*A101637(#*#)]`
-/

namespace A350337.P7805397371811988226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A101637 (d * d)

end

end A350337.P7805397371811988226

namespace A350337

/-- `∑{p}[n+1, #]+∑{d}[n+1, #*A101637(#*#)]` -/
def P7805397371811988226.Spec : Prop :=
  ∀ n, P7805397371811988226.a n = A350337 (n + 1)

end A350337

/-!
# A350338: Number of nontrivial divisors of n that are the product of up to 3 (not necessarily distinct) primes.

The programs for A350338, the canonical program `A350338.P228181022738579611` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350338 has offset 1).

The definition of A350338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350338.P228181022738579611

`A350331(n+1)+A101606(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A350338

/-- `A350331(n+1)+A101606(n+1)` -/
def P228181022738579611.Spec : Prop :=
  ∀ n, P228181022738579611.a n = A350338 (n + 1)

theorem P228181022738579611.correct : P228181022738579611.Spec := by
  intro n
  simp only [A350338, Nat.add_sub_cancel]

end A350338

/-! ## A350338.P13718954634891177443

`A350331(n+1)+∑{d}[n+1, A101605(#)]`
-/

namespace A350338.P13718954634891177443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350331 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A101605 d

end

end A350338.P13718954634891177443

namespace A350338

/-- `A350331(n+1)+∑{d}[n+1, A101605(#)]` -/
def P13718954634891177443.Spec : Prop :=
  ∀ n, P13718954634891177443.a n = A350338 (n + 1)

end A350338

/-! ## A350338.P18022639792951441627

`A101606(4*A003961(n+1))`
-/

namespace A350338.P18022639792951441627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (4 * A003961 (n + 1)).toNat

end

end A350338.P18022639792951441627

namespace A350338

/-- `A101606(4*A003961(n+1))` -/
def P18022639792951441627.Spec : Prop :=
  ∀ n, P18022639792951441627.a n = A350338 (n + 1)

end A350338

/-! ## A350338.P9094868204407308463

`A101606(lcm(4, A003961(n+1)))`
-/

namespace A350338.P9094868204407308463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (Int.lcm 4 (A003961 (n + 1)))

end

end A350338.P9094868204407308463

namespace A350338

/-- `A101606(lcm(4, A003961(n+1)))` -/
def P9094868204407308463.Spec : Prop :=
  ∀ n, P9094868204407308463.a n = A350338 (n + 1)

end A350338

/-! ## A350338.P16875432537466084918

`A101606(4*A064988(n+1))`
-/

namespace A350338.P16875432537466084918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (4 * A064988 (n + 1)).toNat

end

end A350338.P16875432537466084918

namespace A350338

/-- `A101606(4*A064988(n+1))` -/
def P16875432537466084918.Spec : Prop :=
  ∀ n, P16875432537466084918.a n = A350338 (n + 1)

end A350338

/-! ## A350338.P9932651771169917488

`A101606(4*A297002(n+1))`
-/

namespace A350338.P9932651771169917488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (4 * A297002 (n + 1)).toNat

end

end A350338.P9932651771169917488

namespace A350338

/-- `A101606(4*A297002(n+1))` -/
def P9932651771169917488.Spec : Prop :=
  ∀ n, P9932651771169917488.a n = A350338 (n + 1)

end A350338

/-!
# A350339: Sum of the nontrivial divisors of n that are the product of up to 3 (not necessarily distinct) primes.

The programs for A350339, there is no canonical definition to state claims against.
-/

/-! ## A350339.P8633215777157471069

`A074400(n+1)/2-(n+2)^A167688(A090106(n+1))`
-/

namespace A350339.P8633215777157471069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (n + 2 : ℚ) ^ (A167688 (A090106 (n + 1)).toNat : ℤ)

end

end A350339.P8633215777157471069

/-! ## A350339.P8457441310994712369

`(A365682(n+1)-1)%A158470(n+5)`
-/

namespace A350339.P8457441310994712369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365682 (n + 1) - 1) (A158470 (n + 5))

end

end A350339.P8457441310994712369

/-! ## A350339.P391293824127038513

`∑{d}[n+1, #]-A361523(A033809(n+1))`
-/

namespace A350339.P391293824127038513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A361523 (A033809 (n + 1)).toNat

end

end A350339.P391293824127038513

/-! ## A350339.P6385047375188884271

`∑{d}[n+1, #]-A361523(A046067(n+1))`
-/

namespace A350339.P6385047375188884271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A361523 (A046067 (n + 1)).toNat

end

end A350339.P6385047375188884271

/-! ## A350339.P10133622272739786400

`(A074400(n+1)/2-1)%A160421(2*n+3)`
-/

namespace A350339.P10133622272739786400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 - 1)) (A160421 (2 * n + 3))

end

end A350339.P10133622272739786400

/-!
# A350340: a(n) is the smallest k such that k^2 is an abelian order with precisely 2^n groups.

The programs for A350340, there is no canonical definition to state claims against.
-/

/-! ## A350340.P2250036012430644852

`sqrt(A350341(n))`
-/

namespace A350340.P2250036012430644852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350341 n : ℝ)

end

end A350340.P2250036012430644852

/-! ## A350340.P8194628892283205478

`root(A350341(n), p?[A025463(n)])`
-/

namespace A350340.P8194628892283205478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A350341 n : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A350340.P8194628892283205478

/-! ## A350340.P3194917413671412529

`root(A350341(n), A036452(n+1))`
-/

namespace A350340.P3194917413671412529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A350341 n : ℝ) ^ (1 / (A036452 (n + 1) : ℝ))

end

end A350340.P3194917413671412529

/-! ## A350340.P155238674870934612

`root(A350341(n), 2%A001248(n+1))`
-/

namespace A350340.P155238674870934612
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A350341 n : ℝ) ^ (1 / (Int.tmod 2 (A001248 (n + 1)) : ℝ))

end

end A350340.P155238674870934612

/-! ## A350340.P8255718116880769100

`A350341(n)^(A001221(A007519(n+1))/2)`
-/

namespace A350340.P8255718116880769100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A350341 n : ℝ) ^ ((A001221 (A007519 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A350340.P8255718116880769100

/-!
# A350341: a(n) is the smallest abelian order with precisely 2^n groups.

The programs for A350341, there is no canonical definition to state claims against.
-/

/-! ## A350341.P11688404138151129039

`A350340(n)²`
-/

namespace A350341.P11688404138151129039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350340 n ^ 2

end

end A350341.P11688404138151129039

/-! ## A350341.P12901586739230022928

`A350340(n)^(2%A000032(n+2))`
-/

namespace A350341.P12901586739230022928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350340 n : ℚ) ^ (Int.tmod 2 (A000032 (n + 2)) : ℤ)

end

end A350341.P12901586739230022928

/-! ## A350341.P18297197493564376697

`A350340(n)^A020639(A017342(n))`
-/

namespace A350341.P18297197493564376697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350340 n : ℚ) ^ (A020639 (A017342 n).toNat : ℤ)

end

end A350341.P18297197493564376697

/-! ## A350341.P4319353039980165495

`A350340(n)^A020639(A079908(n))`
-/

namespace A350341.P4319353039980165495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350340 n : ℚ) ^ (A020639 (A079908 n).toNat : ℤ)

end

end A350341.P4319353039980165495

/-! ## A350341.P2798843102005409222

`A350340(n)^A020639(A019560(n))`
-/

namespace A350341.P2798843102005409222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350340 n : ℚ) ^ (A020639 (A019560 n).toNat : ℤ)

end

end A350341.P2798843102005409222

/-!
# A350342: Numbers k such that k^2 is an abelian order.

The programs for A350342, the canonical program `A350342.P14469462587994129721` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350342 has offset 1).

The definition of A350342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8068 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350342.P5811532414611896497

`sqrt(A350343(n+1))`
-/

namespace A350342.P5811532414611896497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350343 (n + 1) : ℝ)

end

end A350342.P5811532414611896497

namespace A350342

/-- `sqrt(A350343(n+1))` -/
def P5811532414611896497.Spec : Prop :=
  ∀ n, P5811532414611896497.a n = (A350342 (n + 1) : ℝ)

end A350342

/-! ## A350342.P10298352060376293255

`lt[A300242(n+1), 2]+1`
-/

namespace A350342.P10298352060376293255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300242 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A350342.P10298352060376293255

namespace A350342

/-- `lt[A300242(n+1), 2]+1` -/
def P10298352060376293255.Spec : Prop :=
  ∀ n, (P10298352060376293255.a n : ℤ) = A350342 (n + 1)

end A350342

/-! ## A350342.P4697786311840115193

`∪[A008578(n+1), A350344(n+1)]`
-/

namespace A350342.P4697786311840115193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350342.P4697786311840115193

namespace A350342

/-- `∪[A008578(n+1), A350344(n+1)]` -/
def P4697786311840115193.Spec : Prop :=
  ∀ n, (P4697786311840115193.a n : ℤ) = A350342 (n + 1)

end A350342

/-! ## A350342.P1217756455588245846

`eq[A326192(n+1), A326192(A326192(n+1))]+1`
-/

namespace A350342.P1217756455588245846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (A326192 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350342.P1217756455588245846

namespace A350342

/-- `eq[A326192(n+1), A326192(A326192(n+1))]+1` -/
def P1217756455588245846.Spec : Prop :=
  ∀ n, (P1217756455588245846.a n : ℤ) = A350342 (n + 1)

end A350342

/-! ## A350342.P14469462587994129721

`filter[A003277(n+1), A325964(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A350342

/-- `filter[A003277(n+1), A325964(#)]` -/
def P14469462587994129721.Spec : Prop :=
  ∀ n, P14469462587994129721.a n = A350342 (n + 1)

theorem P14469462587994129721.correct : P14469462587994129721.Spec := by
  intro n
  simp only [A350342, Nat.add_sub_cancel]

end A350342

/-! ## A350342.P1668497103223957194

`∩[A003277(n+1), A014567(n+1)]`
-/

namespace A350342.P1668497103223957194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350342.P1668497103223957194

namespace A350342

/-- `∩[A003277(n+1), A014567(n+1)]` -/
def P1668497103223957194.Spec : Prop :=
  ∀ n, (P1668497103223957194.a n : ℤ) = A350342 (n + 1)

end A350342

/-! ## A350342.P6836171010896353177

`record[A109395(A014567(n+1))]`
-/

namespace A350342.P6836171010896353177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A014567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P6836171010896353177

namespace A350342

/-- `record[A109395(A014567(n+1))]` -/
def P6836171010896353177.Spec : Prop :=
  ∀ n, P6836171010896353177.a n = A350342 (n + 1)

end A350342

/-! ## A350342.P13311551617551390651

`record[A109395(n+1)/A306682(n+1)]`
-/

namespace A350342.P13311551617551390651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109395 (n + 1) : ℚ) / (A306682 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P13311551617551390651

namespace A350342

/-- `record[A109395(n+1)/A306682(n+1)]` -/
def P13311551617551390651.Spec : Prop :=
  ∀ n, P13311551617551390651.a n = (A350342 (n + 1) : ℚ)

end A350342

/-! ## A350342.P3917502507045745602

`∩[A003277(n+1), A306528(n+1)]`
-/

namespace A350342.P3917502507045745602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350342.P3917502507045745602

namespace A350342

/-- `∩[A003277(n+1), A306528(n+1)]` -/
def P3917502507045745602.Spec : Prop :=
  ∀ n, (P3917502507045745602.a n : ℤ) = A350342 (n + 1)

end A350342

/-! ## A350342.P13557104582835805390

`record[sqrt(A386402(n+1))]`
-/

namespace A350342.P13557104582835805390
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A386402 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P13557104582835805390

namespace A350342

/-- `record[sqrt(A386402(n+1))]` -/
def P13557104582835805390.Spec : Prop :=
  ∀ n, P13557104582835805390.a n = (A350342 (n + 1) : ℝ)

end A350342

/-! ## A350342.P7938401166595002477

`record[A017666(A003277(n+1))]`
-/

namespace A350342.P7938401166595002477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A003277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P7938401166595002477

namespace A350342

/-- `record[A017666(A003277(n+1))]` -/
def P7938401166595002477.Spec : Prop :=
  ∀ n, P7938401166595002477.a n = A350342 (n + 1)

end A350342

/-! ## A350342.P9334606188137484740

`record[A109395(A017666(n+1))]`
-/

namespace A350342.P9334606188137484740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A017666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P9334606188137484740

namespace A350342

/-- `record[A109395(A017666(n+1))]` -/
def P9334606188137484740.Spec : Prop :=
  ∀ n, P9334606188137484740.a n = A350342 (n + 1)

end A350342

/-! ## A350342.P6626552336029635093

`record[A017666(A195637(n+1))]`
-/

namespace A350342.P6626552336029635093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A195637 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P6626552336029635093

namespace A350342

/-- `record[A017666(A195637(n+1))]` -/
def P6626552336029635093.Spec : Prop :=
  ∀ n, P6626552336029635093.a n = A350342 (n + 1)

end A350342

/-! ## A350342.P13543035521371387887

`record[A017666(A225680(n+1))]`
-/

namespace A350342.P13543035521371387887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A225680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P13543035521371387887

namespace A350342

/-- `record[A017666(A225680(n+1))]` -/
def P13543035521371387887.Spec : Prop :=
  ∀ n, P13543035521371387887.a n = A350342 (n + 1)

end A350342

/-! ## A350342.P11812352574984105122

`filter[A014567(n+1), A297086(#)]`
-/

namespace A350342.P11812352574984105122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A350342.P11812352574984105122

namespace A350342

/-- `filter[A014567(n+1), A297086(#)]` -/
def P11812352574984105122.Spec : Prop :=
  ∀ n, P11812352574984105122.a n = A350342 (n + 1)

end A350342

/-! ## A350342.P18011798358911324669

`filter[A306528(n+1), A297086(#)]`
-/

namespace A350342.P18011798358911324669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A350342.P18011798358911324669

namespace A350342

/-- `filter[A306528(n+1), A297086(#)]` -/
def P18011798358911324669.Spec : Prop :=
  ∀ n, P18011798358911324669.a n = A350342 (n + 1)

end A350342

/-! ## A350342.P15197719479600904246

`record[A017666(n+1)-A331176(n+1)]`
-/

namespace A350342.P15197719479600904246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) - A331176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P15197719479600904246

namespace A350342

/-- `record[A017666(n+1)-A331176(n+1)]` -/
def P15197719479600904246.Spec : Prop :=
  ∀ n, P15197719479600904246.a n = A350342 (n + 1)

end A350342

/-! ## A350342.P8714108426285655930

`record[A017666(n+1)/A009195(n+1)]`
-/

namespace A350342.P8714108426285655930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P8714108426285655930

namespace A350342

/-- `record[A017666(n+1)/A009195(n+1)]` -/
def P8714108426285655930.Spec : Prop :=
  ∀ n, P8714108426285655930.a n = (A350342 (n + 1) : ℚ)

end A350342

/-! ## A350342.P5683248031655012142

`record[A017666(n+1)/A072994(n+1)]`
-/

namespace A350342.P5683248031655012142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / (A072994 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P5683248031655012142

namespace A350342

/-- `record[A017666(n+1)/A072994(n+1)]` -/
def P5683248031655012142.Spec : Prop :=
  ∀ n, P5683248031655012142.a n = (A350342 (n + 1) : ℚ)

end A350342

/-! ## A350342.P3353189222929080635

`record[A017666(n+1)/A082061(n+1)]`
-/

namespace A350342.P3353189222929080635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / (A082061 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350342.P3353189222929080635

namespace A350342

/-- `record[A017666(n+1)/A082061(n+1)]` -/
def P3353189222929080635.Spec : Prop :=
  ∀ n, P3353189222929080635.a n = (A350342 (n + 1) : ℚ)

end A350342

/-!
# A350343: Square numbers k that are abelian orders.

The programs for A350343, the canonical program `A350343.P17281856427666000810` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350343 has offset 1).

The definition of A350343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350343.P17281856427666000810

`A350342(n+1)²`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A350343

/-- `A350342(n+1)²` -/
def P17281856427666000810.Spec : Prop :=
  ∀ n, P17281856427666000810.a n = A350343 (n + 1)

theorem P17281856427666000810.correct : P17281856427666000810.Spec := by
  intro n
  simp only [A350343, Nat.add_sub_cancel]

end A350343

/-! ## A350343.P4321204139395142974

`∪[A280076(n+1), A350345(n+1)]`
-/

namespace A350343.P4321204139395142974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350343.P4321204139395142974

namespace A350343

/-- `∪[A280076(n+1), A350345(n+1)]` -/
def P4321204139395142974.Spec : Prop :=
  ∀ n, (P4321204139395142974.a n : ℤ) = A350343 (n + 1)

end A350343

/-! ## A350343.P9293998651243184391

`∪[A008578(n+1), A350344(n+1)]²`
-/

namespace A350343.P9293998651243184391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350343.P9293998651243184391

namespace A350343

/-- `∪[A008578(n+1), A350344(n+1)]²` -/
def P9293998651243184391.Spec : Prop :=
  ∀ n, (P9293998651243184391.a n : ℤ) = A350343 (n + 1)

end A350343

/-! ## A350343.P13878766314538959101

`∩[A003277(n+1), A014567(n+1)]²`
-/

namespace A350343.P13878766314538959101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350343.P13878766314538959101

namespace A350343

/-- `∩[A003277(n+1), A014567(n+1)]²` -/
def P13878766314538959101.Spec : Prop :=
  ∀ n, (P13878766314538959101.a n : ℤ) = A350343 (n + 1)

end A350343

/-! ## A350343.P16329429327040337348

`record[A109395(A014567(n+1))²]`
-/

namespace A350343.P16329429327040337348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A014567 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P16329429327040337348

namespace A350343

/-- `record[A109395(A014567(n+1))²]` -/
def P16329429327040337348.Spec : Prop :=
  ∀ n, P16329429327040337348.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P10185626310537755643

`record[A386402(n+1)]`
-/

namespace A350343.P10185626310537755643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P10185626310537755643

namespace A350343

/-- `record[A386402(n+1)]` -/
def P10185626310537755643.Spec : Prop :=
  ∀ n, P10185626310537755643.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P4247000010630366135

`record[A050399(A014567(n+1))]`
-/

namespace A350343.P4247000010630366135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (A014567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P4247000010630366135

namespace A350343

/-- `record[A050399(A014567(n+1))]` -/
def P4247000010630366135.Spec : Prop :=
  ∀ n, P4247000010630366135.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P896509105461308797

`record[A050399(A017666(n+1))]`
-/

namespace A350343.P896509105461308797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (A017666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P896509105461308797

namespace A350343

/-- `record[A050399(A017666(n+1))]` -/
def P896509105461308797.Spec : Prop :=
  ∀ n, P896509105461308797.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P5434691618935900055

`record[A050399(A332881(n+1))]`
-/

namespace A350343.P5434691618935900055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (A332881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P5434691618935900055

namespace A350343

/-- `record[A050399(A332881(n+1))]` -/
def P5434691618935900055.Spec : Prop :=
  ∀ n, P5434691618935900055.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P17583165989291129850

`record[A017666(A003277(n+1))²]`
-/

namespace A350343.P17583165989291129850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A003277 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P17583165989291129850

namespace A350343

/-- `record[A017666(A003277(n+1))²]` -/
def P17583165989291129850.Spec : Prop :=
  ∀ n, P17583165989291129850.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P16641112959223825633

`record[A017666(A109395(n+1))²]`
-/

namespace A350343.P16641112959223825633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A109395 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P16641112959223825633

namespace A350343

/-- `record[A017666(A109395(n+1))²]` -/
def P16641112959223825633.Spec : Prop :=
  ∀ n, P16641112959223825633.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P8374981582970913260

`record[A017666(A195637(n+1))²]`
-/

namespace A350343.P8374981582970913260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A195637 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P8374981582970913260

namespace A350343

/-- `record[A017666(A195637(n+1))²]` -/
def P8374981582970913260.Spec : Prop :=
  ∀ n, P8374981582970913260.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P8320162743099469606

`record[A017666(A225680(n+1))²]`
-/

namespace A350343.P8320162743099469606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A225680 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P8320162743099469606

namespace A350343

/-- `record[A017666(A225680(n+1))²]` -/
def P8320162743099469606.Spec : Prop :=
  ∀ n, P8320162743099469606.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P1502958669834671144

`record[A017666(n+1)*A109395(n+1)]`
-/

namespace A350343.P1502958669834671144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) * A109395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P1502958669834671144

namespace A350343

/-- `record[A017666(n+1)*A109395(n+1)]` -/
def P1502958669834671144.Spec : Prop :=
  ∀ n, P1502958669834671144.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P960060459285332182

`record[A017666(n+1)*A195637(n+1)]`
-/

namespace A350343.P960060459285332182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) * A195637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P960060459285332182

namespace A350343

/-- `record[A017666(n+1)*A195637(n+1)]` -/
def P960060459285332182.Spec : Prop :=
  ∀ n, P960060459285332182.a n = A350343 (n + 1)

end A350343

/-! ## A350343.P8810791500836731221

`record[A050399(n+1)/A009194(n+1)]`
-/

namespace A350343.P8810791500836731221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050399 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P8810791500836731221

namespace A350343

/-- `record[A050399(n+1)/A009194(n+1)]` -/
def P8810791500836731221.Spec : Prop :=
  ∀ n, P8810791500836731221.a n = (A350343 (n + 1) : ℚ)

end A350343

/-! ## A350343.P443152936389183073

`record[A050399(n+1)/A082068(n+1)]`
-/

namespace A350343.P443152936389183073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050399 (n + 1) : ℚ) / (A082068 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P443152936389183073

namespace A350343

/-- `record[A050399(n+1)/A082068(n+1)]` -/
def P443152936389183073.Spec : Prop :=
  ∀ n, P443152936389183073.a n = (A350343 (n + 1) : ℚ)

end A350343

/-! ## A350343.P2469065162320341294

`record[A050399(n+1)/A306682(n+1)]`
-/

namespace A350343.P2469065162320341294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050399 (n + 1) : ℚ) / (A306682 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P2469065162320341294

namespace A350343

/-- `record[A050399(n+1)/A306682(n+1)]` -/
def P2469065162320341294.Spec : Prop :=
  ∀ n, P2469065162320341294.a n = (A350343 (n + 1) : ℚ)

end A350343

/-! ## A350343.P18336118895977964350

`record[A050399(n+1)/A327154(n+1)]`
-/

namespace A350343.P18336118895977964350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050399 (n + 1) : ℚ) / (A327154 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P18336118895977964350

namespace A350343

/-- `record[A050399(n+1)/A327154(n+1)]` -/
def P18336118895977964350.Spec : Prop :=
  ∀ n, P18336118895977964350.a n = (A350343 (n + 1) : ℚ)

end A350343

/-! ## A350343.P13663659361592276685

`record[gcd(A050399(n+1), A240923(n+1))]`
-/

namespace A350343.P13663659361592276685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050399 (n + 1)) (A240923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350343.P13663659361592276685

namespace A350343

/-- `record[gcd(A050399(n+1), A240923(n+1))]` -/
def P13663659361592276685.Spec : Prop :=
  ∀ n, (P13663659361592276685.a n : ℤ) = A350343 (n + 1)

end A350343

/-!
# A350344: Composite k such that k^2 is an abelian order.

The programs for A350344, the canonical program `A350344.P2038863926175919238` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350344 has offset 1).

The definition of A350344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350344.P12194545101445321950

`sqrt(A350345(n+1))`
-/

namespace A350344.P12194545101445321950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350345 (n + 1) : ℝ)

end

end A350344.P12194545101445321950

namespace A350344

/-- `sqrt(A350345(n+1))` -/
def P12194545101445321950.Spec : Prop :=
  ∀ n, P12194545101445321950.a n = (A350344 (n + 1) : ℝ)

end A350344

/-! ## A350344.P2038863926175919238

`filter[A050384(n+1), A355816(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A350344

/-- `filter[A050384(n+1), A355816(#)]` -/
def P2038863926175919238.Spec : Prop :=
  ∀ n, P2038863926175919238.a n = A350344 (n + 1)

theorem P2038863926175919238.correct : P2038863926175919238.Spec := by
  intro n
  simp only [A350344, Nat.add_sub_cancel]

end A350344

/-! ## A350344.P5293905042600322822

`filter[A050384(n+2), A325964(#)]`
-/

namespace A350344.P5293905042600322822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A350344.P5293905042600322822

namespace A350344

/-- `filter[A050384(n+2), A325964(#)]` -/
def P5293905042600322822.Spec : Prop :=
  ∀ n, P5293905042600322822.a n = A350344 (n + 1)

end A350344

/-! ## A350344.P12427074033881798415

`∩[A050384(n+1), A248020(n+1)]`
-/

namespace A350344.P12427074033881798415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P12427074033881798415

namespace A350344

/-- `∩[A050384(n+1), A248020(n+1)]` -/
def P12427074033881798415.Spec : Prop :=
  ∀ n, (P12427074033881798415.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P6167826771485115636

`∩[A050384(n+1), A095738(n+1)]`
-/

namespace A350344.P6167826771485115636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P6167826771485115636

namespace A350344

/-- `∩[A050384(n+1), A095738(n+1)]` -/
def P6167826771485115636.Spec : Prop :=
  ∀ n, (P6167826771485115636.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P392910047251567602

`∩[A003624(n+1), A050384(n+1)]`
-/

namespace A350344.P392910047251567602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P392910047251567602

namespace A350344

/-- `∩[A003624(n+1), A050384(n+1)]` -/
def P392910047251567602.Spec : Prop :=
  ∀ n, (P392910047251567602.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P16752038376429372129

`filter[A350342(n+1), A066247(#)]`
-/

namespace A350344.P16752038376429372129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A350344.P16752038376429372129

namespace A350344

/-- `filter[A350342(n+1), A066247(#)]` -/
def P16752038376429372129.Spec : Prop :=
  ∀ n, P16752038376429372129.a n = A350344 (n + 1)

end A350344

/-! ## A350344.P1281730926474109272

`filter[A350342(n+1), A202238(#)]`
-/

namespace A350344.P1281730926474109272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A350344.P1281730926474109272

namespace A350344

/-- `filter[A350342(n+1), A202238(#)]` -/
def P1281730926474109272.Spec : Prop :=
  ∀ n, P1281730926474109272.a n = A350344 (n + 1)

end A350344

/-! ## A350344.P2591581630060475378

`∩[A003624(n+1), A350342(n+1)]`
-/

namespace A350344.P2591581630060475378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P2591581630060475378

namespace A350344

/-- `∩[A003624(n+1), A350342(n+1)]` -/
def P2591581630060475378.Spec : Prop :=
  ∀ n, (P2591581630060475378.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P2975233568821928536

`∩[A038509(n+1), A350342(n+1)]`
-/

namespace A350344.P2975233568821928536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P2975233568821928536

namespace A350344

/-- `∩[A038509(n+1), A350342(n+1)]` -/
def P2975233568821928536.Spec : Prop :=
  ∀ n, (P2975233568821928536.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P1178676298736822809

`∩[A024556(n+1), A350342(n+1)]`
-/

namespace A350344.P1178676298736822809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P1178676298736822809

namespace A350344

/-- `∩[A024556(n+1), A350342(n+1)]` -/
def P1178676298736822809.Spec : Prop :=
  ∀ n, (P1178676298736822809.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P3090100333866682273

`filter[A003277(n+1), A355816(#)]`
-/

namespace A350344.P3090100333866682273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A350344.P3090100333866682273

namespace A350344

/-- `filter[A003277(n+1), A355816(#)]` -/
def P3090100333866682273.Spec : Prop :=
  ∀ n, P3090100333866682273.a n = A350344 (n + 1)

end A350344

/-! ## A350344.P14013042749553748767

`∩[A003277(n+1), A003624(n+1)]`
-/

namespace A350344.P14013042749553748767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P14013042749553748767

namespace A350344

/-- `∩[A003277(n+1), A003624(n+1)]` -/
def P14013042749553748767.Spec : Prop :=
  ∀ n, (P14013042749553748767.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P13032467074816861616

`∩[A003277(n+1), A095738(n+1)]`
-/

namespace A350344.P13032467074816861616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P13032467074816861616

namespace A350344

/-- `∩[A003277(n+1), A095738(n+1)]` -/
def P13032467074816861616.Spec : Prop :=
  ∀ n, (P13032467074816861616.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P10447619706607476293

`∩[A003277(n+1), A248020(n+1)]`
-/

namespace A350344.P10447619706607476293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P10447619706607476293

namespace A350344

/-- `∩[A003277(n+1), A248020(n+1)]` -/
def P10447619706607476293.Spec : Prop :=
  ∀ n, (P10447619706607476293.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P15921350948647483752

`∩[A003277(n+1), A346400(n+1)]`
-/

namespace A350344.P15921350948647483752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P15921350948647483752

namespace A350344

/-- `∩[A003277(n+1), A346400(n+1)]` -/
def P15921350948647483752.Spec : Prop :=
  ∀ n, (P15921350948647483752.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P7838353979424853199

`∩[A067887(n+1), A350342(n+1)]`
-/

namespace A350344.P7838353979424853199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P7838353979424853199

namespace A350344

/-- `∩[A067887(n+1), A350342(n+1)]` -/
def P7838353979424853199.Spec : Prop :=
  ∀ n, (P7838353979424853199.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P11693980681954784288

`∩[A333039(n+1), A350342(n+1)]`
-/

namespace A350344.P11693980681954784288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350344.P11693980681954784288

namespace A350344

/-- `∩[A333039(n+1), A350342(n+1)]` -/
def P11693980681954784288.Spec : Prop :=
  ∀ n, (P11693980681954784288.a n : ℤ) = A350344 (n + 1)

end A350344

/-! ## A350344.P11694539429734554162

`filter[A068502(n+1), A325964(#)]`
-/

namespace A350344.P11694539429734554162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A350344.P11694539429734554162

namespace A350344

/-- `filter[A068502(n+1), A325964(#)]` -/
def P11694539429734554162.Spec : Prop :=
  ∀ n, P11694539429734554162.a n = A350344 (n + 1)

end A350344

/-! ## A350344.P10972831445082058251

`filter[A068502(n+1), A355816(#)]`
-/

namespace A350344.P10972831445082058251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A350344.P10972831445082058251

namespace A350344

/-- `filter[A068502(n+1), A355816(#)]` -/
def P10972831445082058251.Spec : Prop :=
  ∀ n, P10972831445082058251.a n = A350344 (n + 1)

end A350344

/-!
# A350345: Squares of composite numbers k that are abelian orders.

The programs for A350345, the canonical program `A350345.P6937258205701611125` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350345 has offset 1).

The definition of A350345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350344, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350345.P6937258205701611125

`A350344(n+1)²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A350345

/-- `A350344(n+1)²` -/
def P6937258205701611125.Spec : Prop :=
  ∀ n, P6937258205701611125.a n = A350345 (n + 1)

theorem P6937258205701611125.correct : P6937258205701611125.Spec := by
  intro n
  simp only [A350345, Nat.add_sub_cancel]

end A350345

/-! ## A350345.P16824091246466675795

`A350344(n+1)^(A107151(n+1)%3)`
-/

namespace A350345.P16824091246466675795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350344 (n + 1) : ℚ) ^ (Int.tmod (A107151 (n + 1)) 3 : ℤ)

end

end A350345.P16824091246466675795

namespace A350345

/-- `A350344(n+1)^(A107151(n+1)%3)` -/
def P16824091246466675795.Spec : Prop :=
  ∀ n, P16824091246466675795.a n = (A350345 (n + 1) : ℚ)

end A350345

/-! ## A350345.P1627039991404442501

`A350344(n+1)^A000005(A084126(n+1))`
-/

namespace A350345.P1627039991404442501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350344 (n + 1) : ℚ) ^ (A000005 (A084126 (n + 1)).toNat : ℤ)

end

end A350345.P1627039991404442501

namespace A350345

/-- `A350344(n+1)^A000005(A084126(n+1))` -/
def P1627039991404442501.Spec : Prop :=
  ∀ n, P1627039991404442501.a n = (A350345 (n + 1) : ℚ)

end A350345

/-! ## A350345.P9354387601157875117

`A350344(n+1)^A000005(A042966(n+1))`
-/

namespace A350345.P9354387601157875117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350344 (n + 1) : ℚ) ^ (A000005 (A042966 (n + 1)).toNat : ℤ)

end

end A350345.P9354387601157875117

namespace A350345

/-- `A350344(n+1)^A000005(A042966(n+1))` -/
def P9354387601157875117.Spec : Prop :=
  ∀ n, P9354387601157875117.a n = (A350345 (n + 1) : ℚ)

end A350345

/-! ## A350345.P7475427775163140767

`∩[A050384(n+1), A248020(n+1)]²`
-/

namespace A350345.P7475427775163140767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P7475427775163140767

namespace A350345

/-- `∩[A050384(n+1), A248020(n+1)]²` -/
def P7475427775163140767.Spec : Prop :=
  ∀ n, (P7475427775163140767.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P4783273217005764240

`∩[A050384(n+1), A095738(n+1)]²`
-/

namespace A350345.P4783273217005764240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P4783273217005764240

namespace A350345

/-- `∩[A050384(n+1), A095738(n+1)]²` -/
def P4783273217005764240.Spec : Prop :=
  ∀ n, (P4783273217005764240.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P666720346956656026

`∩[A003624(n+1), A050384(n+1)]²`
-/

namespace A350345.P666720346956656026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P666720346956656026

namespace A350345

/-- `∩[A003624(n+1), A050384(n+1)]²` -/
def P666720346956656026.Spec : Prop :=
  ∀ n, (P666720346956656026.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P2622794265610128630

`∩[A003624(n+1), A350342(n+1)]²`
-/

namespace A350345.P2622794265610128630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P2622794265610128630

namespace A350345

/-- `∩[A003624(n+1), A350342(n+1)]²` -/
def P2622794265610128630.Spec : Prop :=
  ∀ n, (P2622794265610128630.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P18356509341248073495

`∩[A038509(n+1), A350342(n+1)]²`
-/

namespace A350345.P18356509341248073495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P18356509341248073495

namespace A350345

/-- `∩[A038509(n+1), A350342(n+1)]²` -/
def P18356509341248073495.Spec : Prop :=
  ∀ n, (P18356509341248073495.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P14223126103258379312

`∩[A024556(n+1), A350342(n+1)]²`
-/

namespace A350345.P14223126103258379312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P14223126103258379312

namespace A350345

/-- `∩[A024556(n+1), A350342(n+1)]²` -/
def P14223126103258379312.Spec : Prop :=
  ∀ n, (P14223126103258379312.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P17183268102813232433

`∩[A003277(n+1), A003624(n+1)]²`
-/

namespace A350345.P17183268102813232433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P17183268102813232433

namespace A350345

/-- `∩[A003277(n+1), A003624(n+1)]²` -/
def P17183268102813232433.Spec : Prop :=
  ∀ n, (P17183268102813232433.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P7058438960688257414

`∩[A003277(n+1), A095738(n+1)]²`
-/

namespace A350345.P7058438960688257414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P7058438960688257414

namespace A350345

/-- `∩[A003277(n+1), A095738(n+1)]²` -/
def P7058438960688257414.Spec : Prop :=
  ∀ n, (P7058438960688257414.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P14041580241474991239

`∩[A003277(n+1), A248020(n+1)]²`
-/

namespace A350345.P14041580241474991239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P14041580241474991239

namespace A350345

/-- `∩[A003277(n+1), A248020(n+1)]²` -/
def P14041580241474991239.Spec : Prop :=
  ∀ n, (P14041580241474991239.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P1882468851355554188

`∩[A003277(n+1), A346400(n+1)]²`
-/

namespace A350345.P1882468851355554188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P1882468851355554188

namespace A350345

/-- `∩[A003277(n+1), A346400(n+1)]²` -/
def P1882468851355554188.Spec : Prop :=
  ∀ n, (P1882468851355554188.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P184690297031748801

`∩[A067887(n+1), A350342(n+1)]²`
-/

namespace A350345.P184690297031748801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P184690297031748801

namespace A350345

/-- `∩[A067887(n+1), A350342(n+1)]²` -/
def P184690297031748801.Spec : Prop :=
  ∀ n, (P184690297031748801.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P9698578078703549089

`∩[A333039(n+1), A350342(n+1)]²`
-/

namespace A350345.P9698578078703549089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P9698578078703549089

namespace A350345

/-- `∩[A333039(n+1), A350342(n+1)]²` -/
def P9698578078703549089.Spec : Prop :=
  ∀ n, (P9698578078703549089.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P15532892692850572604

`∩[A216419(n+1), A350343(n+1)]`
-/

namespace A350345.P15532892692850572604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350345.P15532892692850572604

namespace A350345

/-- `∩[A216419(n+1), A350343(n+1)]` -/
def P15532892692850572604.Spec : Prop :=
  ∀ n, (P15532892692850572604.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P2880703789643555894

`∩[A003277(n+1), A068502(n+1)]²`
-/

namespace A350345.P2880703789643555894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P2880703789643555894

namespace A350345

/-- `∩[A003277(n+1), A068502(n+1)]²` -/
def P2880703789643555894.Spec : Prop :=
  ∀ n, (P2880703789643555894.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P14070985740241081778

`∩[A003624(n+1), A068502(n+1)]²`
-/

namespace A350345.P14070985740241081778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P14070985740241081778

namespace A350345

/-- `∩[A003624(n+1), A068502(n+1)]²` -/
def P14070985740241081778.Spec : Prop :=
  ∀ n, (P14070985740241081778.a n : ℤ) = A350345 (n + 1)

end A350345

/-! ## A350345.P4217630041323564323

`∩[A014567(n+1), A068502(n+1)]²`
-/

namespace A350345.P4217630041323564323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A350345.P4217630041323564323

namespace A350345

/-- `∩[A014567(n+1), A068502(n+1)]²` -/
def P4217630041323564323.Spec : Prop :=
  ∀ n, (P4217630041323564323.a n : ℤ) = A350345 (n + 1)

end A350345

/-!
# A350346: Binary numbers such that when read from right to left, the number of 0's never exceeds the number of 1's.

The programs for A350346, there is no canonical definition to state claims against.
-/

/-! ## A350346.P9120265546759375736

`A007088(A036991(n+1))`
-/

namespace A350346.P9120265546759375736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A036991 (n + 1)).toNat

end

end A350346.P9120265546759375736

/-! ## A350346.P15617962661405018951

`A185544(A036994(n+1)-1)`
-/

namespace A350346.P15617962661405018951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A036994 (n + 1) - 1).toNat

end

end A350346.P15617962661405018951

/-! ## A350346.P4665510524882927169

`A185544(2*A036991(n+1))`
-/

namespace A350346.P4665510524882927169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A036991 (n + 1)).toNat

end

end A350346.P4665510524882927169

/-! ## A350346.P14571022918729013448

`A185544(lcm(2, A036991(n+1)))`
-/

namespace A350346.P14571022918729013448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A036991 (n + 1)))

end

end A350346.P14571022918729013448

/-! ## A350346.P10091951100349823560

`A185544(xor(1, A036994(n+1)))`
-/

namespace A350346.P10091951100349823560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.xor 1 (A036994 (n + 1))).toNat

end

end A350346.P10091951100349823560

/-!
# A350347: Consider primitive 120-degree integer triangles with sides A < B < C = A002476(n). This sequence gives the values of B.

The programs for A350347, there is no canonical definition to state claims against.
-/

/-! ## A350347.P5637253867878187602

`A088586(eq[A035629(n+1), A055641(n)])`
-/

namespace A350347.P5637253867878187602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A350347.P5637253867878187602

/-! ## A350347.P11425664818322352797

`A088586(∑[A007737(n+1)!])`
-/

namespace A350347.P11425664818322352797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350347.P11425664818322352797

/-! ## A350347.P12671474010730859206

`A088586(A001222(∏[Δ[floor(n*sqrt(10))]]))`
-/

namespace A350347.P12671474010730859206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (10 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A350347.P12671474010730859206

/-! ## A350347.P9415472712796232056

`A088586(A172033(A039723(n))+n)`
-/

namespace A350347.P9415472712796232056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (A172033 (A039723 n).toNat + (n : ℤ)).toNat

end

end A350347.P9415472712796232056

/-!
# A350348: Lexicographically earliest sequence of distinct positive integers such that the Hankel matrix of any odd number of consecutive terms is invertible.

The programs for A350348, there is no canonical definition to state claims against.
-/

/-! ## A350348.P10955139330604902039

`A156775(A020603(n+1))+A127287(A222240(n))`
-/

namespace A350348.P10955139330604902039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156775 (A020603 (n + 1)).toNat + A127287 (A222240 n).toNat

end

end A350348.P10955139330604902039

/-! ## A350348.P7414001216783679945

`A284878(n+1)+A000005(A213173(n))`
-/

namespace A350348.P7414001216783679945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (n + 1) + A000005 (A213173 n).toNat

end

end A350348.P7414001216783679945

/-! ## A350348.P6768187181754031574

`A222240(A127287(n))+A000035(A159047(n+1))`
-/

namespace A350348.P6768187181754031574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A127287 n).toNat + A000035 (A159047 (n + 1)).toNat

end

end A350348.P6768187181754031574

/-! ## A350348.P12989912772002527126

`A222240(A127287(n))+A000035(A159049(n+1))`
-/

namespace A350348.P12989912772002527126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A127287 n).toNat + A000035 (A159049 (n + 1)).toNat

end

end A350348.P12989912772002527126

/-! ## A350348.P13662086187694998690

`Δ[A333769(A333630(n))+A000124(n)]`
-/

namespace A350348.P13662086187694998690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 (A333630 n).toNat + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350348.P13662086187694998690

/-!
# A350349: Lexicographically earliest increasing sequence of positive integers such that the Hankel matrix of any odd number of consecutive terms is invertible.

The programs for A350349, there is no canonical definition to state claims against.
-/

/-! ## A350349.P749025997298283502

`lt[A000010(A270365(2*n)), A339490(n+1)]`
-/

namespace A350349.P749025997298283502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A270365 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350349.P749025997298283502

/-! ## A350349.P11378367871707845241

`eq[1, gcd(A001318(n), A123142(n))]`
-/

namespace A350349.P11378367871707845241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001318 n) (A123142 (n + 64))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350349.P11378367871707845241

/-! ## A350349.P16145956827747082417

`lt[A294408(n), A294411(A294370(2*n+3))]`
-/

namespace A350349.P16145956827747082417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294411 (A294370 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350349.P16145956827747082417

/-! ## A350349.P3405165182410135201

`lt[A275043(n), A279967(A317099(n+1))]`
-/

namespace A350349.P3405165182410135201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279967 (A317099 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350349.P3405165182410135201

/-! ## A350349.P316131907507760701

`lt[1, A031076(A291636(2*n+1))]`
-/

namespace A350349.P316131907507760701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A291636 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350349.P316131907507760701

/-!
# A350350: Lexicographically earliest nondecreasing sequence of positive integers such that the Hankel matrix of any odd number of consecutive terms is invertible.

The programs for A350350, there is no canonical definition to state claims against.
-/

/-! ## A350350.P7142723561833901912

`A330330(A008619(n))+A093323(A251072(n))`
-/

namespace A350350.P7142723561833901912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330330 (A008619 n).toNat + A093323 (A251072 n).toNat

end

end A350350.P7142723561833901912

/-! ## A350350.P8145599536253485675

`∑{e}[A117855(n+1), A189796(#)]`
-/

namespace A350350.P8145599536253485675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A189796 (Nat.factorization (f1 n).natAbs p)

end

end A350350.P8145599536253485675

/-! ## A350350.P15418458231376331744

`A330330(A008619(n))+A008836(A077658(n))`
-/

namespace A350350.P15418458231376331744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330330 (A008619 n).toNat + A008836 (A077658 n).toNat

end

end A350350.P15418458231376331744

/-! ## A350350.P6563082529310464901

`A330330(A008619(n))+A057427(A043302(n+1))`
-/

namespace A350350.P6563082529310464901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330330 (A008619 n).toNat + A057427 (A043302 (n + 1)).toNat

end

end A350350.P6563082529310464901

/-! ## A350350.P16801087172089668785

`A137512(A362059(n+2))`
-/

namespace A350350.P16801087172089668785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A362059 (n + 2)).toNat

end

end A350350.P16801087172089668785

/-!
# A350352: Products of three or more distinct prime numbers.

The programs for A350352, there is no canonical definition to state claims against.
-/

/-! ## A350352.P12621310201559464132

`sqrt(A391320(n+1))`
-/

namespace A350352.P12621310201559464132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A391320 (n + 1) : ℝ)

end

end A350352.P12621310201559464132

/-! ## A350352.P2715318264572858920

`filter[A048945(n+2), A008966(#)]`
-/

namespace A350352.P2715318264572858920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A350352.P2715318264572858920

/-! ## A350352.P3812310370119319408

`filter[A048945(n+2), A354819(#)]`
-/

namespace A350352.P3812310370119319408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A350352.P3812310370119319408

/-! ## A350352.P11135755815021398129

`filter[A349794(n+1), A008966(#)]`
-/

namespace A350352.P11135755815021398129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A350352.P11135755815021398129

/-! ## A350352.P14274613586630877158

`filter[A349794(n+1), A354353(#)]`
-/

namespace A350352.P14274613586630877158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A350352.P14274613586630877158

/-! ## A350352.P11125252383715846985

`filter[A349794(n+1), A354819(#)]`
-/

namespace A350352.P11125252383715846985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A350352.P11125252383715846985

/-! ## A350352.P10183527619544443678

`∩[A048945(n+1), A120944(n+1)]`
-/

namespace A350352.P10183527619544443678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P10183527619544443678

/-! ## A350352.P16039134023162294256

`filter[A000977(n+1), A008966(#)]`
-/

namespace A350352.P16039134023162294256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A350352.P16039134023162294256

/-! ## A350352.P3444692518548524772

`filter[A000977(n+1), A354819(#)]`
-/

namespace A350352.P3444692518548524772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A350352.P3444692518548524772

/-! ## A350352.P1144908714545724910

`∩[A000469(n+1), A000977(n+1)]`
-/

namespace A350352.P1144908714545724910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P1144908714545724910

/-! ## A350352.P9032245077229514633

`∩[A000977(n+1), A120944(n+1)]`
-/

namespace A350352.P9032245077229514633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P9032245077229514633

/-! ## A350352.P11739046011931110362

`∩[A365829(n+1), A000977(n+1)]`
-/

namespace A350352.P11739046011931110362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P11739046011931110362

/-! ## A350352.P3790717386246432864

`lt[(A105570(n)+2)², A074206(n)]`
-/

namespace A350352.P3790717386246432864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105570 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350352.P3790717386246432864

/-! ## A350352.P9604555267416852144

`∩[A362605(n+1), A365829(n+1)]`
-/

namespace A350352.P9604555267416852144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P9604555267416852144

/-! ## A350352.P14721489005242999237

`∩[A000977(n+1), A067582(n+1)]`
-/

namespace A350352.P14721489005242999237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P14721489005242999237

/-! ## A350352.P10208760373985039081

`∩[A000977(n+1), A049197(n+1)]`
-/

namespace A350352.P10208760373985039081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P10208760373985039081

/-! ## A350352.P17066162608494596777

`∩[A048945(n+1), A049197(n+1)]`
-/

namespace A350352.P17066162608494596777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P17066162608494596777

/-! ## A350352.P9878652860353620965

`∩[A000977(n+1), A087249(n+1)]`
-/

namespace A350352.P9878652860353620965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P9878652860353620965

/-! ## A350352.P3134399186689359087

`∩[A048945(n+1), A087249(n+1)]`
-/

namespace A350352.P3134399186689359087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350352.P3134399186689359087

/-! ## A350352.P16860874109294810705

`filter[A122181(n+1), A008966(#)]`
-/

namespace A350352.P16860874109294810705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A350352.P16860874109294810705

/-!
# A350353: Numbers whose multiset of prime factors has a permutation that is not weakly alternating.

The programs for A350353, there is no canonical definition to state claims against.
-/

/-! ## A350353.P9430858747349041062

`lt[2, A050320(n+1)]+1`
-/

namespace A350353.P9430858747349041062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350353.P9430858747349041062

/-! ## A350353.P15269270963358411505

`lt[2, A086971(n+1)]+1`
-/

namespace A350353.P15269270963358411505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350353.P15269270963358411505

/-! ## A350353.P8644290763553380049

`lt[2, A096825(n+1)]+1`
-/

namespace A350353.P8644290763553380049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350353.P8644290763553380049

/-! ## A350353.P8990244561437936492

`lt[2, A366739(n+1)]+1`
-/

namespace A350353.P8990244561437936492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350353.P8990244561437936492

/-! ## A350353.P12635105716161493643

`lt[3, A238946(n+1)]+1`
-/

namespace A350353.P12635105716161493643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350353.P12635105716161493643

/-! ## A350353.P2991210146881059860

`lt[1, A295281(n+2)]+2`
-/

namespace A350353.P2991210146881059860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295281 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A350353.P2991210146881059860

/-! ## A350353.P2971829600385376359

`lt[4, A304649(n+1)]+1`
-/

namespace A350353.P2971829600385376359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350353.P2971829600385376359

/-! ## A350353.P5064619655915843508

`lt[6, A073184(n+1)]+1`
-/

namespace A350353.P5064619655915843508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350353.P5064619655915843508

/-! ## A350353.P6765639535571622810

`lt[7, A179926(n+1)]+1`
-/

namespace A350353.P6765639535571622810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350353.P6765639535571622810

/-!
# A350354: Number of up/down (or down/up) patterns of length n.

The programs for A350354, there is no canonical definition to state claims against.
-/

/-! ## A350354.P16389320149002425870

`ceil(A345194(n)/2)`
-/

namespace A350354.P16389320149002425870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A345194 n : ℚ) / 2⌉

end

end A350354.P16389320149002425870

/-! ## A350354.P17912830375789283672

`ceil(A349058(n)/4)`
-/

namespace A350354.P17912830375789283672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A349058 n : ℚ) / 4⌉

end

end A350354.P17912830375789283672

/-! ## A350354.P16820509812198371187

`A345194(A233583(n+1))/2`
-/

namespace A350354.P16820509812198371187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345194 (A233583 (n + 1)).toNat : ℚ) / 2

end

end A350354.P16820509812198371187

/-! ## A350354.P6144237143741325205

`A345194(n)/A020639(A002322(n+1))`
-/

namespace A350354.P6144237143741325205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345194 n : ℚ) / (A020639 (A002322 (n + 1)).toNat : ℚ)

end

end A350354.P6144237143741325205

/-! ## A350354.P5177161330217138135

`A345194(n)/A000005(A136548(n+1))`
-/

namespace A350354.P5177161330217138135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345194 n : ℚ) / (A000005 (A136548 (n + 1)).toNat : ℚ)

end

end A350354.P5177161330217138135

/-!
# A350355: Numbers k such that the k-th composition in standard order is up/down.

The programs for A350355, there is no canonical definition to state claims against.
-/

/-! ## A350355.P10072696943668156948

`record[and(A220523(n), A329793(n))]`
-/

namespace A350355.P10072696943668156948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220523 n) (A329793 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350355.P10072696943668156948

/-! ## A350355.P6075821350208387662

`eq[A051904(A356603(n)), A374516(n)]`
-/

namespace A350355.P6075821350208387662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A356603 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350355.P6075821350208387662

/-! ## A350355.P49843832418745894

`lt[A124763(n), A353854(A324058(n))]`
-/

namespace A350355.P49843832418745894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (A324058 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350355.P49843832418745894

/-! ## A350355.P4775647286074107923

`record[and(n, A320713(A320714(n+2)))]`
-/

namespace A350355.P4775647286074107923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A320713 (A320714 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350355.P4775647286074107923

/-! ## A350355.P1799094175158061341

`eq[A124763(n), A124763(A274835(n))]`
-/

namespace A350355.P1799094175158061341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A274835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350355.P1799094175158061341

/-!
# A350356: Numbers k such that the k-th composition in standard order is down/up.

The programs for A350356, there is no canonical definition to state claims against.
-/

/-! ## A350356.P12649536613779986703

`lt[A124759(n), A124755(A375123(2*n+1))]`
-/

namespace A350356.P12649536613779986703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124755 (A375123 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350356.P12649536613779986703

/-! ## A350356.P5480334253650780693

`eq[A329326(A333940(2*n+1)), A329326(n+1)]`
-/

namespace A350356.P5480334253650780693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A333940 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350356.P5480334253650780693

/-! ## A350356.P18148433008757963053

`eq[A124764(n), A165656(A221530(n+1))]`
-/

namespace A350356.P18148433008757963053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 (A221530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350356.P18148433008757963053

/-! ## A350356.P15282527731486520188

`eq[A064873(A360098(n+3)), A124764(n)]`
-/

namespace A350356.P15282527731486520188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 (A360098 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350356.P15282527731486520188

/-! ## A350356.P11782648836961074655

`lt[A124764(n), A353854(A144374(n+2))]`
-/

namespace A350356.P11782648836961074655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (A144374 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350356.P11782648836961074655

/-!
# A350357: Irregular triangle read by rows in which row n lists all elements of the arrangement of the correspondence divisor/part related to the last section of the set of partitions of n in the following order: row n lists the n-th row of A138121 followed by the n-th row of A336812.

The programs for A350357, there is no canonical definition to state claims against.
-/

/-! ## A350357.P15142711981305412473

`gcd(A232791(n+1), A232793(A212282(n+3)))`
-/

namespace A350357.P15142711981305412473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232791 (n + 1)) (A232793 (A212282 (n + 3)).toNat)

end

end A350357.P15142711981305412473

/-! ## A350357.P4270253409386030996

`A033925(gcd(2-n, A128455(n+1)))`
-/

namespace A350357.P4270253409386030996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033925 (Int.gcd (2 - (n : ℤ)) (A128455 (n + 1)))

end

end A350357.P4270253409386030996

/-! ## A350357.P5456407757496051602

`gcd(A053723(n), A163128(A225757(n+1)))`
-/

namespace A350357.P5456407757496051602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053723 n) (A163128 (A225757 (n + 1)).toNat)

end

end A350357.P5456407757496051602

/-! ## A350357.P12640769312447387760

`A246694(A178557(n+1)%A246694(n+1))`
-/

namespace A350357.P12640769312447387760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 (Int.tmod (A178557 (n + 1)) (A246694 (n + 1))).toNat

end

end A350357.P12640769312447387760

/-! ## A350357.P12399857343520635571

`gcd(A155892(A260994(2*(n+1))), A347648(n))`
-/

namespace A350357.P12399857343520635571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155892 (A260994 (2 * (n + 1))).toNat) (A347648 n)

end

end A350357.P12399857343520635571

/-!
# A350360: Number of unlabeled digraphs with n nodes containing a global sink (or source).

The programs for A350360, there is no canonical definition to state claims against.
-/

/-! ## A350360.P1761566564915175352

`A044975(floor(a(n-1)/2)+1)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A350360.P1761566564915175352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A044975 (⌊(a (n - 1) : ℚ) / 2⌋ + 1).toNat

end

end A350360.P1761566564915175352

/-!
# A350361: 2-tone chromatic number of a tree with maximum degree n.

The programs for A350361, the canonical program `A350361.P13363449972886878140` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350361 has offset 1).

The definition of A350361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350361.P13363449972886878140

`ceil((5+sqrt(1+8*(n+1)))/2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350361

/-- `ceil((5+sqrt(1+8*(n+1)))/2)` -/
def P13363449972886878140.Spec : Prop :=
  ∀ n, P13363449972886878140.a n = A350361 (n + 1)

theorem P13363449972886878140.correct : P13363449972886878140.Spec := by
  intro n
  simp only [A350361, Nat.add_sub_cancel]

end A350361

/-! ## A350361.P6904623761297807107

`abs(comp[C(n, 2)]+2-n)`
-/

namespace A350361.P6904623761297807107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (2 - (n : ℤ))|

end

end A350361.P6904623761297807107

namespace A350361

/-- `abs(comp[C(n, 2)]+2-n)` -/
def P6904623761297807107.Spec : Prop :=
  ∀ n, P6904623761297807107.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P7797071529850212246

`abs(2-(n-comp[C(n, 2)]))`
-/

namespace A350361.P7797071529850212246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))|

end

end A350361.P7797071529850212246

namespace A350361

/-- `abs(2-(n-comp[C(n, 2)]))` -/
def P7797071529850212246.Spec : Prop :=
  ∀ n, P7797071529850212246.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P15518522429882133939

`(comp[∑[n]]+7)%(n+5)`
-/

namespace A350361.P15518522429882133939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 7) % (n + 5)

end

end A350361.P15518522429882133939

namespace A350361

/-- `(comp[∑[n]]+7)%(n+5)` -/
def P15518522429882133939.Spec : Prop :=
  ∀ n, (P15518522429882133939.a n : ℤ) = A350361 (n + 1)

end A350361

/-! ## A350361.P9515199295784314619

`abs(comp[∑[n]]+xor(n, -1)+3)`
-/

namespace A350361.P9515199295784314619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + Int.xor (n : ℤ) (-1) + 3|

end

end A350361.P9515199295784314619

namespace A350361

/-- `abs(comp[∑[n]]+xor(n, -1)+3)` -/
def P9515199295784314619.Spec : Prop :=
  ∀ n, P9515199295784314619.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P2425313417126304226

`-xor(comp[∑[n]]-n+1, -1)`
-/

namespace A350361.P2425313417126304226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1) (-1)

end

end A350361.P2425313417126304226

namespace A350361

/-- `-xor(comp[∑[n]]-n+1, -1)` -/
def P2425313417126304226.Spec : Prop :=
  ∀ n, P2425313417126304226.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P10941763931995374598

`abs(a(n+3-a(n-1))+1)` with `a(0)=4`
-/

namespace A350361.P10941763931995374598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n + 3 - a (n - 1)) + 1

end

end A350361.P10941763931995374598

namespace A350361

/-- `abs(a(n+3-a(n-1))+1)` -/
def P10941763931995374598.Spec : Prop :=
  ∀ n, (P10941763931995374598.a n : ℤ) = A350361 (n + 1)

end A350361

/-! ## A350361.P2118959489981292616

`∑[A073423(n)²]`
-/

namespace A350361.P2118959489981292616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350361.P2118959489981292616

namespace A350361

/-- `∑[A073423(n)²]` -/
def P2118959489981292616.Spec : Prop :=
  ∀ n, P2118959489981292616.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P17176573653602437587

`A002024(n+1)+3`
-/

namespace A350361.P17176573653602437587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + 3

end

end A350361.P17176573653602437587

namespace A350361

/-- `A002024(n+1)+3` -/
def P17176573653602437587.Spec : Prop :=
  ∀ n, P17176573653602437587.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P16952438503162081124

`A020705(A003056(n))`
-/

namespace A350361.P16952438503162081124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A003056 n).toNat

end

end A350361.P16952438503162081124

namespace A350361

/-- `A020705(A003056(n))` -/
def P16952438503162081124.Spec : Prop :=
  ∀ n, P16952438503162081124.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P7810800492662029085

`A028276(A057944(n))`
-/

namespace A350361.P7810800492662029085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (A057944 n).toNat

end

end A350361.P7810800492662029085

namespace A350361

/-- `A028276(A057944(n))` -/
def P7810800492662029085.Spec : Prop :=
  ∀ n, P7810800492662029085.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P3576133658327635749

`A019303(A131507(n))`
-/

namespace A350361.P3576133658327635749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 (A131507 n).toNat

end

end A350361.P3576133658327635749

namespace A350361

/-- `A019303(A131507(n))` -/
def P3576133658327635749.Spec : Prop :=
  ∀ n, P3576133658327635749.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P9278521350709189263

`A028263(A127739(n+1))`
-/

namespace A350361.P9278521350709189263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (A127739 (n + 1)).toNat

end

end A350361.P9278521350709189263

namespace A350361

/-- `A028263(A127739(n+1))` -/
def P9278521350709189263.Spec : Prop :=
  ∀ n, P9278521350709189263.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P1373065760617397070

`A266977(A261491(n+1))`
-/

namespace A350361.P1373065760617397070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A261491 (n + 1)).toNat

end

end A350361.P1373065760617397070

namespace A350361

/-- `A266977(A261491(n+1))` -/
def P1373065760617397070.Spec : Prop :=
  ∀ n, P1373065760617397070.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P15384300977655139149

`2+A004736(n+1)+A002260(n+1)`
-/

namespace A350361.P15384300977655139149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + (A004736 (n + 1) + A002260 (n + 1))

end

end A350361.P15384300977655139149

namespace A350361

/-- `2+A004736(n+1)+A002260(n+1)` -/
def P15384300977655139149.Spec : Prop :=
  ∀ n, P15384300977655139149.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P15909612842995508903

`round(log2(A224380(n+2)))`
-/

namespace A350361.P15909612842995508903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A224380 (n + 2) : ℝ))

end

end A350361.P15909612842995508903

namespace A350361

/-- `round(log2(A224380(n+2)))` -/
def P15909612842995508903.Spec : Prop :=
  ∀ n, P15909612842995508903.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P7826248252433454763

`A133196(A127739(n+1)+1)`
-/

namespace A350361.P7826248252433454763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (A127739 (n + 1) + 1).toNat

end

end A350361.P7826248252433454763

namespace A350361

/-- `A133196(A127739(n+1)+1)` -/
def P7826248252433454763.Spec : Prop :=
  ∀ n, P7826248252433454763.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P659813621222887482

`A332026(A127739(n+1)+1)`
-/

namespace A350361.P659813621222887482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332026 (A127739 (n + 1) + 1).toNat

end

end A350361.P659813621222887482

namespace A350361

/-- `A332026(A127739(n+1)+1)` -/
def P659813621222887482.Spec : Prop :=
  ∀ n, P659813621222887482.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P341079706486139891

`A133196(A014132(n+1))`
-/

namespace A350361.P341079706486139891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (A014132 (n + 1)).toNat

end

end A350361.P341079706486139891

namespace A350361

/-- `A133196(A014132(n+1))` -/
def P341079706486139891.Spec : Prop :=
  ∀ n, P341079706486139891.a n = A350361 (n + 1)

end A350361

/-! ## A350361.P10102197333410156871

`A133196(A181133(n+2))`
-/

namespace A350361.P10102197333410156871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (A181133 (n + 2)).toNat

end

end A350361.P10102197333410156871

namespace A350361

/-- `A133196(A181133(n+2))` -/
def P10102197333410156871.Spec : Prop :=
  ∀ n, P10102197333410156871.a n = A350361 (n + 1)

end A350361

/-!
# A350362: 2-tone chromatic number of an n-cycle.

The programs for A350362, the canonical program `A350362.P7776036973515401096` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350362 has offset 3).

The definition of A350362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350362.P7776036973515401096

`char[C(2, n)²]+5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350362

/-- `char[C(2, n)²]+5` -/
def P7776036973515401096.Spec : Prop :=
  ∀ n, (P7776036973515401096.a n : ℤ) = A350362 (n + 3)

theorem P7776036973515401096.correct : P7776036973515401096.Spec := by
  intro n
  simp only [A350362, Nat.add_sub_cancel]

end A350362

/-!
# A350364: Array read by antidiagonals: T(n,k) is the number of sequences of length n with terms in 1..k such that all Hankel matrices of an odd number of consecutive terms are invertible, n, k >= 0.

The programs for A350364, there is no canonical definition to state claims against.
-/

/-! ## A350364.P14006863604261562567

`A089975(A061579(n))^A010152(n)²`
-/

namespace A350364.P14006863604261562567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089975 (A061579 n).toNat : ℚ) ^ (A010152 n ^ 2 : ℤ)

end

end A350364.P14006863604261562567

/-! ## A350364.P9132246782295556167

`A089975(A061579(n)%A051592(n+1))`
-/

namespace A350364.P9132246782295556167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089975 (Int.tmod (A061579 n) (A051592 (n + 1))).toNat

end

end A350364.P9132246782295556167

/-! ## A350364.P16912978339814042491

`A089975(A061579(n))^A046665(n+1)!`
-/

namespace A350364.P16912978339814042491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089975 (A061579 n).toNat ^ Nat.factorial (A046665 (n + 1)).toNat

end

end A350364.P16912978339814042491

/-! ## A350364.P8933510287065958429

`A089975(A061579(n))^A014963(A108098(n+1))`
-/

namespace A350364.P8933510287065958429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089975 (A061579 n).toNat : ℚ) ^ (A014963 (A108098 (n + 1)).toNat : ℤ)

end

end A350364.P8933510287065958429

/-! ## A350364.P11660068682618985045

`A353436(n)+A353414(A077497(n+1))`
-/

namespace A350364.P11660068682618985045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353436 n + A353414 (A077497 (n + 1)).toNat

end

end A350364.P11660068682618985045

/-!
# A350365: Array read by antidiagonals: T(n,k) is the number of sequences of length 2*n+1 with terms in 0..k such that the Hankel matrix of the sequence is singular, but the Hankel matrix of any proper subsequence with an odd number of consecutive terms is invertible, n, k >= 0.

The programs for A350365, there is no canonical definition to state claims against.
-/

/-! ## A350365.P776035054504585520

`A322279(A335446(A232697(n))+n)`
-/

namespace A350365.P776035054504585520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A335446 (A232697 n).toNat + (n : ℤ)).toNat

end

end A350365.P776035054504585520

/-! ## A350365.P12704166980578687748

`A350529(n)+A335446(A232697(n))`
-/

namespace A350365.P12704166980578687748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n + A335446 (A232697 n).toNat

end

end A350365.P12704166980578687748

/-! ## A350365.P9984351027411087080

`A353434(n)+A335446(A232697(n))`
-/

namespace A350365.P9984351027411087080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n + A335446 (A232697 n).toNat

end

end A350365.P9984351027411087080

/-! ## A350365.P18231606744345738463

`A089840(A208660(n+1))`
-/

namespace A350365.P18231606744345738463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (A208660 (n + 1)).toNat

end

end A350365.P18231606744345738463

/-!
# A350366: a(n) = [x^n] Product_{k=1..n} (1 + k*x)/(1 - k*x).

The programs for A350366, there is no canonical definition to state claims against.
-/

/-! ## A350366.P13901939111092248405

`A383900(∑[4*n])`
-/

namespace A350366.P13901939111092248405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383900 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350366.P13901939111092248405

/-! ## A350366.P3154602446819346087

`A102276(n)*A383900(2*(n²+n))`
-/

namespace A350366.P3154602446819346087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102276 n * A383900 (2 * (n ^ 2 + n))

end

end A350366.P3154602446819346087

/-!
# A350367: Triangular numbers that are the sum of two distinct nonzero triangular numbers in more than one way.

The programs for A350367, there is no canonical definition to state claims against.
-/

/-! ## A350367.P11045265023077503982

`A000217(lt[5, ∑{d}[(2*n+1)²+1, val(#, 2)]])`
-/

namespace A350367.P11045265023077503982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), SequenceMachineLib.valuation d 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350367.P11045265023077503982

/-! ## A350367.P14905731235696668998

`A000217(lt[5, A160651(n)])`
-/

namespace A350367.P14905731235696668998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A350367.P14905731235696668998

/-! ## A350367.P17623300514856040016

`∩[A001971(A299707(n+1)), A000217(n)]`
-/

namespace A350367.P17623300514856040016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A299707 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350367.P17623300514856040016

/-! ## A350367.P2894192671559847815

`lt[A050795(A226314(n+1)), A053603(n)]`
-/

namespace A350367.P2894192671559847815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (A226314 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350367.P2894192671559847815

/-! ## A350367.P4820725208619741146

`∩[A185979(n+1), A000217(n)]`
-/

namespace A350367.P4820725208619741146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350367.P4820725208619741146

/-!
# A350368: Triangular numbers that are the sum of two distinct nonzero triangular numbers in exactly two ways.

The programs for A350368, there is no canonical definition to state claims against.
-/

/-! ## A350368.P17730093550537690268

`A000217(eq[6, A160651(n)])`
-/

namespace A350368.P17730093550537690268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350368.P17730093550537690268

/-! ## A350368.P7606942073608261275

`A000217(eq[12, A278244(n)])`
-/

namespace A350368.P7606942073608261275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350368.P7606942073608261275

/-! ## A350368.P7393612366543464500

`A161680(eq[8, A028949(n+1)])`
-/

namespace A350368.P7393612366543464500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350368.P7393612366543464500

/-! ## A350368.P10062943552584265452

`A133263(eq[6, A160651(n)])-2`
-/

namespace A350368.P10062943552584265452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A350368.P10062943552584265452

/-! ## A350368.P10639459828351675705

`A000217(eq[8, A261609(2*n+1)])`
-/

namespace A350368.P10639459828351675705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350368.P10639459828351675705

/-!
# A350369: a(n) is the length of the longest sequence of consecutive tripling steps in the Collatz (3x+1) sequence beginning at n.

The programs for A350369, there is no canonical definition to state claims against.
-/

/-! ## A350369.P9260116790535750562

`A221469((n+1)/2^val(n+1, 2))%A356232(2*n+1)`
-/

namespace A350369.P9260116790535750562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (A356232 (2 * n + 1))

end

end A350369.P9260116790535750562

/-! ## A350369.P6999203937331713014

`A221469(A000265(n+1)%A020602(n+1))`
-/

namespace A350369.P6999203937331713014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (Int.tmod (A000265 (n + 1)) (A020602 (n + 1))).toNat

end

end A350369.P6999203937331713014

/-! ## A350369.P9034320405670325397

`A221469(A000265(n+1))^A000041(A243831(n))`
-/

namespace A350369.P9034320405670325397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221469 (A000265 (n + 1)).toNat : ℚ) ^ (A000041 (A243831 n).toNat : ℤ)

end

end A350369.P9034320405670325397

/-! ## A350369.P12409753228391121693

`A221469(A060819(n+1)%A123910(n+1))`
-/

namespace A350369.P12409753228391121693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (Int.tmod (A060819 (n + 1)) (A123910 (n + 1))).toNat

end

end A350369.P12409753228391121693

/-! ## A350369.P9449634132190207139

`A333381(A037284(n+1))`
-/

namespace A350369.P9449634132190207139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A037284 (n + 1)).toNat

end

end A350369.P9449634132190207139

/-!
# A350370: a(n) is the smallest k such that the Collatz sequence for k includes a record number of consecutive tripling steps.

The programs for A350370, there is no canonical definition to state claims against.
-/

/-! ## A350370.P10602706907182114858

`record[A213215(n+1)-char[5]]`
-/

namespace A350370.P10602706907182114858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213215 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350370.P10602706907182114858

/-! ## A350370.P10134568967680558662

`record[A213215(n-4*floor(n/10)+1)]`
-/

namespace A350370.P10134568967680558662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213215 ((n : ℤ) - 4 * ⌊(n : ℚ) / 10⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350370.P10134568967680558662

/-! ## A350370.P17963153785111583468

`A213215(∑[A214071(2*n+5)])`
-/

namespace A350370.P17963153785111583468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214071 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213215 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350370.P17963153785111583468

/-! ## A350370.P16749939445544022822

`record[A213215(n+1)%A220088(n+2)]`
-/

namespace A350370.P16749939445544022822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213215 (n + 1)) (A220088 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350370.P16749939445544022822

/-!
# A350371: Numbers with exactly 4 semiprime divisors.

The programs for A350371, the canonical program `A350371.P8948380387437329593` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350371 has offset 1).

The definition of A350371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350371.P8948380387437329593

`filter[A033992(n+1), A359466(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A350371

/-- `filter[A033992(n+1), A359466(#)]` -/
def P8948380387437329593.Spec : Prop :=
  ∀ n, P8948380387437329593.a n = A350371 (n + 1)

theorem P8948380387437329593.correct : P8948380387437329593.Spec := by
  intro n
  simp only [A350371, Nat.add_sub_cancel]

end A350371

/-! ## A350371.P6312578587957261588

`∩[A033992(n+1), A190641(n+1)]`
-/

namespace A350371.P6312578587957261588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350371.P6312578587957261588

namespace A350371

/-- `∩[A033992(n+1), A190641(n+1)]` -/
def P6312578587957261588.Spec : Prop :=
  ∀ n, (P6312578587957261588.a n : ℤ) = A350371 (n + 1)

end A350371

/-! ## A350371.P10891954284366328476

`filter[A214195(n+1), A359466(#)]`
-/

namespace A350371.P10891954284366328476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A350371.P10891954284366328476

namespace A350371

/-- `filter[A214195(n+1), A359466(#)]` -/
def P10891954284366328476.Spec : Prop :=
  ∀ n, P10891954284366328476.a n = A350371 (n + 1)

end A350371

/-! ## A350371.P1227898584612277116

`∩[A190641(n+1), A214195(n+1)]`
-/

namespace A350371.P1227898584612277116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350371.P1227898584612277116

namespace A350371

/-- `∩[A190641(n+1), A214195(n+1)]` -/
def P1227898584612277116.Spec : Prop :=
  ∀ n, (P1227898584612277116.a n : ℤ) = A350371 (n + 1)

end A350371

/-! ## A350371.P17804884821910077041

`eq[4, A086971(round(acot(n)+n))]`
-/

namespace A350371.P17804884821910077041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350371.P17804884821910077041

namespace A350371

/-- `eq[4, A086971(round(acot(n)+n))]` -/
def P17804884821910077041.Spec : Prop :=
  ∀ n, (P17804884821910077041.a n : ℤ) = A350371 (n + 1)

end A350371

/-! ## A350371.P2951399259352656783

`eq[2, sqrt(A086971(n+1))]+1`
-/

namespace A350371.P2951399259352656783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A086971 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A350371.P2951399259352656783

namespace A350371

/-- `eq[2, sqrt(A086971(n+1))]+1` -/
def P2951399259352656783.Spec : Prop :=
  ∀ n, (P2951399259352656783.a n : ℤ) = A350371 (n + 1)

end A350371

/-! ## A350371.P13626195479607593349

`eq[4, A056674(C(a(n-4), n)+n)]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A350371.P13626195479607593349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0, 3] fun n f2 =>
  A056674 (Nat.choose (f2 (n - 4)).toNat n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350371.P13626195479607593349

namespace A350371

/-- `eq[4, A056674(C(a(n-4), n)+n)]` -/
def P13626195479607593349.Spec : Prop :=
  ∀ n, (P13626195479607593349.a n : ℤ) = A350371 (n + 1)

end A350371

/-! ## A350371.P16070430266793834260

`eq[4, A056674(A028310(n))]`
-/

namespace A350371.P16070430266793834260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350371.P16070430266793834260

namespace A350371

/-- `eq[4, A056674(A028310(n))]` -/
def P16070430266793834260.Spec : Prop :=
  ∀ n, (P16070430266793834260.a n : ℤ) = A350371 (n + 1)

end A350371

/-! ## A350371.P7566932976875873757

`A020725(eq[4, A056674(n+1)])`
-/

namespace A350371.P7566932976875873757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350371.P7566932976875873757

namespace A350371

/-- `A020725(eq[4, A056674(n+1)])` -/
def P7566932976875873757.Spec : Prop :=
  ∀ n, P7566932976875873757.a n = A350371 (n + 1)

end A350371

/-! ## A350371.P2143723914817395857

`A011760(eq[4, A086971(n+1)])`
-/

namespace A350371.P2143723914817395857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350371.P2143723914817395857

namespace A350371

/-- `A011760(eq[4, A086971(n+1)])` -/
def P2143723914817395857.Spec : Prop :=
  ∀ n, P2143723914817395857.a n = A350371 (n + 1)

end A350371

/-! ## A350371.P17100061289899526506

`A020725(eq[4, A086971(n+1)])`
-/

namespace A350371.P17100061289899526506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350371.P17100061289899526506

namespace A350371

/-- `A020725(eq[4, A086971(n+1)])` -/
def P17100061289899526506.Spec : Prop :=
  ∀ n, P17100061289899526506.a n = A350371 (n + 1)

end A350371

/-! ## A350371.P17730417540788580828

`A061767(eq[4, A056674(n+1)])`
-/

namespace A350371.P17730417540788580828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350371.P17730417540788580828

namespace A350371

/-- `A061767(eq[4, A056674(n+1)])` -/
def P17730417540788580828.Spec : Prop :=
  ∀ n, P17730417540788580828.a n = A350371 (n + 1)

end A350371

/-! ## A350371.P11121698684554817986

`A065475(eq[4, A056674(n+1)])`
-/

namespace A350371.P11121698684554817986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350371.P11121698684554817986

namespace A350371

/-- `A065475(eq[4, A056674(n+1)])` -/
def P11121698684554817986.Spec : Prop :=
  ∀ n, P11121698684554817986.a n = A350371 (n + 1)

end A350371

/-! ## A350371.P14882417697323595479

`A061767(eq[4, A086971(n+1)])`
-/

namespace A350371.P14882417697323595479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350371.P14882417697323595479

namespace A350371

/-- `A061767(eq[4, A086971(n+1)])` -/
def P14882417697323595479.Spec : Prop :=
  ∀ n, P14882417697323595479.a n = A350371 (n + 1)

end A350371

/-!
# A350372: Numbers with exactly 5 semiprime divisors.

The programs for A350372, the canonical program `A350372.P2646849622102892745` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350372 has offset 1).

The definition of A350372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350372.P13649916830805845878

`∩[A119251(n+1), A338539(n+1)]`
-/

namespace A350372.P13649916830805845878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P13649916830805845878

namespace A350372

/-- `∩[A119251(n+1), A338539(n+1)]` -/
def P13649916830805845878.Spec : Prop :=
  ∀ n, (P13649916830805845878.a n : ℤ) = A350372 (n + 1)

end A350372

/-! ## A350372.P13426116570182106186

`∩[A033992(n+1), A119251(n+1)]`
-/

namespace A350372.P13426116570182106186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P13426116570182106186

namespace A350372

/-- `∩[A033992(n+1), A119251(n+1)]` -/
def P13426116570182106186.Spec : Prop :=
  ∀ n, (P13426116570182106186.a n : ℤ) = A350372 (n + 1)

end A350372

/-! ## A350372.P10732368546986704782

`∩[A119251(n+1), A214195(n+1)]`
-/

namespace A350372.P10732368546986704782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P10732368546986704782

namespace A350372

/-- `∩[A119251(n+1), A214195(n+1)]` -/
def P10732368546986704782.Spec : Prop :=
  ∀ n, (P10732368546986704782.a n : ℤ) = A350372 (n + 1)

end A350372

/-! ## A350372.P2646849622102892745

`∩[A033992(n+1), A338539(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A350372

/-- `∩[A033992(n+1), A338539(n+1)]` -/
def P2646849622102892745.Spec : Prop :=
  ∀ n, (P2646849622102892745.a n : ℤ) = A350372 (n + 1)

theorem P2646849622102892745.correct : P2646849622102892745.Spec := by
  intro n
  simp only [A350372, Nat.add_sub_cancel]

end A350372

/-! ## A350372.P16700488648051050915

`∩[A214195(n+1), A338539(n+1)]`
-/

namespace A350372.P16700488648051050915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P16700488648051050915

namespace A350372

/-- `∩[A214195(n+1), A338539(n+1)]` -/
def P16700488648051050915.Spec : Prop :=
  ∀ n, (P16700488648051050915.a n : ℤ) = A350372 (n + 1)

end A350372

/-! ## A350372.P18421406258077257933

`eq[5, A086971(round(acot(n)+n))]`
-/

namespace A350372.P18421406258077257933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350372.P18421406258077257933

namespace A350372

/-- `eq[5, A086971(round(acot(n)+n))]` -/
def P18421406258077257933.Spec : Prop :=
  ∀ n, (P18421406258077257933.a n : ℤ) = A350372 (n + 1)

end A350372

/-! ## A350372.P14336382193212598652

`eq[5, A086971(A028310(n))]`
-/

namespace A350372.P14336382193212598652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350372.P14336382193212598652

namespace A350372

/-- `eq[5, A086971(A028310(n))]` -/
def P14336382193212598652.Spec : Prop :=
  ∀ n, (P14336382193212598652.a n : ℤ) = A350372 (n + 1)

end A350372

/-! ## A350372.P2561695930385919116

`A011760(eq[5, A086971(n+1)])`
-/

namespace A350372.P2561695930385919116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350372.P2561695930385919116

namespace A350372

/-- `A011760(eq[5, A086971(n+1)])` -/
def P2561695930385919116.Spec : Prop :=
  ∀ n, P2561695930385919116.a n = A350372 (n + 1)

end A350372

/-! ## A350372.P2237122531150083994

`A020725(eq[5, A086971(n+1)])`
-/

namespace A350372.P2237122531150083994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350372.P2237122531150083994

namespace A350372

/-- `A020725(eq[5, A086971(n+1)])` -/
def P2237122531150083994.Spec : Prop :=
  ∀ n, P2237122531150083994.a n = A350372 (n + 1)

end A350372

/-! ## A350372.P13616335189145123566

`A065475(eq[5, A086971(n+1)])`
-/

namespace A350372.P13616335189145123566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350372.P13616335189145123566

namespace A350372

/-- `A065475(eq[5, A086971(n+1)])` -/
def P13616335189145123566.Spec : Prop :=
  ∀ n, P13616335189145123566.a n = A350372 (n + 1)

end A350372

/-! ## A350372.P1968628302366842394

`filter[A338539(n+1), A092248(#)]`
-/

namespace A350372.P1968628302366842394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A350372.P1968628302366842394

namespace A350372

/-- `filter[A338539(n+1), A092248(#)]` -/
def P1968628302366842394.Spec : Prop :=
  ∀ n, P1968628302366842394.a n = A350372 (n + 1)

end A350372

/-!
# A350373: Numbers with exactly 6 semiprime divisors.

The programs for A350373, the canonical program `A350373.P14960891234703651044` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350373 has offset 1).

The definition of A350373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350373.P2086563469352169803

`eq[6, A086971(round(acot(n)+n))]`
-/

namespace A350373.P2086563469352169803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350373.P2086563469352169803

namespace A350373

/-- `eq[6, A086971(round(acot(n)+n))]` -/
def P2086563469352169803.Spec : Prop :=
  ∀ n, (P2086563469352169803.a n : ℤ) = A350373 (n + 1)

end A350373

/-! ## A350373.P14960891234703651044

`eq[6, A086971(A028310(n))]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A350373

/-- `eq[6, A086971(A028310(n))]` -/
def P14960891234703651044.Spec : Prop :=
  ∀ n, (P14960891234703651044.a n : ℤ) = A350373 (n + 1)

theorem P14960891234703651044.correct : P14960891234703651044.Spec := by
  intro n
  simp only [A350373, Nat.add_sub_cancel]

end A350373

/-! ## A350373.P9279163125249477960

`A020725(eq[6, A086971(n+1)])`
-/

namespace A350373.P9279163125249477960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350373.P9279163125249477960

namespace A350373

/-- `A020725(eq[6, A086971(n+1)])` -/
def P9279163125249477960.Spec : Prop :=
  ∀ n, P9279163125249477960.a n = A350373 (n + 1)

end A350373

/-! ## A350373.P14128002870937899622

`A065475(eq[6, A086971(n+1)])`
-/

namespace A350373.P14128002870937899622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350373.P14128002870937899622

namespace A350373

/-- `A065475(eq[6, A086971(n+1)])` -/
def P14128002870937899622.Spec : Prop :=
  ∀ n, P14128002870937899622.a n = A350373 (n + 1)

end A350373

/-! ## A350373.P7053702382424049199

`A153152(eq[6, A086971(n+1)])`
-/

namespace A350373.P7053702382424049199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350373.P7053702382424049199

namespace A350373

/-- `A153152(eq[6, A086971(n+1)])` -/
def P7053702382424049199.Spec : Prop :=
  ∀ n, P7053702382424049199.a n = A350373 (n + 1)

end A350373

/-!
# A350374: Numbers with exactly 7 semiprime divisors.

The programs for A350374, the canonical program `A350374.P17025696370386429167` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350374 has offset 1).

The definition of A350374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6856 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350374.P17025696370386429167

`filter[A200521(n+1), A359466(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A350374

/-- `filter[A200521(n+1), A359466(#)]` -/
def P17025696370386429167.Spec : Prop :=
  ∀ n, P17025696370386429167.a n = A350374 (n + 1)

theorem P17025696370386429167.correct : P17025696370386429167.Spec := by
  intro n
  simp only [A350374, Nat.add_sub_cancel]

end A350374

/-! ## A350374.P8435702808059998977

`filter[A033993(n+1), A359466(#)]`
-/

namespace A350374.P8435702808059998977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A350374.P8435702808059998977

namespace A350374

/-- `filter[A033993(n+1), A359466(#)]` -/
def P8435702808059998977.Spec : Prop :=
  ∀ n, P8435702808059998977.a n = A350374 (n + 1)

end A350374

/-! ## A350374.P14434346974201511706

`eq[7, A086971(round(acot(n)+n))]`
-/

namespace A350374.P14434346974201511706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350374.P14434346974201511706

namespace A350374

/-- `eq[7, A086971(round(acot(n)+n))]` -/
def P14434346974201511706.Spec : Prop :=
  ∀ n, (P14434346974201511706.a n : ℤ) = A350374 (n + 1)

end A350374

/-! ## A350374.P15315045038712919728

`A065475(eq[7, A086971(n+1)])`
-/

namespace A350374.P15315045038712919728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350374.P15315045038712919728

namespace A350374

/-- `A065475(eq[7, A086971(n+1)])` -/
def P15315045038712919728.Spec : Prop :=
  ∀ n, P15315045038712919728.a n = A350374 (n + 1)

end A350374

/-! ## A350374.P13316666635915734120

`∩[A049094(n+1), A200521(n+1)]`
-/

namespace A350374.P13316666635915734120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350374.P13316666635915734120

namespace A350374

/-- `∩[A049094(n+1), A200521(n+1)]` -/
def P13316666635915734120.Spec : Prop :=
  ∀ n, (P13316666635915734120.a n : ℤ) = A350374 (n + 1)

end A350374

/-!
# A350375: Numbers with exactly 8 semiprime divisors.

The programs for A350375, the canonical program `A350375.P15315086322075171755` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350375 has offset 1).

The definition of A350375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350375.P15315086322075171755

`∩[A200521(n+1), A338539(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A350375

/-- `∩[A200521(n+1), A338539(n+1)]` -/
def P15315086322075171755.Spec : Prop :=
  ∀ n, (P15315086322075171755.a n : ℤ) = A350375 (n + 1)

theorem P15315086322075171755.correct : P15315086322075171755.Spec := by
  intro n
  simp only [A350375, Nat.add_sub_cancel]

end A350375

/-! ## A350375.P12601205301008007968

`∩[A033993(n+1), A338539(n+1)]`
-/

namespace A350375.P12601205301008007968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350375.P12601205301008007968

namespace A350375

/-- `∩[A033993(n+1), A338539(n+1)]` -/
def P12601205301008007968.Spec : Prop :=
  ∀ n, (P12601205301008007968.a n : ℤ) = A350375 (n + 1)

end A350375

/-! ## A350375.P1503445738171457276

`∩[A036116(n+1), A338539(n+1)]`
-/

namespace A350375.P1503445738171457276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350375.P1503445738171457276

namespace A350375

/-- `∩[A036116(n+1), A338539(n+1)]` -/
def P1503445738171457276.Spec : Prop :=
  ∀ n, (P1503445738171457276.a n : ℤ) = A350375 (n + 1)

end A350375

/-!
# A350376: a(n) = [x^n] Product_{k=1..n} 1/(1 - k*x)^2.

The programs for A350376, there is no canonical definition to state claims against.
-/

/-! ## A350376.P61305314294071615

`A383843(∑[4*n])`
-/

namespace A350376.P61305314294071615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350376.P61305314294071615

/-! ## A350376.P16966763535720663399

`A383843(A046092(n))+A007033(n+1)`
-/

namespace A350376.P16966763535720663399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383843 (A046092 n).toNat + A007033 (n + 1)

end

end A350376.P16966763535720663399

/-!
# A350377: Numbers k such that Sum_{j=1..k} (pi(k*j-j+1) - pi(k*j-j)) = Sum_{i=1..k} (pi(k*(i-1)+i) - pi(k*(i-1)+i-1)).

The programs for A350377, there is no canonical definition to state claims against.
-/

/-! ## A350377.P8055177900532235041

`eq[A221490(n+1), A344349(n+1)]+1`
-/

namespace A350377.P8055177900532235041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350377.P8055177900532235041

/-!
# A350379: Consider integer-sided triangles having integer area and let d be the distance between the center of the inscribed circle and the center of the circumscribed circle. The sequence lists the set of distances d which are prime numbers.

The programs for A350379, there is no canonical definition to state claims against.
-/

/-! ## A350379.P10679674978943788319

`A189411(A002263(n+1))`
-/

namespace A350379.P10679674978943788319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189411 (A002263 (n + 1)).toNat

end

end A350379.P10679674978943788319

/-!
# A350380: Triangle read by rows in which row n lists A014963(d), the exponential of Mangoldt function, for each divisor d of n.

The programs for A350380, there is no canonical definition to state claims against.
-/

/-! ## A350380.P168974723877992667

`A014963(A027750(n+1))`
-/

namespace A350380.P168974723877992667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A027750 (n + 1)).toNat

end

end A350380.P168974723877992667

/-! ## A350380.P5611734339614843020

`A014963(abs(A233773(n+1)))`
-/

namespace A350380.P5611734339614843020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 |A233773 (n + 1)|.toNat

end

end A350380.P5611734339614843020

/-! ## A350380.P8577116101483568236

`A014963(A263730(n+2)+1)`
-/

namespace A350380.P8577116101483568236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A263730 (n + 2) + 1).toNat

end

end A350380.P8577116101483568236

/-! ## A350380.P809397205305046725

`A014973(∏{p}[A027750(n+1), #])`
-/

namespace A350380.P809397205305046725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A350380.P809397205305046725

/-! ## A350380.P7224738372153619164

`A089026(∏{p}[A027750(n+1), #])`
-/

namespace A350380.P7224738372153619164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A350380.P7224738372153619164

/-! ## A350380.P6155699823930523239

`A100994(∏{p}[A027750(n+1), #])`
-/

namespace A350380.P6155699823930523239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A350380.P6155699823930523239

/-! ## A350380.P14810840508968977044

`A089026(∏{p}[A263730(n+2)+1, #])`
-/

namespace A350380.P14810840508968977044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A350380.P14810840508968977044

/-! ## A350380.P6170461857014549377

`A014963(A061017(n+1)/A056538(n+1))`
-/

namespace A350380.P6170461857014549377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A061017 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ))).toNat

end

end A350380.P6170461857014549377

/-! ## A350380.P6652135631069211188

`A014963(gcd(A061017(n+1), A233773(n+1)))`
-/

namespace A350380.P6652135631069211188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.gcd (A061017 (n + 1)) (A233773 (n + 1)))

end

end A350380.P6652135631069211188

/-! ## A350380.P16267136784232977492

`A014963(A233773(n+1)²)`
-/

namespace A350380.P16267136784232977492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A233773 (n + 1) ^ 2).toNat

end

end A350380.P16267136784232977492

/-! ## A350380.P5048285476326102299

`A307641(2*A027750(n+1)²)`
-/

namespace A350380.P5048285476326102299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307641 (2 * A027750 (n + 1) ^ 2).toNat

end

end A350380.P5048285476326102299

/-! ## A350380.P12993208761928394224

`A307641(2*A027750(n+1)*A027750(n+1))`
-/

namespace A350380.P12993208761928394224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307641 (2 * A027750 (n + 1) * A027750 (n + 1)).toNat

end

end A350380.P12993208761928394224

/-!
# A350381: Composite numbers k such that the multiplicative order of 2 modulo lpf(2^k-1) is k, where lpf = least prime factor.

The programs for A350381, there is no canonical definition to state claims against.
-/

/-! ## A350381.P18230582191684970423

`record[A066048(A322568(n+1))]`
-/

namespace A350381.P18230582191684970423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A322568 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350381.P18230582191684970423

/-! ## A350381.P14120392974968030119

`filter[A322568(n+1), A064911(#)]`
-/

namespace A350381.P14120392974968030119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A350381.P14120392974968030119

/-! ## A350381.P15029527201397427569

`filter[A322568(n+1), A065043(#)]`
-/

namespace A350381.P15029527201397427569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A350381.P15029527201397427569

/-! ## A350381.P4481047047548024329

`filter[A322568(n+1), A101040(#)]`
-/

namespace A350381.P4481047047548024329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A350381.P4481047047548024329

/-! ## A350381.P9074336088363158820

`filter[A322568(n+1), A341591(#)]`
-/

namespace A350381.P9074336088363158820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A350381.P9074336088363158820

/-!
# A350382: a(n) = 9 + 4*10^n.

The programs for A350382, the canonical program `A350382.P337426675285137308` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350382 has offset 1).

The definition of A350382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9+4*10^(n+1)` (program `A350382.P337426675285137308`, by `A350382.P337426675285137308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350382.P337426675285137308

`9+4*10^(n+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350382

/-- `9+4*10^(n+1)` -/
def P337426675285137308.Spec : Prop :=
  ∀ n, (P337426675285137308.a n : ℤ) = A350382 (n + 1)

theorem P337426675285137308.correct : P337426675285137308.Spec := by
  intro n
  simp only [A350382, Nat.add_sub_cancel]

end A350382

/-! ## A350382.P9053428791469330592

`or(1, 8*A199685(n))`
-/

namespace A350382.P9053428791469330592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (8 * A199685 n)

end

end A350382.P9053428791469330592

namespace A350382

/-- `or(1, 8*A199685(n))` -/
def P9053428791469330592.Spec : Prop :=
  ∀ n, P9053428791469330592.a n = A350382 (n + 1)

end A350382

/-! ## A350382.P2023364072223662877

`Δ[A173768(n+1)+9*n]`
-/

namespace A350382.P2023364072223662877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173768 (n + 1) + (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350382.P2023364072223662877

namespace A350382

/-- `Δ[A173768(n+1)+9*n]` -/
def P2023364072223662877.Spec : Prop :=
  ∀ n, P2023364072223662877.a n = A350382 (n + 1)

end A350382

/-! ## A350382.P2618395860205575381

`Δ[A173770(n+1)+9*n]`
-/

namespace A350382.P2618395860205575381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173770 (n + 1) + (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350382.P2618395860205575381

namespace A350382

/-- `Δ[A173770(n+1)+9*n]` -/
def P2618395860205575381.Spec : Prop :=
  ∀ n, P2618395860205575381.a n = A350382 (n + 1)

end A350382

/-! ## A350382.P16773688115280996665

`Δ[A173772(n+1)+9*n]`
-/

namespace A350382.P16773688115280996665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173772 (n + 1) + (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350382.P16773688115280996665

namespace A350382

/-- `Δ[A173772(n+1)+9*n]` -/
def P16773688115280996665.Spec : Prop :=
  ∀ n, P16773688115280996665.a n = A350382 (n + 1)

end A350382

/-!
# A350383: a(n) = [x^n] 1/(1 + x + x^2)^n.

The programs for A350383, there is no canonical definition to state claims against.
-/

/-! ## A350383.P908000458375198020

`A344566(∑[4*n])`
-/

namespace A350383.P908000458375198020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344566 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350383.P908000458375198020

/-! ## A350383.P7094221380000113165

`A104562(A004273(n²))`
-/

namespace A350383.P7094221380000113165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (A004273 (n ^ 2)).toNat

end

end A350383.P7094221380000113165

/-! ## A350383.P16846636510304182808

`A104562(A132209(n)-2*n)`
-/

namespace A350383.P16846636510304182808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (A132209 n - (2 * n : ℤ)).toNat

end

end A350383.P16846636510304182808

/-! ## A350383.P2589657125754854066

`A104562(A132209(n)-n-n)`
-/

namespace A350383.P2589657125754854066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (A132209 n - (n : ℤ) - (n : ℤ)).toNat

end

end A350383.P2589657125754854066

/-! ## A350383.P7984147545401307872

`A104562(A056220(n)*A057427(n))`
-/

namespace A350383.P7984147545401307872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (A056220 n * A057427 n).toNat

end

end A350383.P7984147545401307872

/-! ## A350383.P13136939549959651513

`A104562(A056220(n)*A178334(n))`
-/

namespace A350383.P13136939549959651513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (A056220 n * A178334 n).toNat

end

end A350383.P13136939549959651513

/-! ## A350383.P1553743943649859424

`A104562(A007588(n)/A028310(n))`
-/

namespace A350383.P1553743943649859424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (SequenceMachineLib.roundAway ((A007588 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A350383.P1553743943649859424

/-! ## A350383.P51327838944832956

`A104562(A056220(n)+1-A057427(n))`
-/

namespace A350383.P51327838944832956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (A056220 n + (1 - A057427 n)).toNat

end

end A350383.P51327838944832956

/-! ## A350383.P14239849703970133510

`A104562(A056220(n)+1-A178334(n))`
-/

namespace A350383.P14239849703970133510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (A056220 n + (1 - A178334 n)).toNat

end

end A350383.P14239849703970133510

/-!
# A350384: a(n) = (-1728)^n.

The programs for A350384, the canonical program `A350384.P1583791445074431816` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350384 has offset 0).

The definition of A350384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350384.P1583791445074431816

`(-12)^(3*n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350384

/-- `(-12)^(3*n)` -/
def P1583791445074431816.Spec : Prop :=
  ∀ n, P1583791445074431816.a n = A350384 n

theorem P1583791445074431816.correct : P1583791445074431816.Spec := by
  intro n
  simp only [A350384]

end A350384

/-! ## A350384.P12994224286962179570

`A379825(A016921(n))`
-/

namespace A350384.P12994224286962179570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379825 (A016921 n).toNat

end

end A350384.P12994224286962179570

namespace A350384

/-- `A379825(A016921(n))` -/
def P12994224286962179570.Spec : Prop :=
  ∀ n, P12994224286962179570.a n = A350384 n

end A350384

/-!
# A350386: a(n) is the sum of the even exponents in the prime factorization of n.

The programs for A350386, the canonical program `A350386.P2488942611361023290` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350386 has offset 1).

The definition of A350386 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350386.P2488942611361023290

`A001222(A350388(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A350386

/-- `A001222(A350388(n+1))` -/
def P2488942611361023290.Spec : Prop :=
  ∀ n, P2488942611361023290.a n = A350386 (n + 1)

theorem P2488942611361023290.correct : P2488942611361023290.Spec := by
  intro n
  simp only [A350386, Nat.add_sub_cancel]

end A350386

/-! ## A350386.P13409519216955326974

`A001222(n+1)-A350387(n+1)`
-/

namespace A350386.P13409519216955326974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A350387 (n + 1)

end

end A350386.P13409519216955326974

namespace A350386

/-- `A001222(n+1)-A350387(n+1)` -/
def P13409519216955326974.Spec : Prop :=
  ∀ n, P13409519216955326974.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P15757524913237092329

`∑{e}[n+1, #%or(1, #)]`
-/

namespace A350386.P15757524913237092329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.lor 1 (Nat.factorization (f1 n) p)

end

end A350386.P15757524913237092329

namespace A350386

/-- `∑{e}[n+1, #%or(1, #)]` -/
def P15757524913237092329.Spec : Prop :=
  ∀ n, (P15757524913237092329.a n : ℤ) = A350386 (n + 1)

end A350386

/-! ## A350386.P12814342305115949200

`∑{e}[n+1, A237420(#)]`
-/

namespace A350386.P12814342305115949200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A237420 (Nat.factorization (f1 n) p)

end

end A350386.P12814342305115949200

namespace A350386

/-- `∑{e}[n+1, A237420(#)]` -/
def P12814342305115949200.Spec : Prop :=
  ∀ n, P12814342305115949200.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P7798985417107074932

`∑{e}[A071974(n+1)², #]`
-/

namespace A350386.P7798985417107074932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A350386.P7798985417107074932

namespace A350386

/-- `∑{e}[A071974(n+1)², #]` -/
def P7798985417107074932.Spec : Prop :=
  ∀ n, (P7798985417107074932.a n : ℤ) = A350386 (n + 1)

end A350386

/-! ## A350386.P9774850790162590600

`A255201(A071974(n+1))`
-/

namespace A350386.P9774850790162590600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (A071974 (n + 1)).toNat

end

end A350386.P9774850790162590600

namespace A350386

/-- `A255201(A071974(n+1))` -/
def P9774850790162590600.Spec : Prop :=
  ∀ n, P9774850790162590600.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P17844416371506265566

`A001222(A071974(n+1)²)`
-/

namespace A350386.P17844416371506265566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071974 (n + 1) ^ 2).toNat

end

end A350386.P17844416371506265566

namespace A350386

/-- `A001222(A071974(n+1)²)` -/
def P17844416371506265566.Spec : Prop :=
  ∀ n, P17844416371506265566.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P5159914538825056093

`A350387(n+1)-A332423(n+1)`
-/

namespace A350386.P5159914538825056093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350387 (n + 1) - A332423 (n + 1)

end

end A350386.P5159914538825056093

namespace A350386

/-- `A350387(n+1)-A332423(n+1)` -/
def P5159914538825056093.Spec : Prop :=
  ∀ n, P5159914538825056093.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P8121713342629478266

`A001222((n+1)/A350389(n+1))`
-/

namespace A350386.P8121713342629478266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A350386.P8121713342629478266

namespace A350386

/-- `A001222((n+1)/A350389(n+1))` -/
def P8121713342629478266.Spec : Prop :=
  ∀ n, P8121713342629478266.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P382223291210008527

`A001222(n+1)-A001222(A350389(n+1))`
-/

namespace A350386.P382223291210008527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A350389 (n + 1)).toNat

end

end A350386.P382223291210008527

namespace A350386

/-- `A001222(n+1)-A001222(A350389(n+1))` -/
def P382223291210008527.Spec : Prop :=
  ∀ n, P382223291210008527.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P6544272692092232000

`A332423(A350389(n+1))-A332423(n+1)`
-/

namespace A350386.P6544272692092232000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332423 (A350389 (n + 1)).toNat - A332423 (n + 1)

end

end A350386.P6544272692092232000

namespace A350386

/-- `A332423(A350389(n+1))-A332423(n+1)` -/
def P6544272692092232000.Spec : Prop :=
  ∀ n, P6544272692092232000.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P7099100526434267759

`(2*A001222(A071974(n+1)))%A007591(n+1)`
-/

namespace A350386.P7099100526434267759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A001222 (A071974 (n + 1)).toNat) (A007591 (n + 1))

end

end A350386.P7099100526434267759

namespace A350386

/-- `(2*A001222(A071974(n+1)))%A007591(n+1)` -/
def P7099100526434267759.Spec : Prop :=
  ∀ n, P7099100526434267759.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P2108101464795999916

`A123391(n+1)+A125071(n+1)-A350387(n+1)`
-/

namespace A350386.P2108101464795999916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (n + 1) + (A125071 (n + 1) - A350387 (n + 1))

end

end A350386.P2108101464795999916

namespace A350386

/-- `A123391(n+1)+A125071(n+1)-A350387(n+1)` -/
def P2108101464795999916.Spec : Prop :=
  ∀ n, P2108101464795999916.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P8605989524626454725

`A366533(A181819(n+1)²)`
-/

namespace A350386.P8605989524626454725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A181819 (n + 1) ^ 2).toNat

end

end A350386.P8605989524626454725

namespace A350386

/-- `A366533(A181819(n+1)²)` -/
def P8605989524626454725.Spec : Prop :=
  ∀ n, P8605989524626454725.a n = A350386 (n + 1)

end A350386

/-! ## A350386.P9726188387954787425

`A366531(A181819(n+1))`
-/

namespace A350386.P9726188387954787425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366531 (A181819 (n + 1)).toNat

end

end A350386.P9726188387954787425

namespace A350386

/-- `A366531(A181819(n+1))` -/
def P9726188387954787425.Spec : Prop :=
  ∀ n, P9726188387954787425.a n = A350386 (n + 1)

end A350386

/-!
# A350387: a(n) is the sum of the odd exponents in the prime factorization of n.

The programs for A350387, the canonical program `A350387.P325241865782792840` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350387 has offset 1).

The definition of A350387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A350386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350387.P11260222906860812536

`A001222(A350389(n+1))`
-/

namespace A350387.P11260222906860812536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A350389 (n + 1)).toNat

end

end A350387.P11260222906860812536

namespace A350387

/-- `A001222(A350389(n+1))` -/
def P11260222906860812536.Spec : Prop :=
  ∀ n, P11260222906860812536.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P325241865782792840

`A001222(n+1)-A350386(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A350387

/-- `A001222(n+1)-A350386(n+1)` -/
def P325241865782792840.Spec : Prop :=
  ∀ n, P325241865782792840.a n = A350387 (n + 1)

theorem P325241865782792840.correct : P325241865782792840.Spec := by
  intro n
  simp only [A350387, Nat.add_sub_cancel]

end A350387

/-! ## A350387.P891074856433444093

`∑{e}[n+1, #*#%2]`
-/

namespace A350387.P891074856433444093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p * (Nat.factorization (f1 n) p % 2)

end

end A350387.P891074856433444093

namespace A350387

/-- `∑{e}[n+1, #*#%2]` -/
def P891074856433444093.Spec : Prop :=
  ∀ n, (P891074856433444093.a n : ℤ) = A350387 (n + 1)

end A350387

/-! ## A350387.P17128722902854405690

`∑{e}[n+1, lcm(2, #)-#]`
-/

namespace A350387.P17128722902854405690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.lcm 2 (Nat.factorization (f1 n) p) : ℤ) - (Nat.factorization (f1 n) p : ℤ))

end

end A350387.P17128722902854405690

namespace A350387

/-- `∑{e}[n+1, lcm(2, #)-#]` -/
def P17128722902854405690.Spec : Prop :=
  ∀ n, P17128722902854405690.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P147599072930344914

`∑{e}[n+1, #*and(1, #)]`
-/

namespace A350387.P147599072930344914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p * Nat.land 1 (Nat.factorization (f1 n) p)

end

end A350387.P147599072930344914

namespace A350387

/-- `∑{e}[n+1, #*and(1, #)]` -/
def P147599072930344914.Spec : Prop :=
  ∀ n, (P147599072930344914.a n : ℤ) = A350387 (n + 1)

end A350387

/-! ## A350387.P6727799728067528323

`∑{e}[n+1, A167465(#)]`
-/

namespace A350387.P6727799728067528323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A167465 (Nat.factorization (f1 n) p)

end

end A350387.P6727799728067528323

namespace A350387

/-- `∑{e}[n+1, A167465(#)]` -/
def P6727799728067528323.Spec : Prop :=
  ∀ n, P6727799728067528323.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P7397507054427666380

`∑{e}[n+1, A193356(#)]`
-/

namespace A350387.P7397507054427666380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A193356 (Nat.factorization (f1 n) p)

end

end A350387.P7397507054427666380

namespace A350387

/-- `∑{e}[n+1, A193356(#)]` -/
def P7397507054427666380.Spec : Prop :=
  ∀ n, P7397507054427666380.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P3870250657861482467

`A350386(n+1)+A332423(n+1)`
-/

namespace A350387.P3870250657861482467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350386 (n + 1) + A332423 (n + 1)

end

end A350387.P3870250657861482467

namespace A350387

/-- `A350386(n+1)+A332423(n+1)` -/
def P3870250657861482467.Spec : Prop :=
  ∀ n, P3870250657861482467.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P1860114717653081580

`A001222((n+1)/A350388(n+1))`
-/

namespace A350387.P1860114717653081580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A350387.P1860114717653081580

namespace A350387

/-- `A001222((n+1)/A350388(n+1))` -/
def P1860114717653081580.Spec : Prop :=
  ∀ n, P1860114717653081580.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P12901698392596547394

`A332423((n+1)/A350388(n+1))`
-/

namespace A350387.P12901698392596547394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A350387.P12901698392596547394

namespace A350387

/-- `A332423((n+1)/A350388(n+1))` -/
def P12901698392596547394.Spec : Prop :=
  ∀ n, P12901698392596547394.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P6160228803273436060

`A349326((n+1)/A350388(n+1))`
-/

namespace A350387.P6160228803273436060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A350387.P6160228803273436060

namespace A350387

/-- `A349326((n+1)/A350388(n+1))` -/
def P6160228803273436060.Spec : Prop :=
  ∀ n, P6160228803273436060.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P8479930790358126386

`A332423(A350389(2*n+1-n))`
-/

namespace A350387.P8479930790358126386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332423 (A350389 (2 * n + 1 - n)).toNat

end

end A350387.P8479930790358126386

namespace A350387

/-- `A332423(A350389(2*n+1-n))` -/
def P8479930790358126386.Spec : Prop :=
  ∀ n, P8479930790358126386.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P1012473151498875874

`A001222((n+1)/A071974(n+1)²)`
-/

namespace A350387.P1012473151498875874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A071974 (n + 1) ^ 2 : ℚ))).toNat

end

end A350387.P1012473151498875874

namespace A350387

/-- `A001222((n+1)/A071974(n+1)²)` -/
def P1012473151498875874.Spec : Prop :=
  ∀ n, P1012473151498875874.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P3953844869057825404

`A001222(n+1)-A001222(A350388(n+1))`
-/

namespace A350387.P3953844869057825404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A350388 (n + 1)).toNat

end

end A350387.P3953844869057825404

namespace A350387

/-- `A001222(n+1)-A001222(A350388(n+1))` -/
def P3953844869057825404.Spec : Prop :=
  ∀ n, P3953844869057825404.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P5353276311340867630

`A332423(n+1)-A332423(A350388(n+1))`
-/

namespace A350387.P5353276311340867630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332423 (n + 1) - A332423 (A350388 (n + 1)).toNat

end

end A350387.P5353276311340867630

namespace A350387

/-- `A332423(n+1)-A332423(A350388(n+1))` -/
def P5353276311340867630.Spec : Prop :=
  ∀ n, P5353276311340867630.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P4891278111140709472

`A349326(n+1)-A349326(A350388(n+1))`
-/

namespace A350387.P4891278111140709472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349326 (n + 1) - A349326 (A350388 (n + 1)).toNat

end

end A350387.P4891278111140709472

namespace A350387

/-- `A349326(n+1)-A349326(A350388(n+1))` -/
def P4891278111140709472.Spec : Prop :=
  ∀ n, P4891278111140709472.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P12431843473852492421

`A001222(n+1)-A001222(A071974(n+1)²)`
-/

namespace A350387.P12431843473852492421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A071974 (n + 1) ^ 2).toNat

end

end A350387.P12431843473852492421

namespace A350387

/-- `A001222(n+1)-A001222(A071974(n+1)²)` -/
def P12431843473852492421.Spec : Prop :=
  ∀ n, P12431843473852492421.a n = A350387 (n + 1)

end A350387

/-! ## A350387.P3755109302349292809

`A255201(n+1)/2-A255201(A071974(n+1))`
-/

namespace A350387.P3755109302349292809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2 - (A255201 (A071974 (n + 1)).toNat : ℚ)

end

end A350387.P3755109302349292809

namespace A350387

/-- `A255201(n+1)/2-A255201(A071974(n+1))` -/
def P3755109302349292809.Spec : Prop :=
  ∀ n, P3755109302349292809.a n = (A350387 (n + 1) : ℚ)

end A350387

/-! ## A350387.P17379947492474419095

`A366528(A181819(n+1))`
-/

namespace A350387.P17379947492474419095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366528 (A181819 (n + 1)).toNat

end

end A350387.P17379947492474419095

namespace A350387

/-- `A366528(A181819(n+1))` -/
def P17379947492474419095.Spec : Prop :=
  ∀ n, P17379947492474419095.a n = A350387 (n + 1)

end A350387

/-!
# A350388: a(n) is the largest unitary divisor of n that is a square.

The programs for A350388, the canonical program `A350388.P14803128031435634268` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350388 has offset 1).

The definition of A350388 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350388.P14803128031435634268

`A071974(n+1)²`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A350388

/-- `A071974(n+1)²` -/
def P14803128031435634268.Spec : Prop :=
  ∀ n, P14803128031435634268.a n = A350388 (n + 1)

theorem P14803128031435634268.correct : P14803128031435634268.Spec := by
  intro n
  simp only [A350388, Nat.add_sub_cancel]

end A350388

/-! ## A350388.P3508273837654813450

`(n+1)/A350389(n+1)`
-/

namespace A350388.P3508273837654813450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350389 (n + 1) : ℚ)

end

end A350388.P3508273837654813450

namespace A350388

/-- `(n+1)/A350389(n+1)` -/
def P3508273837654813450.Spec : Prop :=
  ∀ n, P3508273837654813450.a n = (A350388 (n + 1) : ℚ)

end A350388

/-! ## A350388.P3417450391066211200

`gcd(n+1, A331738(n+1)²)`
-/

namespace A350388.P3417450391066211200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A331738 (n + 1) ^ 2)

end

end A350388.P3417450391066211200

namespace A350388

/-- `gcd(n+1, A331738(n+1)²)` -/
def P3417450391066211200.Spec : Prop :=
  ∀ n, (P3417450391066211200.a n : ℤ) = A350388 (n + 1)

end A350388

/-! ## A350388.P14112895103261432057

`A071975(A003557(n+1))²`
-/

namespace A350388.P14112895103261432057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A003557 (n + 1)).toNat ^ 2

end

end A350388.P14112895103261432057

namespace A350388

/-- `A071975(A003557(n+1))²` -/
def P14112895103261432057.Spec : Prop :=
  ∀ n, P14112895103261432057.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P13398544344508167523

`A235872(A071974(n+1)^2)`
-/

namespace A350388.P13398544344508167523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (A071974 (n + 1) ^ 2).toNat

end

end A350388.P13398544344508167523

namespace A350388

/-- `A235872(A071974(n+1)^2)` -/
def P13398544344508167523.Spec : Prop :=
  ∀ n, P13398544344508167523.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P17592988769195694765

`A071975(A336551(n+1)+1)²`
-/

namespace A350388.P17592988769195694765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A336551 (n + 1) + 1).toNat ^ 2

end

end A350388.P17592988769195694765

namespace A350388

/-- `A071975(A336551(n+1)+1)²` -/
def P17592988769195694765.Spec : Prop :=
  ∀ n, P17592988769195694765.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P13012607993855937790

`A008833((n+1)/A368167(n+1))`
-/

namespace A350388.P13012607993855937790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368167 (n + 1) : ℚ))).toNat

end

end A350388.P13012607993855937790

namespace A350388

/-- `A008833((n+1)/A368167(n+1))` -/
def P13012607993855937790.Spec : Prop :=
  ∀ n, P13012607993855937790.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P438464098695917104

`A057521(n+1)/A368167(n+1)`
-/

namespace A350388.P438464098695917104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A368167 (n + 1) : ℚ)

end

end A350388.P438464098695917104

namespace A350388

/-- `A057521(n+1)/A368167(n+1)` -/
def P438464098695917104.Spec : Prop :=
  ∀ n, P438464098695917104.a n = (A350388 (n + 1) : ℚ)

end A350388

/-! ## A350388.P15006991426448902593

`(A019554(n+1)/A071975(n+1))²`
-/

namespace A350388.P15006991426448902593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A019554 (n + 1) : ℚ) / (A071975 (n + 1) : ℚ)) ^ 2

end

end A350388.P15006991426448902593

namespace A350388

/-- `(A019554(n+1)/A071975(n+1))²` -/
def P15006991426448902593.Spec : Prop :=
  ∀ n, P15006991426448902593.a n = (A350388 (n + 1) : ℚ)

end A350388

/-! ## A350388.P10964847072633384102

`A053143(n+1)/A071975(n+1)²`
-/

namespace A350388.P10964847072633384102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) : ℚ) / (A071975 (n + 1) ^ 2 : ℚ)

end

end A350388.P10964847072633384102

namespace A350388

/-- `A053143(n+1)/A071975(n+1)²` -/
def P10964847072633384102.Spec : Prop :=
  ∀ n, P10964847072633384102.a n = (A350388 (n + 1) : ℚ)

end A350388

/-! ## A350388.P30715894436439637

`A071974(A000027(n+1))*A071974(n+1)`
-/

namespace A350388.P30715894436439637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A000027 (n + 1)).toNat * A071974 (n + 1)

end

end A350388.P30715894436439637

namespace A350388

/-- `A071974(A000027(n+1))*A071974(n+1)` -/
def P30715894436439637.Spec : Prop :=
  ∀ n, P30715894436439637.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P10456927578941543860

`A071974(A057521(n+1))*A071974(n+1)`
-/

namespace A350388.P10456927578941543860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A057521 (n + 1)).toNat * A071974 (n + 1)

end

end A350388.P10456927578941543860

namespace A350388

/-- `A071974(A057521(n+1))*A071974(n+1)` -/
def P10456927578941543860.Spec : Prop :=
  ∀ n, P10456927578941543860.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P3101415926882010019

`A071974(n+1)^A000005(A002144(n+1))`
-/

namespace A350388.P3101415926882010019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071974 (n + 1) : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A350388.P3101415926882010019

namespace A350388

/-- `A071974(n+1)^A000005(A002144(n+1))` -/
def P3101415926882010019.Spec : Prop :=
  ∀ n, P3101415926882010019.a n = (A350388 (n + 1) : ℚ)

end A350388

/-! ## A350388.P15507569662647301571

`A071974(n+1)^A020652(A005728(2*n))`
-/

namespace A350388.P15507569662647301571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071974 (n + 1) : ℚ) ^ (A020652 (A005728 (2 * n)).toNat : ℤ)

end

end A350388.P15507569662647301571

namespace A350388

/-- `A071974(n+1)^A020652(A005728(2*n))` -/
def P15507569662647301571.Spec : Prop :=
  ∀ n, P15507569662647301571.a n = (A350388 (n + 1) : ℚ)

end A350388

/-! ## A350388.P11631341369476466626

`A268385(A270419(A268385(n+1)))²`
-/

namespace A350388.P11631341369476466626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A270419 (A268385 (n + 1)).toNat).toNat ^ 2

end

end A350388.P11631341369476466626

namespace A350388

/-- `A268385(A270419(A268385(n+1)))²` -/
def P11631341369476466626.Spec : Prop :=
  ∀ n, P11631341369476466626.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P14902662932888299520

`A071975(A003557(n+1)*A008833(n+1))`
-/

namespace A350388.P14902662932888299520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A003557 (n + 1) * A008833 (n + 1)).toNat

end

end A350388.P14902662932888299520

namespace A350388

/-- `A071975(A003557(n+1)*A008833(n+1))` -/
def P14902662932888299520.Spec : Prop :=
  ∀ n, P14902662932888299520.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P13227801827273483961

`A071974(A071974(n+1)^4)`
-/

namespace A350388.P13227801827273483961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A071974 (n + 1) ^ 4).toNat

end

end A350388.P13227801827273483961

namespace A350388

/-- `A071974(A071974(n+1)^4)` -/
def P13227801827273483961.Spec : Prop :=
  ∀ n, P13227801827273483961.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P11994408609057286474

`A071974((n+1)*A008833(n+1))`
-/

namespace A350388.P11994408609057286474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A350388.P11994408609057286474

namespace A350388

/-- `A071974((n+1)*A008833(n+1))` -/
def P11994408609057286474.Spec : Prop :=
  ∀ n, P11994408609057286474.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P18329411314595952498

`A071974((n+1)*A056623(n+1))`
-/

namespace A350388.P18329411314595952498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 ((n + 1 : ℤ) * A056623 (n + 1)).toNat

end

end A350388.P18329411314595952498

namespace A350388

/-- `A071974((n+1)*A056623(n+1))` -/
def P18329411314595952498.Spec : Prop :=
  ∀ n, P18329411314595952498.a n = A350388 (n + 1)

end A350388

/-! ## A350388.P4196965617949226122

`A056623(A000188((n+1)*A056623(n+1)))`
-/

namespace A350388.P4196965617949226122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 (A000188 ((n + 1 : ℤ) * A056623 (n + 1)).toNat).toNat

end

end A350388.P4196965617949226122

namespace A350388

/-- `A056623(A000188((n+1)*A056623(n+1)))` -/
def P4196965617949226122.Spec : Prop :=
  ∀ n, P4196965617949226122.a n = A350388 (n + 1)

end A350388

/-!
# A350389: a(n) is the largest unitary divisor of n that is an exponentially odd number (A268335).

The programs for A350389, the canonical program `A350389.P11774881852585828410` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350389 has offset 1).

The definition of A350389 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350389.P11774881852585828410

`(n+1)/A350388(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A350389

/-- `(n+1)/A350388(n+1)` -/
def P11774881852585828410.Spec : Prop :=
  ∀ n, P11774881852585828410.a n = (A350389 (n + 1) : ℚ)

end A350389

/-! ## A350389.P17183990649279439653

`(n+1)/A071974(n+1)²`
-/

namespace A350389.P17183990649279439653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A071974 (n + 1) ^ 2 : ℚ)

end

end A350389.P17183990649279439653

namespace A350389

/-- `(n+1)/A071974(n+1)²` -/
def P17183990649279439653.Spec : Prop :=
  ∀ n, P17183990649279439653.a n = (A350389 (n + 1) : ℚ)

end A350389

/-! ## A350389.P10522504905651656990

`gcd(n+1, A071975(n+1)²)`
-/

namespace A350389.P10522504905651656990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A071975 (n + 1) ^ 2)

end

end A350389.P10522504905651656990

namespace A350389

/-- `gcd(n+1, A071975(n+1)²)` -/
def P10522504905651656990.Spec : Prop :=
  ∀ n, (P10522504905651656990.a n : ℤ) = A350389 (n + 1)

end A350389

/-! ## A350389.P17084075854419089513

`A102631(A071975(n+1))`
-/

namespace A350389.P17084075854419089513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A071975 (n + 1)).toNat

end

end A350389.P17084075854419089513

namespace A350389

/-- `A102631(A071975(n+1))` -/
def P17084075854419089513.Spec : Prop :=
  ∀ n, P17084075854419089513.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P1056011892462433990

`gcd(A071975(n+1)², A002378(n))`
-/

namespace A350389.P1056011892462433990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071975 (n + 1) ^ 2) (A002378 n)

end

end A350389.P1056011892462433990

namespace A350389

/-- `gcd(A071975(n+1)², A002378(n))` -/
def P1056011892462433990.Spec : Prop :=
  ∀ n, (P1056011892462433990.a n : ℤ) = A350389 (n + 1)

end A350389

/-! ## A350389.P11459172412751659630

`A055231(n+1)*A368167(n+1)`
-/

namespace A350389.P11459172412751659630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A368167 (n + 1)

end

end A350389.P11459172412751659630

namespace A350389

/-- `A055231(n+1)*A368167(n+1)` -/
def P11459172412751659630.Spec : Prop :=
  ∀ n, P11459172412751659630.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P14836871186729639825

`lcm(A071975(n+1), A368167(n+1))`
-/

namespace A350389.P14836871186729639825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071975 (n + 1)) (A368167 (n + 1))

end

end A350389.P14836871186729639825

namespace A350389

/-- `lcm(A071975(n+1), A368167(n+1))` -/
def P14836871186729639825.Spec : Prop :=
  ∀ n, (P14836871186729639825.a n : ℤ) = A350389 (n + 1)

end A350389

/-! ## A350389.P7823449004546508591

`A071975(n+1)²/A007913(n+1)`
-/

namespace A350389.P7823449004546508591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071975 (n + 1) ^ 2 : ℚ) / (A007913 (n + 1) : ℚ)

end

end A350389.P7823449004546508591

namespace A350389

/-- `A071975(n+1)²/A007913(n+1)` -/
def P7823449004546508591.Spec : Prop :=
  ∀ n, P7823449004546508591.a n = (A350389 (n + 1) : ℚ)

end A350389

/-! ## A350389.P14109830676582922632

`A071975(A062378(n+1))*A071975(n+1)`
-/

namespace A350389.P14109830676582922632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A062378 (n + 1)).toNat * A071975 (n + 1)

end

end A350389.P14109830676582922632

namespace A350389

/-- `A071975(A062378(n+1))*A071975(n+1)` -/
def P14109830676582922632.Spec : Prop :=
  ∀ n, P14109830676582922632.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P5585404795671423351

`A331737(n+1)/A331737(A071974(n+1))`
-/

namespace A350389.P5585404795671423351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331737 (n + 1) : ℚ) / (A331737 (A071974 (n + 1)).toNat : ℚ)

end

end A350389.P5585404795671423351

namespace A350389

/-- `A331737(n+1)/A331737(A071974(n+1))` -/
def P5585404795671423351.Spec : Prop :=
  ∀ n, P5585404795671423351.a n = (A350389 (n + 1) : ℚ)

end A350389

/-! ## A350389.P2655933421732542492

`gcd(A000027(n+1), A000290(A071975(n+1)))`
-/

namespace A350389.P2655933421732542492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A000290 (A071975 (n + 1)).toNat)

end

end A350389.P2655933421732542492

namespace A350389

/-- `gcd(A000027(n+1), A000290(A071975(n+1)))` -/
def P2655933421732542492.Spec : Prop :=
  ∀ n, (P2655933421732542492.a n : ℤ) = A350389 (n + 1)

end A350389

/-! ## A350389.P4745043237857063548

`A071975(n+1)²/A071975(A066990(n+1))`
-/

namespace A350389.P4745043237857063548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071975 (n + 1) ^ 2 : ℚ) / (A071975 (A066990 (n + 1)).toNat : ℚ)

end

end A350389.P4745043237857063548

namespace A350389

/-- `A071975(n+1)²/A071975(A066990(n+1))` -/
def P4745043237857063548.Spec : Prop :=
  ∀ n, P4745043237857063548.a n = (A350389 (n + 1) : ℚ)

end A350389

/-! ## A350389.P13056647555361731645

`A336551(A071975(n+1)²)+1`
-/

namespace A350389.P13056647555361731645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A071975 (n + 1) ^ 2).toNat + 1

end

end A350389.P13056647555361731645

namespace A350389

/-- `A336551(A071975(n+1)²)+1` -/
def P13056647555361731645.Spec : Prop :=
  ∀ n, P13056647555361731645.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P7856113187496630038

`A071975((n+1)²/A066990(n+1))`
-/

namespace A350389.P7856113187496630038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A066990 (n + 1) : ℚ))).toNat

end

end A350389.P7856113187496630038

namespace A350389

/-- `A071975((n+1)²/A066990(n+1))` -/
def P7856113187496630038.Spec : Prop :=
  ∀ n, P7856113187496630038.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P5683869095890681202

`A071975(A003557(n+1)*A350390(n+1))`
-/

namespace A350389.P5683869095890681202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A003557 (n + 1) * A350390 (n + 1)).toNat

end

end A350389.P5683869095890681202

namespace A350389

/-- `A071975(A003557(n+1)*A350390(n+1))` -/
def P5683869095890681202.Spec : Prop :=
  ∀ n, P5683869095890681202.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P15627279472050546316

`A331738((n+1)*A331737(n+1))`
-/

namespace A350389.P15627279472050546316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 ((n + 1 : ℤ) * A331737 (n + 1)).toNat

end

end A350389.P15627279472050546316

namespace A350389

/-- `A331738((n+1)*A331737(n+1))` -/
def P15627279472050546316.Spec : Prop :=
  ∀ n, P15627279472050546316.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P5750283491502751702

`A331738((n+1)*A350390(n+1))`
-/

namespace A350389.P5750283491502751702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 ((n + 1 : ℤ) * A350390 (n + 1)).toNat

end

end A350389.P5750283491502751702

namespace A350389

/-- `A331738((n+1)*A350390(n+1))` -/
def P5750283491502751702.Spec : Prop :=
  ∀ n, P5750283491502751702.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P4760694524187143187

`A331738((n+1)²/A331738(n+1))`
-/

namespace A350389.P4760694524187143187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A331738 (n + 1) : ℚ))).toNat

end

end A350389.P4760694524187143187

namespace A350389

/-- `A331738((n+1)²/A331738(n+1))` -/
def P4760694524187143187.Spec : Prop :=
  ∀ n, P4760694524187143187.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P14858743258899942673

`A071975((n+1)*A008833(n+1))`
-/

namespace A350389.P14858743258899942673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A350389.P14858743258899942673

namespace A350389

/-- `A071975((n+1)*A008833(n+1))` -/
def P14858743258899942673.Spec : Prop :=
  ∀ n, P14858743258899942673.a n = A350389 (n + 1)

end A350389

/-! ## A350389.P14794209354166038995

`A071975(A059479(n+1)/(n+1))`
-/

namespace A350389.P14794209354166038995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (SequenceMachineLib.roundAway ((A059479 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A350389.P14794209354166038995

namespace A350389

/-- `A071975(A059479(n+1)/(n+1))` -/
def P14794209354166038995.Spec : Prop :=
  ∀ n, P14794209354166038995.a n = A350389 (n + 1)

end A350389

/-!
# A350390: a(n) is the largest exponentially odd divisor of n.

The programs for A350390, the canonical program `A350390.P13215210150180200115` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350390 has offset 1).

The definition of A350390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336643, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350390.P13215210150180200115

`(n+1)/A336643(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A350390

/-- `(n+1)/A336643(n+1)` -/
def P13215210150180200115.Spec : Prop :=
  ∀ n, P13215210150180200115.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P17204626870696815816

`gcd(n+1, A011262(n+1))`
-/

namespace A350390.P17204626870696815816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A011262 (n + 1))

end

end A350390.P17204626870696815816

namespace A350390

/-- `gcd(n+1, A011262(n+1))` -/
def P17204626870696815816.Spec : Prop :=
  ∀ n, (P17204626870696815816.a n : ℤ) = A350390 (n + 1)

end A350390

/-! ## A350390.P11169534298368492615

`(n+1)²/A356191(n+1)`
-/

namespace A350390.P11169534298368492615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A356191 (n + 1) : ℚ)

end

end A350390.P11169534298368492615

namespace A350390

/-- `(n+1)²/A356191(n+1)` -/
def P11169534298368492615.Spec : Prop :=
  ∀ n, P11169534298368492615.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P15708735198091442918

`(n+1)/∏{p}[n+1, #]*A007913(n+1)`
-/

namespace A350390.P15708735198091442918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A007913 (n + 1) : ℚ)

end

end A350390.P15708735198091442918

namespace A350390

/-- `(n+1)/∏{p}[n+1, #]*A007913(n+1)` -/
def P15708735198091442918.Spec : Prop :=
  ∀ n, P15708735198091442918.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P5394442178762014851

`(n+1)/A007913((n+1)/∏{p}[n+1, #])`
-/

namespace A350390.P5394442178762014851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A350390.P5394442178762014851

namespace A350390

/-- `(n+1)/A007913((n+1)/∏{p}[n+1, #])` -/
def P5394442178762014851.Spec : Prop :=
  ∀ n, P5394442178762014851.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P7907999468173301055

`A102631(A019554(n+1))`
-/

namespace A350390.P7907999468173301055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A019554 (n + 1)).toNat

end

end A350390.P7907999468173301055

namespace A350390

/-- `A102631(A019554(n+1))` -/
def P7907999468173301055.Spec : Prop :=
  ∀ n, P7907999468173301055.a n = A350390 (n + 1)

end A350390

/-! ## A350390.P4149352941869615304

`Δ[A069891(n)]*A003557(n+1)`
-/

namespace A350390.P4149352941869615304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003557 (n + 1)

end

end A350390.P4149352941869615304

namespace A350390

/-- `Δ[A069891(n)]*A003557(n+1)` -/
def P4149352941869615304.Spec : Prop :=
  ∀ n, P4149352941869615304.a n = A350390 (n + 1)

end A350390

/-! ## A350390.P8913854498290847210

`A102631(A254732(n+1)-(n+1))`
-/

namespace A350390.P8913854498290847210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A254732 (n + 1) - (n + 1 : ℤ)).toNat

end

end A350390.P8913854498290847210

namespace A350390

/-- `A102631(A254732(n+1)-(n+1))` -/
def P8913854498290847210.Spec : Prop :=
  ∀ n, P8913854498290847210.a n = A350390 (n + 1)

end A350390

/-! ## A350390.P92232769029634792

`A003557(n+1)*A007913(n+1)`
-/

namespace A350390.P92232769029634792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A007913 (n + 1)

end

end A350390.P92232769029634792

namespace A350390

/-- `A003557(n+1)*A007913(n+1)` -/
def P92232769029634792.Spec : Prop :=
  ∀ n, P92232769029634792.a n = A350390 (n + 1)

end A350390

/-! ## A350390.P7450814848331384965

`A019554(n+1)*A295657(n+1)`
-/

namespace A350390.P7450814848331384965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A295657 (n + 1)

end

end A350390.P7450814848331384965

namespace A350390

/-- `A019554(n+1)*A295657(n+1)` -/
def P7450814848331384965.Spec : Prop :=
  ∀ n, P7450814848331384965.a n = A350390 (n + 1)

end A350390

/-! ## A350390.P12674964359885635960

`A329376(n+1)*A390371(n+1)`
-/

namespace A350390.P12674964359885635960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (n + 1) * A390371 (n + 1)

end

end A350390.P12674964359885635960

namespace A350390

/-- `A329376(n+1)*A390371(n+1)` -/
def P12674964359885635960.Spec : Prop :=
  ∀ n, P12674964359885635960.a n = A350390 (n + 1)

end A350390

/-! ## A350390.P2559575717215818494

`A011262(n+1)/A007913(n+1)`
-/

namespace A350390.P2559575717215818494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A350390.P2559575717215818494

namespace A350390

/-- `A011262(n+1)/A007913(n+1)` -/
def P2559575717215818494.Spec : Prop :=
  ∀ n, P2559575717215818494.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P5959808642136601336

`A053143(n+1)/A007947(n+1)`
-/

namespace A350390.P5959808642136601336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A350390.P5959808642136601336

namespace A350390

/-- `A053143(n+1)/A007947(n+1)` -/
def P5959808642136601336.Spec : Prop :=
  ∀ n, P5959808642136601336.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P8683556461737745385

`(n+1)/A000188(A066990(n+1))`
-/

namespace A350390.P8683556461737745385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (A066990 (n + 1)).toNat : ℚ)

end

end A350390.P8683556461737745385

namespace A350390

/-- `(n+1)/A000188(A066990(n+1))` -/
def P8683556461737745385.Spec : Prop :=
  ∀ n, P8683556461737745385.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P11427578697023324754

`A102631((n+1)/A000188(n+1))`
-/

namespace A350390.P11427578697023324754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A350390.P11427578697023324754

namespace A350390

/-- `A102631((n+1)/A000188(n+1))` -/
def P11427578697023324754.Spec : Prop :=
  ∀ n, P11427578697023324754.a n = A350390 (n + 1)

end A350390

/-! ## A350390.P12586745846543411408

`A102631(n+1)/A008833(n+1)`
-/

namespace A350390.P12586745846543411408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ)

end

end A350390.P12586745846543411408

namespace A350390

/-- `A102631(n+1)/A008833(n+1)` -/
def P12586745846543411408.Spec : Prop :=
  ∀ n, P12586745846543411408.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P6587316220871349525

`A064549(n+1)/A066990(n+1)`
-/

namespace A350390.P6587316220871349525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A066990 (n + 1) : ℚ)

end

end A350390.P6587316220871349525

namespace A350390

/-- `A064549(n+1)/A066990(n+1)` -/
def P6587316220871349525.Spec : Prop :=
  ∀ n, P6587316220871349525.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P6096588778930338647

`(n+1)/A071773(A350388(n+1))`
-/

namespace A350390.P6096588778930338647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A071773 (A350388 (n + 1)).toNat : ℚ)

end

end A350390.P6096588778930338647

namespace A350390

/-- `(n+1)/A071773(A350388(n+1))` -/
def P6096588778930338647.Spec : Prop :=
  ∀ n, P6096588778930338647.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P5605963437294680963

`A327171(n+1)/A173557(n+1)`
-/

namespace A350390.P5605963437294680963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A350390.P5605963437294680963

namespace A350390

/-- `A327171(n+1)/A173557(n+1)` -/
def P5605963437294680963.Spec : Prop :=
  ∀ n, P5605963437294680963.a n = (A350390 (n + 1) : ℚ)

end A350390

/-! ## A350390.P2898158104181943009

`A102631(n+1)%A254732(n+1)`
-/

namespace A350390.P2898158104181943009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102631 (n + 1)) (A254732 (n + 1))

end

end A350390.P2898158104181943009

namespace A350390

/-- `A102631(n+1)%A254732(n+1)` -/
def P2898158104181943009.Spec : Prop :=
  ∀ n, P2898158104181943009.a n = A350390 (n + 1)

end A350390

/-!
# A350392: Lexicographically earliest infinite sequence of distinct primes such that, for n > 0, 2n | (a(n+1) - a(n)) and, for n > 0, b(n+1) > b(n) where b(n) = (a(n+1) - a(n)) / 2n.

The programs for A350392, there is no canonical definition to state claims against.
-/

/-! ## A350392.P6851618284268108491

`A167773(A090036(n+1))`
-/

namespace A350392.P6851618284268108491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167773 (A090036 (n + 1)).toNat

end

end A350392.P6851618284268108491

/-! ## A350392.P4233343469734829271

`A223036(A062493(n+1))`
-/

namespace A350392.P4233343469734829271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223036 (A062493 (n + 1)).toNat

end

end A350392.P4233343469734829271

/-!
# A350393: Smallest degree of x with the largest coefficient in Product_{k=1..n} (1 + x^k).

The programs for A350393, there is no canonical definition to state claims against.
-/

/-! ## A350393.P1009779733441099610

`∑[n]-A350394(n)`
-/

namespace A350393.P1009779733441099610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A350394 n

end

end A350393.P1009779733441099610

/-! ## A350393.P17695553635777809167

`ceil((∑[n]-A070937(n))/2)`
-/

namespace A350393.P17695553635777809167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A070937 n : ℚ) / 2⌉

end

end A350393.P17695553635777809167

/-! ## A350393.P90145740745359555

`abs(A000217(n)-A350394(n))`
-/

namespace A350393.P90145740745359555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - A350394 n|

end

end A350393.P90145740745359555

/-! ## A350393.P9612923954641125011

`A000124(n)-(A350394(n)+1)`
-/

namespace A350393.P9612923954641125011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A350394 n + 1)

end

end A350393.P9612923954641125011

/-! ## A350393.P5368021356598539842

`(A000124(n)-A070937(n))/2`
-/

namespace A350393.P5368021356598539842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n - A070937 n : ℚ) / 2

end

end A350393.P5368021356598539842

/-! ## A350393.P5917671332453520334

`(∑[val(A000040(n+1), 2)+n]-A070937(n))/2`
-/

namespace A350393.P5917671332453520334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A070937 n : ℚ) / 2

end

end A350393.P5917671332453520334

/-! ## A350393.P11497506799881626029

`A011848(n+1)+A054925(n+1)-A350394(n)`
-/

namespace A350393.P11497506799881626029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n + 1) + (A054925 (n + 1) - A350394 n)

end

end A350393.P11497506799881626029

/-! ## A350393.P11352565848997722757

`(A000217(n)-A350394(n))%A000032(n)`
-/

namespace A350393.P11352565848997722757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n - A350394 n) (A000032 n)

end

end A350393.P11352565848997722757

/-! ## A350393.P8399108171579238093

`∑[n]-A004526(A070937(n)+∑[n])`
-/

namespace A350393.P8399108171579238093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004526 (A070937 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A350393.P8399108171579238093

/-! ## A350393.P7425256069366098923

`(∑[n]+1)%A008619(A070937(n)+∑[n])`
-/

namespace A350393.P7425256069366098923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A008619 (A070937 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat)

end

end A350393.P7425256069366098923

/-! ## A350393.P3480543865151983212

`A001281(A000124(n)-A070937(n))`
-/

namespace A350393.P3480543865151983212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000124 n - A070937 n).toNat

end

end A350393.P3480543865151983212

/-!
# A350394: Largest degree of x with the largest coefficient in Product_{k=1..n} (1 + x^k).

The programs for A350394, there is no canonical definition to state claims against.
-/

/-! ## A350394.P2277863555737792551

`∑[n]-A350393(n)`
-/

namespace A350394.P2277863555737792551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A350393 n

end

end A350394.P2277863555737792551

/-! ## A350394.P15859760422001972274

`floor((A070937(n)+∑[n])/2)`
-/

namespace A350394.P15859760422001972274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070937 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2⌋

end

end A350394.P15859760422001972274

/-! ## A350394.P13475595382126495669

`abs(A000217(n)-A350393(n))`
-/

namespace A350394.P13475595382126495669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - A350393 n|

end

end A350394.P13475595382126495669

/-! ## A350394.P15733555724963050830

`A000124(n)-(A350393(n)+1)`
-/

namespace A350394.P15733555724963050830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A350393 n + 1)

end

end A350394.P15733555724963050830

/-! ## A350394.P7607937251494443511

`A000096(n)-(A350393(n)+n)`
-/

namespace A350394.P7607937251494443511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A350393 n + (n : ℤ))

end

end A350394.P7607937251494443511

/-! ## A350394.P10850072699244735826

`(A000217(n)-A350393(n))%(A000045(n+1)+4)`
-/

namespace A350394.P10850072699244735826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n - A350393 n) (A000045 (n + 1) + 4)

end

end A350394.P10850072699244735826

/-! ## A350394.P17755458625841603794

`A004526(A070937(n)+∑[n])`
-/

namespace A350394.P17755458625841603794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070937 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A350394.P17755458625841603794

/-! ## A350394.P5951963379615621338

`A057979(A070937(n)+∑[n])`
-/

namespace A350394.P5951963379615621338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A070937 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A350394.P5951963379615621338

/-! ## A350394.P17700610264677776184

`A123108(A070937(n)+∑[n])`
-/

namespace A350394.P17700610264677776184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A070937 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A350394.P17700610264677776184

/-! ## A350394.P2891123399487229696

`A008619(A070937(n)+∑[n])-1`
-/

namespace A350394.P2891123399487229696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A070937 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - 1

end

end A350394.P2891123399487229696

/-!
# A350395: Numbers m such that a term with the largest coefficient in Product_{k=1..m} (1 + x^k) is unique.

The programs for A350395, there is no canonical definition to state claims against.
-/

/-! ## A350395.P8305530943396669307

`comp[xor(n, a(n-1))]` with `a(0)=4, a(1)=7`
-/

namespace A350395.P8305530943396669307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n f1 =>
  Nat.xor n (f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350395.P8305530943396669307

/-! ## A350395.P12544368965001428554

`a(n-2)+4` with `a(0)=0, a(1)=3, a(2)=8, a(3)=11`
-/

namespace A350395.P12544368965001428554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 8, 11] fun n a =>
  a (n - 2) + 4

end

end A350395.P12544368965001428554

/-! ## A350395.P6562762791958077725

`∑[gcd(3, a(n-2))]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A350395.P6562762791958077725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n f1 =>
  Nat.gcd 3 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350395.P6562762791958077725

/-! ## A350395.P7637792133826278036

`∑[a(n-2)%4]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A350395.P7637792133826278036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n f1 =>
  f1 (n - 2) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350395.P7637792133826278036

/-! ## A350395.P6673750005357414078

`∑[and(3, a(n-2))]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A350395.P6673750005357414078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n f1 =>
  Nat.land 3 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350395.P6673750005357414078

/-! ## A350395.P11039082367896668765

`∑[4-a(n-1)]` with `a(0)=0, a(1)=3, a(2)=5, a(3)=3`
-/

namespace A350395.P11039082367896668765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350395.P11039082367896668765

/-! ## A350395.P16019500797789327198

`ogf((3x+5x^2-4x^4)/(1-x-x^2+x^3))`
-/

namespace A350395.P16019500797789327198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5, 0, -4] [1, -1, -1, 1] n

end

end A350395.P16019500797789327198

/-! ## A350395.P12755517223964168797

`(n²-2)%4+2*(n+1)`
-/

namespace A350395.P12755517223964168797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 2) 4 + (2 * (n + 1) : ℤ)

end

end A350395.P12755517223964168797

/-! ## A350395.P8051536339325350108

`(∑[and(3, Δ[n²])]+3)%(n+1)²`
-/

namespace A350395.P8051536339325350108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 3) ((n + 1) ^ 2 : ℤ)

end

end A350395.P8051536339325350108

/-! ## A350395.P5828994551204952534

`3*n+2-abs(and(1, n)+2-n)`
-/

namespace A350395.P5828994551204952534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - |(Nat.land 1 n + 2 : ℤ) - (n : ℤ)|

end

end A350395.P5828994551204952534

/-!
# A350396: Numbers m such that there are two or more terms with the largest coefficient in Product_{k=1..m} (1 + x^k).

The programs for A350396, there is no canonical definition to state claims against.
-/

/-! ## A350396.P5487914748963856868

`comp[xor(5, comp[or(2, n)]+5)]`
-/

namespace A350396.P5487914748963856868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350396.P5487914748963856868

/-! ## A350396.P14912454576416462136

`comp[∑[gcd(3, a(n-2))]]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A350396.P14912454576416462136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n f2 =>
  Nat.gcd 3 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350396.P14912454576416462136

/-! ## A350396.P10682893996108888428

`comp[∑[a(n-2)%4]]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A350396.P10682893996108888428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n f2 =>
  f2 (n - 2) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350396.P10682893996108888428

/-! ## A350396.P7794989218437460663

`comp[∑[and(3, a(n-2))]]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A350396.P7794989218437460663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n f2 =>
  Nat.land 3 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350396.P7794989218437460663

/-! ## A350396.P6436179247021360622

`comp[xor(4, record[xor(2, n+1)+1])]`
-/

namespace A350396.P6436179247021360622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350396.P6436179247021360622

/-! ## A350396.P11864140330507254344

`comp[a(n-2)+4]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=8, a(4)=11`
-/

namespace A350396.P11864140330507254344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 8, 11] fun n f1 =>
  f1 (n - 2) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350396.P11864140330507254344

/-! ## A350396.P10539288552930225724

`comp[∑[ceil(a(n-2))]]` with `a(0)=0, a(1)=3, a(2)=5, a(3)=3, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A350396.P10539288552930225724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5, 3, 1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350396.P10539288552930225724

/-! ## A350396.P17430223151976531696

`comp[xor(4, 2*(n+2))+n%2]`
-/

namespace A350396.P17430223151976531696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (2 * (n + 2)) + n % 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350396.P17430223151976531696

/-! ## A350396.P14402596939439076979

`comp[comp[or(2, n)-1]%(n²-5)]`
-/

namespace A350396.P14402596939439076979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) ((n ^ 2 : ℤ) - 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A350396.P14402596939439076979

/-! ## A350396.P12134004728944748812

`comp[A350395(n+1)]`
-/

namespace A350396.P12134004728944748812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A350396.P12134004728944748812

/-!
# A350398: Numbers k such that for all pairs of primes p,q with p+q = 2*k, p*q mod 2*k is prime.

The programs for A350398, there is no canonical definition to state claims against.
-/

/-! ## A350398.P16776547366899750605

`eq[A045917(n+1), A350399(n+1)]+1`
-/

namespace A350398.P16776547366899750605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350398.P16776547366899750605

