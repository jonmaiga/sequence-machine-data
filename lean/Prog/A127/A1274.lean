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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

/-!
# A127402: Number of points in a honeycomb net covered by a circular disk of diameter n if the center of the circle is chosen at the deep hole.

The programs for A127402, there is no canonical definition to state claims against.
-/

/-! ## A127402.P4605979936232188773

`2*(A053416(n+1)-A127403(n+1))`
-/

namespace A127402.P4605979936232188773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053416 (n + 1) - A127403 (n + 1))

end

end A127402.P4605979936232188773

/-! ## A127402.P12283363605082350371

`A005843(A053416(n+1)-A127403(n+1))`
-/

namespace A127402.P12283363605082350371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053416 (n + 1) - A127403 (n + 1)).toNat

end

end A127402.P12283363605082350371

/-! ## A127402.P12159908518619653436

`6*A325678(A002530(n))`
-/

namespace A127402.P12159908518619653436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A325678 (A002530 n).toNat

end

end A127402.P12159908518619653436

/-! ## A127402.P9849146604308045829

`6*A032190(A032555(n+1))`
-/

namespace A127402.P9849146604308045829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A032190 (A032555 (n + 1)).toNat

end

end A127402.P9849146604308045829

/-! ## A127402.P12069669508701512754

`A032190(n+1)*A351008(A316650(n+1))`
-/

namespace A127402.P12069669508701512754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (n + 1) * A351008 (A316650 (n + 1)).toNat

end

end A127402.P12069669508701512754

/-!
# A127403: Number of points in a honeycomb net covered by a circular disk of diameter n if the center of the circle is chosen at a grid point.

The programs for A127403, there is no canonical definition to state claims against.
-/

/-! ## A127403.P13213184506012578739

`∑[3*A218603(A287278(n))]+1`
-/

namespace A127403.P13213184506012578739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A218603 (A287278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A127403.P13213184506012578739

/-!
# A127405: Number of points in a 2-dimensional honeycomb net covered by a circular disk of diameter n if the center of the disk is chosen to minimize the number of net points covered by the disk.

The programs for A127405, there is no canonical definition to state claims against.
-/

/-! ## A127405.P2914105799699066654

`2*A076067(n+1)%A108052(2*n+1)`
-/

namespace A127405.P2914105799699066654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A076067 (n + 1)) (A108052 (2 * n + 1))

end

end A127405.P2914105799699066654

/-! ## A127405.P93233956989490871

`A206297(n+1)+A082551(A000110(n))`
-/

namespace A127405.P93233956989490871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 1) + A082551 (A000110 n).toNat

end

end A127405.P93233956989490871

/-! ## A127405.P15456512929473007596

`A060689(A243305(n+3))+A049696(n)`
-/

namespace A127405.P15456512929473007596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A243305 (n + 3)).toNat + A049696 n

end

end A127405.P15456512929473007596

/-! ## A127405.P6091708899684653736

`A076067(n+1)*A375431(A057721(n))`
-/

namespace A127405.P6091708899684653736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076067 (n + 1) * A375431 (A057721 n).toNat

end

end A127405.P6091708899684653736

/-! ## A127405.P12494699164816997563

`or(A010893(A023896(n+1)), A049696(n))`
-/

namespace A127405.P12494699164816997563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010893 ((A023896 (n + 1)).toNat + 13)) (A049696 n)

end

end A127405.P12494699164816997563

/-!
# A127407: Negative value of coefficient of x^(n-2) in the characteristic polynomial of a certain n X n integer circulant matrix.

The programs for A127407, the canonical program `A127407.P6063740052732760576` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127407 has offset 2).

The definition of A127407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127407.P6063740052732760576

`∑[∑[n*(n+5)+3]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127407

/-- `∑[∑[n*(n+5)+3]]` -/
def P6063740052732760576.Spec : Prop :=
  ∀ n, (P6063740052732760576.a n : ℤ) = A127407 (n + 2)

theorem P6063740052732760576.correct : P6063740052732760576.Spec := by
  intro n
  simp only [A127407, Nat.add_sub_cancel]

end A127407

/-! ## A127407.P9257607222865587824

`abs(∑[∑[record[(2-n)²-(n+1)]]])`
-/

namespace A127407.P9257607222865587824
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A127407.P9257607222865587824

namespace A127407

/-- `abs(∑[∑[record[(2-n)²-(n+1)]]])` -/
def P9257607222865587824.Spec : Prop :=
  ∀ n, P9257607222865587824.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P1694150746313580635

`floor(∑[∑[∑[a(n-1)+2]-1]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A127407.P1694150746313580635
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127407.P1694150746313580635

namespace A127407

/-- `floor(∑[∑[∑[a(n-1)+2]-1]])` -/
def P1694150746313580635.Spec : Prop :=
  ∀ n, P1694150746313580635.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P1224479603865142699

`ceil(∑[∑[∑[a(n-1)+2]+n]])` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A127407.P1224479603865142699
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127407.P1224479603865142699

namespace A127407

/-- `ceil(∑[∑[∑[a(n-1)+2]+n]])` -/
def P1224479603865142699.Spec : Prop :=
  ∀ n, (P1224479603865142699.a n : ℤ) = A127407 (n + 2)

end A127407

/-! ## A127407.P16562922390069430139

`∑[∑[∑[a(n-1)+2]]]-∑[n+1]` with `a(0)=4`
-/

namespace A127407.P16562922390069430139
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A127407.P16562922390069430139

namespace A127407

/-- `∑[∑[∑[a(n-1)+2]]]-∑[n+1]` -/
def P16562922390069430139.Spec : Prop :=
  ∀ n, P16562922390069430139.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P361212666961060473

`A005701(n)+∑[∑[n]]`
-/

namespace A127407.P361212666961060473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A127407.P361212666961060473

namespace A127407

/-- `A005701(n)+∑[∑[n]]` -/
def P361212666961060473.Spec : Prop :=
  ∀ n, P361212666961060473.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P5966613176893557722

`∑[n+2]²-A212755(n)`
-/

namespace A127407.P5966613176893557722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A212755 n

end

end A127407.P5966613176893557722

namespace A127407

/-- `∑[n+2]²-A212755(n)` -/
def P5966613176893557722.Spec : Prop :=
  ∀ n, P5966613176893557722.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P2804411805792377274

`A095661(n)+A005582(n)`
-/

namespace A127407.P2804411805792377274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n + A005582 n

end

end A127407.P2804411805792377274

namespace A127407

/-- `A095661(n)+A005582(n)` -/
def P2804411805792377274.Spec : Prop :=
  ∀ n, P2804411805792377274.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P6335793418527597179

`A143941(n+1)+A014205(n)`
-/

namespace A127407.P6335793418527597179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1) + A014205 n

end

end A127407.P6335793418527597179

namespace A127407

/-- `A143941(n+1)+A014205(n)` -/
def P6335793418527597179.Spec : Prop :=
  ∀ n, P6335793418527597179.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P8625920242119150328

`A166814(n+1)+A062748(n)`
-/

namespace A127407.P8625920242119150328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166814 (n + 1) + A062748 n

end

end A127407.P8625920242119150328

namespace A127407

/-- `A166814(n+1)+A062748(n)` -/
def P8625920242119150328.Spec : Prop :=
  ∀ n, P8625920242119150328.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P16832373641892366268

`A219621(n+1)+A162148(n)`
-/

namespace A127407.P16832373641892366268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219621 (n + 1) + A162148 n

end

end A127407.P16832373641892366268

namespace A127407

/-- `A219621(n+1)+A162148(n)` -/
def P16832373641892366268.Spec : Prop :=
  ∀ n, P16832373641892366268.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P3309989031665477315

`A213824(n+1)-A053134(n)`
-/

namespace A127407.P3309989031665477315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213824 (n + 1) - A053134 n

end

end A127407.P3309989031665477315

namespace A127407

/-- `A213824(n+1)-A053134(n)` -/
def P3309989031665477315.Spec : Prop :=
  ∀ n, P3309989031665477315.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P2209885008324044389

`A290312(n)-A167543(n+8)`
-/

namespace A127407.P2209885008324044389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - A167543 (n + 8)

end

end A127407.P2209885008324044389

namespace A127407

/-- `A290312(n)-A167543(n+8)` -/
def P2209885008324044389.Spec : Prop :=
  ∀ n, P2209885008324044389.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P10024543155578837169

`A051744(n+1)+A022815(n+1)`
-/

namespace A127407.P10024543155578837169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) + A022815 (n + 1)

end

end A127407.P10024543155578837169

namespace A127407

/-- `A051744(n+1)+A022815(n+1)` -/
def P10024543155578837169.Spec : Prop :=
  ∀ n, P10024543155578837169.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P2972335451440446913

`A005712(n+2)+A005582(n+1)`
-/

namespace A127407.P2972335451440446913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) + A005582 (n + 1)

end

end A127407.P2972335451440446913

namespace A127407

/-- `A005712(n+2)+A005582(n+1)` -/
def P2972335451440446913.Spec : Prop :=
  ∀ n, P2972335451440446913.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P528719045586265904

`∑[A162254(n+1)]-A002417(n+1)`
-/

namespace A127407.P528719045586265904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002417 (n + 1)

end

end A127407.P528719045586265904

namespace A127407

/-- `∑[A162254(n+1)]-A002417(n+1)` -/
def P528719045586265904.Spec : Prop :=
  ∀ n, P528719045586265904.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P3417771526234030524

`2*A005582(n+1)-A000217(n+1)`
-/

namespace A127407.P3417771526234030524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005582 (n + 1) - A000217 (n + 1)

end

end A127407.P3417771526234030524

namespace A127407

/-- `2*A005582(n+1)-A000217(n+1)` -/
def P3417771526234030524.Spec : Prop :=
  ∀ n, P3417771526234030524.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P11524190260200354911

`A000292(n+1)+A005582(n+1)+A005582(n)`
-/

namespace A127407.P11524190260200354911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A005582 (n + 1) + A005582 n)

end

end A127407.P11524190260200354911

namespace A127407

/-- `A000292(n+1)+A005582(n+1)+A005582(n)` -/
def P11524190260200354911.Spec : Prop :=
  ∀ n, P11524190260200354911.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P4369410507580067315

`A006331(n+1)+A299120(n)+A077415(n+2)`
-/

namespace A127407.P4369410507580067315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1) + (A299120 n + A077415 (n + 2))

end

end A127407.P4369410507580067315

namespace A127407

/-- `A006331(n+1)+A299120(n)+A077415(n+2)` -/
def P4369410507580067315.Spec : Prop :=
  ∀ n, P4369410507580067315.a n = A127407 (n + 2)

end A127407

/-! ## A127407.P13198157247760079978

`A000217(n+1)+A005712(n+2)+A005712(n+2)`
-/

namespace A127407.P13198157247760079978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A005712 (n + 2) + A005712 (n + 2))

end

end A127407.P13198157247760079978

namespace A127407

/-- `A000217(n+1)+A005712(n+2)+A005712(n+2)` -/
def P13198157247760079978.Spec : Prop :=
  ∀ n, P13198157247760079978.a n = A127407 (n + 2)

end A127407

/-!
# A127408: Negative value of coefficient of x^(n-3) in the characteristic polynomial of a certain n X n integer circulant matrix.

The programs for A127408, the canonical program `A127408.P6615427175595116159` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127408 has offset 3).

The definition of A127408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127408.P6615427175595116159

`(n+3)²*∑[∑[∑[n+2]]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127408

/-- `(n+3)²*∑[∑[∑[n+2]]]` -/
def P6615427175595116159.Spec : Prop :=
  ∀ n, (P6615427175595116159.a n : ℤ) = A127408 (n + 3)

theorem P6615427175595116159.correct : P6615427175595116159.Spec := by
  intro n
  simp only [A127408, Nat.add_sub_cancel]

end A127408

/-! ## A127408.P9499684000874573447

`lcm(A000383(n), A127412(A167614(n+2)))`
-/

namespace A127408.P9499684000874573447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000383 n) (A127412 (A167614 (n + 2)).toNat)

end

end A127408.P9499684000874573447

namespace A127408

/-- `lcm(A000383(n), A127412(A167614(n+2)))` -/
def P9499684000874573447.Spec : Prop :=
  ∀ n, (P9499684000874573447.a n : ℤ) = A127408 (n + 3)

end A127408

/-! ## A127408.P10931961526818591304

`A257013(n+1)-A127412(A167614(n+2))`
-/

namespace A127408.P10931961526818591304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257013 (n + 1) - A127412 (A167614 (n + 2)).toNat

end

end A127408.P10931961526818591304

namespace A127408

/-- `A257013(n+1)-A127412(A167614(n+2))` -/
def P10931961526818591304.Spec : Prop :=
  ∀ n, P10931961526818591304.a n = A127408 (n + 3)

end A127408

/-!
# A127410: Negative value of coefficient of x^(n-5) in the characteristic polynomial of a certain n X n integer circulant matrix.

The programs for A127410, there is no canonical definition to state claims against.
-/

/-! ## A127410.P7832390694239204326

`-A127412(eq[5, A144328(n+1)])`
-/

namespace A127410.P7832390694239204326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A127412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127410.P7832390694239204326

/-!
# A127413: a(n) = Sum_{1<=k<=n, gcd(k,n)=1} prime(k).

The programs for A127413, there is no canonical definition to state claims against.
-/

/-! ## A127413.P10739398690802031303

`∑{d}[n+1, A008683(#)*A357210((n+1)/#)]`
-/

namespace A127413.P10739398690802031303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A357210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127413.P10739398690802031303

/-! ## A127413.P8061748946712428670

`A089625(A054432(n+1))`
-/

namespace A127413.P8061748946712428670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089625 (A054432 (n + 1)).toNat

end

end A127413.P8061748946712428670

/-! ## A127413.P5252973901646045047

`A089625(A245392(n+1)-(A247146(n+1)+2^n))`
-/

namespace A127413.P5252973901646045047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089625 (A245392 (n + 1) - (A247146 (n + 1) + (2 ^ n : ℤ))).toNat

end

end A127413.P5252973901646045047

/-! ## A127413.P8440935646367813927

`∑{p}[A308260(n+1), #]`
-/

namespace A127413.P8440935646367813927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A127413.P8440935646367813927

/-!
# A127414: a(n) = A007376(4*n+1).

The programs for A127414, there is no canonical definition to state claims against.
-/

/-! ## A127414.P3566673080058854231

`A007376(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127414.P3566673080058854231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (4 * n + 1)

end

end A127414.P3566673080058854231

/-! ## A127414.P13172624679914745512

`dr(A007376(Δ[C(2*n, 2)]))`
-/

namespace A127414.P13172624679914745512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A127414.P13172624679914745512

/-! ## A127414.P12201820289845963339

`dr(A007376(record[xor(3, n)-2]))`
-/

namespace A127414.P12201820289845963339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A127414.P12201820289845963339

/-! ## A127414.P11599517576436200371

`dr(A007376(A016813(n)))`
-/

namespace A127414.P11599517576436200371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A016813 n).toNat)

end

end A127414.P11599517576436200371

/-! ## A127414.P17434194846416545102

`dr(A007376(Δ[A000384(n)]))`
-/

namespace A127414.P17434194846416545102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A127414.P17434194846416545102

/-! ## A127414.P6644724065208056045

`A033307(4*n)`
-/

namespace A127414.P6644724065208056045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (4 * n)

end

end A127414.P6644724065208056045

/-! ## A127414.P6723386132725191222

`dr(A033307(A016813(n)-1))`
-/

namespace A127414.P6723386132725191222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A016813 n - 1).toNat)

end

end A127414.P6723386132725191222

/-! ## A127414.P11101020315344425149

`dr(A033307(A016825(n)-2))`
-/

namespace A127414.P11101020315344425149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A016825 n - 2).toNat)

end

end A127414.P11101020315344425149

/-! ## A127414.P10389350823681950272

`dr(A007376(A005408(2*n)))`
-/

namespace A127414.P10389350823681950272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A005408 (2 * n)).toNat)

end

end A127414.P10389350823681950272

/-! ## A127414.P17160422730465393172

`A127050(2*n)`
-/

namespace A127414.P17160422730465393172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (2 * n)

end

end A127414.P17160422730465393172

/-! ## A127414.P2303780458361682798

`A261333(4*n)%10`
-/

namespace A127414.P2303780458361682798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261333 (4 * n)) 10

end

end A127414.P2303780458361682798

/-! ## A127414.P7548878494078773873

`9-A031310(4*n+1)`
-/

namespace A127414.P7548878494078773873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A031310 (4 * n + 1)

end

end A127414.P7548878494078773873

/-! ## A127414.P6044327980223817609

`dr(A007376(A133310(6*n)))`
-/

namespace A127414.P6044327980223817609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A133310 (6 * n)).toNat)

end

end A127414.P6044327980223817609

/-! ## A127414.P9718572890146107309

`A108202(8*n+2)`
-/

namespace A127414.P9718572890146107309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (8 * n + 2)

end

end A127414.P9718572890146107309

/-! ## A127414.P10437723567111469877

`A108712(A017077(n))`
-/

namespace A127414.P10437723567111469877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A017077 n).toNat

end

end A127414.P10437723567111469877

/-! ## A127414.P17789117951660309214

`A108712(A017101(n)-2)`
-/

namespace A127414.P17789117951660309214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A017101 n - 2).toNat

end

end A127414.P17789117951660309214

/-! ## A127414.P13677193475573802148

`A108712(A158057(n)+1)`
-/

namespace A127414.P13677193475573802148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A158057 n + 1).toNat

end

end A127414.P13677193475573802148

/-!
# A127415: a(n) = Sum_{1<=k<=n, gcd(k,n)=1}, A000217(k).

The programs for A127415, the canonical program `A127415.P2427589428552924877` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127415 has offset 1).

The definition of A127415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127415.P2427589428552924877

`(A053818(n+1)+A023896(n+1))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127415

/-- `(A053818(n+1)+A023896(n+1))/2` -/
def P2427589428552924877.Spec : Prop :=
  ∀ n, P2427589428552924877.a n = (A127415 (n + 1) : ℚ)

end A127415

/-! ## A127415.P5109809376322533128

`(A023896(n+1)+(n+1)*A023896(n+1)-A057789(n+1))/2`
-/

namespace A127415.P5109809376322533128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) + ((n + 1 : ℤ) * A023896 (n + 1) - A057789 (n + 1)) : ℚ) / 2

end

end A127415.P5109809376322533128

namespace A127415

/-- `(A023896(n+1)+(n+1)*A023896(n+1)-A057789(n+1))/2` -/
def P5109809376322533128.Spec : Prop :=
  ∀ n, P5109809376322533128.a n = (A127415 (n + 1) : ℚ)

end A127415

/-! ## A127415.P11833953354656798558

`(A023896(n+1)+∑{d}[n+1, A000330(#)*A334657((n+1)/#)])/2`
-/

namespace A127415.P11833953354656798558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023896 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000330 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 2

end

end A127415.P11833953354656798558

namespace A127415

/-- `(A023896(n+1)+∑{d}[n+1, A000330(#)*A334657((n+1)/#)])/2` -/
def P11833953354656798558.Spec : Prop :=
  ∀ n, P11833953354656798558.a n = (A127415 (n + 1) : ℚ)

end A127415

/-! ## A127415.P9391375214949386666

`(A023896(n+1)+∑{d}[n+1, A008683(#)*A332654((n+1)/#)])/2`
-/

namespace A127415.P9391375214949386666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023896 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A332654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 2

end

end A127415.P9391375214949386666

namespace A127415

/-- `(A023896(n+1)+∑{d}[n+1, A008683(#)*A332654((n+1)/#)])/2` -/
def P9391375214949386666.Spec : Prop :=
  ∀ n, P9391375214949386666.a n = (A127415 (n + 1) : ℚ)

end A127415

/-! ## A127415.P14092841321493460740

`(A023896(n+1)+∑{d}[n+1, A053822(#)*A320941((n+1)/#)])/2`
-/

namespace A127415.P14092841321493460740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023896 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A053822 d * A320941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 2

end

end A127415.P14092841321493460740

namespace A127415

/-- `(A023896(n+1)+∑{d}[n+1, A053822(#)*A320941((n+1)/#)])/2` -/
def P14092841321493460740.Spec : Prop :=
  ∀ n, P14092841321493460740.a n = (A127415 (n + 1) : ℚ)

end A127415

/-! ## A127415.P4516033510373302533

`A023896(n+1)+A014682(A053818(n+1)-A023896(n+1))`
-/

namespace A127415.P4516033510373302533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + A014682 (A053818 (n + 1) - A023896 (n + 1)).toNat

end

end A127415.P4516033510373302533

namespace A127415

/-- `A023896(n+1)+A014682(A053818(n+1)-A023896(n+1))` -/
def P4516033510373302533.Spec : Prop :=
  ∀ n, P4516033510373302533.a n = A127415 (n + 1)

end A127415

/-! ## A127415.P9751147705361267536

`A014682(A053818(n+1)+A023896(n+1))`
-/

namespace A127415.P9751147705361267536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A053818 (n + 1) + A023896 (n + 1)).toNat

end

end A127415.P9751147705361267536

namespace A127415

/-- `A014682(A053818(n+1)+A023896(n+1))` -/
def P9751147705361267536.Spec : Prop :=
  ∀ n, P9751147705361267536.a n = A127415 (n + 1)

end A127415

/-!
# A127417: a(1)=1; for n > 1, a(n) = number of earlier terms a(k), 1 <= k <= n-1, such that (a(k)+n) is divisible by k.

The programs for A127417, there is no canonical definition to state claims against.
-/

/-! ## A127417.P5847950721911777255

`A064654(A166286(n)+A166278(n))`
-/

namespace A127417.P5847950721911777255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (A166286 n + A166278 n).toNat

end

end A127417.P5847950721911777255

/-! ## A127417.P14814114162178736597

`A193929(A133611(n+1)*A301097(n))`
-/

namespace A127417.P14814114162178736597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A133611 (n + 1) * A301097 n).toNat

end

end A127417.P14814114162178736597

/-! ## A127417.P7516975572528531510

`gcd(A107846(n), A124765(A023272(n+1)))`
-/

namespace A127417.P7516975572528531510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107846 n) (A124765 (A023272 (n + 1)).toNat)

end

end A127417.P7516975572528531510

/-! ## A127417.P6198146004714739066

`and(A124765(A023272(n+1)), A136020(3*n+2))`
-/

namespace A127417.P6198146004714739066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124765 (A023272 (n + 1)).toNat) (A136020 (3 * n + 2))

end

end A127417.P6198146004714739066

/-! ## A127417.P5994427493055144000

`A000120(A248835(n+1)+A107846(A187257(n)))`
-/

namespace A127417.P5994427493055144000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A248835 (n + 1) + A107846 (A187257 n).toNat).toNat

end

end A127417.P5994427493055144000

/-!
# A127418: a(1)=1; for n>1, a(n) = the number of earlier terms a(k), 1

The programs for A127418, there is no canonical definition to state claims against.
-/

/-! ## A127418.P1064628072168831068

`A126304(A106436(2*(n+1)))+A032742(n+1)`
-/

namespace A127418.P1064628072168831068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 (A106436 (2 * (n + 1))).toNat + A032742 (n + 1)

end

end A127418.P1064628072168831068

/-!
# A127419: Recurrence: a(n) = a(n-1) + floor( (sqrt(8 * a(n-1) - 7) - 1)/2 ) for n>=2 with a(0)=1, a(1)=2.

The programs for A127419, the canonical program `A127419.P15504390419054907164` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127419 has offset 0).

The definition of A127419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor((sqrt(8*a(n-1)-7)-1)/2)` (program `A127419.P15504390419054907164`, by `A127419.P15504390419054907164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127419.P15504390419054907164

`a(n-1)+floor((sqrt(8*a(n-1)-7)-1)/2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127419

/-- `a(n-1)+floor((sqrt(8*a(n-1)-7)-1)/2)` -/
def P15504390419054907164.Spec : Prop :=
  ∀ n, P15504390419054907164.a n = A127419 n

theorem P15504390419054907164.correct : P15504390419054907164.Spec := by
  intro n
  simp only [A127419]

end A127419

/-! ## A127419.P13421829227614190547

`floor(a(n-1)+sqrt(a(n-1)+a(n-2)-2))` with `a(0)=1, a(1)=2`
-/

namespace A127419.P13421829227614190547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (a (n - 1) + (a (n - 2) - 2) : ℝ)⌋

end

end A127419.P13421829227614190547

namespace A127419

/-- `floor(a(n-1)+sqrt(a(n-1)+a(n-2)-2))` -/
def P13421829227614190547.Spec : Prop :=
  ∀ n, P13421829227614190547.a n = A127419 n

end A127419

/-! ## A127419.P16382381908477356134

`∑[∑[char[A288383(n+1)]]+1]`
-/

namespace A127419.P16382381908477356134
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288383 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127419.P16382381908477356134

namespace A127419

/-- `∑[∑[char[A288383(n+1)]]+1]` -/
def P16382381908477356134.Spec : Prop :=
  ∀ n, (P16382381908477356134.a n : ℤ) = A127419 n

end A127419

/-! ## A127419.P1205490565974111375

`A103354(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A127419.P1205490565974111375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A103354 (n - 1) + a (n - 1)

end

end A127419.P1205490565974111375

namespace A127419

/-- `A103354(n-1)+a(n-1)` -/
def P1205490565974111375.Spec : Prop :=
  ∀ n, P1205490565974111375.a n = A127419 n

end A127419

/-! ## A127419.P12675404857153378132

`∑[∑[A288381(abs(1-n)+1)]+1]`
-/

namespace A127419.P12675404857153378132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288381 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127419.P12675404857153378132

namespace A127419

/-- `∑[∑[A288381(abs(1-n)+1)]+1]` -/
def P12675404857153378132.Spec : Prop :=
  ∀ n, P12675404857153378132.a n = A127419 n

end A127419

/-! ## A127419.P14945963594137902212

`∑[A201219(a(n-1))+a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A127419.P14945963594137902212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  A201219 (f1 (n - 1)).toNat + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127419.P14945963594137902212

namespace A127419

/-- `∑[A201219(a(n-1))+a(n-2)]` -/
def P14945963594137902212.Spec : Prop :=
  ∀ n, P14945963594137902212.a n = A127419 n

end A127419

/-! ## A127419.P15742615051045351770

`A007401(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A127419.P15742615051045351770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007401 (a (n - 1)).toNat

end

end A127419.P15742615051045351770

namespace A127419

/-- `A007401(a(n-1))` -/
def P15742615051045351770.Spec : Prop :=
  ∀ n, P15742615051045351770.a n = A127419 n

end A127419

/-! ## A127419.P9676586284597052298

`A014132(a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A127419.P9676586284597052298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014132 (a (n - 1)).toNat - 1

end

end A127419.P9676586284597052298

namespace A127419

/-- `A014132(a(n-1))-1` -/
def P9676586284597052298.Spec : Prop :=
  ∀ n, P9676586284597052298.a n = A127419 n

end A127419

/-! ## A127419.P13665926276077599942

`A035254(a(n-1))+2` with `a(0)=1, a(1)=2`
-/

namespace A127419.P13665926276077599942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A035254 (a (n - 1)).toNat + 2

end

end A127419.P13665926276077599942

namespace A127419

/-- `A035254(a(n-1))+2` -/
def P13665926276077599942.Spec : Prop :=
  ∀ n, P13665926276077599942.a n = A127419 n

end A127419

/-! ## A127419.P8426027753661241412

`A080036(a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A127419.P8426027753661241412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A080036 (a (n - 1)).toNat - 2

end

end A127419.P8426027753661241412

namespace A127419

/-- `A080036(a(n-1))-2` -/
def P8426027753661241412.Spec : Prop :=
  ∀ n, P8426027753661241412.a n = A127419 n

end A127419

/-! ## A127419.P7317457404642642747

`A241151(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A127419.P7317457404642642747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A241151 (a (n - 1)).toNat + a (n - 2)

end

end A127419.P7317457404642642747

namespace A127419

/-- `A241151(a(n-1))+a(n-2)` -/
def P7317457404642642747.Spec : Prop :=
  ∀ n, P7317457404642642747.a n = A127419 n

end A127419

/-! ## A127419.P13716075640923249196

`A023443(A014132(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A127419.P13716075640923249196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A023443 (A014132 (a (n - 1)).toNat).toNat

end

end A127419.P13716075640923249196

namespace A127419

/-- `A023443(A014132(a(n-1)))` -/
def P13716075640923249196.Spec : Prop :=
  ∀ n, P13716075640923249196.a n = A127419 n

end A127419

/-!
# A127420: Triangle, read by rows, where row n+1 is generated from row n by first inserting a zero after terms found at positions {m*(m+3)/2, m >= 0} in row n and then taking the partial sums from right to left, for n >= 1. Row 0 consists of a single '1' by convention.

The programs for A127420, there is no canonical definition to state claims against.
-/

/-! ## A127420.P12866048425772488686

`A135879(lt[A135879(n), A114321(n)])`
-/

namespace A127420.P12866048425772488686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135879 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127420.P12866048425772488686

/-! ## A127420.P17054596561113426128

`A249832(A249844(n+1))+A064191(n)`
-/

namespace A127420.P17054596561113426128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A249844 (n + 1)).toNat + A064191 n

end

end A127420.P17054596561113426128

/-! ## A127420.P7636010829103977538

`or(A064191(n), A102683(A251905(n+1)))`
-/

namespace A127420.P7636010829103977538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064191 n) (A102683 (A251905 (n + 1)).toNat)

end

end A127420.P7636010829103977538

/-! ## A127420.P8366854053004678801

`A104484(or(A104484(n), A270236(n+1)))`
-/

namespace A127420.P8366854053004678801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (Int.lor (A104484 n) (A270236 (n + 1))).toNat

end

end A127420.P8366854053004678801

/-!
# A127421: Numbers whose decimal expansion is a concatenation of 2 consecutive increasing nonnegative numbers.

The programs for A127421, the canonical program `A127421.P18063083011267280139` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127421 has offset 1).

The definition of A127421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127421.P18063083011267280139

`n*10^floor(log(10*(n+1))/log(10))+n+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127421

/-- `n*10^floor(log(10*(n+1))/log(10))+n+1` -/
def P18063083011267280139.Spec : Prop :=
  ∀ n, P18063083011267280139.a n = (A127421 (n + 1) : ℚ)

end A127421

/-! ## A127421.P4359040118287635144

`record[A001704(A008619(n))^(n%2)]`
-/

namespace A127421.P4359040118287635144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A008619 n).toNat ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127421.P4359040118287635144

namespace A127421

/-- `record[A001704(A008619(n))^(n%2)]` -/
def P4359040118287635144.Spec : Prop :=
  ∀ n, P4359040118287635144.a n = A127421 (n + 1)

end A127421

/-! ## A127421.P5963518167112124102

`A380389(A058331(n))`
-/

namespace A127421.P5963518167112124102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380389 (A058331 n).toNat

end

end A127421.P5963518167112124102

namespace A127421

/-- `A380389(A058331(n))` -/
def P5963518167112124102.Spec : Prop :=
  ∀ n, P5963518167112124102.a n = A127421 (n + 1)

end A127421

/-! ## A127421.P16533586596390331371

`A385623(2*(n+1)²)`
-/

namespace A127421.P16533586596390331371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385623 (2 * (n + 1) ^ 2)

end

end A127421.P16533586596390331371

namespace A127421

/-- `A385623(2*(n+1)²)` -/
def P16533586596390331371.Spec : Prop :=
  ∀ n, P16533586596390331371.a n = A127421 (n + 1)

end A127421

/-!
# A127423: a(1) = 1; for n > 1, a(n) = n concatenated with n - 1.

The programs for A127423, there is no canonical definition to state claims against.
-/

/-! ## A127423.P11921174337747013078

`record[A248378(n)^A088705(n)]`
-/

namespace A127423.P11921174337747013078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248378 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127423.P11921174337747013078

/-!
# A127424: Numbers whose decimal expansion is a concatenation of 3 consecutive decreasing numbers.

The programs for A127424, there is no canonical definition to state claims against.
-/

/-! ## A127424.P4563351374300530554

`3*A075004(n)`
-/

namespace A127424.P4563351374300530554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075004 n

end

end A127424.P4563351374300530554

/-! ## A127424.P981861228091617108

`A008486(A075004(n))`
-/

namespace A127424.P981861228091617108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A075004 n).toNat

end

end A127424.P981861228091617108

/-! ## A127424.P2047261274396127221

`A016789(A075004(n)-1)+1`
-/

namespace A127424.P2047261274396127221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A075004 n - 1).toNat + 1

end

end A127424.P2047261274396127221

/-! ## A127424.P9076304276245165857

`A016777(A075004(n)-1)+2`
-/

namespace A127424.P9076304276245165857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A075004 n - 1).toNat + 2

end

end A127424.P9076304276245165857

/-! ## A127424.P11874608081130724585

`A016777(A075004(n))-A055642(n)`
-/

namespace A127424.P11874608081130724585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A075004 n).toNat - A055642 n

end

end A127424.P11874608081130724585

/-!
# A127425: Floor((n*(n+1)^3/8)^n)-(n!)^4.

The programs for A127425, the canonical program `A127425.P9580399519923601663` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127425 has offset 0).

The definition of A127425 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n*(n+1)^3/8)^n)-n!^4` (program `A127425.P9580399519923601663`, by `A127425.P9580399519923601663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127425.P9580399519923601663

`floor((n*(n+1)^3/8)^n)-n!^4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127425

/-- `floor((n*(n+1)^3/8)^n)-n!^4` -/
def P9580399519923601663.Spec : Prop :=
  ∀ n, P9580399519923601663.a n = A127425 n

theorem P9580399519923601663.correct : P9580399519923601663.Spec := by
  intro n
  simp only [A127425]

end A127425

/-!
# A127426: a(n) = n! - ceiling(n^(n/2)).

The programs for A127426, the canonical program `A127426.P17897536547715096396` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127426 has offset 0).

The definition of A127426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-ceil(n^(n/2))` (program `A127426.P17897536547715096396`, by `A127426.P17897536547715096396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127426.P17897536547715096396

`n!-ceil(n^(n/2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127426

/-- `n!-ceil(n^(n/2))` -/
def P17897536547715096396.Spec : Prop :=
  ∀ n, P17897536547715096396.a n = A127426 n

theorem P17897536547715096396.correct : P17897536547715096396.Spec := by
  intro n
  simp only [A127426]

end A127426

/-! ## A127426.P16585209489529838854

`floor(n!-sqrt(n^n))`
-/

namespace A127426.P16585209489529838854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) - Real.sqrt (n ^ n : ℝ)⌋

end

end A127426.P16585209489529838854

namespace A127426

/-- `floor(n!-sqrt(n^n))` -/
def P16585209489529838854.Spec : Prop :=
  ∀ n, P16585209489529838854.a n = A127426 n

end A127426

/-! ## A127426.P5579055253504176665

`floor(abs(n!-n^(n/2)))`
-/

namespace A127426.P5579055253504176665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(Nat.factorial n : ℝ) - (n : ℝ) ^ ((n : ℚ) / 2 : ℝ)|⌋

end

end A127426.P5579055253504176665

namespace A127426

/-- `floor(abs(n!-n^(n/2)))` -/
def P5579055253504176665.Spec : Prop :=
  ∀ n, P5579055253504176665.a n = A127426 n

end A127426

/-! ## A127426.P11537809917771395752

`∏[A028310(n)]-ceil(sqrt(n^n))`
-/

namespace A127426.P11537809917771395752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ⌈Real.sqrt (n ^ n : ℝ)⌉

end

end A127426.P11537809917771395752

namespace A127426

/-- `∏[A028310(n)]-ceil(sqrt(n^n))` -/
def P11537809917771395752.Spec : Prop :=
  ∀ n, P11537809917771395752.a n = A127426 n

end A127426

/-! ## A127426.P4351929194932514725

`floor(A000142(n)-sqrt(A000312(n)))`
-/

namespace A127426.P4351929194932514725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℝ) - Real.sqrt (A000312 n : ℝ)⌋

end

end A127426.P4351929194932514725

namespace A127426

/-- `floor(A000142(n)-sqrt(A000312(n)))` -/
def P4351929194932514725.Spec : Prop :=
  ∀ n, P4351929194932514725.a n = A127426 n

end A127426

/-!
# A127427: a(n) = v_3( (6n)! ) - v_3( (3n)! ), where v_3(N) is the 3-adic valuation A007949(N).

The programs for A127427, the canonical program `A127427.P10470407826532983788` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127427 has offset 0).

The definition of A127427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127427.P10470407826532983788

`(3*n+A053735(n)-A053735(6*n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127427

/-- `(3*n+A053735(n)-A053735(6*n))/2` -/
def P10470407826532983788.Spec : Prop :=
  ∀ n, P10470407826532983788.a n = (A127427 n : ℚ)

end A127427

/-! ## A127427.P9682978505767604324

`a(round(n/3))+n` with `a(0)=0`
-/

namespace A127427.P9682978505767604324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat + n

end

end A127427.P9682978505767604324

namespace A127427

/-- `a(round(n/3))+n` -/
def P9682978505767604324.Spec : Prop :=
  ∀ n, (P9682978505767604324.a n : ℤ) = A127427 n

end A127427

/-! ## A127427.P16192225008642486666

`n-floor(-a(round(n/3)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A127427.P16192225008642486666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (-a (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat)

end

end A127427.P16192225008642486666

namespace A127427

/-- `n-floor(-a(round(n/3)))` -/
def P16192225008642486666.Spec : Prop :=
  ∀ n, P16192225008642486666.a n = A127427 n

end A127427

/-! ## A127427.P9338260534155411760

`record[a(n-2)+val(n, 3)]` with `a(0)=0, a(1)=0`
-/

namespace A127427.P9338260534155411760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + SequenceMachineLib.valuation n 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127427.P9338260534155411760

namespace A127427

/-- `record[a(n-2)+val(n, 3)]` -/
def P9338260534155411760.Spec : Prop :=
  ∀ n, (P9338260534155411760.a n : ℤ) = A127427 n

end A127427

/-! ## A127427.P17604732079001346998

`abs(a(floor((n+1)/3))+n)` with `a(0)=0`
-/

namespace A127427.P17604732079001346998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n + 1 : ℚ) / 3⌋.toNat + n

end

end A127427.P17604732079001346998

namespace A127427

/-- `abs(a(floor((n+1)/3))+n)` -/
def P17604732079001346998.Spec : Prop :=
  ∀ n, (P17604732079001346998.a n : ℤ) = A127427 n

end A127427

/-! ## A127427.P18176088827305612644

`∑[val(abs(1-2*n), 3)]+n`
-/

namespace A127427.P18176088827305612644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |1 - (2 * n : ℤ)|.toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A127427.P18176088827305612644

namespace A127427

/-- `∑[val(abs(1-2*n), 3)]+n` -/
def P18176088827305612644.Spec : Prop :=
  ∀ n, (P18176088827305612644.a n : ℤ) = A127427 n

end A127427

/-! ## A127427.P8405584332287669046

`floor(a(floor((n+1)/3))+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A127427.P8405584332287669046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n + 1 : ℚ) / 3⌋.toNat + n

end

end A127427.P8405584332287669046

namespace A127427

/-- `floor(a(floor((n+1)/3))+n)` -/
def P8405584332287669046.Spec : Prop :=
  ∀ n, (P8405584332287669046.a n : ℤ) = A127427 n

end A127427

/-! ## A127427.P16996907510547392505

`∑[a(∑[∑[n+1]]%(n+1))+1]` with `a(0)=0`
-/

namespace A127427.P16996907510547392505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127427.P16996907510547392505

namespace A127427

/-- `∑[a(∑[∑[n+1]]%(n+1))+1]` -/
def P16996907510547392505.Spec : Prop :=
  ∀ n, (P16996907510547392505.a n : ℤ) = A127427 n

end A127427

/-! ## A127427.P5484328372140408782

`∑[A253786(n)]+n`
-/

namespace A127427.P5484328372140408782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A127427.P5484328372140408782

namespace A127427

/-- `∑[A253786(n)]+n` -/
def P5484328372140408782.Spec : Prop :=
  ∀ n, P5484328372140408782.a n = A127427 n

end A127427

/-! ## A127427.P2825900780515913252

`A004128(n)+A000989(n)`
-/

namespace A127427.P2825900780515913252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n + A000989 n

end

end A127427.P2825900780515913252

namespace A127427

/-- `A004128(n)+A000989(n)` -/
def P2825900780515913252.Spec : Prop :=
  ∀ n, P2825900780515913252.a n = A127427 n

end A127427

/-! ## A127427.P5241957512543166821

`n-A001489(∑[A253786(n)])`
-/

namespace A127427.P5241957512543166821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127427.P5241957512543166821

namespace A127427

/-- `n-A001489(∑[A253786(n)])` -/
def P5241957512543166821.Spec : Prop :=
  ∀ n, P5241957512543166821.a n = A127427 n

end A127427

/-! ## A127427.P14775938767635189194

`A000989(n)+A054861(n)+n`
-/

namespace A127427.P14775938767635189194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n + (A054861 n + (n : ℤ))

end

end A127427.P14775938767635189194

namespace A127427

/-- `A000989(n)+A054861(n)+n` -/
def P14775938767635189194.Spec : Prop :=
  ∀ n, P14775938767635189194.a n = A127427 n

end A127427

/-! ## A127427.P3702758755983972561

`∑[1-(A000007(n)-A253786(n))]`
-/

namespace A127427.P3702758755983972561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A253786 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127427.P3702758755983972561

namespace A127427

/-- `∑[1-(A000007(n)-A253786(n))]` -/
def P3702758755983972561.Spec : Prop :=
  ∀ n, P3702758755983972561.a n = A127427 n

end A127427

/-! ## A127427.P12807341603330442715

`∑[A254046(n+1)]-A254046(n+1)`
-/

namespace A127427.P12807341603330442715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A254046 (n + 1)

end

end A127427.P12807341603330442715

namespace A127427

/-- `∑[A254046(n+1)]-A254046(n+1)` -/
def P12807341603330442715.Spec : Prop :=
  ∀ n, P12807341603330442715.a n = A127427 n

end A127427

/-! ## A127427.P15149855645866347481

`A004128(n)+A053735(n)-A089643(n)`
-/

namespace A127427.P15149855645866347481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n + (A053735 n - A089643 n)

end

end A127427.P15149855645866347481

namespace A127427

/-- `A004128(n)+A053735(n)-A089643(n)` -/
def P15149855645866347481.Spec : Prop :=
  ∀ n, P15149855645866347481.a n = A127427 n

end A127427

/-! ## A127427.P9962563236037451308

`n-A001057(n-A065363(n))`
-/

namespace A127427.P9962563236037451308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 ((n : ℤ) - A065363 n).toNat

end

end A127427.P9962563236037451308

namespace A127427

/-- `n-A001057(n-A065363(n))` -/
def P9962563236037451308.Spec : Prop :=
  ∀ n, P9962563236037451308.a n = A127427 n

end A127427

/-! ## A127427.P11036026949232262283

`∑[A072078(2*n+1)]-A072078(2*n+1)`
-/

namespace A127427.P11036026949232262283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A072078 (2 * n + 1)

end

end A127427.P11036026949232262283

namespace A127427

/-- `∑[A072078(2*n+1)]-A072078(2*n+1)` -/
def P11036026949232262283.Spec : Prop :=
  ∀ n, P11036026949232262283.a n = A127427 n

end A127427

/-! ## A127427.P3658030232186225971

`∑[val(record[A084060(n)], 3)]`
-/

namespace A127427.P3658030232186225971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127427.P3658030232186225971

namespace A127427

/-- `∑[val(record[A084060(n)], 3)]` -/
def P3658030232186225971.Spec : Prop :=
  ∀ n, (P3658030232186225971.a n : ℤ) = A127427 n

end A127427

/-! ## A127427.P7476938833120592156

`A089792(n)+A054861(2*n)`
-/

namespace A127427.P7476938833120592156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 n + A054861 (2 * n)

end

end A127427.P7476938833120592156

namespace A127427

/-- `A089792(n)+A054861(2*n)` -/
def P7476938833120592156.Spec : Prop :=
  ∀ n, P7476938833120592156.a n = A127427 n

end A127427

/-!
# A127428: v_5( (10n)! ) - v_5( (5n)! ), where v_p(N) is the p-adic valuation defined in A112765.

The programs for A127428, the canonical program `A127428.P8545798925888774103` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127428 has offset 0).

The definition of A127428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127428.P8545798925888774103

`a(floor((n+2)/5))+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127428

/-- `a(floor((n+2)/5))+n` -/
def P8545798925888774103.Spec : Prop :=
  ∀ n, (P8545798925888774103.a n : ℤ) = A127428 n

theorem P8545798925888774103.correct : P8545798925888774103.Spec := by
  intro n
  simp only [A127428]

end A127428

/-! ## A127428.P12710080280807260962

`∑[val(n+62, 5)]+n`
-/

namespace A127428.P12710080280807260962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 62) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A127428.P12710080280807260962

namespace A127428

/-- `∑[val(n+62, 5)]+n` -/
def P12710080280807260962.Spec : Prop :=
  ∀ n, (P12710080280807260962.a n : ℤ) = A127428 n

end A127428

/-! ## A127428.P14589146744341348294

`record[a(n-2)+val(n, 5)]` with `a(0)=0, a(1)=0`
-/

namespace A127428.P14589146744341348294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + SequenceMachineLib.valuation n 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127428.P14589146744341348294

namespace A127428

/-- `record[a(n-2)+val(n, 5)]` -/
def P14589146744341348294.Spec : Prop :=
  ∀ n, (P14589146744341348294.a n : ℤ) = A127428 n

end A127428

/-! ## A127428.P10241160979221853334

`∑[val(A135042(2*n), 5)]`
-/

namespace A127428.P10241160979221853334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135042 (2 * n)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127428.P10241160979221853334

namespace A127428

/-- `∑[val(A135042(2*n), 5)]` -/
def P10241160979221853334.Spec : Prop :=
  ∀ n, (P10241160979221853334.a n : ℤ) = A127428 n

end A127428

/-! ## A127428.P11659249536381077042

`record[A027868(n)-a(n-1)]` with `a(0)=0`
-/

namespace A127428.P11659249536381077042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A027868 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127428.P11659249536381077042

namespace A127428

/-- `record[A027868(n)-a(n-1)]` -/
def P11659249536381077042.Spec : Prop :=
  ∀ n, P11659249536381077042.a n = A127428 n

end A127428

/-! ## A127428.P4921744057301237765

`floor(abs(a(A002266(n+2)))+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A127428.P4921744057301237765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A002266 (n + 2)).toNat + n

end

end A127428.P4921744057301237765

namespace A127428

/-- `floor(abs(a(A002266(n+2)))+n)` -/
def P4921744057301237765.Spec : Prop :=
  ∀ n, (P4921744057301237765.a n : ℤ) = A127428 n

end A127428

/-! ## A127428.P7840476597543383022

`∑[val(A008706(A004273(n)), 5)]`
-/

namespace A127428.P7840476597543383022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008706 (A004273 n).toNat).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127428.P7840476597543383022

namespace A127428

/-- `∑[val(A008706(A004273(n)), 5)]` -/
def P7840476597543383022.Spec : Prop :=
  ∀ n, (P7840476597543383022.a n : ℤ) = A127428 n

end A127428

/-! ## A127428.P115013296497526157

`A191610(n+1)+A000999(n)`
-/

namespace A127428.P115013296497526157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1) + A000999 n

end

end A127428.P115013296497526157

namespace A127428

/-- `A191610(n+1)+A000999(n)` -/
def P115013296497526157.Spec : Prop :=
  ∀ n, P115013296497526157.a n = A127428 n

end A127428

/-! ## A127428.P16638016834966710450

`A191610(2*n+1)-A191610(n+1)`
-/

namespace A127428.P16638016834966710450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (2 * n + 1) - A191610 (n + 1)

end

end A127428.P16638016834966710450

namespace A127428

/-- `A191610(2*n+1)-A191610(n+1)` -/
def P16638016834966710450.Spec : Prop :=
  ∀ n, P16638016834966710450.a n = A127428 n

end A127428

/-!
# A127429: 2^(n*(n-1)/2) - n!.

The programs for A127429, the canonical program `A127429.P8431930548411554598` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127429 has offset 0).

The definition of A127429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127429.P8431930548411554598

`2^(n*(n-1)/2)-n!`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127429

/-- `2^(n*(n-1)/2)-n!` -/
def P8431930548411554598.Spec : Prop :=
  ∀ n, P8431930548411554598.a n = (A127429 n : ℝ)

end A127429

/-! ## A127429.P16361430087073150343

`abs(n!-A006125(n))`
-/

namespace A127429.P16361430087073150343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) - A006125 n|

end

end A127429.P16361430087073150343

namespace A127429

/-- `abs(n!-A006125(n))` -/
def P16361430087073150343.Spec : Prop :=
  ∀ n, P16361430087073150343.a n = A127429 n

end A127429

/-! ## A127429.P3495505020326100844

`2^C(n, 2)-A000142(n)`
-/

namespace A127429.P3495505020326100844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A000142 n

end

end A127429.P3495505020326100844

namespace A127429

/-- `2^C(n, 2)-A000142(n)` -/
def P3495505020326100844.Spec : Prop :=
  ∀ n, P3495505020326100844.a n = A127429 n

end A127429

/-! ## A127429.P4298006260213634736

`2^C(n, 2)-∏[A028310(n)]`
-/

namespace A127429.P4298006260213634736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127429.P4298006260213634736

namespace A127429

/-- `2^C(n, 2)-∏[A028310(n)]` -/
def P4298006260213634736.Spec : Prop :=
  ∀ n, P4298006260213634736.a n = A127429 n

end A127429

/-!
# A127430: Primes p such that 6p-5 and 6p+5 are also primes.

The programs for A127430, there is no canonical definition to state claims against.
-/

/-! ## A127430.P12555060104335222488

`p?[ceil(A262086(n+1)/6)]`
-/

namespace A127430.P12555060104335222488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262086 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127430.P12555060104335222488

/-! ## A127430.P6200844229359578145

`record[A006530(A087696(n+1))]`
-/

namespace A127430.P6200844229359578145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127430.P6200844229359578145

/-! ## A127430.P12305598083864524705

`record[A006530(A088765(n+1))]`
-/

namespace A127430.P12305598083864524705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088765 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127430.P12305598083864524705

/-! ## A127430.P207959196315088517

`p?[A002264(A088765(n+1)+1)]`
-/

namespace A127430.P207959196315088517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A088765 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127430.P207959196315088517

/-! ## A127430.P17646489070275712660

`record[A006530(A015916(n+1)+5)]`
-/

namespace A127430.P17646489070275712660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A015916 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127430.P17646489070275712660

/-!
# A127431: a(1)=1. a(n) = number of earlier terms a(k), 1<=k<=n-1, such that (k+n) is divisible by a(k).

The programs for A127431, there is no canonical definition to state claims against.
-/

/-! ## A127431.P10696121325876526586

`A334872(A187829(n+1))+A317791(A004277(n))`
-/

namespace A127431.P10696121325876526586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334872 (A187829 (n + 1)).toNat + A317791 (A004277 n).toNat

end

end A127431.P10696121325876526586

/-!
# A127432: a(0)=1. a(n) = number of earlier terms a(k), 0<=k<=n-1, such that (k+n) is divisible by a(k).

The programs for A127432, there is no canonical definition to state claims against.
-/

/-! ## A127432.P13344726638589948940

`A001222(A026256(n+1)*A056469(n))`
-/

namespace A127432.P13344726638589948940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A026256 (n + 1) * A056469 n).toNat

end

end A127432.P13344726638589948940

/-! ## A127432.P18329017884103917036

`A000120(A093304(n+1))-A124760(n)`
-/

namespace A127432.P18329017884103917036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A093304 (n + 1)).toNat - A124760 n

end

end A127432.P18329017884103917036

/-! ## A127432.P13243304132873485934

`A352514(A071425(n+1))+A330036(n)`
-/

namespace A127432.P13243304132873485934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A071425 (n + 1)).toNat + A330036 n

end

end A127432.P13243304132873485934

/-! ## A127432.P6448585644765448137

`A055091(A300096(n+1)+A080497(n+2))`
-/

namespace A127432.P6448585644765448137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A300096 (n + 1) + A080497 (n + 2)).toNat

end

end A127432.P6448585644765448137

/-! ## A127432.P951087393033025238

`A007895(A303603(n+3)+A074854(n+1))`
-/

namespace A127432.P951087393033025238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A303603 (n + 3) + A074854 (n + 1)).toNat

end

end A127432.P951087393033025238

/-!
# A127433: a(1)=1. a(n) = number of earlier terms a(k), 1<=k<=n-1, such that (k+n) is coprime to a(k).

The programs for A127433, there is no canonical definition to state claims against.
-/

/-! ## A127433.P4956176843623100579

`A255270(lcm((n+2)², A135675(2*(n+1))))`
-/

namespace A127433.P4956176843623100579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (Int.lcm ((n + 2) ^ 2 : ℤ) (A135675 (2 * (n + 1))))

end

end A127433.P4956176843623100579

/-! ## A127433.P7805799247069099343

`A267807(n)+A014083(A318570(n))`
-/

namespace A127433.P7805799247069099343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267807 n + A014083 (A318570 n).toNat

end

end A127433.P7805799247069099343

/-! ## A127433.P6883105610504141754

`A194258(n+1)+A001222(A112834(n))`
-/

namespace A127433.P6883105610504141754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (n + 1) + A001222 (A112834 n).toNat

end

end A127433.P6883105610504141754

/-! ## A127433.P1871688558575894117

`A343630(A002349(n+1))+A267807(n)`
-/

namespace A127433.P1871688558575894117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343630 (A002349 (n + 1)).toNat + A267807 n

end

end A127433.P1871688558575894117

/-! ## A127433.P3008820956523485198

`A294930(A272484(n+1))+A267807(n)`
-/

namespace A127433.P3008820956523485198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A272484 (n + 1)).toNat + A267807 n

end

end A127433.P3008820956523485198

/-!
# A127434: a(0)=1. a(n) = number of earlier terms a(k), 0<=k<=n-1, such that (k+n) is coprime to a(k).

The programs for A127434, there is no canonical definition to state claims against.
-/

/-! ## A127434.P10130466069164540986

`A000120(A331703(n+1)+A083329(n))`
-/

namespace A127434.P10130466069164540986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A331703 (n + 1) + A083329 n).toNat

end

end A127434.P10130466069164540986

/-! ## A127434.P85596623175483876

`A358552(A358588(n+1)+A325856(n))`
-/

namespace A127434.P85596623175483876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (A358588 (n + 1) + A325856 n).toNat

end

end A127434.P85596623175483876

/-! ## A127434.P14048850763943240413

`A110591((A237519(2*n+3)+1)*A024322(n+1))`
-/

namespace A127434.P14048850763943240413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 ((A237519 (2 * n + 3) + 1) * A024322 (n + 1)).toNat

end

end A127434.P14048850763943240413

/-! ## A127434.P5237367290503986637

`A280026(A279211(A280026(A279967(A011782(n+1)))))`
-/

namespace A127434.P5237367290503986637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 (A279211 (A280026 (A279967 (A011782 (n + 1)).toNat).toNat).toNat).toNat

end

end A127434.P5237367290503986637

/-!
# A127435: Primes p such that (p-1)^2 + 1 is prime.

The programs for A127435, the canonical program `A127435.P10299367039698529313` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127435 has offset 1).

The definition of A127435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127435.P14359932016960479795

`sqrt(A127436(n+1)-1)+1`
-/

namespace A127435.P14359932016960479795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127436 (n + 1) - 1 : ℝ) + 1

end

end A127435.P14359932016960479795

namespace A127435

/-- `sqrt(A127436(n+1)-1)+1` -/
def P14359932016960479795.Spec : Prop :=
  ∀ n, P14359932016960479795.a n = (A127435 (n + 1) : ℝ)

end A127435

/-! ## A127435.P10299367039698529313

`A070689(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A127435

/-- `A070689(n+1)+1` -/
def P10299367039698529313.Spec : Prop :=
  ∀ n, P10299367039698529313.a n = A127435 (n + 1)

theorem P10299367039698529313.correct : P10299367039698529313.Spec := by
  intro n
  simp only [A127435, Nat.add_sub_cancel]

end A127435

/-! ## A127435.P3070953409693911448

`ceil(sqrt(A127436(n+1)))`
-/

namespace A127435.P3070953409693911448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A127436 (n + 1) : ℝ)⌉

end

end A127435.P3070953409693911448

namespace A127435

/-- `ceil(sqrt(A127436(n+1)))` -/
def P3070953409693911448.Spec : Prop :=
  ∀ n, P3070953409693911448.a n = A127435 (n + 1)

end A127435

/-! ## A127435.P1284005688023090902

`ceil(root(A237627(n+1), 3))`
-/

namespace A127435.P1284005688023090902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A237627 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A127435.P1284005688023090902

namespace A127435

/-- `ceil(root(A237627(n+1), 3))` -/
def P1284005688023090902.Spec : Prop :=
  ∀ n, P1284005688023090902.a n = A127435 (n + 1)

end A127435

/-! ## A127435.P11590057465734870552

`A237627(n+1)/A127436(n+1)`
-/

namespace A127435.P11590057465734870552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237627 (n + 1) : ℚ) / (A127436 (n + 1) : ℚ)

end

end A127435.P11590057465734870552

namespace A127435

/-- `A237627(n+1)/A127436(n+1)` -/
def P11590057465734870552.Spec : Prop :=
  ∀ n, P11590057465734870552.a n = (A127435 (n + 1) : ℚ)

end A127435

/-! ## A127435.P10137220851297799077

`p?[A067720(n+1)+1]`
-/

namespace A127435.P10137220851297799077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127435.P10137220851297799077

namespace A127435

/-- `p?[A067720(n+1)+1]` -/
def P10137220851297799077.Spec : Prop :=
  ∀ n, P10137220851297799077.a n = A127435 (n + 1)

end A127435

/-! ## A127435.P4413508798064212693

`p?[A090693(n+1)]`
-/

namespace A127435.P4413508798064212693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127435.P4413508798064212693

namespace A127435

/-- `p?[A090693(n+1)]` -/
def P4413508798064212693.Spec : Prop :=
  ∀ n, P4413508798064212693.a n = A127435 (n + 1)

end A127435

/-! ## A127435.P3591638113954243708

`p?[A005574(n+1)+1]`
-/

namespace A127435.P3591638113954243708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127435.P3591638113954243708

namespace A127435

/-- `p?[A005574(n+1)+1]` -/
def P3591638113954243708.Spec : Prop :=
  ∀ n, P3591638113954243708.a n = A127435 (n + 1)

end A127435

/-! ## A127435.P7937808192511005292

`p?[A089593(n+1)+2]`
-/

namespace A127435.P7937808192511005292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127435.P7937808192511005292

namespace A127435

/-- `p?[A089593(n+1)+2]` -/
def P7937808192511005292.Spec : Prop :=
  ∀ n, P7937808192511005292.a n = A127435 (n + 1)

end A127435

/-! ## A127435.P8726692785494749248

`p?[ceil(sqrt(A002496(n+1)))]`
-/

namespace A127435.P8726692785494749248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002496 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127435.P8726692785494749248

namespace A127435

/-- `p?[ceil(sqrt(A002496(n+1)))]` -/
def P8726692785494749248.Spec : Prop :=
  ∀ n, P8726692785494749248.a n = A127435 (n + 1)

end A127435

/-! ## A127435.P2684008112120619361

`∩[A042986(n+1), A090693(n+1)]`
-/

namespace A127435.P2684008112120619361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P2684008112120619361

namespace A127435

/-- `∩[A042986(n+1), A090693(n+1)]` -/
def P2684008112120619361.Spec : Prop :=
  ∀ n, (P2684008112120619361.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P12616867556899548736

`∩[A000040(n+1), A090693(n+1)]`
-/

namespace A127435.P12616867556899548736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P12616867556899548736

namespace A127435

/-- `∩[A000040(n+1), A090693(n+1)]` -/
def P12616867556899548736.Spec : Prop :=
  ∀ n, (P12616867556899548736.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P9542310612589229265

`∩[A008578(n+1), A090693(n+1)]`
-/

namespace A127435.P9542310612589229265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P9542310612589229265

namespace A127435

/-- `∩[A008578(n+1), A090693(n+1)]` -/
def P9542310612589229265.Spec : Prop :=
  ∀ n, (P9542310612589229265.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P14241357153763055654

`∩[A046022(n+1), A090693(n+1)]`
-/

namespace A127435.P14241357153763055654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P14241357153763055654

namespace A127435

/-- `∩[A046022(n+1), A090693(n+1)]` -/
def P14241357153763055654.Spec : Prop :=
  ∀ n, (P14241357153763055654.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P13313370883266052896

`∩[A051948(n+1), A090693(n+1)]`
-/

namespace A127435.P13313370883266052896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P13313370883266052896

namespace A127435

/-- `∩[A051948(n+1), A090693(n+1)]` -/
def P13313370883266052896.Spec : Prop :=
  ∀ n, (P13313370883266052896.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P3487790398042291480

`∩[A053813(n+1), A090693(n+1)]`
-/

namespace A127435.P3487790398042291480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P3487790398042291480

namespace A127435

/-- `∩[A053813(n+1), A090693(n+1)]` -/
def P3487790398042291480.Spec : Prop :=
  ∀ n, (P3487790398042291480.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P1386256459779138716

`∩[A066050(n+1), A090693(n+1)]`
-/

namespace A127435.P1386256459779138716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P1386256459779138716

namespace A127435

/-- `∩[A066050(n+1), A090693(n+1)]` -/
def P1386256459779138716.Spec : Prop :=
  ∀ n, (P1386256459779138716.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P10048833470769944291

`∩[A067126(n+1), A090693(n+1)]`
-/

namespace A127435.P10048833470769944291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P10048833470769944291

namespace A127435

/-- `∩[A067126(n+1), A090693(n+1)]` -/
def P10048833470769944291.Spec : Prop :=
  ∀ n, (P10048833470769944291.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P17801892329328553608

`∩[A090693(n+1), A116974(n+1)]`
-/

namespace A127435.P17801892329328553608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P17801892329328553608

namespace A127435

/-- `∩[A090693(n+1), A116974(n+1)]` -/
def P17801892329328553608.Spec : Prop :=
  ∀ n, (P17801892329328553608.a n : ℤ) = A127435 (n + 1)

end A127435

/-! ## A127435.P14384497467932020312

`∩[A090693(n+1), A158611(n+1)]`
-/

namespace A127435.P14384497467932020312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127435.P14384497467932020312

namespace A127435

/-- `∩[A090693(n+1), A158611(n+1)]` -/
def P14384497467932020312.Spec : Prop :=
  ∀ n, (P14384497467932020312.a n : ℤ) = A127435 (n + 1)

end A127435

/-!
# A127436: Primes associated with A127435.

The programs for A127436, the canonical program `A127436.P14963163916458495622` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127436 has offset 1).

The definition of A127436 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127435, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127436.P14963163916458495622

`(A127435(n+1)-1)²+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127436

/-- `(A127435(n+1)-1)²+1` -/
def P14963163916458495622.Spec : Prop :=
  ∀ n, P14963163916458495622.a n = A127436 (n + 1)

theorem P14963163916458495622.correct : P14963163916458495622.Spec := by
  intro n
  simp only [A127436, Nat.add_sub_cancel]

end A127436

/-! ## A127436.P14563898509916688058

`A070689(n+1)²+1`
-/

namespace A127436.P14563898509916688058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1) ^ 2 + 1

end

end A127436.P14563898509916688058

namespace A127436

/-- `A070689(n+1)²+1` -/
def P14563898509916688058.Spec : Prop :=
  ∀ n, P14563898509916688058.a n = A127436 (n + 1)

end A127436

/-! ## A127436.P1780748199621002666

`A237627(n+1)/A127435(n+1)`
-/

namespace A127436.P1780748199621002666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237627 (n + 1) : ℚ) / (A127435 (n + 1) : ℚ)

end

end A127436.P1780748199621002666

namespace A127436

/-- `A237627(n+1)/A127435(n+1)` -/
def P1780748199621002666.Spec : Prop :=
  ∀ n, P1780748199621002666.a n = (A127436 (n + 1) : ℚ)

end A127436

/-! ## A127436.P11577098015842831259

`A070689(n+1)^A020639(2*(n+1))+1`
-/

namespace A127436.P11577098015842831259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070689 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) + 1

end

end A127436.P11577098015842831259

namespace A127436

/-- `A070689(n+1)^A020639(2*(n+1))+1` -/
def P11577098015842831259.Spec : Prop :=
  ∀ n, P11577098015842831259.a n = (A127436 (n + 1) : ℚ)

end A127436

/-! ## A127436.P1979113100853624040

`A000010(A127435(n+1))²+1`
-/

namespace A127436.P1979113100853624040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A127435 (n + 1)).toNat ^ 2 + 1

end

end A127436.P1979113100853624040

namespace A127436

/-- `A000010(A127435(n+1))²+1` -/
def P1979113100853624040.Spec : Prop :=
  ∀ n, P1979113100853624040.a n = A127436 (n + 1)

end A127436

/-! ## A127436.P119018684890140621

`A002522(A070689(n+1))`
-/

namespace A127436.P119018684890140621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A070689 (n + 1)).toNat

end

end A127436.P119018684890140621

namespace A127436

/-- `A002522(A070689(n+1))` -/
def P119018684890140621.Spec : Prop :=
  ∀ n, P119018684890140621.a n = A127436 (n + 1)

end A127436

/-! ## A127436.P15041862498279719795

`A029939(A127435(n+1))`
-/

namespace A127436.P15041862498279719795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029939 (A127435 (n + 1)).toNat

end

end A127436.P15041862498279719795

namespace A127436

/-- `A029939(A127435(n+1))` -/
def P15041862498279719795.Spec : Prop :=
  ∀ n, P15041862498279719795.a n = A127436 (n + 1)

end A127436

/-! ## A127436.P10731750456328372665

`A005722(A174165(n+1))+1`
-/

namespace A127436.P10731750456328372665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (A174165 (n + 1)).toNat + 1

end

end A127436.P10731750456328372665

namespace A127436

/-- `A005722(A174165(n+1))+1` -/
def P10731750456328372665.Spec : Prop :=
  ∀ n, P10731750456328372665.a n = A127436 (n + 1)

end A127436

/-!
# A127439: Triangle read by rows, in which row n consists of first n terms of A054541.

The programs for A127439, the canonical program `A127439.P6533677718592646859` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127439 has offset 1).

The definition of A127439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127439.P241417486184427657

`A054541(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A127439.P241417486184427657
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A127439.P241417486184427657

namespace A127439

/-- `A054541(1-C(∑[char[∑[n]]], 2)+n)` -/
def P241417486184427657.Spec : Prop :=
  ∀ n, P241417486184427657.a n = A127439 (n + 1)

end A127439

/-! ## A127439.P6533677718592646859

`A054541(A002260(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A127439

/-- `A054541(A002260(n+1))` -/
def P6533677718592646859.Spec : Prop :=
  ∀ n, P6533677718592646859.a n = A127439 (n + 1)

theorem P6533677718592646859.correct : P6533677718592646859.Spec := by
  intro n
  simp only [A127439, Nat.add_sub_cancel]

end A127439

/-! ## A127439.P4174479607008656101

`A054541(A002262(n)+1)`
-/

namespace A127439.P4174479607008656101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A002262 n + 1).toNat

end

end A127439.P4174479607008656101

namespace A127439

/-- `A054541(A002262(n)+1)` -/
def P4174479607008656101.Spec : Prop :=
  ∀ n, P4174479607008656101.a n = A127439 (n + 1)

end A127439

/-! ## A127439.P3503743342745023379

`A230850(A158405(n+1))`
-/

namespace A127439.P3503743342745023379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A158405 (n + 1)).toNat

end

end A127439.P3503743342745023379

namespace A127439

/-- `A230850(A158405(n+1))` -/
def P3503743342745023379.Spec : Prop :=
  ∀ n, P3503743342745023379.a n = A127439 (n + 1)

end A127439

/-! ## A127439.P10060250886267481391

`A368241(A037126(n+1))`
-/

namespace A127439.P10060250886267481391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368241 (A037126 (n + 1)).toNat

end

end A127439.P10060250886267481391

namespace A127439

/-- `A368241(A037126(n+1))` -/
def P10060250886267481391.Spec : Prop :=
  ∀ n, P10060250886267481391.a n = A127439 (n + 1)

end A127439

/-! ## A127439.P10660313893821201049

`A054541(abs(A140756(n+1)))`
-/

namespace A127439.P10660313893821201049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 |A140756 (n + 1)|.toNat

end

end A127439.P10660313893821201049

namespace A127439

/-- `A054541(abs(A140756(n+1)))` -/
def P10660313893821201049.Spec : Prop :=
  ∀ n, P10660313893821201049.a n = A127439 (n + 1)

end A127439

/-! ## A127439.P9520152114130472178

`A054541(sqrt(A133819(n+1)))`
-/

namespace A127439.P9520152114130472178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A127439.P9520152114130472178

namespace A127439

/-- `A054541(sqrt(A133819(n+1)))` -/
def P9520152114130472178.Spec : Prop :=
  ∀ n, P9520152114130472178.a n = A127439 (n + 1)

end A127439

/-! ## A127439.P16883355843801228904

`A054541(A002262(comp[∑[n]]))`
-/

namespace A127439.P16883355843801228904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A127439.P16883355843801228904

namespace A127439

/-- `A054541(A002262(comp[∑[n]]))` -/
def P16883355843801228904.Spec : Prop :=
  ∀ n, P16883355843801228904.a n = A127439 (n + 1)

end A127439

/-! ## A127439.P12080999559749668648

`A054541(A000005(2^(n-C(∑[char[∑[n]]], 2))))`
-/

namespace A127439.P12080999559749668648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat).toNat

end

end A127439.P12080999559749668648

namespace A127439

/-- `A054541(A000005(2^(n-C(∑[char[∑[n]]], 2))))` -/
def P12080999559749668648.Spec : Prop :=
  ∀ n, P12080999559749668648.a n = A127439 (n + 1)

end A127439

/-! ## A127439.P2158524922349109526

`A054541(A000005(A059268(n)))`
-/

namespace A127439.P2158524922349109526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A000005 (A059268 n).toNat).toNat

end

end A127439.P2158524922349109526

namespace A127439

/-- `A054541(A000005(A059268(n)))` -/
def P2158524922349109526.Spec : Prop :=
  ∀ n, P2158524922349109526.a n = A127439 (n + 1)

end A127439

/-!
# A127440: First differences of A008683.

The programs for A127440, the canonical program `A127440.P3140005440791347332` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127440 has offset 1).

The definition of A127440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127440.P6281729814159200828

`Δ[A008683(n+1)]`
-/

namespace A127440.P6281729814159200828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P6281729814159200828

namespace A127440

/-- `Δ[A008683(n+1)]` -/
def P6281729814159200828.Spec : Prop :=
  ∀ n, P6281729814159200828.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P2330715105934892854

`Δ[A346234(n+1)%2]`
-/

namespace A127440.P2330715105934892854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346234 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P2330715105934892854

namespace A127440

/-- `Δ[A346234(n+1)%2]` -/
def P2330715105934892854.Spec : Prop :=
  ∀ n, P2330715105934892854.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P6441542983050291067

`Δ[A346254(n+1)%2]`
-/

namespace A127440.P6441542983050291067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P6441542983050291067

namespace A127440

/-- `Δ[A346254(n+1)%2]` -/
def P6441542983050291067.Spec : Prop :=
  ∀ n, P6441542983050291067.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P8421172546932668909

`Δ[A361019(n+1)%2]`
-/

namespace A127440.P8421172546932668909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361019 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P8421172546932668909

namespace A127440

/-- `Δ[A361019(n+1)%2]` -/
def P8421172546932668909.Spec : Prop :=
  ∀ n, P8421172546932668909.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P3140005440791347332

`Δ[A055615(n+1)/(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A127440

/-- `Δ[A055615(n+1)/(n+1)]` -/
def P3140005440791347332.Spec : Prop :=
  ∀ n, P3140005440791347332.a n = (A127440 (n + 1) : ℚ)

end A127440

/-! ## A127440.P502487091877671444

`Δ[A061669(n+1)/(n+1)]`
-/

namespace A127440.P502487091877671444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061669 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P502487091877671444

namespace A127440

/-- `Δ[A061669(n+1)/(n+1)]` -/
def P502487091877671444.Spec : Prop :=
  ∀ n, P502487091877671444.a n = (A127440 (n + 1) : ℚ)

end A127440

/-! ## A127440.P206974615442926747

`Δ[A008683(2*n-(n-1))^3]`
-/

namespace A127440.P206974615442926747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P206974615442926747

namespace A127440

/-- `Δ[A008683(2*n-(n-1))^3]` -/
def P206974615442926747.Spec : Prop :=
  ∀ n, P206974615442926747.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P13819688515437632303

`A008683(n+2)-A008683(n+1)`
-/

namespace A127440.P13819688515437632303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) - A008683 (n + 1)

end

end A127440.P13819688515437632303

namespace A127440

/-- `A008683(n+2)-A008683(n+1)` -/
def P13819688515437632303.Spec : Prop :=
  ∀ n, P13819688515437632303.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P5222932512847010654

`Δ[round(acot(∏{e}[n+1, -#])+n+1)]-1`
-/

namespace A127440.P5222932512847010654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℝ) + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A127440.P5222932512847010654

namespace A127440

/-- `Δ[round(acot(∏{e}[n+1, -#])+n+1)]-1` -/
def P5222932512847010654.Spec : Prop :=
  ∀ n, P5222932512847010654.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P14262686721360394427

`Δ[A007423(n+1)]`
-/

namespace A127440.P14262686721360394427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P14262686721360394427

namespace A127440

/-- `Δ[A007423(n+1)]` -/
def P14262686721360394427.Spec : Prop :=
  ∀ n, P14262686721360394427.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P3841049973542914181

`Δ[A080847(n+1)]`
-/

namespace A127440.P3841049973542914181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P3841049973542914181

namespace A127440

/-- `Δ[A080847(n+1)]` -/
def P3841049973542914181.Spec : Prop :=
  ∀ n, P3841049973542914181.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P13059965026381786674

`Δ[A231821(n+1)]`
-/

namespace A127440.P13059965026381786674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P13059965026381786674

namespace A127440

/-- `Δ[A231821(n+1)]` -/
def P13059965026381786674.Spec : Prop :=
  ∀ n, P13059965026381786674.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P13816409932159015264

`Δ[abs(A076544(n+1))]`
-/

namespace A127440.P13816409932159015264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076544 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P13816409932159015264

namespace A127440

/-- `Δ[abs(A076544(n+1))]` -/
def P13816409932159015264.Spec : Prop :=
  ∀ n, P13816409932159015264.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P1594761719897160388

`Δ[-A129979(n+1)]`
-/

namespace A127440.P1594761719897160388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P1594761719897160388

namespace A127440

/-- `Δ[-A129979(n+1)]` -/
def P1594761719897160388.Spec : Prop :=
  ∀ n, P1594761719897160388.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P15031660967667889690

`Δ[A076369(n+1)]-1`
-/

namespace A127440.P15031660967667889690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A127440.P15031660967667889690

namespace A127440

/-- `Δ[A076369(n+1)]-1` -/
def P15031660967667889690.Spec : Prop :=
  ∀ n, P15031660967667889690.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P7428859700184253099

`Δ[A133695(n+1)/2]`
-/

namespace A127440.P7428859700184253099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133695 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P7428859700184253099

namespace A127440

/-- `Δ[A133695(n+1)/2]` -/
def P7428859700184253099.Spec : Prop :=
  ∀ n, P7428859700184253099.a n = (A127440 (n + 1) : ℚ)

end A127440

/-! ## A127440.P6492409075641332826

`Δ[A228409(n+1)/4]`
-/

namespace A127440.P6492409075641332826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228409 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P6492409075641332826

namespace A127440

/-- `Δ[A228409(n+1)/4]` -/
def P6492409075641332826.Spec : Prop :=
  ∀ n, P6492409075641332826.a n = (A127440 (n + 1) : ℚ)

end A127440

/-! ## A127440.P4337154880733085478

`Δ[A162512(n+1)%2]`
-/

namespace A127440.P4337154880733085478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P4337154880733085478

namespace A127440

/-- `Δ[A162512(n+1)%2]` -/
def P4337154880733085478.Spec : Prop :=
  ∀ n, P4337154880733085478.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P8280131801675620558

`Δ[A328502(n+1)%2]`
-/

namespace A127440.P8280131801675620558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328502 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P8280131801675620558

namespace A127440

/-- `Δ[A328502(n+1)%2]` -/
def P8280131801675620558.Spec : Prop :=
  ∀ n, P8280131801675620558.a n = A127440 (n + 1)

end A127440

/-! ## A127440.P10548910269604539542

`Δ[floor(A262804(n+1)/2)]`
-/

namespace A127440.P10548910269604539542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262804 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127440.P10548910269604539542

namespace A127440

/-- `Δ[floor(A262804(n+1)/2)]` -/
def P10548910269604539542.Spec : Prop :=
  ∀ n, P10548910269604539542.a n = A127440 (n + 1)

end A127440

/-!
# A127441: Numbers n such that between n and n+sqrt(n) there are no primes.

The programs for A127441, there is no canonical definition to state claims against.
-/

/-! ## A127441.P15558182328068248770

`lt[(n/A013632(n))², n]`
-/

namespace A127441.P15558182328068248770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A013632 n : ℚ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A127441.P15558182328068248770

/-! ## A127441.P10199032226018402349

`lt[n+1, A013632(n+1)²]+1`
-/

namespace A127441.P10199032226018402349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127441.P10199032226018402349

/-! ## A127441.P2302405285428533458

`lt[n, A000194(n)*A013632(n)]`
-/

namespace A127441.P2302405285428533458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n * A013632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127441.P2302405285428533458

/-! ## A127441.P6779114608098274535

`lt[n, (A013632(n)*A057428(n))²]`
-/

namespace A127441.P6779114608098274535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013632 n * A057428 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127441.P6779114608098274535

/-! ## A127441.P8413723952429079473

`lt[A000040(n+1)+n, A013632(n+1)^3]+1`
-/

namespace A127441.P8413723952429079473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A127441.P8413723952429079473

/-!
# A127442: Triangle read by rows: row n consists of 1 followed by initial n-1 terms of A127440.

The programs for A127442, there is no canonical definition to state claims against.
-/

/-! ## A127442.P13580234967201519688

`A127444(A000096(A002262(n))+1)`
-/

namespace A127442.P13580234967201519688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127444 (A000096 (A002262 n).toNat + 1).toNat

end

end A127442.P13580234967201519688

/-! ## A127442.P6016906616660619068

`A127444(A000217(A002260(n+1)))`
-/

namespace A127442.P6016906616660619068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127444 (A000217 (A002260 (n + 1)).toNat).toNat

end

end A127442.P6016906616660619068

/-! ## A127442.P2076590298130527594

`A127444(A112367(n)+A002260(n+1))`
-/

namespace A127442.P2076590298130527594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127444 (A112367 n + A002260 (n + 1)).toNat

end

end A127442.P2076590298130527594

/-! ## A127442.P16341559595943412940

`A127444(n+1)/A135539(n+1)`
-/

namespace A127442.P16341559595943412940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127444 (n + 1) : ℚ) / (A135539 (n + 1) : ℚ)

end

end A127442.P16341559595943412940

/-! ## A127442.P15373144865299380442

`∏{e}[A059268(n), A127440(#)]`
-/

namespace A127442.P15373144865299380442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A127440 (Nat.factorization (f1 n).natAbs p)

end

end A127442.P15373144865299380442

/-! ## A127442.P2014706483852834396

`∏{e}[A013609(n)/A007318(n), A127440(#)]`
-/

namespace A127442.P2014706483852834396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A127440 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A127442.P2014706483852834396

/-! ## A127442.P12004338750712891015

`A054527(n+1)-A112400(A059268(n))`
-/

namespace A127442.P12004338750712891015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) - A112400 (A059268 n).toNat

end

end A127442.P12004338750712891015

/-! ## A127442.P11075282593703690165

`∏{e}[3^A002262(n), A127440(#)]`
-/

namespace A127442.P11075282593703690165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A127440 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A127442.P11075282593703690165

/-!
# A127443: Primes p such that 6p - 11 and 6p + 11 are also primes.

The programs for A127443, there is no canonical definition to state claims against.
-/

/-! ## A127443.P9142750879875734836

`p?[A008611(A052938(A242476(n+1)))]`
-/

namespace A127443.P9142750879875734836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A052938 (A242476 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127443.P9142750879875734836

/-!
# A127444: Triangle defined as the matrix product A051731*A127442, read by rows.

The programs for A127444, there is no canonical definition to state claims against.
-/

/-! ## A127444.P11342291965003812098

`A127442(n+1)*A135539(n+1)`
-/

namespace A127444.P11342291965003812098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127442 (n + 1) * A135539 (n + 1)

end

end A127444.P11342291965003812098

/-! ## A127444.P17180357864146178317

`∏{e}[A059268(n), A127440(#)]*A135539(n+1)`
-/

namespace A127444.P17180357864146178317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A127440 (Nat.factorization (f1 n).natAbs p)) * A135539 (n + 1)

end

end A127444.P17180357864146178317

/-! ## A127444.P14187507317928135172

`(A054527(n+1)-A112400(A059268(n)))*A135539(n+1)`
-/

namespace A127444.P14187507317928135172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054527 (n + 1) - A112400 (A059268 n).toNat) * A135539 (n + 1)

end

end A127444.P14187507317928135172

/-!
# A127445: Triangle defined by the matrix product A126988 * A127368, read by rows.

The programs for A127445, there is no canonical definition to state claims against.
-/

/-! ## A127445.P7420273483347521703

`A127375(n+1)*A128227(n)`
-/

namespace A127445.P7420273483347521703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127375 (n + 1) * A128227 n

end

end A127445.P7420273483347521703

/-! ## A127445.P8819666939103597208

`A127375(n+1)*A193738(n)`
-/

namespace A127445.P8819666939103597208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127375 (n + 1) * A193738 n

end

end A127445.P8819666939103597208

/-! ## A127445.P2738259394910396000

`A002260(n+1)*A127375(n+1)`
-/

namespace A127445.P2738259394910396000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127375 (n + 1)

end

end A127445.P2738259394910396000

/-! ## A127445.P17134802888215367583

`(A002262(n)+1)*A127375(n+1)`
-/

namespace A127445.P17134802888215367583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A127375 (n + 1)

end

end A127445.P17134802888215367583

/-! ## A127445.P14772293382741774528

`A080511(n+1)*A127375(n+1)`
-/

namespace A127445.P14772293382741774528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A127375 (n + 1)

end

end A127445.P14772293382741774528

/-! ## A127445.P13128145189401393752

`A080818(n+1)*A127375(n+1)`
-/

namespace A127445.P13128145189401393752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (n + 1) * A127375 (n + 1)

end

end A127445.P13128145189401393752

/-! ## A127445.P8500203198077591883

`A127375(n+1)*A128077(n+1)`
-/

namespace A127445.P8500203198077591883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127375 (n + 1) * A128077 (n + 1)

end

end A127445.P8500203198077591883

/-! ## A127445.P6505310571137399385

`A081517(n+1)*A127375(n+1)`
-/

namespace A127445.P6505310571137399385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (n + 1) * A127375 (n + 1)

end

end A127445.P6505310571137399385

/-! ## A127445.P14855640952032579107

`A080508(n+1)*A127375(n+1)`
-/

namespace A127445.P14855640952032579107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (n + 1) * A127375 (n + 1)

end

end A127445.P14855640952032579107

/-! ## A127445.P4624841753706855644

`A000005(A059268(n))*A127375(n+1)`
-/

namespace A127445.P4624841753706855644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A127375 (n + 1)

end

end A127445.P4624841753706855644

/-!
# A127446: Triangle T(n,k) = n*A051731(n,k) read by rows.

The programs for A127446, the canonical program `A127446.P10925014091229566382` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127446 has offset 1).

The definition of A127446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127446.P5613752533215024073

`sqrt(A134576(n+1))`
-/

namespace A127446.P5613752533215024073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134576 (n + 1) : ℝ)

end

end A127446.P5613752533215024073

namespace A127446

/-- `sqrt(A134576(n+1))` -/
def P5613752533215024073.Spec : Prop :=
  ∀ n, P5613752533215024073.a n = (A127446 (n + 1) : ℝ)

end A127446

/-! ## A127446.P3303896249282443805

`∑[char[∑[n]]]*A051731(n+1)`
-/

namespace A127446.P3303896249282443805
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051731 (n + 1)

end

end A127446.P3303896249282443805

namespace A127446

/-- `∑[char[∑[n]]]*A051731(n+1)` -/
def P3303896249282443805.Spec : Prop :=
  ∀ n, P3303896249282443805.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P11126431204169701701

`lcm(A002024(n+1), A129555(n))`
-/

namespace A127446.P11126431204169701701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002024 (n + 1)) (A129555 n)

end

end A127446.P11126431204169701701

namespace A127446

/-- `lcm(A002024(n+1), A129555(n))` -/
def P11126431204169701701.Spec : Prop :=
  ∀ n, (P11126431204169701701.a n : ℤ) = A127446 (n + 1)

end A127446

/-! ## A127446.P10925014091229566382

`lcm(∑[A010054(n)], A127093(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127446

/-- `lcm(∑[A010054(n)], A127093(n+1))` -/
def P10925014091229566382.Spec : Prop :=
  ∀ n, (P10925014091229566382.a n : ℤ) = A127446 (n + 1)

theorem P10925014091229566382.correct : P10925014091229566382.Spec := by
  intro n
  simp only [A127446, Nat.add_sub_cancel]

end A127446

/-! ## A127446.P15249571670266632283

`A051731(n+1)*A074712(n+1)`
-/

namespace A127446.P15249571670266632283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A074712 (n + 1)

end

end A127446.P15249571670266632283

namespace A127446

/-- `A051731(n+1)*A074712(n+1)` -/
def P15249571670266632283.Spec : Prop :=
  ∀ n, P15249571670266632283.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P1174228091483728408

`A002260(n+1)*A126988(n+1)`
-/

namespace A127446.P1174228091483728408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A126988 (n + 1)

end

end A127446.P1174228091483728408

namespace A127446

/-- `A002260(n+1)*A126988(n+1)` -/
def P1174228091483728408.Spec : Prop :=
  ∀ n, P1174228091483728408.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P8639970935426928593

`(A002262(n)+1)*A126988(n+1)`
-/

namespace A127446.P8639970935426928593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A126988 (n + 1)

end

end A127446.P8639970935426928593

namespace A127446

/-- `(A002262(n)+1)*A126988(n+1)` -/
def P8639970935426928593.Spec : Prop :=
  ∀ n, P8639970935426928593.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P8924183396699449046

`A010766(n+1)*A127093(n+1)`
-/

namespace A127446.P8924183396699449046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127093 (n + 1)

end

end A127446.P8924183396699449046

namespace A127446

/-- `A010766(n+1)*A127093(n+1)` -/
def P8924183396699449046.Spec : Prop :=
  ∀ n, P8924183396699449046.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P624445849729549625

`A051731(n+1)*A123229(n+1)`
-/

namespace A127446.P624445849729549625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A123229 (n + 1)

end

end A127446.P624445849729549625

namespace A127446

/-- `A051731(n+1)*A123229(n+1)` -/
def P624445849729549625.Spec : Prop :=
  ∀ n, P624445849729549625.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P15043042623507674167

`A123578((n+1)*A051731(n+1))`
-/

namespace A127446.P15043042623507674167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ((n + 1 : ℤ) * A051731 (n + 1)).toNat

end

end A127446.P15043042623507674167

namespace A127446

/-- `A123578((n+1)*A051731(n+1))` -/
def P15043042623507674167.Spec : Prop :=
  ∀ n, P15043042623507674167.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P13529042262481279416

`A049834(n+1)*A127093(n+1)`
-/

namespace A127446.P13529042262481279416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127093 (n + 1)

end

end A127446.P13529042262481279416

namespace A127446

/-- `A049834(n+1)*A127093(n+1)` -/
def P13529042262481279416.Spec : Prop :=
  ∀ n, P13529042262481279416.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P7580732850154048975

`A050873(n+1)*A126988(n+1)`
-/

namespace A127446.P7580732850154048975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A126988 (n + 1)

end

end A127446.P7580732850154048975

namespace A127446

/-- `A050873(n+1)*A126988(n+1)` -/
def P7580732850154048975.Spec : Prop :=
  ∀ n, P7580732850154048975.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P3861431616032479691

`A051537(n+1)*A127093(n+1)`
-/

namespace A127446.P3861431616032479691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127093 (n + 1)

end

end A127446.P3861431616032479691

namespace A127446

/-- `A051537(n+1)*A127093(n+1)` -/
def P3861431616032479691.Spec : Prop :=
  ∀ n, P3861431616032479691.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P9783104542786597228

`A054531(n+1)*A127093(n+1)`
-/

namespace A127446.P9783104542786597228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127093 (n + 1)

end

end A127446.P9783104542786597228

namespace A127446

/-- `A054531(n+1)*A127093(n+1)` -/
def P9783104542786597228.Spec : Prop :=
  ∀ n, P9783104542786597228.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P1688423549044373288

`A059026(n+1)*A127093(n+1)`
-/

namespace A127446.P1688423549044373288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127093 (n + 1)

end

end A127446.P1688423549044373288

namespace A127446

/-- `A059026(n+1)*A127093(n+1)` -/
def P1688423549044373288.Spec : Prop :=
  ∀ n, P1688423549044373288.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P17418215435690232890

`A123275(n+1)*A126988(n+1)`
-/

namespace A127446.P17418215435690232890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A126988 (n + 1)

end

end A127446.P17418215435690232890

namespace A127446

/-- `A123275(n+1)*A126988(n+1)` -/
def P17418215435690232890.Spec : Prop :=
  ∀ n, P17418215435690232890.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P7622059016723151754

`A051731(n+1)*A199408(n+1)`
-/

namespace A127446.P7622059016723151754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A199408 (n + 1)

end

end A127446.P7622059016723151754

namespace A127446

/-- `A051731(n+1)*A199408(n+1)` -/
def P7622059016723151754.Spec : Prop :=
  ∀ n, P7622059016723151754.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P8541448663510035269

`A126988(n+1)*A127093(n+1)`
-/

namespace A127446.P8541448663510035269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127093 (n + 1)

end

end A127446.P8541448663510035269

namespace A127446

/-- `A126988(n+1)*A127093(n+1)` -/
def P8541448663510035269.Spec : Prop :=
  ∀ n, P8541448663510035269.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P10266918900607320021

`A127093(n+1)*A219158(n+1)`
-/

namespace A127446.P10266918900607320021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A219158 (n + 1)

end

end A127446.P10266918900607320021

namespace A127446

/-- `A127093(n+1)*A219158(n+1)` -/
def P10266918900607320021.Spec : Prop :=
  ∀ n, P10266918900607320021.a n = A127446 (n + 1)

end A127446

/-! ## A127446.P9109532928010779706

`A127093(n+1)*A234575(n+1)`
-/

namespace A127446.P9109532928010779706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A234575 (n + 1)

end

end A127446.P9109532928010779706

namespace A127446

/-- `A127093(n+1)*A234575(n+1)` -/
def P9109532928010779706.Spec : Prop :=
  ∀ n, P9109532928010779706.a n = A127446 (n + 1)

end A127446

/-!
# A127447: Triangle defined by the matrix product A127446 * A054521, read by rows 1<=k<=n.

The programs for A127447, there is no canonical definition to state claims against.
-/

/-! ## A127447.P1847823542194681418

`∑[A010054(n)]*A127371(n+1)`
-/

namespace A127447.P1847823542194681418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A127371 (n + 1)

end

end A127447.P1847823542194681418

/-! ## A127447.P13865678740572510196

`A002024(n+1)*A127371(n+1)`
-/

namespace A127447.P13865678740572510196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A127371 (n + 1)

end

end A127447.P13865678740572510196

/-! ## A127447.P13917096128703675771

`A002024(n+1)*A143613(n+1)/A128227(n)`
-/

namespace A127447.P13917096128703675771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * A143613 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A127447.P13917096128703675771

/-! ## A127447.P12703056431266170285

`A002024(n+1)/A080511(n+1)*A143613(n+1)`
-/

namespace A127447.P12703056431266170285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ) * (A143613 (n + 1) : ℚ)

end

end A127447.P12703056431266170285

/-! ## A127447.P377200719639081121

`A064876(A093995(n+1))*A127371(n+1)`
-/

namespace A127447.P377200719639081121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A093995 (n + 1)).toNat * A127371 (n + 1)

end

end A127447.P377200719639081121

/-! ## A127447.P13830697223845370892

`A127371(n+1)*A183110(n+1)`
-/

namespace A127447.P13830697223845370892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127371 (n + 1) * A183110 (n + 1)

end

end A127447.P13830697223845370892

/-! ## A127447.P6594022689405492300

`A127371(n+1)*A376239(n+1)`
-/

namespace A127447.P6594022689405492300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127371 (n + 1) * A376239 (n + 1)

end

end A127447.P6594022689405492300

/-! ## A127447.P12230446766512139726

`ceil(A127372(n+1)/e)*A002024(n+1)`
-/

namespace A127447.P12230446766512139726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127372 (n + 1) : ℝ) / Real.exp 1⌉ * A002024 (n + 1)

end

end A127447.P12230446766512139726

/-! ## A127447.P779256033763077402

`(A003056(n)+1)*A100196(A127372(n+1))`
-/

namespace A127447.P779256033763077402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A100196 (A127372 (n + 1)).toNat

end

end A127447.P779256033763077402

/-! ## A127447.P2162269458463024409

`A100196(A127372(n+1))*A349520(2*(n+1))`
-/

namespace A127447.P2162269458463024409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A127372 (n + 1)).toNat * A349520 (2 * (n + 1))

end

end A127447.P2162269458463024409

/-!
# A127448: Triangle T(n,k) read by rows: matrix product A054525 * A127648.

The programs for A127448, the canonical program `A127448.P10553008276063831497` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127448 has offset 1).

The definition of A127448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127448.P13893565430525512640

`(1-C(∑[char[∑[n]]], 2)+n)*A054525(n+1)`
-/

namespace A127448.P13893565430525512640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A054525 (n + 1)

end

end A127448.P13893565430525512640

namespace A127448

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A054525(n+1)` -/
def P13893565430525512640.Spec : Prop :=
  ∀ n, P13893565430525512640.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P10553008276063831497

`A002260(n+1)*A054525(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127448

/-- `A002260(n+1)*A054525(n+1)` -/
def P10553008276063831497.Spec : Prop :=
  ∀ n, P10553008276063831497.a n = A127448 (n + 1)

theorem P10553008276063831497.correct : P10553008276063831497.Spec := by
  intro n
  simp only [A127448, Nat.add_sub_cancel]

end A127448

/-! ## A127448.P5513381828414125420

`(A002262(n)+1)*A054525(n+1)`
-/

namespace A127448.P5513381828414125420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A054525 (n + 1)

end

end A127448.P5513381828414125420

namespace A127448

/-- `(A002262(n)+1)*A054525(n+1)` -/
def P5513381828414125420.Spec : Prop :=
  ∀ n, P5513381828414125420.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P15870449402744852849

`A050873(n+1)*A054525(n+1)`
-/

namespace A127448.P15870449402744852849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A054525 (n + 1)

end

end A127448.P15870449402744852849

namespace A127448

/-- `A050873(n+1)*A054525(n+1)` -/
def P15870449402744852849.Spec : Prop :=
  ∀ n, P15870449402744852849.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P15224533591724764930

`A054525(n+1)*A123275(n+1)`
-/

namespace A127448.P15224533591724764930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A123275 (n + 1)

end

end A127448.P15224533591724764930

namespace A127448

/-- `A054525(n+1)*A123275(n+1)` -/
def P15224533591724764930.Spec : Prop :=
  ∀ n, P15224533591724764930.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P5890860743660435166

`A054525(n+1)*A127093(n+1)`
-/

namespace A127448.P5890860743660435166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A127093 (n + 1)

end

end A127448.P5890860743660435166

namespace A127448

/-- `A054525(n+1)*A127093(n+1)` -/
def P5890860743660435166.Spec : Prop :=
  ∀ n, P5890860743660435166.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P8036217428216546469

`A054525(n+1)*A334230(n+1)`
-/

namespace A127448.P8036217428216546469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A334230 (n + 1)

end

end A127448.P8036217428216546469

namespace A127448

/-- `A054525(n+1)*A334230(n+1)` -/
def P8036217428216546469.Spec : Prop :=
  ∀ n, P8036217428216546469.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P11244402154748904232

`A054525(n+1)*A357554(n+1)`
-/

namespace A127448.P11244402154748904232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A357554 (n + 1)

end

end A127448.P11244402154748904232

namespace A127448

/-- `A054525(n+1)*A357554(n+1)` -/
def P11244402154748904232.Spec : Prop :=
  ∀ n, P11244402154748904232.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P16048375326394693704

`A125093(n+1)/A010766(n+1)`
-/

namespace A127448.P16048375326394693704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A127448.P16048375326394693704

namespace A127448

/-- `A125093(n+1)/A010766(n+1)` -/
def P16048375326394693704.Spec : Prop :=
  ∀ n, P16048375326394693704.a n = (A127448 (n + 1) : ℚ)

end A127448

/-! ## A127448.P11084754419117460833

`A125093(n+1)/A049834(n+1)`
-/

namespace A127448.P11084754419117460833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A127448.P11084754419117460833

namespace A127448

/-- `A125093(n+1)/A049834(n+1)` -/
def P11084754419117460833.Spec : Prop :=
  ∀ n, P11084754419117460833.a n = (A127448 (n + 1) : ℚ)

end A127448

/-! ## A127448.P4065669864195895010

`A125093(n+1)/A051537(n+1)`
-/

namespace A127448.P4065669864195895010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A127448.P4065669864195895010

namespace A127448

/-- `A125093(n+1)/A051537(n+1)` -/
def P4065669864195895010.Spec : Prop :=
  ∀ n, P4065669864195895010.a n = (A127448 (n + 1) : ℚ)

end A127448

/-! ## A127448.P4368378450352712169

`A125093(n+1)/A054531(n+1)`
-/

namespace A127448.P4368378450352712169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A127448.P4368378450352712169

namespace A127448

/-- `A125093(n+1)/A054531(n+1)` -/
def P4368378450352712169.Spec : Prop :=
  ∀ n, P4368378450352712169.a n = (A127448 (n + 1) : ℚ)

end A127448

/-! ## A127448.P1479643908984198948

`A125093(n+1)/A059026(n+1)`
-/

namespace A127448.P1479643908984198948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A059026 (n + 1) : ℚ)

end

end A127448.P1479643908984198948

namespace A127448

/-- `A125093(n+1)/A059026(n+1)` -/
def P1479643908984198948.Spec : Prop :=
  ∀ n, P1479643908984198948.a n = (A127448 (n + 1) : ℚ)

end A127448

/-! ## A127448.P636953784073759494

`A125093(n+1)/A219158(n+1)`
-/

namespace A127448.P636953784073759494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A219158 (n + 1) : ℚ)

end

end A127448.P636953784073759494

namespace A127448

/-- `A125093(n+1)/A219158(n+1)` -/
def P636953784073759494.Spec : Prop :=
  ∀ n, P636953784073759494.a n = (A127448 (n + 1) : ℚ)

end A127448

/-! ## A127448.P10710512160481737660

`(A176079(n+1)+1)*A054525(n+1)`
-/

namespace A127448.P10710512160481737660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176079 (n + 1) + 1) * A054525 (n + 1)

end

end A127448.P10710512160481737660

namespace A127448

/-- `(A176079(n+1)+1)*A054525(n+1)` -/
def P10710512160481737660.Spec : Prop :=
  ∀ n, P10710512160481737660.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P323707118428521908

`A134673(n+1)+A023531(n)-A051731(n+1)`
-/

namespace A127448.P323707118428521908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134673 (n + 1) + (A023531 n - A051731 (n + 1))

end

end A127448.P323707118428521908

namespace A127448

/-- `A134673(n+1)+A023531(n)-A051731(n+1)` -/
def P323707118428521908.Spec : Prop :=
  ∀ n, P323707118428521908.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P7875971622904333179

`A127505(n+1)/A143230(n+1)*A143267(n+1)`
-/

namespace A127448.P7875971622904333179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127505 (n + 1) : ℚ) / (A143230 (n + 1) : ℚ) * (A143267 (n + 1) : ℚ)

end

end A127448.P7875971622904333179

namespace A127448

/-- `A127505(n+1)/A143230(n+1)*A143267(n+1)` -/
def P7875971622904333179.Spec : Prop :=
  ∀ n, P7875971622904333179.a n = (A127448 (n + 1) : ℚ)

end A127448

/-! ## A127448.P4905366808786309745

`A054525(n+1)*A307662(n+1)`
-/

namespace A127448.P4905366808786309745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A307662 (n + 1)

end

end A127448.P4905366808786309745

namespace A127448

/-- `A054525(n+1)*A307662(n+1)` -/
def P4905366808786309745.Spec : Prop :=
  ∀ n, P4905366808786309745.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P7359272887962873389

`A054525(n+1)*A112544(n+1)`
-/

namespace A127448.P7359272887962873389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A112544 (n + 1)

end

end A127448.P7359272887962873389

namespace A127448

/-- `A054525(n+1)*A112544(n+1)` -/
def P7359272887962873389.Spec : Prop :=
  ∀ n, P7359272887962873389.a n = A127448 (n + 1)

end A127448

/-! ## A127448.P9183181843470100820

`A143111(n+1)*A143153(n+1)`
-/

namespace A127448.P9183181843470100820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143111 (n + 1) * A143153 (n + 1)

end

end A127448.P9183181843470100820

namespace A127448

/-- `A143111(n+1)*A143153(n+1)` -/
def P9183181843470100820.Spec : Prop :=
  ∀ n, P9183181843470100820.a n = A127448 (n + 1)

end A127448

/-!
# A127449: Triangle T(n,k) = n if gcd(n,k)=1, =0 otherwise.

The programs for A127449, the canonical program `A127449.P14956762782820329988` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127449 has offset 1).

The definition of A127449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127449.P15531756514026167794

`∑[char[∑[n]]]*A054521(n+1)`
-/

namespace A127449.P15531756514026167794
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054521 (n + 1)

end

end A127449.P15531756514026167794

namespace A127449

/-- `∑[char[∑[n]]]*A054521(n+1)` -/
def P15531756514026167794.Spec : Prop :=
  ∀ n, P15531756514026167794.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P14956762782820329988

`A054521(n+1)*A054531(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127449

/-- `A054521(n+1)*A054531(n+1)` -/
def P14956762782820329988.Spec : Prop :=
  ∀ n, P14956762782820329988.a n = A127449 (n + 1)

theorem P14956762782820329988.correct : P14956762782820329988.Spec := by
  intro n
  simp only [A127449, Nat.add_sub_cancel]

end A127449

/-! ## A127449.P1309443638105402387

`lcm(A002024(n+1), A215200(n+1))`
-/

namespace A127449.P1309443638105402387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002024 (n + 1)) (A215200 (n + 1))

end

end A127449.P1309443638105402387

namespace A127449

/-- `lcm(A002024(n+1), A215200(n+1))` -/
def P1309443638105402387.Spec : Prop :=
  ∀ n, (P1309443638105402387.a n : ℤ) = A127449 (n + 1)

end A127449

/-! ## A127449.P8582726771261782930

`A215200(n+1)²*A054531(n+1)`
-/

namespace A127449.P8582726771261782930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (n + 1) ^ 2 * A054531 (n + 1)

end

end A127449.P8582726771261782930

namespace A127449

/-- `A215200(n+1)²*A054531(n+1)` -/
def P8582726771261782930.Spec : Prop :=
  ∀ n, P8582726771261782930.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P8848774742296734580

`(1-A349317(n+1))*A002024(n+1)`
-/

namespace A127449.P8848774742296734580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A349317 (n + 1)) * A002024 (n + 1)

end

end A127449.P8848774742296734580

namespace A127449

/-- `(1-A349317(n+1))*A002024(n+1)` -/
def P8848774742296734580.Spec : Prop :=
  ∀ n, P8848774742296734580.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P9851374880854651830

`floor(1/A050873(n+1))*A054531(n+1)`
-/

namespace A127449.P9851374880854651830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A050873 (n + 1) : ℚ)⌋ * A054531 (n + 1)

end

end A127449.P9851374880854651830

namespace A127449

/-- `floor(1/A050873(n+1))*A054531(n+1)` -/
def P9851374880854651830.Spec : Prop :=
  ∀ n, P9851374880854651830.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P2459189396522588681

`val(A140513(n), A000040(A050873(n+1)))`
-/

namespace A127449.P2459189396522588681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140513 n).toNat (A000040 (A050873 (n + 1)).toNat).toNat

end

end A127449.P2459189396522588681

namespace A127449

/-- `val(A140513(n), A000040(A050873(n+1)))` -/
def P2459189396522588681.Spec : Prop :=
  ∀ n, (P2459189396522588681.a n : ℤ) = A127449 (n + 1)

end A127449

/-! ## A127449.P7380506652394030900

`A051537(n+1)*A054521(n+1)/A164306(n+1)`
-/

namespace A127449.P7380506652394030900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051537 (n + 1) * A054521 (n + 1) : ℚ) / (A164306 (n + 1) : ℚ)

end

end A127449.P7380506652394030900

namespace A127449

/-- `A051537(n+1)*A054521(n+1)/A164306(n+1)` -/
def P7380506652394030900.Spec : Prop :=
  ∀ n, P7380506652394030900.a n = (A127449 (n + 1) : ℚ)

end A127449

/-! ## A127449.P12341195032281494875

`A054521(n+1)*A277227(n+2)`
-/

namespace A127449.P12341195032281494875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A277227 (n + 2)

end

end A127449.P12341195032281494875

namespace A127449

/-- `A054521(n+1)*A277227(n+2)` -/
def P12341195032281494875.Spec : Prop :=
  ∀ n, P12341195032281494875.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P14482528872399367911

`A057944(A057944(n)+A054531(n+1))-A057944(n)`
-/

namespace A127449.P14482528872399367911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A057944 n + A054531 (n + 1)).toNat - A057944 n

end

end A127449.P14482528872399367911

namespace A127449

/-- `A057944(A057944(n)+A054531(n+1))-A057944(n)` -/
def P14482528872399367911.Spec : Prop :=
  ∀ n, P14482528872399367911.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P9626017919303376851

`A000194((2*n+1)*A054521(n+1))`
-/

namespace A127449.P9626017919303376851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((2 * n + 1 : ℤ) * A054521 (n + 1)).toNat

end

end A127449.P9626017919303376851

namespace A127449

/-- `A000194((2*n+1)*A054521(n+1))` -/
def P9626017919303376851.Spec : Prop :=
  ∀ n, P9626017919303376851.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P1250371671812513035

`and(-A054521(n+1), A000194(n+1+n))`
-/

namespace A127449.P1250371671812513035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A054521 (n + 1)) (A000194 (n + 1 + n))

end

end A127449.P1250371671812513035

namespace A127449

/-- `and(-A054521(n+1), A000194(n+1+n))` -/
def P1250371671812513035.Spec : Prop :=
  ∀ n, P1250371671812513035.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P2608133826754384806

`A054521(n+1)*A183110(n+1)`
-/

namespace A127449.P2608133826754384806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A183110 (n + 1)

end

end A127449.P2608133826754384806

namespace A127449

/-- `A054521(n+1)*A183110(n+1)` -/
def P2608133826754384806.Spec : Prop :=
  ∀ n, P2608133826754384806.a n = A127449 (n + 1)

end A127449

/-! ## A127449.P16703038692968915844

`A000007(A093057(n+1))*A002024(n+1)`
-/

namespace A127449.P16703038692968915844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A093057 (n + 1)).toNat * A002024 (n + 1)

end

end A127449.P16703038692968915844

namespace A127449

/-- `A000007(A093057(n+1))*A002024(n+1)` -/
def P16703038692968915844.Spec : Prop :=
  ∀ n, P16703038692968915844.a n = A127449 (n + 1)

end A127449

/-!
# A127450: Beatty sequence for 1/(e^Pi - Pi^e), complement of A127451.

The programs for A127450, the canonical program `A127450.P4849605123955769289` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127450 has offset 1).

The definition of A127450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127450.P4849605123955769289

`floor((n+1)/(exp(π)-π^e))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127450

/-- `floor((n+1)/(exp(π)-π^e))` -/
def P4849605123955769289.Spec : Prop :=
  ∀ n, P4849605123955769289.a n = A127450 (n + 1)

theorem P4849605123955769289.correct : P4849605123955769289.Spec := by
  intro n
  simp only [A127450, Nat.add_sub_cancel]

end A127450

/-! ## A127450.P739528444793282018

`comp[A127451(n+1)-1]+1`
-/

namespace A127450.P739528444793282018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127451 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A127450.P739528444793282018

namespace A127450

/-- `comp[A127451(n+1)-1]+1` -/
def P739528444793282018.Spec : Prop :=
  ∀ n, (P739528444793282018.a n : ℤ) = A127450 (n + 1)

end A127450

/-! ## A127450.P11299318333736822846

`record[n^(A121930(n+1)-A121930(n))]`
-/

namespace A127450.P11299318333736822846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A121930 (n + 1) - A121930 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127450.P11299318333736822846

namespace A127450

/-- `record[n^(A121930(n+1)-A121930(n))]` -/
def P11299318333736822846.Spec : Prop :=
  ∀ n, P11299318333736822846.a n = (A127450 (n + 1) : ℚ)

end A127450

/-!
# A127451: Beatty sequence for 1/(1 - e^Pi + Pi^e), complement of A127450.

The programs for A127451, the canonical program `A127451.P5355981857127914997` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127451 has offset 1).

The definition of A127451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127451.P5355981857127914997

`floor((n+1)/(1-exp(π)+π^e))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127451

/-- `floor((n+1)/(1-exp(π)+π^e))` -/
def P5355981857127914997.Spec : Prop :=
  ∀ n, P5355981857127914997.a n = A127451 (n + 1)

theorem P5355981857127914997.correct : P5355981857127914997.Spec := by
  intro n
  simp only [A127451, Nat.add_sub_cancel]

end A127451

/-! ## A127451.P10178266236025757317

`A342696(A189795(11*(n+1)))`
-/

namespace A127451.P10178266236025757317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A189795 (11 * (n + 1))).toNat

end

end A127451.P10178266236025757317

namespace A127451

/-- `A342696(A189795(11*(n+1)))` -/
def P10178266236025757317.Spec : Prop :=
  ∀ n, P10178266236025757317.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P15937131172727743659

`A327139(n+1)+A033715(A130321(n))`
-/

namespace A127451.P15937131172727743659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A033715 (A130321 n).toNat

end

end A127451.P15937131172727743659

namespace A127451

/-- `A327139(n+1)+A033715(A130321(n))` -/
def P15937131172727743659.Spec : Prop :=
  ∀ n, P15937131172727743659.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P4941284383196768241

`A327139(n+1)+A033715(A137688(n))`
-/

namespace A127451.P4941284383196768241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A033715 (A137688 n).toNat

end

end A127451.P4941284383196768241

namespace A127451

/-- `A327139(n+1)+A033715(A137688(n))` -/
def P4941284383196768241.Spec : Prop :=
  ∀ n, P4941284383196768241.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P16750291749539134091

`A327139(n+1)+A141310(A319384(n))`
-/

namespace A127451.P16750291749539134091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A141310 (A319384 n).toNat

end

end A127451.P16750291749539134091

namespace A127451

/-- `A327139(n+1)+A141310(A319384(n))` -/
def P16750291749539134091.Spec : Prop :=
  ∀ n, P16750291749539134091.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P2885017879556279244

`A327139(n+1)+A046523(A106900(n+1))`
-/

namespace A127451.P2885017879556279244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A046523 (A106900 (n + 1)).toNat

end

end A127451.P2885017879556279244

namespace A127451

/-- `A327139(n+1)+A046523(A106900(n+1))` -/
def P2885017879556279244.Spec : Prop :=
  ∀ n, P2885017879556279244.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P7257471907147965343

`A327139(n+1)+val(A181510(A130321(n)+1), 2)²+1`
-/

namespace A127451.P7257471907147965343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + (SequenceMachineLib.valuation (A181510 (A130321 n + 1).toNat).toNat 2 ^ 2 + 1 : ℤ)

end

end A127451.P7257471907147965343

namespace A127451

/-- `A327139(n+1)+val(A181510(A130321(n)+1), 2)²+1` -/
def P7257471907147965343.Spec : Prop :=
  ∀ n, P7257471907147965343.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P16592952810203247351

`A327139(n+1)+A005811(A137688(n+1))`
-/

namespace A127451.P16592952810203247351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A005811 (A137688 (n + 1)).toNat

end

end A127451.P16592952810203247351

namespace A127451

/-- `A327139(n+1)+A005811(A137688(n+1))` -/
def P16592952810203247351.Spec : Prop :=
  ∀ n, P16592952810203247351.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P1075445082417788709

`A327139(n+1)+A100565(A093191(n+1))`
-/

namespace A127451.P1075445082417788709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A100565 (A093191 (n + 1)).toNat

end

end A127451.P1075445082417788709

namespace A127451

/-- `A327139(n+1)+A100565(A093191(n+1))` -/
def P1075445082417788709.Spec : Prop :=
  ∀ n, P1075445082417788709.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P18006346649486128580

`A327139(n+1)+A014963(A260085(n+1))`
-/

namespace A127451.P18006346649486128580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A014963 (A260085 (n + 1)).toNat

end

end A127451.P18006346649486128580

namespace A127451

/-- `A327139(n+1)+A014963(A260085(n+1))` -/
def P18006346649486128580.Spec : Prop :=
  ∀ n, P18006346649486128580.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P3237464336377810999

`A327139(n+1)+A000034(A002061(n))`
-/

namespace A127451.P3237464336377810999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A000034 (A002061 n).toNat

end

end A127451.P3237464336377810999

namespace A127451

/-- `A327139(n+1)+A000034(A002061(n))` -/
def P3237464336377810999.Spec : Prop :=
  ∀ n, P3237464336377810999.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P3247479825527456785

`A327139(n+1)+A040143(A127453(n+1))`
-/

namespace A127451.P3247479825527456785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A040143 (A127453 (n + 1)).toNat

end

end A127451.P3247479825527456785

namespace A127451

/-- `A327139(n+1)+A040143(A127453(n+1))` -/
def P3247479825527456785.Spec : Prop :=
  ∀ n, P3247479825527456785.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P9357787438766713364

`A327139(n+1)+A000034(A169707(n+1))`
-/

namespace A127451.P9357787438766713364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A000034 (A169707 (n + 1)).toNat

end

end A127451.P9357787438766713364

namespace A127451

/-- `A327139(n+1)+A000034(A169707(n+1))` -/
def P9357787438766713364.Spec : Prop :=
  ∀ n, P9357787438766713364.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P15141041099564214527

`A327139(n+1)+A000122((n+1)²)`
-/

namespace A127451.P15141041099564214527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A000122 ((n + 1) ^ 2)

end

end A127451.P15141041099564214527

namespace A127451

/-- `A327139(n+1)+A000122((n+1)²)` -/
def P15141041099564214527.Spec : Prop :=
  ∀ n, P15141041099564214527.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P2388157705016628116

`A327139(n+1)+A000034(A187873(n))`
-/

namespace A127451.P2388157705016628116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A000034 (A187873 n).toNat

end

end A127451.P2388157705016628116

namespace A127451

/-- `A327139(n+1)+A000034(A187873(n))` -/
def P2388157705016628116.Spec : Prop :=
  ∀ n, P2388157705016628116.a n = A127451 (n + 1)

end A127451

/-! ## A127451.P4988103728094431800

`A327139(n+1)+A040143(A048637(n+1))`
-/

namespace A127451.P4988103728094431800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A040143 (A048637 (n + 1)).toNat

end

end A127451.P4988103728094431800

namespace A127451

/-- `A327139(n+1)+A040143(A048637(n+1))` -/
def P4988103728094431800.Spec : Prop :=
  ∀ n, P4988103728094431800.a n = A127451 (n + 1)

end A127451

/-!
# A127458: Numbers k such that there are no primes between k and k + k^(1/3).

The programs for A127458, the canonical program `A127458.P1588143884690926353` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127458 has offset 1).

The definition of A127458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 848 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127458.P1588143884690926353

`lt[n+1, A013632(n+1)^3]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127458

/-- `lt[n+1, A013632(n+1)^3]+1` -/
def P1588143884690926353.Spec : Prop :=
  ∀ n, (P1588143884690926353.a n : ℤ) = A127458 (n + 1)

theorem P1588143884690926353.correct : P1588143884690926353.Spec := by
  intro n
  simp only [A127458, Nat.add_sub_cancel]

end A127458

/-! ## A127458.P4474795766991019019

`lt[A245396(n+1), A000203(A139693(n))]`
-/

namespace A127458.P4474795766991019019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A139693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127458.P4474795766991019019

namespace A127458

/-- `lt[A245396(n+1), A000203(A139693(n))]` -/
def P4474795766991019019.Spec : Prop :=
  ∀ n, (P4474795766991019019.a n : ℤ) = A127458 (n + 1)

end A127458

/-! ## A127458.P10533505773498714423

`lt[A037168(A000700(3*n+1)), A171228(n)]`
-/

namespace A127458.P10533505773498714423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (A000700 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127458.P10533505773498714423

namespace A127458

/-- `lt[A037168(A000700(3*n+1)), A171228(n)]` -/
def P10533505773498714423.Spec : Prop :=
  ∀ n, (P10533505773498714423.a n : ℤ) = A127458 (n + 1)

end A127458

/-! ## A127458.P4526146653148831759

`lt[A005250(2*n+5), A059786(A139693(n))]`
-/

namespace A127458.P4526146653148831759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059786 (A139693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127458.P4526146653148831759

namespace A127458

/-- `lt[A005250(2*n+5), A059786(A139693(n))]` -/
def P4526146653148831759.Spec : Prop :=
  ∀ n, (P4526146653148831759.a n : ℤ) = A127458 (n + 1)

end A127458

/-! ## A127458.P11361121406753591231

`lt[A103288(A000041(n)), A171228(n)]`
-/

namespace A127458.P11361121406753591231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127458.P11361121406753591231

namespace A127458

/-- `lt[A103288(A000041(n)), A171228(n)]` -/
def P11361121406753591231.Spec : Prop :=
  ∀ n, (P11361121406753591231.a n : ℤ) = A127458 (n + 1)

end A127458

/-!
# A127459: Prime numbers n such that there are no primes between n and n+n^(1/3).

The programs for A127459, the canonical program `A127459.P12905099945906847377` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127459 has offset 1).

The definition of A127459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127459.P12905099945906847377

`p?[A127458(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A127459

/-- `p?[A127458(n+1)]` -/
def P12905099945906847377.Spec : Prop :=
  ∀ n, P12905099945906847377.a n = A127459 (n + 1)

theorem P12905099945906847377.correct : P12905099945906847377.Spec := by
  intro n
  simp only [A127459, Nat.add_sub_cancel]

end A127459

/-! ## A127459.P2658008471296070069

`∩[A082885(n+1), A127458(n+1)]`
-/

namespace A127459.P2658008471296070069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P2658008471296070069

namespace A127459

/-- `∩[A082885(n+1), A127458(n+1)]` -/
def P2658008471296070069.Spec : Prop :=
  ∀ n, (P2658008471296070069.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P13761196361285561266

`∩[A080191(n+1), A127458(n+1)]`
-/

namespace A127459.P13761196361285561266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P13761196361285561266

namespace A127459

/-- `∩[A080191(n+1), A127458(n+1)]` -/
def P13761196361285561266.Spec : Prop :=
  ∀ n, (P13761196361285561266.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P5443474789050671133

`∩[A000040(n+1), A127458(n+1)]`
-/

namespace A127459.P5443474789050671133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P5443474789050671133

namespace A127459

/-- `∩[A000040(n+1), A127458(n+1)]` -/
def P5443474789050671133.Spec : Prop :=
  ∀ n, (P5443474789050671133.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P17233522396446463940

`∩[A006005(n+1), A127458(n+1)]`
-/

namespace A127459.P17233522396446463940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P17233522396446463940

namespace A127459

/-- `∩[A006005(n+1), A127458(n+1)]` -/
def P17233522396446463940.Spec : Prop :=
  ∀ n, (P17233522396446463940.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P14624523002431930713

`∩[A008578(n+1), A127458(n+1)]`
-/

namespace A127459.P14624523002431930713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P14624523002431930713

namespace A127459

/-- `∩[A008578(n+1), A127458(n+1)]` -/
def P14624523002431930713.Spec : Prop :=
  ∀ n, (P14624523002431930713.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P7017759416150492908

`∩[A046022(n+1), A127458(n+1)]`
-/

namespace A127459.P7017759416150492908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P7017759416150492908

namespace A127459

/-- `∩[A046022(n+1), A127458(n+1)]` -/
def P7017759416150492908.Spec : Prop :=
  ∀ n, (P7017759416150492908.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P1882972650247126122

`∩[A051948(n+1), A127458(n+1)]`
-/

namespace A127459.P1882972650247126122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P1882972650247126122

namespace A127459

/-- `∩[A051948(n+1), A127458(n+1)]` -/
def P1882972650247126122.Spec : Prop :=
  ∀ n, (P1882972650247126122.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P2673456181139939842

`∩[A053813(n+1), A127458(n+1)]`
-/

namespace A127459.P2673456181139939842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P2673456181139939842

namespace A127459

/-- `∩[A053813(n+1), A127458(n+1)]` -/
def P2673456181139939842.Spec : Prop :=
  ∀ n, (P2673456181139939842.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P5103366372384656916

`∩[A062972(n+1), A127458(n+1)]`
-/

namespace A127459.P5103366372384656916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P5103366372384656916

namespace A127459

/-- `∩[A062972(n+1), A127458(n+1)]` -/
def P5103366372384656916.Spec : Prop :=
  ∀ n, (P5103366372384656916.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P17759648744343457264

`∩[A065091(n+1), A127458(n+1)]`
-/

namespace A127459.P17759648744343457264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P17759648744343457264

namespace A127459

/-- `∩[A065091(n+1), A127458(n+1)]` -/
def P17759648744343457264.Spec : Prop :=
  ∀ n, (P17759648744343457264.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P2652535610690963706

`∩[A066050(n+1), A127458(n+1)]`
-/

namespace A127459.P2652535610690963706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P2652535610690963706

namespace A127459

/-- `∩[A066050(n+1), A127458(n+1)]` -/
def P2652535610690963706.Spec : Prop :=
  ∀ n, (P2652535610690963706.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P17175435069951929245

`∩[A067126(n+1), A127458(n+1)]`
-/

namespace A127459.P17175435069951929245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P17175435069951929245

namespace A127459

/-- `∩[A067126(n+1), A127458(n+1)]` -/
def P17175435069951929245.Spec : Prop :=
  ∀ n, (P17175435069951929245.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P5300559787821578117

`∩[A127458(n+1), A161346(n+1)]`
-/

namespace A127459.P5300559787821578117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P5300559787821578117

namespace A127459

/-- `∩[A127458(n+1), A161346(n+1)]` -/
def P5300559787821578117.Spec : Prop :=
  ∀ n, (P5300559787821578117.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P15851919775131387595

`∩[A127458(n+1), A182986(n+1)]`
-/

namespace A127459.P15851919775131387595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127459.P15851919775131387595

namespace A127459

/-- `∩[A127458(n+1), A182986(n+1)]` -/
def P15851919775131387595.Spec : Prop :=
  ∀ n, (P15851919775131387595.a n : ℤ) = A127459 (n + 1)

end A127459

/-! ## A127459.P1930908853988100545

`record[A000040(n+2)%(A001223(n+2)^3)]`
-/

namespace A127459.P1930908853988100545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) (A001223 (n + 2) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127459.P1930908853988100545

namespace A127459

/-- `record[A000040(n+2)%(A001223(n+2)^3)]` -/
def P1930908853988100545.Spec : Prop :=
  ∀ n, P1930908853988100545.a n = A127459 (n + 1)

end A127459

/-! ## A127459.P13411657574202028282

`filter[A127458(n+1), A010051(#)]`
-/

namespace A127459.P13411657574202028282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A127459.P13411657574202028282

namespace A127459

/-- `filter[A127458(n+1), A010051(#)]` -/
def P13411657574202028282.Spec : Prop :=
  ∀ n, P13411657574202028282.a n = A127459 (n + 1)

end A127459

/-! ## A127459.P7659545356963893604

`record[A020639(or(1, A127458(n+1)))]`
-/

namespace A127459.P7659545356963893604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A127458 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127459.P7659545356963893604

namespace A127459

/-- `record[A020639(or(1, A127458(n+1)))]` -/
def P7659545356963893604.Spec : Prop :=
  ∀ n, P7659545356963893604.a n = A127459 (n + 1)

end A127459

/-! ## A127459.P9860499934487144825

`filter[A127458(n+1), A323153(#)]`
-/

namespace A127459.P9860499934487144825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A127459.P9860499934487144825

namespace A127459

/-- `filter[A127458(n+1), A323153(#)]` -/
def P9860499934487144825.Spec : Prop :=
  ∀ n, P9860499934487144825.a n = A127459 (n + 1)

end A127459

/-! ## A127459.P16680157972462986175

`record[A006530(A127458(n+1)+A127458(n+1))]`
-/

namespace A127459.P16680157972462986175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A127458 (n + 1) + A127458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127459.P16680157972462986175

namespace A127459

/-- `record[A006530(A127458(n+1)+A127458(n+1))]` -/
def P16680157972462986175.Spec : Prop :=
  ∀ n, P16680157972462986175.a n = A127459 (n + 1)

end A127459

/-!
# A127460: a(1)=1. a(n) = number of earlier terms a(k), 1<=k<=n-1, such that (k+a(k)) divides n.

The programs for A127460, there is no canonical definition to state claims against.
-/

/-! ## A127460.P1925022453760856986

`A302242(A287100(n)+2*n+5)`
-/

namespace A127460.P1925022453760856986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A287100 n + (2 * n + 5 : ℤ)).toNat

end

end A127460.P1925022453760856986

/-! ## A127460.P6261611008134820475

`A341540(A001350(n))+A070824(n+1)`
-/

namespace A127460.P6261611008134820475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341540 (A001350 n).toNat + A070824 (n + 1)

end

end A127460.P6261611008134820475

/-! ## A127460.P13489882924151675050

`A000005(n+1)-A354579(A220496(n))`
-/

namespace A127460.P13489882924151675050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A354579 (A220496 n).toNat

end

end A127460.P13489882924151675050

/-! ## A127460.P9928929600260454470

`xor(A122698(A039598(3*n+2)), A182850(n+1))`
-/

namespace A127460.P9928929600260454470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122698 (A039598 (3 * n + 2)).toNat) (A182850 (n + 1))

end

end A127460.P9928929600260454470

/-! ## A127460.P11416791625295588414

`∏{e}[n+1, #+1]-A305831(A333463(n+1))`
-/

namespace A127460.P11416791625295588414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A305831 (A333463 (n + 1)).toNat

end

end A127460.P11416791625295588414

/-!
# A127461: a(0)=1. a(n) = number of earlier terms a(k), 0<=k<=n-1, such that (k+a(k)) divides n.

The programs for A127461, there is no canonical definition to state claims against.
-/

/-! ## A127461.P10804451587203699197

`A136480((3*n)²*A205139(n+1))`
-/

namespace A127461.P10804451587203699197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (((3 * n) ^ 2 : ℤ) * A205139 (n + 1)).toNat

end

end A127461.P10804451587203699197

/-! ## A127461.P13647162757499829721

`A136480(lcm(n², A277619(n)))`
-/

namespace A127461.P13647162757499829721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (Int.lcm (n ^ 2 : ℤ) (A277619 n))

end

end A127461.P13647162757499829721

/-! ## A127461.P5151859421150204416

`gcd(A007733(n+1), A089898(A159350(n)))`
-/

namespace A127461.P5151859421150204416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007733 (n + 1)) (A089898 (A159350 n).toNat)

end

end A127461.P5151859421150204416

/-! ## A127461.P15417686065452904192

`gcd(A000010(n+1), A002024(A125899(n+1)))`
-/

namespace A127461.P15417686065452904192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A002024 (A125899 (n + 1)).toNat)

end

end A127461.P15417686065452904192

/-!
# A127465: Triangle read by rows: T(n,k) = k*phi(n/k) if k|n, T(n,k)=0 otherwise.

The programs for A127465, the canonical program `A127465.P17057416281639461031` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127465 has offset 1).

The definition of A127465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127465.P9164929874461216280

`A128227(n)*A129236(n+1)`
-/

namespace A127465.P9164929874461216280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A129236 (n + 1)

end

end A127465.P9164929874461216280

namespace A127465

/-- `A128227(n)*A129236(n+1)` -/
def P9164929874461216280.Spec : Prop :=
  ∀ n, P9164929874461216280.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P17057416281639461031

`A002260(n+1)*A054523(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A127465

/-- `A002260(n+1)*A054523(n+1)` -/
def P17057416281639461031.Spec : Prop :=
  ∀ n, P17057416281639461031.a n = A127465 (n + 1)

theorem P17057416281639461031.correct : P17057416281639461031.Spec := by
  intro n
  simp only [A127465, Nat.add_sub_cancel]

end A127465

/-! ## A127465.P12428042065595850202

`(A002262(n)+1)*A054523(n+1)`
-/

namespace A127465.P12428042065595850202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A054523 (n + 1)

end

end A127465.P12428042065595850202

namespace A127465

/-- `(A002262(n)+1)*A054523(n+1)` -/
def P12428042065595850202.Spec : Prop :=
  ∀ n, P12428042065595850202.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P6727673871307644902

`A050873(n+1)*A054523(n+1)`
-/

namespace A127465.P6727673871307644902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A054523 (n + 1)

end

end A127465.P6727673871307644902

namespace A127465

/-- `A050873(n+1)*A054523(n+1)` -/
def P6727673871307644902.Spec : Prop :=
  ∀ n, P6727673871307644902.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P42654773258077856

`A003983(n+1)*A129236(n+1)`
-/

namespace A127465.P42654773258077856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) * A129236 (n + 1)

end

end A127465.P42654773258077856

namespace A127465

/-- `A003983(n+1)*A129236(n+1)` -/
def P42654773258077856.Spec : Prop :=
  ∀ n, P42654773258077856.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P1604299590710288070

`A054523(n+1)*A123275(n+1)`
-/

namespace A127465.P1604299590710288070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A123275 (n + 1)

end

end A127465.P1604299590710288070

namespace A127465

/-- `A054523(n+1)*A123275(n+1)` -/
def P1604299590710288070.Spec : Prop :=
  ∀ n, P1604299590710288070.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P5154085221654543523

`A054523(n+1)*A127093(n+1)`
-/

namespace A127465.P5154085221654543523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A127093 (n + 1)

end

end A127465.P5154085221654543523

namespace A127465

/-- `A054523(n+1)*A127093(n+1)` -/
def P5154085221654543523.Spec : Prop :=
  ∀ n, P5154085221654543523.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P8980917344086714453

`A054523(n+1)*A334230(n+1)`
-/

namespace A127465.P8980917344086714453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A334230 (n + 1)

end

end A127465.P8980917344086714453

namespace A127465

/-- `A054523(n+1)*A334230(n+1)` -/
def P8980917344086714453.Spec : Prop :=
  ∀ n, P8980917344086714453.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P6350127676912314577

`A054523(n+1)*A357554(n+1)`
-/

namespace A127465.P6350127676912314577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A357554 (n + 1)

end

end A127465.P6350127676912314577

namespace A127465

/-- `A054523(n+1)*A357554(n+1)` -/
def P6350127676912314577.Spec : Prop :=
  ∀ n, P6350127676912314577.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P16587798228118731436

`A127649(n+1)/A010766(n+1)`
-/

namespace A127465.P16587798228118731436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A127465.P16587798228118731436

namespace A127465

/-- `A127649(n+1)/A010766(n+1)` -/
def P16587798228118731436.Spec : Prop :=
  ∀ n, P16587798228118731436.a n = (A127465 (n + 1) : ℚ)

end A127465

/-! ## A127465.P12798484520333594378

`A127649(n+1)/A049834(n+1)`
-/

namespace A127465.P12798484520333594378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A127465.P12798484520333594378

namespace A127465

/-- `A127649(n+1)/A049834(n+1)` -/
def P12798484520333594378.Spec : Prop :=
  ∀ n, P12798484520333594378.a n = (A127465 (n + 1) : ℚ)

end A127465

/-! ## A127465.P11173385986316817842

`A127649(n+1)/A051537(n+1)`
-/

namespace A127465.P11173385986316817842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A127465.P11173385986316817842

namespace A127465

/-- `A127649(n+1)/A051537(n+1)` -/
def P11173385986316817842.Spec : Prop :=
  ∀ n, P11173385986316817842.a n = (A127465 (n + 1) : ℚ)

end A127465

/-! ## A127465.P8143030488492564279

`A127467(n+1)/A054526(n+1)`
-/

namespace A127465.P8143030488492564279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127467 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A127465.P8143030488492564279

namespace A127465

/-- `A127467(n+1)/A054526(n+1)` -/
def P8143030488492564279.Spec : Prop :=
  ∀ n, P8143030488492564279.a n = (A127465 (n + 1) : ℚ)

end A127465

/-! ## A127465.P3023975052443712671

`A127649(n+1)/A054531(n+1)`
-/

namespace A127465.P3023975052443712671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A127465.P3023975052443712671

namespace A127465

/-- `A127649(n+1)/A054531(n+1)` -/
def P3023975052443712671.Spec : Prop :=
  ∀ n, P3023975052443712671.a n = (A127465 (n + 1) : ℚ)

end A127465

/-! ## A127465.P6957620437468542936

`abs(A054523(n+1)*A140756(n+1))`
-/

namespace A127465.P6957620437468542936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054523 (n + 1) * A140756 (n + 1)|

end

end A127465.P6957620437468542936

namespace A127465

/-- `abs(A054523(n+1)*A140756(n+1))` -/
def P6957620437468542936.Spec : Prop :=
  ∀ n, P6957620437468542936.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P17897037094642495045

`A000720(A037126(n+1))*A054523(n+1)`
-/

namespace A127465.P17897037094642495045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (n + 1)).toNat * A054523 (n + 1)

end

end A127465.P17897037094642495045

namespace A127465

/-- `A000720(A037126(n+1))*A054523(n+1)` -/
def P17897037094642495045.Spec : Prop :=
  ∀ n, P17897037094642495045.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P8729819367355592449

`A000010(A051537(n+1))*A127093(n+1)`
-/

namespace A127465.P8729819367355592449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A051537 (n + 1)).toNat * A127093 (n + 1)

end

end A127465.P8729819367355592449

namespace A127465

/-- `A000010(A051537(n+1))*A127093(n+1)` -/
def P8729819367355592449.Spec : Prop :=
  ∀ n, P8729819367355592449.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P5135478381408713622

`A129236(n+1)*A307079(n)`
-/

namespace A127465.P5135478381408713622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129236 (n + 1) * A307079 n

end

end A127465.P5135478381408713622

namespace A127465

/-- `A129236(n+1)*A307079(n)` -/
def P5135478381408713622.Spec : Prop :=
  ∀ n, P5135478381408713622.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P5803830140846896547

`A004736(A038722(n+1))*A054523(n+1)`
-/

namespace A127465.P5803830140846896547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A054523 (n + 1)

end

end A127465.P5803830140846896547

namespace A127465

/-- `A004736(A038722(n+1))*A054523(n+1)` -/
def P5803830140846896547.Spec : Prop :=
  ∀ n, P5803830140846896547.a n = A127465 (n + 1)

end A127465

/-! ## A127465.P10953092589813159707

`A054522(A286158(n+1))*A127093(n+1)`
-/

namespace A127465.P10953092589813159707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (A286158 (n + 1)).toNat * A127093 (n + 1)

end

end A127465.P10953092589813159707

namespace A127465

/-- `A054522(A286158(n+1))*A127093(n+1)` -/
def P10953092589813159707.Spec : Prop :=
  ∀ n, P10953092589813159707.a n = A127465 (n + 1)

end A127465

/-!
# A127466: Triangle read by rows: A054525 * A127481 as infinite lower triangular matrices.

The programs for A127466, the canonical program `A127466.P7012915985447955855` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127466 has offset 1).

The definition of A127466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127466.P17908387576356872505

`∑[char[∑[n]]]*A054522(n+1)`
-/

namespace A127466.P17908387576356872505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054522 (n + 1)

end

end A127466.P17908387576356872505

namespace A127466

/-- `∑[char[∑[n]]]*A054522(n+1)` -/
def P17908387576356872505.Spec : Prop :=
  ∀ n, P17908387576356872505.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P8374666718861646062

`lcm(A129555(n), A143269(n+1))`
-/

namespace A127466.P8374666718861646062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129555 n) (A143269 (n + 1))

end

end A127466.P8374666718861646062

namespace A127466

/-- `lcm(A129555(n), A143269(n+1))` -/
def P8374666718861646062.Spec : Prop :=
  ∀ n, (P8374666718861646062.a n : ℤ) = A127466 (n + 1)

end A127466

/-! ## A127466.P7012915985447955855

`A054522(n+1)*A002024(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A127466

/-- `A054522(n+1)*A002024(n+1)` -/
def P7012915985447955855.Spec : Prop :=
  ∀ n, P7012915985447955855.a n = A127466 (n + 1)

theorem P7012915985447955855.correct : P7012915985447955855.Spec := by
  intro n
  simp only [A127466, Nat.add_sub_cancel]

end A127466

/-! ## A127466.P9059590614568291960

`A054522(n+1)*A049840(n+1)`
-/

namespace A127466.P9059590614568291960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A049840 (n + 1)

end

end A127466.P9059590614568291960

namespace A127466

/-- `A054522(n+1)*A049840(n+1)` -/
def P9059590614568291960.Spec : Prop :=
  ∀ n, P9059590614568291960.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P7346843588264238206

`A054522(n+1)*A074712(n+1)`
-/

namespace A127466.P7346843588264238206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A074712 (n + 1)

end

end A127466.P7346843588264238206

namespace A127466

/-- `A054522(n+1)*A074712(n+1)` -/
def P7346843588264238206.Spec : Prop :=
  ∀ n, P7346843588264238206.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P4899493881410572859

`A002260(n+1)*A127478(n+1)`
-/

namespace A127466.P4899493881410572859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127478 (n + 1)

end

end A127466.P4899493881410572859

namespace A127466

/-- `A002260(n+1)*A127478(n+1)` -/
def P4899493881410572859.Spec : Prop :=
  ∀ n, P4899493881410572859.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P11600050337022295567

`A054522(n+1)*A123229(n+1)`
-/

namespace A127466.P11600050337022295567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A123229 (n + 1)

end

end A127466.P11600050337022295567

namespace A127466

/-- `A054522(n+1)*A123229(n+1)` -/
def P11600050337022295567.Spec : Prop :=
  ∀ n, P11600050337022295567.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P6231388477182644924

`A050873(n+1)*A127478(n+1)`
-/

namespace A127466.P6231388477182644924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A127478 (n + 1)

end

end A127466.P6231388477182644924

namespace A127466

/-- `A050873(n+1)*A127478(n+1)` -/
def P6231388477182644924.Spec : Prop :=
  ∀ n, P6231388477182644924.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P7130452610158419185

`A054522(n+1)*A127446(n+1)`
-/

namespace A127466.P7130452610158419185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A127446 (n + 1)

end

end A127466.P7130452610158419185

namespace A127466

/-- `A054522(n+1)*A127446(n+1)` -/
def P7130452610158419185.Spec : Prop :=
  ∀ n, P7130452610158419185.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P11048612445789634521

`A054526(n+1)*A127446(n+1)`
-/

namespace A127466.P11048612445789634521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A127446 (n + 1)

end

end A127466.P11048612445789634521

namespace A127466

/-- `A054526(n+1)*A127446(n+1)` -/
def P11048612445789634521.Spec : Prop :=
  ∀ n, P11048612445789634521.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P9098213186182808852

`A054532(n+1)*A127446(n+1)`
-/

namespace A127466.P9098213186182808852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A127446 (n + 1)

end

end A127466.P9098213186182808852

namespace A127466

/-- `A054532(n+1)*A127446(n+1)` -/
def P9098213186182808852.Spec : Prop :=
  ∀ n, P9098213186182808852.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P12809806599845735373

`A051731(n+1)*A143269(n+1)`
-/

namespace A127466.P12809806599845735373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A143269 (n + 1)

end

end A127466.P12809806599845735373

namespace A127466

/-- `A051731(n+1)*A143269(n+1)` -/
def P12809806599845735373.Spec : Prop :=
  ∀ n, P12809806599845735373.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P17343001298725285072

`A123275(n+1)*A127478(n+1)`
-/

namespace A127466.P17343001298725285072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A127478 (n + 1)

end

end A127466.P17343001298725285072

namespace A127466

/-- `A123275(n+1)*A127478(n+1)` -/
def P17343001298725285072.Spec : Prop :=
  ∀ n, P17343001298725285072.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P985115850292632119

`A054522(n+1)*A199408(n+1)`
-/

namespace A127466.P985115850292632119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A199408 (n + 1)

end

end A127466.P985115850292632119

namespace A127466

/-- `A054522(n+1)*A199408(n+1)` -/
def P985115850292632119.Spec : Prop :=
  ∀ n, P985115850292632119.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P5572831124088209783

`A127093(n+1)*A127478(n+1)`
-/

namespace A127466.P5572831124088209783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A127478 (n + 1)

end

end A127466.P5572831124088209783

namespace A127466

/-- `A127093(n+1)*A127478(n+1)` -/
def P5572831124088209783.Spec : Prop :=
  ∀ n, P5572831124088209783.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P4131239178223299961

`A127093(n+1)*A130212(n+1)`
-/

namespace A127466.P4131239178223299961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130212 (n + 1)

end

end A127466.P4131239178223299961

namespace A127466

/-- `A127093(n+1)*A130212(n+1)` -/
def P4131239178223299961.Spec : Prop :=
  ∀ n, P4131239178223299961.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P13729004499317416297

`A126988(n+1)*A181538(n+1)`
-/

namespace A127466.P13729004499317416297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A181538 (n + 1)

end

end A127466.P13729004499317416297

namespace A127466

/-- `A126988(n+1)*A181538(n+1)` -/
def P13729004499317416297.Spec : Prop :=
  ∀ n, P13729004499317416297.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P16445693341101062149

`A000010(A002260(n+1)²)*A126988(n+1)`
-/

namespace A127466.P16445693341101062149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1) ^ 2).toNat * A126988 (n + 1)

end

end A127466.P16445693341101062149

namespace A127466

/-- `A000010(A002260(n+1)²)*A126988(n+1)` -/
def P16445693341101062149.Spec : Prop :=
  ∀ n, P16445693341101062149.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P2545354565040275776

`A112544(n+1)*A127478(n+1)`
-/

namespace A127466.P2545354565040275776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A127478 (n + 1)

end

end A127466.P2545354565040275776

namespace A127466

/-- `A112544(n+1)*A127478(n+1)` -/
def P2545354565040275776.Spec : Prop :=
  ∀ n, P2545354565040275776.a n = A127466 (n + 1)

end A127466

/-! ## A127466.P16287114053480401399

`A002024(n+1)*A086342(A216953(n+1))`
-/

namespace A127466.P16287114053480401399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A086342 (A216953 (n + 1)).toNat

end

end A127466.P16287114053480401399

namespace A127466

/-- `A002024(n+1)*A086342(A216953(n+1))` -/
def P16287114053480401399.Spec : Prop :=
  ∀ n, P16287114053480401399.a n = A127466 (n + 1)

end A127466

/-!
# A127467: Mobius transform of A127466.

The programs for A127467, the canonical program `A127467.P13882745324027357880` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127467 has offset 1).

The definition of A127467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127467.P11196277989657983654

`A002260(n+1)*A159937(n+1)`
-/

namespace A127467.P11196277989657983654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A159937 (n + 1)

end

end A127467.P11196277989657983654

namespace A127467

/-- `A002260(n+1)*A159937(n+1)` -/
def P11196277989657983654.Spec : Prop :=
  ∀ n, P11196277989657983654.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P861850817278812160

`(A002262(n)+1)*A159937(n+1)`
-/

namespace A127467.P861850817278812160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A159937 (n + 1)

end

end A127467.P861850817278812160

namespace A127467

/-- `(A002262(n)+1)*A159937(n+1)` -/
def P861850817278812160.Spec : Prop :=
  ∀ n, P861850817278812160.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P13882745324027357880

`A054522(n+1)*A127465(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A127467

/-- `A054522(n+1)*A127465(n+1)` -/
def P13882745324027357880.Spec : Prop :=
  ∀ n, P13882745324027357880.a n = A127467 (n + 1)

theorem P13882745324027357880.correct : P13882745324027357880.Spec := by
  intro n
  simp only [A127467, Nat.add_sub_cancel]

end A127467

/-! ## A127467.P17934999215716251953

`A054526(n+1)*A127465(n+1)`
-/

namespace A127467.P17934999215716251953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A127465 (n + 1)

end

end A127467.P17934999215716251953

namespace A127467

/-- `A054526(n+1)*A127465(n+1)` -/
def P17934999215716251953.Spec : Prop :=
  ∀ n, P17934999215716251953.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P4475654731804435690

`A054532(n+1)*A127465(n+1)`
-/

namespace A127467.P4475654731804435690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A127465 (n + 1)

end

end A127467.P4475654731804435690

namespace A127467

/-- `A054532(n+1)*A127465(n+1)` -/
def P4475654731804435690.Spec : Prop :=
  ∀ n, P4475654731804435690.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P16826807501975445717

`A050873(n+1)*A159937(n+1)`
-/

namespace A127467.P16826807501975445717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A159937 (n + 1)

end

end A127467.P16826807501975445717

namespace A127467

/-- `A050873(n+1)*A159937(n+1)` -/
def P16826807501975445717.Spec : Prop :=
  ∀ n, P16826807501975445717.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P1409616094550602074

`A054523(n+1)*A181538(n+1)`
-/

namespace A127467.P1409616094550602074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A181538 (n + 1)

end

end A127467.P1409616094550602074

namespace A127467

/-- `A054523(n+1)*A181538(n+1)` -/
def P1409616094550602074.Spec : Prop :=
  ∀ n, P1409616094550602074.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P13281883256234851864

`A123275(n+1)*A159937(n+1)`
-/

namespace A127467.P13281883256234851864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A159937 (n + 1)

end

end A127467.P13281883256234851864

namespace A127467

/-- `A123275(n+1)*A159937(n+1)` -/
def P13281883256234851864.Spec : Prop :=
  ∀ n, P13281883256234851864.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P11176365057976324795

`A127093(n+1)*A159937(n+1)`
-/

namespace A127467.P11176365057976324795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A159937 (n + 1)

end

end A127467.P11176365057976324795

namespace A127467

/-- `A127093(n+1)*A159937(n+1)` -/
def P11176365057976324795.Spec : Prop :=
  ∀ n, P11176365057976324795.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P1015614901839149965

`A159937(n+1)*A334230(n+1)`
-/

namespace A127467.P1015614901839149965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159937 (n + 1) * A334230 (n + 1)

end

end A127467.P1015614901839149965

namespace A127467

/-- `A159937(n+1)*A334230(n+1)` -/
def P1015614901839149965.Spec : Prop :=
  ∀ n, P1015614901839149965.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P4137180152350713463

`A127465(n+1)*A372673(n+1)`
-/

namespace A127467.P4137180152350713463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127465 (n + 1) * A372673 (n + 1)

end

end A127467.P4137180152350713463

namespace A127467

/-- `A127465(n+1)*A372673(n+1)` -/
def P4137180152350713463.Spec : Prop :=
  ∀ n, P4137180152350713463.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P1029662565175767625

`A159937(n+1)*A357554(n+1)`
-/

namespace A127467.P1029662565175767625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159937 (n + 1) * A357554 (n + 1)

end

end A127467.P1029662565175767625

namespace A127467

/-- `A159937(n+1)*A357554(n+1)` -/
def P1029662565175767625.Spec : Prop :=
  ∀ n, P1029662565175767625.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P9882077664271152591

`A000010(A002260(n+1)²)*A054523(n+1)`
-/

namespace A127467.P9882077664271152591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1) ^ 2).toNat * A054523 (n + 1)

end

end A127467.P9882077664271152591

namespace A127467

/-- `A000010(A002260(n+1)²)*A054523(n+1)` -/
def P9882077664271152591.Spec : Prop :=
  ∀ n, P9882077664271152591.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P9982916315210626876

`A000010(A050873(n+1)²)*A054523(n+1)`
-/

namespace A127467.P9982916315210626876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050873 (n + 1) ^ 2).toNat * A054523 (n + 1)

end

end A127467.P9982916315210626876

namespace A127467

/-- `A000010(A050873(n+1)²)*A054523(n+1)` -/
def P9982916315210626876.Spec : Prop :=
  ∀ n, P9982916315210626876.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P1316392798375856532

`A159937(n+1)*A307662(n+1)`
-/

namespace A127467.P1316392798375856532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159937 (n + 1) * A307662 (n + 1)

end

end A127467.P1316392798375856532

namespace A127467

/-- `A159937(n+1)*A307662(n+1)` -/
def P1316392798375856532.Spec : Prop :=
  ∀ n, P1316392798375856532.a n = A127467 (n + 1)

end A127467

/-! ## A127467.P4651686883451908009

`A112544(n+1)*A159937(n+1)`
-/

namespace A127467.P4651686883451908009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A159937 (n + 1)

end

end A127467.P4651686883451908009

namespace A127467

/-- `A112544(n+1)*A159937(n+1)` -/
def P4651686883451908009.Spec : Prop :=
  ∀ n, P4651686883451908009.a n = A127467 (n + 1)

end A127467

/-!
# A127469: a(n) = n * A062949(n).

The programs for A127469, the canonical program `A127469.P15521200645547831947` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127469 has offset 1).

The definition of A127469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062949, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127469.P15521200645547831947

`(n+1)*A062949(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A127469

/-- `(n+1)*A062949(n+1)` -/
def P15521200645547831947.Spec : Prop :=
  ∀ n, P15521200645547831947.a n = A127469 (n + 1)

theorem P15521200645547831947.correct : P15521200645547831947.Spec := by
  intro n
  simp only [A127469, Nat.add_sub_cancel]

end A127469

/-! ## A127469.P14373570569077036628

`(n+1)*∑{d}[n+1, A062355(#)]`
-/

namespace A127469.P14373570569077036628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A062355 d)

end

end A127469.P14373570569077036628

namespace A127469

/-- `(n+1)*∑{d}[n+1, A062355(#)]` -/
def P14373570569077036628.Spec : Prop :=
  ∀ n, P14373570569077036628.a n = A127469 (n + 1)

end A127469

/-! ## A127469.P12093166883106809300

`(n+1)*∑{d}[n+1, #*A047994((n+1)/#)]`
-/

namespace A127469.P12093166883106809300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A127469.P12093166883106809300

namespace A127469

/-- `(n+1)*∑{d}[n+1, #*A047994((n+1)/#)]` -/
def P12093166883106809300.Spec : Prop :=
  ∀ n, P12093166883106809300.a n = A127469 (n + 1)

end A127469

/-! ## A127469.P16356133959089728465

`∑{d}[n+1, (n+1)*A000005(#)*A000010(#)]`
-/

namespace A127469.P16356133959089728465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * (A000005 d * A000010 d)

end

end A127469.P16356133959089728465

namespace A127469

/-- `∑{d}[n+1, (n+1)*A000005(#)*A000010(#)]` -/
def P16356133959089728465.Spec : Prop :=
  ∀ n, P16356133959089728465.a n = A127469 (n + 1)

end A127469

/-! ## A127469.P3150778852499527615

`∑{d}[n+1, A000203(#)*A363012((n+1)/#)]`
-/

namespace A127469.P3150778852499527615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A363012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127469.P3150778852499527615

namespace A127469

/-- `∑{d}[n+1, A000203(#)*A363012((n+1)/#)]` -/
def P3150778852499527615.Spec : Prop :=
  ∀ n, P3150778852499527615.a n = A127469 (n + 1)

end A127469

/-! ## A127469.P14730298603847234727

`A062949(A122918(3*n))*A122918(3*n)`
-/

namespace A127469.P14730298603847234727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062949 (A122918 (3 * n)).toNat * A122918 (3 * n)

end

end A127469.P14730298603847234727

namespace A127469

/-- `A062949(A122918(3*n))*A122918(3*n)` -/
def P14730298603847234727.Spec : Prop :=
  ∀ n, P14730298603847234727.a n = A127469 (n + 1)

end A127469

/-!
# A127470: Triangle equal to the matrix product A127466 * A051731.

The programs for A127470, there is no canonical definition to state claims against.
-/

/-! ## A127470.P1179662324272832184

`∑[char[∑[n]]]*A127472(n+1)`
-/

namespace A127470.P1179662324272832184
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A127472 (n + 1)

end

end A127470.P1179662324272832184

/-! ## A127470.P10341215119337122565

`A127472(n+1)*A002024(n+1)`
-/

namespace A127470.P10341215119337122565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127472 (n + 1) * A002024 (n + 1)

end

end A127470.P10341215119337122565

/-! ## A127470.P3085340374447186356

`A127472(n+1)*A199408(n+1)`
-/

namespace A127470.P3085340374447186356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127472 (n + 1) * A199408 (n + 1)

end

end A127470.P3085340374447186356

/-! ## A127470.P3748927764374974596

`A127472(n+1)*A334231(n+1)`
-/

namespace A127470.P3748927764374974596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127472 (n + 1) * A334231 (n + 1)

end

end A127470.P3748927764374974596

/-! ## A127470.P16914728355420286912

`A127472(n+1)*A289236(n+1)`
-/

namespace A127470.P16914728355420286912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127472 (n + 1) * A289236 (n + 1)

end

end A127470.P16914728355420286912

/-!
# A127471: Triangle formed from the matrix product A051731 * A054522 of infinite lower triangular matrices, read by rows.

The programs for A127471, the canonical program `A127471.P13945067450438146790` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127471 has offset 1).

The definition of A127471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127471.P13945067450438146790

`A054522(n+1)*A127170(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A127471

/-- `A054522(n+1)*A127170(n+1)` -/
def P13945067450438146790.Spec : Prop :=
  ∀ n, P13945067450438146790.a n = A127471 (n + 1)

theorem P13945067450438146790.correct : P13945067450438146790.Spec := by
  intro n
  simp only [A127471, Nat.add_sub_cancel]

end A127471

/-! ## A127471.P10676952678456023366

`A054526(n+1)*A127170(n+1)`
-/

namespace A127471.P10676952678456023366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A127170 (n + 1)

end

end A127471.P10676952678456023366

namespace A127471

/-- `A054526(n+1)*A127170(n+1)` -/
def P10676952678456023366.Spec : Prop :=
  ∀ n, P10676952678456023366.a n = A127471 (n + 1)

end A127471

/-! ## A127471.P10609653745282647725

`A054532(n+1)*A127170(n+1)`
-/

namespace A127471.P10609653745282647725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A127170 (n + 1)

end

end A127471.P10609653745282647725

namespace A127471

/-- `A054532(n+1)*A127170(n+1)` -/
def P10609653745282647725.Spec : Prop :=
  ∀ n, P10609653745282647725.a n = A127471 (n + 1)

end A127471

/-! ## A127471.P14226218436127870359

`A127170(n+1)*A372673(n+1)`
-/

namespace A127471.P14226218436127870359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (n + 1) * A372673 (n + 1)

end

end A127471.P14226218436127870359

namespace A127471

/-- `A127170(n+1)*A372673(n+1)` -/
def P14226218436127870359.Spec : Prop :=
  ∀ n, P14226218436127870359.a n = A127471 (n + 1)

end A127471

/-! ## A127471.P7145210441921827728

`A000005(A049834(n+1))*A054522(n+1)`
-/

namespace A127471.P7145210441921827728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049834 (n + 1)).toNat * A054522 (n + 1)

end

end A127471.P7145210441921827728

namespace A127471

/-- `A000005(A049834(n+1))*A054522(n+1)` -/
def P7145210441921827728.Spec : Prop :=
  ∀ n, P7145210441921827728.a n = A127471 (n + 1)

end A127471

/-! ## A127471.P3508809674049396598

`A000005(A051537(n+1))*A054522(n+1)`
-/

namespace A127471.P3508809674049396598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051537 (n + 1)).toNat * A054522 (n + 1)

end

end A127471.P3508809674049396598

namespace A127471

/-- `A000005(A051537(n+1))*A054522(n+1)` -/
def P3508809674049396598.Spec : Prop :=
  ∀ n, P3508809674049396598.a n = A127471 (n + 1)

end A127471

/-! ## A127471.P14418364287720480295

`A000005(A059026(n+1))*A054522(n+1)`
-/

namespace A127471.P14418364287720480295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059026 (n + 1)).toNat * A054522 (n + 1)

end

end A127471.P14418364287720480295

namespace A127471

/-- `A000005(A059026(n+1))*A054522(n+1)` -/
def P14418364287720480295.Spec : Prop :=
  ∀ n, P14418364287720480295.a n = A127471 (n + 1)

end A127471

/-! ## A127471.P16077229344203193154

`A054526(n+1)/A049834(n+1)*A127168(n)`
-/

namespace A127471.P16077229344203193154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054526 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ) * (A127168 n : ℚ)

end

end A127471.P16077229344203193154

namespace A127471

/-- `A054526(n+1)/A049834(n+1)*A127168(n)` -/
def P16077229344203193154.Spec : Prop :=
  ∀ n, P16077229344203193154.a n = (A127471 (n + 1) : ℚ)

end A127471

/-! ## A127471.P6802478294914250123

`A127527(A120913(n+1))`
-/

namespace A127471.P6802478294914250123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127527 (A120913 (n + 1)).toNat

end

end A127471.P6802478294914250123

namespace A127471

/-- `A127527(A120913(n+1))` -/
def P6802478294914250123.Spec : Prop :=
  ∀ n, P6802478294914250123.a n = A127471 (n + 1)

end A127471

/-!
# A127472: Triangle T(n,k) = Sum_{j=k..n, j|n, k|j} phi(j) read by rows, 1<=k<=n.

The programs for A127472, there is no canonical definition to state claims against.
-/

/-! ## A127472.P14441990373448762998

`A127470(n+1)/∑[char[∑[n]]]`
-/

namespace A127472.P14441990373448762998
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127470 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A127472.P14441990373448762998

/-! ## A127472.P14879995027663460446

`ceil(A127470(n+1)/A101776(n))`
-/

namespace A127472.P14879995027663460446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127470 (n + 1) : ℚ) / (A101776 n : ℚ)⌉

end

end A127472.P14879995027663460446

/-! ## A127472.P14040871392355259134

`A127474(n+1)/A054526(n+1)`
-/

namespace A127472.P14040871392355259134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127474 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A127472.P14040871392355259134

/-! ## A127472.P17032539598022101912

`A127474(n+1)/A372673(n+1)`
-/

namespace A127472.P17032539598022101912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127474 (n + 1) : ℚ) / (A372673 (n + 1) : ℚ)

end

end A127472.P17032539598022101912

/-! ## A127472.P15959705557634690482

`floor(A127470(n+1)/A002024(n+1))`
-/

namespace A127472.P15959705557634690482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127470 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A127472.P15959705557634690482

/-! ## A127472.P10788016289847046250

`floor(A127470(n+1)/(A003056(n)+1))`
-/

namespace A127472.P10788016289847046250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127470 (n + 1) : ℚ) / (A003056 n + 1 : ℚ)⌋

end

end A127472.P10788016289847046250

/-! ## A127472.P8213470492336578085

`floor(A127470(n+1)/A049840(n+1))`
-/

namespace A127472.P8213470492336578085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127470 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ)⌋

end

end A127472.P8213470492336578085

/-! ## A127472.P5357963528611365493

`floor(A127470(n+1)/A051173(n+1))`
-/

namespace A127472.P5357963528611365493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127470 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ)⌋

end

end A127472.P5357963528611365493

/-! ## A127472.P18103448668003013314

`floor(A127470(n+1)/A074712(n+1))`
-/

namespace A127472.P18103448668003013314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127470 (n + 1) : ℚ) / (A074712 (n + 1) : ℚ)⌋

end

end A127472.P18103448668003013314

/-! ## A127472.P4331791567591096673

`floor(A127470(n+1)/A123229(n+1))`
-/

namespace A127472.P4331791567591096673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127470 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ)⌋

end

end A127472.P4331791567591096673

/-!
# A127473: a(n) = phi(n)^2.

The programs for A127473, the canonical program `A127473.P9698007400369304439` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127473 has offset 1).

The definition of A127473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127473.P9698007400369304439

`A000010(n+1)²`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127473

/-- `A000010(n+1)²` -/
def P9698007400369304439.Spec : Prop :=
  ∀ n, P9698007400369304439.a n = A127473 (n + 1)

theorem P9698007400369304439.correct : P9698007400369304439.Spec := by
  intro n
  simp only [A127473, Nat.add_sub_cancel]

end A127473

/-! ## A127473.P13216617673619743935

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²`
-/

namespace A127473.P13216617673619743935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2

end

end A127473.P13216617673619743935

namespace A127473

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²` -/
def P13216617673619743935.Spec : Prop :=
  ∀ n, P13216617673619743935.a n = (A127473 (n + 1) : ℚ)

end A127473

/-! ## A127473.P13641809414642532970

`Δ[A002088(n)]²`
-/

namespace A127473.P13641809414642532970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A127473.P13641809414642532970

namespace A127473

/-- `Δ[A002088(n)]²` -/
def P13641809414642532970.Spec : Prop :=
  ∀ n, P13641809414642532970.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P14419942912817308416

`Δ[A005728(n)]²`
-/

namespace A127473.P14419942912817308416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A127473.P14419942912817308416

namespace A127473

/-- `Δ[A005728(n)]²` -/
def P14419942912817308416.Spec : Prop :=
  ∀ n, P14419942912817308416.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P16837752296509012087

`sqrt(A361148(n+1))`
-/

namespace A127473.P16837752296509012087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A361148 (n + 1) : ℝ)

end

end A127473.P16837752296509012087

namespace A127473

/-- `sqrt(A361148(n+1))` -/
def P16837752296509012087.Spec : Prop :=
  ∀ n, P16837752296509012087.a n = (A127473 (n + 1) : ℝ)

end A127473

/-! ## A127473.P13738518762692935804

`A349137(Δ[n²])²`
-/

namespace A127473.P13738518762692935804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A127473.P13738518762692935804

namespace A127473

/-- `A349137(Δ[n²])²` -/
def P13738518762692935804.Spec : Prop :=
  ∀ n, P13738518762692935804.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P11265445572656506329

`(A109606(n+1)+1)²`
-/

namespace A127473.P11265445572656506329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) ^ 2

end

end A127473.P11265445572656506329

namespace A127473

/-- `(A109606(n+1)+1)²` -/
def P11265445572656506329.Spec : Prop :=
  ∀ n, P11265445572656506329.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P2853071138639184966

`(1-A039649(n+1))²`
-/

namespace A127473.P2853071138639184966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A039649 (n + 1)) ^ 2

end

end A127473.P2853071138639184966

namespace A127473

/-- `(1-A039649(n+1))²` -/
def P2853071138639184966.Spec : Prop :=
  ∀ n, P2853071138639184966.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P6025079305885218356

`(A219428(n+1)-n)²`
-/

namespace A127473.P6025079305885218356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219428 (n + 1) - (n : ℤ)) ^ 2

end

end A127473.P6025079305885218356

namespace A127473

/-- `(A219428(n+1)-n)²` -/
def P6025079305885218356.Spec : Prop :=
  ∀ n, P6025079305885218356.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P4446799332448691574

`A000010(lcm(2, n+1))^2`
-/

namespace A127473.P4446799332448691574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm 2 (n + 1)) ^ 2

end

end A127473.P4446799332448691574

namespace A127473

/-- `A000010(lcm(2, n+1))^2` -/
def P4446799332448691574.Spec : Prop :=
  ∀ n, P4446799332448691574.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P2346804782599822766

`A327570(n+1)/(n+1)`
-/

namespace A127473.P2346804782599822766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327570 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A127473.P2346804782599822766

namespace A127473

/-- `A327570(n+1)/(n+1)` -/
def P2346804782599822766.Spec : Prop :=
  ∀ n, P2346804782599822766.a n = (A127473 (n + 1) : ℚ)

end A127473

/-! ## A127473.P17039279131469220991

`ceil((A140434(n+1)/2)²)`
-/

namespace A127473.P17039279131469220991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A140434 (n + 1) : ℚ) / 2) ^ 2⌉

end

end A127473.P17039279131469220991

namespace A127473

/-- `ceil((A140434(n+1)/2)²)` -/
def P17039279131469220991.Spec : Prop :=
  ∀ n, P17039279131469220991.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P4937628499594533087

`(A319998(2*(n+1))/2)²`
-/

namespace A127473.P4937628499594533087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A319998 (2 * (n + 1)) : ℚ) / 2) ^ 2

end

end A127473.P4937628499594533087

namespace A127473

/-- `(A319998(2*(n+1))/2)²` -/
def P4937628499594533087.Spec : Prop :=
  ∀ n, P4937628499594533087.a n = (A127473 (n + 1) : ℚ)

end A127473

/-! ## A127473.P3598835352299629482

`(A002618(n+1)/(n+1))²`
-/

namespace A127473.P3598835352299629482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A127473.P3598835352299629482

namespace A127473

/-- `(A002618(n+1)/(n+1))²` -/
def P3598835352299629482.Spec : Prop :=
  ∀ n, P3598835352299629482.a n = (A127473 (n + 1) : ℚ)

end A127473

/-! ## A127473.P9918176157950371141

`A000010(2*n+1-n)^2`
-/

namespace A127473.P9918176157950371141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1 - n) ^ 2

end

end A127473.P9918176157950371141

namespace A127473

/-- `A000010(2*n+1-n)^2` -/
def P9918176157950371141.Spec : Prop :=
  ∀ n, P9918176157950371141.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P6087827598448823321

`Δ[a(n-1)-A000010(n)]²` with `a(0)=0`
-/

namespace A127473.P6087827598448823321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A000010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A127473.P6087827598448823321

namespace A127473

/-- `Δ[a(n-1)-A000010(n)]²` -/
def P6087827598448823321.Spec : Prop :=
  ∀ n, P6087827598448823321.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P7929531698364102069

`and(-3, A000010(2*n-(n-1))²)`
-/

namespace A127473.P7929531698364102069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2)

end

end A127473.P7929531698364102069

namespace A127473

/-- `and(-3, A000010(2*n-(n-1))²)` -/
def P7929531698364102069.Spec : Prop :=
  ∀ n, P7929531698364102069.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P15433006910238519037

`A082953(A015126(n+1))`
-/

namespace A127473.P15433006910238519037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082953 (A015126 (n + 1)).toNat

end

end A127473.P15433006910238519037

namespace A127473

/-- `A082953(A015126(n+1))` -/
def P15433006910238519037.Spec : Prop :=
  ∀ n, P15433006910238519037.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P8009288530421344922

`A081345(A109606(n+1))`
-/

namespace A127473.P8009288530421344922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (A109606 (n + 1)).toNat

end

end A127473.P8009288530421344922

namespace A127473

/-- `A081345(A109606(n+1))` -/
def P8009288530421344922.Spec : Prop :=
  ∀ n, P8009288530421344922.a n = A127473 (n + 1)

end A127473

/-! ## A127473.P12560705051402654309

`A174595(A039649(n+1))`
-/

namespace A127473.P12560705051402654309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174595 (A039649 (n + 1)).toNat

end

end A127473.P12560705051402654309

namespace A127473

/-- `A174595(A039649(n+1))` -/
def P12560705051402654309.Spec : Prop :=
  ∀ n, P12560705051402654309.a n = A127473 (n + 1)

end A127473

/-!
# A127474: Triangle, square of A054522.

The programs for A127474, there is no canonical definition to state claims against.
-/

/-! ## A127474.P15419421689082064766

`A054522(n+1)*A127472(n+1)`
-/

namespace A127474.P15419421689082064766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A127472 (n + 1)

end

end A127474.P15419421689082064766

/-! ## A127474.P11641099087869296429

`A054526(n+1)*A127472(n+1)`
-/

namespace A127474.P11641099087869296429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A127472 (n + 1)

end

end A127474.P11641099087869296429

/-! ## A127474.P15020209230296226581

`A054532(n+1)*A127472(n+1)`
-/

namespace A127474.P15020209230296226581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A127472 (n + 1)

end

end A127474.P15020209230296226581

/-! ## A127474.P10503729897146859858

`A127472(n+1)*A372673(n+1)`
-/

namespace A127474.P10503729897146859858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127472 (n + 1) * A372673 (n + 1)

end

end A127474.P10503729897146859858

/-! ## A127474.P12764293122159185651

`A000010(A002260(n+1))*A127472(n+1)`
-/

namespace A127474.P12764293122159185651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A127472 (n + 1)

end

end A127474.P12764293122159185651

/-! ## A127474.P9884689491729037035

`A000010(A050873(n+1))*A127472(n+1)`
-/

namespace A127474.P9884689491729037035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050873 (n + 1)).toNat * A127472 (n + 1)

end

end A127474.P9884689491729037035

/-! ## A127474.P14132955880803634300

`A127472(n+1)*A163109(A059268(n))`
-/

namespace A127474.P14132955880803634300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127472 (n + 1) * A163109 (A059268 n).toNat

end

end A127474.P14132955880803634300

/-! ## A127474.P11944173314162995739

`A127472(n+1)*A349137(A054582(n))`
-/

namespace A127474.P11944173314162995739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127472 (n + 1) * A349137 (A054582 n).toNat

end

end A127474.P11944173314162995739

/-!
# A127475: Triangle T(n,k) read by rows: T(n,k) = mu(n)*phi(k) if k|n, else T(n,k)=0.

The programs for A127475, the canonical program `A127475.P6498119541064859132` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127475 has offset 1).

The definition of A127475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127475.P6498119541064859132

`A054522(n+1)*A127507(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A127475

/-- `A054522(n+1)*A127507(n+1)` -/
def P6498119541064859132.Spec : Prop :=
  ∀ n, P6498119541064859132.a n = A127475 (n + 1)

theorem P6498119541064859132.correct : P6498119541064859132.Spec := by
  intro n
  simp only [A127475, Nat.add_sub_cancel]

end A127475

/-! ## A127475.P16183898464992844496

`A054522(n+1)*A128408(n+1)`
-/

namespace A127475.P16183898464992844496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A128408 (n + 1)

end

end A127475.P16183898464992844496

namespace A127475

/-- `A054522(n+1)*A128408(n+1)` -/
def P16183898464992844496.Spec : Prop :=
  ∀ n, P16183898464992844496.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P11275363365072318572

`A054526(n+1)*A128408(n+1)`
-/

namespace A127475.P11275363365072318572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A128408 (n + 1)

end

end A127475.P11275363365072318572

namespace A127475

/-- `A054526(n+1)*A128408(n+1)` -/
def P11275363365072318572.Spec : Prop :=
  ∀ n, P11275363365072318572.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P1360896702351235865

`A054532(n+1)*A128408(n+1)`
-/

namespace A127475.P1360896702351235865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A128408 (n + 1)

end

end A127475.P1360896702351235865

namespace A127475

/-- `A054532(n+1)*A128408(n+1)` -/
def P1360896702351235865.Spec : Prop :=
  ∀ n, P1360896702351235865.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P4776181222559608973

`A127507(n+1)*A157361(n+1)`
-/

namespace A127475.P4776181222559608973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127507 (n + 1) * A157361 (n + 1)

end

end A127475.P4776181222559608973

namespace A127475

/-- `A127507(n+1)*A157361(n+1)` -/
def P4776181222559608973.Spec : Prop :=
  ∀ n, P4776181222559608973.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P13113824615528411429

`A128408(n+1)*A157361(n+1)`
-/

namespace A127475.P13113824615528411429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128408 (n + 1) * A157361 (n + 1)

end

end A127475.P13113824615528411429

namespace A127475

/-- `A128408(n+1)*A157361(n+1)` -/
def P13113824615528411429.Spec : Prop :=
  ∀ n, P13113824615528411429.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P2938742037966087190

`A128408(n+1)*A372673(n+1)`
-/

namespace A127475.P2938742037966087190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128408 (n + 1) * A372673 (n + 1)

end

end A127475.P2938742037966087190

namespace A127475

/-- `A128408(n+1)*A372673(n+1)` -/
def P2938742037966087190.Spec : Prop :=
  ∀ n, P2938742037966087190.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P10186499626568098367

`A008683(∑[char[∑[n]]])*A054522(n+1)`
-/

namespace A127475.P10186499626568098367
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) * A054522 (n + 1)

end

end A127475.P10186499626568098367

namespace A127475

/-- `A008683(∑[char[∑[n]]])*A054522(n+1)` -/
def P10186499626568098367.Spec : Prop :=
  ∀ n, P10186499626568098367.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P7972096113383297141

`A054522(n+1)*A054524(A127739(n+1))`
-/

namespace A127475.P7972096113383297141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A054524 (A127739 (n + 1)).toNat

end

end A127475.P7972096113383297141

namespace A127475

/-- `A054522(n+1)*A054524(A127739(n+1))` -/
def P7972096113383297141.Spec : Prop :=
  ∀ n, P7972096113383297141.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P893019843500836141

`A054522(n+1)*A271102(A093995(n+1))`
-/

namespace A127475.P893019843500836141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A271102 (A093995 (n + 1)).toNat

end

end A127475.P893019843500836141

namespace A127475

/-- `A054522(n+1)*A271102(A093995(n+1))` -/
def P893019843500836141.Spec : Prop :=
  ∀ n, P893019843500836141.a n = A127475 (n + 1)

end A127475

/-! ## A127475.P11275168955274375294

`A008683(A002024(n+1))*A086342(A216953(n+1))`
-/

namespace A127475.P11275168955274375294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002024 (n + 1)).toNat * A086342 (A216953 (n + 1)).toNat

end

end A127475.P11275168955274375294

namespace A127475

/-- `A008683(A002024(n+1))*A086342(A216953(n+1))` -/
def P11275168955274375294.Spec : Prop :=
  ∀ n, P11275168955274375294.a n = A127475 (n + 1)

end A127475

/-!
# A127476: Triangle T(n,k) = sum_{j=k..n, gcd(n,j)=1, k|j} phi(k).

The programs for A127476, there is no canonical definition to state claims against.
-/

/-! ## A127476.P10828750853184498738

`A054526(n+1)*A143614(n+1)`
-/

namespace A127476.P10828750853184498738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A143614 (n + 1)

end

end A127476.P10828750853184498738

/-! ## A127476.P1822994861412386150

`A127506(n+1)*A143614(n+1)`
-/

namespace A127476.P1822994861412386150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127506 (n + 1) * A143614 (n + 1)

end

end A127476.P1822994861412386150

/-! ## A127476.P12870152523085553850

`A143614(n+1)*A181538(n+1)`
-/

namespace A127476.P12870152523085553850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143614 (n + 1) * A181538 (n + 1)

end

end A127476.P12870152523085553850

/-! ## A127476.P3555924497129186835

`A000010(A128227(n))*A143614(n+1)`
-/

namespace A127476.P3555924497129186835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A128227 n).toNat * A143614 (n + 1)

end

end A127476.P3555924497129186835

/-! ## A127476.P6099800239995325164

`A000010(A193738(n))*A143614(n+1)`
-/

namespace A127476.P6099800239995325164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A193738 n).toNat * A143614 (n + 1)

end

end A127476.P6099800239995325164

/-! ## A127476.P7027590291248858525

`A000010(A002260(n+1))*A143614(n+1)`
-/

namespace A127476.P7027590291248858525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A143614 (n + 1)

end

end A127476.P7027590291248858525

/-! ## A127476.P625611508041781907

`A000010(A080511(n+1))*A143614(n+1)`
-/

namespace A127476.P625611508041781907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A080511 (n + 1)).toNat * A143614 (n + 1)

end

end A127476.P625611508041781907

/-! ## A127476.P4552886455300818285

`A000010(A134868(n+1))*A143614(n+1)`
-/

namespace A127476.P4552886455300818285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134868 (n + 1)).toNat * A143614 (n + 1)

end

end A127476.P4552886455300818285

/-! ## A127476.P12120512084171081731

`A143614(n+1)*A143614(A000124(A002262(n)))`
-/

namespace A127476.P12120512084171081731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143614 (n + 1) * A143614 (A000124 (A002262 n).toNat).toNat

end

end A127476.P12120512084171081731

/-! ## A127476.P4459000010799294544

`A143614(n+1)*A349137(A054582(n))`
-/

namespace A127476.P4459000010799294544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143614 (n + 1) * A349137 (A054582 n).toNat

end

end A127476.P4459000010799294544

/-!
# A127478: Triangle T(n,k) read by rows: matrix product A054523 * A054522.

The programs for A127478, the canonical program `A127478.P7454647749002706271` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127478 has offset 1).

The definition of A127478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127478.P2909872204633368956

`lcm(A129555(n), A130212(n+1))`
-/

namespace A127478.P2909872204633368956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129555 n) (A130212 (n + 1))

end

end A127478.P2909872204633368956

namespace A127478

/-- `lcm(A129555(n), A130212(n+1))` -/
def P2909872204633368956.Spec : Prop :=
  ∀ n, (P2909872204633368956.a n : ℤ) = A127478 (n + 1)

end A127478

/-! ## A127478.P7454647749002706271

`A010766(n+1)*A054522(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A127478

/-- `A010766(n+1)*A054522(n+1)` -/
def P7454647749002706271.Spec : Prop :=
  ∀ n, P7454647749002706271.a n = A127478 (n + 1)

theorem P7454647749002706271.correct : P7454647749002706271.Spec := by
  intro n
  simp only [A127478, Nat.add_sub_cancel]

end A127478

/-! ## A127478.P10339670603343668419

`A049834(n+1)*A054522(n+1)`
-/

namespace A127478.P10339670603343668419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A054522 (n + 1)

end

end A127478.P10339670603343668419

namespace A127478

/-- `A049834(n+1)*A054522(n+1)` -/
def P10339670603343668419.Spec : Prop :=
  ∀ n, P10339670603343668419.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P3925215787683491058

`A051537(n+1)*A054522(n+1)`
-/

namespace A127478.P3925215787683491058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A054522 (n + 1)

end

end A127478.P3925215787683491058

namespace A127478

/-- `A051537(n+1)*A054522(n+1)` -/
def P3925215787683491058.Spec : Prop :=
  ∀ n, P3925215787683491058.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P9467437801749394905

`A054522(n+1)*A054531(n+1)`
-/

namespace A127478.P9467437801749394905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A054531 (n + 1)

end

end A127478.P9467437801749394905

namespace A127478

/-- `A054522(n+1)*A054531(n+1)` -/
def P9467437801749394905.Spec : Prop :=
  ∀ n, P9467437801749394905.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P16097353192611310287

`A054522(n+1)*A059026(n+1)`
-/

namespace A127478.P16097353192611310287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A059026 (n + 1)

end

end A127478.P16097353192611310287

namespace A127478

/-- `A054522(n+1)*A059026(n+1)` -/
def P16097353192611310287.Spec : Prop :=
  ∀ n, P16097353192611310287.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P8355550283730282999

`A054522(n+1)*A126988(n+1)`
-/

namespace A127478.P8355550283730282999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A126988 (n + 1)

end

end A127478.P8355550283730282999

namespace A127478

/-- `A054522(n+1)*A126988(n+1)` -/
def P8355550283730282999.Spec : Prop :=
  ∀ n, P8355550283730282999.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P1554302657246498431

`A054526(n+1)*A126988(n+1)`
-/

namespace A127478.P1554302657246498431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A126988 (n + 1)

end

end A127478.P1554302657246498431

namespace A127478

/-- `A054526(n+1)*A126988(n+1)` -/
def P1554302657246498431.Spec : Prop :=
  ∀ n, P1554302657246498431.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P4479204994079598726

`A054532(n+1)*A126988(n+1)`
-/

namespace A127478.P4479204994079598726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A126988 (n + 1)

end

end A127478.P4479204994079598726

namespace A127478

/-- `A054532(n+1)*A126988(n+1)` -/
def P4479204994079598726.Spec : Prop :=
  ∀ n, P4479204994079598726.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P663073830811114504

`A051731(n+1)*A130212(n+1)`
-/

namespace A127478.P663073830811114504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130212 (n + 1)

end

end A127478.P663073830811114504

namespace A127478

/-- `A051731(n+1)*A130212(n+1)` -/
def P663073830811114504.Spec : Prop :=
  ∀ n, P663073830811114504.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P7320271038100341416

`A054522(n+1)*A219158(n+1)`
-/

namespace A127478.P7320271038100341416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A219158 (n + 1)

end

end A127478.P7320271038100341416

namespace A127478

/-- `A054522(n+1)*A219158(n+1)` -/
def P7320271038100341416.Spec : Prop :=
  ∀ n, P7320271038100341416.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P7370864113456433955

`A054522(n+1)*A234575(n+1)`
-/

namespace A127478.P7370864113456433955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A234575 (n + 1)

end

end A127478.P7370864113456433955

namespace A127478

/-- `A054522(n+1)*A234575(n+1)` -/
def P7370864113456433955.Spec : Prop :=
  ∀ n, P7370864113456433955.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P16558688130890960338

`A054522(n+1)*A372523(n+1)`
-/

namespace A127478.P16558688130890960338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A372523 (n + 1)

end

end A127478.P16558688130890960338

namespace A127478

/-- `A054522(n+1)*A372523(n+1)` -/
def P16558688130890960338.Spec : Prop :=
  ∀ n, P16558688130890960338.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P7779258637687782690

`A126988(n+1)*A372673(n+1)`
-/

namespace A127478.P7779258637687782690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A372673 (n + 1)

end

end A127478.P7779258637687782690

namespace A127478

/-- `A126988(n+1)*A372673(n+1)` -/
def P7779258637687782690.Spec : Prop :=
  ∀ n, P7779258637687782690.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P8043406906007434849

`A127466(n+1)/A002260(n+1)`
-/

namespace A127478.P8043406906007434849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127478.P8043406906007434849

namespace A127478

/-- `A127466(n+1)/A002260(n+1)` -/
def P8043406906007434849.Spec : Prop :=
  ∀ n, P8043406906007434849.a n = (A127478 (n + 1) : ℚ)

end A127478

/-! ## A127478.P13013822842507251917

`A127466(n+1)/A050873(n+1)`
-/

namespace A127478.P13013822842507251917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A127478.P13013822842507251917

namespace A127478

/-- `A127466(n+1)/A050873(n+1)` -/
def P13013822842507251917.Spec : Prop :=
  ∀ n, P13013822842507251917.a n = (A127478 (n + 1) : ℚ)

end A127478

/-! ## A127478.P8815431509322708608

`A127466(n+1)/A123275(n+1)`
-/

namespace A127478.P8815431509322708608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A127478.P8815431509322708608

namespace A127478

/-- `A127466(n+1)/A123275(n+1)` -/
def P8815431509322708608.Spec : Prop :=
  ∀ n, P8815431509322708608.a n = (A127478 (n + 1) : ℚ)

end A127478

/-! ## A127478.P17398736311905806887

`A000010(1-C(∑[char[∑[n]]], 2)+n)*A126988(n+1)`
-/

namespace A127478.P17398736311905806887
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A126988 (n + 1)

end

end A127478.P17398736311905806887

namespace A127478

/-- `A000010(1-C(∑[char[∑[n]]], 2)+n)*A126988(n+1)` -/
def P17398736311905806887.Spec : Prop :=
  ∀ n, P17398736311905806887.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P7313431619931345678

`A000010(A002260(n+1))*A126988(n+1)`
-/

namespace A127478.P7313431619931345678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A126988 (n + 1)

end

end A127478.P7313431619931345678

namespace A127478

/-- `A000010(A002260(n+1))*A126988(n+1)` -/
def P7313431619931345678.Spec : Prop :=
  ∀ n, P7313431619931345678.a n = A127478 (n + 1)

end A127478

/-! ## A127478.P8195445663935041847

`A000010(A002262(n)+1)*A126988(n+1)`
-/

namespace A127478.P8195445663935041847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat * A126988 (n + 1)

end

end A127478.P8195445663935041847

namespace A127478

/-- `A000010(A002262(n)+1)*A126988(n+1)` -/
def P8195445663935041847.Spec : Prop :=
  ∀ n, P8195445663935041847.a n = A127478 (n + 1)

end A127478

/-!
# A127479: Triangle read by rows: T(n,k) = Sum_{d|n, gcd(d,k)==1, d>=k} phi(d).

The programs for A127479, there is no canonical definition to state claims against.
-/

/-! ## A127479.P3549470542111839644

`(C(comp[∑[n]]-n, 2)-n)*A157405(3*n+2)%2`
-/

namespace A127479.P3549470542111839644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * Int.tmod (A157405 (3 * n + 2)) 2

end

end A127479.P3549470542111839644

/-! ## A127479.P19473455082408754

`A004736(n+1)*A035263(A289501(n))`
-/

namespace A127479.P19473455082408754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A035263 (A289501 n).toNat

end

end A127479.P19473455082408754

/-! ## A127479.P13007623366823831273

`A115241(n+1)%A054871(A074206(n))`
-/

namespace A127479.P13007623366823831273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115241 (n + 1)) (A054871 (A074206 n).toNat)

end

end A127479.P13007623366823831273

/-! ## A127479.P14299980779077621411

`C(A004736(n+1), A004736(A112356(n)))`
-/

namespace A127479.P14299980779077621411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (A004736 (A112356 n).toNat).toNat

end

end A127479.P14299980779077621411

/-! ## A127479.P8796048156295824890

`A003849(A145549(n+1))*A004736(n+1)`
-/

namespace A127479.P8796048156295824890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A145549 (n + 1)).toNat * A004736 (n + 1)

end

end A127479.P8796048156295824890

/-!
# A127481: Triangle T(n,k) read by rows: T(n,k) = sum_{l=k..n, l|n, k|l} l*phi(k).

The programs for A127481, there is no canonical definition to state claims against.
-/

/-! ## A127481.P14979366842810990359

`A054522(n+1)*A127099(n+1)`
-/

namespace A127481.P14979366842810990359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A127099 (n + 1)

end

end A127481.P14979366842810990359

/-! ## A127481.P2666887274042009635

`A054526(n+1)*A127099(n+1)`
-/

namespace A127481.P2666887274042009635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A127099 (n + 1)

end

end A127481.P2666887274042009635

/-! ## A127481.P3146730958337124670

`A054532(n+1)*A127099(n+1)`
-/

namespace A127481.P3146730958337124670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A127099 (n + 1)

end

end A127481.P3146730958337124670

/-! ## A127481.P13748852905432671780

`A127099(n+1)*A372673(n+1)`
-/

namespace A127481.P13748852905432671780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127099 (n + 1) * A372673 (n + 1)

end

end A127481.P13748852905432671780

/-! ## A127481.P13516424168740285092

`A000010(A002260(n+1))*A127099(n+1)`
-/

namespace A127481.P13516424168740285092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A127099 (n + 1)

end

end A127481.P13516424168740285092

/-! ## A127481.P17392702868880947568

`A000010(A002262(n)+1)*A127099(n+1)`
-/

namespace A127481.P17392702868880947568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat * A127099 (n + 1)

end

end A127481.P17392702868880947568

/-! ## A127481.P8298500369121839707

`A000010(A050873(n+1))*A127099(n+1)`
-/

namespace A127481.P8298500369121839707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050873 (n + 1)).toNat * A127099 (n + 1)

end

end A127481.P8298500369121839707

/-! ## A127481.P10381661466521975589

`A127099(n+1)*A163109(A059268(n))`
-/

namespace A127481.P10381661466521975589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127099 (n + 1) * A163109 (A059268 n).toNat

end

end A127481.P10381661466521975589

/-! ## A127481.P12047852376536328457

`A130540(n+1)*A181538(n+1)`
-/

namespace A127481.P12047852376536328457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130540 (n + 1) * A181538 (n + 1)

end

end A127481.P12047852376536328457

/-!
# A127482: Product of the nonzero digital products of all the prime numbers prime(1) to prime(n).

The programs for A127482, there is no canonical definition to state claims against.
-/

/-! ## A127482.P8110582995048373191

`∏[A101987(n+1)]`
-/

namespace A127482.P8110582995048373191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P8110582995048373191

/-! ## A127482.P7134301897251652538

`∏[A051801(Δ[A007504(n)])]`
-/

namespace A127482.P7134301897251652538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P7134301897251652538

/-! ## A127482.P11087290761305454786

`∏[A051801(record[A162753(n)])]`
-/

namespace A127482.P11087290761305454786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P11087290761305454786

/-! ## A127482.P1530330107453117274

`∏[A051801(p?[A001057(n)])]`
-/

namespace A127482.P1530330107453117274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P1530330107453117274

/-! ## A127482.P17134122887580530079

`∏[A051801(p?[A056847(n)])]`
-/

namespace A127482.P17134122887580530079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P17134122887580530079

/-! ## A127482.P8440414193913758806

`∏[A051801(p?[A057979(n)])]`
-/

namespace A127482.P8440414193913758806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P8440414193913758806

/-! ## A127482.P10169033886160907657

`∏[A051801(A000040(n+1))]`
-/

namespace A127482.P10169033886160907657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P10169033886160907657

/-! ## A127482.P7479906080069550399

`∏[A051801(A004087(n+1))]`
-/

namespace A127482.P7479906080069550399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P7479906080069550399

/-! ## A127482.P4789701759820029755

`∏[A051801(A008578(n+2))]`
-/

namespace A127482.P4789701759820029755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P4789701759820029755

/-! ## A127482.P3628126547918505072

`∏[A051801(p?[A000463(n+1)])]`
-/

namespace A127482.P3628126547918505072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127482.P3628126547918505072

/-!
# A127483: Numbers n such that A100705(n) = n^3 + (n+1)^2 is prime.

The programs for A127483, there is no canonical definition to state claims against.
-/

/-! ## A127483.P7849018180099578745

`floor(root(A100662(n+1), 3))`
-/

namespace A127483.P7849018180099578745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100662 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A127483.P7849018180099578745

/-! ## A127483.P7809579835481555452

`ceil(root(A100662(n+1), 3)-A000034(2*n))`
-/

namespace A127483.P7809579835481555452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100662 (n + 1) : ℝ) ^ (1 / (3 : ℝ)) - (A000034 (2 * n) : ℝ)⌉

end

end A127483.P7809579835481555452

/-! ## A127483.P10604376805301370940

`floor(root(p?[n^3+(n+1)²], 3))`
-/

namespace A127483.P10604376805301370940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A127483.P10604376805301370940

/-! ## A127483.P13556605243931087895

`floor(root(or(1, p?[(n+1)²+n*n²]), 3))`
-/

namespace A127483.P13556605243931087895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A127483.P13556605243931087895

/-! ## A127483.P13437620321759758437

`floor(root(∏{p}[p?[(n+1)*(n²+1)+n], #], 3))`
-/

namespace A127483.P13437620321759758437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n ^ 2 + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A127483.P13437620321759758437

/-!
# A127484: Numbers k such that A127483(k) = A127483(k+1) - 1.

The programs for A127484, there is no canonical definition to state claims against.
-/

/-! ## A127484.P9855089412350001864

`A127483(lt[Δ[A127483(n+1)], 2]+1)`
-/

namespace A127484.P9855089412350001864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127483 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127483 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A127484.P9855089412350001864

/-!
# A127485: Numbers k such that A127483(k) = A127483(k+1) - 1 = A127483(k+2) - 2.

The programs for A127485, there is no canonical definition to state claims against.
-/

/-! ## A127485.P7781326136265305176

`∩[A127484(n+1)-1, A127484(n+1)]`
-/

namespace A127485.P7781326136265305176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127484 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127485.P7781326136265305176

/-!
# A127486: Numbers k such that A127483(k) = A127483(k+1) - 1 = A127483(k+2) - 2 = A127483(k+3) - 3.

The programs for A127486, there is no canonical definition to state claims against.
-/

/-! ## A127486.P2295038307053897966

`∩[A127485(n+1)-1, A127485(n+1)]`
-/

namespace A127486.P2295038307053897966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127485 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127486.P2295038307053897966

/-!
# A127487: Primes p such that 6p - 31 and 6p + 31 are also primes.

The programs for A127487, there is no canonical definition to state claims against.
-/

/-! ## A127487.P9535595368292224983

`A318589(∑[A232948(n+1)])`
-/

namespace A127487.P9535595368292224983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127487.P9535595368292224983

/-! ## A127487.P15615009083809432074

`p?[A177401(n)%A102315(n)]`
-/

namespace A127487.P15615009083809432074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177401 n) (A102315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127487.P15615009083809432074

/-!
# A127488: 

The programs for A127488, there is no canonical definition to state claims against.
-/

/-! ## A127488.P5141011948159995372

`(n+2)²!/(2*(n+2)!)`
-/

namespace A127488.P5141011948159995372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 2) ^ 2) : ℚ) / (2 * Nat.factorial (n + 2) : ℚ)

end

end A127488.P5141011948159995372

/-!
# A127490: Primes in A127489.

The programs for A127490, there is no canonical definition to state claims against.
-/

/-! ## A127490.P18190650918163972633

`A127489(A127493(n+1))`
-/

namespace A127490.P18190650918163972633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127489 (A127493 (n + 1)).toNat

end

end A127490.P18190650918163972633

/-!
# A127497: Main diagonal of triangle A127496: a(n) = A127496(n,n) for n>=0.

The programs for A127497, there is no canonical definition to state claims against.
-/

/-! ## A127497.P17264219715633989984

`A127496(∑[A238531(n)])`
-/

namespace A127497.P17264219715633989984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127496 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127497.P17264219715633989984

/-! ## A127497.P7512374378360927988

`A127496(A004006(n)+n)`
-/

namespace A127497.P7512374378360927988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127496 (A004006 n + (n : ℤ)).toNat

end

end A127497.P7512374378360927988

/-! ## A127497.P9405184084429664314

`A127496(∑[A253145(n)]-n²)`
-/

namespace A127497.P9405184084429664314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127496 (∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)).toNat

end

end A127497.P9405184084429664314

/-! ## A127497.P17976054125340521038

`A127496(∑[A133263(n)]-A000124(n))`
-/

namespace A127497.P17976054125340521038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127496 (∑ j ∈ Finset.range (n + 1), f1 j - A000124 n).toNat

end

end A127497.P17976054125340521038

/-!
# A127498: Secondary diagonal of triangle A127496: a(n) = A127496(n+1,n) for n>=0.

The programs for A127498, there is no canonical definition to state claims against.
-/

/-! ## A127498.P14307969192315888999

`A127496(∑[∑[n]+1]+n)`
-/

namespace A127498.P14307969192315888999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127496 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A127498.P14307969192315888999

/-! ## A127498.P7034363756616491889

`A004396(A148107(n)+A000984(n))`
-/

namespace A127498.P7034363756616491889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A148107 n + A000984 n).toNat

end

end A127498.P7034363756616491889

/-! ## A127498.P9654430542612229000

`A276625(A292553(n))+A220819(n+1)`
-/

namespace A127498.P9654430542612229000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A292553 n).toNat + A220819 (n + 1)

end

end A127498.P9654430542612229000

/-! ## A127498.P7354168924366711675

`A276625(A292555(n))+A220819(n+1)`
-/

namespace A127498.P7354168924366711675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A292555 n).toNat + A220819 (n + 1)

end

end A127498.P7354168924366711675

/-!
# A127499: The number of times that binomial(2n,n) has two prime factors that add to 2n.

The programs for A127499, there is no canonical definition to state claims against.
-/

/-! ## A127499.P3967901441824302777

`A285097(A122282(Δ[A046937(n)]))`
-/

namespace A127499.P3967901441824302777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A122282 (f1 (n + 1) - f1 n).toNat).toNat

end

end A127499.P3967901441824302777

/-! ## A127499.P3463389904139981077

`A001222(A103923(n))%A239829(A103924(n))`
-/

namespace A127499.P3463389904139981077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A103923 n).toNat) (A239829 (A103924 n).toNat)

end

end A127499.P3463389904139981077

/-! ## A127499.P270219678028327016

`A001222(A103923(n))*A164056(A164073(n+1))`
-/

namespace A127499.P270219678028327016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103923 n).toNat * A164056 (A164073 (n + 1)).toNat

end

end A127499.P270219678028327016

/-! ## A127499.P10199426237161850987

`A342846(A075162(n+4)+1)`
-/

namespace A127499.P10199426237161850987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342846 (A075162 (n + 4) + 1).toNat

end

end A127499.P10199426237161850987

/-! ## A127499.P10519288490342262061

`A060209((n+1)^A080934(n))`
-/

namespace A127499.P10519288490342262061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A080934 n : ℤ))).toNat

end

end A127499.P10519288490342262061

