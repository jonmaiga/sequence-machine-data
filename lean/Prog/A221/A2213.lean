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
import Seq.B000.C016
import Seq.B000.C018
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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A221300: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221300, there is no canonical definition to state claims against.
-/

/-! ## A221300.P5513992972903260335

`A221303(A374005(n+1))`
-/

namespace A221300.P5513992972903260335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A374005 (n + 1)).toNat

end

end A221300.P5513992972903260335

/-! ## A221300.P6179101618362577002

`A221303(A155212(n)+13)`
-/

namespace A221300.P6179101618362577002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A155212 n + 13).toNat

end

end A221300.P6179101618362577002

/-! ## A221300.P17631287024277431355

`A221303(A056000(n)+15)`
-/

namespace A221300.P17631287024277431355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A056000 n + 15).toNat

end

end A221300.P17631287024277431355

/-! ## A221300.P9898568014703871417

`A221303(eq[7, A066657(n)])`
-/

namespace A221300.P9898568014703871417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221300.P9898568014703871417

/-! ## A221300.P3157021516361934368

`A221303(A141214(n+1)+8)`
-/

namespace A221300.P3157021516361934368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A141214 (n + 1) + 8).toNat

end

end A221300.P3157021516361934368

/-!
# A221301: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221301, there is no canonical definition to state claims against.
-/

/-! ## A221301.P7537292863082555443

`A221303(A374007(n+1))`
-/

namespace A221301.P7537292863082555443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A374007 (n + 1)).toNat

end

end A221301.P7537292863082555443

/-! ## A221301.P11460134286941048375

`A221303(eq[5, A193592(n)])`
-/

namespace A221301.P11460134286941048375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221301.P11460134286941048375

/-! ## A221301.P11043179424027717223

`A221303(Δ[A023545(n+1)]+10)`
-/

namespace A221301.P11043179424027717223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (f1 (n + 1) - f1 n + 10).toNat

end

end A221301.P11043179424027717223

/-!
# A221302: Number of n X 7 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221302, there is no canonical definition to state claims against.
-/

/-! ## A221302.P2809231173913157766

`A221303(A374008(n+1))`
-/

namespace A221302.P2809231173913157766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A374008 (n + 1)).toNat

end

end A221302.P2809231173913157766

/-!
# A221303: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221303, there is no canonical definition to state claims against.
-/

/-! ## A221303.P6671272231426586637

`A221378(n+1)-A215702(A099594(n))`
-/

namespace A221303.P6671272231426586637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) - A215702 (A099594 n).toNat

end

end A221303.P6671272231426586637

/-! ## A221303.P1816183766753020247

`A221378(n+1)-A215702(A154867(n))`
-/

namespace A221303.P1816183766753020247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) - A215702 (A154867 n).toNat

end

end A221303.P1816183766753020247

/-! ## A221303.P18337727539807345397

`A221378(n+1)-A215702(A155971(n))`
-/

namespace A221303.P18337727539807345397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) - A215702 (A155971 n).toNat

end

end A221303.P18337727539807345397

/-!
# A221304: Number of n X 2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221304, the canonical program `A221304.P2782196531065257316` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221304 has offset 1).

The definition of A221304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221304.P424044148894628795

`ogf((5x-10x^2+6x^3-4x^4+2x^5)/(1-4x+3x^2+2x^4-x^6))`
-/

namespace A221304.P424044148894628795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -10, 6, -4, 2] [1, -4, 3, 0, 2, 0, -1] n

end

end A221304.P424044148894628795

namespace A221304

/-- `ogf((5x-10x^2+6x^3-4x^4+2x^5)/(1-4x+3x^2+2x^4-x^6))` -/
def P424044148894628795.Spec : Prop :=
  ∀ n, P424044148894628795.a n = A221304 (n + 1)

end A221304

/-! ## A221304.P2782196531065257316

`4*a(n-1)-3*a(n-2)-2*a(n-4)+a(n-6)` with `a(0)=0, a(1)=5, a(2)=10, a(3)=31, a(4)=90, a(5)=259`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221304

/-- `4*a(n-1)-3*a(n-2)-2*a(n-4)+a(n-6)` -/
def P2782196531065257316.Spec : Prop :=
  ∀ n, P2782196531065257316.a n = A221304 (n + 1)

theorem P2782196531065257316.correct : P2782196531065257316.Spec := by
  intro n
  simp only [A221304, Nat.add_sub_cancel]

end A221304

/-! ## A221304.P11853340765329679293

`A221308(∑[n+1]+2)`
-/

namespace A221304.P11853340765329679293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221304.P11853340765329679293

namespace A221304

/-- `A221308(∑[n+1]+2)` -/
def P11853340765329679293.Spec : Prop :=
  ∀ n, P11853340765329679293.a n = A221304 (n + 1)

end A221304

/-! ## A221304.P2519446050972350105

`record[A221308(record[A370655(n+1)])]`
-/

namespace A221304.P2519446050972350105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221304.P2519446050972350105

namespace A221304

/-- `record[A221308(record[A370655(n+1)])]` -/
def P2519446050972350105.Spec : Prop :=
  ∀ n, P2519446050972350105.a n = A221304 (n + 1)

end A221304

/-! ## A221304.P8642638782764468529

`record[A221308(A166017(n+1)+1)]`
-/

namespace A221304.P8642638782764468529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221304.P8642638782764468529

namespace A221304

/-- `record[A221308(A166017(n+1)+1)]` -/
def P8642638782764468529.Spec : Prop :=
  ∀ n, P8642638782764468529.a n = A221304 (n + 1)

end A221304

/-!
# A221305: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221305, there is no canonical definition to state claims against.
-/

/-! ## A221305.P5259968320544646875

`A221308(∑[n+2]+4)`
-/

namespace A221305.P5259968320544646875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221305.P5259968320544646875

/-! ## A221305.P13959846197976151973

`lcm(2, A221308(A167614(n+1)))`
-/

namespace A221305.P13959846197976151973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221308 (A167614 (n + 1)).toNat)

end

end A221305.P13959846197976151973

/-! ## A221305.P766341781023675708

`A221308(A167614(n+1))+A025443(n)`
-/

namespace A221305.P766341781023675708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A167614 (n + 1)).toNat + A025443 n

end

end A221305.P766341781023675708

/-! ## A221305.P10958802184564497973

`A221308(A167614(n+1))+A031346(n)`
-/

namespace A221305.P10958802184564497973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A167614 (n + 1)).toNat + A031346 n

end

end A221305.P10958802184564497973

/-! ## A221305.P18250746588279383998

`A221308(A167614(n+1))+A056967(n)`
-/

namespace A221305.P18250746588279383998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A167614 (n + 1)).toNat + A056967 n

end

end A221305.P18250746588279383998

/-!
# A221306: Number of nX4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221306, there is no canonical definition to state claims against.
-/

/-! ## A221306.P11900099130653079767

`A221308(A141214(n)+7)`
-/

namespace A221306.P11900099130653079767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A141214 n + 7).toNat

end

end A221306.P11900099130653079767

/-! ## A221306.P12290482450206767689

`A221308(A052905(n)+9)`
-/

namespace A221306.P12290482450206767689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A052905 n + 9).toNat

end

end A221306.P12290482450206767689

/-! ## A221306.P8939816200762001612

`A221308(A055999(n)+10)`
-/

namespace A221306.P8939816200762001612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A055999 n + 10).toNat

end

end A221306.P8939816200762001612

/-! ## A221306.P2948220890081443015

`A221308(eq[5, A066657(n)])`
-/

namespace A221306.P2948220890081443015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221306.P2948220890081443015

/-! ## A221306.P18166767566373996525

`A221308(A167614(n+2)+1)`
-/

namespace A221306.P18166767566373996525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A167614 (n + 2) + 1).toNat

end

end A221306.P18166767566373996525

/-!
# A221307: Number of nX5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221307, there is no canonical definition to state claims against.
-/

/-! ## A221307.P12840361205154688089

`A221308(A167499(n+3))`
-/

namespace A221307.P12840361205154688089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A167499 (n + 3)).toNat

end

end A221307.P12840361205154688089

/-! ## A221307.P11288510661676747035

`A221308(A155212(n)+13)`
-/

namespace A221307.P11288510661676747035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A155212 n + 13).toNat

end

end A221307.P11288510661676747035

/-! ## A221307.P9946927434662740323

`A221308(A056000(n)+15)`
-/

namespace A221307.P9946927434662740323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (A056000 n + 15).toNat

end

end A221307.P9946927434662740323

/-! ## A221307.P6464735959222270044

`A221308(eq[7, A066657(n)])`
-/

namespace A221307.P6464735959222270044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221307.P6464735959222270044

/-!
# A221308: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221308, there is no canonical definition to state claims against.
-/

/-! ## A221308.P17871454850468925917

`A143685(n)%A239331(A177696(n+1))`
-/

namespace A221308.P17871454850468925917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143685 n) (A239331 (A177696 (n + 1)).toNat)

end

end A221308.P17871454850468925917

/-! ## A221308.P7169822988527366005

`A076221(A338029(n+1)*A355402(2*n+9))`
-/

namespace A221308.P7169822988527366005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076221 (A338029 (n + 1) * A355402 (2 * n + 9)).toNat

end

end A221308.P7169822988527366005

/-!
# A221309: Numbers m such that no subset of {m-1, m, m+1} sums up to a prime number.

The programs for A221309, the canonical program `A221309.P7335009920877620027` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221309 has offset 1).

The definition of A221309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221309.P7335009920877620027

`∩[A123608(n+1)+1, A123608(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A221309

/-- `∩[A123608(n+1)+1, A123608(n+1)]` -/
def P7335009920877620027.Spec : Prop :=
  ∀ n, (P7335009920877620027.a n : ℤ) = A221309 (n + 1)

theorem P7335009920877620027.correct : P7335009920877620027.Spec := by
  intro n
  simp only [A221309, Nat.add_sub_cancel]

end A221309

/-! ## A221309.P10427220516701881383

`∩[A079364(n+1), A104278(n+1)]`
-/

namespace A221309.P10427220516701881383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221309.P10427220516701881383

namespace A221309

/-- `∩[A079364(n+1), A104278(n+1)]` -/
def P10427220516701881383.Spec : Prop :=
  ∀ n, (P10427220516701881383.a n : ℤ) = A221309 (n + 1)

end A221309

/-! ## A221309.P3657592542867286383

`eq[0, A117499(n+1)]+1`
-/

namespace A221309.P3657592542867286383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A221309.P3657592542867286383

namespace A221309

/-- `eq[0, A117499(n+1)]+1` -/
def P3657592542867286383.Spec : Prop :=
  ∀ n, (P3657592542867286383.a n : ℤ) = A221309 (n + 1)

end A221309

/-! ## A221309.P1781792996397368885

`eq[0, A117499(A028310(n))]`
-/

namespace A221309.P1781792996397368885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117499 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221309.P1781792996397368885

namespace A221309

/-- `eq[0, A117499(A028310(n))]` -/
def P1781792996397368885.Spec : Prop :=
  ∀ n, (P1781792996397368885.a n : ℤ) = A221309 (n + 1)

end A221309

/-! ## A221309.P14824734625069126831

`eq[0, A117499(A065033(2*n))]`
-/

namespace A221309.P14824734625069126831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117499 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221309.P14824734625069126831

namespace A221309

/-- `eq[0, A117499(A065033(2*n))]` -/
def P14824734625069126831.Spec : Prop :=
  ∀ n, (P14824734625069126831.a n : ℤ) = A221309 (n + 1)

end A221309

/-! ## A221309.P13060268574249837569

`eq[0, A117499(A123108(2*n))]`
-/

namespace A221309.P13060268574249837569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117499 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221309.P13060268574249837569

namespace A221309

/-- `eq[0, A117499(A123108(2*n))]` -/
def P13060268574249837569.Spec : Prop :=
  ∀ n, (P13060268574249837569.a n : ℤ) = A221309 (n + 1)

end A221309

/-! ## A221309.P7675199742099757377

`eq[0, A117499(A233583(n+1))]`
-/

namespace A221309.P7675199742099757377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117499 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221309.P7675199742099757377

namespace A221309

/-- `eq[0, A117499(A233583(n+1))]` -/
def P7675199742099757377.Spec : Prop :=
  ∀ n, (P7675199742099757377.a n : ℤ) = A221309 (n + 1)

end A221309

/-! ## A221309.P4284487970955091342

`∩[A067656(n+1), A242221(n+1)]`
-/

namespace A221309.P4284487970955091342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221309.P4284487970955091342

namespace A221309

/-- `∩[A067656(n+1), A242221(n+1)]` -/
def P4284487970955091342.Spec : Prop :=
  ∀ n, (P4284487970955091342.a n : ℤ) = A221309 (n + 1)

end A221309

/-!
# A221310: Numbers m such that exactly four subsets of {m-1, m, m+1} sum up to a prime number.

The programs for A221310, there is no canonical definition to state claims against.
-/

/-! ## A221310.P10323295166611824892

`∪[A066388(n+1), A334822(n+1)]`
-/

namespace A221310.P10323295166611824892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221310.P10323295166611824892

/-! ## A221310.P3780715810605327460

`ceil(p?[A256386(n+1)]/2)`
-/

namespace A221310.P3780715810605327460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A221310.P3780715810605327460

/-! ## A221310.P9403640595719260677

`(A057427(n)+p?[A256386(n+1)])/2`
-/

namespace A221310.P9403640595719260677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256386 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2

end

end A221310.P9403640595719260677

/-! ## A221310.P17475024366050792334

`round(p?[A256386(n+1)]/2)%A109256(n)`
-/

namespace A221310.P17475024366050792334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)) (A109256 n)

end

end A221310.P17475024366050792334

/-! ## A221310.P2223669491453691060

`round(p?[A256386(n+1)]/2*A064284(n+1))`
-/

namespace A221310.P2223669491453691060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2 * (A064284 (n + 1) : ℚ))

end

end A221310.P2223669491453691060

/-!
# A221312: Number of idempotent 3X3 -n..n matrices of rank 1.

The programs for A221312, there is no canonical definition to state claims against.
-/

/-! ## A221312.P11679020761475527091

`A223455(n+1)-(A223452(n+1)+2)`
-/

namespace A221312.P11679020761475527091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223455 (n + 1) - (A223452 (n + 1) + 2)

end

end A221312.P11679020761475527091

/-! ## A221312.P9361927550236729128

`A168195(A223455(n+1))-A223452(n+1)`
-/

namespace A221312.P9361927550236729128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168195 (A223455 (n + 1)).toNat - A223452 (n + 1)

end

end A221312.P9361927550236729128

/-!
# A221313: Square root of number of nX4 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with every occupancy equal to zero or two.

The programs for A221313, the canonical program `A221313.P12106026692440237956` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221313 has offset 1).

The definition of A221313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221313.P12106026692440237956

`2*a(n-1)+2*a(n-2)-a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=23, a(4)=57`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221313

/-- `2*a(n-1)+2*a(n-2)-a(n-3)-2*a(n-4)-a(n-5)` -/
def P12106026692440237956.Spec : Prop :=
  ∀ n, P12106026692440237956.a n = A221313 (n + 1)

theorem P12106026692440237956.correct : P12106026692440237956.Spec := by
  intro n
  simp only [A221313, Nat.add_sub_cancel]

end A221313

/-! ## A221313.P17781444555649955824

`Δ[ogf(1/(1-2x-2x^2+x^3+2x^4+x^5))]`
-/

namespace A221313.P17781444555649955824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -2, 1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221313.P17781444555649955824

namespace A221313

/-- `Δ[ogf(1/(1-2x-2x^2+x^3+2x^4+x^5))]` -/
def P17781444555649955824.Spec : Prop :=
  ∀ n, P17781444555649955824.a n = A221313 (n + 1)

end A221313

/-! ## A221313.P10381147947929328109

`Δ[abs(A153122(n))]`
-/

namespace A221313.P10381147947929328109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153122 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221313.P10381147947929328109

namespace A221313

/-- `Δ[abs(A153122(n))]` -/
def P10381147947929328109.Spec : Prop :=
  ∀ n, P10381147947929328109.a n = A221313 (n + 1)

end A221313

/-! ## A221313.P18296045381588957361

`A221314(A141214(n+1))`
-/

namespace A221313.P18296045381588957361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221314 (A141214 (n + 1)).toNat

end

end A221313.P18296045381588957361

namespace A221313

/-- `A221314(A141214(n+1))` -/
def P18296045381588957361.Spec : Prop :=
  ∀ n, P18296045381588957361.a n = A221313 (n + 1)

end A221313

/-! ## A221313.P12961376090882894655

`A221314(A374004(n+1))`
-/

namespace A221313.P12961376090882894655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221314 (A374004 (n + 1)).toNat

end

end A221313.P12961376090882894655

namespace A221313

/-- `A221314(A374004(n+1))` -/
def P12961376090882894655.Spec : Prop :=
  ∀ n, P12961376090882894655.a n = A221313 (n + 1)

end A221313

/-!
# A221314: T(n,k)=Square root of number of nXk arrays of occupancy after each element moves to some horizontal or vertical neighbor, with every occupancy equal to zero or two.

The programs for A221314, there is no canonical definition to state claims against.
-/

/-! ## A221314.P1534309239310017255

`A306605(A145596(n+1))`
-/

namespace A221314.P1534309239310017255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306605 (A145596 (n + 1)).toNat

end

end A221314.P1534309239310017255

/-! ## A221314.P14829059816565489204

`A035202(A231806(n+1)+1)`
-/

namespace A221314.P14829059816565489204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (A231806 (n + 1) + 1).toNat

end

end A221314.P14829059816565489204

/-! ## A221314.P13386511817819383785

`A138904(A197235(n+1))-1`
-/

namespace A221314.P13386511817819383785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A197235 (n + 1)).toNat - 1

end

end A221314.P13386511817819383785

/-! ## A221314.P13441574891756104626

`A357138(A198013(n+1))-1`
-/

namespace A221314.P13441574891756104626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (A198013 (n + 1)).toNat - 1

end

end A221314.P13441574891756104626

/-! ## A221314.P6124225852206883050

`A357138(A198155(n+1))-1`
-/

namespace A221314.P6124225852206883050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (A198155 (n + 1)).toNat - 1

end

end A221314.P6124225852206883050

/-!
# A221315: Number of nonnegative integer arrays of length n summing to n without equal adjacent values modulo 2.

The programs for A221315, there is no canonical definition to state claims against.
-/

/-! ## A221315.P11303140333599318089

`A221321(∑[n+2])`
-/

namespace A221315.P11303140333599318089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221315.P11303140333599318089

/-! ## A221315.P6402550952606595324

`gcd(A000038(n), A221321(A000096(n+1)))`
-/

namespace A221315.P6402550952606595324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A221321 (A000096 (n + 1)).toNat)

end

end A221315.P6402550952606595324

/-! ## A221315.P12583248932154643554

`or(A000007(n), A221321(A000096(n+1)))`
-/

namespace A221315.P12583248932154643554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A221321 (A000096 (n + 1)).toNat)

end

end A221315.P12583248932154643554

/-! ## A221315.P4172731376035757058

`A221321(A000096(n+1))+A000007(n+1)`
-/

namespace A221315.P4172731376035757058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A221315.P4172731376035757058

/-! ## A221315.P8036605450884154224

`A221321(A000096(n+1))%A191827(n+1)`
-/

namespace A221315.P8036605450884154224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221321 (A000096 (n + 1)).toNat) (A191827 (n + 1))

end

end A221315.P8036605450884154224

/-! ## A221315.P10529888000928799588

`lcm(A020639(n+1), A221321(A000096(n+1)))`
-/

namespace A221315.P10529888000928799588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (n + 1)) (A221321 (A000096 (n + 1)).toNat)

end

end A221315.P10529888000928799588

/-! ## A221315.P13415405129955300970

`A006519(A001132(n+1))*A221321(A000096(n+1))`
-/

namespace A221315.P13415405129955300970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A001132 (n + 1)).toNat * A221321 (A000096 (n + 1)).toNat

end

end A221315.P13415405129955300970

/-! ## A221315.P12377762065832963706

`A006519(A002144(n+1))*A221321(A000096(n+1))`
-/

namespace A221315.P12377762065832963706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A002144 (n + 1)).toNat * A221321 (A000096 (n + 1)).toNat

end

end A221315.P12377762065832963706

/-! ## A221315.P15742556047271027858

`A221321(A000096(n+1))^A001222(A008578(n+1))`
-/

namespace A221315.P15742556047271027858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221321 (A000096 (n + 1)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A221315.P15742556047271027858

/-! ## A221315.P17073714201684043092

`A221321(A000096(n+1))^A001222(A027748(n+1))`
-/

namespace A221315.P17073714201684043092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221321 (A000096 (n + 1)).toNat : ℚ) ^ (A001222 (A027748 (n + 1)).toNat : ℤ)

end

end A221315.P17073714201684043092

/-!
# A221316: Number of nonnegative integer arrays of length n summing to n without equal adjacent values modulo 3.

The programs for A221316, there is no canonical definition to state claims against.
-/

/-! ## A221316.P15641279155873250322

`A221321(∑[n+3]+1)`
-/

namespace A221316.P15641279155873250322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221316.P15641279155873250322

/-! ## A221316.P941072511342028796

`lcm(char[2]+1, A221321(A034856(n+2)))`
-/

namespace A221316.P941072511342028796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A221321 (A034856 (n + 2)).toNat)

end

end A221316.P941072511342028796

/-! ## A221316.P9184475445762893047

`A221321(A034856(n+2))+A010673(2*n)`
-/

namespace A221316.P9184475445762893047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A034856 (n + 2)).toNat + A010673 (2 * n)

end

end A221316.P9184475445762893047

/-! ## A221316.P10668286074189608035

`A221321(A055999(n)+4)+A000035(2*n)`
-/

namespace A221316.P10668286074189608035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A055999 n + 4).toNat + A000035 (2 * n)

end

end A221316.P10668286074189608035

/-! ## A221316.P12499949863868125972

`A221321(A055999(n)+4)/A000034(2*n)`
-/

namespace A221316.P12499949863868125972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221321 (A055999 n + 4).toNat : ℚ) / (A000034 (2 * n) : ℚ)

end

end A221316.P12499949863868125972

/-! ## A221316.P1545810437869376512

`A007318(C(2, n))*A221321(A034856(n+2))`
-/

namespace A221316.P1545810437869376512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A221321 (A034856 (n + 2)).toNat

end

end A221316.P1545810437869376512

/-! ## A221316.P17458528077324812515

`A221321(A055999(n)+4)+A007814(2*n+1)`
-/

namespace A221316.P17458528077324812515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A055999 n + 4).toNat + A007814 (2 * n + 1)

end

end A221316.P17458528077324812515

/-! ## A221316.P13539256170134062177

`A014963(gcd(n, n+1))*A221321(A034856(n+2))`
-/

namespace A221316.P13539256170134062177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A221321 (A034856 (n + 2)).toNat

end

end A221316.P13539256170134062177

/-! ## A221316.P2126371362049212287

`A001511(xor(n, n+1))*A221321(A055999(n)+4)`
-/

namespace A221316.P2126371362049212287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.xor n (n + 1)) * A221321 (A055999 n + 4).toNat

end

end A221316.P2126371362049212287

/-! ## A221316.P1902292292916507921

`A010051(A000040(n+1))*A221321(A034856(n+2))`
-/

namespace A221316.P1902292292916507921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000040 (n + 1)).toNat * A221321 (A034856 (n + 2)).toNat

end

end A221316.P1902292292916507921

/-!
# A221317: Number of nonnegative integer arrays of length n summing to n without equal adjacent values modulo 4.

The programs for A221317, there is no canonical definition to state claims against.
-/

/-! ## A221317.P12111609612271397482

`A221321(Δ[∑[∑[n+1]]+(n+1)²]+1)`
-/

namespace A221317.P12111609612271397482
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A221317.P12111609612271397482

/-! ## A221317.P9802871233089516215

`record[A221321(A027379(n))]`
-/

namespace A221317.P9802871233089516215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221317.P9802871233089516215

/-! ## A221317.P5217135254062005372

`record[A221321(∑[A171526(n+1)])]`
-/

namespace A221317.P5217135254062005372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221317.P5217135254062005372

/-! ## A221317.P57481669141236802

`record[A221321(∑[A326178(n+1)])]`
-/

namespace A221317.P57481669141236802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221317.P57481669141236802

/-! ## A221317.P8423720903179346984

`A221321(A167614(n+1)+A005408(n))%A229455(n+1)`
-/

namespace A221317.P8423720903179346984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221321 (A167614 (n + 1) + A005408 n).toNat) (A229455 (n + 1))

end

end A221317.P8423720903179346984

/-!
# A221318: Number of nonnegative integer arrays of length n summing to n without equal adjacent values modulo 5.

The programs for A221318, there is no canonical definition to state claims against.
-/

/-! ## A221318.P13178247284439227773

`A221321(∑[n+5]+6)`
-/

namespace A221318.P13178247284439227773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221318.P13178247284439227773

/-! ## A221318.P3793124849648014293

`record[A221321(A046691(n+1))]`
-/

namespace A221318.P3793124849648014293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A046691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221318.P3793124849648014293

/-! ## A221318.P11895147062416605731

`record[A221321(A052905(n)+1)]`
-/

namespace A221318.P11895147062416605731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221318.P11895147062416605731

/-! ## A221318.P5145766010137545632

`record[A221321(A027379(n+1)-1)]`
-/

namespace A221318.P5145766010137545632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A027379 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221318.P5145766010137545632

/-! ## A221318.P8721061842954508244

`record[A221321(A055998(n+1)-1)]`
-/

namespace A221318.P8721061842954508244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A055998 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221318.P8721061842954508244

/-! ## A221318.P5121294780409671788

`record[A221321(A034856(n+2)-2)]`
-/

namespace A221318.P5121294780409671788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A034856 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221318.P5121294780409671788

/-!
# A221319: Number of nonnegative integer arrays of length n summing to n without equal adjacent values modulo 6.

The programs for A221319, there is no canonical definition to state claims against.
-/

/-! ## A221319.P18133440784267794572

`record[A221321(A052905(n))]`
-/

namespace A221319.P18133440784267794572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221319.P18133440784267794572

/-! ## A221319.P4507140022488013379

`A221321(A152947(n+8)-6)`
-/

namespace A221319.P4507140022488013379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A152947 (n + 8) - 6).toNat

end

end A221319.P4507140022488013379

/-! ## A221319.P12370661724560785162

`A221321(Δ[A023545(n+2)]-1)`
-/

namespace A221319.P12370661724560785162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (f1 (n + 1) - f1 n - 1).toNat

end

end A221319.P12370661724560785162

/-! ## A221319.P15612676129668009619

`record[A221321(A046691(n+1)-1)]`
-/

namespace A221319.P15612676129668009619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221319.P15612676129668009619

/-! ## A221319.P16983552089938967858

`record[A221321(A027379(n+1)-2)]`
-/

namespace A221319.P16983552089938967858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221319.P16983552089938967858

/-! ## A221319.P12676585894836893309

`record[A221321(A055998(n+1)-2)]`
-/

namespace A221319.P12676585894836893309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221319.P12676585894836893309

/-! ## A221319.P12472180232644009026

`record[A221321(A034856(n+2)-3)]`
-/

namespace A221319.P12472180232644009026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221319.P12472180232644009026

/-! ## A221319.P11790093059218539791

`record[A221321(n+1+A055998(n))]`
-/

namespace A221319.P11790093059218539791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 ((n + 1 : ℤ) + A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221319.P11790093059218539791

/-!
# A221320: Number of nonnegative integer arrays of length n summing to n without equal adjacent values modulo 7.

The programs for A221320, there is no canonical definition to state claims against.
-/

/-! ## A221320.P17048361764465307957

`A221321(A055999(n+4))`
-/

namespace A221320.P17048361764465307957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A055999 (n + 4)).toNat

end

end A221320.P17048361764465307957

/-! ## A221320.P12992363274686451468

`A221321(A000096(n+6)-5)`
-/

namespace A221320.P12992363274686451468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A000096 (n + 6) - 5).toNat

end

end A221320.P12992363274686451468

/-! ## A221320.P3257285538843670391

`A221321(A000124(n+7)-7)`
-/

namespace A221320.P3257285538843670391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A000124 (n + 7) - 7).toNat

end

end A221320.P3257285538843670391

/-! ## A221320.P18415095745400073105

`A221321(n+2+A000096(n+5))`
-/

namespace A221320.P18415095745400073105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 ((n + 2 : ℤ) + A000096 (n + 5)).toNat

end

end A221320.P18415095745400073105

/-! ## A221320.P5123831083232500101

`A221321(A133263(n+5)+A005408(n+2))`
-/

namespace A221320.P5123831083232500101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A133263 (n + 5) + A005408 (n + 2)).toNat

end

end A221320.P5123831083232500101

/-! ## A221320.P13497622049320620215

`A221321(A000217(n+10)-A008486(n+11))`
-/

namespace A221320.P13497622049320620215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A000217 (n + 10) - A008486 (n + 11)).toNat

end

end A221320.P13497622049320620215

/-!
# A221321: T(n,k)=Number of nonnegative integer arrays of length n summing to n without equal adjacent values modulo k.

The programs for A221321, there is no canonical definition to state claims against.
-/

/-! ## A221321.P2558505642659508783

`A257564(∑[A114327(n)]^A025668(n+1))`
-/

namespace A221321.P2558505642659508783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A025668 (n + 1) : ℤ))).toNat

end

end A221321.P2558505642659508783

/-!
# A221322: Number of n X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221322, there is no canonical definition to state claims against.
-/

/-! ## A221322.P8179951897607479609

`A221328((n+1)²+n²)`
-/

namespace A221322.P8179951897607479609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 ((n + 1) ^ 2 + n ^ 2)

end

end A221322.P8179951897607479609

/-!
# A221323: Number of n X 3 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221323, there is no canonical definition to state claims against.
-/

/-! ## A221323.P9146099294048168562

`A221328(∑[n+3]+1)`
-/

namespace A221323.P9146099294048168562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221323.P9146099294048168562

/-! ## A221323.P2940599543548724249

`or(A151909(n), A221328(A034856(n+2)))`
-/

namespace A221323.P2940599543548724249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151909 n) (A221328 (A034856 (n + 2)).toNat)

end

end A221323.P2940599543548724249

/-! ## A221323.P11204807540185149782

`A221328(A034856(n+2))+A151909(n+1)`
-/

namespace A221323.P11204807540185149782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A034856 (n + 2)).toNat + A151909 (n + 1)

end

end A221323.P11204807540185149782

/-! ## A221323.P11431757630532503403

`A349797(n+1)+A221328(A034856(n+2))`
-/

namespace A221323.P11431757630532503403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (n + 1) + A221328 (A034856 (n + 2)).toNat

end

end A221323.P11431757630532503403

/-! ## A221323.P7626412206239258536

`A221328(A034856(n+2))%A185482(n+1)`
-/

namespace A221323.P7626412206239258536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221328 (A034856 (n + 2)).toNat) (A185482 (n + 1))

end

end A221323.P7626412206239258536

/-!
# A221324: Number of n X 4 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221324, there is no canonical definition to state claims against.
-/

/-! ## A221324.P16126779013785821540

`A221328(A141214(n+1))`
-/

namespace A221324.P16126779013785821540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A141214 (n + 1)).toNat

end

end A221324.P16126779013785821540

/-! ## A221324.P14397965710502324426

`A221328(A155212(n)+5)`
-/

namespace A221324.P14397965710502324426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A155212 n + 5).toNat

end

end A221324.P14397965710502324426

/-! ## A221324.P7066810451749846930

`A221328(A056000(n)+7)`
-/

namespace A221324.P7066810451749846930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A056000 n + 7).toNat

end

end A221324.P7066810451749846930

/-! ## A221324.P11280580381287308855

`A221328(eq[3, A193592(n)])`
-/

namespace A221324.P11280580381287308855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221324.P11280580381287308855

/-! ## A221324.P11496855455190556444

`A221328(A052905(n+1)+2)`
-/

namespace A221324.P11496855455190556444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A052905 (n + 1) + 2).toNat

end

end A221324.P11496855455190556444

/-!
# A221325: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221325, there is no canonical definition to state claims against.
-/

/-! ## A221325.P3221047290259552782

`A221328(Δ[A264443(n)])`
-/

namespace A221325.P3221047290259552782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (f1 (n + 1) - f1 n).toNat

end

end A221325.P3221047290259552782

/-! ## A221325.P10889380147945316683

`A221328(A046691(n+3))`
-/

namespace A221325.P10889380147945316683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A046691 (n + 3)).toNat

end

end A221325.P10889380147945316683

/-! ## A221325.P4044628285860659819

`A221328(eq[4, A193592(n)])`
-/

namespace A221325.P4044628285860659819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221325.P4044628285860659819

/-! ## A221325.P9219292960147436687

`A221328(Δ[A023545(n+1)])`
-/

namespace A221325.P9219292960147436687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (f1 (n + 1) - f1 n).toNat

end

end A221325.P9219292960147436687

/-! ## A221325.P1066140307378510400

`A221328(A052905(n+2)+1)`
-/

namespace A221325.P1066140307378510400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A052905 (n + 2) + 1).toNat

end

end A221325.P1066140307378510400

/-!
# A221326: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221326, there is no canonical definition to state claims against.
-/

/-! ## A221326.P11184812701874124762

`A221328(A052905(n+3))`
-/

namespace A221326.P11184812701874124762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A052905 (n + 3)).toNat

end

end A221326.P11184812701874124762

/-! ## A221326.P14702491825584368682

`A221328(eq[6, A200370(n+1)])`
-/

namespace A221326.P14702491825584368682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221326.P14702491825584368682

/-! ## A221326.P11042237639154628963

`A221328(Δ[Δ[A006504(n+1)]])`
-/

namespace A221326.P11042237639154628963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (f1 (n + 1) - f1 n).toNat

end

end A221326.P11042237639154628963

/-! ## A221326.P1534511582360567429

`A221328(Δ[A264443(n+1)]-1)`
-/

namespace A221326.P1534511582360567429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (f1 (n + 1) - f1 n - 1).toNat

end

end A221326.P1534511582360567429

/-!
# A221327: Number of nX7 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221327, there is no canonical definition to state claims against.
-/

/-! ## A221327.P17315529052068058441

`A221328(eq[6, A193592(n)])`
-/

namespace A221327.P17315529052068058441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221327.P17315529052068058441

/-! ## A221327.P12118228640515753828

`A221328(eq[7, A200370(n+1)])`
-/

namespace A221327.P12118228640515753828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221327.P12118228640515753828

/-!
# A221328: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221328, there is no canonical definition to state claims against.
-/

/-! ## A221328.P10434246064754505717

`A018411(A072506(n+2))`
-/

namespace A221328.P10434246064754505717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018411 (A072506 (n + 2)).toNat

end

end A221328.P10434246064754505717

/-! ## A221328.P5315134746376854254

`A281217(A001222(5^n))^(floor(sqrt(8*n+1))%2)`
-/

namespace A221328.P5315134746376854254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281217 (A001222 (5 ^ n)).toNat ^ (Nat.sqrt (8 * n + 1) % 2)

end

end A221328.P5315134746376854254

/-! ## A221328.P10176722059825545589

`A281217(n*A002988(A261781(n)))`
-/

namespace A221328.P10176722059825545589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281217 ((n : ℤ) * A002988 (A261781 n).toNat).toNat

end

end A221328.P10176722059825545589

/-! ## A221328.P12661210785100727848

`A281311(n*A002988(A261781(n)))`
-/

namespace A221328.P12661210785100727848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281311 ((n : ℤ) * A002988 (A261781 n).toNat).toNat

end

end A221328.P12661210785100727848

/-!
# A221329: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221329, the canonical program `A221329.P11960704477447587996` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221329 has offset 1).

The definition of A221329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221329.P11960704477447587996

`ogf((1+6x-41x^2+17x^3+24x^4-16x^5+x^6+5x^7-x^8)/(1-11x+27x^2+x^3-8x^4+16x^5+6x^6-2x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221329

/-- `ogf((1+6x-41x^2+17x^3+24x^4-16x^5+x^6+5x^7-x^8)/(1-11x+27x^2+x^3-8x^4+16x^5+6x^6-2x^7))` -/
def P11960704477447587996.Spec : Prop :=
  ∀ n, P11960704477447587996.a n = A221329 (n + 1)

theorem P11960704477447587996.correct : P11960704477447587996.Spec := by
  intro n
  simp only [A221329, Nat.add_sub_cancel]

end A221329

/-! ## A221329.P9206221400236879071

`A221328(∑[n+1]+2)`
-/

namespace A221329.P9206221400236879071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221329.P9206221400236879071

namespace A221329

/-- `A221328(∑[n+1]+2)` -/
def P9206221400236879071.Spec : Prop :=
  ∀ n, P9206221400236879071.a n = A221329 (n + 1)

end A221329

/-! ## A221329.P3181299129819316632

`record[ratio[A221328(A080036(n))]]`
-/

namespace A221329.P3181299129819316632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221329.P3181299129819316632

namespace A221329

/-- `record[ratio[A221328(A080036(n))]]` -/
def P3181299129819316632.Spec : Prop :=
  ∀ n, P3181299129819316632.a n = (A221329 (n + 1) : ℚ)

end A221329

/-! ## A221329.P9892679031391130546

`record[gcd(A221328(n+1), A259776(n))]`
-/

namespace A221329.P9892679031391130546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221328 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221329.P9892679031391130546

namespace A221329

/-- `record[gcd(A221328(n+1), A259776(n))]` -/
def P9892679031391130546.Spec : Prop :=
  ∀ n, (P9892679031391130546.a n : ℤ) = A221329 (n + 1)

end A221329

/-! ## A221329.P5153816732916692343

`record[gcd(A208343(n+1), A221328(n+2))]`
-/

namespace A221329.P5153816732916692343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208343 (n + 1)) (A221328 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221329.P5153816732916692343

namespace A221329

/-- `record[gcd(A208343(n+1), A221328(n+2))]` -/
def P5153816732916692343.Spec : Prop :=
  ∀ n, (P5153816732916692343.a n : ℤ) = A221329 (n + 1)

end A221329

/-!
# A221330: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221330, there is no canonical definition to state claims against.
-/

/-! ## A221330.P13160302683815906794

`A221328(∑[n+2]+4)`
-/

namespace A221330.P13160302683815906794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221330.P13160302683815906794

/-! ## A221330.P9250498322350133430

`record[gcd(2-A208343(n+1), A221328(n+1))]`
-/

namespace A221330.P9250498322350133430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A208343 (n + 1)) (A221328 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221330.P9250498322350133430

/-! ## A221330.P16484936409242692658

`A139551(n)*A221328(A167614(n+1))`
-/

namespace A221330.P16484936409242692658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A221328 (A167614 (n + 1)).toNat

end

end A221330.P16484936409242692658

/-! ## A221330.P2365746871242137378

`A221328(A167614(n+1))*A254730(n)`
-/

namespace A221330.P2365746871242137378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A167614 (n + 1)).toNat * A254730 n

end

end A221330.P2365746871242137378

/-! ## A221330.P14951538168018750408

`gcd(A000038(n), A221328(A167614(n+1)))`
-/

namespace A221330.P14951538168018750408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A221328 (A167614 (n + 1)).toNat)

end

end A221330.P14951538168018750408

/-!
# A221331: Number of 4 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221331, there is no canonical definition to state claims against.
-/

/-! ## A221331.P16852013159242901799

`A221328(A141214(n)+7)`
-/

namespace A221331.P16852013159242901799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A141214 n + 7).toNat

end

end A221331.P16852013159242901799

/-! ## A221331.P10355107408806066759

`A221328(A052905(n)+9)`
-/

namespace A221331.P10355107408806066759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A052905 n + 9).toNat

end

end A221331.P10355107408806066759

/-! ## A221331.P2477309229835956119

`A221328(A055999(n)+10)`
-/

namespace A221331.P2477309229835956119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A055999 n + 10).toNat

end

end A221331.P2477309229835956119

/-! ## A221331.P15103902644516964351

`A221328(A167614(n+2)+1)`
-/

namespace A221331.P15103902644516964351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A167614 (n + 2) + 1).toNat

end

end A221331.P15103902644516964351

/-! ## A221331.P1006573307641834077

`A221328(eq[5, A131818(n+1)])`
-/

namespace A221331.P1006573307641834077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221331.P1006573307641834077

/-!
# A221332: Number of 5Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221332, there is no canonical definition to state claims against.
-/

/-! ## A221332.P16261912127853611217

`A221328(A167499(n+3))`
-/

namespace A221332.P16261912127853611217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A167499 (n + 3)).toNat

end

end A221332.P16261912127853611217

/-! ## A221332.P17226345591727431136

`A221328(A155212(n)+13)`
-/

namespace A221332.P17226345591727431136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A155212 n + 13).toNat

end

end A221332.P17226345591727431136

/-! ## A221332.P5258199758469091221

`A221328(A056000(n)+15)`
-/

namespace A221332.P5258199758469091221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A056000 n + 15).toNat

end

end A221332.P5258199758469091221

/-! ## A221332.P1195995159276720899

`A221328(eq[7, A066657(n)])`
-/

namespace A221332.P1195995159276720899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221332.P1195995159276720899

/-! ## A221332.P15879639847272081008

`A221328(eq[6, A131818(n+1)])`
-/

namespace A221332.P15879639847272081008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221332.P15879639847272081008

/-!
# A221333: Number of 6Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221333, there is no canonical definition to state claims against.
-/

/-! ## A221333.P17524319177710732426

`A221328(Δ[A264443(n)]+10)`
-/

namespace A221333.P17524319177710732426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (f1 (n + 1) - f1 n + 10).toNat

end

end A221333.P17524319177710732426

/-! ## A221333.P1031334201442811031

`A221328(eq[7, A131818(n+1)])`
-/

namespace A221333.P1031334201442811031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221333.P1031334201442811031

/-!
# A221334: Number of 7Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221334, there is no canonical definition to state claims against.
-/

/-! ## A221334.P16815584803622147343

`A221328(A000217(n+6)+7)`
-/

namespace A221334.P16815584803622147343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (A000217 (n + 6) + 7).toNat

end

end A221334.P16815584803622147343

/-! ## A221334.P1828582586476091182

`A221328(A166136(n+5)+(1/(-1)^n)^(n+1))`
-/

namespace A221334.P1828582586476091182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221328 (SequenceMachineLib.roundAway ((A166136 (n + 5) : ℚ) + (1 / ((-1) ^ n : ℚ)) ^ (n + 1))).toNat

end

end A221334.P1828582586476091182

/-!
# A221335: Number of nX3 arrays of occupancy after each element stays put or moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221335, there is no canonical definition to state claims against.
-/

/-! ## A221335.P11855544139736769962

`A221337(∑[n+2]+4)`
-/

namespace A221335.P11855544139736769962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221337 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221335.P11855544139736769962

/-! ## A221335.P14506068716394435614

`lcm(2, A221337(A167614(n+1)))`
-/

namespace A221335.P14506068716394435614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221337 (A167614 (n + 1)).toNat)

end

end A221335.P14506068716394435614

/-! ## A221335.P10312401403980202401

`A221337(A167614(n+1))+A033665(n)`
-/

namespace A221335.P10312401403980202401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221337 (A167614 (n + 1)).toNat + A033665 n

end

end A221335.P10312401403980202401

/-! ## A221335.P4206251567855375023

`A221337(A167614(n+1))+A084904(n)`
-/

namespace A221335.P4206251567855375023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221337 (A167614 (n + 1)).toNat + A084904 n

end

end A221335.P4206251567855375023

/-!
# A221336: Number of nX4 arrays of occupancy after each element stays put or moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221336, there is no canonical definition to state claims against.
-/

/-! ## A221336.P10560903545346869148

`A221337(∏{p}[n+1, #*val(n+1, #)]+∑[n+2]+7)`
-/

namespace A221336.P10560903545346869148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221337 (∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + (∑ j ∈ Finset.range (n + 1), f2 j + 7))

end

end A221336.P10560903545346869148

/-! ## A221336.P663862160485264019

`A221337(A141214(n)+7)`
-/

namespace A221336.P663862160485264019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221337 (A141214 n + 7).toNat

end

end A221336.P663862160485264019

/-! ## A221336.P15652159312595281677

`A221337(A052905(n)+9)`
-/

namespace A221336.P15652159312595281677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221337 (A052905 n + 9).toNat

end

end A221336.P15652159312595281677

/-!
# A221337: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221337, there is no canonical definition to state claims against.
-/

/-! ## A221337.P7769789663581936045

`A335523(A221396(n+1)+1)`
-/

namespace A221337.P7769789663581936045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (A221396 (n + 1) + 1).toNat

end

end A221337.P7769789663581936045

/-! ## A221337.P10092167786619046220

`A221396(n+1)+A140202(A282441(n+1))`
-/

namespace A221337.P10092167786619046220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (n + 1) + A140202 (A282441 (n + 1)).toNat

end

end A221337.P10092167786619046220

/-! ## A221337.P8507420203778417381

`A354581(A221408(n+1))+A140202(A282441(n+1))`
-/

namespace A221337.P8507420203778417381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A221408 (n + 1)).toNat + A140202 (A282441 (n + 1)).toNat

end

end A221337.P8507420203778417381

/-! ## A221337.P446063539480339548

`A354581(A295214(n+1))+A140202(A282441(n+1))`
-/

namespace A221337.P446063539480339548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A295214 (n + 1)).toNat + A140202 (A282441 (n + 1)).toNat

end

end A221337.P446063539480339548

/-!
# A221338: Number of nX2 arrays of occupancy after each element moves to some king-move neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221338, there is no canonical definition to state claims against.
-/

/-! ## A221338.P1471218644897307923

`A221341(∑[n+1]+2)`
-/

namespace A221338.P1471218644897307923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221341 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221338.P1471218644897307923

/-! ## A221338.P7409131872593902969

`record[A221341(A256998(n+1))]`
-/

namespace A221338.P7409131872593902969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221341 (A256998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221338.P7409131872593902969

/-! ## A221338.P620190307919807965

`record[A221341(A103631(n)+2)]`
-/

namespace A221338.P620190307919807965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221341 (A103631 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221338.P620190307919807965

/-! ## A221338.P14424796335525441189

`record[A221341(n+1)/A029847(n)]`
-/

namespace A221338.P14424796335525441189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221341 (n + 1) : ℚ) / (A029847 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221338.P14424796335525441189

/-!
# A221339: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221339, there is no canonical definition to state claims against.
-/

/-! ## A221339.P3691798425778786474

`A221341(∑[n+2]+4)`
-/

namespace A221339.P3691798425778786474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221341 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221339.P3691798425778786474

/-! ## A221339.P10835973410068106864

`record[∑{e}[n, A221341(A167614(#))]]`
-/

namespace A221339.P10835973410068106864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A221341 (A167614 (Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221339.P10835973410068106864

/-! ## A221339.P2496985334593252060

`A221341(A167614(n+1))+A011741(n)`
-/

namespace A221339.P2496985334593252060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221341 (A167614 (n + 1)).toNat + A011741 n

end

end A221339.P2496985334593252060

/-!
# A221340: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221340, there is no canonical definition to state claims against.
-/

/-! ## A221340.P1237420728489659830

`A221341(A020752(n+1))`
-/

namespace A221340.P1237420728489659830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221341 (A020752 (n + 1)).toNat

end

end A221340.P1237420728489659830

/-! ## A221340.P6787214473386703376

`A221341(A141214(n)+7)`
-/

namespace A221340.P6787214473386703376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221341 (A141214 n + 7).toNat

end

end A221340.P6787214473386703376

/-!
# A221341: T(n,k)=Number of nXk arrays of occupancy after each element moves to some king-move neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221341, there is no canonical definition to state claims against.
-/

/-! ## A221341.P7486458542738695476

`A117556(∑{d}[∏{p}[n+1, #], (n+1)/#])%A155497(n)`
-/

namespace A221341.P7486458542738695476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117556 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat) (A155497 n)

end

end A221341.P7486458542738695476

/-! ## A221341.P1153270410799965312

`A157150(n)-A094848(A005676(n))`
-/

namespace A221341.P1153270410799965312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157150 n - A094848 (A005676 n).toNat

end

end A221341.P1153270410799965312

/-! ## A221341.P14869055938368522635

`A157150(n)-A247462(A008500(n))`
-/

namespace A221341.P14869055938368522635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157150 n - A247462 (A008500 n).toNat

end

end A221341.P14869055938368522635

/-! ## A221341.P6625704800267123031

`A157150(n)-A175409(A103295(n))`
-/

namespace A221341.P6625704800267123031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157150 n - A175409 (A103295 n).toNat

end

end A221341.P6625704800267123031

/-!
# A221342: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221342, there is no canonical definition to state claims against.
-/

/-! ## A221342.P4163887583462492154

`A221345(∑[n+3]+1)`
-/

namespace A221342.P4163887583462492154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221342.P4163887583462492154

/-! ## A221342.P17028574585517035465

`record[A221345(A198464(n+1))]`
-/

namespace A221342.P17028574585517035465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221342.P17028574585517035465

/-!
# A221343: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221343, there is no canonical definition to state claims against.
-/

/-! ## A221343.P14000854909337884574

`A221345(∑[n+4]+3)`
-/

namespace A221343.P14000854909337884574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221343.P14000854909337884574

/-!
# A221344: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221344, there is no canonical definition to state claims against.
-/

/-! ## A221344.P15903549413771654911

`A221345(Δ[A264443(n)])`
-/

namespace A221344.P15903549413771654911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (f1 (n + 1) - f1 n).toNat

end

end A221344.P15903549413771654911

/-!
# A221345: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221345, there is no canonical definition to state claims against.
-/

/-! ## A221345.P5138350991487716562

`A221303((n+1)^A060959(n))`
-/

namespace A221345.P5138350991487716562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A060959 n : ℤ))).toNat

end

end A221345.P5138350991487716562

/-! ## A221345.P8853378523143497418

`A221303((n+1)^A055290(n+2))`
-/

namespace A221345.P8853378523143497418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A055290 (n + 2) : ℤ))).toNat

end

end A221345.P8853378523143497418

/-! ## A221345.P7380539125692416044

`A006530(A221303(n+1)^A362125(n))`
-/

namespace A221345.P7380539125692416044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A221303 (n + 1) : ℚ) ^ (A362125 n : ℤ))).toNat

end

end A221345.P7380539125692416044

/-! ## A221345.P9586132063149629711

`A020639(A221303(n+1)^A362125(n))`
-/

namespace A221345.P9586132063149629711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A221303 (n + 1) : ℚ) ^ (A362125 n : ℤ))).toNat

end

end A221345.P9586132063149629711

/-! ## A221345.P2475872762058620172

`A000027(C(A221303(n+1), A060959(n)))`
-/

namespace A221345.P2475872762058620172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (A221303 (n + 1)).toNat (A060959 n).toNat)

end

end A221345.P2475872762058620172

/-!
# A221346: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221346, there is no canonical definition to state claims against.
-/

/-! ## A221346.P1945427171267347840

`A221345(∑[n+2]+4)`
-/

namespace A221346.P1945427171267347840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221346.P1945427171267347840

/-! ## A221346.P9652956000049665394

`lcm((-1)^n, A221345(A167614(n+1)))`
-/

namespace A221346.P9652956000049665394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A221345 (A167614 (n + 1)).toNat)

end

end A221346.P9652956000049665394

/-! ## A221346.P9902152113417926621

`A221345(A167614(n+1))+A025437(n)`
-/

namespace A221346.P9902152113417926621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (A167614 (n + 1)).toNat + A025437 n

end

end A221346.P9902152113417926621

/-! ## A221346.P11774324468797706297

`A221345(A167614(n+1))+A025442(n)`
-/

namespace A221346.P11774324468797706297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (A167614 (n + 1)).toNat + A025442 n

end

end A221346.P11774324468797706297

/-!
# A221347: Number of 4Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221347, there is no canonical definition to state claims against.
-/

/-! ## A221347.P10643426512120964617

`A221345(A141214(n)+7)`
-/

namespace A221347.P10643426512120964617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (A141214 n + 7).toNat

end

end A221347.P10643426512120964617

/-! ## A221347.P5410163221577022241

`A221345(A052905(n)+9)`
-/

namespace A221347.P5410163221577022241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (A052905 n + 9).toNat

end

end A221347.P5410163221577022241

/-! ## A221347.P4108658906496261500

`A221345(A055999(n)+10)`
-/

namespace A221347.P4108658906496261500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (A055999 n + 10).toNat

end

end A221347.P4108658906496261500

/-!
# A221348: Number of nX3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops.

The programs for A221348, there is no canonical definition to state claims against.
-/

/-! ## A221348.P858717034109704414

`A221351(∑[n+3]+1)`
-/

namespace A221348.P858717034109704414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221348.P858717034109704414

/-! ## A221348.P22899161367527671

`record[and(A106467(n), A221351(n+1))]`
-/

namespace A221348.P22899161367527671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106467 n) (A221351 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221348.P22899161367527671

/-! ## A221348.P4618628338308121775

`A221351(record[a(n-1)-(4-n)]-1)+A025439(n)` with `a(0)=5`
-/

namespace A221348.P4618628338308121775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - (4 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat + A025439 n

end

end A221348.P4618628338308121775

/-!
# A221349: Number of nX4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops.

The programs for A221349, there is no canonical definition to state claims against.
-/

/-! ## A221349.P2961760791520625516

`A221351(∑[a(n-2)+2]+3)` with `a(0)=4, a(1)=5`
-/

namespace A221349.P2961760791520625516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221349.P2961760791520625516

/-! ## A221349.P10336409805062364092

`A221351(record[a(n-1)-(4-n)]-1)` with `a(0)=8, a(1)=1`
-/

namespace A221349.P10336409805062364092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1] fun n f1 =>
  f1 (n - 1) - (4 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat

end

end A221349.P10336409805062364092

/-!
# A221350: Number of nX5 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops.

The programs for A221350, there is no canonical definition to state claims against.
-/

/-! ## A221350.P8683309069178951569

`A221351(record[a(n-1)-(4-n)]-1)` with `a(0)=12, a(1)=0`
-/

namespace A221350.P8683309069178951569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, 0] fun n f1 =>
  f1 (n - 1) - (4 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat

end

end A221350.P8683309069178951569

/-!
# A221351: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops.

The programs for A221351, there is no canonical definition to state claims against.
-/

/-! ## A221351.P2599846299966938201

`A167487(A075118(n))%A156764(n)`
-/

namespace A221351.P2599846299966938201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167487 (A075118 n).toNat) (A156764 n)

end

end A221351.P2599846299966938201

/-! ## A221351.P10491672910736606925

`A284421(n)%A338543(A026758(n))`
-/

namespace A221351.P10491672910736606925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284421 n) (A338543 (A026758 n).toNat)

end

end A221351.P10491672910736606925

/-! ## A221351.P6478243418386179228

`A268931(A110600(n+1))%A172345(n)`
-/

namespace A221351.P6478243418386179228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268931 (A110600 (n + 1)).toNat) (A172345 n)

end

end A221351.P6478243418386179228

/-! ## A221351.P2597844080948607295

`A164554(2*(n+2))%A129668(A026714(n+1))`
-/

namespace A221351.P2597844080948607295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164554 (2 * (n + 2))) (A129668 (A026714 (n + 1)).toNat)

end

end A221351.P2597844080948607295

/-!
# A221352: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops.

The programs for A221352, the canonical program `A221352.P17160243390379126652` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221352 has offset 1).

The definition of A221352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221352.P17160243390379126652

`ogf((x+7x^2-24x^3+14x^4+14x^5-14x^6)/(1-11x+26x^2+10x^3-34x^4-14x^5+16x^6+8x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221352

/-- `ogf((x+7x^2-24x^3+14x^4+14x^5-14x^6)/(1-11x+26x^2+10x^3-34x^4-14x^5+16x^6+8x^7))` -/
def P17160243390379126652.Spec : Prop :=
  ∀ n, P17160243390379126652.a n = A221352 (n + 1)

theorem P17160243390379126652.correct : P17160243390379126652.Spec := by
  intro n
  simp only [A221352, Nat.add_sub_cancel]

end A221352

/-! ## A221352.P10146556502836135994

`A221351(∑[n+1]+2)`
-/

namespace A221352.P10146556502836135994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221352.P10146556502836135994

namespace A221352

/-- `A221351(∑[n+1]+2)` -/
def P10146556502836135994.Spec : Prop :=
  ∀ n, P10146556502836135994.a n = A221352 (n + 1)

end A221352

/-! ## A221352.P11307917280944094188

`record[A221351(A256998(n+1))]`
-/

namespace A221352.P11307917280944094188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (A256998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221352.P11307917280944094188

namespace A221352

/-- `record[A221351(A256998(n+1))]` -/
def P11307917280944094188.Spec : Prop :=
  ∀ n, P11307917280944094188.a n = A221352 (n + 1)

end A221352

/-! ## A221352.P3455285459603355013

`record[A010054(n)*A221351(n+2)]`
-/

namespace A221352.P3455285459603355013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221351 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221352.P3455285459603355013

namespace A221352

/-- `record[A010054(n)*A221351(n+2)]` -/
def P3455285459603355013.Spec : Prop :=
  ∀ n, P3455285459603355013.a n = A221352 (n + 1)

end A221352

/-! ## A221352.P15153231475624568340

`record[A221351(n+1)/A029847(n)]`
-/

namespace A221352.P15153231475624568340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221351 (n + 1) : ℚ) / (A029847 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221352.P15153231475624568340

namespace A221352

/-- `record[A221351(n+1)/A029847(n)]` -/
def P15153231475624568340.Spec : Prop :=
  ∀ n, P15153231475624568340.a n = (A221352 (n + 1) : ℚ)

end A221352

/-!
# A221353: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops.

The programs for A221353, there is no canonical definition to state claims against.
-/

/-! ## A221353.P2516448793981980752

`A221351(∑[n+2]+4)`
-/

namespace A221353.P2516448793981980752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221353.P2516448793981980752

/-! ## A221353.P5792487484204933304

`and(-1, A221351(A167614(n+1)))`
-/

namespace A221353.P5792487484204933304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221351 (A167614 (n + 1)).toNat)

end

end A221353.P5792487484204933304

/-! ## A221353.P14735034057870814127

`record[A010054(n)*A221351(n+3)]`
-/

namespace A221353.P14735034057870814127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221351 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221353.P14735034057870814127

/-! ## A221353.P8081725695507027598

`A221351(A167614(n+1))+A025433(n)`
-/

namespace A221353.P8081725695507027598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (A167614 (n + 1)).toNat + A025433 n

end

end A221353.P8081725695507027598

/-!
# A221354: Number of 4 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops.

The programs for A221354, there is no canonical definition to state claims against.
-/

/-! ## A221354.P6119182340906545221

`A221351(record[a(n-1)-(4-n)]-1)` with `a(0)=11`
-/

namespace A221354.P6119182340906545221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) - (4 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat

end

end A221354.P6119182340906545221

/-! ## A221354.P7313906980735430057

`A221351(A141214(n)+7)`
-/

namespace A221354.P7313906980735430057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (A141214 n + 7).toNat

end

end A221354.P7313906980735430057

/-! ## A221354.P10561919106085967291

`A221351(A052905(n)+9)`
-/

namespace A221354.P10561919106085967291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (A052905 n + 9).toNat

end

end A221354.P10561919106085967291

/-!
# A221355: Sum of neighbor maps: log base 2 of the number of n X n binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 n X n array.

The programs for A221355, there is no canonical definition to state claims against.
-/

/-! ## A221355.P6417170400913601623

`A221356(∑[4*n]+1)`
-/

namespace A221355.P6417170400913601623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221356 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221355.P6417170400913601623

/-! ## A221355.P16242186725261898904

`A221356(A001844(n))%78`
-/

namespace A221355.P16242186725261898904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221356 (A001844 n).toNat) 78

end

end A221355.P16242186725261898904

/-! ## A221355.P13275810409560863815

`record[A003982(n)*A221356(n+1)]`
-/

namespace A221355.P13275810409560863815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A221356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221355.P13275810409560863815

/-! ## A221355.P13752362610872611602

`record[gcd(A049581(n), A221356(n+1))]`
-/

namespace A221355.P13752362610872611602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A221356 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221355.P13752362610872611602

/-! ## A221355.P16936862635748544098

`∑[A299588(n+1)+A244982(n+1)]`
-/

namespace A221355.P16936862635748544098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (n + 1) + A244982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221355.P16936862635748544098

/-!
# A221356: T(n,k)=Sum of neighbor maps: log base 2 of the number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nXk array.

The programs for A221356, there is no canonical definition to state claims against.
-/

/-! ## A221356.P1824089148416484276

`A087117(11*A221666(n+1))`
-/

namespace A221356.P1824089148416484276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (11 * A221666 (n + 1)).toNat

end

end A221356.P1824089148416484276

/-! ## A221356.P3060718359359358666

`A087117(lcm(11, A221666(n+1)))`
-/

namespace A221356.P3060718359359358666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.lcm 11 (A221666 (n + 1)))

end

end A221356.P3060718359359358666

/-!
# A221357: Number of n X 2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221357, the canonical program `A221357.P17025949250119494081` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221357 has offset 1).

The definition of A221357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221357.P17025949250119494081

`ogf((5x-21x^2+14x^3-4x^4-2x^5+4x^6)/(1-12x+38x^2-14x^3-59x^4+21x^5+33x^6-16x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221357

/-- `ogf((5x-21x^2+14x^3-4x^4-2x^5+4x^6)/(1-12x+38x^2-14x^3-59x^4+21x^5+33x^6-16x^7))` -/
def P17025949250119494081.Spec : Prop :=
  ∀ n, P17025949250119494081.a n = A221357 (n + 1)

theorem P17025949250119494081.correct : P17025949250119494081.Spec := by
  intro n
  simp only [A221357, Nat.add_sub_cancel]

end A221357

/-! ## A221357.P9240511715641975115

`A221361(∑[n+1]+2)`
-/

namespace A221357.P9240511715641975115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221357.P9240511715641975115

namespace A221357

/-- `A221361(∑[n+1]+2)` -/
def P9240511715641975115.Spec : Prop :=
  ∀ n, P9240511715641975115.a n = A221357 (n + 1)

end A221357

/-! ## A221357.P9117627305375038625

`record[A221361(A252460(n+1))]`
-/

namespace A221357.P9117627305375038625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221357.P9117627305375038625

namespace A221357

/-- `record[A221361(A252460(n+1))]` -/
def P9117627305375038625.Spec : Prop :=
  ∀ n, P9117627305375038625.a n = A221357 (n + 1)

end A221357

/-! ## A221357.P10082686722329340032

`record[A221361(n+1)/A294609(n)]`
-/

namespace A221357.P10082686722329340032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221361 (n + 1) : ℚ) / (A294609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221357.P10082686722329340032

namespace A221357

/-- `record[A221361(n+1)/A294609(n)]` -/
def P10082686722329340032.Spec : Prop :=
  ∀ n, P10082686722329340032.a n = (A221357 (n + 1) : ℚ)

end A221357

/-! ## A221357.P9112235690218404594

`record[A221361(n+2)/A322730(n)]`
-/

namespace A221357.P9112235690218404594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221361 (n + 2) : ℚ) / (A322730 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221357.P9112235690218404594

namespace A221357

/-- `record[A221361(n+2)/A322730(n)]` -/
def P9112235690218404594.Spec : Prop :=
  ∀ n, P9112235690218404594.a n = (A221357 (n + 1) : ℚ)

end A221357

/-!
# A221358: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221358, there is no canonical definition to state claims against.
-/

/-! ## A221358.P15587974207781474892

`A221361(∑[n+2]+4)`
-/

namespace A221358.P15587974207781474892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221358.P15587974207781474892

/-! ## A221358.P1248691385426734392

`record[A221361(n+4)/A105620(n)]`
-/

namespace A221358.P1248691385426734392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221361 (n + 4) : ℚ) / (A105620 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221358.P1248691385426734392

/-! ## A221358.P2919855985272203653

`record[A221361(A252460(2*n+1)+2)]`
-/

namespace A221358.P2919855985272203653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A252460 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221358.P2919855985272203653

/-! ## A221358.P13511474224591686122

`ceil(sin(n)²)*A221361(A167614(n+1))`
-/

namespace A221358.P13511474224591686122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A221361 (A167614 (n + 1)).toNat

end

end A221358.P13511474224591686122

/-! ## A221358.P9426387401568560224

`A221361(A167614(n+1))+A025442(n)`
-/

namespace A221358.P9426387401568560224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A167614 (n + 1)).toNat + A025442 n

end

end A221358.P9426387401568560224

/-!
# A221359: Number of nX4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221359, there is no canonical definition to state claims against.
-/

/-! ## A221359.P5031448449433483170

`A221361(A374004(n+1))`
-/

namespace A221359.P5031448449433483170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A374004 (n + 1)).toNat

end

end A221359.P5031448449433483170

/-! ## A221359.P509750337203558193

`A221361(A141214(n)+7)`
-/

namespace A221359.P509750337203558193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A141214 n + 7).toNat

end

end A221359.P509750337203558193

/-! ## A221359.P11607942837618340801

`A221361(A052905(n)+9)`
-/

namespace A221359.P11607942837618340801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A052905 n + 9).toNat

end

end A221359.P11607942837618340801

/-! ## A221359.P3266947990103377873

`A221361(A055999(n)+10)`
-/

namespace A221359.P3266947990103377873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A055999 n + 10).toNat

end

end A221359.P3266947990103377873

/-!
# A221360: Number of nX5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221360, there is no canonical definition to state claims against.
-/

/-! ## A221360.P5491669844533141382

`A221361(∑[n+4]+11)`
-/

namespace A221360.P5491669844533141382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A221360.P5491669844533141382

/-! ## A221360.P2629855623672882919

`A221361(A374005(n+1))+A097601(n)`
-/

namespace A221360.P2629855623672882919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A374005 (n + 1)).toNat + A097601 n

end

end A221360.P2629855623672882919

/-! ## A221360.P7897471149958571365

`A221361(A374005(n+1))+A131242(n)`
-/

namespace A221360.P7897471149958571365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A374005 (n + 1)).toNat + A131242 n

end

end A221360.P7897471149958571365

/-!
# A221361: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221361, there is no canonical definition to state claims against.
-/

/-! ## A221361.P2484995910664940428

`A156764(n)-A032566(A118180(n))`
-/

namespace A221361.P2484995910664940428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156764 n - A032566 (A118180 n).toNat

end

end A221361.P2484995910664940428

/-! ## A221361.P8383050795630128556

`A156764(n)-A157178(A167040(n))`
-/

namespace A221361.P8383050795630128556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156764 n - A157178 (A167040 n).toNat

end

end A221361.P8383050795630128556

/-! ## A221361.P6037713408640359937

`A156764(n)-A033630(A322730(n))`
-/

namespace A221361.P6037713408640359937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156764 n - A033630 (A322730 n).toNat

end

end A221361.P6037713408640359937

/-! ## A221361.P10039853157871033532

`A102093(A059922(n)²)-A128227(A022168(n))`
-/

namespace A221361.P10039853157871033532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102093 (A059922 n ^ 2).toNat - A128227 (A022168 n).toNat

end

end A221361.P10039853157871033532

/-! ## A221361.P17850392862606773285

`A219488(A262022(n))`
-/

namespace A221361.P17850392862606773285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (A262022 n).toNat

end

end A221361.P17850392862606773285

/-!
# A221362: Number of distinct groups of order n that are the torsion subgroup of an elliptic curve over the rationals Q.

The programs for A221362, there is no canonical definition to state claims against.
-/

/-! ## A221362.P16163627521677783790

`floor((val(n+1, 4)+1)/A146879(n+1))`
-/

namespace A221362.P16163627521677783790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.valuation (n + 1) 4 + 1 : ℚ) / (A146879 (n + 1) : ℚ)⌋

end

end A221362.P16163627521677783790

/-! ## A221362.P15876758786757304796

`C(A115362(n), A125950(n))`
-/

namespace A221362.P15876758786757304796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115362 n).toNat (A125950 n).toNat

end

end A221362.P15876758786757304796

/-! ## A221362.P6259312471822275380

`C(A081117(n), A094876(n+1))`
-/

namespace A221362.P6259312471822275380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081117 n).toNat (A094876 (n + 1)).toNat

end

end A221362.P6259312471822275380

/-! ## A221362.P18337135345054870244

`C(A081117(n), A146879(n+1))`
-/

namespace A221362.P18337135345054870244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081117 n).toNat (A146879 (n + 1)).toNat

end

end A221362.P18337135345054870244

/-! ## A221362.P1255997607328267003

`floor(A115362(n)/A094876(n+1))`
-/

namespace A221362.P1255997607328267003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115362 n : ℚ) / (A094876 (n + 1) : ℚ)⌋

end

end A221362.P1255997607328267003

/-!
# A221364: The simple continued fraction expansion of F(x) := Product_{n >= 0} (1 - x^(4*n+3))/(1 - x^(4*n+1)) when x = 1/2*(3 - sqrt(5)).

The programs for A221364, the canonical program `A221364.P18000423273019640802` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221364 has offset 0).

The definition of A221364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221364.P17670111924511953660

`ogf((1+x-3x^2+x^3+x^4)/(1-4x^2+4x^4-x^6))`
-/

namespace A221364.P17670111924511953660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, 1, 1] [1, 0, -4, 0, 4, 0, -1] n

end

end A221364.P17670111924511953660

namespace A221364

/-- `ogf((1+x-3x^2+x^3+x^4)/(1-4x^2+4x^4-x^6))` -/
def P17670111924511953660.Spec : Prop :=
  ∀ n, P17670111924511953660.a n = A221364 n

end A221364

/-! ## A221364.P18000423273019640802

`4*a(n-2)-4*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=1, a(5)=16`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221364

/-- `4*a(n-2)-4*a(n-4)+a(n-6)` -/
def P18000423273019640802.Spec : Prop :=
  ∀ n, P18000423273019640802.a n = A221364 n

theorem P18000423273019640802.correct : P18000423273019640802.Spec := by
  intro n
  simp only [A221364]

end A221364

/-! ## A221364.P2261286090593376431

`A001350(n*and(1, n)+1)`
-/

namespace A221364.P2261286090593376431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (n * Nat.land 1 n + 1)

end

end A221364.P2261286090593376431

namespace A221364

/-- `A001350(n*and(1, n)+1)` -/
def P2261286090593376431.Spec : Prop :=
  ∀ n, P2261286090593376431.a n = A221364 n

end A221364

/-! ## A221364.P5422837176936103777

`A001610(n^(n%2))-1`
-/

namespace A221364.P5422837176936103777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n ^ (n % 2)) - 1

end

end A221364.P5422837176936103777

namespace A221364

/-- `A001610(n^(n%2))-1` -/
def P5422837176936103777.Spec : Prop :=
  ∀ n, P5422837176936103777.a n = A221364 n

end A221364

/-! ## A221364.P2029778237046672063

`A074392(gcd(n, (n+1)%2))`
-/

namespace A221364.P2029778237046672063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 (Nat.gcd n ((n + 1) % 2))

end

end A221364.P2029778237046672063

namespace A221364

/-- `A074392(gcd(n, (n+1)%2))` -/
def P2029778237046672063.Spec : Prop :=
  ∀ n, P2029778237046672063.a n = A221364 n

end A221364

/-! ## A221364.P14233476466596168075

`A000032(n^and(1, n)+1)-2`
-/

namespace A221364.P14233476466596168075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n ^ Nat.land 1 n + 1) - 2

end

end A221364.P14233476466596168075

namespace A221364

/-- `A000032(n^and(1, n)+1)-2` -/
def P14233476466596168075.Spec : Prop :=
  ∀ n, P14233476466596168075.a n = A221364 n

end A221364

/-! ## A221364.P12509821147826696612

`A000032(C(n, and(1, n))+1)-2`
-/

namespace A221364.P12509821147826696612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose n (Nat.land 1 n) + 1) - 2

end

end A221364.P12509821147826696612

namespace A221364

/-- `A000032(C(n, and(1, n))+1)-2` -/
def P12509821147826696612.Spec : Prop :=
  ∀ n, P12509821147826696612.a n = A221364 n

end A221364

/-! ## A221364.P3021613268532939521

`A000032(∑[∑[ogf((2+2x-2x^2)/(1+2x+x^2))]])-2`
-/

namespace A221364.P3021613268532939521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A221364.P3021613268532939521

namespace A221364

/-- `A000032(∑[∑[ogf((2+2x-2x^2)/(1+2x+x^2))]])-2` -/
def P3021613268532939521.Spec : Prop :=
  ∀ n, P3021613268532939521.a n = A221364 n

end A221364

/-! ## A221364.P15180322119924844367

`abs(2-A000032(n*char[2*n+1]+1))`
-/

namespace A221364.P15180322119924844367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000032 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)|

end

end A221364.P15180322119924844367

namespace A221364

/-- `abs(2-A000032(n*char[2*n+1]+1))` -/
def P15180322119924844367.Spec : Prop :=
  ∀ n, P15180322119924844367.a n = A221364 n

end A221364

/-! ## A221364.P4899019338584125158

`A001350(A133265(n))`
-/

namespace A221364.P4899019338584125158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (A133265 n).toNat

end

end A221364.P4899019338584125158

namespace A221364

/-- `A001350(A133265(n))` -/
def P4899019338584125158.Spec : Prop :=
  ∀ n, P4899019338584125158.a n = A221364 n

end A221364

/-! ## A221364.P6156048768336942599

`A004146(A152271(n))`
-/

namespace A221364.P6156048768336942599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (A152271 n).toNat

end

end A221364.P6156048768336942599

namespace A221364

/-- `A004146(A152271(n))` -/
def P6156048768336942599.Spec : Prop :=
  ∀ n, P6156048768336942599.a n = A221364 n

end A221364

/-! ## A221364.P14684465554298580564

`A074392(A093178(n))`
-/

namespace A221364.P14684465554298580564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 (A093178 n).toNat

end

end A221364.P14684465554298580564

namespace A221364

/-- `A074392(A093178(n))` -/
def P14684465554298580564.Spec : Prop :=
  ∀ n, P14684465554298580564.a n = A221364 n

end A221364

/-! ## A221364.P6422072010677188706

`A074392(gcd(n, A056594(n)))`
-/

namespace A221364.P6422072010677188706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 (Int.gcd (n : ℤ) (A056594 n))

end

end A221364.P6422072010677188706

namespace A221364

/-- `A074392(gcd(n, A056594(n)))` -/
def P6422072010677188706.Spec : Prop :=
  ∀ n, P6422072010677188706.a n = A221364 n

end A221364

/-! ## A221364.P17999099195660486417

`A000032(A093178(n)+1)-2`
-/

namespace A221364.P17999099195660486417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A093178 n + 1).toNat - 2

end

end A221364.P17999099195660486417

namespace A221364

/-- `A000032(A093178(n)+1)-2` -/
def P17999099195660486417.Spec : Prop :=
  ∀ n, P17999099195660486417.a n = A221364 n

end A221364

/-! ## A221364.P5673227011539476781

`A001350(A266073(n+1)/2)`
-/

namespace A221364.P5673227011539476781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (SequenceMachineLib.roundAway ((A266073 (n + 1) : ℚ) / 2)).toNat

end

end A221364.P5673227011539476781

namespace A221364

/-- `A001350(A266073(n+1)/2)` -/
def P5673227011539476781.Spec : Prop :=
  ∀ n, P5673227011539476781.a n = A221364 n

end A221364

/-! ## A221364.P8761241757482203894

`gcd(A117188(n), A301653(n))`
-/

namespace A221364.P8761241757482203894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117188 n) (A301653 n)

end

end A221364.P8761241757482203894

namespace A221364

/-- `gcd(A117188(n), A301653(n))` -/
def P8761241757482203894.Spec : Prop :=
  ∀ n, (P8761241757482203894.a n : ℤ) = A221364 n

end A221364

/-! ## A221364.P1572538078199766139

`A000204(n+1)+1-A000204(A141310(n))`
-/

namespace A221364.P1572538078199766139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (1 - A000204 (A141310 n).toNat)

end

end A221364.P1572538078199766139

namespace A221364

/-- `A000204(n+1)+1-A000204(A141310(n))` -/
def P1572538078199766139.Spec : Prop :=
  ∀ n, P1572538078199766139.a n = A221364 n

end A221364

/-! ## A221364.P14005527568988169018

`A192243(n+1)%A080023(n+1)`
-/

namespace A221364.P14005527568988169018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192243 (n + 1)) (A080023 (n + 1))

end

end A221364.P14005527568988169018

namespace A221364

/-- `A192243(n+1)%A080023(n+1)` -/
def P14005527568988169018.Spec : Prop :=
  ∀ n, P14005527568988169018.a n = A221364 n

end A221364

/-! ## A221364.P8057907788944318340

`gcd(A301653(n+1)², A301653(2*n+1))`
-/

namespace A221364.P8057907788944318340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A301653 (n + 1) ^ 2) (A301653 (2 * n + 1))

end

end A221364.P8057907788944318340

namespace A221364

/-- `gcd(A301653(n+1)², A301653(2*n+1))` -/
def P8057907788944318340.Spec : Prop :=
  ∀ n, (P8057907788944318340.a n : ℤ) = A221364 n

end A221364

/-!
# A221365: The simple continued fraction expansion of F(x) := Product_{n >= 0} (1 - x^(4*n+3))/(1 - x^(4*n+1)) when x = 1/2*(5 - sqrt(21)).

The programs for A221365, the canonical program `A221365.P13964100911387183974` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221365 has offset 0).

The definition of A221365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221365.P15213033667904736744

`ogf((1+3x-5x^2+3x^3+x^4)/(1-6x^2+6x^4-x^6))`
-/

namespace A221365.P15213033667904736744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -5, 3, 1] [1, 0, -6, 0, 6, 0, -1] n

end

end A221365.P15213033667904736744

namespace A221365

/-- `ogf((1+3x-5x^2+3x^3+x^4)/(1-6x^2+6x^4-x^6))` -/
def P15213033667904736744.Spec : Prop :=
  ∀ n, P15213033667904736744.a n = A221365 n

end A221365

/-! ## A221365.P13964100911387183974

`6*a(n-2)-6*a(n-4)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=21, a(4)=1, a(5)=108`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221365

/-- `6*a(n-2)-6*a(n-4)+a(n-6)` -/
def P13964100911387183974.Spec : Prop :=
  ∀ n, P13964100911387183974.a n = A221365 n

theorem P13964100911387183974.correct : P13964100911387183974.Spec := by
  intro n
  simp only [A221365]

end A221365

/-! ## A221365.P11003267519736064932

`Δ[A030221(floor(n/2))-A052938(n+1)]`
-/

namespace A221365.P11003267519736064932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 ⌊(n : ℚ) / 2⌋.toNat - A052938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221365.P11003267519736064932

namespace A221365

/-- `Δ[A030221(floor(n/2))-A052938(n+1)]` -/
def P11003267519736064932.Spec : Prop :=
  ∀ n, P11003267519736064932.a n = A221365 n

end A221365

/-! ## A221365.P12601006097426491019

`Δ[A030221(A004526(n))-A028242(n)]`
-/

namespace A221365.P12601006097426491019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 (A004526 n).toNat - A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221365.P12601006097426491019

namespace A221365

/-- `Δ[A030221(A004526(n))-A028242(n)]` -/
def P12601006097426491019.Spec : Prop :=
  ∀ n, P12601006097426491019.a n = A221365 n

end A221365

/-!
# A221366: The simple continued fraction expansion of F(x) := Product_{n >= 0} (1 - x^(4*n+3))/(1 - x^(4*n+1)) when x = (1/2)*(7 - 3*sqrt(5)).

The programs for A221366, the canonical program `A221366.P15472469752521626515` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221366 has offset 0).

The definition of A221366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221366.P14467806091476135439

`ogf((1+5x-7x^2+5x^3+x^4)/(1-8x^2+8x^4-x^6))`
-/

namespace A221366.P14467806091476135439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -7, 5, 1] [1, 0, -8, 0, 8, 0, -1] n

end

end A221366.P14467806091476135439

namespace A221366

/-- `ogf((1+5x-7x^2+5x^3+x^4)/(1-8x^2+8x^4-x^6))` -/
def P14467806091476135439.Spec : Prop :=
  ∀ n, P14467806091476135439.a n = A221366 n

end A221366

/-! ## A221366.P15472469752521626515

`8*a(n-2)-8*a(n-4)+a(n-6)` with `a(0)=1, a(1)=5, a(2)=1, a(3)=45, a(4)=1, a(5)=320`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221366

/-- `8*a(n-2)-8*a(n-4)+a(n-6)` -/
def P15472469752521626515.Spec : Prop :=
  ∀ n, P15472469752521626515.a n = A221366 n

theorem P15472469752521626515.correct : P15472469752521626515.Spec := by
  intro n
  simp only [A221366]

end A221366

/-! ## A221366.P17282644443407680644

`∑[A002878(n)]^(n%2)`
-/

namespace A221366.P17282644443407680644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % 2)

end

end A221366.P17282644443407680644

namespace A221366

/-- `∑[A002878(n)]^(n%2)` -/
def P17282644443407680644.Spec : Prop :=
  ∀ n, P17282644443407680644.a n = A221366 n

end A221366

/-! ## A221366.P14541959629379607931

`∑[A000032(Δ[n²])]^and(1, n)`
-/

namespace A221366.P14541959629379607931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.land 1 n

end

end A221366.P14541959629379607931

namespace A221366

/-- `∑[A000032(Δ[n²])]^and(1, n)` -/
def P14541959629379607931.Spec : Prop :=
  ∀ n, P14541959629379607931.a n = A221366 n

end A221366

/-! ## A221366.P4790079527128256937

`(5*A000045(n+1)²)^and(1, n)`
-/

namespace A221366.P4790079527128256937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A000045 (n + 1) ^ 2) ^ Nat.land 1 n

end

end A221366.P4790079527128256937

namespace A221366

/-- `(5*A000045(n+1)²)^and(1, n)` -/
def P4790079527128256937.Spec : Prop :=
  ∀ n, P4790079527128256937.a n = A221366 n

end A221366

/-! ## A221366.P17361442152799935054

`A000032(C(2*n, a(n-1))+2)-2` with `a(0)=1`
-/

namespace A221366.P17361442152799935054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (Nat.choose (2 * n) (a (n - 1)).toNat + 2) - 2

end

end A221366.P17361442152799935054

namespace A221366

/-- `A000032(C(2*n, a(n-1))+2)-2` -/
def P17361442152799935054.Spec : Prop :=
  ∀ n, P17361442152799935054.a n = A221366 n

end A221366

/-! ## A221366.P852199637746142713

`abs(A000032((2*n+1)*and(1, n)+1)-2)`
-/

namespace A221366.P852199637746142713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000032 ((2 * n + 1) * Nat.land 1 n + 1) - 2|

end

end A221366.P852199637746142713

namespace A221366

/-- `abs(A000032((2*n+1)*and(1, n)+1)-2)` -/
def P852199637746142713.Spec : Prop :=
  ∀ n, P852199637746142713.a n = A221366 n

end A221366

/-! ## A221366.P10667274534516146509

`A221364(A014601(n))`
-/

namespace A221366.P10667274534516146509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A014601 n).toNat

end

end A221366.P10667274534516146509

namespace A221366

/-- `A221364(A014601(n))` -/
def P10667274534516146509.Spec : Prop :=
  ∀ n, P10667274534516146509.a n = A221366 n

end A221366

/-! ## A221366.P2265448312634725594

`A221364(A059029(n))`
-/

namespace A221366.P2265448312634725594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A059029 n).toNat

end

end A221366.P2265448312634725594

namespace A221366

/-- `A221364(A059029(n))` -/
def P2265448312634725594.Spec : Prop :=
  ∀ n, P2265448312634725594.a n = A221366 n

end A221366

/-! ## A221366.P8458361788437632731

`A221364(A266437(n))`
-/

namespace A221366.P8458361788437632731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A266437 n).toNat

end

end A221366.P8458361788437632731

namespace A221366

/-- `A221364(A266437(n))` -/
def P8458361788437632731.Spec : Prop :=
  ∀ n, P8458361788437632731.a n = A221366 n

end A221366

/-! ## A221366.P1972230392600915767

`A221364(A321220(n))`
-/

namespace A221366.P1972230392600915767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A321220 n).toNat

end

end A221366.P1972230392600915767

namespace A221366

/-- `A221364(A321220(n))` -/
def P1972230392600915767.Spec : Prop :=
  ∀ n, P1972230392600915767.a n = A221366 n

end A221366

/-! ## A221366.P3178506045893263186

`A221364(A042964(n+1))`
-/

namespace A221366.P3178506045893263186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A042964 (n + 1)).toNat

end

end A221366.P3178506045893263186

namespace A221366

/-- `A221364(A042964(n+1))` -/
def P3178506045893263186.Spec : Prop :=
  ∀ n, P3178506045893263186.a n = A221366 n

end A221366

/-! ## A221366.P5573191644816910730

`A001350(A266073(n+1))`
-/

namespace A221366.P5573191644816910730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (A266073 (n + 1)).toNat

end

end A221366.P5573191644816910730

namespace A221366

/-- `A001350(A266073(n+1))` -/
def P5573191644816910730.Spec : Prop :=
  ∀ n, P5573191644816910730.a n = A221366 n

end A221366

/-! ## A221366.P2115054357908370280

`A221364(A047546(n+1))`
-/

namespace A221366.P2115054357908370280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A047546 (n + 1)).toNat

end

end A221366.P2115054357908370280

namespace A221366

/-- `A221364(A047546(n+1))` -/
def P2115054357908370280.Spec : Prop :=
  ∀ n, P2115054357908370280.a n = A221366 n

end A221366

/-! ## A221366.P669565876014623730

`A221364(A047557(n+1))`
-/

namespace A221366.P669565876014623730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A047557 (n + 1)).toNat

end

end A221366.P669565876014623730

namespace A221366

/-- `A221364(A047557(n+1))` -/
def P669565876014623730.Spec : Prop :=
  ∀ n, P669565876014623730.a n = A221366 n

end A221366

/-! ## A221366.P15384534754596156178

`A221364(A053438(n+1))`
-/

namespace A221366.P15384534754596156178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A053438 (n + 1)).toNat

end

end A221366.P15384534754596156178

namespace A221366

/-- `A221364(A053438(n+1))` -/
def P15384534754596156178.Spec : Prop :=
  ∀ n, P15384534754596156178.a n = A221366 n

end A221366

/-! ## A221366.P833352248601834397

`A221364(A067016(n+1))`
-/

namespace A221366.P833352248601834397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A067016 (n + 1)).toNat

end

end A221366.P833352248601834397

namespace A221366

/-- `A221364(A067016(n+1))` -/
def P833352248601834397.Spec : Prop :=
  ∀ n, P833352248601834397.a n = A221366 n

end A221366

/-! ## A221366.P16422750173873386200

`A074392(A266724(n+1))`
-/

namespace A221366.P16422750173873386200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 (A266724 (n + 1)).toNat

end

end A221366.P16422750173873386200

namespace A221366

/-- `A074392(A266724(n+1))` -/
def P16422750173873386200.Spec : Prop :=
  ∀ n, P16422750173873386200.a n = A221366 n

end A221366

/-! ## A221366.P554194030805080047

`A221364(A266258(n+1))`
-/

namespace A221366.P554194030805080047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A266258 (n + 1)).toNat

end

end A221366.P554194030805080047

namespace A221366

/-- `A221364(A266258(n+1))` -/
def P554194030805080047.Spec : Prop :=
  ∀ n, P554194030805080047.a n = A221366 n

end A221366

/-! ## A221366.P5321676902118141965

`A221364(A266664(n+1))`
-/

namespace A221366.P5321676902118141965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 (A266664 (n + 1)).toNat

end

end A221366.P5321676902118141965

namespace A221366

/-- `A221364(A266664(n+1))` -/
def P5321676902118141965.Spec : Prop :=
  ∀ n, P5321676902118141965.a n = A221366 n

end A221366

/-!
# A221367: The simple continued fraction expansion of F(x) := Product_{n >= 0} (1 - x^(4*n+3))/(1 - x^(4*n+1)) when x = (1/2)*(9 - sqrt(77)).

The programs for A221367, the canonical program `A221367.P3301491653172227412` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221367 has offset 0).

The definition of A221367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221367.P1881770637153151386

`ogf((1+7x-9x^2+7x^3+x^4)/(1-10x^2+10x^4-x^6))`
-/

namespace A221367.P1881770637153151386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -9, 7, 1] [1, 0, -10, 0, 10, 0, -1] n

end

end A221367.P1881770637153151386

namespace A221367

/-- `ogf((1+7x-9x^2+7x^3+x^4)/(1-10x^2+10x^4-x^6))` -/
def P1881770637153151386.Spec : Prop :=
  ∀ n, P1881770637153151386.a n = A221367 n

end A221367

/-! ## A221367.P3301491653172227412

`10*a(n-2)-10*a(n-4)+a(n-6)` with `a(0)=1, a(1)=7, a(2)=1, a(3)=77, a(4)=1, a(5)=700`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221367

/-- `10*a(n-2)-10*a(n-4)+a(n-6)` -/
def P3301491653172227412.Spec : Prop :=
  ∀ n, P3301491653172227412.a n = A221367 n

theorem P3301491653172227412.correct : P3301491653172227412.Spec := by
  intro n
  simp only [A221367]

end A221367

/-!
# A221370: O.g.f.: Sum_{n>=0} n! * x^n * Product_{k=1..n} (k + x) / (1 + k^2*x + k*x^2).

The programs for A221370, there is no canonical definition to state claims against.
-/

/-! ## A221370.P2975729902205177134

`A006531(n)-A326728(A212804(2*n))`
-/

namespace A221370.P2975729902205177134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006531 n - A326728 (A212804 (2 * n)).toNat

end

end A221370.P2975729902205177134

/-!
# A221371: O.g.f.: Sum_{n>=0} n!^2 * x^n * Product_{k=1..n} (1 + x) / (1 + k^2*x + k^2*x^2).

The programs for A221371, there is no canonical definition to state claims against.
-/

/-! ## A221371.P4171543735997618655

`A327781(n)+A047253(A193098(n+1))`
-/

namespace A221371.P4171543735997618655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327781 n + A047253 (A193098 (n + 1)).toNat

end

end A221371.P4171543735997618655

/-! ## A221371.P7801973293363891530

`A011373(A345030(n+1))-A004197(n)`
-/

namespace A221371.P7801973293363891530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (A345030 (n + 1)).toNat - A004197 n

end

end A221371.P7801973293363891530

/-!
# A221374: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221374, the canonical program `A221374.P16246297649317527074` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221374 has offset 1).

The definition of A221374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221374.P385756564176312464

`∑[ogf((3-8x+4x^2)/(1-8x+4x^2))]`
-/

namespace A221374.P385756564176312464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 4] [1, -8, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221374.P385756564176312464

namespace A221374

/-- `∑[ogf((3-8x+4x^2)/(1-8x+4x^2))]` -/
def P385756564176312464.Spec : Prop :=
  ∀ n, P385756564176312464.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P5609751198784581332

`ogf((3-8x+4x^2)/(1-9x+12x^2-4x^3))`
-/

namespace A221374.P5609751198784581332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 4] [1, -9, 12, -4] n

end

end A221374.P5609751198784581332

namespace A221374

/-- `ogf((3-8x+4x^2)/(1-9x+12x^2-4x^3))` -/
def P5609751198784581332.Spec : Prop :=
  ∀ n, P5609751198784581332.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P6397962427917631065

`9*a(n-1)-12*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=19, a(2)=139`
-/

namespace A221374.P6397962427917631065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 19, 139] fun n a =>
  9 * a (n - 1) - 12 * a (n - 2) + 4 * a (n - 3)

end

end A221374.P6397962427917631065

namespace A221374

/-- `9*a(n-1)-12*a(n-2)+4*a(n-3)` -/
def P6397962427917631065.Spec : Prop :=
  ∀ n, P6397962427917631065.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P13527973249335590905

`A052948(2*(n+1))`
-/

namespace A221374.P13527973249335590905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 (2 * (n + 1))

end

end A221374.P13527973249335590905

namespace A221374

/-- `A052948(2*(n+1))` -/
def P13527973249335590905.Spec : Prop :=
  ∀ n, P13527973249335590905.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P12685489310560427121

`2*A077846(2*n)+1`
-/

namespace A221374.P12685489310560427121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077846 (2 * n) + 1

end

end A221374.P12685489310560427121

namespace A221374

/-- `2*A077846(2*n)+1` -/
def P12685489310560427121.Spec : Prop :=
  ∀ n, P12685489310560427121.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P12153058549739876552

`∑[A002605(2*(n+1))]+1`
-/

namespace A221374.P12153058549739876552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221374.P12153058549739876552

namespace A221374

/-- `∑[A002605(2*(n+1))]+1` -/
def P12153058549739876552.Spec : Prop :=
  ∀ n, P12153058549739876552.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P1749014221742011908

`∑[∑[A052945(2*n+1)]]+1`
-/

namespace A221374.P1749014221742011908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221374.P1749014221742011908

namespace A221374

/-- `∑[∑[A052945(2*n+1)]]+1` -/
def P1749014221742011908.Spec : Prop :=
  ∀ n, P1749014221742011908.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P8567064678251365372

`∑[A005665(2*n+1)]+n+2`
-/

namespace A221374.P8567064678251365372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005665 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)

end

end A221374.P8567064678251365372

namespace A221374

/-- `∑[A005665(2*n+1)]+n+2` -/
def P8567064678251365372.Spec : Prop :=
  ∀ n, P8567064678251365372.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P16763638705345153206

`∑[2^n*A052530(n+1)]+1`
-/

namespace A221374.P16763638705345153206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221374.P16763638705345153206

namespace A221374

/-- `∑[2^n*A052530(n+1)]+1` -/
def P16763638705345153206.Spec : Prop :=
  ∀ n, P16763638705345153206.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P14893968760035594136

`A057960(2*n)+A052945(2*n+1)`
-/

namespace A221374.P14893968760035594136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 (2 * n) + A052945 (2 * n + 1)

end

end A221374.P14893968760035594136

namespace A221374

/-- `A057960(2*n)+A052945(2*n+1)` -/
def P14893968760035594136.Spec : Prop :=
  ∀ n, P14893968760035594136.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P4246103284825928670

`∑[A152035(2*n+1)+A152035(2*n)]`
-/

namespace A221374.P4246103284825928670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152035 (2 * n + 1) + A152035 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221374.P4246103284825928670

namespace A221374

/-- `∑[A152035(2*n+1)+A152035(2*n)]` -/
def P4246103284825928670.Spec : Prop :=
  ∀ n, P4246103284825928670.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P1591260526903427650

`A057960(2*n+1)+A002605(2*n+1)`
-/

namespace A221374.P1591260526903427650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 (2 * n + 1) + A002605 (2 * n + 1)

end

end A221374.P1591260526903427650

namespace A221374

/-- `A057960(2*n+1)+A002605(2*n+1)` -/
def P1591260526903427650.Spec : Prop :=
  ∀ n, P1591260526903427650.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P1047654655282463173

`A052945(2*n+1)+A293005(2*n)+1`
-/

namespace A221374.P1047654655282463173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (2 * n + 1) + (A293005 (2 * n) + 1)

end

end A221374.P1047654655282463173

namespace A221374

/-- `A052945(2*n+1)+A293005(2*n)+1` -/
def P1047654655282463173.Spec : Prop :=
  ∀ n, P1047654655282463173.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P11510088555907067277

`∑[∑[A001835(n+1)]*A000079(n+1)]+1`
-/

namespace A221374.P11510088555907067277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221374.P11510088555907067277

namespace A221374

/-- `∑[∑[A001835(n+1)]*A000079(n+1)]+1` -/
def P11510088555907067277.Spec : Prop :=
  ∀ n, P11510088555907067277.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P15838863461637785462

`A026150(2*n+1)+A057960(2*n)+A026150(2*n)`
-/

namespace A221374.P15838863461637785462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (2 * n + 1) + (A057960 (2 * n) + A026150 (2 * n))

end

end A221374.P15838863461637785462

namespace A221374

/-- `A026150(2*n+1)+A057960(2*n)+A026150(2*n)` -/
def P15838863461637785462.Spec : Prop :=
  ∀ n, P15838863461637785462.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P8529785754105363174

`A005666(2*n+1)+A057960(2*n)-A005666(2*n)`
-/

namespace A221374.P8529785754105363174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 (2 * n + 1) + (A057960 (2 * n) - A005666 (2 * n))

end

end A221374.P8529785754105363174

namespace A221374

/-- `A005666(2*n+1)+A057960(2*n)-A005666(2*n)` -/
def P8529785754105363174.Spec : Prop :=
  ∀ n, P8529785754105363174.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P6514834846408271639

`A028859(2*n+1)+A057960(2*n)-A028859(2*n)`
-/

namespace A221374.P6514834846408271639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (2 * n + 1) + (A057960 (2 * n) - A028859 (2 * n))

end

end A221374.P6514834846408271639

namespace A221374

/-- `A028859(2*n+1)+A057960(2*n)-A028859(2*n)` -/
def P6514834846408271639.Spec : Prop :=
  ∀ n, P6514834846408271639.a n = A221374 (n + 1)

end A221374

/-! ## A221374.P16246297649317527074

`(1+(4-2*sqrt(3))^(n+1)+(2*(2+sqrt(3)))^(n+1))/3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221374

/-- `(1+(4-2*sqrt(3))^(n+1)+(2*(2+sqrt(3)))^(n+1))/3` -/
def P16246297649317527074.Spec : Prop :=
  ∀ n, P16246297649317527074.a n = (A221374 (n + 1) : ℝ)

end A221374

/-! ## A221374.P6656190560553090772

`A057960(2*n+3)-A026150(2*n+3)`
-/

namespace A221374.P6656190560553090772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 (2 * n + 3) - A026150 (2 * n + 3)

end

end A221374.P6656190560553090772

namespace A221374

/-- `A057960(2*n+3)-A026150(2*n+3)` -/
def P6656190560553090772.Spec : Prop :=
  ∀ n, P6656190560553090772.a n = A221374 (n + 1)

end A221374

/-!
# A221375: Number of n X 3 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221375, there is no canonical definition to state claims against.
-/

/-! ## A221375.P577526204378486063

`A221378(∑[n+2]+4)`
-/

namespace A221375.P577526204378486063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221375.P577526204378486063

/-! ## A221375.P15866230547957988157

`lcm((-1)^n, A221378(A167614(n+1)))`
-/

namespace A221375.P15866230547957988157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A221378 (A167614 (n + 1)).toNat)

end

end A221375.P15866230547957988157

/-! ## A221375.P4404431138170114794

`A221378(A167614(n+1))+A033483(n)`
-/

namespace A221375.P4404431138170114794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (A167614 (n + 1)).toNat + A033483 n

end

end A221375.P4404431138170114794

/-! ## A221375.P2515118701996057812

`A221378(A167614(n+1))+A059995(n)`
-/

namespace A221375.P2515118701996057812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (A167614 (n + 1)).toNat + A059995 n

end

end A221375.P2515118701996057812

/-! ## A221375.P16914999432401214915

`A221378(A167614(n+1))+A084904(n)`
-/

namespace A221375.P16914999432401214915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (A167614 (n + 1)).toNat + A084904 n

end

end A221375.P16914999432401214915

/-!
# A221376: Number of n X 4 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221376, there is no canonical definition to state claims against.
-/

/-! ## A221376.P10263426948820564687

`A221378(A141214(n)+7)`
-/

namespace A221376.P10263426948820564687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (A141214 n + 7).toNat

end

end A221376.P10263426948820564687

/-! ## A221376.P18140046509894855274

`A221378(A052905(n)+9)`
-/

namespace A221376.P18140046509894855274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (A052905 n + 9).toNat

end

end A221376.P18140046509894855274

/-! ## A221376.P4276450109507833022

`A221378(A055999(n)+10)`
-/

namespace A221376.P4276450109507833022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (A055999 n + 10).toNat

end

end A221376.P4276450109507833022

/-! ## A221376.P17380457364202978493

`A221378(eq[5, A066657(n)])`
-/

namespace A221376.P17380457364202978493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221376.P17380457364202978493

/-! ## A221376.P9890270767217527692

`A221378(A167614(n+2)+1)`
-/

namespace A221376.P9890270767217527692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (A167614 (n + 2) + 1).toNat

end

end A221376.P9890270767217527692

/-!
# A221377: Number of n X 5 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221377, there is no canonical definition to state claims against.
-/

/-! ## A221377.P11241085657924078313

`A221378(∑[n+4]+11)`
-/

namespace A221377.P11241085657924078313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A221377.P11241085657924078313

/-! ## A221377.P9729048096560655661

`A040001(A219924(n))*A221378(A167499(n+3))`
-/

namespace A221377.P9729048096560655661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A219924 n).toNat * A221378 (A167499 (n + 3)).toNat

end

end A221377.P9729048096560655661

/-! ## A221377.P14721377248641903659

`A040001(A032917(n+1))*A221378(A167499(n+3))`
-/

namespace A221377.P14721377248641903659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A032917 (n + 1)).toNat * A221378 (A167499 (n + 3)).toNat

end

end A221377.P14721377248641903659

/-! ## A221377.P17065873959652509516

`A040001(A046528(n+1))*A221378(A167499(n+3))`
-/

namespace A221377.P17065873959652509516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A046528 (n + 1)).toNat * A221378 (A167499 (n + 3)).toNat

end

end A221377.P17065873959652509516

/-!
# A221378: T(n,k)=Number of n X k arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221378, there is no canonical definition to state claims against.
-/

/-! ## A221378.P9672117134132726252

`A130446(A221303(n+1))`
-/

namespace A221378.P9672117134132726252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A221303 (n + 1)).toNat

end

end A221378.P9672117134132726252

/-! ## A221378.P17011000927689886070

`A221303(n+1)+A215702(A099594(n))`
-/

namespace A221378.P17011000927689886070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (n + 1) + A215702 (A099594 n).toNat

end

end A221378.P17011000927689886070

/-! ## A221378.P4532925992444582048

`A221303(n+1)+A215702(A154867(n))`
-/

namespace A221378.P4532925992444582048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (n + 1) + A215702 (A154867 n).toNat

end

end A221378.P4532925992444582048

/-! ## A221378.P8924336357802592104

`A221303(n+1)+A215702(A155971(n))`
-/

namespace A221378.P8924336357802592104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (n + 1) + A215702 (A155971 n).toNat

end

end A221378.P8924336357802592104

/-!
# A221380: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221380, there is no canonical definition to state claims against.
-/

/-! ## A221380.P3226465148442270739

`A221381(A052905(n+3))`
-/

namespace A221380.P3226465148442270739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221381 (A052905 (n + 3)).toNat

end

end A221380.P3226465148442270739

/-! ## A221380.P2337690259132358814

`A221381(eq[5, A193592(n)])`
-/

namespace A221380.P2337690259132358814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221380.P2337690259132358814

/-! ## A221380.P12520261920932072300

`A221381(eq[6, A200370(n+1)])`
-/

namespace A221380.P12520261920932072300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221380.P12520261920932072300

/-! ## A221380.P17093499694919820045

`A221381(eq[8, A185782(n+1)])`
-/

namespace A221380.P17093499694919820045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221380.P17093499694919820045

/-! ## A221380.P4456521516311484965

`A221381(Δ[Δ[A006504(n+1)]])`
-/

namespace A221380.P4456521516311484965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221381 (f1 (n + 1) - f1 n).toNat

end

end A221380.P4456521516311484965

/-!
# A221381: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221381, there is no canonical definition to state claims against.
-/

/-! ## A221381.P5345877574707909102

`dr(A135814(A046741(n+1)))`
-/

namespace A221381.P5345877574707909102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A135814 (A046741 (n + 1)).toNat)

end

end A221381.P5345877574707909102

/-! ## A221381.P9079221533272626201

`A181613(2*n+3)%A336013(2*(n+1))`
-/

namespace A221381.P9079221533272626201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181613 (2 * n + 3)) (A336013 (2 * (n + 1)))

end

end A221381.P9079221533272626201

/-! ## A221381.P7662294642055499305

`and(A037954(A095043(n+1)), A059045(n))`
-/

namespace A221381.P7662294642055499305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037954 (A095043 (n + 1)).toNat) (A059045 n)

end

end A221381.P7662294642055499305

/-! ## A221381.P5317180195588995532

`and(A037954(A095043(n+1)), A106800(n))`
-/

namespace A221381.P5317180195588995532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037954 (A095043 (n + 1)).toNat) (A106800 n)

end

end A221381.P5317180195588995532

/-! ## A221381.P2661134631679374902

`A355851(A226422(n+2))`
-/

namespace A221381.P2661134631679374902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355851 (A226422 (n + 2)).toNat

end

end A221381.P2661134631679374902

/-!
# A221382: Number of 4 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221382, there is no canonical definition to state claims against.
-/

/-! ## A221382.P14981925486105089149

`A221381(∑[n+3]+7)`
-/

namespace A221382.P14981925486105089149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221381 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221382.P14981925486105089149

/-!
# A221383: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221383, there is no canonical definition to state claims against.
-/

/-! ## A221383.P2636540871073743601

`A221388(∑[4*n]+1)`
-/

namespace A221383.P2636540871073743601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221383.P2636540871073743601

/-! ## A221383.P15246084543892458472

`and(-1, A221388(A001844(n)))`
-/

namespace A221383.P15246084543892458472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221388 (A001844 n).toNat)

end

end A221383.P15246084543892458472

/-! ## A221383.P6126940653562502214

`A221388(A001844(n))+A011738(n)`
-/

namespace A221383.P6126940653562502214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A001844 n).toNat + A011738 n

end

end A221383.P6126940653562502214

/-! ## A221383.P13108706733204878801

`A221388(A001844(n))+A219905(n)`
-/

namespace A221383.P13108706733204878801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A001844 n).toNat + A219905 n

end

end A221383.P13108706733204878801

/-!
# A221384: Number of nX4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221384, there is no canonical definition to state claims against.
-/

/-! ## A221384.P13396145905923233655

`A221388(A141214(n+1))`
-/

namespace A221384.P13396145905923233655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A141214 (n + 1)).toNat

end

end A221384.P13396145905923233655

/-! ## A221384.P14624608678479356425

`A221388(A155212(n)+5)`
-/

namespace A221384.P14624608678479356425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A155212 n + 5).toNat

end

end A221384.P14624608678479356425

/-! ## A221384.P11157544783579879988

`A221388(eq[2, A152157(n)])`
-/

namespace A221384.P11157544783579879988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221384.P11157544783579879988

/-! ## A221384.P1739577985649879957

`A221388(eq[3, A193592(n)])`
-/

namespace A221384.P1739577985649879957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221384.P1739577985649879957

/-! ## A221384.P14780155885760923499

`A221388(A052905(n+1)+2)`
-/

namespace A221384.P14780155885760923499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A052905 (n + 1) + 2).toNat

end

end A221384.P14780155885760923499

/-!
# A221385: Number of nX5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221385, there is no canonical definition to state claims against.
-/

/-! ## A221385.P9921496759477957116

`A221388(Δ[A264443(n)])`
-/

namespace A221385.P9921496759477957116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (f1 (n + 1) - f1 n).toNat

end

end A221385.P9921496759477957116

/-! ## A221385.P14112231179409092696

`A221388(A046691(n+3))`
-/

namespace A221385.P14112231179409092696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A046691 (n + 3)).toNat

end

end A221385.P14112231179409092696

/-! ## A221385.P3472736849721000108

`A221388(A056115(n)+11)`
-/

namespace A221385.P3472736849721000108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A056115 n + 11).toNat

end

end A221385.P3472736849721000108

/-! ## A221385.P1492530653928919060

`A221388(eq[3, A152157(n)])`
-/

namespace A221385.P1492530653928919060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221385.P1492530653928919060

/-! ## A221385.P9062438582136549224

`A221388(eq[4, A193592(n)])`
-/

namespace A221385.P9062438582136549224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221385.P9062438582136549224

/-!
# A221386: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221386, there is no canonical definition to state claims against.
-/

/-! ## A221386.P4535280700136971511

`A221388(A052905(n+3))`
-/

namespace A221386.P4535280700136971511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A052905 (n + 3)).toNat

end

end A221386.P4535280700136971511

/-! ## A221386.P10424467582906137024

`A221388(eq[3, A219347(n)])`
-/

namespace A221386.P10424467582906137024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221386.P10424467582906137024

/-! ## A221386.P3853589784408828401

`A221388(eq[5, A152157(n)])`
-/

namespace A221386.P3853589784408828401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221386.P3853589784408828401

/-! ## A221386.P5189553414531916770

`A221388(eq[5, A193592(n)])`
-/

namespace A221386.P5189553414531916770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221386.P5189553414531916770

/-! ## A221386.P9383259608704882553

`A221388(A055999(n+3)+1)`
-/

namespace A221386.P9383259608704882553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A055999 (n + 3) + 1).toNat

end

end A221386.P9383259608704882553

/-!
# A221387: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221387, there is no canonical definition to state claims against.
-/

/-! ## A221387.P6203978416015803436

`A221388(A055999(n+4))`
-/

namespace A221387.P6203978416015803436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A055999 (n + 4)).toNat

end

end A221387.P6203978416015803436

/-! ## A221387.P14532006742525546610

`A221388(A056121(n)+22)`
-/

namespace A221387.P14532006742525546610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A056121 n + 22).toNat

end

end A221387.P14532006742525546610

/-! ## A221387.P4624071916116091093

`A221388(eq[4, A219347(n)])`
-/

namespace A221387.P4624071916116091093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221387.P4624071916116091093

/-! ## A221387.P7408951197092135155

`A221388(eq[5, A332954(n)])`
-/

namespace A221387.P7408951197092135155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221387.P7408951197092135155

/-! ## A221387.P3955851281010906166

`A221388(eq[6, A193592(n)])`
-/

namespace A221387.P3955851281010906166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221387.P3955851281010906166

/-!
# A221388: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221388, there is no canonical definition to state claims against.
-/

/-! ## A221388.P15979780084334781245

`A325705(3*n+1)%A185620(n)`
-/

namespace A221388.P15979780084334781245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325705 (3 * n + 1)) (A185620 n)

end

end A221388.P15979780084334781245

/-! ## A221388.P8492735394628657698

`A221114(n+1)-A217155(A174038(n))`
-/

namespace A221388.P8492735394628657698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (n + 1) - A217155 (A174038 n).toNat

end

end A221388.P8492735394628657698

/-! ## A221388.P15029475594442561556

`A221114(n+1)/A326622(A049332(n))`
-/

namespace A221388.P15029475594442561556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221114 (n + 1) : ℚ) / (A326622 (A049332 n).toNat : ℚ)

end

end A221388.P15029475594442561556

/-! ## A221388.P5751432426097175956

`A221114(n+1)/A111459(A321312(n))`
-/

namespace A221388.P5751432426097175956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221114 (n + 1) : ℚ) / (A111459 (A321312 n).toNat : ℚ)

end

end A221388.P5751432426097175956

/-! ## A221388.P4332176583996784322

`A221114(n+1)/A257679(A349210(n))`
-/

namespace A221388.P4332176583996784322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221114 (n + 1) : ℚ) / (A257679 (A349210 (n + 21)).toNat : ℚ)

end

end A221388.P4332176583996784322

/-!
# A221389: Number of 3 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221389, there is no canonical definition to state claims against.
-/

/-! ## A221389.P9439753291372621986

`A221388(∑[n+2]+4)`
-/

namespace A221389.P9439753291372621986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221389.P9439753291372621986

/-! ## A221389.P6413038974700673646

`A221388(A167614(n+1))+A014083(n)`
-/

namespace A221389.P6413038974700673646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A167614 (n + 1)).toNat + A014083 n

end

end A221389.P6413038974700673646

/-! ## A221389.P12047603767140484544

`A221388(A167614(n+1))+A025444(n)`
-/

namespace A221389.P12047603767140484544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A167614 (n + 1)).toNat + A025444 n

end

end A221389.P12047603767140484544

/-! ## A221389.P5242802177256198135

`A057427(n)*A221388(A167614(n+1))`
-/

namespace A221389.P5242802177256198135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A221388 (A167614 (n + 1)).toNat

end

end A221389.P5242802177256198135

/-! ## A221389.P8984899387647242507

`A221388(A167614(n+1))%A016181(n)`
-/

namespace A221389.P8984899387647242507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221388 (A167614 (n + 1)).toNat) (A016181 n)

end

end A221389.P8984899387647242507

/-!
# A221390: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221390, there is no canonical definition to state claims against.
-/

/-! ## A221390.P9346220469987341492

`A221388(A141214(n)+7)`
-/

namespace A221390.P9346220469987341492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A141214 n + 7).toNat

end

end A221390.P9346220469987341492

/-! ## A221390.P6537064922407600317

`A221388(A052905(n)+9)`
-/

namespace A221390.P6537064922407600317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A052905 n + 9).toNat

end

end A221390.P6537064922407600317

/-! ## A221390.P7145576330926268477

`A221388(A055999(n)+10)`
-/

namespace A221390.P7145576330926268477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A055999 n + 10).toNat

end

end A221390.P7145576330926268477

/-! ## A221390.P8000150845291365036

`A221388(eq[5, A066657(n)])`
-/

namespace A221390.P8000150845291365036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221390.P8000150845291365036

/-! ## A221390.P6496560579536943683

`A221388(A167614(n+2)+1)`
-/

namespace A221390.P6496560579536943683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A167614 (n + 2) + 1).toNat

end

end A221390.P6496560579536943683

/-!
# A221391: Number of 5Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221391, there is no canonical definition to state claims against.
-/

/-! ## A221391.P18381097680340765035

`A221388(A167499(n+3))`
-/

namespace A221391.P18381097680340765035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A167499 (n + 3)).toNat

end

end A221391.P18381097680340765035

/-! ## A221391.P13110809497473089377

`A221388(A155212(n)+13)`
-/

namespace A221391.P13110809497473089377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A155212 n + 13).toNat

end

end A221391.P13110809497473089377

/-! ## A221391.P17800390707127156301

`A221388(A056000(n)+15)`
-/

namespace A221391.P17800390707127156301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A056000 n + 15).toNat

end

end A221391.P17800390707127156301

/-! ## A221391.P12558876850069857697

`A221388(eq[7, A066657(n)])`
-/

namespace A221391.P12558876850069857697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221391.P12558876850069857697

/-! ## A221391.P10735587224066522878

`A221388(A145018(n+5)+1)`
-/

namespace A221391.P10735587224066522878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A145018 (n + 5) + 1).toNat

end

end A221391.P10735587224066522878

/-!
# A221392: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221392, there is no canonical definition to state claims against.
-/

/-! ## A221392.P12867349971986865349

`A221388(A166136(n+4))`
-/

namespace A221392.P12867349971986865349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A166136 (n + 4)).toNat

end

end A221392.P12867349971986865349

/-! ## A221392.P6172742752329284039

`A221388(A056115(n)+21)`
-/

namespace A221392.P6172742752329284039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A056115 n + 21).toNat

end

end A221392.P6172742752329284039

/-! ## A221392.P16179889204438800633

`A221388(A000217(n+5)+6)`
-/

namespace A221392.P16179889204438800633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A000217 (n + 5) + 6).toNat

end

end A221392.P16179889204438800633

/-! ## A221392.P4089202599500071420

`A221388(eq[6, A130270(n+1)])`
-/

namespace A221392.P4089202599500071420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221392.P4089202599500071420

/-! ## A221392.P12994964414596931629

`A221388(eq[7, A131818(n+1)])`
-/

namespace A221392.P12994964414596931629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221392.P12994964414596931629

/-!
# A221393: Number of 7 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221393, there is no canonical definition to state claims against.
-/

/-! ## A221393.P4778347998627307615

`A221388(A056119(n)+28)`
-/

namespace A221393.P4778347998627307615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A056119 n + 28).toNat

end

end A221393.P4778347998627307615

/-! ## A221393.P4563294826463253703

`A221388(eq[11, A066657(n)])`
-/

namespace A221393.P4563294826463253703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221393.P4563294826463253703

/-! ## A221393.P14747323225448623090

`A221388(A166136(n+5)+1)`
-/

namespace A221393.P14747323225448623090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A166136 (n + 5) + 1).toNat

end

end A221393.P14747323225448623090

/-! ## A221393.P13056249632922796519

`A221388(A253145(n+5)+7)`
-/

namespace A221393.P13056249632922796519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (A253145 (n + 5) + 7).toNat

end

end A221393.P13056249632922796519

/-! ## A221393.P11315977870605046386

`A221388(eq[8, A131818(n+1)])`
-/

namespace A221393.P11315977870605046386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221393.P11315977870605046386

/-!
# A221394: Number of n X 3 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221394, there is no canonical definition to state claims against.
-/

/-! ## A221394.P58705109408026968

`A221396(∑[n+2]+4)`
-/

namespace A221394.P58705109408026968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221394.P58705109408026968

/-! ## A221394.P16704434736551126261

`n%2*A221396(A167614(n+1))`
-/

namespace A221394.P16704434736551126261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A221396 (A167614 (n + 1)).toNat

end

end A221394.P16704434736551126261

/-! ## A221394.P1018213263097613964

`A221396(A167614(n+1))+A033665(n)`
-/

namespace A221394.P1018213263097613964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (A167614 (n + 1)).toNat + A033665 n

end

end A221394.P1018213263097613964

/-! ## A221394.P18225529854849172104

`A221396(A167614(n+1))+A059995(n)`
-/

namespace A221394.P18225529854849172104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (A167614 (n + 1)).toNat + A059995 n

end

end A221394.P18225529854849172104

/-! ## A221394.P8671835485968264859

`A221396(A167614(n+1))+A084904(n)`
-/

namespace A221394.P8671835485968264859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (A167614 (n + 1)).toNat + A084904 n

end

end A221394.P8671835485968264859

/-!
# A221395: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221395, there is no canonical definition to state claims against.
-/

/-! ## A221395.P14678933819527844858

`A221396(∑[n+3]+7)`
-/

namespace A221395.P14678933819527844858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221395.P14678933819527844858

/-! ## A221395.P18236994634882949357

`A221396(A055999(n)+10)+A025438(n)`
-/

namespace A221395.P18236994634882949357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (A055999 n + 10).toNat + A025438 n

end

end A221395.P18236994634882949357

/-! ## A221395.P1349349891434453449

`A221396(A055999(n)+10)*A250261(n)`
-/

namespace A221395.P1349349891434453449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (A055999 n + 10).toNat * A250261 n

end

end A221395.P1349349891434453449

/-! ## A221395.P1722138565678052531

`A221396(A055999(n)+10)*A250285(n)`
-/

namespace A221395.P1722138565678052531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (A055999 n + 10).toNat * A250285 n

end

end A221395.P1722138565678052531

/-!
# A221396: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221396, there is no canonical definition to state claims against.
-/

/-! ## A221396.P13126914525761850024

`A354581(A221408(n+1))`
-/

namespace A221396.P13126914525761850024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A221408 (n + 1)).toNat

end

end A221396.P13126914525761850024

/-! ## A221396.P7800637696902293507

`A354581(A295214(n+1))`
-/

namespace A221396.P7800637696902293507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A295214 (n + 1)).toNat

end

end A221396.P7800637696902293507

/-! ## A221396.P5913139263002863375

`A221337(n+1)-A140202(A282441(n+1))`
-/

namespace A221396.P5913139263002863375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221337 (n + 1) - A140202 (A282441 (n + 1)).toNat

end

end A221396.P5913139263002863375

/-!
# A221397: Number of n X 3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221397, the canonical program `A221397.P1137051576987516554` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221397 has offset 1).

The definition of A221397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221397.P13642636072642070645

`ogf((6x-6x^2)/(1-6x+6x^2+2x^3))`
-/

namespace A221397.P13642636072642070645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -6] [1, -6, 6, 2] n

end

end A221397.P13642636072642070645

namespace A221397

/-- `ogf((6x-6x^2)/(1-6x+6x^2+2x^3))` -/
def P13642636072642070645.Spec : Prop :=
  ∀ n, P13642636072642070645.a n = A221397 (n + 1)

end A221397

/-! ## A221397.P1137051576987516554

`6*a(n-1)-6*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=6, a(2)=30`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221397

/-- `6*a(n-1)-6*a(n-2)-2*a(n-3)` -/
def P1137051576987516554.Spec : Prop :=
  ∀ n, P1137051576987516554.a n = A221397 (n + 1)

theorem P1137051576987516554.correct : P1137051576987516554.Spec := by
  intro n
  simp only [A221397, Nat.add_sub_cancel]

end A221397

/-! ## A221397.P1754811661524990647

`A221400(∑[n+3]+1)`
-/

namespace A221397.P1754811661524990647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221397.P1754811661524990647

namespace A221397

/-- `A221400(∑[n+3]+1)` -/
def P1754811661524990647.Spec : Prop :=
  ∀ n, P1754811661524990647.a n = A221397 (n + 1)

end A221397

/-! ## A221397.P7420834629398235471

`record[A221400(A130297(n+1))]`
-/

namespace A221397.P7420834629398235471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221397.P7420834629398235471

namespace A221397

/-- `record[A221400(A130297(n+1))]` -/
def P7420834629398235471.Spec : Prop :=
  ∀ n, P7420834629398235471.a n = A221397 (n + 1)

end A221397

/-!
# A221398: Number of nX4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221398, there is no canonical definition to state claims against.
-/

/-! ## A221398.P13193081350119441610

`A221400(∑[n+4]+3)`
-/

namespace A221398.P13193081350119441610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221398.P13193081350119441610

/-! ## A221398.P15343219886899169508

`record[A221400(A141214(n))-char[1]]`
-/

namespace A221398.P15343219886899169508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (A141214 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221398.P15343219886899169508

/-! ## A221398.P12922731037787208041

`record[A221400(record[A053000(3*n+1)])]`
-/

namespace A221398.P12922731037787208041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221398.P12922731037787208041

/-!
# A221399: Number of nX5 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221399, there is no canonical definition to state claims against.
-/

/-! ## A221399.P16985366348121918426

`A221400(Δ[A264443(n)])`
-/

namespace A221399.P16985366348121918426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (f1 (n + 1) - f1 n).toNat

end

end A221399.P16985366348121918426

/-! ## A221399.P16477853807234003523

`A221400(A168104(n)-4)`
-/

namespace A221399.P16477853807234003523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (A168104 n - 4).toNat

end

end A221399.P16477853807234003523

