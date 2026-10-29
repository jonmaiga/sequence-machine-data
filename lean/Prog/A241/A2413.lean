import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019

/-!
# A241300: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241300, there is no canonical definition to state claims against.
-/

/-! ## A241300.P1527724248684791521

`A241306(∑[4*n]+1)`
-/

namespace A241300.P1527724248684791521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241300.P1527724248684791521

/-! ## A241300.P9516442302171206984

`record[A241306(Δ[A235355(n)])]`
-/

namespace A241300.P9516442302171206984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241300.P9516442302171206984

/-! ## A241300.P10802354438412096320

`and(-1, A241306(A001844(n)))`
-/

namespace A241300.P10802354438412096320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A241306 (A001844 n).toNat)

end

end A241300.P10802354438412096320

/-! ## A241300.P12723839329312754543

`record[A003982(n)*A241306(n+1)]`
-/

namespace A241300.P12723839329312754543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A241306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241300.P12723839329312754543

/-!
# A241301: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241301, the canonical program `A241301.P9412289987782568083` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241301 has offset 1).

The definition of A241301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241301.P7576319195510438399

`ogf((2+6x+2x^2-2x^3-2x^4)/(1-2x^2-x^3+x^5))`
-/

namespace A241301.P7576319195510438399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 2, -2, -2] [1, 0, -2, -1, 0, 1] n

end

end A241301.P7576319195510438399

namespace A241301

/-- `ogf((2+6x+2x^2-2x^3-2x^4)/(1-2x^2-x^3+x^5))` -/
def P7576319195510438399.Spec : Prop :=
  ∀ n, P7576319195510438399.a n = A241301 (n + 1)

end A241301

/-! ## A241301.P9412289987782568083

`2*a(n-2)+a(n-3)-a(n-5)` with `a(0)=2, a(1)=6, a(2)=6, a(3)=12, a(4)=16`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241301

/-- `2*a(n-2)+a(n-3)-a(n-5)` -/
def P9412289987782568083.Spec : Prop :=
  ∀ n, P9412289987782568083.a n = A241301 (n + 1)

theorem P9412289987782568083.correct : P9412289987782568083.Spec := by
  intro n
  simp only [A241301, Nat.add_sub_cancel]

end A241301

/-! ## A241301.P2169129791564549497

`A241306(∑[n+2])`
-/

namespace A241301.P2169129791564549497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241301.P2169129791564549497

namespace A241301

/-- `A241306(∑[n+2])` -/
def P2169129791564549497.Spec : Prop :=
  ∀ n, P2169129791564549497.a n = A241301 (n + 1)

end A241301

/-! ## A241301.P18056836267287351823

`lcm(2, A241306(A000096(n+1)))`
-/

namespace A241301.P18056836267287351823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A241306 (A000096 (n + 1)).toNat)

end

end A241301.P18056836267287351823

namespace A241301

/-- `lcm(2, A241306(A000096(n+1)))` -/
def P18056836267287351823.Spec : Prop :=
  ∀ n, (P18056836267287351823.a n : ℤ) = A241301 (n + 1)

end A241301

/-! ## A241301.P11378299727025313766

`A057427(n+1)*A241306(A000096(n+1))`
-/

namespace A241301.P11378299727025313766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A241306 (A000096 (n + 1)).toNat

end

end A241301.P11378299727025313766

namespace A241301

/-- `A057427(n+1)*A241306(A000096(n+1))` -/
def P11378299727025313766.Spec : Prop :=
  ∀ n, P11378299727025313766.a n = A241301 (n + 1)

end A241301

/-!
# A241302: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241302, there is no canonical definition to state claims against.
-/

/-! ## A241302.P5669202637744029942

`A241306(∑[n+3]+1)`
-/

namespace A241302.P5669202637744029942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241302.P5669202637744029942

/-! ## A241302.P10203062677031277404

`A241306(A034856(n+2))%A017588(n)`
-/

namespace A241302.P10203062677031277404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241306 (A034856 (n + 2)).toNat) (A017588 n)

end

end A241302.P10203062677031277404

/-!
# A241303: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241303, there is no canonical definition to state claims against.
-/

/-! ## A241303.P12386744832491680556

`A241306(Δ[n²]+∑[n+2]+4)`
-/

namespace A241303.P12386744832491680556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A241303.P12386744832491680556

/-! ## A241303.P6397822816192045332

`A057427(n+1)*A241306(A141214(n+1))`
-/

namespace A241303.P6397822816192045332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A241306 (A141214 (n + 1)).toNat

end

end A241303.P6397822816192045332

/-! ## A241303.P15574721309698634879

`A241306(A141214(n+1))%A241304(n+1)`
-/

namespace A241303.P15574721309698634879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241306 (A141214 (n + 1)).toNat) (A241304 (n + 1))

end

end A241303.P15574721309698634879

/-!
# A241304: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241304, there is no canonical definition to state claims against.
-/

/-! ## A241304.P17194990208237127810

`A241306(∑[n+5]+6)`
-/

namespace A241304.P17194990208237127810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A241304.P17194990208237127810

/-!
# A241305: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241305, there is no canonical definition to state claims against.
-/

/-! ## A241305.P14561801548225484294

`A241306(A052905(n+3))`
-/

namespace A241305.P14561801548225484294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A052905 (n + 3)).toNat

end

end A241305.P14561801548225484294

/-! ## A241305.P14535202195709393782

`A241306(A056119(n)+16)`
-/

namespace A241305.P14535202195709393782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A056119 n + 16).toNat

end

end A241305.P14535202195709393782

/-! ## A241305.P12602189323859117629

`A241306(eq[3, A219347(n)])`
-/

namespace A241305.P12602189323859117629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241305.P12602189323859117629

/-! ## A241305.P14841134202295806536

`A241306(eq[5, A193592(n)])`
-/

namespace A241305.P14841134202295806536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241305.P14841134202295806536

/-! ## A241305.P18101526680036700602

`A241306(eq[8, A258709(n)])`
-/

namespace A241305.P18101526680036700602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241305.P18101526680036700602

/-!
# A241307: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241307, there is no canonical definition to state claims against.
-/

/-! ## A241307.P14262901227513211592

`A241306(∑[n+1]+2)`
-/

namespace A241307.P14262901227513211592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241307.P14262901227513211592

/-! ## A241307.P6547427802037524378

`record[A023531(n)*A241306(n+3)]`
-/

namespace A241307.P6547427802037524378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A241306 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241307.P6547427802037524378

/-! ## A241307.P17249233587595700552

`A241306(A252460(2*(n+2)))+char[16]`
-/

namespace A241307.P17249233587595700552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A252460 (2 * (n + 2))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241307.P17249233587595700552

/-! ## A241307.P3342473940064202006

`record[gcd(A097805(n+1), A241306(n+3))]`
-/

namespace A241307.P3342473940064202006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 (n + 1)) (A241306 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241307.P3342473940064202006

/-!
# A241308: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241308, there is no canonical definition to state claims against.
-/

/-! ## A241308.P15241859144592866803

`A241306(∑[n+2]+4)`
-/

namespace A241308.P15241859144592866803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241308.P15241859144592866803

/-! ## A241308.P17597543671465005050

`lcm((-1)^n, A241306(A167614(n+1)))`
-/

namespace A241308.P17597543671465005050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A241306 (A167614 (n + 1)).toNat)

end

end A241308.P17597543671465005050

/-! ## A241308.P12976674780641806212

`A241306(A167614(n+1))+A025438(n)`
-/

namespace A241308.P12976674780641806212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A167614 (n + 1)).toNat + A025438 n

end

end A241308.P12976674780641806212

/-! ## A241308.P5003025370308823186

`A241306(A167614(n+1))+A025442(n)`
-/

namespace A241308.P5003025370308823186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A167614 (n + 1)).toNat + A025442 n

end

end A241308.P5003025370308823186

/-! ## A241308.P9806799070297732771

`A241306(A167614(n+1))+A178798(n)`
-/

namespace A241308.P9806799070297732771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A167614 (n + 1)).toNat + A178798 n

end

end A241308.P9806799070297732771

/-!
# A241309: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241309, there is no canonical definition to state claims against.
-/

/-! ## A241309.P4108504274184277408

`A241306(A141214(n)+7)`
-/

namespace A241309.P4108504274184277408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A141214 n + 7).toNat

end

end A241309.P4108504274184277408

/-! ## A241309.P15796618448000953718

`A241306(A052905(n)+9)`
-/

namespace A241309.P15796618448000953718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A052905 n + 9).toNat

end

end A241309.P15796618448000953718

/-! ## A241309.P13776515393873325254

`A241306(A055999(n)+10)`
-/

namespace A241309.P13776515393873325254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A055999 n + 10).toNat

end

end A241309.P13776515393873325254

/-! ## A241309.P2459651140304651367

`A241306(eq[5, A066657(n)])`
-/

namespace A241309.P2459651140304651367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241309.P2459651140304651367

/-! ## A241309.P2591134248073599690

`A241306(Δ[A005586(n)]+5)`
-/

namespace A241309.P2591134248073599690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (f1 (n + 1) - f1 n + 5).toNat

end

end A241309.P2591134248073599690

/-!
# A241310: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241310, there is no canonical definition to state claims against.
-/

/-! ## A241310.P10727016560921872531

`A241306(A167499(n+3))`
-/

namespace A241310.P10727016560921872531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A167499 (n + 3)).toNat

end

end A241310.P10727016560921872531

/-! ## A241310.P15048938271570514917

`A241306(A155212(n)+13)`
-/

namespace A241310.P15048938271570514917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A155212 n + 13).toNat

end

end A241310.P15048938271570514917

/-! ## A241310.P1760302277953153077

`A241306(A056000(n)+15)`
-/

namespace A241310.P1760302277953153077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A056000 n + 15).toNat

end

end A241310.P1760302277953153077

/-! ## A241310.P14010218641985420457

`A241306(eq[7, A066657(n)])`
-/

namespace A241310.P14010218641985420457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241310.P14010218641985420457

/-! ## A241310.P7153295949180330309

`A241306(A166136(n+3)-1)`
-/

namespace A241310.P7153295949180330309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A166136 (n + 3) - 1).toNat

end

end A241310.P7153295949180330309

/-!
# A241311: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241311, there is no canonical definition to state claims against.
-/

/-! ## A241311.P12582708214966431459

`A241306(A166136(n+4))`
-/

namespace A241311.P12582708214966431459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A166136 (n + 4)).toNat

end

end A241311.P12582708214966431459

/-! ## A241311.P9075584350636896755

`A241306(A056115(n)+21)`
-/

namespace A241311.P9075584350636896755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A056115 n + 21).toNat

end

end A241311.P9075584350636896755

/-! ## A241311.P9299909165941912887

`A241306(A167499(n+4)+1)`
-/

namespace A241311.P9299909165941912887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A167499 (n + 4) + 1).toNat

end

end A241311.P9299909165941912887

/-! ## A241311.P6001070354671695888

`A241306(A167487(n+4)-1)`
-/

namespace A241311.P6001070354671695888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A167487 (n + 4) - 1).toNat

end

end A241311.P6001070354671695888

/-! ## A241311.P12513776785957381709

`A241306(A167614(n+4)+3)`
-/

namespace A241311.P12513776785957381709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241306 (A167614 (n + 4) + 3).toNat

end

end A241311.P12513776785957381709

/-!
# A241312: Number of partitions p of n into distinct parts, including floor(mean(p)).

The programs for A241312, there is no canonical definition to state claims against.
-/

/-! ## A241312.P6065095953026027152

`A285229(∑[n]+1)-A241313(n)`
-/

namespace A241312.P6065095953026027152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241313 n

end

end A241312.P6065095953026027152

/-! ## A241312.P90183670612545448

`A035457(A004277(n))-A241313(n)`
-/

namespace A241312.P90183670612545448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241313 n

end

end A241312.P90183670612545448

/-! ## A241312.P4291196659066220318

`A241320(n)+A241318(n)`
-/

namespace A241312.P4291196659066220318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241320 n + A241318 n

end

end A241312.P4291196659066220318

/-! ## A241312.P14254048095120472743

`A241318(n)-A057428(n)*A241320(n)`
-/

namespace A241312.P14254048095120472743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 n - A057428 n * A241320 n

end

end A241312.P14254048095120472743

/-! ## A241312.P10421872206630370313

`A241314(n)+A241315(n)-A241313(n)`
-/

namespace A241312.P10421872206630370313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n + (A241315 n - A241313 n)

end

end A241312.P10421872206630370313

/-! ## A241312.P7412644257614293479

`A241322(n)-A241319(n)`
-/

namespace A241312.P7412644257614293479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241322 n - A241319 n

end

end A241312.P7412644257614293479

/-! ## A241312.P12651742863488182909

`A241316(n)+A241317(n)-A241313(n)`
-/

namespace A241312.P12651742863488182909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241316 n + (A241317 n - A241313 n)

end

end A241312.P12651742863488182909

/-! ## A241312.P931953757816475588

`A241314(n)+A241320(n)-A241319(n)`
-/

namespace A241312.P931953757816475588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n + (A241320 n - A241319 n)

end

end A241312.P931953757816475588

/-! ## A241312.P3188371171415846192

`A241318(n)+A241322(n)-A241314(n)`
-/

namespace A241312.P3188371171415846192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 n + (A241322 n - A241314 n)

end

end A241312.P3188371171415846192

/-! ## A241312.P16746906421905276453

`A241320(n)+A241314(n)+A057428(n)*A241319(n)`
-/

namespace A241312.P16746906421905276453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241320 n + (A241314 n + A057428 n * A241319 n)

end

end A241312.P16746906421905276453

/-!
# A241313: Number of partitions p of n into distinct parts, not including floor(mean(p)).

The programs for A241313, there is no canonical definition to state claims against.
-/

/-! ## A241313.P12350622314036446588

`A052839(n)-(A241312(n)+1)`
-/

namespace A241313.P12350622314036446588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241312 n + 1)

end

end A241313.P12350622314036446588

/-! ## A241313.P17164349246073974136

`A000009(n)-A241312(abs(1-n)+1)`
-/

namespace A241313.P17164349246073974136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241312 (|1 - (n : ℤ)| + 1).toNat

end

end A241313.P17164349246073974136

/-! ## A241313.P4359035153752246835

`A035457(A004277(n))-A241312(n)`
-/

namespace A241313.P4359035153752246835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241312 n

end

end A241313.P4359035153752246835

/-! ## A241313.P1262467448187379918

`(A000009(n)-A241312(n))%A000041(n)`
-/

namespace A241313.P1262467448187379918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241312 n) (A000041 n)

end

end A241313.P1262467448187379918

/-! ## A241313.P11683656524045711704

`A061199(A000124(n))-A241312(n)`
-/

namespace A241313.P11683656524045711704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A241312 n

end

end A241313.P11683656524045711704

/-! ## A241313.P15470496128392263749

`A241314(n)+A241315(n)-A241312(n)`
-/

namespace A241313.P15470496128392263749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n + (A241315 n - A241312 n)

end

end A241313.P15470496128392263749

/-! ## A241313.P7016050981788450870

`A241321(n)+A241319(n)`
-/

namespace A241313.P7016050981788450870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241321 n + A241319 n

end

end A241313.P7016050981788450870

/-! ## A241313.P5431653736929097344

`A241316(n)+A241317(n)-A241312(n)`
-/

namespace A241313.P5431653736929097344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241316 n + (A241317 n - A241312 n)

end

end A241313.P5431653736929097344

/-! ## A241313.P7653871991530809794

`A241321(n)+A241322(n)-A241312(n)`
-/

namespace A241313.P7653871991530809794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241321 n + (A241322 n - A241312 n)

end

end A241313.P7653871991530809794

/-! ## A241313.P15008389573577192295

`A000009(n)-A028310(A241312(n))`
-/

namespace A241313.P15008389573577192295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A028310 (A241312 n).toNat

end

end A241313.P15008389573577192295

/-!
# A241314: Number of partitions p of n into distinct parts, including ceiling(mean(p)).

The programs for A241314, there is no canonical definition to state claims against.
-/

/-! ## A241314.P647002492718777315

`A052839(n)-(A241315(n)+1)`
-/

namespace A241314.P647002492718777315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241315 n + 1)

end

end A241314.P647002492718777315

/-! ## A241314.P7707169184150968188

`A035457(A004277(n))-A241315(n)`
-/

namespace A241314.P7707169184150968188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241315 n

end

end A241314.P7707169184150968188

/-! ## A241314.P5030722859181402123

`A241312(n)+A241313(n)-A241315(n)`
-/

namespace A241314.P5030722859181402123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241313 n - A241315 n)

end

end A241314.P5030722859181402123

/-! ## A241314.P2822978756650369421

`A241319(n)+A241318(n)`
-/

namespace A241314.P2822978756650369421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241319 n + A241318 n

end

end A241314.P2822978756650369421

/-! ## A241314.P9871974132007924009

`A241322(n)-A241320(n)`
-/

namespace A241314.P9871974132007924009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241322 n - A241320 n

end

end A241314.P9871974132007924009

/-! ## A241314.P17426758905779248862

`A241316(n)+A241317(n)-A241315(n)`
-/

namespace A241314.P17426758905779248862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241316 n + (A241317 n - A241315 n)

end

end A241314.P17426758905779248862

/-! ## A241314.P4539307698060549559

`A241312(n)+A241319(n)-A241320(n)`
-/

namespace A241314.P4539307698060549559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241319 n - A241320 n)

end

end A241314.P4539307698060549559

/-! ## A241314.P1453596112105271012

`A241318(n)+A241322(n)-A241312(n)`
-/

namespace A241314.P1453596112105271012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 n + (A241322 n - A241312 n)

end

end A241314.P1453596112105271012

/-! ## A241314.P17540591601385728748

`A241318(n)-A057428(n)*A241319(n)`
-/

namespace A241314.P17540591601385728748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 n - A057428 n * A241319 n

end

end A241314.P17540591601385728748

/-! ## A241314.P4797154521506580267

`A241319(n)+A241312(n)+A057428(n)*A241320(n)`
-/

namespace A241314.P4797154521506580267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241319 n + (A241312 n + A057428 n * A241320 n)

end

end A241314.P4797154521506580267

/-!
# A241315: Number of partitions p of n into distinct parts, not including ceiling(mean(p)).

The programs for A241315, there is no canonical definition to state claims against.
-/

/-! ## A241315.P5952074963802144827

`A052839(n)-(A241314(n)+1)`
-/

namespace A241315.P5952074963802144827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241314 n + 1)

end

end A241315.P5952074963802144827

/-! ## A241315.P13838060952646231908

`A000009(n)-A241314(round(sqrt(n²+1)))`
-/

namespace A241315.P13838060952646231908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241314 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A241315.P13838060952646231908

/-! ## A241315.P7684555641243591706

`A241312(n)+A241313(n)-A241314(n)`
-/

namespace A241315.P7684555641243591706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241313 n - A241314 n)

end

end A241315.P7684555641243591706

/-! ## A241315.P7673893156859443012

`(A000009(n)-A241314(n))%A000041(n)`
-/

namespace A241315.P7673893156859443012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241314 n) (A000041 n)

end

end A241315.P7673893156859443012

/-! ## A241315.P14004350817030036486

`A241321(n)+A241320(n)`
-/

namespace A241315.P14004350817030036486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241321 n + A241320 n

end

end A241315.P14004350817030036486

/-! ## A241315.P17941301478216981577

`A241316(n)+A241317(n)-A241314(n)`
-/

namespace A241315.P17941301478216981577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241316 n + (A241317 n - A241314 n)

end

end A241315.P17941301478216981577

/-! ## A241315.P9346154774112469317

`A241312(n)+A241321(n)-A241318(n)`
-/

namespace A241315.P9346154774112469317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241321 n - A241318 n)

end

end A241315.P9346154774112469317

/-! ## A241315.P3113841982848007304

`A241313(n)+A241320(n)-A241319(n)`
-/

namespace A241315.P3113841982848007304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241313 n + (A241320 n - A241319 n)

end

end A241315.P3113841982848007304

/-! ## A241315.P3123419348393071444

`A000009(n)-A028310(A241314(n))`
-/

namespace A241315.P3123419348393071444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A028310 (A241314 n).toNat

end

end A241315.P3123419348393071444

/-!
# A241316: Number of partitions p of n into distinct parts, including round(mean(p)).

The programs for A241316, there is no canonical definition to state claims against.
-/

/-! ## A241316.P2559740484762182109

`A052839(n)-(A241317(n)+1)`
-/

namespace A241316.P2559740484762182109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241317 n + 1)

end

end A241316.P2559740484762182109

/-! ## A241316.P1641465690873511590

`A035457(A004277(n))-A241317(n)`
-/

namespace A241316.P1641465690873511590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241317 n

end

end A241316.P1641465690873511590

/-! ## A241316.P17860931563270766700

`A061199(A000124(n))-A241317(n)`
-/

namespace A241316.P17860931563270766700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A241317 n

end

end A241316.P17860931563270766700

/-! ## A241316.P837989243304255217

`A000009(n)-(A241317(n)+A000007(n))`
-/

namespace A241316.P837989243304255217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241317 n + A000007 n)

end

end A241316.P837989243304255217

/-! ## A241316.P10600877861816803298

`A241312(n)+A241313(n)-A241317(n)`
-/

namespace A241316.P10600877861816803298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241313 n - A241317 n)

end

end A241316.P10600877861816803298

/-! ## A241316.P1887237344780111997

`A241314(n)+A241315(n)-A241317(n)`
-/

namespace A241316.P1887237344780111997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n + (A241315 n - A241317 n)

end

end A241316.P1887237344780111997

/-! ## A241316.P5884510023988451366

`(A000009(n)-A241317(n))*A000040(n+1)%2`
-/

namespace A241316.P5884510023988451366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A241317 n) * Int.tmod (A000040 (n + 1)) 2

end

end A241316.P5884510023988451366

/-! ## A241316.P13085219566088136625

`(A000009(n)-(A241317(n)+n))%A000041(n)+n`
-/

namespace A241316.P13085219566088136625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - (A241317 n + (n : ℤ))) (A000041 n) + (n : ℤ)

end

end A241316.P13085219566088136625

/-! ## A241316.P12728495176253550193

`A000009(n)-A241317(n)+A020639(A000010(n+2))-2`
-/

namespace A241316.P12728495176253550193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241317 n + (A020639 (A000010 (n + 2)).toNat - 2)

end

end A241316.P12728495176253550193

/-!
# A241317: Number of partitions p of n into distinct parts, not including round(mean(p)).

The programs for A241317, there is no canonical definition to state claims against.
-/

/-! ## A241317.P6287052948349227714

`A052839(n)-(A241316(n)+1)`
-/

namespace A241317.P6287052948349227714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241316 n + 1)

end

end A241317.P6287052948349227714

/-! ## A241317.P14735806667799629385

`A285229(∑[n]+1)-A241316(n)`
-/

namespace A241317.P14735806667799629385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241316 n

end

end A241317.P14735806667799629385

/-! ## A241317.P18186815538708853856

`A000009(n)-A241316(round(sqrt(n²+1)))`
-/

namespace A241317.P18186815538708853856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241316 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A241317.P18186815538708853856

/-! ## A241317.P13883139848588066478

`A035457(A004277(n))-A241316(n)`
-/

namespace A241317.P13883139848588066478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241316 n

end

end A241317.P13883139848588066478

/-! ## A241317.P12227429495362811445

`A061199(A000124(n))-A241316(n)`
-/

namespace A241317.P12227429495362811445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A241316 n

end

end A241317.P12227429495362811445

/-! ## A241317.P6651829734056840160

`abs(A081360(n))-A241316(A028310(n))`
-/

namespace A241317.P6651829734056840160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A241316 (A028310 n).toNat

end

end A241317.P6651829734056840160

/-! ## A241317.P9784624226752539459

`A241312(n)+A241313(n)-A241316(n)`
-/

namespace A241317.P9784624226752539459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241313 n - A241316 n)

end

end A241317.P9784624226752539459

/-! ## A241317.P10469452948959317744

`(A000009(n)-A241316(n))%A000041(n)`
-/

namespace A241317.P10469452948959317744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241316 n) (A000041 n)

end

end A241317.P10469452948959317744

/-! ## A241317.P11656581887782782329

`A000009(n)-A028310(A241316(n))`
-/

namespace A241317.P11656581887782782329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A028310 (A241316 n).toNat

end

end A241317.P11656581887782782329

/-! ## A241317.P3809645435331825240

`A023445(A052839(n)-(A241316(n)-2))`
-/

namespace A241317.P3809645435331825240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A052839 n - (A241316 n - 2)).toNat

end

end A241317.P3809645435331825240

/-!
# A241318: Number of partitions p of n into distinct parts, including floor(mean(p)) and ceiling(mean(p)).

The programs for A241318, there is no canonical definition to state claims against.
-/

/-! ## A241318.P13851135946552345380

`A241312(n)-A241320(n)`
-/

namespace A241318.P13851135946552345380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n - A241320 n

end

end A241318.P13851135946552345380

/-! ## A241318.P5643550440565451294

`A241312(n)+A057428(n)*A241320(n)`
-/

namespace A241318.P5643550440565451294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + A057428 n * A241320 n

end

end A241318.P5643550440565451294

/-! ## A241318.P3643429452190452713

`A241314(n)-A241319(n)`
-/

namespace A241318.P3643429452190452713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n - A241319 n

end

end A241318.P3643429452190452713

/-! ## A241318.P4779289683807007789

`A241312(n)+A241314(n)-A241322(n)`
-/

namespace A241318.P4779289683807007789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241314 n - A241322 n)

end

end A241318.P4779289683807007789

/-! ## A241318.P11707022423522549168

`A241312(n)+A241321(n)-A241315(n)`
-/

namespace A241318.P11707022423522549168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241321 n - A241315 n)

end

end A241318.P11707022423522549168

/-! ## A241318.P11602993425213074400

`A241314(n)+A241321(n)-A241313(n)`
-/

namespace A241318.P11602993425213074400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n + (A241321 n - A241313 n)

end

end A241318.P11602993425213074400

/-! ## A241318.P13581278816652851340

`A241322(n)-(A241320(n)+A241319(n))`
-/

namespace A241318.P13581278816652851340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241322 n - (A241320 n + A241319 n)

end

end A241318.P13581278816652851340

/-! ## A241318.P2536222550130259984

`A241314(n)+A057428(n)*A241319(n)`
-/

namespace A241318.P2536222550130259984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n + A057428 n * A241319 n

end

end A241318.P2536222550130259984

/-!
# A241319: Number of partitions p of n into distinct parts, including ceiling(mean(p)) but not floor(mean(p)).

The programs for A241319, there is no canonical definition to state claims against.
-/

/-! ## A241319.P12269322231824189859

`A241314(n)-A241318(n)`
-/

namespace A241319.P12269322231824189859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n - A241318 n

end

end A241319.P12269322231824189859

/-! ## A241319.P13535542502009170686

`A241313(n)-A241321(n)`
-/

namespace A241319.P13535542502009170686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241313 n - A241321 n

end

end A241319.P13535542502009170686

/-! ## A241319.P9386849534313456281

`A241322(n)-A241312(n)`
-/

namespace A241319.P9386849534313456281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241322 n - A241312 n

end

end A241319.P9386849534313456281

/-! ## A241319.P1528088914315916581

`A241322(n)%A241312(A028310(n))`
-/

namespace A241319.P1528088914315916581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241322 n) (A241312 (A028310 n).toNat)

end

end A241319.P1528088914315916581

/-! ## A241319.P7593106773562512159

`A241314(n)+A241320(n)-A241312(n)`
-/

namespace A241319.P7593106773562512159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n + (A241320 n - A241312 n)

end

end A241319.P7593106773562512159

/-! ## A241319.P13177777051519674720

`A241322(n)-(A241320(n)+A241318(n))`
-/

namespace A241319.P13177777051519674720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241322 n - (A241320 n + A241318 n)

end

end A241319.P13177777051519674720

/-! ## A241319.P3424426221578470477

`A241314(n)+A057428(n)*A241318(n)`
-/

namespace A241319.P3424426221578470477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n + A057428 n * A241318 n

end

end A241319.P3424426221578470477

/-! ## A241319.P13488833803497972540

`A241320(A028310(n))-(A241312(n)-A241314(n))`
-/

namespace A241319.P13488833803497972540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241320 (A028310 n).toNat - (A241312 n - A241314 n)

end

end A241319.P13488833803497972540

/-! ## A241319.P10916884824228391042

`(A241320(n)+A241314(n))%A241312(A028310(n))`
-/

namespace A241319.P10916884824228391042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241320 n + A241314 n) (A241312 (A028310 n).toNat)

end

end A241319.P10916884824228391042

/-!
# A241320: Number of partitions p of n into distinct parts, including floor(mean(p)) but not ceiling(mean(p)).

The programs for A241320, there is no canonical definition to state claims against.
-/

/-! ## A241320.P16373595298969956760

`A241312(n)-A241318(n)`
-/

namespace A241320.P16373595298969956760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n - A241318 n

end

end A241320.P16373595298969956760

/-! ## A241320.P2871326712823675267

`A241315(n)-A241321(n)`
-/

namespace A241320.P2871326712823675267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241315 n - A241321 n

end

end A241320.P2871326712823675267

/-! ## A241320.P9519931175282359026

`A241322(n)-A241314(n)`
-/

namespace A241320.P9519931175282359026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241322 n - A241314 n

end

end A241320.P9519931175282359026

/-! ## A241320.P13912309000055050047

`A241312(n)+A241319(n)-A241314(n)`
-/

namespace A241320.P13912309000055050047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241319 n - A241314 n)

end

end A241320.P13912309000055050047

/-! ## A241320.P10287722703289813483

`A241322(n)-(A241319(n)+A241318(n))`
-/

namespace A241320.P10287722703289813483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241322 n - (A241319 n + A241318 n)

end

end A241320.P10287722703289813483

/-! ## A241320.P7536868618159683378

`(A241322(n)+A241315(n))%A000009(n)`
-/

namespace A241320.P7536868618159683378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241322 n + A241315 n) (A000009 n)

end

end A241320.P7536868618159683378

/-! ## A241320.P8482879528286701817

`A241312(n)-A057428(n)*A241319(n)-A241314(n)`
-/

namespace A241320.P8482879528286701817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n - A057428 n * A241319 n - A241314 n

end

end A241320.P8482879528286701817

/-!
# A241321: Number of partitions p of n into distinct parts, including neither floor(mean(p)) nor ceiling(mean(p)).

The programs for A241321, there is no canonical definition to state claims against.
-/

/-! ## A241321.P14331220195853637724

`A241313(n)-A241319(n)`
-/

namespace A241321.P14331220195853637724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241313 n - A241319 n

end

end A241321.P14331220195853637724

/-! ## A241321.P10163128652327787706

`A241315(n)-A241320(n)`
-/

namespace A241321.P10163128652327787706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241315 n - A241320 n

end

end A241321.P10163128652327787706

/-! ## A241321.P1749977264293030842

`A061199(∑[n]+1)-A241322(n)`
-/

namespace A241321.P1749977264293030842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241322 n

end

end A241321.P1749977264293030842

/-! ## A241321.P11690041566363535059

`A285229(∑[n]+1)-A241322(n)`
-/

namespace A241321.P11690041566363535059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241322 n

end

end A241321.P11690041566363535059

/-! ## A241321.P17593608839378234162

`A000009(n)-round(1/acot(A241322(n)))`
-/

namespace A241321.P17593608839378234162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A241322 n : ℝ))

end

end A241321.P17593608839378234162

/-! ## A241321.P8562641947276850442

`A000009(n)-A241322(round(acot(n)+n))`
-/

namespace A241321.P8562641947276850442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241322 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A241321.P8562641947276850442

/-! ## A241321.P13292583883656238357

`A000009(n)-A241322(round(sqrt(n²+1)))`
-/

namespace A241321.P13292583883656238357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241322 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A241321.P13292583883656238357

/-! ## A241321.P10662025370398120697

`A000009(n)-(A241322(n)+A000007(n))`
-/

namespace A241321.P10662025370398120697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241322 n + A000007 n)

end

end A241321.P10662025370398120697

/-! ## A241321.P14299958880824978762

`A241318(n)+A241313(n)-A241314(n)`
-/

namespace A241321.P14299958880824978762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 n + A241313 n - A241314 n

end

end A241321.P14299958880824978762

/-! ## A241321.P12750086957260033211

`A241318(n)+A241315(n)-A241312(n)`
-/

namespace A241321.P12750086957260033211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 n + A241315 n - A241312 n

end

end A241321.P12750086957260033211

/-! ## A241321.P11133788728197953601

`A241313(n)+A241312(n)-A241322(n)`
-/

namespace A241321.P11133788728197953601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241313 n + A241312 n - A241322 n

end

end A241321.P11133788728197953601

/-! ## A241321.P4437646231637038612

`(A000009(n)-A241322(n))%A000041(n)`
-/

namespace A241321.P4437646231637038612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241322 n) (A000041 n)

end

end A241321.P4437646231637038612

/-! ## A241321.P12792331401865201533

`(A000009(n)-A241322(n))*A000040(n+1)%2`
-/

namespace A241321.P12792331401865201533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A241322 n) * Int.tmod (A000040 (n + 1)) 2

end

end A241321.P12792331401865201533

/-! ## A241321.P6879057584515585510

`(A000009(n)-A241322(n))*∑[n]%A006530(n+2)`
-/

namespace A241321.P6879057584515585510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A241322 n) * Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006530 (n + 2))

end

end A241321.P6879057584515585510

/-!
# A241322: Number of partitions p of n into distinct parts, including floor(mean(p)) or ceiling(mean(p)).

The programs for A241322, there is no canonical definition to state claims against.
-/

/-! ## A241322.P11091311332392751724

`A241319(n)+A241312(n)`
-/

namespace A241322.P11091311332392751724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241319 n + A241312 n

end

end A241322.P11091311332392751724

/-! ## A241322.P7517822170791802346

`A241320(n)+A241314(n)`
-/

namespace A241322.P7517822170791802346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241320 n + A241314 n

end

end A241322.P7517822170791802346

/-! ## A241322.P13501544556578300006

`A035457(A004277(n))-A241321(n)`
-/

namespace A241322.P13501544556578300006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241321 n

end

end A241322.P13501544556578300006

/-! ## A241322.P9358720590793891946

`A241318(n)+A241320(n)+A241319(n)`
-/

namespace A241322.P9358720590793891946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 n + (A241320 n + A241319 n)

end

end A241322.P9358720590793891946

/-! ## A241322.P8346672869025429286

`A241312(n)+A241314(n)-A241318(n)`
-/

namespace A241322.P8346672869025429286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241314 n - A241318 n)

end

end A241322.P8346672869025429286

/-! ## A241322.P15012199579638694638

`A241312(n)+A241313(n)-A241321(n)`
-/

namespace A241322.P15012199579638694638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n + (A241313 n - A241321 n)

end

end A241322.P15012199579638694638

/-! ## A241322.P4756806436628730107

`A241312(n)-A057428(n)*A241319(n)`
-/

namespace A241322.P4756806436628730107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 n - A057428 n * A241319 n

end

end A241322.P4756806436628730107

/-! ## A241322.P11231205118091481697

`A241314(n)-A057428(n)*A241320(n)`
-/

namespace A241322.P11231205118091481697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 n - A057428 n * A241320 n

end

end A241322.P11231205118091481697

/-! ## A241322.P8905062033805490239

`A000009(n)%A000009(n+2)-A241321(n)`
-/

namespace A241322.P8905062033805490239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A000009 (n + 2)) - A241321 n

end

end A241322.P8905062033805490239

/-!
# A241323: Number of nX2 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241323, there is no canonical definition to state claims against.
-/

/-! ## A241323.P4022277663125064472

`A241328(∑[n+2])`
-/

namespace A241323.P4022277663125064472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241323.P4022277663125064472

/-! ## A241323.P5523835405736071478

`record[A241328(gcd(n, A055830(n)))]`
-/

namespace A241323.P5523835405736071478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (Int.gcd (n : ℤ) (A055830 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241323.P5523835405736071478

/-! ## A241323.P18132990840321415938

`record[gcd(A008290(n), A241328(n+1))]`
-/

namespace A241323.P18132990840321415938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A241328 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241323.P18132990840321415938

/-! ## A241323.P15845095487125393435

`record[and(A167374(n), A241328(n+1))]`
-/

namespace A241323.P15845095487125393435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A241328 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241323.P15845095487125393435

/-! ## A241323.P16000794687293848658

`record[A241328(n+1)^A115358(n+1)]`
-/

namespace A241323.P16000794687293848658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241328 (n + 1) : ℚ) ^ (A115358 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241323.P16000794687293848658

/-!
# A241324: Number of nX3 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241324, there is no canonical definition to state claims against.
-/

/-! ## A241324.P3435552627657251791

`A241328(∑[n+3]+1)`
-/

namespace A241324.P3435552627657251791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241324.P3435552627657251791

/-! ## A241324.P4936413929287429603

`record[A241328(A198464(n+1))]`
-/

namespace A241324.P4936413929287429603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241324.P4936413929287429603

/-! ## A241324.P3158811994824484540

`A241328(Δ[A008778(n)])+A063524(3*(n+1))`
-/

namespace A241324.P3158811994824484540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (f1 (n + 1) - f1 n).toNat + A063524 (3 * (n + 1))

end

end A241324.P3158811994824484540

/-!
# A241325: Number of nX4 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241325, there is no canonical definition to state claims against.
-/

/-! ## A241325.P198052627653393556

`A241328(A141214(n+1))`
-/

namespace A241325.P198052627653393556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A141214 (n + 1)).toNat

end

end A241325.P198052627653393556

/-! ## A241325.P8342411564939901713

`A241328(A055998(n+2))`
-/

namespace A241325.P8342411564939901713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A055998 (n + 2)).toNat

end

end A241325.P8342411564939901713

/-! ## A241325.P852785048334693578

`A241328(A056000(n)+7)`
-/

namespace A241325.P852785048334693578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A056000 n + 7).toNat

end

end A241325.P852785048334693578

/-! ## A241325.P2542029723159107828

`A241328(eq[2, A225094(n)])`
-/

namespace A241325.P2542029723159107828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241325.P2542029723159107828

/-! ## A241325.P768299642440600799

`A241328(eq[3, A193592(n)])`
-/

namespace A241325.P768299642440600799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241325.P768299642440600799

/-!
# A241326: Number of nX5 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241326, there is no canonical definition to state claims against.
-/

/-! ## A241326.P4615485189119812292

`A241328(Δ[A023545(n+1)])`
-/

namespace A241326.P4615485189119812292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (f1 (n + 1) - f1 n).toNat

end

end A241326.P4615485189119812292

/-! ## A241326.P7803870885716468722

`A241328(A055999(n+2)+2)`
-/

namespace A241326.P7803870885716468722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A055999 (n + 2) + 2).toNat

end

end A241326.P7803870885716468722

/-! ## A241326.P18154142911042930639

`A241328(eq[2, A193592(n)-2])`
-/

namespace A241326.P18154142911042930639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241326.P18154142911042930639

/-! ## A241326.P17944011042791820321

`A241328(eq[8, A057728(n+1)])`
-/

namespace A241326.P17944011042791820321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241326.P17944011042791820321

/-!
# A241327: Number of nX6 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241327, there is no canonical definition to state claims against.
-/

/-! ## A241327.P17897422016853693689

`A241328(Δ[Δ[A006504(n+1)]])`
-/

namespace A241327.P17897422016853693689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (f1 (n + 1) - f1 n).toNat

end

end A241327.P17897422016853693689

/-! ## A241327.P5198465745552406931

`A241328(Δ[A023545(n+2)]-1)`
-/

namespace A241327.P5198465745552406931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (f1 (n + 1) - f1 n - 1).toNat

end

end A241327.P5198465745552406931

/-!
# A241329: Number of 2 X n 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241329, the canonical program `A241329.P755976159495464207` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241329 has offset 1).

The definition of A241329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241329.P755976159495464207

`ogf((2-16x+15x^2+26x^3-21x^4-17x^5+5x^6+3x^7)/(1-12x+26x^2-2x^3-28x^4+6x^5+9x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241329

/-- `ogf((2-16x+15x^2+26x^3-21x^4-17x^5+5x^6+3x^7)/(1-12x+26x^2-2x^3-28x^4+6x^5+9x^6))` -/
def P755976159495464207.Spec : Prop :=
  ∀ n, P755976159495464207.a n = A241329 (n + 1)

theorem P755976159495464207.correct : P755976159495464207.Spec := by
  intro n
  simp only [A241329, Nat.add_sub_cancel]

end A241329

/-! ## A241329.P1015777067022778330

`A241328(∑[n+1]+2)`
-/

namespace A241329.P1015777067022778330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241329.P1015777067022778330

namespace A241329

/-- `A241328(∑[n+1]+2)` -/
def P1015777067022778330.Spec : Prop :=
  ∀ n, P1015777067022778330.a n = A241329 (n + 1)

end A241329

/-! ## A241329.P12748814451383928698

`record[A241328(3-A317301(n))]`
-/

namespace A241329.P12748814451383928698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (3 - A317301 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241329.P12748814451383928698

namespace A241329

/-- `record[A241328(3-A317301(n))]` -/
def P12748814451383928698.Spec : Prop :=
  ∀ n, P12748814451383928698.a n = A241329 (n + 1)

end A241329

/-! ## A241329.P17341377098788812677

`record[A241328(n+4)/A015125(n+2)]`
-/

namespace A241329.P17341377098788812677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241328 (n + 4) : ℚ) / (A015125 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241329.P17341377098788812677

namespace A241329

/-- `record[A241328(n+4)/A015125(n+2)]` -/
def P17341377098788812677.Spec : Prop :=
  ∀ n, P17341377098788812677.a n = (A241329 (n + 1) : ℚ)

end A241329

/-! ## A241329.P5081137452341820877

`A241328(A133263(n+1))%A316526(n)`
-/

namespace A241329.P5081137452341820877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241328 (A133263 (n + 1)).toNat) (A316526 n)

end

end A241329.P5081137452341820877

namespace A241329

/-- `A241328(A133263(n+1))%A316526(n)` -/
def P5081137452341820877.Spec : Prop :=
  ∀ n, P5081137452341820877.a n = A241329 (n + 1)

end A241329

/-!
# A241330: Number of 3Xn 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241330, there is no canonical definition to state claims against.
-/

/-! ## A241330.P13432792154059101269

`A241328(∑[n+2]+4)`
-/

namespace A241330.P13432792154059101269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241330.P13432792154059101269

/-! ## A241330.P10073035091987604875

`A241328(A167614(n+1))+A061858(n)`
-/

namespace A241330.P10073035091987604875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A167614 (n + 1)).toNat + A061858 n

end

end A241330.P10073035091987604875

/-! ## A241330.P13775045018654313607

`lcm(A065357(n), A241328(A167614(n+1)))`
-/

namespace A241330.P13775045018654313607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A241328 (A167614 (n + 1)).toNat)

end

end A241330.P13775045018654313607

/-! ## A241330.P5616530563624470977

`or(A000007(n), A241328(A167614(n+1)))`
-/

namespace A241330.P5616530563624470977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A241328 (A167614 (n + 1)).toNat)

end

end A241330.P5616530563624470977

/-! ## A241330.P14966558031794383027

`A241328(A167614(n+1))%A218203(n+1)`
-/

namespace A241330.P14966558031794383027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241328 (A167614 (n + 1)).toNat) (A218203 (n + 1))

end

end A241330.P14966558031794383027

/-!
# A241331: Number of 4Xn 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241331, there is no canonical definition to state claims against.
-/

/-! ## A241331.P14375134556525577235

`A241328(A141214(n)+7)`
-/

namespace A241331.P14375134556525577235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A141214 n + 7).toNat

end

end A241331.P14375134556525577235

/-! ## A241331.P5598496720521211416

`A241328(A052905(n)+9)`
-/

namespace A241331.P5598496720521211416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A052905 n + 9).toNat

end

end A241331.P5598496720521211416

/-! ## A241331.P18075663659985209759

`A241328(A055999(n)+10)`
-/

namespace A241331.P18075663659985209759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A055999 n + 10).toNat

end

end A241331.P18075663659985209759

/-! ## A241331.P9138901527137381437

`A241328(eq[5, A066657(n)])`
-/

namespace A241331.P9138901527137381437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241331.P9138901527137381437

/-! ## A241331.P15790618765746535037

`A241328(A167614(n+2)+1)`
-/

namespace A241331.P15790618765746535037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A167614 (n + 2) + 1).toNat

end

end A241331.P15790618765746535037

/-!
# A241332: Number of 5Xn 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241332, there is no canonical definition to state claims against.
-/

/-! ## A241332.P8237924457122617494

`A241328(eq[7, A066657(n)])`
-/

namespace A241332.P8237924457122617494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241332.P8237924457122617494

/-! ## A241332.P4575649054540586421

`A241328(eq[6, A131818(n+1)])`
-/

namespace A241332.P4575649054540586421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241332.P4575649054540586421

/-!
# A241333: Number of 6Xn 0..3 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241333, there is no canonical definition to state claims against.
-/

/-! ## A241333.P6033114929364956174

`A241328(eq[7, A131818(n+1)])`
-/

namespace A241333.P6033114929364956174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241333.P6033114929364956174

/-! ## A241333.P14447889962112840816

`A241328(A000217(n+6)-n)`
-/

namespace A241333.P14447889962112840816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241328 (A000217 (n + 6) - (n : ℤ)).toNat

end

end A241333.P14447889962112840816

/-!
# A241334: Number of partitions p of n including floor(mean(p)) as a part.

The programs for A241334, there is no canonical definition to state claims against.
-/

/-! ## A241334.P13115104517339914204

`A000041(n)-A241335(n)`
-/

namespace A241334.P13115104517339914204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241335 n

end

end A241334.P13115104517339914204

/-! ## A241334.P17685974000056764335

`sqrt(A001255(n))-A241335(n)`
-/

namespace A241334.P17685974000056764335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241335 n : ℝ)

end

end A241334.P17685974000056764335

/-! ## A241334.P10528313528805984812

`∑[A002865(n)]-A241335(n)`
-/

namespace A241334.P10528313528805984812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241335 n

end

end A241334.P10528313528805984812

/-! ## A241334.P14194180329150723755

`A241342(n)+A241340(n)`
-/

namespace A241334.P14194180329150723755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241342 n + A241340 n

end

end A241334.P14194180329150723755

/-! ## A241334.P296279978032091854

`A241336(n+1)-1`
-/

namespace A241334.P296279978032091854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241336 (n + 1) - 1

end

end A241334.P296279978032091854

/-! ## A241334.P11615049336860516493

`A000041(n)-(A241343(n)+A241341(n))`
-/

namespace A241334.P11615049336860516493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241343 n + A241341 n)

end

end A241334.P11615049336860516493

/-! ## A241334.P13470541558648532199

`A241339(n)+A241338(n)-A241335(n)`
-/

namespace A241334.P13470541558648532199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241339 n + A241338 n - A241335 n

end

end A241334.P13470541558648532199

/-! ## A241334.P4739720485038129719

`A241344(n)-A241341(n)`
-/

namespace A241334.P4739720485038129719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241344 n - A241341 n

end

end A241334.P4739720485038129719

/-!
# A241335: Number of partitions p of n not including floor(mean(p)) as a part.

The programs for A241335, there is no canonical definition to state claims against.
-/

/-! ## A241335.P15706532791453423240

`A000041(n)-A241334(n)`
-/

namespace A241335.P15706532791453423240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241334 n

end

end A241335.P15706532791453423240

/-! ## A241335.P8634147711787132983

`A000041(n)-(A241342(n)+A241340(n))`
-/

namespace A241335.P8634147711787132983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241342 n + A241340 n)

end

end A241335.P8634147711787132983

/-! ## A241335.P8882268002906648250

`sqrt(A001255(n))-(A241342(n)+A241340(n))`
-/

namespace A241335.P8882268002906648250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241342 n + A241340 n : ℝ)

end

end A241335.P8882268002906648250

/-! ## A241335.P6493456358940658276

`∑[A002865(n)]-(A241342(n)+A241340(n))`
-/

namespace A241335.P6493456358940658276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A241342 n + A241340 n)

end

end A241335.P6493456358940658276

/-! ## A241335.P9061617595728054319

`A000065(n)+1-(A241342(n)+A241340(n))`
-/

namespace A241335.P9061617595728054319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - (A241342 n + A241340 n)

end

end A241335.P9061617595728054319

/-! ## A241335.P2006828779027141948

`A119620(2*n)-(A241342(n)+A241340(n))`
-/

namespace A241335.P2006828779027141948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - (A241342 n + A241340 n)

end

end A241335.P2006828779027141948

/-! ## A241335.P16301824814360814740

`A035363(A005843(n))-(A241342(n)+A241340(n))`
-/

namespace A241335.P16301824814360814740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 n).toNat - (A241342 n + A241340 n)

end

end A241335.P16301824814360814740

/-! ## A241335.P138555869705497379

`A218698(A000124(n))-(A241342(n)+A241340(n))`
-/

namespace A241335.P138555869705497379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A000124 n).toNat - (A241342 n + A241340 n)

end

end A241335.P138555869705497379

/-! ## A241335.P9147062437467777619

`A241337(n)+A241336(n)-A241334(n)`
-/

namespace A241335.P9147062437467777619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241337 n + A241336 n - A241334 n

end

end A241335.P9147062437467777619

/-! ## A241335.P10259952784127584184

`A241343(n)+A241341(n)`
-/

namespace A241335.P10259952784127584184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241343 n + A241341 n

end

end A241335.P10259952784127584184

/-!
# A241336: Number of partitions p of n including ceiling(mean(p)) as a part.

The programs for A241336, there is no canonical definition to state claims against.
-/

/-! ## A241336.P10485260250104566107

`A241341(n)+A241340(n)`
-/

namespace A241336.P10485260250104566107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241341 n + A241340 n

end

end A241336.P10485260250104566107

/-! ## A241336.P5936153271004311990

`A000041(n)-A241337(n)`
-/

namespace A241336.P5936153271004311990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241337 n

end

end A241336.P5936153271004311990

/-! ## A241336.P3990886829282479406

`∑[A002865(n)]-A241337(n)`
-/

namespace A241336.P3990886829282479406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241337 n

end

end A241336.P3990886829282479406

/-! ## A241336.P12557612200483883618

`A133041(n)-n-A241337(n)`
-/

namespace A241336.P12557612200483883618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A241337 n

end

end A241336.P12557612200483883618

/-! ## A241336.P12414793804320999349

`A241335(n)+A241334(n)-A241337(n)`
-/

namespace A241336.P12414793804320999349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n + A241334 n - A241337 n

end

end A241336.P12414793804320999349

/-! ## A241336.P8766501253573249525

`A000041(n)-(A241343(n)+A241342(n))`
-/

namespace A241336.P8766501253573249525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241343 n + A241342 n)

end

end A241336.P8766501253573249525

/-! ## A241336.P12079866128834923149

`A241339(n)+A241338(n)-A241337(n)`
-/

namespace A241336.P12079866128834923149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241339 n + A241338 n - A241337 n

end

end A241336.P12079866128834923149

/-! ## A241336.P388457444874338989

`A241344(n)-A241342(n)`
-/

namespace A241336.P388457444874338989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241344 n - A241342 n

end

end A241336.P388457444874338989

/-!
# A241337: Number of partitions p of n not including ceiling(mean(p)) as a part.

The programs for A241337, there is no canonical definition to state claims against.
-/

/-! ## A241337.P2988709287494106078

`A000041(n)-(A241341(n)+A241340(n))`
-/

namespace A241337.P2988709287494106078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241341 n + A241340 n)

end

end A241337.P2988709287494106078

/-! ## A241337.P11762971228106444388

`A000041(n)-A241336(n)`
-/

namespace A241337.P11762971228106444388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241336 n

end

end A241337.P11762971228106444388

/-! ## A241337.P3297996409301995088

`sqrt(A001255(n))-A241336(n)`
-/

namespace A241337.P3297996409301995088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241336 n : ℝ)

end

end A241337.P3297996409301995088

/-! ## A241337.P12471794016640150531

`∑[A002865(n)]-A241336(n)`
-/

namespace A241337.P12471794016640150531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241336 n

end

end A241337.P12471794016640150531

/-! ## A241337.P10404170707304540905

`A241335(n)+A241334(n)-A241336(n)`
-/

namespace A241337.P10404170707304540905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n + A241334 n - A241336 n

end

end A241337.P10404170707304540905

/-! ## A241337.P9944203876963613938

`A241343(n)+A241342(n)`
-/

namespace A241337.P9944203876963613938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241343 n + A241342 n

end

end A241337.P9944203876963613938

/-! ## A241337.P567042880090399665

`A241339(n)+A241338(n)-A241336(n)`
-/

namespace A241337.P567042880090399665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241339 n + A241338 n - A241336 n

end

end A241337.P567042880090399665

/-! ## A241337.P16351925138441790207

`A241342(n)+A000041(n)-A241344(n)`
-/

namespace A241337.P16351925138441790207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241342 n + A000041 n - A241344 n

end

end A241337.P16351925138441790207

/-!
# A241338: Number of partitions p of n including round(mean(p)) as a part. (This is "Mathematica round").

The programs for A241338, there is no canonical definition to state claims against.
-/

/-! ## A241338.P3547053531179215245

`A000041(n)-A241339(n)`
-/

namespace A241338.P3547053531179215245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241339 n

end

end A241338.P3547053531179215245

/-! ## A241338.P11417926848233728733

`∑[A002865(n)]-A241339(n)`
-/

namespace A241338.P11417926848233728733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241339 n

end

end A241338.P11417926848233728733

/-! ## A241338.P13003993193369141332

`A284592(n*(n+3)/2)-A241339(n)`
-/

namespace A241338.P13003993193369141332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat - A241339 n

end

end A241338.P13003993193369141332

/-! ## A241338.P18256084762954222474

`A241335(n)+A241334(n)-A241339(n)`
-/

namespace A241338.P18256084762954222474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n + A241334 n - A241339 n

end

end A241338.P18256084762954222474

/-! ## A241338.P17476535728844686168

`A241337(n)+A241336(n)-A241339(n)`
-/

namespace A241338.P17476535728844686168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241337 n + A241336 n - A241339 n

end

end A241338.P17476535728844686168

/-! ## A241338.P16717013928290060012

`A241734(n)+A241733(n)-A241339(n)`
-/

namespace A241338.P16717013928290060012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241734 n + A241733 n - A241339 n

end

end A241338.P16717013928290060012

/-! ## A241338.P3906666697450746584

`A058398(A001844(n))-A241339(n)`
-/

namespace A241338.P3906666697450746584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A001844 n).toNat - A241339 n

end

end A241338.P3906666697450746584

/-!
# A241339: Number of partitions p of n not including round(mean(p)) as a part. (This is "Mathematica round"; for round(x) defined as floor(x + 1/2), see A241734.)

The programs for A241339, there is no canonical definition to state claims against.
-/

/-! ## A241339.P4110622806675280193

`A000041(n)-A241338(n)`
-/

namespace A241339.P4110622806675280193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241338 n

end

end A241339.P4110622806675280193

/-! ## A241339.P15227102695907978310

`sqrt(A001255(n))-A241338(n)`
-/

namespace A241339.P15227102695907978310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241338 n : ℝ)

end

end A241339.P15227102695907978310

/-! ## A241339.P18116432691769342394

`∑[A002865(n)]-A241338(n)`
-/

namespace A241339.P18116432691769342394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241338 n

end

end A241339.P18116432691769342394

/-! ## A241339.P17422603502773007049

`A000065(n)+1-A241338(n)`
-/

namespace A241339.P17422603502773007049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A241338 n)

end

end A241339.P17422603502773007049

/-! ## A241339.P15823473341499463316

`A241335(n)+A241334(n)-A241338(n)`
-/

namespace A241339.P15823473341499463316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n + A241334 n - A241338 n

end

end A241339.P15823473341499463316

/-! ## A241339.P3491389558264025619

`A241337(n)+A241336(n)-A241338(n)`
-/

namespace A241339.P3491389558264025619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241337 n + A241336 n - A241338 n

end

end A241339.P3491389558264025619

/-! ## A241339.P3208672313321493379

`A241734(n)+A241733(n)-A241338(n)`
-/

namespace A241339.P3208672313321493379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241734 n + A241733 n - A241338 n

end

end A241339.P3208672313321493379

/-!
# A241340: Number of partitions p of n such that floor(mean(p)) and ceiling(mean(p)) are parts of p.

The programs for A241340, there is no canonical definition to state claims against.
-/

/-! ## A241340.P128938728879729037

`A241334(n)-A241342(n)`
-/

namespace A241340.P128938728879729037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241334 n - A241342 n

end

end A241340.P128938728879729037

/-! ## A241340.P17948107087115581942

`A241336(n)-A241341(n)`
-/

namespace A241340.P17948107087115581942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241336 n - A241341 n

end

end A241340.P17948107087115581942

/-! ## A241340.P16432470400146750922

`A241344(n)-(A241342(n)+A241341(n))`
-/

namespace A241340.P16432470400146750922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241344 n - (A241342 n + A241341 n)

end

end A241340.P16432470400146750922

/-!
# A241341: Number of partitions p of n such that ceiling(mean(p)) is a part and floor(mean(p)) is not.

The programs for A241341, there is no canonical definition to state claims against.
-/

/-! ## A241341.P926623013282677642

`A241336(n)-A241340(n)`
-/

namespace A241341.P926623013282677642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241336 n - A241340 n

end

end A241341.P926623013282677642

/-! ## A241341.P7858619636595176805

`A241335(n)-A241343(n)`
-/

namespace A241341.P7858619636595176805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n - A241343 n

end

end A241341.P7858619636595176805

/-! ## A241341.P12888032595624420571

`A000041(n)-(A241343(n)+A241334(n))`
-/

namespace A241341.P12888032595624420571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241343 n + A241334 n)

end

end A241341.P12888032595624420571

/-! ## A241341.P13659152280112552

`A000041(n)-(A241342(n)+A241340(n))-A241343(n)`
-/

namespace A241341.P13659152280112552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241342 n + A241340 n) - A241343 n

end

end A241341.P13659152280112552

/-! ## A241341.P3495656181423261524

`A000065(n)+1-(A241342(n)+A241340(n))-A241343(n)`
-/

namespace A241341.P3495656181423261524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - (A241342 n + A241340 n) - A241343 n

end

end A241341.P3495656181423261524

/-! ## A241341.P18328590313730919685

`A241344(n)-A241334(n)`
-/

namespace A241341.P18328590313730919685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241344 n - A241334 n

end

end A241341.P18328590313730919685

/-! ## A241341.P7731164394911768709

`A241344(n)-(A241342(n)+A241340(n))`
-/

namespace A241341.P7731164394911768709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241344 n - (A241342 n + A241340 n)

end

end A241341.P7731164394911768709

/-!
# A241342: Number of partitions p of n such that floor(mean(p)) is a part and ceiling(mean(p)) is not.

The programs for A241342, there is no canonical definition to state claims against.
-/

/-! ## A241342.P9126896084165975782

`A241334(n)-A241340(n)`
-/

namespace A241342.P9126896084165975782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241334 n - A241340 n

end

end A241342.P9126896084165975782

/-! ## A241342.P12506984241029168402

`A241337(n)-A241343(n)`
-/

namespace A241342.P12506984241029168402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241337 n - A241343 n

end

end A241342.P12506984241029168402

/-! ## A241342.P5785047012687549957

`∑[A002865(n)]-A241336(n)-A241343(n)`
-/

namespace A241342.P5785047012687549957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241336 n - A241343 n

end

end A241342.P5785047012687549957

/-! ## A241342.P10991702610640191415

`(A058984(n)+A004526(n))%(A241343(n)+A241336(n))`
-/

namespace A241342.P10991702610640191415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058984 n + A004526 n) (A241343 n + A241336 n)

end

end A241342.P10991702610640191415

/-! ## A241342.P4270757421986878942

`A241344(n)-A241336(n)`
-/

namespace A241342.P4270757421986878942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241344 n - A241336 n

end

end A241342.P4270757421986878942

/-! ## A241342.P11381891952405815092

`A241344(n)-(A241341(n)+A241340(n))`
-/

namespace A241342.P11381891952405815092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241344 n - (A241341 n + A241340 n)

end

end A241342.P11381891952405815092

/-!
# A241343: Number of partitions p of n such that neither floor(mean(p)) nor ceiling(mean(p)) is a part.

The programs for A241343, there is no canonical definition to state claims against.
-/

/-! ## A241343.P7122950976174926798

`A241335(n)-A241341(n)`
-/

namespace A241343.P7122950976174926798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n - A241341 n

end

end A241343.P7122950976174926798

/-! ## A241343.P9046769374401588188

`A241337(n)-A241342(n)`
-/

namespace A241343.P9046769374401588188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241337 n - A241342 n

end

end A241343.P9046769374401588188

/-! ## A241343.P3701517371504089395

`A241335(n)+A082551(A048058(n))*A241341(n)`
-/

namespace A241343.P3701517371504089395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n + A082551 (A048058 n).toNat * A241341 n

end

end A241343.P3701517371504089395

/-! ## A241343.P9147038840581727505

`A000041(n)-(A241340(n)+A241342(n)+A241341(n))`
-/

namespace A241343.P9147038840581727505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241340 n + (A241342 n + A241341 n))

end

end A241343.P9147038840581727505

/-! ## A241343.P1793584281908256347

`A000065(n)+1-(A241342(n)+A241340(n))-A241341(n)`
-/

namespace A241343.P1793584281908256347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - (A241342 n + A241340 n) - A241341 n

end

end A241343.P1793584281908256347

/-! ## A241343.P2193524331736558628

`A119620(2*n)-(A241342(n)+A241340(n))-A241341(n)`
-/

namespace A241343.P2193524331736558628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - (A241342 n + A241340 n) - A241341 n

end

end A241343.P2193524331736558628

/-! ## A241343.P10134877434669210835

`A139582(n)/2-A241341(n)-(A241342(n)+A241340(n))`
-/

namespace A241343.P10134877434669210835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241341 n : ℚ) - (A241342 n + A241340 n : ℚ)

end

end A241343.P10134877434669210835

/-! ## A241343.P1156373653176443650

`A133041(n)-n-A241341(n)-(A241342(n)+A241340(n))`
-/

namespace A241343.P1156373653176443650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A241341 n - (A241342 n + A241340 n)

end

end A241343.P1156373653176443650

/-! ## A241343.P5123864731609569260

`A000041(n)-A241344(n)`
-/

namespace A241343.P5123864731609569260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241344 n

end

end A241343.P5123864731609569260

/-!
# A241344: Number of partitions p of n such that floor(mean(p)) or ceiling(mean(p)) is a part.

The programs for A241344, there is no canonical definition to state claims against.
-/

/-! ## A241344.P4571847735854003196

`A241341(n)+A241334(n)`
-/

namespace A241344.P4571847735854003196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241341 n + A241334 n

end

end A241344.P4571847735854003196

/-! ## A241344.P5374385493377904765

`A241342(n)+A241336(n)`
-/

namespace A241344.P5374385493377904765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241342 n + A241336 n

end

end A241344.P5374385493377904765

/-! ## A241344.P7454340985107228954

`A000041(n)-A241343(n)`
-/

namespace A241344.P7454340985107228954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241343 n

end

end A241344.P7454340985107228954

/-! ## A241344.P12409702933998267073

`sqrt(A001255(n))-A241343(n)`
-/

namespace A241344.P12409702933998267073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241343 n : ℝ)

end

end A241344.P12409702933998267073

/-! ## A241344.P18269754003323749679

`A241342(n)+A241341(n)+A241340(n)`
-/

namespace A241344.P18269754003323749679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241342 n + A241341 n + A241340 n

end

end A241344.P18269754003323749679

/-!
# A241345: Number of n X 2 0..3 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241345, there is no canonical definition to state claims against.
-/

/-! ## A241345.P17780564992043773482

`A241349(∑[n+1]+2)`
-/

namespace A241345.P17780564992043773482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241345.P17780564992043773482

/-! ## A241345.P10760233762578902269

`record[A241349(A070264(n+1)+1)]`
-/

namespace A241345.P10760233762578902269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A070264 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241345.P10760233762578902269

/-! ## A241345.P12440243796880145637

`record[root(A241349(n+2), A059268(n))]`
-/

namespace A241345.P12440243796880145637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A241349 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241345.P12440243796880145637

/-! ## A241345.P14805980299583094560

`record[gcd(A159854(n), A241349(n+1))]`
-/

namespace A241345.P14805980299583094560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159854 n) (A241349 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241345.P14805980299583094560

/-! ## A241345.P1657827500904615858

`record[gcd(A241349(n+2), A244131(n))]`
-/

namespace A241345.P1657827500904615858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241349 (n + 2)) (A244131 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241345.P1657827500904615858

/-!
# A241346: Number of nX3 0..3 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241346, there is no canonical definition to state claims against.
-/

/-! ## A241346.P2143613764322764466

`A241349(∑[n+2]+4)`
-/

namespace A241346.P2143613764322764466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241346.P2143613764322764466

/-! ## A241346.P18126015235760933959

`record[A010054(n)*A241349(n+3)]`
-/

namespace A241346.P18126015235760933959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A241349 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241346.P18126015235760933959

/-! ## A241346.P410977535319107017

`A241349(A167614(n+1))+A011742(n)`
-/

namespace A241346.P410977535319107017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A167614 (n + 1)).toNat + A011742 n

end

end A241346.P410977535319107017

/-! ## A241346.P16483284582543912607

`A241349(A167614(n+1))+A064459(n)`
-/

namespace A241346.P16483284582543912607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A167614 (n + 1)).toNat + A064459 n

end

end A241346.P16483284582543912607

/-! ## A241346.P11328017877761971354

`A241349(A167614(n+1))+A178798(n)`
-/

namespace A241346.P11328017877761971354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A167614 (n + 1)).toNat + A178798 n

end

end A241346.P11328017877761971354

/-!
# A241347: Number of nX4 0..3 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241347, there is no canonical definition to state claims against.
-/

/-! ## A241347.P14471097404281896066

`A241349(A374004(n+1))`
-/

namespace A241347.P14471097404281896066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A374004 (n + 1)).toNat

end

end A241347.P14471097404281896066

/-! ## A241347.P6088766767325755813

`A241349(A141214(n)+7)`
-/

namespace A241347.P6088766767325755813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A141214 n + 7).toNat

end

end A241347.P6088766767325755813

/-! ## A241347.P7859110005857084973

`A241349(A052905(n)+9)`
-/

namespace A241347.P7859110005857084973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A052905 n + 9).toNat

end

end A241347.P7859110005857084973

/-! ## A241347.P10733808804777472394

`A241349(A055999(n)+10)`
-/

namespace A241347.P10733808804777472394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A055999 n + 10).toNat

end

end A241347.P10733808804777472394

/-! ## A241347.P5408925430813989265

`A241349(eq[5, A066657(n)])`
-/

namespace A241347.P5408925430813989265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241347.P5408925430813989265

/-!
# A241348: Number of nX5 0..3 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A241348, there is no canonical definition to state claims against.
-/

/-! ## A241348.P12042955080605401408

`A241349(A374005(n+1))`
-/

namespace A241348.P12042955080605401408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A374005 (n + 1)).toNat

end

end A241348.P12042955080605401408

/-! ## A241348.P17753882309314400645

`A241349(A167499(n+3))`
-/

namespace A241348.P17753882309314400645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A167499 (n + 3)).toNat

end

end A241348.P17753882309314400645

/-! ## A241348.P15480215512869313106

`A241349(A155212(n)+13)`
-/

namespace A241348.P15480215512869313106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A155212 n + 13).toNat

end

end A241348.P15480215512869313106

/-! ## A241348.P13231223884579630428

`A241349(A056000(n)+15)`
-/

namespace A241348.P13231223884579630428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A056000 n + 15).toNat

end

end A241348.P13231223884579630428

/-! ## A241348.P11493290028169762210

`A241349(eq[7, A066657(n)])`
-/

namespace A241348.P11493290028169762210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241348.P11493290028169762210

/-!
# A241350: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241350, there is no canonical definition to state claims against.
-/

/-! ## A241350.P6235542863105595878

`A241356(∑[4*n]+1)`
-/

namespace A241350.P6235542863105595878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241350.P6235542863105595878

/-! ## A241350.P5232728377666026938

`∏{digits}[n, A241356(A001844(#))]`
-/

namespace A241350.P5232728377666026938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A241356 (A001844 x).toNat).prod

end

end A241350.P5232728377666026938

/-! ## A241350.P2772260630889036184

`record[A241356(A330613(n+1))]`
-/

namespace A241350.P2772260630889036184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241350.P2772260630889036184

/-! ## A241350.P13612699870685827817

`lcm((-1)^n, A241356(A001844(n)))`
-/

namespace A241350.P13612699870685827817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A241356 (A001844 n).toNat)

end

end A241350.P13612699870685827817

/-!
# A241351: Number of n X 3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241351, there is no canonical definition to state claims against.
-/

/-! ## A241351.P12459256899116207628

`A241356(∑[n+3]+1)`
-/

namespace A241351.P12459256899116207628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241351.P12459256899116207628

/-! ## A241351.P12216660153478697705

`record[A241356(lt[A241356(n+1), n])]`
-/

namespace A241351.P12216660153478697705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241351.P12216660153478697705

/-! ## A241351.P5208167970077737530

`A241356(A034856(n+2))%A241251(n+1)`
-/

namespace A241351.P5208167970077737530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241356 (A034856 (n + 2)).toNat) (A241251 (n + 1))

end

end A241351.P5208167970077737530

/-! ## A241351.P18419855737228824491

`and(A001348(2*(n+1)), A241356(A034856(n+2)))`
-/

namespace A241351.P18419855737228824491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001348 (2 * (n + 1))) (A241356 (A034856 (n + 2)).toNat)

end

end A241351.P18419855737228824491

/-!
# A241352: Number of n X 4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241352, there is no canonical definition to state claims against.
-/

/-! ## A241352.P14712517384554385505

`A241356(∑[n+4]+3)`
-/

namespace A241352.P14712517384554385505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A241352.P14712517384554385505

/-!
# A241353: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241353, there is no canonical definition to state claims against.
-/

/-! ## A241353.P14765757533779806602

`A241356(C(n+5, 2)+n+1)`
-/

namespace A241353.P14765757533779806602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (Nat.choose (n + 5) 2 + (n + 1))

end

end A241353.P14765757533779806602

/-! ## A241353.P9472286702538226842

`A241356(Δ[A264443(n)])`
-/

namespace A241353.P9472286702538226842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (f1 (n + 1) - f1 n).toNat

end

end A241353.P9472286702538226842

/-! ## A241353.P10605361812075616917

`A241356(A046691(n+3))`
-/

namespace A241353.P10605361812075616917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A046691 (n + 3)).toNat

end

end A241353.P10605361812075616917

/-! ## A241353.P7573215116742785983

`A241356(A056115(n)+11)`
-/

namespace A241353.P7573215116742785983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A056115 n + 11).toNat

end

end A241353.P7573215116742785983

/-! ## A241353.P8017618805816426404

`A241356(eq[2, A092921(n)])`
-/

namespace A241353.P8017618805816426404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241353.P8017618805816426404

/-!
# A241354: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241354, there is no canonical definition to state claims against.
-/

/-! ## A241354.P1256428737181693383

`A241356(A052905(n+3))`
-/

namespace A241354.P1256428737181693383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A052905 (n + 3)).toNat

end

end A241354.P1256428737181693383

/-! ## A241354.P4774193757942256142

`A241356(A056119(n)+16)`
-/

namespace A241354.P4774193757942256142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A056119 n + 16).toNat

end

end A241354.P4774193757942256142

/-! ## A241354.P16523830797977151006

`A241356(eq[3, A219347(n)])`
-/

namespace A241354.P16523830797977151006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241354.P16523830797977151006

/-! ## A241354.P9755087348456683711

`A241356(eq[5, A193592(n)])`
-/

namespace A241354.P9755087348456683711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241354.P9755087348456683711

/-! ## A241354.P16617854997341603802

`A241356(eq[8, A258709(n)])`
-/

namespace A241354.P16617854997341603802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241354.P16617854997341603802

/-!
# A241355: Number of nX7 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241355, there is no canonical definition to state claims against.
-/

/-! ## A241355.P634513936083941270

`A241356(A055999(n+4))`
-/

namespace A241355.P634513936083941270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A055999 (n + 4)).toNat

end

end A241355.P634513936083941270

/-! ## A241355.P4891101151189304640

`A241356(eq[4, A219347(n)])`
-/

namespace A241355.P4891101151189304640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241355.P4891101151189304640

/-! ## A241355.P5220269523468723148

`A241356(eq[6, A193592(n)])`
-/

namespace A241355.P5220269523468723148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241355.P5220269523468723148

/-! ## A241355.P2198018691975668546

`A241356(A052905(n+4)-1)`
-/

namespace A241355.P2198018691975668546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A052905 (n + 4) - 1).toNat

end

end A241355.P2198018691975668546

/-! ## A241355.P10387867283336325530

`A241356(A056000(n+3)+4)`
-/

namespace A241355.P10387867283336325530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A056000 (n + 3) + 4).toNat

end

end A241355.P10387867283336325530

/-!
# A241357: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241357, there is no canonical definition to state claims against.
-/

/-! ## A241357.P8436055137004968544

`A241356(∑[n+1]+2)`
-/

namespace A241357.P8436055137004968544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241357.P8436055137004968544

/-! ## A241357.P14886450741253597044

`A241356(A133263(n+1))+char[16]`
-/

namespace A241357.P14886450741253597044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241357.P14886450741253597044

/-! ## A241357.P8526532954646989106

`A241356(A133263(n+1))%A000108(n+5)`
-/

namespace A241357.P8526532954646989106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241356 (A133263 (n + 1)).toNat) (A000108 (n + 5))

end

end A241357.P8526532954646989106

/-!
# A241358: Number of 3 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241358, there is no canonical definition to state claims against.
-/

/-! ## A241358.P16953950968871523188

`A241356(∑[n+2]+4)`
-/

namespace A241358.P16953950968871523188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241358.P16953950968871523188

/-! ## A241358.P3470500222178546706

`A241356(A167614(n+1))+char[19]`
-/

namespace A241358.P3470500222178546706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241358.P3470500222178546706

/-! ## A241358.P766763132853937716

`A241356(A167499(n)+n)+char[15]`
-/

namespace A241358.P766763132853937716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241358.P766763132853937716

/-! ## A241358.P14917477500352185590

`C(A241356(A167614(n+1)), A151934(n)!)`
-/

namespace A241358.P14917477500352185590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A241356 (A167614 (n + 1)).toNat).toNat (Nat.factorial (A151934 n).toNat)

end

end A241358.P14917477500352185590

/-! ## A241358.P5734800961423129773

`A241356(A167614(n+1))%A046326(n+1)`
-/

namespace A241358.P5734800961423129773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241356 (A167614 (n + 1)).toNat) (A046326 (n + 1))

end

end A241358.P5734800961423129773

/-!
# A241359: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241359, there is no canonical definition to state claims against.
-/

/-! ## A241359.P14388909010626085527

`A241356(C(n+5, 2)-n)`
-/

namespace A241359.P14388909010626085527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (Nat.choose (n + 5) 2 - n)

end

end A241359.P14388909010626085527

/-! ## A241359.P4867181329866120470

`A241356(A141214(n)+7)`
-/

namespace A241359.P4867181329866120470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A141214 n + 7).toNat

end

end A241359.P4867181329866120470

/-! ## A241359.P2478603811397364593

`A241356(A052905(n)+9)`
-/

namespace A241359.P2478603811397364593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A052905 n + 9).toNat

end

end A241359.P2478603811397364593

/-! ## A241359.P9241197664921494181

`A241356(A055999(n)+10)`
-/

namespace A241359.P9241197664921494181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A055999 n + 10).toNat

end

end A241359.P9241197664921494181

/-! ## A241359.P12062641618810146836

`A241356(eq[5, A066657(n)])`
-/

namespace A241359.P12062641618810146836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241359.P12062641618810146836

/-!
# A241360: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241360, there is no canonical definition to state claims against.
-/

/-! ## A241360.P12338272434905971349

`A241356(A167499(n+3))`
-/

namespace A241360.P12338272434905971349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A167499 (n + 3)).toNat

end

end A241360.P12338272434905971349

/-! ## A241360.P2952304206416172272

`A241356(A077169(n+5))`
-/

namespace A241360.P2952304206416172272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A077169 (n + 5)).toNat

end

end A241360.P2952304206416172272

/-! ## A241360.P1915719029301420485

`A241356(A155212(n)+13)`
-/

namespace A241360.P1915719029301420485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A155212 n + 13).toNat

end

end A241360.P1915719029301420485

/-! ## A241360.P5097819444624353635

`A241356(A056000(n)+15)`
-/

namespace A241360.P5097819444624353635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A056000 n + 15).toNat

end

end A241360.P5097819444624353635

/-! ## A241360.P6591955579808044100

`A241356(eq[7, A066657(n)])`
-/

namespace A241360.P6591955579808044100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241360.P6591955579808044100

/-!
# A241361: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241361, there is no canonical definition to state claims against.
-/

/-! ## A241361.P14761087407606444112

`A241356(A166136(n+4))`
-/

namespace A241361.P14761087407606444112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A166136 (n + 4)).toNat

end

end A241361.P14761087407606444112

/-! ## A241361.P17582763025413405664

`A241356(A056115(n)+21)`
-/

namespace A241361.P17582763025413405664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A056115 n + 21).toNat

end

end A241361.P17582763025413405664

/-! ## A241361.P7216353263406582686

`A241356(Δ[A264443(n)]+10)`
-/

namespace A241361.P7216353263406582686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (f1 (n + 1) - f1 n + 10).toNat

end

end A241361.P7216353263406582686

/-! ## A241361.P11595401333409914845

`A241356(A167499(n+4)+1)`
-/

namespace A241361.P11595401333409914845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A167499 (n + 4) + 1).toNat

end

end A241361.P11595401333409914845

/-! ## A241361.P12472980473228885229

`A241356(A000217(n+5)+6)`
-/

namespace A241361.P12472980473228885229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A000217 (n + 5) + 6).toNat

end

end A241361.P12472980473228885229

/-!
# A241362: Number of 7Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241362, there is no canonical definition to state claims against.
-/

/-! ## A241362.P7153038999955069192

`A241356(A056119(n)+28)`
-/

namespace A241362.P7153038999955069192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A056119 n + 28).toNat

end

end A241362.P7153038999955069192

/-! ## A241362.P12882129646358398684

`A241356(eq[11, A066657(n)])`
-/

namespace A241362.P12882129646358398684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241362.P12882129646358398684

/-! ## A241362.P4569339789402792873

`A241356(A167614(n+5)+4)`
-/

namespace A241362.P4569339789402792873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A167614 (n + 5) + 4).toNat

end

end A241362.P4569339789402792873

/-! ## A241362.P2378499928227181326

`A241356(A000124(n+6)+6)`
-/

namespace A241362.P2378499928227181326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A000124 (n + 6) + 6).toNat

end

end A241362.P2378499928227181326

/-! ## A241362.P1895114427443155312

`A241356(A000217(n+6)+7)`
-/

namespace A241362.P1895114427443155312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (A000217 (n + 6) + 7).toNat

end

end A241362.P1895114427443155312

/-!
# A241363: Number of n X n 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241363, there is no canonical definition to state claims against.
-/

/-! ## A241363.P2755794939129994770

`A241370((n+1)²+n²)`
-/

namespace A241363.P2755794939129994770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 ((n + 1) ^ 2 + n ^ 2)

end

end A241363.P2755794939129994770

/-!
# A241364: Number of n X 2 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241364, the canonical program `A241364.P11076618117495640889` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241364 has offset 1).

The definition of A241364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241364.P11076618117495640889

`ogf((1-2x^2-5x^3-4x^4)/(1-7x-2x^3+8x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241364

/-- `ogf((1-2x^2-5x^3-4x^4)/(1-7x-2x^3+8x^4))` -/
def P11076618117495640889.Spec : Prop :=
  ∀ n, P11076618117495640889.a n = A241364 (n + 1)

theorem P11076618117495640889.correct : P11076618117495640889.Spec := by
  intro n
  simp only [A241364, Nat.add_sub_cancel]

end A241364

/-! ## A241364.P13980045533492262819

`A241370(∑[n+2])`
-/

namespace A241364.P13980045533492262819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241364.P13980045533492262819

namespace A241364

/-- `A241370(∑[n+2])` -/
def P13980045533492262819.Spec : Prop :=
  ∀ n, P13980045533492262819.a n = A241364 (n + 1)

end A241364

/-! ## A241364.P12067263531818975812

`record[A129186(n)*A241370(n+1)]`
-/

namespace A241364.P12067263531818975812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A241370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241364.P12067263531818975812

namespace A241364

/-- `record[A129186(n)*A241370(n+1)]` -/
def P12067263531818975812.Spec : Prop :=
  ∀ n, P12067263531818975812.a n = A241364 (n + 1)

end A241364

/-! ## A241364.P17116043267655545376

`record[gcd(A211357(n), A241370(n+1))]`
-/

namespace A241364.P17116043267655545376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211357 n) (A241370 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241364.P17116043267655545376

namespace A241364

/-- `record[gcd(A211357(n), A241370(n+1))]` -/
def P17116043267655545376.Spec : Prop :=
  ∀ n, (P17116043267655545376.a n : ℤ) = A241364 (n + 1)

end A241364

/-!
# A241365: Number of nX3 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241365, there is no canonical definition to state claims against.
-/

/-! ## A241365.P16213733040347637177

`A241370(∑[n+3]+1)`
-/

namespace A241365.P16213733040347637177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241365.P16213733040347637177

/-! ## A241365.P7071606396915866581

`A241370(A000124(n+3)-3)*A336468(n+1)`
-/

namespace A241365.P7071606396915866581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A000124 (n + 3) - 3).toNat * A336468 (n + 1)

end

end A241365.P7071606396915866581

/-! ## A241365.P8641526655728162332

`A007318(C(n, 2))*A241370(A000124(n+3)-3)`
-/

namespace A241365.P8641526655728162332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A241370 (A000124 (n + 3) - 3).toNat

end

end A241365.P8641526655728162332

/-! ## A241365.P13249787044680786730

`A007318(A000120(n))*A241370(A000124(n+3)-3)`
-/

namespace A241365.P13249787044680786730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000120 n).toNat * A241370 (A000124 (n + 3) - 3).toNat

end

end A241365.P13249787044680786730

/-! ## A241365.P9488645842162272749

`A007318(A097805(n))*A241370(A000124(n+3)-3)`
-/

namespace A241365.P9488645842162272749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A097805 n).toNat * A241370 (A000124 (n + 3) - 3).toNat

end

end A241365.P9488645842162272749

/-!
# A241366: Number of nX4 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241366, there is no canonical definition to state claims against.
-/

/-! ## A241366.P15707581728212082959

`A241370(A141214(n+1))`
-/

namespace A241366.P15707581728212082959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A141214 (n + 1)).toNat

end

end A241366.P15707581728212082959

/-! ## A241366.P2694764005521265399

`A241370(A027379(n+2))`
-/

namespace A241366.P2694764005521265399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A027379 (n + 2)).toNat

end

end A241366.P2694764005521265399

/-! ## A241366.P13612475064103329596

`A241370(eq[3, A193592(n)])`
-/

namespace A241366.P13612475064103329596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241366.P13612475064103329596

/-! ## A241366.P6907643606424320377

`A241370(A052905(n+1)+2)`
-/

namespace A241366.P6907643606424320377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A052905 (n + 1) + 2).toNat

end

end A241366.P6907643606424320377

/-! ## A241366.P3670421710619726360

`A241370(A051936(n+4)+6)`
-/

namespace A241366.P3670421710619726360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A051936 (n + 4) + 6).toNat

end

end A241366.P3670421710619726360

/-!
# A241367: Number of nX5 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241367, there is no canonical definition to state claims against.
-/

/-! ## A241367.P7802384085213870025

`A241370(Δ[A264443(n)])`
-/

namespace A241367.P7802384085213870025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (f1 (n + 1) - f1 n).toNat

end

end A241367.P7802384085213870025

/-! ## A241367.P3389379149440079472

`A241370(eq[4, A193592(n)])`
-/

namespace A241367.P3389379149440079472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241367.P3389379149440079472

/-! ## A241367.P13830405585675629604

`A241370(Δ[A023545(n+1)])`
-/

namespace A241367.P13830405585675629604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (f1 (n + 1) - f1 n).toNat

end

end A241367.P13830405585675629604

/-! ## A241367.P17680507652080275957

`A241370(Δ[A111396(n)]-1)`
-/

namespace A241367.P17680507652080275957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (f1 (n + 1) - f1 n - 1).toNat

end

end A241367.P17680507652080275957

/-! ## A241367.P16289951946593147960

`A241370(A052905(n+2)+1)`
-/

namespace A241367.P16289951946593147960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A052905 (n + 2) + 1).toNat

end

end A241367.P16289951946593147960

/-!
# A241368: Number of nX6 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241368, there is no canonical definition to state claims against.
-/

/-! ## A241368.P14707029201345083537

`A241370(A052905(n+3))`
-/

namespace A241368.P14707029201345083537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A052905 (n + 3)).toNat

end

end A241368.P14707029201345083537

/-! ## A241368.P6535711292524240354

`A241370(eq[5, A193592(n)])`
-/

namespace A241368.P6535711292524240354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241368.P6535711292524240354

/-! ## A241368.P10508870023361550075

`A241370(eq[8, A258709(n)])`
-/

namespace A241368.P10508870023361550075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241368.P10508870023361550075

/-! ## A241368.P9505681713298969150

`A241370(eq[8, A185782(n+1)])`
-/

namespace A241368.P9505681713298969150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241368.P9505681713298969150

/-! ## A241368.P11957191419497032215

`A241370(Δ[Δ[A006504(n+1)]])`
-/

namespace A241368.P11957191419497032215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (f1 (n + 1) - f1 n).toNat

end

end A241368.P11957191419497032215

/-!
# A241369: Number of nX7 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241369, there is no canonical definition to state claims against.
-/

/-! ## A241369.P14136705801367469206

`A241370(eq[6, A193592(n)])`
-/

namespace A241369.P14136705801367469206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241369.P14136705801367469206

/-!
# A241371: Number of 2 X n 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241371, the canonical program `A241371.P13865697391531686697` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241371 has offset 1).

The definition of A241371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241371.P10363196108399349092

`ogf((2-3x-3x^2+3x^3+2x^4)/(1-5x+2x^2+4x^3))`
-/

namespace A241371.P10363196108399349092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -3, 3, 2] [1, -5, 2, 4] n

end

end A241371.P10363196108399349092

namespace A241371

/-- `ogf((2-3x-3x^2+3x^3+2x^4)/(1-5x+2x^2+4x^3))` -/
def P10363196108399349092.Spec : Prop :=
  ∀ n, P10363196108399349092.a n = A241371 (n + 1)

end A241371

/-! ## A241371.P13865697391531686697

`5*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=7, a(2)=28, a(3)=121, a(4)=523`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241371

/-- `5*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P13865697391531686697.Spec : Prop :=
  ∀ n, P13865697391531686697.a n = A241371 (n + 1)

theorem P13865697391531686697.correct : P13865697391531686697.Spec := by
  intro n
  simp only [A241371, Nat.add_sub_cancel]

end A241371

/-! ## A241371.P14377247448774948980

`A241370(∑[n+1]+2)`
-/

namespace A241371.P14377247448774948980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241371.P14377247448774948980

namespace A241371

/-- `A241370(∑[n+1]+2)` -/
def P14377247448774948980.Spec : Prop :=
  ∀ n, P14377247448774948980.a n = A241371 (n + 1)

end A241371

/-! ## A241371.P9935938098521809747

`record[A241370(n+3)/A221623(n+1)]`
-/

namespace A241371.P9935938098521809747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241370 (n + 3) : ℚ) / (A221623 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241371.P9935938098521809747

namespace A241371

/-- `record[A241370(n+3)/A221623(n+1)]` -/
def P9935938098521809747.Spec : Prop :=
  ∀ n, P9935938098521809747.a n = (A241371 (n + 1) : ℚ)

end A241371

/-! ## A241371.P436564729029066279

`or(A241370(A133263(n+1)), A242411(n+2))`
-/

namespace A241371.P436564729029066279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241370 (A133263 (n + 1)).toNat) (A242411 (n + 2))

end

end A241371.P436564729029066279

namespace A241371

/-- `or(A241370(A133263(n+1)), A242411(n+2))` -/
def P436564729029066279.Spec : Prop :=
  ∀ n, P436564729029066279.a n = A241371 (n + 1)

end A241371

/-!
# A241372: Number of 3 X n 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241372, the canonical program `A241372.P13454952388821135418` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241372 has offset 1).

The definition of A241372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241372.P13454952388821135418

`ogf((5+2x-43x^2-25x^3+42x^4+34x^5+32x^6+16x^7)/(1-9x-16x^2+50x^3+72x^4+32x^5+32x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241372

/-- `ogf((5+2x-43x^2-25x^3+42x^4+34x^5+32x^6+16x^7)/(1-9x-16x^2+50x^3+72x^4+32x^5+32x^6))` -/
def P13454952388821135418.Spec : Prop :=
  ∀ n, P13454952388821135418.a n = A241372 (n + 1)

theorem P13454952388821135418.correct : P13454952388821135418.Spec := by
  intro n
  simp only [A241372, Nat.add_sub_cancel]

end A241372

/-! ## A241372.P9842519967520764762

`A241370(∑[n+2]+4)`
-/

namespace A241372.P9842519967520764762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241372.P9842519967520764762

namespace A241372

/-- `A241370(∑[n+2]+4)` -/
def P9842519967520764762.Spec : Prop :=
  ∀ n, P9842519967520764762.a n = A241372 (n + 1)

end A241372

/-! ## A241372.P12652639563148581377

`or(n%2, A241370(A167614(n+1)))`
-/

namespace A241372.P12652639563148581377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A241370 (A167614 (n + 1)).toNat)

end

end A241372.P12652639563148581377

namespace A241372

/-- `or(n%2, A241370(A167614(n+1)))` -/
def P12652639563148581377.Spec : Prop :=
  ∀ n, P12652639563148581377.a n = A241372 (n + 1)

end A241372

/-! ## A241372.P14479257073683049870

`A241370(A167614(n+1))*A309913(n)`
-/

namespace A241372.P14479257073683049870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A167614 (n + 1)).toNat * A309913 n

end

end A241372.P14479257073683049870

namespace A241372

/-- `A241370(A167614(n+1))*A309913(n)` -/
def P14479257073683049870.Spec : Prop :=
  ∀ n, P14479257073683049870.a n = A241372 (n + 1)

end A241372

/-! ## A241372.P5690913055700749441

`A241370(A167614(n+1))%A017108(n)`
-/

namespace A241372.P5690913055700749441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241370 (A167614 (n + 1)).toNat) (A017108 n)

end

end A241372.P5690913055700749441

namespace A241372

/-- `A241370(A167614(n+1))%A017108(n)` -/
def P5690913055700749441.Spec : Prop :=
  ∀ n, P5690913055700749441.a n = A241372 (n + 1)

end A241372

/-!
# A241373: Number of 4Xn 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241373, there is no canonical definition to state claims against.
-/

/-! ## A241373.P11496810066894581284

`A241370(A141214(n)+7)`
-/

namespace A241373.P11496810066894581284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A141214 n + 7).toNat

end

end A241373.P11496810066894581284

/-! ## A241373.P4336301701545459658

`A241370(A052905(n)+9)`
-/

namespace A241373.P4336301701545459658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A052905 n + 9).toNat

end

end A241373.P4336301701545459658

/-! ## A241373.P8137478216981907698

`A241370(A055999(n)+10)`
-/

namespace A241373.P8137478216981907698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A055999 n + 10).toNat

end

end A241373.P8137478216981907698

/-! ## A241373.P6454165533573390440

`A241370(A167614(n+2)+1)`
-/

namespace A241373.P6454165533573390440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A167614 (n + 2) + 1).toNat

end

end A241373.P6454165533573390440

/-! ## A241373.P8537995650610803740

`A241370(eq[5, A131818(n+1)])`
-/

namespace A241373.P8537995650610803740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241373.P8537995650610803740

/-!
# A241374: Number of 5Xn 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241374, there is no canonical definition to state claims against.
-/

/-! ## A241374.P10993982962932921969

`A241370(A167499(n+3))`
-/

namespace A241374.P10993982962932921969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A167499 (n + 3)).toNat

end

end A241374.P10993982962932921969

/-! ## A241374.P13828264843419224525

`A241370(A155212(n)+13)`
-/

namespace A241374.P13828264843419224525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A155212 n + 13).toNat

end

end A241374.P13828264843419224525

/-! ## A241374.P4661385909606828000

`A241370(A056000(n)+15)`
-/

namespace A241374.P4661385909606828000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A056000 n + 15).toNat

end

end A241374.P4661385909606828000

/-! ## A241374.P15144469693716828294

`A241370(eq[7, A066657(n)])`
-/

namespace A241374.P15144469693716828294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241374.P15144469693716828294

/-! ## A241374.P3042824345375010385

`A241370(A051936(n+4)+14)`
-/

namespace A241374.P3042824345375010385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A051936 (n + 4) + 14).toNat

end

end A241374.P3042824345375010385

/-!
# A241375: Number of 6Xn 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241375, there is no canonical definition to state claims against.
-/

/-! ## A241375.P5954506615205792245

`A241370(A167499(n+4)+1)`
-/

namespace A241375.P5954506615205792245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A167499 (n + 4) + 1).toNat

end

end A241375.P5954506615205792245

/-! ## A241375.P9487518884454939535

`A241370(A000217(n+5)+6)`
-/

namespace A241375.P9487518884454939535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (A000217 (n + 5) + 6).toNat

end

end A241375.P9487518884454939535

/-! ## A241375.P13855823440612835819

`A241370(eq[7, A131818(n+1)])`
-/

namespace A241375.P13855823440612835819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241375.P13855823440612835819

/-! ## A241375.P4737414218148169621

`A241370(eq[7, A123229(n+1)])`
-/

namespace A241375.P4737414218148169621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241375.P4737414218148169621

/-!
# A241376: Number of 7 X n 0..2 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241376, there is no canonical definition to state claims against.
-/

/-! ## A241376.P17247280357999364633

`A241370(eq[8, A131818(n+1)])`
-/

namespace A241376.P17247280357999364633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241376.P17247280357999364633

/-!
# A241377: Number of partitions of n such that the number of parts is a part and the number of distinct parts is a part.

The programs for A241377, there is no canonical definition to state claims against.
-/

/-! ## A241377.P16354341189122501768

`A085811(n+2)-A241379(n)`
-/

namespace A241377.P16354341189122501768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) - A241379 n

end

end A241377.P16354341189122501768

/-! ## A241377.P3165976499718091243

`A116598(∑[n]+1)-A241379(n)`
-/

namespace A241377.P3165976499718091243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241379 n

end

end A241377.P3165976499718091243

/-! ## A241377.P7925135353273483237

`A027336(n)-(A241379(n)+A002865(n))`
-/

namespace A241377.P7925135353273483237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n - (A241379 n + A002865 n)

end

end A241377.P7925135353273483237

/-! ## A241377.P5441283050775317853

`A241382(n)+A241384(n)-A241379(n)`
-/

namespace A241377.P5441283050775317853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241382 n + (A241384 n - A241379 n)

end

end A241377.P5441283050775317853

/-! ## A241377.P5500250394158960203

`A241386(n)-(A241383(n)+A241379(n))`
-/

namespace A241377.P5500250394158960203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241383 n + A241379 n)

end

end A241377.P5500250394158960203

/-! ## A241377.P13703262498418012270

`A239945(n)-A241378(n)`
-/

namespace A241377.P13703262498418012270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239945 n - A241378 n

end

end A241377.P13703262498418012270

/-! ## A241377.P1492525643317281814

`A241381(n)-(A241379(n)+A241378(n))`
-/

namespace A241377.P1492525643317281814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241381 n - (A241379 n + A241378 n)

end

end A241377.P1492525643317281814

/-! ## A241377.P3826675795116230948

`A241387(n)+A241389(n)-A241378(n)`
-/

namespace A241377.P3826675795116230948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + (A241389 n - A241378 n)

end

end A241377.P3826675795116230948

/-! ## A241377.P15428616617175197873

`A241442(n)+A241443(n)-A241378(n)`
-/

namespace A241377.P15428616617175197873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241443 n - A241378 n)

end

end A241377.P15428616617175197873

/-! ## A241377.P1149943164984990081

`A241409(n)+A241410(n)-A241378(n)`
-/

namespace A241377.P1149943164984990081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + (A241410 n - A241378 n)

end

end A241377.P1149943164984990081

/-!
# A241378: Number of partitions of n such that the number of parts is not a part and the number of distinct parts is a part.

The programs for A241378, there is no canonical definition to state claims against.
-/

/-! ## A241378.P3768886604930677334

`A239945(n)-A241377(n)`
-/

namespace A241378.P3768886604930677334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239945 n - A241377 n

end

end A241378.P3768886604930677334

/-! ## A241378.P9973077738790334016

`A241381(n)-(A241379(n)+A241377(n))`
-/

namespace A241378.P9973077738790334016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241381 n - (A241379 n + A241377 n)

end

end A241378.P9973077738790334016

/-! ## A241378.P15579323909694715766

`A241387(n)+A241389(n)-A241377(n)`
-/

namespace A241378.P15579323909694715766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + (A241389 n - A241377 n)

end

end A241378.P15579323909694715766

/-! ## A241378.P432054841414768677

`A229816(n)-A241380(n)`
-/

namespace A241378.P432054841414768677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 n - A241380 n

end

end A241378.P432054841414768677

/-! ## A241378.P1128670818774577744

`A241442(n)+A241443(n)-A241377(n)`
-/

namespace A241378.P1128670818774577744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241443 n - A241377 n)

end

end A241378.P1128670818774577744

/-! ## A241378.P15773792917022597685

`A241409(n)+A241410(n)-A241377(n)`
-/

namespace A241378.P15773792917022597685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + (A241410 n - A241377 n)

end

end A241378.P15773792917022597685

/-! ## A241378.P7737611378369931507

`A000041(n)-(A241377(n)+A241412(n)+A241411(n))`
-/

namespace A241378.P7737611378369931507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241377 n + (A241412 n + A241411 n))

end

end A241378.P7737611378369931507

/-! ## A241378.P7409686939448650936

`A000041(n)-(A241377(n)+A241445(n)+A241444(n))`
-/

namespace A241378.P7409686939448650936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241377 n + (A241445 n + A241444 n))

end

end A241378.P7409686939448650936

/-! ## A241378.P12025028325967037997

`A139582(n)/2-(A241377(n)+A241412(n)+A241411(n))`
-/

namespace A241378.P12025028325967037997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241377 n + (A241412 n + A241411 n) : ℚ)

end

end A241378.P12025028325967037997

/-! ## A241378.P9324911298570410489

`A139582(n)/2-(A241377(n)+A241445(n)+A241444(n))`
-/

namespace A241378.P9324911298570410489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241377 n + (A241445 n + A241444 n) : ℚ)

end

end A241378.P9324911298570410489

/-!
# A241379: Number of partitions of n such that the number of parts is a part and the number of distinct parts is not a part.

The programs for A241379, there is no canonical definition to state claims against.
-/

/-! ## A241379.P11397229548949448881

`A085811(n+2)-A241377(n)`
-/

namespace A241379.P11397229548949448881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) - A241377 n

end

end A241379.P11397229548949448881

/-! ## A241379.P9528937328673015013

`A116598(∑[n]+1)-A241377(n)`
-/

namespace A241379.P9528937328673015013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241377 n

end

end A241379.P9528937328673015013

/-! ## A241379.P6008442031340459409

`A027336(n)-(A241377(n)+A002865(n))`
-/

namespace A241379.P6008442031340459409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n - (A241377 n + A002865 n)

end

end A241379.P6008442031340459409

/-! ## A241379.P14111154504067815046

`A241382(n)+A241384(n)-A241377(n)`
-/

namespace A241379.P14111154504067815046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241382 n + (A241384 n - A241377 n)

end

end A241379.P14111154504067815046

/-! ## A241379.P16640272155922414484

`A241386(n)-(A241383(n)+A241377(n))`
-/

namespace A241379.P16640272155922414484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241383 n + A241377 n)

end

end A241379.P16640272155922414484

/-! ## A241379.P2335262119863944174

`A241381(n)-A239945(n)`
-/

namespace A241379.P2335262119863944174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241381 n - A239945 n

end

end A241379.P2335262119863944174

/-! ## A241379.P3947546495941776639

`A241381(n)-(A241378(n)+A241377(n))`
-/

namespace A241379.P3947546495941776639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241381 n - (A241378 n + A241377 n)

end

end A241379.P3947546495941776639

/-! ## A241379.P15048034944621085326

`A222730(A001105(n))-A241377(n)`
-/

namespace A241379.P15048034944621085326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A001105 n).toNat - A241377 n

end

end A241379.P15048034944621085326

/-! ## A241379.P8423901520888012998

`A222730(A001844(n))-A241377(n)`
-/

namespace A241379.P8423901520888012998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A001844 n).toNat - A241377 n

end

end A241379.P8423901520888012998

/-!
# A241380: Number of partitions of n such that neither the number of parts nor the number of distinct parts is a part.

The programs for A241380, there is no canonical definition to state claims against.
-/

/-! ## A241380.P17525806324446247112

`A000041(n)-A241381(n)`
-/

namespace A241380.P17525806324446247112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241381 n

end

end A241380.P17525806324446247112

/-! ## A241380.P17823123159954211316

`A229816(n)-A241378(n)`
-/

namespace A241380.P17823123159954211316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 n - A241378 n

end

end A241380.P17823123159954211316

/-! ## A241380.P2696647975920426604

`sqrt(A001255(n))-A241381(n)`
-/

namespace A241380.P2696647975920426604
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241381 n : ℝ)

end

end A241380.P2696647975920426604

/-! ## A241380.P14583488138000337382

`A239946(n)-A241379(n)`
-/

namespace A241380.P14583488138000337382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239946 n - A241379 n

end

end A241380.P14583488138000337382

/-!
# A241381: Number of partitions of n such that the number of parts or the number of distinct parts is a part.

The programs for A241381, there is no canonical definition to state claims against.
-/

/-! ## A241381.P13047134946919144408

`A241379(n)+A239945(n)`
-/

namespace A241381.P13047134946919144408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241379 n + A239945 n

end

end A241381.P13047134946919144408

/-! ## A241381.P11634328195927920707

`A241379(n)+A241378(n)+A241377(n)`
-/

namespace A241381.P11634328195927920707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241379 n + A241378 n + A241377 n

end

end A241381.P11634328195927920707

/-! ## A241381.P6809655033136545945

`A000041(n)-A241380(n)`
-/

namespace A241381.P6809655033136545945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241380 n

end

end A241381.P6809655033136545945

/-! ## A241381.P14405125081760346047

`sqrt(A001255(n))-A241380(n)`
-/

namespace A241381.P14405125081760346047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241380 n : ℝ)

end

end A241381.P14405125081760346047

/-! ## A241381.P13004129205304506883

`∑[A002865(n)]-A241380(n)`
-/

namespace A241381.P13004129205304506883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241380 n

end

end A241381.P13004129205304506883

/-!
# A241382: Number of partitions p of n such that the number of parts is a part and max(p) - min(p) is a part.

The programs for A241382, there is no canonical definition to state claims against.
-/

/-! ## A241382.P7565241344985131808

`A085811(n+2)-A241384(n)`
-/

namespace A241382.P7565241344985131808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) - A241384 n

end

end A241382.P7565241344985131808

/-! ## A241382.P4287533773030162404

`A116598(∑[n]+1)-A241384(n)`
-/

namespace A241382.P4287533773030162404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241384 n

end

end A241382.P4287533773030162404

/-! ## A241382.P14800459454367377337

`A027336(n)-(A241384(n)+A002865(n))`
-/

namespace A241382.P14800459454367377337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n - (A241384 n + A002865 n)

end

end A241382.P14800459454367377337

/-! ## A241382.P3788317142931878269

`A241377(n)+A241379(n)-A241384(n)`
-/

namespace A241382.P3788317142931878269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241379 n - A241384 n)

end

end A241382.P3788317142931878269

/-! ## A241382.P2167233449233595208

`A238493(A028310(n))-A241383(n)`
-/

namespace A241382.P2167233449233595208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 (A028310 n).toNat - A241383 n

end

end A241382.P2167233449233595208

/-! ## A241382.P5463978002780014004

`A241386(n)-(A241384(n)+A241383(n))`
-/

namespace A241382.P5463978002780014004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241384 n + A241383 n)

end

end A241382.P5463978002780014004

/-! ## A241382.P13394057703264110892

`A241387(n)+A241388(n)-A241383(n)`
-/

namespace A241382.P13394057703264110892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + (A241388 n - A241383 n)

end

end A241382.P13394057703264110892

/-! ## A241382.P1005855827719395947

`A241447(n)+A241448(n)-A241383(n)`
-/

namespace A241382.P1005855827719395947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241447 n + (A241448 n - A241383 n)

end

end A241382.P1005855827719395947

/-! ## A241382.P13014198758377301139

`A222730(A001105(n))-A241384(n)`
-/

namespace A241382.P13014198758377301139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A001105 n).toNat - A241384 n

end

end A241382.P13014198758377301139

/-! ## A241382.P10780408874148592442

`A222730(A001844(n))-A241384(n)`
-/

namespace A241382.P10780408874148592442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A001844 n).toNat - A241384 n

end

end A241382.P10780408874148592442

/-!
# A241383: Number of partitions p of n such that the number of parts is not a part and max(p) - min(p) is a part.

The programs for A241383, there is no canonical definition to state claims against.
-/

/-! ## A241383.P15738243370570982830

`A238493(round(acot(n)+n))-A241382(n)`
-/

namespace A241383.P15738243370570982830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A241382 n

end

end A241383.P15738243370570982830

/-! ## A241383.P12515076275299637500

`A238493(abs(C(2, n)-n))-A241382(n)`
-/

namespace A241383.P12515076275299637500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat - A241382 n

end

end A241383.P12515076275299637500

/-! ## A241383.P8366348496862598319

`A238493(round(sqrt(n²+1)))-A241382(n)`
-/

namespace A241383.P8366348496862598319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A241382 n

end

end A241383.P8366348496862598319

/-! ## A241383.P7930695553678009888

`abs(A238493(A028310(n))-A241382(n))`
-/

namespace A241383.P7930695553678009888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238493 (A028310 n).toNat - A241382 n|

end

end A241383.P7930695553678009888

/-! ## A241383.P4689156093002716321

`A241386(n)-(A241384(n)+A241382(n))`
-/

namespace A241383.P4689156093002716321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241384 n + A241382 n)

end

end A241383.P4689156093002716321

/-! ## A241383.P5339402721619766929

`abs(A238493(A233583(n+1))-A241382(n))`
-/

namespace A241383.P5339402721619766929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238493 (A233583 (n + 1)).toNat - A241382 n|

end

end A241383.P5339402721619766929

/-! ## A241383.P16532351177435888899

`(A238493(A028310(n))-A241382(n))%A000041(n)`
-/

namespace A241383.P16532351177435888899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238493 (A028310 n).toNat - A241382 n) (A000041 n)

end

end A241383.P16532351177435888899

/-! ## A241383.P8565123113594020905

`A238493(A028310(n))-(A085811(n+2)-A241384(n))`
-/

namespace A241383.P8565123113594020905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 (A028310 n).toNat - (A085811 (n + 2) - A241384 n)

end

end A241383.P8565123113594020905

/-! ## A241383.P5255346357833810767

`(A238493(A233583(n+1))-A241382(n))%A000041(n)`
-/

namespace A241383.P5255346357833810767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238493 (A233583 (n + 1)).toNat - A241382 n) (A000041 n)

end

end A241383.P5255346357833810767

/-! ## A241383.P15470235878209405330

`A229816(n)-A241385(n)`
-/

namespace A241383.P15470235878209405330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 n - A241385 n

end

end A241383.P15470235878209405330

/-!
# A241384: Number of partitions p of n such that the number of parts is a part and max(p) - min(p) is not a part.

The programs for A241384, there is no canonical definition to state claims against.
-/

/-! ## A241384.P7509930285224328396

`A085811(n+2)-A241382(n)`
-/

namespace A241384.P7509930285224328396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) - A241382 n

end

end A241384.P7509930285224328396

/-! ## A241384.P12084145362705222693

`A116598(∑[n]+1)-A241382(n)`
-/

namespace A241384.P12084145362705222693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241382 n

end

end A241384.P12084145362705222693

/-! ## A241384.P5092128006352258658

`A027336(n)-(A241382(n)+A002865(n))`
-/

namespace A241384.P5092128006352258658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n - (A241382 n + A002865 n)

end

end A241384.P5092128006352258658

/-! ## A241384.P4255385359608000430

`A241377(n)+A241379(n)-A241382(n)`
-/

namespace A241384.P4255385359608000430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241379 n - A241382 n)

end

end A241384.P4255385359608000430

/-! ## A241384.P4678043375214620993

`A241386(n)-A238493(A028310(n))`
-/

namespace A241384.P4678043375214620993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - A238493 (A028310 n).toNat

end

end A241384.P4678043375214620993

/-! ## A241384.P5011398170339189230

`A241386(n)-(A241383(n)+A241382(n))`
-/

namespace A241384.P5011398170339189230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241383 n + A241382 n)

end

end A241384.P5011398170339189230

/-! ## A241384.P16711144596792252627

`A241386(n)-(A241388(n)+A241387(n))`
-/

namespace A241384.P16711144596792252627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241388 n + A241387 n)

end

end A241384.P16711144596792252627

/-! ## A241384.P9081730844616251308

`A241386(n)-(A241448(n)+A241447(n))`
-/

namespace A241384.P9081730844616251308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241448 n + A241447 n)

end

end A241384.P9081730844616251308

/-! ## A241384.P18118218132661234445

`A222730(A001844(n))-A241382(n)`
-/

namespace A241384.P18118218132661234445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A001844 n).toNat - A241382 n

end

end A241384.P18118218132661234445

/-!
# A241385: Number of partitions p of n such that the number of parts is not a part and max(p) - min(p) is not a part.

The programs for A241385, there is no canonical definition to state claims against.
-/

/-! ## A241385.P12487949689236387729

`A000041(n)-A241386(n)`
-/

namespace A241385.P12487949689236387729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241386 n

end

end A241385.P12487949689236387729

/-! ## A241385.P17246967809136442698

`A229816(n)-A241383(n)`
-/

namespace A241385.P17246967809136442698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 n - A241383 n

end

end A241385.P17246967809136442698

/-! ## A241385.P6914183956013403357

`sqrt(A001255(n))-A241386(n)`
-/

namespace A241385.P6914183956013403357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241386 n : ℝ)

end

end A241385.P6914183956013403357

/-! ## A241385.P10683964290070276994

`∑[A002865(n)]-A241386(n)`
-/

namespace A241385.P10683964290070276994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241386 n

end

end A241385.P10683964290070276994

/-!
# A241386: Number of partitions p of n such that the number of parts is a part or max(p) - min(p) is a part.

The programs for A241386, there is no canonical definition to state claims against.
-/

/-! ## A241386.P15677792953257455205

`A241384(n)+A238493(round(sqrt(n²+1)))`
-/

namespace A241386.P15677792953257455205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241384 n + A238493 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A241386.P15677792953257455205

/-! ## A241386.P4286558427936901840

`A241383(n)+A085811(n+2)`
-/

namespace A241386.P4286558427936901840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241383 n + A085811 (n + 2)

end

end A241386.P4286558427936901840

/-! ## A241386.P17081965054079538868

`A241383(n)+A116598(∑[n]+1)`
-/

namespace A241386.P17081965054079538868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241383 n + A116598 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241386.P17081965054079538868

/-! ## A241386.P11862915239214131895

`A241377(n)+A241383(n)+A241379(n)`
-/

namespace A241386.P11862915239214131895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241383 n + A241379 n)

end

end A241386.P11862915239214131895

/-! ## A241386.P12650066637291137181

`A241382(n)+A241384(n)+A241383(n)`
-/

namespace A241386.P12650066637291137181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241382 n + (A241384 n + A241383 n)

end

end A241386.P12650066637291137181

/-! ## A241386.P9323865531967784926

`A000041(n)+A241383(n)-A229816(n)`
-/

namespace A241386.P9323865531967784926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A241383 n - A229816 n)

end

end A241386.P9323865531967784926

/-! ## A241386.P12730397783858438381

`A000041(n)-A241385(n)`
-/

namespace A241386.P12730397783858438381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241385 n

end

end A241386.P12730397783858438381

/-! ## A241386.P8641051711493677710

`A241384(n)+A241388(n)+A241387(n)`
-/

namespace A241386.P8641051711493677710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241384 n + (A241388 n + A241387 n)

end

end A241386.P8641051711493677710

/-! ## A241386.P6473480118899012849

`A241384(n)+A241448(n)+A241447(n)`
-/

namespace A241386.P6473480118899012849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241384 n + (A241448 n + A241447 n)

end

end A241386.P6473480118899012849

/-! ## A241386.P13742767608979568898

`A241383(n)+A222730(A001105(n))`
-/

namespace A241386.P13742767608979568898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241383 n + A222730 (A001105 n).toNat

end

end A241386.P13742767608979568898

/-!
# A241387: Number of partitions p of n such that the number of distinct parts is a part and max(p) - min(p) is a part.

The programs for A241387, there is no canonical definition to state claims against.
-/

/-! ## A241387.P9200662120744894226

`A238493(abs(1-n)+1)-A241388(n)`
-/

namespace A241387.P9200662120744894226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 (|1 - (n : ℤ)| + 1).toNat - A241388 n

end

end A241387.P9200662120744894226

/-! ## A241387.P8183968369673391781

`abs(A238493(A028310(n))-A241388(n))`
-/

namespace A241387.P8183968369673391781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238493 (A028310 n).toNat - A241388 n|

end

end A241387.P8183968369673391781

/-! ## A241387.P14945619873935403002

`A241382(n)+A241383(n)-A241388(n)`
-/

namespace A241387.P14945619873935403002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241382 n + (A241383 n - A241388 n)

end

end A241387.P14945619873935403002

/-! ## A241387.P5909431860049834386

`A241386(n)-(A241388(n)+A241384(n))`
-/

namespace A241387.P5909431860049834386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241388 n + A241384 n)

end

end A241387.P5909431860049834386

/-! ## A241387.P6719662644417158375

`A241447(n)+A241448(n)-A241388(n)`
-/

namespace A241387.P6719662644417158375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241447 n + (A241448 n - A241388 n)

end

end A241387.P6719662644417158375

/-! ## A241387.P16249096650194192127

`A239945(n)-A241389(n)`
-/

namespace A241387.P16249096650194192127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239945 n - A241389 n

end

end A241387.P16249096650194192127

/-! ## A241387.P14466528823376492934

`A241377(n)+A241378(n)-A241389(n)`
-/

namespace A241387.P14466528823376492934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241378 n - A241389 n)

end

end A241387.P14466528823376492934

/-! ## A241387.P12769802729075737774

`A241391(n)-(A241389(n)+A241388(n))`
-/

namespace A241387.P12769802729075737774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241391 n - (A241389 n + A241388 n)

end

end A241387.P12769802729075737774

/-! ## A241387.P7862779479218263020

`A241442(n)+A241443(n)-A241389(n)`
-/

namespace A241387.P7862779479218263020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241443 n - A241389 n)

end

end A241387.P7862779479218263020

/-! ## A241387.P10363228605148763995

`A241409(n)+A241410(n)-A241389(n)`
-/

namespace A241387.P10363228605148763995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + (A241410 n - A241389 n)

end

end A241387.P10363228605148763995

/-!
# A241388: Number of partitions p of n such that the number of distinct parts is not a part and max(p) - min(p) is a part.

The programs for A241388, there is no canonical definition to state claims against.
-/

/-! ## A241388.P7668047333486936271

`A238493(round(sqrt(n²+1)))-A241387(n)`
-/

namespace A241388.P7668047333486936271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A241387 n

end

end A241388.P7668047333486936271

/-! ## A241388.P13051379246344524872

`A241391(n)-A239945(n)`
-/

namespace A241388.P13051379246344524872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241391 n - A239945 n

end

end A241388.P13051379246344524872

/-! ## A241388.P5154047075337478717

`A241391(n)-(A241389(n)+A241387(n))`
-/

namespace A241388.P5154047075337478717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241391 n - (A241389 n + A241387 n)

end

end A241388.P5154047075337478717

/-! ## A241388.P9195927908755961734

`A239946(n)-A241390(n)`
-/

namespace A241388.P9195927908755961734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239946 n - A241390 n

end

end A241388.P9195927908755961734

/-!
# A241389: Number of partitions p of n such that the number of distinct parts is a part and max(p) - min(p) is not a part.

The programs for A241389, there is no canonical definition to state claims against.
-/

/-! ## A241389.P1367251311377326893

`A239945(n)-A241387(n)`
-/

namespace A241389.P1367251311377326893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239945 n - A241387 n

end

end A241389.P1367251311377326893

/-! ## A241389.P16199849519561943857

`A241377(n)+A241378(n)-A241387(n)`
-/

namespace A241389.P16199849519561943857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241378 n - A241387 n)

end

end A241389.P16199849519561943857

/-! ## A241389.P12123254539156889660

`A241391(n)-(A241388(n)+A241387(n))`
-/

namespace A241389.P12123254539156889660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241391 n - (A241388 n + A241387 n)

end

end A241389.P12123254539156889660

/-! ## A241389.P14877051306481651297

`A241442(n)+A241443(n)-A241387(n)`
-/

namespace A241389.P14877051306481651297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241443 n - A241387 n)

end

end A241389.P14877051306481651297

/-! ## A241389.P18403835414215948473

`A241409(n)+A241410(n)-A241387(n)`
-/

namespace A241389.P18403835414215948473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + (A241410 n - A241387 n)

end

end A241389.P18403835414215948473

/-! ## A241389.P17049760066307457707

`A000041(n)-A241445(n)-A241444(n)-A241387(n)`
-/

namespace A241389.P17049760066307457707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241445 n - A241444 n - A241387 n

end

end A241389.P17049760066307457707

/-!
# A241390: Number of partitions p of n such that the number of distinct parts is not a part and max(p) - min(p) is not a part.

The programs for A241390, there is no canonical definition to state claims against.
-/

/-! ## A241390.P3119406731039491005

`A000041(n)-A241391(n)`
-/

namespace A241390.P3119406731039491005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241391 n

end

end A241390.P3119406731039491005

/-! ## A241390.P11517993562855444724

`sqrt(A001255(n))-A241391(n)`
-/

namespace A241390.P11517993562855444724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241391 n : ℝ)

end

end A241390.P11517993562855444724

/-! ## A241390.P5186045527421194297

`∑[A002865(n)]-A241391(n)`
-/

namespace A241390.P5186045527421194297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241391 n

end

end A241390.P5186045527421194297

/-! ## A241390.P17655621456828529038

`A239946(n)-A241388(n)`
-/

namespace A241390.P17655621456828529038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239946 n - A241388 n

end

end A241390.P17655621456828529038

/-!
# A241391: Number of partitions p of n such that the number of distinct parts is a part or max(p) - min(p) is a part.

The programs for A241391, there is no canonical definition to state claims against.
-/

/-! ## A241391.P820271848299908545

`A241388(n)+A239945(n)`
-/

namespace A241391.P820271848299908545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241388 n + A239945 n

end

end A241391.P820271848299908545

/-! ## A241391.P8870420394157187794

`A000041(n)-A241390(n)`
-/

namespace A241391.P8870420394157187794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241390 n

end

end A241391.P8870420394157187794

/-! ## A241391.P7970743246103135362

`sqrt(A001255(n))-A241390(n)`
-/

namespace A241391.P7970743246103135362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241390 n : ℝ)

end

end A241391.P7970743246103135362

/-! ## A241391.P3829453856098586017

`∑[A002865(n)]-A241390(n)`
-/

namespace A241391.P3829453856098586017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241390 n

end

end A241391.P3829453856098586017

/-! ## A241391.P6161798887756428445

`A241389(n)+A241388(n)+A241387(n)`
-/

namespace A241391.P6161798887756428445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241389 n + A241388 n + A241387 n

end

end A241391.P6161798887756428445

/-!
# A241392: Number of nX2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241392, there is no canonical definition to state claims against.
-/

/-! ## A241392.P16224510296971184795

`A241397(∑[n+2])`
-/

namespace A241392.P16224510296971184795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241392.P16224510296971184795

/-! ## A241392.P14768089561992695972

`record[A241397(n+2)/A239986(n+4)]`
-/

namespace A241392.P14768089561992695972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241397 (n + 2) : ℚ) / (A239986 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241392.P14768089561992695972

/-! ## A241392.P9465933620783437391

`A241397(A000096(n+1))%A017024(n)`
-/

namespace A241392.P9465933620783437391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241397 (A000096 (n + 1)).toNat) (A017024 n)

end

end A241392.P9465933620783437391

/-! ## A241392.P14183787107940694282

`A057427(n+1)*A241397(A000096(n+1))`
-/

namespace A241392.P14183787107940694282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A241397 (A000096 (n + 1)).toNat

end

end A241392.P14183787107940694282

/-! ## A241392.P17499580428539504868

`A133707(n+1)*A241397(A000096(n+1))`
-/

namespace A241392.P17499580428539504868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A241397 (A000096 (n + 1)).toNat

end

end A241392.P17499580428539504868

/-!
# A241393: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241393, there is no canonical definition to state claims against.
-/

/-! ## A241393.P15093663689617796700

`A241397(∑[n+3]+1)`
-/

namespace A241393.P15093663689617796700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241393.P15093663689617796700

/-! ## A241393.P11804182459770550715

`record[A241397(A198464(n+1))]`
-/

namespace A241393.P11804182459770550715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241393.P11804182459770550715

/-! ## A241393.P18238582531207828063

`A241397(A034856(n+2))%A111009(n+1)`
-/

namespace A241393.P18238582531207828063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241397 (A034856 (n + 2)).toNat) (A111009 (n + 1))

end

end A241393.P18238582531207828063

/-!
# A241394: Number of n X 4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241394, there is no canonical definition to state claims against.
-/

/-! ## A241394.P8304777399585022250

`A241397(A141214(n+1))`
-/

namespace A241394.P8304777399585022250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A141214 (n + 1)).toNat

end

end A241394.P8304777399585022250

/-! ## A241394.P6601896258936423228

`A241397(A055998(n+2))`
-/

namespace A241394.P6601896258936423228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A055998 (n + 2)).toNat

end

end A241394.P6601896258936423228

/-! ## A241394.P4123252455856956999

`A241397(A155212(n)+5)`
-/

namespace A241394.P4123252455856956999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A155212 n + 5).toNat

end

end A241394.P4123252455856956999

/-! ## A241394.P15355345800003291793

`A241397(A056000(n)+7)`
-/

namespace A241394.P15355345800003291793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A056000 n + 7).toNat

end

end A241394.P15355345800003291793

/-! ## A241394.P3179672343277136736

`A241397(eq[2, A152157(n)])`
-/

namespace A241394.P3179672343277136736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241394.P3179672343277136736

/-!
# A241395: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241395, there is no canonical definition to state claims against.
-/

/-! ## A241395.P7334271470366362205

`A241397(Δ[A264443(n)])`
-/

namespace A241395.P7334271470366362205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (f1 (n + 1) - f1 n).toNat

end

end A241395.P7334271470366362205

/-! ## A241395.P7427873824928905654

`A241397(eq[2, A092921(n)])`
-/

namespace A241395.P7427873824928905654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241395.P7427873824928905654

/-! ## A241395.P5131984849245944956

`A241397(eq[3, A152157(n)])`
-/

namespace A241395.P5131984849245944956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241395.P5131984849245944956

/-! ## A241395.P596021188495512602

`A241397(eq[4, A193592(n)])`
-/

namespace A241395.P596021188495512602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241395.P596021188495512602

/-! ## A241395.P10151260008728599973

`A241397(Δ[A023545(n+1)])`
-/

namespace A241395.P10151260008728599973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (f1 (n + 1) - f1 n).toNat

end

end A241395.P10151260008728599973

/-!
# A241396: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241396, there is no canonical definition to state claims against.
-/

/-! ## A241396.P12241464326199578681

`A241397(A052905(n+3))`
-/

namespace A241396.P12241464326199578681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A052905 (n + 3)).toNat

end

end A241396.P12241464326199578681

/-! ## A241396.P5888305375977659618

`A241397(A056119(n)+16)`
-/

namespace A241396.P5888305375977659618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A056119 n + 16).toNat

end

end A241396.P5888305375977659618

/-! ## A241396.P78161594137095691

`A241397(eq[3, A219347(n)])`
-/

namespace A241396.P78161594137095691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241396.P78161594137095691

/-! ## A241396.P6953269523183042225

`A241397(eq[5, A193592(n)])`
-/

namespace A241396.P6953269523183042225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241396.P6953269523183042225

/-! ## A241396.P16582973141309810244

`A241397(A055999(n+3)+1)`
-/

namespace A241396.P16582973141309810244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A055999 (n + 3) + 1).toNat

end

end A241396.P16582973141309810244

/-!
# A241398: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241398, there is no canonical definition to state claims against.
-/

/-! ## A241398.P9431072632007769283

`A241397(∑[n+1]+2)`
-/

namespace A241398.P9431072632007769283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241398.P9431072632007769283

/-! ## A241398.P8745529192873047570

`record[A241397(n+3)/A110171(n)]`
-/

namespace A241398.P8745529192873047570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241397 (n + 3) : ℚ) / (A110171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241398.P8745529192873047570

/-! ## A241398.P154587083192670754

`record[A241397(n+3)/A227338(n)]`
-/

namespace A241398.P154587083192670754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241397 (n + 3) : ℚ) / (A227338 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241398.P154587083192670754

/-! ## A241398.P16682554459487473775

`record[A241397(n+3)/A283424(n)]`
-/

namespace A241398.P16682554459487473775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241397 (n + 3) : ℚ) / (A283424 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241398.P16682554459487473775

/-! ## A241398.P17288601317410140735

`record[A241397(n+4)-A321296(n+2)]`
-/

namespace A241398.P17288601317410140735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (n + 4) - A321296 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241398.P17288601317410140735

/-!
# A241399: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241399, there is no canonical definition to state claims against.
-/

/-! ## A241399.P4044485295821705493

`A241397(∑[n+2]+4)`
-/

namespace A241399.P4044485295821705493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241399.P4044485295821705493

/-! ## A241399.P8402044706695428570

`record[A241397(n+4)/A110171(n)]`
-/

namespace A241399.P8402044706695428570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241397 (n + 4) : ℚ) / (A110171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241399.P8402044706695428570

/-! ## A241399.P3234264575993090403

`record[A241397(n+4)/A283424(n)]`
-/

namespace A241399.P3234264575993090403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241397 (n + 4) : ℚ) / (A283424 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241399.P3234264575993090403

/-! ## A241399.P8129941036723940572

`or(val(n+1, 5), A241397(A167614(n+1)))`
-/

namespace A241399.P8129941036723940572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n + 1) 5 : ℤ) (A241397 (A167614 (n + 1)).toNat)

end

end A241399.P8129941036723940572

/-! ## A241399.P12880314505279439314

`A241397(A167614(n+1))+A025443(n)`
-/

namespace A241399.P12880314505279439314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A167614 (n + 1)).toNat + A025443 n

end

end A241399.P12880314505279439314

