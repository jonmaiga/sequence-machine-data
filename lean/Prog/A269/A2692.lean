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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A269200: Number of n X 7 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269200, there is no canonical definition to state claims against.
-/

/-! ## A269200.P13407754597799104495

`A269201(eq[4, A219347(n)])`
-/

namespace A269200.P13407754597799104495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269200.P13407754597799104495

/-! ## A269200.P3222676958767876623

`A269201(eq[6, A193592(n)])`
-/

namespace A269200.P3222676958767876623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269200.P3222676958767876623

/-! ## A269200.P3818830327921204714

`A269201(eq[7, A200370(n+1)])`
-/

namespace A269200.P3818830327921204714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269200.P3818830327921204714

/-! ## A269200.P12121661791766198054

`A269201(A055998(n+4)-A001489(n+3)+1)`
-/

namespace A269200.P12121661791766198054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A055998 (n + 4) - A001489 (n + 3) + 1).toNat

end

end A269200.P12121661791766198054

/-!
# A269201: T(n,k)=Number of nXk 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269201, there is no canonical definition to state claims against.
-/

/-! ## A269201.P17280964751898163254

`A269214(n+1)+4*A232955(n+1)`
-/

namespace A269201.P17280964751898163254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (n + 1) + 4 * A232955 (n + 1)

end

end A269201.P17280964751898163254

/-! ## A269201.P7963012495625568707

`A269214(n+1)+A008574(A232955(n+1))`
-/

namespace A269201.P7963012495625568707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (n + 1) + A008574 (A232955 (n + 1)).toNat

end

end A269201.P7963012495625568707

/-! ## A269201.P3602256069380164987

`A269109(n+1)+A192323(A048876(n))`
-/

namespace A269201.P3602256069380164987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (n + 1) + A192323 (A048876 n).toNat

end

end A269201.P3602256069380164987

/-!
# A269202: Number of 2 X n 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269202, there is no canonical definition to state claims against.
-/

/-! ## A269202.P8582946314493916645

`A269201(∑[n+1]+2)`
-/

namespace A269202.P8582946314493916645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269202.P8582946314493916645

/-! ## A269202.P6498268654944966531

`record[A010054(n)*A269201(n+2)]`
-/

namespace A269202.P6498268654944966531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A269201 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269202.P6498268654944966531

/-! ## A269202.P13619191619239483239

`record[root(A269201(n+2), A002260(n+1))]`
-/

namespace A269202.P13619191619239483239
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269201 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269202.P13619191619239483239

/-! ## A269202.P13232217950565118974

`record[gcd(A269201(n+3), A269214(n+1))]`
-/

namespace A269202.P13232217950565118974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269201 (n + 3)) (A269214 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269202.P13232217950565118974

/-! ## A269202.P17136635943988737888

`record[root(A269201(n+1), A131818(n+1))²]`
-/

namespace A269202.P17136635943988737888
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A269201 (n + 1) : ℝ) ^ (1 / (A131818 (n + 1) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269202.P17136635943988737888

/-!
# A269203: Number of 3 X n 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269203, there is no canonical definition to state claims against.
-/

/-! ## A269203.P6880153626034045949

`A269201(∑[n+2]+4)`
-/

namespace A269203.P6880153626034045949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269203.P6880153626034045949

/-! ## A269203.P5333315970137987655

`lcm(2, A269201(A167614(n+1)))`
-/

namespace A269203.P5333315970137987655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269201 (A167614 (n + 1)).toNat)

end

end A269203.P5333315970137987655

/-! ## A269203.P9565956022145094803

`A269201(A167614(n+1))+A025466(n)`
-/

namespace A269203.P9565956022145094803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A167614 (n + 1)).toNat + A025466 n

end

end A269203.P9565956022145094803

/-! ## A269203.P5677543913939010593

`A177849(n)*A269201(A167614(n+1))`
-/

namespace A269203.P5677543913939010593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A269201 (A167614 (n + 1)).toNat

end

end A269203.P5677543913939010593

/-! ## A269203.P16819876450005424731

`A193518(n+1)*A269201(A167614(n+1))`
-/

namespace A269203.P16819876450005424731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (n + 1) * A269201 (A167614 (n + 1)).toNat

end

end A269203.P16819876450005424731

/-!
# A269204: Number of 4Xn 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269204, there is no canonical definition to state claims against.
-/

/-! ## A269204.P967483872368238334

`A269201(A141214(n)+7)`
-/

namespace A269204.P967483872368238334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A141214 n + 7).toNat

end

end A269204.P967483872368238334

/-! ## A269204.P17197323636471326454

`A269201(A052905(n)+9)`
-/

namespace A269204.P17197323636471326454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A052905 n + 9).toNat

end

end A269204.P17197323636471326454

/-! ## A269204.P2638427109100935887

`A269201(A055999(n)+10)`
-/

namespace A269204.P2638427109100935887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A055999 n + 10).toNat

end

end A269204.P2638427109100935887

/-! ## A269204.P10114084976893602287

`A269201(Δ[A005586(n)]+5)`
-/

namespace A269204.P10114084976893602287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (f1 (n + 1) - f1 n + 5).toNat

end

end A269204.P10114084976893602287

/-! ## A269204.P1120696808265453690

`A269201(A167614(n+2)+1)`
-/

namespace A269204.P1120696808265453690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A167614 (n + 2) + 1).toNat

end

end A269204.P1120696808265453690

/-!
# A269205: Number of 5 X n 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269205, there is no canonical definition to state claims against.
-/

/-! ## A269205.P3117700316436237688

`A269201(A167499(n+3))`
-/

namespace A269205.P3117700316436237688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A167499 (n + 3)).toNat

end

end A269205.P3117700316436237688

/-! ## A269205.P4477739239043921975

`A269201(A155212(n)+13)`
-/

namespace A269205.P4477739239043921975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A155212 n + 13).toNat

end

end A269205.P4477739239043921975

/-! ## A269205.P15280441434884436388

`A269201(A056000(n)+15)`
-/

namespace A269205.P15280441434884436388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A056000 n + 15).toNat

end

end A269205.P15280441434884436388

/-! ## A269205.P9370981200572976282

`A269201(eq[7, A066657(n)])`
-/

namespace A269205.P9370981200572976282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269205.P9370981200572976282

/-! ## A269205.P15943172664937838678

`A269201(eq[6, A131818(n+1)])`
-/

namespace A269205.P15943172664937838678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269205.P15943172664937838678

/-!
# A269206: Number of 6Xn 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269206, there is no canonical definition to state claims against.
-/

/-! ## A269206.P13881290834704833382

`A269201(A167499(n+4)+1)`
-/

namespace A269206.P13881290834704833382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A167499 (n + 4) + 1).toNat

end

end A269206.P13881290834704833382

/-! ## A269206.P18404415589615275220

`A269201(eq[7, A131818(n+1)])`
-/

namespace A269206.P18404415589615275220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269206.P18404415589615275220

/-!
# A269207: Number of 7Xn 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269207, there is no canonical definition to state claims against.
-/

/-! ## A269207.P11675445276326966068

`A269201(A167499(n+5)+2)`
-/

namespace A269207.P11675445276326966068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A167499 (n + 5) + 2).toNat

end

end A269207.P11675445276326966068

/-! ## A269207.P12872689757804948337

`A269201(eq[8, A131818(n+1)])`
-/

namespace A269207.P12872689757804948337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269207.P12872689757804948337

/-! ## A269207.P3829383549266400654

`A269201(eq[6, A144328(n+1)]+1)`
-/

namespace A269207.P3829383549266400654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269207.P3829383549266400654

/-!
# A269208: Number of n X n 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269208, there is no canonical definition to state claims against.
-/

/-! ## A269208.P16270489728253462731

`A269214(∑[4*n]+1)`
-/

namespace A269208.P16270489728253462731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269208.P16270489728253462731

/-! ## A269208.P15053689925342669224

`record[A003982(n)*A269214(n+1)]`
-/

namespace A269208.P15053689925342669224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269208.P15053689925342669224

/-! ## A269208.P12707401528342330958

`A257463(n)*A269214(A001844(n))`
-/

namespace A269208.P12707401528342330958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 n * A269214 (A001844 n).toNat

end

end A269208.P12707401528342330958

/-! ## A269208.P5386694927543586526

`A269214(A001844(n))*A333733(n)`
-/

namespace A269208.P5386694927543586526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A001844 n).toNat * A333733 n

end

end A269208.P5386694927543586526

/-! ## A269208.P14180143977510310554

`A269214(A001844(n))*A333901(n)`
-/

namespace A269208.P14180143977510310554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A001844 n).toNat * A333901 n

end

end A269208.P14180143977510310554

/-!
# A269209: Number of n X 3 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269209, there is no canonical definition to state claims against.
-/

/-! ## A269209.P10155747318959654218

`A269214(∑[n+3]+1)`
-/

namespace A269209.P10155747318959654218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269209.P10155747318959654218

/-! ## A269209.P17714662739444074398

`lcm(2, A269214(A034856(n+2)))`
-/

namespace A269209.P17714662739444074398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269214 (A034856 (n + 2)).toNat)

end

end A269209.P17714662739444074398

/-! ## A269209.P14803841245445603328

`record[Δ[A269214(A130297(n+1))]]`
-/

namespace A269209.P14803841245445603328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A130297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269209.P14803841245445603328

/-! ## A269209.P8629304862769213309

`A269214(A034856(n+2))+A151878(n+1)`
-/

namespace A269209.P8629304862769213309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A034856 (n + 2)).toNat + A151878 (n + 1)

end

end A269209.P8629304862769213309

/-! ## A269209.P11307134201175894530

`A269214(A034856(n+2))%A269093(n+1)`
-/

namespace A269209.P11307134201175894530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269214 (A034856 (n + 2)).toNat) (A269093 (n + 1))

end

end A269209.P11307134201175894530

/-!
# A269210: Number of n X 4 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269210, there is no canonical definition to state claims against.
-/

/-! ## A269210.P12113705665030824414

`A269214(A141214(n+1))`
-/

namespace A269210.P12113705665030824414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A141214 (n + 1)).toNat

end

end A269210.P12113705665030824414

/-! ## A269210.P13636057429487920617

`A269214(A155212(n)+5)`
-/

namespace A269210.P13636057429487920617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A155212 n + 5).toNat

end

end A269210.P13636057429487920617

/-! ## A269210.P14437691856088279148

`A269214(A056000(n)+7)`
-/

namespace A269210.P14437691856088279148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A056000 n + 7).toNat

end

end A269210.P14437691856088279148

/-! ## A269210.P3604995770715091629

`A269214(eq[3, A193592(n)])`
-/

namespace A269210.P3604995770715091629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269210.P3604995770715091629

/-! ## A269210.P16231232438603172753

`A269214(eq[5, A001404(n)])`
-/

namespace A269210.P16231232438603172753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269210.P16231232438603172753

/-!
# A269211: Number of nX5 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269211, there is no canonical definition to state claims against.
-/

/-! ## A269211.P8267456286359956509

`A269214(Δ[A264443(n)])`
-/

namespace A269211.P8267456286359956509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (f1 (n + 1) - f1 n).toNat

end

end A269211.P8267456286359956509

/-! ## A269211.P7793001065010771087

`A269214(A046691(n+3))`
-/

namespace A269211.P7793001065010771087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A046691 (n + 3)).toNat

end

end A269211.P7793001065010771087

/-! ## A269211.P10035567824383481554

`A269214(eq[4, A193592(n)])`
-/

namespace A269211.P10035567824383481554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269211.P10035567824383481554

/-! ## A269211.P9791573390006171955

`A269214(Δ[A023545(n+1)])`
-/

namespace A269211.P9791573390006171955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (f1 (n + 1) - f1 n).toNat

end

end A269211.P9791573390006171955

/-! ## A269211.P3109727140723093585

`A269214(eq[8, A057728(n+1)])`
-/

namespace A269211.P3109727140723093585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269211.P3109727140723093585

/-!
# A269212: Number of nX6 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269212, there is no canonical definition to state claims against.
-/

/-! ## A269212.P5008888534768870215

`A269214(eq[3, A219347(n)])`
-/

namespace A269212.P5008888534768870215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269212.P5008888534768870215

/-! ## A269212.P7521873296301749530

`A269214(Δ[Δ[A006504(n+1)]])`
-/

namespace A269212.P7521873296301749530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (f1 (n + 1) - f1 n).toNat

end

end A269212.P7521873296301749530

/-!
# A269213: Number of nX7 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269213, there is no canonical definition to state claims against.
-/

/-! ## A269213.P8021354150011537906

`A269214(eq[4, A219347(n)])`
-/

namespace A269213.P8021354150011537906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269213.P8021354150011537906

/-! ## A269213.P6681044201352657253

`A269214(eq[6, A193592(n)])`
-/

namespace A269213.P6681044201352657253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269213.P6681044201352657253

/-! ## A269213.P4914139266641098573

`A269214(eq[32, A057728(n+1)])`
-/

namespace A269213.P4914139266641098573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269213.P4914139266641098573

/-!
# A269214: T(n,k)=Number of nXk 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269214, there is no canonical definition to state claims against.
-/

/-! ## A269214.P7347850364977279486

`A269201(n+1)-4*A232955(n+1)`
-/

namespace A269214.P7347850364977279486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (n + 1) - 4 * A232955 (n + 1)

end

end A269214.P7347850364977279486

/-! ## A269214.P15605048770787926219

`A269201(n+1)-A008574(A232955(n+1))`
-/

namespace A269214.P15605048770787926219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (n + 1) - A008574 (A232955 (n + 1)).toNat

end

end A269214.P15605048770787926219

/-! ## A269214.P11585447114437932443

`A003137(A308463(n+1))*A269186(n+1)`
-/

namespace A269214.P11585447114437932443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A308463 (n + 1)).toNat * A269186 (n + 1)

end

end A269214.P11585447114437932443

/-!
# A269215: Number of 2 X n 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269215, there is no canonical definition to state claims against.
-/

/-! ## A269215.P7972137597065170788

`A269214(∑[n+1]+2)`
-/

namespace A269215.P7972137597065170788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269215.P7972137597065170788

/-! ## A269215.P16155888220473987754

`record[A269214(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A269215.P16155888220473987754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269215.P16155888220473987754

/-! ## A269215.P2199907776201755373

`record[A269214(A133263(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A269215.P2199907776201755373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A133263 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269215.P2199907776201755373

/-! ## A269215.P15733883871621339357

`record[(1-A284823(n+1))*A269214(n+1)]`
-/

namespace A269215.P15733883871621339357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A284823 (n + 1)) * A269214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269215.P15733883871621339357

/-! ## A269215.P17673032911454934461

`record[A269214(A133263(∑{e}[n, #]))]`
-/

namespace A269215.P17673032911454934461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269215.P17673032911454934461

/-!
# A269216: Number of 3Xn 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269216, there is no canonical definition to state claims against.
-/

/-! ## A269216.P255073071443591938

`A269214(∑[n+2]+4)`
-/

namespace A269216.P255073071443591938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269216.P255073071443591938

/-! ## A269216.P15588666585660519301

`lcm(2, A269214(A167614(n+1)))`
-/

namespace A269216.P15588666585660519301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269214 (A167614 (n + 1)).toNat)

end

end A269216.P15588666585660519301

/-! ## A269216.P4967121235043359244

`A269214(A167614(n+1))+A025466(n)`
-/

namespace A269216.P4967121235043359244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A167614 (n + 1)).toNat + A025466 n

end

end A269216.P4967121235043359244

/-! ## A269216.P9559784350084595086

`A057427(n)*A269214(A167614(n+1))`
-/

namespace A269216.P9559784350084595086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A269214 (A167614 (n + 1)).toNat

end

end A269216.P9559784350084595086

/-! ## A269216.P6765520438952849799

`A177849(n)*A269214(A167614(n+1))`
-/

namespace A269216.P6765520438952849799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A269214 (A167614 (n + 1)).toNat

end

end A269216.P6765520438952849799

/-!
# A269217: Number of 4 X n 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269217, there is no canonical definition to state claims against.
-/

/-! ## A269217.P3845678768061415059

`A269214(A141214(n)+7)`
-/

namespace A269217.P3845678768061415059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A141214 n + 7).toNat

end

end A269217.P3845678768061415059

/-! ## A269217.P5075037094097395178

`A269214(A052905(n)+9)`
-/

namespace A269217.P5075037094097395178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A052905 n + 9).toNat

end

end A269217.P5075037094097395178

/-! ## A269217.P17899798404540924311

`A269214(A055999(n)+10)`
-/

namespace A269217.P17899798404540924311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A055999 n + 10).toNat

end

end A269217.P17899798404540924311

/-! ## A269217.P15578022169524818883

`A269214(Δ[A005586(n)]+5)`
-/

namespace A269217.P15578022169524818883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (f1 (n + 1) - f1 n + 5).toNat

end

end A269217.P15578022169524818883

/-! ## A269217.P487121552297418151

`A269214(A167614(n+2)+1)`
-/

namespace A269217.P487121552297418151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A167614 (n + 2) + 1).toNat

end

end A269217.P487121552297418151

/-!
# A269218: Number of 5Xn 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269218, there is no canonical definition to state claims against.
-/

/-! ## A269218.P6745353313645070531

`A269214(A167499(n+3))`
-/

namespace A269218.P6745353313645070531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A167499 (n + 3)).toNat

end

end A269218.P6745353313645070531

/-! ## A269218.P7253440156211768513

`A269214(A056000(n)+15)`
-/

namespace A269218.P7253440156211768513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A056000 n + 15).toNat

end

end A269218.P7253440156211768513

/-! ## A269218.P16946867270901376815

`A269214(A167614(n+3)+2)`
-/

namespace A269218.P16946867270901376815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A167614 (n + 3) + 2).toNat

end

end A269218.P16946867270901376815

/-! ## A269218.P6244359516123165983

`A269214(A046691(n+2)+9)`
-/

namespace A269218.P6244359516123165983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (A046691 (n + 2) + 9).toNat

end

end A269218.P6244359516123165983

/-! ## A269218.P3550941374124781641

`A269214(eq[6, A131818(n+1)])`
-/

namespace A269218.P3550941374124781641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269218.P3550941374124781641

/-!
# A269219: Number of 6Xn 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269219, there is no canonical definition to state claims against.
-/

/-! ## A269219.P3236937180282229124

`A269214(eq[7, A131818(n+1)])`
-/

namespace A269219.P3236937180282229124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269219.P3236937180282229124

/-!
# A269220: Number of 7Xn 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269220, there is no canonical definition to state claims against.
-/

/-! ## A269220.P11933494797217223195

`A269214(eq[8, A131818(n+1)])`
-/

namespace A269220.P11933494797217223195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269220.P11933494797217223195

/-!
# A269221: Factorial of the sum of decimal digits of n.

The programs for A269221, the canonical program `A269221.P16991346444194408351` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269221 has offset 0).

The definition of A269221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269221.P16991346444194408351

`A000142(A007953(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269221

/-- `A000142(A007953(n))` -/
def P16991346444194408351.Spec : Prop :=
  ∀ n, P16991346444194408351.a n = A269221 n

theorem P16991346444194408351.correct : P16991346444194408351.Spec := by
  intro n
  simp only [A269221]

end A269221

/-! ## A269221.P11814205944874321602

`∑{digits}[n, #]!`
-/

namespace A269221.P11814205944874321602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A269221.P11814205944874321602

namespace A269221

/-- `∑{digits}[n, #]!` -/
def P11814205944874321602.Spec : Prop :=
  ∀ n, (P11814205944874321602.a n : ℤ) = A269221 n

end A269221

/-! ## A269221.P285517766416939810

`log(∏{digits}[n, exp(#)])!`
-/

namespace A269221.P285517766416939810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod)).toNat

end

end A269221.P285517766416939810

namespace A269221

/-- `log(∏{digits}[n, exp(#)])!` -/
def P285517766416939810.Spec : Prop :=
  ∀ n, (P285517766416939810.a n : ℤ) = A269221 n

end A269221

/-! ## A269221.P12615847790396989566

`log2(∏{digits}[n, 2^#])!`
-/

namespace A269221.P12615847790396989566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ))).toNat

end

end A269221.P12615847790396989566

namespace A269221

/-- `log2(∏{digits}[n, 2^#])!` -/
def P12615847790396989566.Spec : Prop :=
  ∀ n, (P12615847790396989566.a n : ℤ) = A269221 n

end A269221

/-! ## A269221.P10716000893149570266

`val(∏{digits}[n, 2^#], 2)!`
-/

namespace A269221.P10716000893149570266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2)

end

end A269221.P10716000893149570266

namespace A269221

/-- `val(∏{digits}[n, 2^#], 2)!` -/
def P10716000893149570266.Spec : Prop :=
  ∀ n, (P10716000893149570266.a n : ℤ) = A269221 n

end A269221

/-! ## A269221.P3571078388736199068

`sqrt(A118881(n))!`
-/

namespace A269221.P3571078388736199068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A118881 n : ℝ))).toNat

end

end A269221.P3571078388736199068

namespace A269221

/-- `sqrt(A118881(n))!` -/
def P3571078388736199068.Spec : Prop :=
  ∀ n, (P3571078388736199068.a n : ℤ) = A269221 n

end A269221

/-! ## A269221.P16994276568636765364

`log2(A329562(n))!`
-/

namespace A269221.P16994276568636765364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A329562 n : ℝ))).toNat

end

end A269221.P16994276568636765364

namespace A269221

/-- `log2(A329562(n))!` -/
def P16994276568636765364.Spec : Prop :=
  ∀ n, (P16994276568636765364.a n : ℤ) = A269221 n

end A269221

/-! ## A269221.P2274754399044101087

`A000142(∑{digits}[n, #])`
-/

namespace A269221.P2274754399044101087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A269221.P2274754399044101087

namespace A269221

/-- `A000142(∑{digits}[n, #])` -/
def P2274754399044101087.Spec : Prop :=
  ∀ n, P2274754399044101087.a n = A269221 n

end A269221

/-! ## A269221.P17964613060480932842

`(A169805(n)/2)!`
-/

namespace A269221.P17964613060480932842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

end

end A269221.P17964613060480932842

namespace A269221

/-- `(A169805(n)/2)!` -/
def P17964613060480932842.Spec : Prop :=
  ∀ n, (P17964613060480932842.a n : ℤ) = A269221 n

end A269221

/-! ## A269221.P16783599872348680052

`(A062028(n)-n)!`
-/

namespace A269221.P16783599872348680052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A062028 n - (n : ℤ)).toNat

end

end A269221.P16783599872348680052

namespace A269221

/-- `(A062028(n)-n)!` -/
def P16783599872348680052.Spec : Prop :=
  ∀ n, (P16783599872348680052.a n : ℤ) = A269221 n

end A269221

/-! ## A269221.P975182989811030932

`A214078(∑{digits}[n, #]²)`
-/

namespace A269221.P975182989811030932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2)

end

end A269221.P975182989811030932

namespace A269221

/-- `A214078(∑{digits}[n, #]²)` -/
def P975182989811030932.Spec : Prop :=
  ∀ n, P975182989811030932.a n = A269221 n

end A269221

/-! ## A269221.P1884377039682791560

`A322225(∑{digits}[n, #]²)`
-/

namespace A269221.P1884377039682791560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322225 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2)

end

end A269221.P1884377039682791560

namespace A269221

/-- `A322225(∑{digits}[n, #]²)` -/
def P1884377039682791560.Spec : Prop :=
  ∀ n, P1884377039682791560.a n = A269221 n

end A269221

/-! ## A269221.P18310378103059628488

`A322229(∑{digits}[n, #]²)`
-/

namespace A269221.P18310378103059628488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322229 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2)

end

end A269221.P18310378103059628488

namespace A269221

/-- `A322229(∑{digits}[n, #]²)` -/
def P18310378103059628488.Spec : Prop :=
  ∀ n, P18310378103059628488.a n = A269221 n

end A269221

/-! ## A269221.P18110604835779553578

`A322235(∑{digits}[n, #]²)`
-/

namespace A269221.P18110604835779553578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2)

end

end A269221.P18110604835779553578

namespace A269221

/-- `A322235(∑{digits}[n, #]²)` -/
def P18110604835779553578.Spec : Prop :=
  ∀ n, P18110604835779553578.a n = A269221 n

end A269221

/-! ## A269221.P2240811543201778685

`A322891(∑{digits}[n, #]²)`
-/

namespace A269221.P2240811543201778685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322891 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2)

end

end A269221.P2240811543201778685

namespace A269221

/-- `A322891(∑{digits}[n, #]²)` -/
def P2240811543201778685.Spec : Prop :=
  ∀ n, P2240811543201778685.a n = A269221 n

end A269221

/-! ## A269221.P1553884169193255273

`A104150(∑{digits}[n, #]+1)`
-/

namespace A269221.P1553884169193255273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1)

end

end A269221.P1553884169193255273

namespace A269221

/-- `A104150(∑{digits}[n, #]+1)` -/
def P1553884169193255273.Spec : Prop :=
  ∀ n, P1553884169193255273.a n = A269221 n

end A269221

/-! ## A269221.P11771703287241876501

`A081123(2*∑{digits}[n, #])`
-/

namespace A269221.P11771703287241876501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A269221.P11771703287241876501

namespace A269221

/-- `A081123(2*∑{digits}[n, #])` -/
def P11771703287241876501.Spec : Prop :=
  ∀ n, P11771703287241876501.a n = A269221 n

end A269221

/-! ## A269221.P16932815952318609332

`A072346(A169805(n))`
-/

namespace A269221.P16932815952318609332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (A169805 n).toNat

end

end A269221.P16932815952318609332

namespace A269221

/-- `A072346(A169805(n))` -/
def P16932815952318609332.Spec : Prop :=
  ∀ n, P16932815952318609332.a n = A269221 n

end A269221

/-! ## A269221.P12880062114170228830

`A000142(A062028(n)-n)`
-/

namespace A269221.P12880062114170228830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A062028 n - (n : ℤ)).toNat

end

end A269221.P12880062114170228830

namespace A269221

/-- `A000142(A062028(n)-n)` -/
def P12880062114170228830.Spec : Prop :=
  ∀ n, P12880062114170228830.a n = A269221 n

end A269221

/-!
# A269222: Period 4: repeat [1,9,8,9].

The programs for A269222, the canonical program `A269222.P9344918775292562836` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269222 has offset 1).

The definition of A269222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269222.P9344918775292562836

`a(n-4)` with `a(0)=1, a(1)=9, a(2)=8, a(3)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269222

/-- `a(n-4)` -/
def P9344918775292562836.Spec : Prop :=
  ∀ n, (P9344918775292562836.a n : ℤ) = A269222 (n + 1)

theorem P9344918775292562836.correct : P9344918775292562836.Spec := by
  intro n
  simp only [A269222, Nat.add_sub_cancel]

end A269222

/-!
# A269223: Factorial of the sum of digits of n in base 3.

The programs for A269223, the canonical program `A269223.P14814624165986150479` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269223 has offset 0).

The definition of A269223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269223.P14814624165986150479

`A000142(A053735(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269223

/-- `A000142(A053735(n))` -/
def P14814624165986150479.Spec : Prop :=
  ∀ n, P14814624165986150479.a n = A269223 n

theorem P14814624165986150479.correct : P14814624165986150479.Spec := by
  intro n
  simp only [A269223]

end A269223

/-! ## A269223.P4257812258737692824

`(n-2*∑[val(abs(1-n)+1, 3)])!`
-/

namespace A269223.P4257812258737692824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)).toNat

end

end A269223.P4257812258737692824

namespace A269223

/-- `(n-2*∑[val(abs(1-n)+1, 3)])!` -/
def P4257812258737692824.Spec : Prop :=
  ∀ n, (P4257812258737692824.a n : ℤ) = A269223 n

end A269223

/-! ## A269223.P11337531806191193863

`(3*n-∑[val(floor(3/acot(n))², 3)])!`
-/

namespace A269223.P11337531806191193863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((3 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A269223.P11337531806191193863

namespace A269223

/-- `(3*n-∑[val(floor(3/acot(n))², 3)])!` -/
def P11337531806191193863.Spec : Prop :=
  ∀ n, (P11337531806191193863.a n : ℤ) = A269223 n

end A269223

/-! ## A269223.P5082554385968859307

`A000142(A230641(n)-n)`
-/

namespace A269223.P5082554385968859307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A230641 n - (n : ℤ)).toNat

end

end A269223.P5082554385968859307

namespace A269223

/-- `A000142(A230641(n)-n)` -/
def P5082554385968859307.Spec : Prop :=
  ∀ n, P5082554385968859307.a n = A269223 n

end A269223

/-! ## A269223.P11850885554762245759

`A269224(A023717(n))`
-/

namespace A269223.P11850885554762245759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269224 (A023717 n).toNat

end

end A269223.P11850885554762245759

namespace A269223

/-- `A269224(A023717(n))` -/
def P11850885554762245759.Spec : Prop :=
  ∀ n, P11850885554762245759.a n = A269223 n

end A269223

/-! ## A269223.P4426623256446659553

`A093659(A325985(n))`
-/

namespace A269223.P4426623256446659553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A325985 n).toNat

end

end A269223.P4426623256446659553

namespace A269223

/-- `A093659(A325985(n))` -/
def P4426623256446659553.Spec : Prop :=
  ∀ n, P4426623256446659553.a n = A269223 n

end A269223

/-! ## A269223.P1721602384187502843

`A093659(A023713(n+1))`
-/

namespace A269223.P1721602384187502843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A023713 (n + 1)).toNat

end

end A269223.P1721602384187502843

namespace A269223

/-- `A093659(A023713(n+1))` -/
def P1721602384187502843.Spec : Prop :=
  ∀ n, P1721602384187502843.a n = A269223 n

end A269223

/-! ## A269223.P13076977962590525342

`A093659(A006288(n))`
-/

namespace A269223.P13076977962590525342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A006288 n).toNat

end

end A269223.P13076977962590525342

namespace A269223

/-- `A093659(A006288(n))` -/
def P13076977962590525342.Spec : Prop :=
  ∀ n, P13076977962590525342.a n = A269223 n

end A269223

/-! ## A269223.P3496064857044373899

`A093659(A023709(n+1))`
-/

namespace A269223.P3496064857044373899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A023709 (n + 1)).toNat

end

end A269223.P3496064857044373899

namespace A269223

/-- `A093659(A023709(n+1))` -/
def P3496064857044373899.Spec : Prop :=
  ∀ n, P3496064857044373899.a n = A269223 n

end A269223

/-! ## A269223.P10947510252459010788

`A269221(A038586(n))`
-/

namespace A269223.P10947510252459010788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269221 (A038586 n).toNat

end

end A269223.P10947510252459010788

namespace A269223

/-- `A269221(A038586(n))` -/
def P10947510252459010788.Spec : Prop :=
  ∀ n, P10947510252459010788.a n = A269223 n

end A269223

/-!
# A269224: Factorial of the sum of digits of n in base 4.

The programs for A269224, the canonical program `A269224.P2228145044449409064` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269224 has offset 0).

The definition of A269224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269224.P2228145044449409064

`A000142(A053737(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269224

/-- `A000142(A053737(n))` -/
def P2228145044449409064.Spec : Prop :=
  ∀ n, P2228145044449409064.a n = A269224 n

theorem P2228145044449409064.correct : P2228145044449409064.Spec := by
  intro n
  simp only [A269224]

end A269224

/-! ## A269224.P9150195861851260262

`(A230631(n)-n)!`
-/

namespace A269224.P9150195861851260262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230631 n - (n : ℤ)).toNat

end

end A269224.P9150195861851260262

namespace A269224

/-- `(A230631(n)-n)!` -/
def P9150195861851260262.Spec : Prop :=
  ∀ n, (P9150195861851260262.a n : ℤ) = A269224 n

end A269224

/-! ## A269224.P2074050849795572729

`(n-3*A054893(n))!`
-/

namespace A269224.P2074050849795572729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - 3 * A054893 n).toNat

end

end A269224.P2074050849795572729

namespace A269224

/-- `(n-3*A054893(n))!` -/
def P2074050849795572729.Spec : Prop :=
  ∀ n, (P2074050849795572729.a n : ℤ) = A269224 n

end A269224

/-! ## A269224.P1390982463941747067

`A104150(A053737(n)+1)`
-/

namespace A269224.P1390982463941747067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A053737 n + 1).toNat

end

end A269224.P1390982463941747067

namespace A269224

/-- `A104150(A053737(n)+1)` -/
def P1390982463941747067.Spec : Prop :=
  ∀ n, P1390982463941747067.a n = A269224 n

end A269224

/-! ## A269224.P12652673327658885234

`A269221(A007090(n))`
-/

namespace A269224.P12652673327658885234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269221 (A007090 n).toNat

end

end A269224.P12652673327658885234

namespace A269224

/-- `A269221(A007090(n))` -/
def P12652673327658885234.Spec : Prop :=
  ∀ n, P12652673327658885234.a n = A269224 n

end A269224

/-! ## A269224.P10543352509719620551

`(A173524(n+1)-1)!`
-/

namespace A269224.P10543352509719620551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A173524 (n + 1) - 1).toNat

end

end A269224.P10543352509719620551

namespace A269224

/-- `(A173524(n+1)-1)!` -/
def P10543352509719620551.Spec : Prop :=
  ∀ n, (P10543352509719620551.a n : ℤ) = A269224 n

end A269224

/-! ## A269224.P14214168857748211507

`A130675(A101942(n))`
-/

namespace A269224.P14214168857748211507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A101942 n).toNat

end

end A269224.P14214168857748211507

namespace A269224

/-- `A130675(A101942(n))` -/
def P14214168857748211507.Spec : Prop :=
  ∀ n, P14214168857748211507.a n = A269224 n

end A269224

/-!
# A269225: Smallest k such that k! > 2^n.

The programs for A269225, the canonical program `A269225.P17468612033473441380` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269225 has offset 0).

The definition of A269225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269225.P17468612033473441380

`char[ceil(∑[log2(n+1)])]+a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269225

/-- `char[ceil(∑[log2(n+1)])]+a(n-1)` -/
def P17468612033473441380.Spec : Prop :=
  ∀ n, (P17468612033473441380.a n : ℤ) = A269225 n

theorem P17468612033473441380.correct : P17468612033473441380.Spec := by
  intro n
  simp only [A269225]

end A269225

/-! ## A269225.P12080814692182786931

`∑[char[A003070(n)]]+1`
-/

namespace A269225.P12080814692182786931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A269225.P12080814692182786931

namespace A269225

/-- `∑[char[A003070(n)]]+1` -/
def P12080814692182786931.Spec : Prop :=
  ∀ n, (P12080814692182786931.a n : ℤ) = A269225 n

end A269225

/-! ## A269225.P2723168251554606496

`A020725(∑[char[A003070(n)]])`
-/

namespace A269225.P2723168251554606496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269225.P2723168251554606496

namespace A269225

/-- `A020725(∑[char[A003070(n)]])` -/
def P2723168251554606496.Spec : Prop :=
  ∀ n, P2723168251554606496.a n = A269225 n

end A269225

/-! ## A269225.P2146325886298336827

`A028242(∑[2*char[A003070(n)]])`
-/

namespace A269225.P2146325886298336827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269225.P2146325886298336827

namespace A269225

/-- `A028242(∑[2*char[A003070(n)]])` -/
def P2146325886298336827.Spec : Prop :=
  ∀ n, P2146325886298336827.a n = A269225 n

end A269225

/-! ## A269225.P13017805465863319667

`∑[char[A003070(n)]-A336017(a(n-1))]` with `a(0)=2`
-/

namespace A269225.P13017805465863319667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A336017 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269225.P13017805465863319667

namespace A269225

/-- `∑[char[A003070(n)]-A336017(a(n-1))]` -/
def P13017805465863319667.Spec : Prop :=
  ∀ n, P13017805465863319667.a n = A269225 n

end A269225

/-! ## A269225.P7043060985402877627

`A000196(A324928(n+1)+∑[A000196(n)])`
-/

namespace A269225.P7043060985402877627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A324928 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A269225.P7043060985402877627

namespace A269225

/-- `A000196(A324928(n+1)+∑[A000196(n)])` -/
def P7043060985402877627.Spec : Prop :=
  ∀ n, P7043060985402877627.a n = A269225 n

end A269225

/-! ## A269225.P8061857241099092886

`A053620(A080036(n)+2)`
-/

namespace A269225.P8061857241099092886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053620 (A080036 n + 2).toNat

end

end A269225.P8061857241099092886

namespace A269225

/-- `A053620(A080036(n)+2)` -/
def P8061857241099092886.Spec : Prop :=
  ∀ n, P8061857241099092886.a n = A269225 n

end A269225

/-!
# A269226: Period 6: repeat [3, 9, 6, 6, 9, 3].

The programs for A269226, the canonical program `A269226.P14483200775463609233` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269226 has offset 1).

The definition of A269226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269226.P14483200775463609233

`a(n-6)` with `a(0)=3, a(1)=9, a(2)=6, a(3)=6, a(4)=9, a(5)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269226

/-- `a(n-6)` -/
def P14483200775463609233.Spec : Prop :=
  ∀ n, (P14483200775463609233.a n : ℤ) = A269226 (n + 1)

theorem P14483200775463609233.correct : P14483200775463609233.Spec := by
  intro n
  simp only [A269226, Nat.add_sub_cancel]

end A269226

/-!
# A269228: Number of nondirected diagonally convex polyominoes with perimeter 2n + 2.

The programs for A269228, there is no canonical definition to state claims against.
-/

/-! ## A269228.P6079194423148905488

`A026741(A151195(n)+A026724(n))`
-/

namespace A269228.P6079194423148905488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A151195 n + A026724 n).toNat

end

end A269228.P6079194423148905488

/-! ## A269228.P2915295850075852113

`A300763(A150639(n+1))`
-/

namespace A269228.P2915295850075852113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A150639 (n + 1)).toNat

end

end A269228.P2915295850075852113

/-!
# A269229: Decimal expansion of the sum of the alternating series of reciprocals of composite numbers.

The programs for A269229, there is no canonical definition to state claims against.
-/

/-! ## A269229.P8812063684474577635

`9-A275712(n)`
-/

namespace A269229.P8812063684474577635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A275712 n

end

end A269229.P8812063684474577635

/-!
# A269232: a(n) = (n + 1)*(6*n^2 + 15*n + 4)/2.

The programs for A269232, the canonical program `A269232.P4846757635116612893` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269232 has offset 0).

The definition of A269232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269232.P4846757635116612893

`(n+1)*(6*n²+15*n+4)/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269232

/-- `(n+1)*(6*n²+15*n+4)/2` -/
def P4846757635116612893.Spec : Prop :=
  ∀ n, P4846757635116612893.a n = (A269232 n : ℚ)

end A269232

/-! ## A269232.P17140054429750724976

`∑[∑[a(n-1)+18]]-(n+1)` with `a(0)=3`
-/

namespace A269232.P17140054429750724976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 18

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A269232.P17140054429750724976

namespace A269232

/-- `∑[∑[a(n-1)+18]]-(n+1)` -/
def P17140054429750724976.Spec : Prop :=
  ∀ n, P17140054429750724976.a n = A269232 n

end A269232

/-! ## A269232.P5543929202514602478

`(2*n+n+2)²+a(n-1)-2` with `a(0)=2`
-/

namespace A269232.P5543929202514602478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((2 * n + (n + 2)) ^ 2 : ℤ) + (a (n - 1) - 2)

end

end A269232.P5543929202514602478

namespace A269232

/-- `(2*n+n+2)²+a(n-1)-2` -/
def P5543929202514602478.Spec : Prop :=
  ∀ n, P5543929202514602478.a n = A269232 n

end A269232

/-! ## A269232.P12767138923314787814

`∑[A016789(n)²-2]`
-/

namespace A269232.P12767138923314787814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269232.P12767138923314787814

namespace A269232

/-- `∑[A016789(n)²-2]` -/
def P12767138923314787814.Spec : Prop :=
  ∀ n, P12767138923314787814.a n = A269232 n

end A269232

/-! ## A269232.P2896801252028845132

`∑[A185939(n+1)-3]`
-/

namespace A269232.P2896801252028845132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185939 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269232.P2896801252028845132

namespace A269232

/-- `∑[A185939(n+1)-3]` -/
def P2896801252028845132.Spec : Prop :=
  ∀ n, P2896801252028845132.a n = A269232 n

end A269232

/-! ## A269232.P5096746986868345128

`Δ[A264852(n)]+(n+1)²`
-/

namespace A269232.P5096746986868345128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 1) ^ 2 : ℤ)

end

end A269232.P5096746986868345128

namespace A269232

/-- `Δ[A264852(n)]+(n+1)²` -/
def P5096746986868345128.Spec : Prop :=
  ∀ n, P5096746986868345128.a n = A269232 n

end A269232

/-! ## A269232.P238369184587823732

`A294315(n+1)+∑[n-2]`
-/

namespace A269232.P238369184587823732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294315 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269232.P238369184587823732

namespace A269232

/-- `A294315(n+1)+∑[n-2]` -/
def P238369184587823732.Spec : Prop :=
  ∀ n, P238369184587823732.a n = A269232 n

end A269232

/-! ## A269232.P1190031855225472766

`A024394(n+1)-2*(n+1)`
-/

namespace A269232.P1190031855225472766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024394 (n + 1) - (2 * (n + 1) : ℤ)

end

end A269232.P1190031855225472766

namespace A269232

/-- `A024394(n+1)-2*(n+1)` -/
def P1190031855225472766.Spec : Prop :=
  ∀ n, P1190031855225472766.a n = A269232 n

end A269232

/-! ## A269232.P5433511185250415063

`3*A002414(n+1)-(n+1)`
-/

namespace A269232.P5433511185250415063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002414 (n + 1) - (n + 1 : ℤ)

end

end A269232.P5433511185250415063

namespace A269232

/-- `3*A002414(n+1)-(n+1)` -/
def P5433511185250415063.Spec : Prop :=
  ∀ n, P5433511185250415063.a n = A269232 n

end A269232

/-! ## A269232.P5372822804236935666

`A209646(n+1)/3-(n+1)`
-/

namespace A269232.P5372822804236935666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209646 (n + 1) : ℚ) / 3 - (n + 1 : ℚ)

end

end A269232.P5372822804236935666

namespace A269232

/-- `A209646(n+1)/3-(n+1)` -/
def P5372822804236935666.Spec : Prop :=
  ∀ n, P5372822804236935666.a n = (A269232 n : ℚ)

end A269232

/-! ## A269232.P7338574760531270081

`∑[A194431(n+1)+(n+1)²]`
-/

namespace A269232.P7338574760531270081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194431 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269232.P7338574760531270081

namespace A269232

/-- `∑[A194431(n+1)+(n+1)²]` -/
def P7338574760531270081.Spec : Prop :=
  ∀ n, P7338574760531270081.a n = A269232 n

end A269232

/-! ## A269232.P1636883315848187938

`∑[(A016777(n)+1)²-1]-(n+1)`
-/

namespace A269232.P1636883315848187938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + 1) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A269232.P1636883315848187938

namespace A269232

/-- `∑[(A016777(n)+1)²-1]-(n+1)` -/
def P1636883315848187938.Spec : Prop :=
  ∀ n, P1636883315848187938.a n = A269232 n

end A269232

/-! ## A269232.P10732683005944403110

`(6*n+3)*A000217(n+1)-1-n`
-/

namespace A269232.P10732683005944403110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) * A000217 (n + 1) - 1 - (n : ℤ)

end

end A269232.P10732683005944403110

namespace A269232

/-- `(6*n+3)*A000217(n+1)-1-n` -/
def P10732683005944403110.Spec : Prop :=
  ∀ n, P10732683005944403110.a n = A269232 n

end A269232

/-! ## A269232.P13567011990940012081

`A115519(n)+A001504(n)`
-/

namespace A269232.P13567011990940012081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n + A001504 n

end

end A269232.P13567011990940012081

namespace A269232

/-- `A115519(n)+A001504(n)` -/
def P13567011990940012081.Spec : Prop :=
  ∀ n, P13567011990940012081.a n = A269232 n

end A269232

/-! ## A269232.P5994222348530259627

`A130884(n)+A069130(n+1)`
-/

namespace A269232.P5994222348530259627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130884 n + A069130 (n + 1)

end

end A269232.P5994222348530259627

namespace A269232

/-- `A130884(n)+A069130(n+1)` -/
def P5994222348530259627.Spec : Prop :=
  ∀ n, P5994222348530259627.a n = A269232 n

end A269232

/-! ## A269232.P8638998304872041474

`A213772(n+1)+A090197(n)`
-/

namespace A269232.P8638998304872041474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213772 (n + 1) + A090197 n

end

end A269232.P8638998304872041474

namespace A269232

/-- `A213772(n+1)+A090197(n)` -/
def P8638998304872041474.Spec : Prop :=
  ∀ n, P8638998304872041474.a n = A269232 n

end A269232

/-! ## A269232.P268192095849030400

`A163815(n)+A162256(n+1)`
-/

namespace A269232.P268192095849030400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n + A162256 (n + 1)

end

end A269232.P268192095849030400

namespace A269232

/-- `A163815(n)+A162256(n+1)` -/
def P268192095849030400.Spec : Prop :=
  ∀ n, P268192095849030400.a n = A269232 n

end A269232

/-! ## A269232.P13308040317338895050

`A317637(n)+A125200(n+1)`
-/

namespace A269232.P13308040317338895050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 n + A125200 (n + 1)

end

end A269232.P13308040317338895050

namespace A269232

/-- `A317637(n)+A125200(n+1)` -/
def P13308040317338895050.Spec : Prop :=
  ∀ n, P13308040317338895050.a n = A269232 n

end A269232

/-!
# A269234: Record (maximal) gaps between primes of the form 10k + 3.

The programs for A269234, there is no canonical definition to state claims against.
-/

/-! ## A269234.P8745465395125729745

`A269236(n+1)-A269235(n+1)`
-/

namespace A269234.P8745465395125729745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269236 (n + 1) - A269235 (n + 1)

end

end A269234.P8745465395125729745

/-! ## A269234.P1260201889316433825

`record[A030431(n+2)-A030431(n+1)]`
-/

namespace A269234.P1260201889316433825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 2) - A030431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269234.P1260201889316433825

/-! ## A269234.P2457330951176124356

`record[A030431(n+3)%A030431(n+2)]`
-/

namespace A269234.P2457330951176124356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030431 (n + 3)) (A030431 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269234.P2457330951176124356

/-! ## A269234.P12715191873935627776

`record[A045414(n+4)-A045414(n+3)]`
-/

namespace A269234.P12715191873935627776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 4) - A045414 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269234.P12715191873935627776

/-! ## A269234.P6791309494166776281

`lt[A004086(n), A237413(A300630(n+1))]`
-/

namespace A269234.P6791309494166776281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237413 (A300630 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269234.P6791309494166776281

/-!
# A269235: Primes 10k + 3 preceding the maximal gaps in A269234.

The programs for A269235, there is no canonical definition to state claims against.
-/

/-! ## A269235.P14457866214573868965

`A269236(n+1)-A269234(n+1)`
-/

namespace A269235.P14457866214573868965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269236 (n + 1) - A269234 (n + 1)

end

end A269235.P14457866214573868965

/-! ## A269235.P16507058243070836067

`A269236(n+1)-record[A030431(n+2)-A030431(n+1)]`
-/

namespace A269235.P16507058243070836067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 2) - A030431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269236 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269235.P16507058243070836067

/-! ## A269235.P16280428810268705498

`A269236(n+1)-record[A045414(n+4)-A045414(n+3)]`
-/

namespace A269235.P16280428810268705498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 4) - A045414 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269236 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269235.P16280428810268705498

/-! ## A269235.P3280146081900386006

`A269236(n+1)-∑[10*A014963(A096840(n))]`
-/

namespace A269235.P3280146081900386006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A014963 (A096840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269236 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269235.P3280146081900386006

/-!
# A269236: Primes 10k + 3 at the end of the maximal gaps in A269234.

The programs for A269236, there is no canonical definition to state claims against.
-/

/-! ## A269236.P5007289037599951970

`A269235(n+1)+A269234(n+1)`
-/

namespace A269236.P5007289037599951970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269235 (n + 1) + A269234 (n + 1)

end

end A269236.P5007289037599951970

/-! ## A269236.P12620577855605145340

`A269235(n+1)+record[A030431(n+2)-A030431(n+1)]`
-/

namespace A269236.P12620577855605145340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 2) - A030431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269235 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269236.P12620577855605145340

/-! ## A269236.P15496114766763264593

`A269235(n+1)+record[A030431(n+3)%A030431(n+2)]`
-/

namespace A269236.P15496114766763264593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030431 (n + 3)) (A030431 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269235 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269236.P15496114766763264593

/-! ## A269236.P13020750550780028953

`A269235(n+1)+record[A045414(n+4)-A045414(n+3)]`
-/

namespace A269236.P13020750550780028953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 4) - A045414 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269235 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269236.P13020750550780028953

/-!
# A269237: a(n) = (n + 1)^2*(5*n^2 + 10*n + 2)/2.

The programs for A269237, the canonical program `A269237.P7413541849381140577` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269237 has offset 0).

The definition of A269237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269237.P7413541849381140577

`(n+1)²*(5*n²+10*n+2)/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269237

/-- `(n+1)²*(5*n²+10*n+2)/2` -/
def P7413541849381140577.Spec : Prop :=
  ∀ n, P7413541849381140577.a n = (A269237 n : ℚ)

end A269237

/-! ## A269237.P416222707842987950

`∑[∑[or(1, 30*n²)]]+∑[n]`
-/

namespace A269237.P416222707842987950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (30 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A269237.P416222707842987950

namespace A269237

/-- `∑[∑[or(1, 30*n²)]]+∑[n]` -/
def P416222707842987950.Spec : Prop :=
  ∀ n, (P416222707842987950.a n : ℤ) = A269237 n

end A269237

/-! ## A269237.P378461475172885765

`∑[∑[xor(1, 30*n²)]]+∑[n]`
-/

namespace A269237.P378461475172885765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (30 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A269237.P378461475172885765

namespace A269237

/-- `∑[∑[xor(1, 30*n²)]]+∑[n]` -/
def P378461475172885765.Spec : Prop :=
  ∀ n, (P378461475172885765.a n : ℤ) = A269237 n

end A269237

/-! ## A269237.P5983247258928371231

`(n+1)²+5*C((n+1)², 2)`
-/

namespace A269237.P5983247258928371231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 5 * Nat.choose ((n + 1) ^ 2) 2

end

end A269237.P5983247258928371231

namespace A269237

/-- `(n+1)²+5*C((n+1)², 2)` -/
def P5983247258928371231.Spec : Prop :=
  ∀ n, (P5983247258928371231.a n : ℤ) = A269237 n

end A269237

/-! ## A269237.P13184888743606346941

`∑[A005904(n)]`
-/

namespace A269237.P13184888743606346941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269237.P13184888743606346941

namespace A269237

/-- `∑[A005904(n)]` -/
def P13184888743606346941.Spec : Prop :=
  ∀ n, P13184888743606346941.a n = A269237 n

end A269237

/-! ## A269237.P17351797436024327579

`∑[∑[A005903(n)]]`
-/

namespace A269237.P17351797436024327579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005903 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269237.P17351797436024327579

namespace A269237

/-- `∑[∑[A005903(n)]]` -/
def P17351797436024327579.Spec : Prop :=
  ∀ n, P17351797436024327579.a n = A269237 n

end A269237

/-! ## A269237.P1127956031628112765

`(n+2)*A006564(n+1)-(n+1)`
-/

namespace A269237.P1127956031628112765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A006564 (n + 1) - (n + 1 : ℤ)

end

end A269237.P1127956031628112765

namespace A269237

/-- `(n+2)*A006564(n+1)-(n+1)` -/
def P1127956031628112765.Spec : Prop :=
  ∀ n, P1127956031628112765.a n = A269237 n

end A269237

/-! ## A269237.P1335406740405513848

`A000217(n)+A000217(n+1)*A062786(n+1)`
-/

namespace A269237.P1335406740405513848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000217 (n + 1) * A062786 (n + 1)

end

end A269237.P1335406740405513848

namespace A269237

/-- `A000217(n)+A000217(n+1)*A062786(n+1)` -/
def P1335406740405513848.Spec : Prop :=
  ∀ n, P1335406740405513848.a n = A269237 n

end A269237

/-! ## A269237.P11712728558203658038

`A037270(n+1)+A047928(n+2)+A047928(n+2)`
-/

namespace A269237.P11712728558203658038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 (n + 1) + (A047928 (n + 2) + A047928 (n + 2))

end

end A269237.P11712728558203658038

namespace A269237

/-- `A037270(n+1)+A047928(n+2)+A047928(n+2)` -/
def P11712728558203658038.Spec : Prop :=
  ∀ n, P11712728558203658038.a n = A269237 n

end A269237

/-! ## A269237.P16856877698085420139

`A105636(2*n+1)+n*A002411(n+1)`
-/

namespace A269237.P16856877698085420139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 (2 * n + 1) + (n : ℤ) * A002411 (n + 1)

end

end A269237.P16856877698085420139

namespace A269237

/-- `A105636(2*n+1)+n*A002411(n+1)` -/
def P16856877698085420139.Spec : Prop :=
  ∀ n, P16856877698085420139.a n = A269237 n

end A269237

/-! ## A269237.P4979781184625820987

`A227970(2*(n+1))+A083374(n+1)`
-/

namespace A269237.P4979781184625820987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227970 (2 * (n + 1)) + A083374 (n + 1)

end

end A269237.P4979781184625820987

namespace A269237

/-- `A227970(2*(n+1))+A083374(n+1)` -/
def P4979781184625820987.Spec : Prop :=
  ∀ n, P4979781184625820987.a n = A269237 n

end A269237

/-! ## A269237.P2332116090892036633

`A000566((n+1)²)`
-/

namespace A269237.P2332116090892036633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 ((n + 1) ^ 2)

end

end A269237.P2332116090892036633

namespace A269237

/-- `A000566((n+1)²)` -/
def P2332116090892036633.Spec : Prop :=
  ∀ n, P2332116090892036633.a n = A269237 n

end A269237

/-! ## A269237.P18242336393981078001

`record[A000566((1-n)²)]`
-/

namespace A269237.P18242336393981078001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269237.P18242336393981078001

namespace A269237

/-- `record[A000566((1-n)²)]` -/
def P18242336393981078001.Spec : Prop :=
  ∀ n, P18242336393981078001.a n = A269237 n

end A269237

/-! ## A269237.P11196201620343109137

`A192136((n+1)²)-1`
-/

namespace A269237.P11196201620343109137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 ((n + 1) ^ 2) - 1

end

end A269237.P11196201620343109137

namespace A269237

/-- `A192136((n+1)²)-1` -/
def P11196201620343109137.Spec : Prop :=
  ∀ n, P11196201620343109137.a n = A269237 n

end A269237

/-! ## A269237.P7259458575593143555

`A006597((n+1)²)/(n+1)²`
-/

namespace A269237.P7259458575593143555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006597 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A269237.P7259458575593143555

namespace A269237

/-- `A006597((n+1)²)/(n+1)²` -/
def P7259458575593143555.Spec : Prop :=
  ∀ n, P7259458575593143555.a n = (A269237 n : ℚ)

end A269237

/-!
# A269238: Record (maximal) gaps between primes of the form 10k + 7.

The programs for A269238, there is no canonical definition to state claims against.
-/

/-! ## A269238.P5421804444212869073

`A269240(n+1)-A269239(n+1)`
-/

namespace A269238.P5421804444212869073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269240 (n + 1) - A269239 (n + 1)

end

end A269238.P5421804444212869073

/-! ## A269238.P9466866046181338045

`record[A030432(n+2)-A030432(n+1)]`
-/

namespace A269238.P9466866046181338045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 2) - A030432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269238.P9466866046181338045

/-! ## A269238.P12425294093065545978

`record[A045380(n+3)-A045380(n+2)]`
-/

namespace A269238.P12425294093065545978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 3) - A045380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269238.P12425294093065545978

/-! ## A269238.P15299108706818484576

`10*A056792(A047009(n))`
-/

namespace A269238.P15299108706818484576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A056792 (A047009 n).toNat

end

end A269238.P15299108706818484576

/-!
# A269239: Primes 10k + 7 preceding the maximal gaps in A269238.

The programs for A269239, there is no canonical definition to state claims against.
-/

/-! ## A269239.P4187861009591849165

`A269240(n+1)-A269238(n+1)`
-/

namespace A269239.P4187861009591849165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269240 (n + 1) - A269238 (n + 1)

end

end A269239.P4187861009591849165

/-! ## A269239.P3256674733143826035

`A269240(n+1)-record[A030432(n+2)-A030432(n+1)]`
-/

namespace A269239.P3256674733143826035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 2) - A030432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269240 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269239.P3256674733143826035

/-! ## A269239.P7326274714302130535

`A269240(n+1)-record[Δ[A030432(n+1)]]`
-/

namespace A269239.P7326274714302130535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269240 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269239.P7326274714302130535

/-! ## A269239.P9947400522988219998

`A269240(n+1)-record[A045380(n+3)-A045380(n+2)]`
-/

namespace A269239.P9947400522988219998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 3) - A045380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269240 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269239.P9947400522988219998

/-!
# A269240: Primes 10k + 7 at the end of the maximal gaps in A269238.

The programs for A269240, there is no canonical definition to state claims against.
-/

/-! ## A269240.P17373124237302564256

`A269239(n+1)+A269238(n+1)`
-/

namespace A269240.P17373124237302564256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269239 (n + 1) + A269238 (n + 1)

end

end A269240.P17373124237302564256

/-! ## A269240.P11544634275911489632

`A269239(n+1)+record[A030432(n+2)-A030432(n+1)]`
-/

namespace A269240.P11544634275911489632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 2) - A030432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269239 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269240.P11544634275911489632

/-! ## A269240.P2199459706755941292

`A269239(n+1)+record[Δ[A030432(n+1)]]`
-/

namespace A269240.P2199459706755941292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269239 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269240.P2199459706755941292

/-! ## A269240.P8001344880061404012

`A269239(n+1)+record[A045380(n+3)-A045380(n+2)]`
-/

namespace A269240.P8001344880061404012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 3) - A045380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269239 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269240.P8001344880061404012

/-!
# A269241: Number of times the digit 1 appears in the decimal expansion of n^3.

The programs for A269241, the canonical program `A269241.P9544274486884464578` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269241 has offset 0).

The definition of A269241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269241.P9544274486884464578

`∑{digits}[n^3, C(C(2, #), 2)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269241

/-- `∑{digits}[n^3, C(C(2, #), 2)]` -/
def P9544274486884464578.Spec : Prop :=
  ∀ n, (P9544274486884464578.a n : ℤ) = A269241 n

theorem P9544274486884464578.correct : P9544274486884464578.Spec := by
  intro n
  simp only [A269241]

end A269241

/-! ## A269241.P944768591207749625

`∑{digits}[n^3, and(#, #!²)]`
-/

namespace A269241.P944768591207749625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land x (Nat.factorial x ^ 2)).sum

end

end A269241.P944768591207749625

namespace A269241

/-- `∑{digits}[n^3, and(#, #!²)]` -/
def P944768591207749625.Spec : Prop :=
  ∀ n, (P944768591207749625.a n : ℤ) = A269241 n

end A269241

/-! ## A269241.P14533853398355603468

`∑{digits}[n^3, A033683(#)]`
-/

namespace A269241.P14533853398355603468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A033683 x).sum

end

end A269241.P14533853398355603468

namespace A269241

/-- `∑{digits}[n^3, A033683(#)]` -/
def P14533853398355603468.Spec : Prop :=
  ∀ n, P14533853398355603468.a n = A269241 n

end A269241

/-! ## A269241.P1438901316361766625

`∑{digits}[n^3, A063524(#)]`
-/

namespace A269241.P1438901316361766625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A063524 x).sum

end

end A269241.P1438901316361766625

namespace A269241

/-- `∑{digits}[n^3, A063524(#)]` -/
def P1438901316361766625.Spec : Prop :=
  ∀ n, P1438901316361766625.a n = A269241 n

end A269241

/-! ## A269241.P13074556601738997131

`∑{digits}[n^3, A178333(#)]`
-/

namespace A269241.P13074556601738997131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A178333 x).sum

end

end A269241.P13074556601738997131

namespace A269241

/-- `∑{digits}[n^3, A178333(#)]` -/
def P13074556601738997131.Spec : Prop :=
  ∀ n, P13074556601738997131.a n = A269241 n

end A269241

/-! ## A269241.P15719446946086502238

`∑{digits}[n^3, A268643(#)]`
-/

namespace A269241.P15719446946086502238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A268643 x).sum

end

end A269241.P15719446946086502238

namespace A269241

/-- `∑{digits}[n^3, A268643(#)]` -/
def P15719446946086502238.Spec : Prop :=
  ∀ n, P15719446946086502238.a n = A269241 n

end A269241

/-! ## A269241.P8224427574535912152

`∑{digits}[n^3, A326168(#)]`
-/

namespace A269241.P8224427574535912152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A326168 x).sum

end

end A269241.P8224427574535912152

namespace A269241

/-- `∑{digits}[n^3, A326168(#)]` -/
def P8224427574535912152.Spec : Prop :=
  ∀ n, P8224427574535912152.a n = A269241 n

end A269241

/-! ## A269241.P8963694465695238794

`∑{digits}[n^3, C(#, A000032(#))]`
-/

namespace A269241.P8963694465695238794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x (A000032 x).toNat).sum

end

end A269241.P8963694465695238794

namespace A269241

/-- `∑{digits}[n^3, C(#, A000032(#))]` -/
def P8963694465695238794.Spec : Prop :=
  ∀ n, (P8963694465695238794.a n : ℤ) = A269241 n

end A269241

/-! ## A269241.P3616495647653572793

`∑{digits}[A000578(n), A030215(#)]`
-/

namespace A269241.P3616495647653572793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A030215 x).sum

end

end A269241.P3616495647653572793

namespace A269241

/-- `∑{digits}[A000578(n), A030215(#)]` -/
def P3616495647653572793.Spec : Prop :=
  ∀ n, P3616495647653572793.a n = A269241 n

end A269241

/-! ## A269241.P4260391849725809237

`∑{digits}[A000578(n), A030217(#)]`
-/

namespace A269241.P4260391849725809237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A030217 x).sum

end

end A269241.P4260391849725809237

namespace A269241

/-- `∑{digits}[A000578(n), A030217(#)]` -/
def P4260391849725809237.Spec : Prop :=
  ∀ n, P4260391849725809237.a n = A269241 n

end A269241

/-! ## A269241.P14037967610219987701

`∑{digits}[A000578(n), A181499(#)]`
-/

namespace A269241.P14037967610219987701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A181499 x).sum

end

end A269241.P14037967610219987701

namespace A269241

/-- `∑{digits}[A000578(n), A181499(#)]` -/
def P14037967610219987701.Spec : Prop :=
  ∀ n, P14037967610219987701.a n = A269241 n

end A269241

/-!
# A269242: Number of times the digit 2 appears in the decimal expansion of n^3.

The programs for A269242, the canonical program `A269242.P14846144689689619762` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269242 has offset 0).

The definition of A269242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269242.P17723974432940592407

`∑{digits}[n^3, A255404(#)-1]`
-/

namespace A269242.P17723974432940592407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A255404 x - 1).sum

end

end A269242.P17723974432940592407

namespace A269242

/-- `∑{digits}[n^3, A255404(#)-1]` -/
def P17723974432940592407.Spec : Prop :=
  ∀ n, P17723974432940592407.a n = A269242 n

end A269242

/-! ## A269242.P867591576973914469

`∑{digits}[n^3, A316867(3*#)]`
-/

namespace A269242.P867591576973914469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316867 (3 * x)).sum

end

end A269242.P867591576973914469

namespace A269242

/-- `∑{digits}[n^3, A316867(3*#)]` -/
def P867591576973914469.Spec : Prop :=
  ∀ n, P867591576973914469.a n = A269242 n

end A269242

/-! ## A269242.P16649582155374907055

`∑{digits}[n^3, and(1, A001866(#))]`
-/

namespace A269242.P16649582155374907055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.land 1 (A001866 x)).sum

end

end A269242.P16649582155374907055

namespace A269242

/-- `∑{digits}[n^3, and(1, A001866(#))]` -/
def P16649582155374907055.Spec : Prop :=
  ∀ n, P16649582155374907055.a n = A269242 n

end A269242

/-! ## A269242.P16820121349623527844

`∑{digits}[A000578(n), A008437(#+1)]`
-/

namespace A269242.P16820121349623527844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008437 (x + 1)).sum

end

end A269242.P16820121349623527844

namespace A269242

/-- `∑{digits}[A000578(n), A008437(#+1)]` -/
def P16820121349623527844.Spec : Prop :=
  ∀ n, P16820121349623527844.a n = A269242 n

end A269242

/-! ## A269242.P9628506397429164211

`∑{digits}[A000578(n), A045840(#+1)]`
-/

namespace A269242.P9628506397429164211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A045840 (x + 1)).sum

end

end A269242.P9628506397429164211

namespace A269242

/-- `∑{digits}[A000578(n), A045840(#+1)]` -/
def P9628506397429164211.Spec : Prop :=
  ∀ n, P9628506397429164211.a n = A269242 n

end A269242

/-! ## A269242.P4506447339268812028

`∑{digits}[A000578(n), A193243(#+1)]`
-/

namespace A269242.P4506447339268812028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A193243 (x + 1)).sum

end

end A269242.P4506447339268812028

namespace A269242

/-- `∑{digits}[A000578(n), A193243(#+1)]` -/
def P4506447339268812028.Spec : Prop :=
  ∀ n, P4506447339268812028.a n = A269242 n

end A269242

/-! ## A269242.P9551806991971808955

`∑{digits}[A000578(n), A316864(#+1)]`
-/

namespace A269242.P9551806991971808955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 (x + 1)).sum

end

end A269242.P9551806991971808955

namespace A269242

/-- `∑{digits}[A000578(n), A316864(#+1)]` -/
def P9551806991971808955.Spec : Prop :=
  ∀ n, P9551806991971808955.a n = A269242 n

end A269242

/-! ## A269242.P14846144689689619762

`∑{digits}[A000578(n), A003982(#+2)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269242

/-- `∑{digits}[A000578(n), A003982(#+2)]` -/
def P14846144689689619762.Spec : Prop :=
  ∀ n, P14846144689689619762.a n = A269242 n

theorem P14846144689689619762.correct : P14846144689689619762.Spec := by
  intro n
  simp only [A269242]

end A269242

/-! ## A269242.P13890342704211235468

`∑{digits}[n*n², A051344(A006369(#))]`
-/

namespace A269242.P13890342704211235468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051344 (A006369 x).toNat).sum

end

end A269242.P13890342704211235468

namespace A269242

/-- `∑{digits}[n*n², A051344(A006369(#))]` -/
def P13890342704211235468.Spec : Prop :=
  ∀ n, P13890342704211235468.a n = A269242 n

end A269242

/-! ## A269242.P3074803958670072806

`∑{digits}[n*n², A316864(A007913(#+1))]`
-/

namespace A269242.P3074803958670072806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316864 (A007913 (x + 1)).toNat).sum

end

end A269242.P3074803958670072806

namespace A269242

/-- `∑{digits}[n*n², A316864(A007913(#+1))]` -/
def P3074803958670072806.Spec : Prop :=
  ∀ n, P3074803958670072806.a n = A269242 n

end A269242

/-! ## A269242.P2170251516077229776

`∑{digits}[A000578(n), A316869(A000578(#))]`
-/

namespace A269242.P2170251516077229776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316869 (A000578 x).toNat).sum

end

end A269242.P2170251516077229776

namespace A269242

/-- `∑{digits}[A000578(n), A316869(A000578(#))]` -/
def P2170251516077229776.Spec : Prop :=
  ∀ n, P2170251516077229776.a n = A269242 n

end A269242

/-!
# A269243: Number of times the digit 3 appears in the decimal expansion of n^3.

The programs for A269243, the canonical program `A269243.P7565114935221747975` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269243 has offset 0).

The definition of A269243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269243.P7565114935221747975

`∑{digits}[n^3, val(#+4, 7)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269243

/-- `∑{digits}[n^3, val(#+4, 7)]` -/
def P7565114935221747975.Spec : Prop :=
  ∀ n, (P7565114935221747975.a n : ℤ) = A269243 n

theorem P7565114935221747975.correct : P7565114935221747975.Spec := by
  intro n
  simp only [A269243]

end A269243

/-! ## A269243.P1329884266203310962

`∑{digits}[n^3, A008437(#)]`
-/

namespace A269243.P1329884266203310962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008437 x).sum

end

end A269243.P1329884266203310962

namespace A269243

/-- `∑{digits}[n^3, A008437(#)]` -/
def P1329884266203310962.Spec : Prop :=
  ∀ n, P1329884266203310962.a n = A269243 n

end A269243

/-! ## A269243.P7846512290757884718

`∑{digits}[n^3, A025456(#)]`
-/

namespace A269243.P7846512290757884718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025456 x).sum

end

end A269243.P7846512290757884718

namespace A269243

/-- `∑{digits}[n^3, A025456(#)]` -/
def P7846512290757884718.Spec : Prop :=
  ∀ n, P7846512290757884718.a n = A269243 n

end A269243

/-! ## A269243.P3991615103905888925

`∑{digits}[n^3, A045840(#)]`
-/

namespace A269243.P3991615103905888925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045840 x).sum

end

end A269243.P3991615103905888925

namespace A269243

/-- `∑{digits}[n^3, A045840(#)]` -/
def P3991615103905888925.Spec : Prop :=
  ∀ n, P3991615103905888925.a n = A269243 n

end A269243

/-! ## A269243.P12054467490009790760

`∑{digits}[n^3, A051344(#)]`
-/

namespace A269243.P12054467490009790760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051344 x).sum

end

end A269243.P12054467490009790760

namespace A269243

/-- `∑{digits}[n^3, A051344(#)]` -/
def P12054467490009790760.Spec : Prop :=
  ∀ n, P12054467490009790760.a n = A269243 n

end A269243

/-! ## A269243.P14537875527629299473

`∑{digits}[n^3, A316864(#)]`
-/

namespace A269243.P14537875527629299473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316864 x).sum

end

end A269243.P14537875527629299473

namespace A269243

/-- `∑{digits}[n^3, A316864(#)]` -/
def P14537875527629299473.Spec : Prop :=
  ∀ n, P14537875527629299473.a n = A269243 n

end A269243

/-! ## A269243.P14546098400944616914

`∑{digits}[n*n², A011702(#²)]`
-/

namespace A269243.P14546098400944616914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011702 (x ^ 2)).sum

end

end A269243.P14546098400944616914

namespace A269243

/-- `∑{digits}[n*n², A011702(#²)]` -/
def P14546098400944616914.Spec : Prop :=
  ∀ n, P14546098400944616914.a n = A269243 n

end A269243

/-! ## A269243.P530164839632766714

`∑{digits}[A000578(n), A193243(#)]`
-/

namespace A269243.P530164839632766714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A193243 x).sum

end

end A269243.P530164839632766714

namespace A269243

/-- `∑{digits}[A000578(n), A193243(#)]` -/
def P530164839632766714.Spec : Prop :=
  ∀ n, P530164839632766714.a n = A269243 n

end A269243

/-! ## A269243.P1582325847570561428

`∑{digits}[A000578(n), A003982(#+1)]`
-/

namespace A269243.P1582325847570561428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003982 (x + 1)).sum

end

end A269243.P1582325847570561428

namespace A269243

/-- `∑{digits}[A000578(n), A003982(#+1)]` -/
def P1582325847570561428.Spec : Prop :=
  ∀ n, P1582325847570561428.a n = A269243 n

end A269243

/-! ## A269243.P17958792323834352474

`∑{digits}[n^3, A115346(A000045(#))%2]`
-/

namespace A269243.P17958792323834352474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A115346 (A000045 x).toNat) 2).sum

end

end A269243.P17958792323834352474

namespace A269243

/-- `∑{digits}[n^3, A115346(A000045(#))%2]` -/
def P17958792323834352474.Spec : Prop :=
  ∀ n, P17958792323834352474.a n = A269243 n

end A269243

/-!
# A269244: Number of times the digit 4 appears in the decimal expansion of n^3.

The programs for A269244, the canonical program `A269244.P13071982595472903123` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269244 has offset 0).

The definition of A269244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269244.P13071982595472903123

`∑{digits}[n^3, A004198(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A269244

/-- `∑{digits}[n^3, A004198(#)]` -/
def P13071982595472903123.Spec : Prop :=
  ∀ n, P13071982595472903123.a n = A269244 n

theorem P13071982595472903123.correct : P13071982595472903123.Spec := by
  intro n
  simp only [A269244]

end A269244

/-! ## A269244.P16841598712881528487

`∑{digits}[n^3, A024326(#+1)]`
-/

namespace A269244.P16841598712881528487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A024326 (x + 1)).sum

end

end A269244.P16841598712881528487

namespace A269244

/-- `∑{digits}[n^3, A024326(#+1)]` -/
def P16841598712881528487.Spec : Prop :=
  ∀ n, P16841598712881528487.a n = A269244 n

end A269244

/-! ## A269244.P3601301202087835153

`∑{digits}[n*n², A084863(#+1)]`
-/

namespace A269244.P3601301202087835153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A084863 (x + 1)).sum

end

end A269244.P3601301202087835153

namespace A269244

/-- `∑{digits}[n*n², A084863(#+1)]` -/
def P3601301202087835153.Spec : Prop :=
  ∀ n, P3601301202087835153.a n = A269244 n

end A269244

/-! ## A269244.P7664576365861784062

`∑{digits}[A000578(n), A025457(#)]`
-/

namespace A269244.P7664576365861784062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025457 x).sum

end

end A269244.P7664576365861784062

namespace A269244

/-- `∑{digits}[A000578(n), A025457(#)]` -/
def P7664576365861784062.Spec : Prop :=
  ∀ n, P7664576365861784062.a n = A269244 n

end A269244

/-! ## A269244.P10642380266931744334

`∑{digits}[A017271(n), A025457(#)]`
-/

namespace A269244.P10642380266931744334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025457 x).sum

end

end A269244.P10642380266931744334

namespace A269244

/-- `∑{digits}[A017271(n), A025457(#)]` -/
def P10642380266931744334.Spec : Prop :=
  ∀ n, P10642380266931744334.a n = A269244 n

end A269244

/-! ## A269244.P5041953798576287686

`∑{digits}[A032554(n), A025457(#)]`
-/

namespace A269244.P5041953798576287686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025457 x).sum

end

end A269244.P5041953798576287686

namespace A269244

/-- `∑{digits}[A032554(n), A025457(#)]` -/
def P5041953798576287686.Spec : Prop :=
  ∀ n, P5041953798576287686.a n = A269244 n

end A269244

/-! ## A269244.P16880600520483774001

`∑{digits}[n^3, A189668(A189779(#+1)+1)]`
-/

namespace A269244.P16880600520483774001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A189668 (A189779 (x + 1) + 1).toNat).sum

end

end A269244.P16880600520483774001

namespace A269244

/-- `∑{digits}[n^3, A189668(A189779(#+1)+1)]` -/
def P16880600520483774001.Spec : Prop :=
  ∀ n, P16880600520483774001.a n = A269244 n

end A269244

/-! ## A269244.P11607564725827319554

`∑{digits}[A000578(n), A186084(A007318(#))]`
-/

namespace A269244.P11607564725827319554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A186084 (A007318 x).toNat).sum

end

end A269244.P11607564725827319554

namespace A269244

/-- `∑{digits}[A000578(n), A186084(A007318(#))]` -/
def P11607564725827319554.Spec : Prop :=
  ∀ n, P11607564725827319554.a n = A269244 n

end A269244

/-!
# A269245: Number of times the digit 5 appears in the decimal expansion of n^3.

The programs for A269245, the canonical program `A269245.P17534315377358640437` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269245 has offset 0).

The definition of A269245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269245.P17534315377358640437

`∑{digits}[n*n², val(#+1, 6)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269245

/-- `∑{digits}[n*n², val(#+1, 6)]` -/
def P17534315377358640437.Spec : Prop :=
  ∀ n, (P17534315377358640437.a n : ℤ) = A269245 n

theorem P17534315377358640437.correct : P17534315377358640437.Spec := by
  intro n
  simp only [A269245]

end A269245

/-! ## A269245.P12192986624998742193

`∑{digits}[n^3, A025441(#)]`
-/

namespace A269245.P12192986624998742193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025441 x).sum

end

end A269245.P12192986624998742193

namespace A269245

/-- `∑{digits}[n^3, A025441(#)]` -/
def P12192986624998742193.Spec : Prop :=
  ∀ n, P12192986624998742193.a n = A269245 n

end A269245

/-! ## A269245.P13474478577586662932

`∑{digits}[n^3, A103673(#)]`
-/

namespace A269245.P13474478577586662932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A103673 x).sum

end

end A269245.P13474478577586662932

namespace A269245

/-- `∑{digits}[n^3, A103673(#)]` -/
def P13474478577586662932.Spec : Prop :=
  ∀ n, P13474478577586662932.a n = A269245 n

end A269245

/-! ## A269245.P2213035301463130542

`∑{digits}[n^3, A316866(#)]`
-/

namespace A269245.P2213035301463130542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316866 x).sum

end

end A269245.P2213035301463130542

namespace A269245

/-- `∑{digits}[n^3, A316866(#)]` -/
def P2213035301463130542.Spec : Prop :=
  ∀ n, P2213035301463130542.a n = A269245 n

end A269245

/-! ## A269245.P6927868706151550272

`∑{digits}[n^3, A083893(#+1)]`
-/

namespace A269245.P6927868706151550272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083893 (x + 1)).sum

end

end A269245.P6927868706151550272

namespace A269245

/-- `∑{digits}[n^3, A083893(#+1)]` -/
def P6927868706151550272.Spec : Prop :=
  ∀ n, P6927868706151550272.a n = A269245 n

end A269245

/-! ## A269245.P9516847824498449061

`∑{digits}[n^3, A025460(#+2)]`
-/

namespace A269245.P9516847824498449061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025460 (x + 2)).sum

end

end A269245.P9516847824498449061

namespace A269245

/-- `∑{digits}[n^3, A025460(#+2)]` -/
def P9516847824498449061.Spec : Prop :=
  ∀ n, P9516847824498449061.a n = A269245 n

end A269245

/-! ## A269245.P1234721124991293450

`∑{digits}[n*n², A051584(#+1)]`
-/

namespace A269245.P1234721124991293450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051584 (x + 1)).sum

end

end A269245.P1234721124991293450

namespace A269245

/-- `∑{digits}[n*n², A051584(#+1)]` -/
def P1234721124991293450.Spec : Prop :=
  ∀ n, P1234721124991293450.a n = A269245 n

end A269245

/-! ## A269245.P11542645973482624052

`∑{digits}[n*n², A061853(#+1)]`
-/

namespace A269245.P11542645973482624052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A061853 (x + 1)).sum

end

end A269245.P11542645973482624052

namespace A269245

/-- `∑{digits}[n*n², A061853(#+1)]` -/
def P11542645973482624052.Spec : Prop :=
  ∀ n, P11542645973482624052.a n = A269245 n

end A269245

/-! ## A269245.P6367855441437548670

`∑{digits}[A000578(n), A316864(A000141(#))]`
-/

namespace A269245.P6367855441437548670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 (A000141 x).toNat).sum

end

end A269245.P6367855441437548670

namespace A269245

/-- `∑{digits}[A000578(n), A316864(A000141(#))]` -/
def P6367855441437548670.Spec : Prop :=
  ∀ n, P6367855441437548670.a n = A269245 n

end A269245

/-! ## A269245.P2066838414933816026

`∑{digits}[A000578(n), A316864(A153234(#))]`
-/

namespace A269245.P2066838414933816026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 (A153234 x).toNat).sum

end

end A269245.P2066838414933816026

namespace A269245

/-- `∑{digits}[A000578(n), A316864(A153234(#))]` -/
def P2066838414933816026.Spec : Prop :=
  ∀ n, P2066838414933816026.a n = A269245 n

end A269245

/-!
# A269246: Number of times the digit 6 appears in the decimal expansion of n^3.

The programs for A269246, the canonical program `A269246.P11189101600261398533` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269246 has offset 0).

The definition of A269246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269246.P3195809231269720696

`∑{digits}[n^3, A185016(#)]`
-/

namespace A269246.P3195809231269720696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185016 x).sum

end

end A269246.P3195809231269720696

namespace A269246

/-- `∑{digits}[n^3, A185016(#)]` -/
def P3195809231269720696.Spec : Prop :=
  ∀ n, P3195809231269720696.a n = A269246 n

end A269246

/-! ## A269246.P12004142006485090838

`∑{digits}[n^3, A316867(#)]`
-/

namespace A269246.P12004142006485090838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316867 x).sum

end

end A269246.P12004142006485090838

namespace A269246

/-- `∑{digits}[n^3, A316867(#)]` -/
def P12004142006485090838.Spec : Prop :=
  ∀ n, P12004142006485090838.a n = A269246 n

end A269246

/-! ## A269246.P11189101600261398533

`∑{digits}[n*n², A085862(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269246

/-- `∑{digits}[n*n², A085862(#)]` -/
def P11189101600261398533.Spec : Prop :=
  ∀ n, P11189101600261398533.a n = A269246 n

theorem P11189101600261398533.correct : P11189101600261398533.Spec := by
  intro n
  simp only [A269246]

end A269246

/-! ## A269246.P9255307490284320066

`∑{digits}[n^3, A036855(#+2)]`
-/

namespace A269246.P9255307490284320066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036855 (x + 2)).sum

end

end A269246.P9255307490284320066

namespace A269246

/-- `∑{digits}[n^3, A036855(#+2)]` -/
def P9255307490284320066.Spec : Prop :=
  ∀ n, P9255307490284320066.a n = A269246 n

end A269246

/-! ## A269246.P1427244122562543239

`∑{digits}[A000578(n), A025459(#)]`
-/

namespace A269246.P1427244122562543239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025459 x).sum

end

end A269246.P1427244122562543239

namespace A269246

/-- `∑{digits}[A000578(n), A025459(#)]` -/
def P1427244122562543239.Spec : Prop :=
  ∀ n, P1427244122562543239.a n = A269246 n

end A269246

/-! ## A269246.P7468773833466700088

`∑{digits}[A000578(n), A026799(#)]`
-/

namespace A269246.P7468773833466700088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A026799 x).sum

end

end A269246.P7468773833466700088

namespace A269246

/-- `∑{digits}[A000578(n), A026799(#)]` -/
def P7468773833466700088.Spec : Prop :=
  ∀ n, P7468773833466700088.a n = A269246 n

end A269246

/-! ## A269246.P9263161931284633397

`∑{digits}[A000578(n), A079692(#)]`
-/

namespace A269246.P9263161931284633397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079692 x).sum

end

end A269246.P9263161931284633397

namespace A269246

/-- `∑{digits}[A000578(n), A079692(#)]` -/
def P9263161931284633397.Spec : Prop :=
  ∀ n, P9263161931284633397.a n = A269246 n

end A269246

/-! ## A269246.P3096880910494072902

`∑{digits}[A000578(n), A316864(#²)]`
-/

namespace A269246.P3096880910494072902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 (x ^ 2)).sum

end

end A269246.P3096880910494072902

namespace A269246

/-- `∑{digits}[A000578(n), A316864(#²)]` -/
def P3096880910494072902.Spec : Prop :=
  ∀ n, P3096880910494072902.a n = A269246 n

end A269246

/-! ## A269246.P10822353096116641306

`∑{digits}[n^3, A115120(A033630(#))]`
-/

namespace A269246.P10822353096116641306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A115120 (A033630 x).toNat).sum

end

end A269246.P10822353096116641306

namespace A269246

/-- `∑{digits}[n^3, A115120(A033630(#))]` -/
def P10822353096116641306.Spec : Prop :=
  ∀ n, P10822353096116641306.a n = A269246 n

end A269246

/-! ## A269246.P2793437960032174060

`∑{digits}[n^3, A011885(A126801(#+1))]`
-/

namespace A269246.P2793437960032174060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011885 (A126801 (x + 1)).toNat).sum

end

end A269246.P2793437960032174060

namespace A269246

/-- `∑{digits}[n^3, A011885(A126801(#+1))]` -/
def P2793437960032174060.Spec : Prop :=
  ∀ n, P2793437960032174060.a n = A269246 n

end A269246

/-! ## A269246.P11920749671326121272

`A000005(∏{digits}[n*n², A085862(#)+1])-1`
-/

namespace A269246.P11920749671326121272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A085862 x + 1).prod.toNat - 1

end

end A269246.P11920749671326121272

namespace A269246

/-- `A000005(∏{digits}[n*n², A085862(#)+1])-1` -/
def P11920749671326121272.Spec : Prop :=
  ∀ n, P11920749671326121272.a n = A269246 n

end A269246

/-! ## A269246.P2257507859425941237

`∑{digits}[A032554(n), A025457(A032554(#))]`
-/

namespace A269246.P2257507859425941237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025457 (A032554 x).toNat).sum

end

end A269246.P2257507859425941237

namespace A269246

/-- `∑{digits}[A032554(n), A025457(A032554(#))]` -/
def P2257507859425941237.Spec : Prop :=
  ∀ n, P2257507859425941237.a n = A269246 n

end A269246

/-!
# A269247: Number of times the digit 7 appears in the decimal expansion of n^3.

The programs for A269247, the canonical program `A269247.P10113956743542093435` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269247 has offset 0).

The definition of A269247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269247.P10113956743542093435

`∑{digits}[n^3, val(#+1, 8)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269247

/-- `∑{digits}[n^3, val(#+1, 8)]` -/
def P10113956743542093435.Spec : Prop :=
  ∀ n, (P10113956743542093435.a n : ℤ) = A269247 n

theorem P10113956743542093435.correct : P10113956743542093435.Spec := by
  intro n
  simp only [A269247]

end A269247

/-! ## A269247.P16487083320675859052

`val(∏{digits}[n*n², #+4], 11)`
-/

namespace A269247.P16487083320675859052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 4).prod 11

end

end A269247.P16487083320675859052

namespace A269247

/-- `val(∏{digits}[n*n², #+4], 11)` -/
def P16487083320675859052.Spec : Prop :=
  ∀ n, (P16487083320675859052.a n : ℤ) = A269247 n

end A269247

/-! ## A269247.P1935226917733555819

`∑{digits}[n^3, A011694(#)]`
-/

namespace A269247.P1935226917733555819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011694 x).sum

end

end A269247.P1935226917733555819

namespace A269247

/-- `∑{digits}[n^3, A011694(#)]` -/
def P1935226917733555819.Spec : Prop :=
  ∀ n, P1935226917733555819.a n = A269247 n

end A269247

/-! ## A269247.P16452878501535397948

`∑{digits}[n^3, A014082(#)]`
-/

namespace A269247.P16452878501535397948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014082 x).sum

end

end A269247.P16452878501535397948

namespace A269247

/-- `∑{digits}[n^3, A014082(#)]` -/
def P16452878501535397948.Spec : Prop :=
  ∀ n, P16452878501535397948.a n = A269247 n

end A269247

/-! ## A269247.P6819286188654369736

`∑{digits}[n^3, A025460(#)]`
-/

namespace A269247.P6819286188654369736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025460 x).sum

end

end A269247.P6819286188654369736

namespace A269247

/-- `∑{digits}[n^3, A025460(#)]` -/
def P6819286188654369736.Spec : Prop :=
  ∀ n, P6819286188654369736.a n = A269247 n

end A269247

/-! ## A269247.P4004786429424306505

`∑{digits}[n^3, A064873(#)]`
-/

namespace A269247.P4004786429424306505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064873 x).sum

end

end A269247.P4004786429424306505

namespace A269247

/-- `∑{digits}[n^3, A064873(#)]` -/
def P4004786429424306505.Spec : Prop :=
  ∀ n, P4004786429424306505.a n = A269247 n

end A269247

/-! ## A269247.P14290248366610269111

`∑{digits}[n^3, A079690(#)]`
-/

namespace A269247.P14290248366610269111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079690 x).sum

end

end A269247.P14290248366610269111

namespace A269247

/-- `∑{digits}[n^3, A079690(#)]` -/
def P14290248366610269111.Spec : Prop :=
  ∀ n, P14290248366610269111.a n = A269247 n

end A269247

/-! ## A269247.P7581754880108835960

`∑{digits}[n^3, A135133(#)]`
-/

namespace A269247.P7581754880108835960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A135133 x).sum

end

end A269247.P7581754880108835960

namespace A269247

/-- `∑{digits}[n^3, A135133(#)]` -/
def P7581754880108835960.Spec : Prop :=
  ∀ n, P7581754880108835960.a n = A269247 n

end A269247

/-! ## A269247.P4978669280561695926

`∑{digits}[n^3, A151755(#)]`
-/

namespace A269247.P4978669280561695926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A151755 x).sum

end

end A269247.P4978669280561695926

namespace A269247

/-- `∑{digits}[n^3, A151755(#)]` -/
def P4978669280561695926.Spec : Prop :=
  ∀ n, P4978669280561695926.a n = A269247 n

end A269247

/-! ## A269247.P12561879420308911887

`∑{digits}[n^3, A293162(#)]`
-/

namespace A269247.P12561879420308911887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A293162 x).sum

end

end A269247.P12561879420308911887

namespace A269247

/-- `∑{digits}[n^3, A293162(#)]` -/
def P12561879420308911887.Spec : Prop :=
  ∀ n, P12561879420308911887.a n = A269247 n

end A269247

/-! ## A269247.P8492653547054069083

`∑{digits}[n^3, A316868(#)]`
-/

namespace A269247.P8492653547054069083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316868 x).sum

end

end A269247.P8492653547054069083

namespace A269247

/-- `∑{digits}[n^3, A316868(#)]` -/
def P8492653547054069083.Spec : Prop :=
  ∀ n, P8492653547054069083.a n = A269247 n

end A269247

/-! ## A269247.P18196830818608371318

`∑{digits}[n*n², A046778(#)]`
-/

namespace A269247.P18196830818608371318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A046778 x).sum

end

end A269247.P18196830818608371318

namespace A269247

/-- `∑{digits}[n*n², A046778(#)]` -/
def P18196830818608371318.Spec : Prop :=
  ∀ n, P18196830818608371318.a n = A269247 n

end A269247

/-! ## A269247.P12304017810713980553

`∑{digits}[n*n², A169673(#)]`
-/

namespace A269247.P12304017810713980553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A169673 x).sum

end

end A269247.P12304017810713980553

namespace A269247

/-- `∑{digits}[n*n², A169673(#)]` -/
def P12304017810713980553.Spec : Prop :=
  ∀ n, P12304017810713980553.a n = A269247 n

end A269247

/-! ## A269247.P14124004909491887880

`∑{digits}[n*n², A229658(#)]`
-/

namespace A269247.P14124004909491887880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A229658 x).sum

end

end A269247.P14124004909491887880

namespace A269247

/-- `∑{digits}[n*n², A229658(#)]` -/
def P14124004909491887880.Spec : Prop :=
  ∀ n, P14124004909491887880.a n = A269247 n

end A269247

/-! ## A269247.P4999578883239039254

`∑{digits}[A000578(n), A011721(#)]`
-/

namespace A269247.P4999578883239039254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011721 x).sum

end

end A269247.P4999578883239039254

namespace A269247

/-- `∑{digits}[A000578(n), A011721(#)]` -/
def P4999578883239039254.Spec : Prop :=
  ∀ n, P4999578883239039254.a n = A269247 n

end A269247

/-! ## A269247.P2583034464211035926

`∑{digits}[A000578(n), A025431(#)]`
-/

namespace A269247.P2583034464211035926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025431 x).sum

end

end A269247.P2583034464211035926

namespace A269247

/-- `∑{digits}[A000578(n), A025431(#)]` -/
def P2583034464211035926.Spec : Prop :=
  ∀ n, P2583034464211035926.a n = A269247 n

end A269247

/-! ## A269247.P5573602720606425299

`∑{digits}[A000578(n), A026800(#)]`
-/

namespace A269247.P5573602720606425299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A026800 x).sum

end

end A269247.P5573602720606425299

namespace A269247

/-- `∑{digits}[A000578(n), A026800(#)]` -/
def P5573602720606425299.Spec : Prop :=
  ∀ n, P5573602720606425299.a n = A269247 n

end A269247

/-! ## A269247.P8875963187293846264

`∑{digits}[A032554(n), A026800(#)]`
-/

namespace A269247.P8875963187293846264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A026800 x).sum

end

end A269247.P8875963187293846264

namespace A269247

/-- `∑{digits}[A032554(n), A026800(#)]` -/
def P8875963187293846264.Spec : Prop :=
  ∀ n, P8875963187293846264.a n = A269247 n

end A269247

/-! ## A269247.P15773158880446073476

`∑{digits}[A000578(n), A083929(#)]`
-/

namespace A269247.P15773158880446073476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A083929 x).sum

end

end A269247.P15773158880446073476

namespace A269247

/-- `∑{digits}[A000578(n), A083929(#)]` -/
def P15773158880446073476.Spec : Prop :=
  ∀ n, P15773158880446073476.a n = A269247 n

end A269247

/-! ## A269247.P17241668946258972889

`∑{digits}[A000578(n), A251760(#)]`
-/

namespace A269247.P17241668946258972889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251760 x).sum

end

end A269247.P17241668946258972889

namespace A269247

/-- `∑{digits}[A000578(n), A251760(#)]` -/
def P17241668946258972889.Spec : Prop :=
  ∀ n, P17241668946258972889.a n = A269247 n

end A269247

/-!
# A269248: Number of times the digit 8 appears in the decimal expansion of n^3.

The programs for A269248, the canonical program `A269248.P9209778327242557250` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269248 has offset 0).

The definition of A269248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269248.P9209778327242557250

`∑{digits}[n*n², val(#+1, 9)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269248

/-- `∑{digits}[n*n², val(#+1, 9)]` -/
def P9209778327242557250.Spec : Prop :=
  ∀ n, (P9209778327242557250.a n : ℤ) = A269248 n

theorem P9209778327242557250.correct : P9209778327242557250.Spec := by
  intro n
  simp only [A269248]

end A269248

/-! ## A269248.P8355224505992786266

`∑{digits}[n^3, A025461(#)]`
-/

namespace A269248.P8355224505992786266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025461 x).sum

end

end A269248.P8355224505992786266

namespace A269248

/-- `∑{digits}[n^3, A025461(#)]` -/
def P8355224505992786266.Spec : Prop :=
  ∀ n, P8355224505992786266.a n = A269248 n

end A269248

/-! ## A269248.P9379087538076909058

`∑{digits}[n^3, A026829(#)]`
-/

namespace A269248.P9379087538076909058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026829 x).sum

end

end A269248.P9379087538076909058

namespace A269248

/-- `∑{digits}[n^3, A026829(#)]` -/
def P9379087538076909058.Spec : Prop :=
  ∀ n, P9379087538076909058.a n = A269248 n

end A269248

/-! ## A269248.P16016397689047232686

`∑{digits}[n^3, A045698(#)]`
-/

namespace A269248.P16016397689047232686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045698 x).sum

end

end A269248.P16016397689047232686

namespace A269248

/-- `∑{digits}[n^3, A045698(#)]` -/
def P16016397689047232686.Spec : Prop :=
  ∀ n, P16016397689047232686.a n = A269248 n

end A269248

/-! ## A269248.P7948796449891548869

`∑{digits}[n^3, A160086(#)]`
-/

namespace A269248.P7948796449891548869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160086 x).sum

end

end A269248.P7948796449891548869

namespace A269248

/-- `∑{digits}[n^3, A160086(#)]` -/
def P7948796449891548869.Spec : Prop :=
  ∀ n, P7948796449891548869.a n = A269248 n

end A269248

/-! ## A269248.P9030985955145830967

`∑{digits}[n^3, A165091(#)]`
-/

namespace A269248.P9030985955145830967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A165091 x).sum

end

end A269248.P9030985955145830967

namespace A269248

/-- `∑{digits}[n^3, A165091(#)]` -/
def P9030985955145830967.Spec : Prop :=
  ∀ n, P9030985955145830967.a n = A269248 n

end A269248

/-! ## A269248.P16432974368836748864

`∑{digits}[n*n², A072931(#)]`
-/

namespace A269248.P16432974368836748864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A072931 x).sum

end

end A269248.P16432974368836748864

namespace A269248

/-- `∑{digits}[n*n², A072931(#)]` -/
def P16432974368836748864.Spec : Prop :=
  ∀ n, P16432974368836748864.a n = A269248 n

end A269248

/-! ## A269248.P12419154947463889055

`∑{digits}[A000578(n), A011722(#)]`
-/

namespace A269248.P12419154947463889055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011722 x).sum

end

end A269248.P12419154947463889055

namespace A269248

/-- `∑{digits}[A000578(n), A011722(#)]` -/
def P12419154947463889055.Spec : Prop :=
  ∀ n, P12419154947463889055.a n = A269248 n

end A269248

/-! ## A269248.P5706556922471893891

`∑{digits}[A000578(n), A025432(#)]`
-/

namespace A269248.P5706556922471893891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025432 x).sum

end

end A269248.P5706556922471893891

namespace A269248

/-- `∑{digits}[A000578(n), A025432(#)]` -/
def P5706556922471893891.Spec : Prop :=
  ∀ n, P5706556922471893891.a n = A269248 n

end A269248

/-! ## A269248.P3476947187317258414

`∑{digits}[A017271(n), A011722(#)]`
-/

namespace A269248.P3476947187317258414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011722 x).sum

end

end A269248.P3476947187317258414

namespace A269248

/-- `∑{digits}[A017271(n), A011722(#)]` -/
def P3476947187317258414.Spec : Prop :=
  ∀ n, P3476947187317258414.a n = A269248 n

end A269248

/-! ## A269248.P6852690333744115809

`∑{digits}[A000578(n), A035582(#)]`
-/

namespace A269248.P6852690333744115809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A035582 x).sum

end

end A269248.P6852690333744115809

namespace A269248

/-- `∑{digits}[A000578(n), A035582(#)]` -/
def P6852690333744115809.Spec : Prop :=
  ∀ n, P6852690333744115809.a n = A269248 n

end A269248

/-! ## A269248.P10939465655422175151

`∑{digits}[A000578(n), A186748(#)]`
-/

namespace A269248.P10939465655422175151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A186748 x).sum

end

end A269248.P10939465655422175151

namespace A269248

/-- `∑{digits}[A000578(n), A186748(#)]` -/
def P10939465655422175151.Spec : Prop :=
  ∀ n, P10939465655422175151.a n = A269248 n

end A269248

/-! ## A269248.P10110558406136718100

`∑{digits}[A000578(n), A241319(#)]`
-/

namespace A269248.P10110558406136718100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A241319 x).sum

end

end A269248.P10110558406136718100

namespace A269248

/-- `∑{digits}[A000578(n), A241319(#)]` -/
def P10110558406136718100.Spec : Prop :=
  ∀ n, P10110558406136718100.a n = A269248 n

end A269248

/-! ## A269248.P10886753364953909725

`∑{digits}[A000578(n), A251759(#)]`
-/

namespace A269248.P10886753364953909725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251759 x).sum

end

end A269248.P10886753364953909725

namespace A269248

/-- `∑{digits}[A000578(n), A251759(#)]` -/
def P10886753364953909725.Spec : Prop :=
  ∀ n, P10886753364953909725.a n = A269248 n

end A269248

/-! ## A269248.P17398102673602196207

`∑{digits}[A000578(n), A277149(#)]`
-/

namespace A269248.P17398102673602196207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A277149 x).sum

end

end A269248.P17398102673602196207

namespace A269248

/-- `∑{digits}[A000578(n), A277149(#)]` -/
def P17398102673602196207.Spec : Prop :=
  ∀ n, P17398102673602196207.a n = A269248 n

end A269248

/-! ## A269248.P9876903620203236742

`∑{digits}[A000578(n), A316869(#)]`
-/

namespace A269248.P9876903620203236742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316869 x).sum

end

end A269248.P9876903620203236742

namespace A269248

/-- `∑{digits}[A000578(n), A316869(#)]` -/
def P9876903620203236742.Spec : Prop :=
  ∀ n, P9876903620203236742.a n = A269248 n

end A269248

/-! ## A269248.P11636513359181332251

`∑{digits}[n^3, A025437(A000045(#))]`
-/

namespace A269248.P11636513359181332251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025437 (A000045 x).toNat).sum

end

end A269248.P11636513359181332251

namespace A269248

/-- `∑{digits}[n^3, A025437(A000045(#))]` -/
def P11636513359181332251.Spec : Prop :=
  ∀ n, P11636513359181332251.a n = A269248 n

end A269248

/-! ## A269248.P15048509358681225627

`∑{digits}[n*n², A055641(A000108(#))]`
-/

namespace A269248.P15048509358681225627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A055641 (A000108 x).toNat).sum

end

end A269248.P15048509358681225627

namespace A269248

/-- `∑{digits}[n*n², A055641(A000108(#))]` -/
def P15048509358681225627.Spec : Prop :=
  ∀ n, P15048509358681225627.a n = A269248 n

end A269248

/-!
# A269249: Number of times the digit 9 appears in the decimal expansion of n^3.

The programs for A269249, the canonical program `A269249.P8053805747722071623` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269249 has offset 0).

The definition of A269249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269249.P8053805747722071623

`∑{digits}[n^3, C(#, 9)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269249

/-- `∑{digits}[n^3, C(#, 9)]` -/
def P8053805747722071623.Spec : Prop :=
  ∀ n, (P8053805747722071623.a n : ℤ) = A269249 n

theorem P8053805747722071623.correct : P8053805747722071623.Spec := by
  intro n
  simp only [A269249]

end A269249

/-! ## A269249.P5808033744143327066

`∑{digits}[n^3, A102683(#)]`
-/

namespace A269249.P5808033744143327066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A102683 x).sum

end

end A269249.P5808033744143327066

namespace A269249

/-- `∑{digits}[n^3, A102683(#)]` -/
def P5808033744143327066.Spec : Prop :=
  ∀ n, P5808033744143327066.a n = A269249 n

end A269249

/-! ## A269249.P12641174808579567700

`∑{digits}[A000578(n), A316869(#²)]`
-/

namespace A269249.P12641174808579567700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316869 (x ^ 2)).sum

end

end A269249.P12641174808579567700

namespace A269249

/-- `∑{digits}[A000578(n), A316869(#²)]` -/
def P12641174808579567700.Spec : Prop :=
  ∀ n, P12641174808579567700.a n = A269249 n

end A269249

/-! ## A269249.P14586156633056442100

`∑{digits}[n^3, A002264(A002264(#))]`
-/

namespace A269249.P14586156633056442100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A002264 (A002264 x).toNat).sum

end

end A269249.P14586156633056442100

namespace A269249

/-- `∑{digits}[n^3, A002264(A002264(#))]` -/
def P14586156633056442100.Spec : Prop :=
  ∀ n, P14586156633056442100.a n = A269249 n

end A269249

/-! ## A269249.P9522656223669071871

`∑{digits}[n^3, A011885(A341144(#))]`
-/

namespace A269249.P9522656223669071871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011885 (A341144 (x + 30)).toNat).sum

end

end A269249.P9522656223669071871

namespace A269249

/-- `∑{digits}[n^3, A011885(A341144(#))]` -/
def P9522656223669071871.Spec : Prop :=
  ∀ n, P9522656223669071871.a n = A269249 n

end A269249

/-! ## A269249.P15642270056071795614

`∑{digits}[A000578(n), A056172(A056172(#+1)+1)]`
-/

namespace A269249.P15642270056071795614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A056172 (A056172 (x + 1) + 1).toNat).sum

end

end A269249.P15642270056071795614

namespace A269249

/-- `∑{digits}[A000578(n), A056172(A056172(#+1)+1)]` -/
def P15642270056071795614.Spec : Prop :=
  ∀ n, P15642270056071795614.a n = A269249 n

end A269249

/-!
# A269250: Number of times the digit 0 appears in the decimal expansion of n^3.

The programs for A269250, the canonical program `A269250.P13199977431476461355` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269250 has offset 0).

The definition of A269250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269250.P15792512213260401880

`∑{digits}[n*n², A321448(#)]`
-/

namespace A269250.P15792512213260401880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A321448 x).sum

end

end A269250.P15792512213260401880

namespace A269250

/-- `∑{digits}[n*n², A321448(#)]` -/
def P15792512213260401880.Spec : Prop :=
  ∀ n, P15792512213260401880.a n = A269250 n

end A269250

/-! ## A269250.P9133152410022781939

`∑{digits}[n^3, A008458(#)%3]`
-/

namespace A269250.P9133152410022781939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A008458 x) 3).sum

end

end A269250.P9133152410022781939

namespace A269250

/-- `∑{digits}[n^3, A008458(#)%3]` -/
def P9133152410022781939.Spec : Prop :=
  ∀ n, P9133152410022781939.a n = A269250 n

end A269250

/-! ## A269250.P13199977431476461355

`∑{digits}[n^3, C(2, A006254(#+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269250

/-- `∑{digits}[n^3, C(2, A006254(#+1))]` -/
def P13199977431476461355.Spec : Prop :=
  ∀ n, (P13199977431476461355.a n : ℤ) = A269250 n

theorem P13199977431476461355.correct : P13199977431476461355.Spec := by
  intro n
  simp only [A269250]

end A269250

/-! ## A269250.P15114531497413180092

`∑{digits}[A000578(n), A000007(#)]`
-/

namespace A269250.P15114531497413180092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A269250.P15114531497413180092

namespace A269250

/-- `∑{digits}[A000578(n), A000007(#)]` -/
def P15114531497413180092.Spec : Prop :=
  ∀ n, P15114531497413180092.a n = A269250 n

end A269250

/-! ## A269250.P3539624170102889023

`∑{digits}[A000578(n), A151935(#)]`
-/

namespace A269250.P3539624170102889023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151935 x).sum

end

end A269250.P3539624170102889023

namespace A269250

/-- `∑{digits}[A000578(n), A151935(#)]` -/
def P3539624170102889023.Spec : Prop :=
  ∀ n, P3539624170102889023.a n = A269250 n

end A269250

/-! ## A269250.P1371979697133343964

`∑{digits}[A000578(n), A341882(#)]`
-/

namespace A269250.P1371979697133343964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A341882 (x + 64)).sum

end

end A269250.P1371979697133343964

namespace A269250

/-- `∑{digits}[A000578(n), A341882(#)]` -/
def P1371979697133343964.Spec : Prop :=
  ∀ n, P1371979697133343964.a n = A269250 n

end A269250

/-! ## A269250.P13775929427639250662

`∑{digits}[A000578(n), A262693(#²)]`
-/

namespace A269250.P13775929427639250662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A262693 (x ^ 2)).sum

end

end A269250.P13775929427639250662

namespace A269250

/-- `∑{digits}[A000578(n), A262693(#²)]` -/
def P13775929427639250662.Spec : Prop :=
  ∀ n, P13775929427639250662.a n = A269250 n

end A269250

/-! ## A269250.P6772346559451072611

`∑{digits}[A000578(n), A030217(#+1)]`
-/

namespace A269250.P6772346559451072611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A030217 (x + 1)).sum

end

end A269250.P6772346559451072611

namespace A269250

/-- `∑{digits}[A000578(n), A030217(#+1)]` -/
def P6772346559451072611.Spec : Prop :=
  ∀ n, P6772346559451072611.a n = A269250 n

end A269250

/-! ## A269250.P5972339300078221662

`∑{digits}[A000578(n), A033683(#+1)]`
-/

namespace A269250.P5972339300078221662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033683 (x + 1)).sum

end

end A269250.P5972339300078221662

namespace A269250

/-- `∑{digits}[A000578(n), A033683(#+1)]` -/
def P5972339300078221662.Spec : Prop :=
  ∀ n, P5972339300078221662.a n = A269250 n

end A269250

/-! ## A269250.P638586113704751199

`∑{digits}[A000578(n), A178333(#+1)]`
-/

namespace A269250.P638586113704751199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178333 (x + 1)).sum

end

end A269250.P638586113704751199

namespace A269250

/-- `∑{digits}[A000578(n), A178333(#+1)]` -/
def P638586113704751199.Spec : Prop :=
  ∀ n, P638586113704751199.a n = A269250 n

end A269250

/-! ## A269250.P16361778723399824183

`∑{digits}[A000578(n), A181499(#+1)]`
-/

namespace A269250.P16361778723399824183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A181499 (x + 1)).sum

end

end A269250.P16361778723399824183

namespace A269250

/-- `∑{digits}[A000578(n), A181499(#+1)]` -/
def P16361778723399824183.Spec : Prop :=
  ∀ n, P16361778723399824183.a n = A269250 n

end A269250

/-! ## A269250.P9060586519270403477

`∑{digits}[A000578(n), A163817(2*#)]`
-/

namespace A269250.P9060586519270403477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A163817 (2 * x)).sum

end

end A269250.P9060586519270403477

namespace A269250

/-- `∑{digits}[A000578(n), A163817(2*#)]` -/
def P9060586519270403477.Spec : Prop :=
  ∀ n, P9060586519270403477.a n = A269250 n

end A269250

/-! ## A269250.P11049146396174521112

`∑{digits}[A000578(n), A003982(#²²)]`
-/

namespace A269250.P11049146396174521112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003982 ((x ^ 2) ^ 2)).sum

end

end A269250.P11049146396174521112

namespace A269250

/-- `∑{digits}[A000578(n), A003982(#²²)]` -/
def P11049146396174521112.Spec : Prop :=
  ∀ n, P11049146396174521112.a n = A269250 n

end A269250

/-! ## A269250.P14327911779722783264

`∑{digits}[n^3, A101659(A232161(#+1))]`
-/

namespace A269250.P14327911779722783264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A101659 (A232161 (x + 1)).toNat).sum

end

end A269250.P14327911779722783264

namespace A269250

/-- `∑{digits}[n^3, A101659(A232161(#+1))]` -/
def P14327911779722783264.Spec : Prop :=
  ∀ n, P14327911779722783264.a n = A269250 n

end A269250

/-!
# A269252: Define a sequence by s(k) = n*s(k-1) - s(k-2), with s(0) = 1, s(1) = n - 1. a(n) is the smallest index k such that s(k) is prime, or -1 if no such k exists.

The programs for A269252, there is no canonical definition to state claims against.
-/

/-! ## A269252.P16404361734525144849

`A167866(n)-A008683(A076722(n+1))`
-/

namespace A269252.P16404361734525144849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 n - A008683 (A076722 (n + 1)).toNat

end

end A269252.P16404361734525144849

/-! ## A269252.P10411029513464042826

`A299912(A024622(n))+A260803(n)`
-/

namespace A269252.P10411029513464042826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299912 (A024622 n).toNat + A260803 n

end

end A269252.P10411029513464042826

/-! ## A269252.P11820846698516744147

`A260803(n)-A023900(A011782(n))`
-/

namespace A269252.P11820846698516744147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n - A023900 (A011782 n).toNat

end

end A269252.P11820846698516744147

/-! ## A269252.P11832673899280273479

`A260803(n)-A023900(A213173(n))`
-/

namespace A269252.P11832673899280273479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n - A023900 (A213173 n).toNat

end

end A269252.P11832673899280273479

/-! ## A269252.P3627894245954025190

`A260804(n+1)-A023900(A011782(n))`
-/

namespace A269252.P3627894245954025190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 (n + 1) - A023900 (A011782 n).toNat

end

end A269252.P3627894245954025190

/-!
# A269254: To find a(n), define a sequence by s(k) = n*s(k-1) - s(k-2), with s(0) = 1, s(1) = n + 1; then a(n) is the smallest index k such that s(k) is prime, or -1 if no such k exists.

The programs for A269254, there is no canonical definition to state claims against.
-/

/-! ## A269254.P16374972445689878028

`A057079(A058327(n+1)%A124151(n+1))`
-/

namespace A269254.P16374972445689878028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (Int.tmod (A058327 (n + 1)) (A124151 (n + 1))).toNat

end

end A269254.P16374972445689878028

/-! ## A269254.P12634807924886919812

`A105931(A380708(n))`
-/

namespace A269254.P12634807924886919812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (A380708 n).toNat

end

end A269254.P12634807924886919812

/-! ## A269254.P3517824535653968318

`A057079(gcd(A060964(n), A270829(n+1)))`
-/

namespace A269254.P3517824535653968318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (Int.gcd (A060964 n) (A270829 (n + 1)))

end

end A269254.P3517824535653968318

/-! ## A269254.P10921276293746827870

`A280193(A064918(n+2)*A328692(n))`
-/

namespace A269254.P10921276293746827870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A064918 (n + 2) * A328692 n).toNat

end

end A269254.P10921276293746827870

/-! ## A269254.P11695654017673283795

`A280193(lcm(A064918(n+2), A328692(n)))`
-/

namespace A269254.P11695654017673283795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (Int.lcm (A064918 (n + 2)) (A328692 n))

end

end A269254.P11695654017673283795

/-!
# A269255: a(n) = (2^(2*n+1) - 1)*(3^(n+1) - 1)/2.

The programs for A269255, the canonical program `A269255.P15770080116960053530` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269255 has offset 0).

The definition of A269255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269255.P15770080116960053530

`(2^(2*n+1)-1)*(3^(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269255

/-- `(2^(2*n+1)-1)*(3^(n+1)-1)/2` -/
def P15770080116960053530.Spec : Prop :=
  ∀ n, P15770080116960053530.a n = (A269255 n : ℚ)

end A269255

/-!
# A269256: Chen primes p such that there are Chen primes p > q > r in arithmetic progression.

The programs for A269256, there is no canonical definition to state claims against.
-/

/-! ## A269256.P4184955561392707366

`∩[A109611(n+1), A309264(n+1)]`
-/

namespace A269256.P4184955561392707366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269256.P4184955561392707366

/-! ## A269256.P4923492322421511699

`∩[A139690(n+1)-2, A309264(n+1)]`
-/

namespace A269256.P4923492322421511699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269256.P4923492322421511699

/-! ## A269256.P14406286194610820997

`∩[A309264(n+1), A118776(n)+a(n-1)]` with `a(0)=2`
-/

namespace A269256.P14406286194610820997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A118776 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269256.P14406286194610820997

/-! ## A269256.P18042466517141114169

`∩[A023444(A139690(n+1)), A309264(n+1)]`
-/

namespace A269256.P18042466517141114169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A139690 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269256.P18042466517141114169

/-! ## A269256.P18444260908555166680

`∩[A118482(n+1)-A118482(n), A309264(n+1)]`
-/

namespace A269256.P18444260908555166680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 (n + 1) - A118482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269256.P18444260908555166680

/-!
# A269257: Primes p such that p+2^4, p+2^6 and p+2^8 are all primes.

The programs for A269257, there is no canonical definition to state claims against.
-/

/-! ## A269257.P13233166498713318425

`A291276(A026644(n+1))`
-/

namespace A269257.P13233166498713318425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291276 (A026644 (n + 1)).toNat

end

end A269257.P13233166498713318425

/-!
# A269258: Primes p such that p+2^4, p+2^6, p+2^8 and p+2^10 are all primes.

The programs for A269258, there is no canonical definition to state claims against.
-/

/-! ## A269258.P4558544985301484545

`∩[A269257(n+1), A361485(n+1)]`
-/

namespace A269258.P4558544985301484545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269258.P4558544985301484545

/-!
# A269261: Record (maximal) gaps between primes of the form 10k + 9.

The programs for A269261, there is no canonical definition to state claims against.
-/

/-! ## A269261.P14879835438661505581

`A269263(n+1)-A269262(n+1)`
-/

namespace A269261.P14879835438661505581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269263 (n + 1) - A269262 (n + 1)

end

end A269261.P14879835438661505581

/-! ## A269261.P16094342384897245066

`record[A030433(n+2)-A030433(n+1)]`
-/

namespace A269261.P16094342384897245066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 2) - A030433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269261.P16094342384897245066

/-!
# A269262: Primes 10k + 9 preceding the maximal gaps in A269261.

The programs for A269262, there is no canonical definition to state claims against.
-/

/-! ## A269262.P641671065632499755

`A269263(n+1)-A269261(n+1)`
-/

namespace A269262.P641671065632499755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269263 (n + 1) - A269261 (n + 1)

end

end A269262.P641671065632499755

/-! ## A269262.P15968519056079047543

`A269263(n+1)-record[A030433(n+2)-A030433(n+1)]`
-/

namespace A269262.P15968519056079047543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 2) - A030433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269263 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269262.P15968519056079047543

/-!
# A269263: Primes 10k + 9 at the end of the maximal gaps in A269261.

The programs for A269263, there is no canonical definition to state claims against.
-/

/-! ## A269263.P422621030263552904

`A269262(n+1)+A269261(n+1)`
-/

namespace A269263.P422621030263552904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269262 (n + 1) + A269261 (n + 1)

end

end A269263.P422621030263552904

/-! ## A269263.P9474449710299910165

`A269262(n+1)+record[A030433(n+2)-A030433(n+1)]`
-/

namespace A269263.P9474449710299910165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 2) - A030433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269262 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269263.P9474449710299910165

/-!
# A269264: Numbers k such that (2^k-1)^2 - 2 is a semiprime.

The programs for A269264, there is no canonical definition to state claims against.
-/

/-! ## A269264.P5945878340016621427

`xor(4*n+5, A257994(A300335(n)))`
-/

namespace A269264.P5945878340016621427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n + 5 : ℤ) (A257994 (A300335 n).toNat)

end

end A269264.P5945878340016621427

/-! ## A269264.P11754597403317743434

`A334462(A001157(n+1))+4*(n+1)`
-/

namespace A269264.P11754597403317743434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334462 (A001157 (n + 1)).toNat + (4 * (n + 1) : ℤ)

end

end A269264.P11754597403317743434

/-! ## A269264.P11787929873106701539

`xor(A303386(n+2), A311445(A032559(n+1)))`
-/

namespace A269264.P11787929873106701539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A303386 (n + 2)) (A311445 (A032559 (n + 1)).toNat)

end

end A269264.P11787929873106701539

/-!
# A269265: a(0) = a(1) = 1; thereafter a(n) = a(n-1) + a(n-2) if n is even, otherwise a(n) = a(n-1)^2.

The programs for A269265, there is no canonical definition to state claims against.
-/

/-! ## A269265.P6859341905002247869

`A139145(A075427(n))`
-/

namespace A269265.P6859341905002247869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139145 (A075427 n).toNat

end

end A269265.P6859341905002247869

/-! ## A269265.P14104866858004712150

`A139145(A083416(n+2))`
-/

namespace A269265.P14104866858004712150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139145 (A083416 (n + 2)).toNat

end

end A269265.P14104866858004712150

/-! ## A269265.P10227952577846360178

`A007018(A004526(n))^A000034(n)`
-/

namespace A269265.P10227952577846360178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007018 (A004526 n).toNat : ℚ) ^ (A000034 n : ℤ)

end

end A269265.P10227952577846360178

/-! ## A269265.P11839438518689420869

`A343511(A016116(n))^A000034(n)`
-/

namespace A269265.P11839438518689420869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343511 (A016116 n).toNat : ℚ) ^ (A000034 n : ℤ)

end

end A269265.P11839438518689420869

/-! ## A269265.P6183642247559980003

`A007018(A004526(n))^A257993(n²+1)`
-/

namespace A269265.P6183642247559980003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007018 (A004526 n).toNat : ℚ) ^ (A257993 (n ^ 2 + 1) : ℤ)

end

end A269265.P6183642247559980003

/-!
# A269266: a(n) = 2^n mod 31.

The programs for A269266, the canonical program `A269266.P10451627557696357728` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269266 has offset 0).

The definition of A269266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269266.P10451627557696357728

`2^(n%5)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269266

/-- `2^(n%5)` -/
def P10451627557696357728.Spec : Prop :=
  ∀ n, (P10451627557696357728.a n : ℤ) = A269266 n

theorem P10451627557696357728.correct : P10451627557696357728.Spec := by
  intro n
  simp only [A269266]

end A269266

/-!
# A269267: Indices k such that A107435(k) != A268057(k).

The programs for A269267, there is no canonical definition to state claims against.
-/

/-! ## A269267.P14133527268715989241

`comp[A269331(n+1)-1]+1`
-/

namespace A269267.P14133527268715989241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269331 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A269267.P14133527268715989241

/-! ## A269267.P2911090580070190281

`comp[∪[A269331(n+1), A000217(n)]]`
-/

namespace A269267.P2911090580070190281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269331 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A269267.P2911090580070190281

/-!
# A269269: Number of n X n 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269269, there is no canonical definition to state claims against.
-/

/-! ## A269269.P2531434224143676624

`A269276((n+1)²+n²)`
-/

namespace A269269.P2531434224143676624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 ((n + 1) ^ 2 + n ^ 2)

end

end A269269.P2531434224143676624

/-!
# A269270: Number of n X 2 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269270, the canonical program `A269270.P15003202493367902363` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269270 has offset 1).

The definition of A269270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269270.P15003202493367902363

`(8*n+4)*9^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269270

/-- `(8*n+4)*9^n` -/
def P15003202493367902363.Spec : Prop :=
  ∀ n, (P15003202493367902363.a n : ℤ) = A269270 (n + 1)

theorem P15003202493367902363.correct : P15003202493367902363.Spec := by
  intro n
  simp only [A269270, Nat.add_sub_cancel]

end A269270

/-! ## A269270.P7998389559337378630

`lcm(4, 9^n*Δ[n²])`
-/

namespace A269270.P7998389559337378630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ((9 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A269270.P7998389559337378630

namespace A269270

/-- `lcm(4, 9^n*Δ[n²])` -/
def P7998389559337378630.Spec : Prop :=
  ∀ n, (P7998389559337378630.a n : ℤ) = A269270 (n + 1)

end A269270

/-! ## A269270.P11003379450827744302

`18*a(n-1)-81*a(n-2)` with `a(0)=4, a(1)=108`
-/

namespace A269270.P11003379450827744302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 108] fun n a =>
  18 * a (n - 1) - 81 * a (n - 2)

end

end A269270.P11003379450827744302

namespace A269270

/-- `18*a(n-1)-81*a(n-2)` -/
def P11003379450827744302.Spec : Prop :=
  ∀ n, P11003379450827744302.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P7964765538612832544

`A120908(2*(n+1))`
-/

namespace A269270.P7964765538612832544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (2 * (n + 1))

end

end A269270.P7964765538612832544

namespace A269270

/-- `A120908(2*(n+1))` -/
def P7964765538612832544.Spec : Prop :=
  ∀ n, P7964765538612832544.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P2923445239926766125

`A203230(4*n+2)`
-/

namespace A269270.P2923445239926766125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203230 (4 * n + 2)

end

end A269270.P2923445239926766125

namespace A269270

/-- `A203230(4*n+2)` -/
def P2923445239926766125.Spec : Prop :=
  ∀ n, P2923445239926766125.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P11492880597902164942

`A203231(4*n+2)`
-/

namespace A269270.P11492880597902164942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203231 (4 * n + 2)

end

end A269270.P11492880597902164942

namespace A269270

/-- `A203231(4*n+2)` -/
def P11492880597902164942.Spec : Prop :=
  ∀ n, P11492880597902164942.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P15977720029775621329

`A236967(Δ[n²])/3`
-/

namespace A269270.P15977720029775621329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236967 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A269270.P15977720029775621329

namespace A269270

/-- `A236967(Δ[n²])/3` -/
def P15977720029775621329.Spec : Prop :=
  ∀ n, P15977720029775621329.a n = (A269270 (n + 1) : ℚ)

end A269270

/-! ## A269270.P5769356294214856461

`abs(Δ[(2*n)²]*A001019(n))`
-/

namespace A269270.P5769356294214856461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001019 n|

end

end A269270.P5769356294214856461

namespace A269270

/-- `abs(Δ[(2*n)²]*A001019(n))` -/
def P5769356294214856461.Spec : Prop :=
  ∀ n, P5769356294214856461.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P4176199184864233120

`A187273(A016825(n))/3`
-/

namespace A269270.P4176199184864233120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187273 (A016825 n).toNat : ℚ) / 3

end

end A269270.P4176199184864233120

namespace A269270

/-- `A187273(A016825(n))/3` -/
def P4176199184864233120.Spec : Prop :=
  ∀ n, P4176199184864233120.a n = (A269270 (n + 1) : ℚ)

end A269270

/-! ## A269270.P1088471710692150029

`A155988(n)+A060851(n+1)`
-/

namespace A269270.P1088471710692150029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155988 n + A060851 (n + 1)

end

end A269270.P1088471710692150029

namespace A269270

/-- `A155988(n)+A060851(n+1)` -/
def P1088471710692150029.Spec : Prop :=
  ∀ n, P1088471710692150029.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P2995115878744511131

`A229277(2*n+1)+A124647(2*n)`
-/

namespace A269270.P2995115878744511131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 (2 * n + 1) + A124647 (2 * n)

end

end A269270.P2995115878744511131

namespace A269270

/-- `A229277(2*n+1)+A124647(2*n)` -/
def P2995115878744511131.Spec : Prop :=
  ∀ n, P2995115878744511131.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P16127461312104782063

`A392331(2*n)+A000244(2*n+1)`
-/

namespace A269270.P16127461312104782063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392331 (2 * n) + A000244 (2 * n + 1)

end

end A269270.P16127461312104782063

namespace A269270

/-- `A392331(2*n)+A000244(2*n+1)` -/
def P16127461312104782063.Spec : Prop :=
  ∀ n, P16127461312104782063.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P4348814354576279103

`A036290(2*n+1)+A027471(2*(n+1))`
-/

namespace A269270.P4348814354576279103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (2 * n + 1) + A027471 (2 * (n + 1))

end

end A269270.P4348814354576279103

namespace A269270

/-- `A036290(2*n+1)+A027471(2*(n+1))` -/
def P4348814354576279103.Spec : Prop :=
  ∀ n, P4348814354576279103.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P3620438092526594668

`A212697(2*n+1)+A212697(2*n+1)`
-/

namespace A269270.P3620438092526594668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212697 (2 * n + 1) + A212697 (2 * n + 1)

end

end A269270.P3620438092526594668

namespace A269270

/-- `A212697(2*n+1)+A212697(2*n+1)` -/
def P3620438092526594668.Spec : Prop :=
  ∀ n, P3620438092526594668.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P4434039310241199877

`A124647(2*n+1)-A081038(2*n+1)`
-/

namespace A269270.P4434039310241199877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 (2 * n + 1) - A081038 (2 * n + 1)

end

end A269270.P4434039310241199877

namespace A269270

/-- `A124647(2*n+1)-A081038(2*n+1)` -/
def P4434039310241199877.Spec : Prop :=
  ∀ n, P4434039310241199877.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P1588508006684242903

`A113071(2*n+1)-A120926(2*(n+1))`
-/

namespace A269270.P1588508006684242903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 (2 * n + 1) - A120926 (2 * (n + 1))

end

end A269270.P1588508006684242903

namespace A269270

/-- `A113071(2*n+1)-A120926(2*(n+1))` -/
def P1588508006684242903.Spec : Prop :=
  ∀ n, P1588508006684242903.a n = A269270 (n + 1)

end A269270

/-! ## A269270.P17455804375517275426

`A212703(n+1)-A212703(n+1)/A005843(n+1)`
-/

namespace A269270.P17455804375517275426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212703 (n + 1) : ℚ) - (A212703 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A269270.P17455804375517275426

namespace A269270

/-- `A212703(n+1)-A212703(n+1)/A005843(n+1)` -/
def P17455804375517275426.Spec : Prop :=
  ∀ n, P17455804375517275426.a n = (A269270 (n + 1) : ℚ)

end A269270

/-!
# A269271: Number of n X 3 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269271, there is no canonical definition to state claims against.
-/

/-! ## A269271.P8411674343917058567

`A269276(∑[n+3]+1)`
-/

namespace A269271.P8411674343917058567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269271.P8411674343917058567

/-! ## A269271.P1925416596176302003

`and(-1, A269276(Δ[A008778(n)]))`
-/

namespace A269271.P1925416596176302003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A269276 (f1 (n + 1) - f1 n).toNat)

end

end A269271.P1925416596176302003

/-!
# A269272: Number of n X 4 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269272, there is no canonical definition to state claims against.
-/

/-! ## A269272.P9283158718979935963

`A269277(2*(n+1))`
-/

namespace A269272.P9283158718979935963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269277 (2 * (n + 1))

end

end A269272.P9283158718979935963

/-! ## A269272.P8010707945840845413

`record[A269277(A013942(n+1))]`
-/

namespace A269272.P8010707945840845413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269277 (A013942 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269272.P8010707945840845413

/-! ## A269272.P16908917963830480306

`A269276(A141214(n+1))`
-/

namespace A269272.P16908917963830480306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A141214 (n + 1)).toNat

end

end A269272.P16908917963830480306

/-! ## A269272.P17512892258590799948

`A269276(A155212(n)+5)`
-/

namespace A269272.P17512892258590799948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A155212 n + 5).toNat

end

end A269272.P17512892258590799948

/-! ## A269272.P14085020546487636550

`A269276(A056000(n)+7)`
-/

namespace A269272.P14085020546487636550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A056000 n + 7).toNat

end

end A269272.P14085020546487636550

/-!
# A269273: Number of n X 5 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269273, there is no canonical definition to state claims against.
-/

/-! ## A269273.P15006101246547796525

`A269276(A246172(n+1)+10)`
-/

namespace A269273.P15006101246547796525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A246172 (n + 1) + 10).toNat

end

end A269273.P15006101246547796525

/-! ## A269273.P16657322304760141423

`A269276(eq[2, A193592(n)-2])`
-/

namespace A269273.P16657322304760141423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269273.P16657322304760141423

/-!
# A269274: Number of nX6 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269274, there is no canonical definition to state claims against.
-/

/-! ## A269274.P11584058416006457207

`A269276(eq[5, A193592(n)])`
-/

namespace A269274.P11584058416006457207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269274.P11584058416006457207

/-! ## A269274.P10637089229546015774

`A269276(A055999(n+3)+1)`
-/

namespace A269274.P10637089229546015774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A055999 (n + 3) + 1).toNat

end

end A269274.P10637089229546015774

/-!
# A269275: Number of nX7 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269275, there is no canonical definition to state claims against.
-/

/-! ## A269275.P3882077468724672368

`A269276(eq[6, A193592(n)])`
-/

namespace A269275.P3882077468724672368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269275.P3882077468724672368

/-!
# A269276: T(n,k)=Number of nXk 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269276, there is no canonical definition to state claims against.
-/

/-! ## A269276.P14496135702682928944

`A160124(A053122(n)²)`
-/

namespace A269276.P14496135702682928944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 (A053122 n ^ 2).toNat

end

end A269276.P14496135702682928944

/-! ## A269276.P13609603345103724212

`A160124(A078812(n)²)`
-/

namespace A269276.P13609603345103724212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 (A078812 n ^ 2).toNat

end

end A269276.P13609603345103724212

/-! ## A269276.P12406311162855274418

`A160124(A218638(n+1)+1)`
-/

namespace A269276.P12406311162855274418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 (A218638 (n + 1) + 1).toNat

end

end A269276.P12406311162855274418

/-!
# A269277: Number of 2 X n 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269277, there is no canonical definition to state claims against.
-/

/-! ## A269277.P258938908783897113

`A269276(∑[n+1]+2)`
-/

namespace A269277.P258938908783897113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269277.P258938908783897113

/-! ## A269277.P3134405821265177117

`record[A154990(n+1)*A269276(n+3)]`
-/

namespace A269277.P3134405821265177117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A269276 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269277.P3134405821265177117

/-! ## A269277.P13636616220826478368

`A269276(A022856(n+5))%A085260(2*n+5)`
-/

namespace A269277.P13636616220826478368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269276 (A022856 (n + 5)).toNat) (A085260 (2 * n + 5))

end

end A269277.P13636616220826478368

/-!
# A269278: Number of 3 X n 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269278, there is no canonical definition to state claims against.
-/

/-! ## A269278.P10127739935945484921

`A269276(∑[n+2]+4)`
-/

namespace A269278.P10127739935945484921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269278.P10127739935945484921

/-! ## A269278.P5348409309732584998

`lcm(2, A269276(A167614(n+1)))`
-/

namespace A269278.P5348409309732584998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269276 (A167614 (n + 1)).toNat)

end

end A269278.P5348409309732584998

/-! ## A269278.P16472846868331531260

`A269276(A167614(n+1))%A210305(n+1)`
-/

namespace A269278.P16472846868331531260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269276 (A167614 (n + 1)).toNat) (A210305 (n + 1))

end

end A269278.P16472846868331531260

/-! ## A269278.P9074777410937317559

`A269276(A167614(n+1))+A000007(2*(n+1))`
-/

namespace A269278.P9074777410937317559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A167614 (n + 1)).toNat + A000007 (2 * (n + 1))

end

end A269278.P9074777410937317559

/-! ## A269278.P5540152611917440054

`or(A070141(2*n+1), A269276(A167614(n+1)))`
-/

namespace A269278.P5540152611917440054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070141 (2 * n + 1)) (A269276 (A167614 (n + 1)).toNat)

end

end A269278.P5540152611917440054

/-!
# A269279: Number of 4Xn 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269279, there is no canonical definition to state claims against.
-/

/-! ## A269279.P6356494118414238402

`A269276(A141214(n)+7)`
-/

namespace A269279.P6356494118414238402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A141214 n + 7).toNat

end

end A269279.P6356494118414238402

/-! ## A269279.P10597400934693291300

`A269276(A052905(n)+9)`
-/

namespace A269279.P10597400934693291300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A052905 n + 9).toNat

end

end A269279.P10597400934693291300

/-! ## A269279.P5405045683303680468

`A269276(A167614(n+2)+1)`
-/

namespace A269279.P5405045683303680468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A167614 (n + 2) + 1).toNat

end

end A269279.P5405045683303680468

/-! ## A269279.P2263879480631029352

`A269276(A167499(n+2)-1)`
-/

namespace A269279.P2263879480631029352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A167499 (n + 2) - 1).toNat

end

end A269279.P2263879480631029352

/-! ## A269279.P6749767003354815239

`A269276(eq[5, A131818(n+1)])`
-/

namespace A269279.P6749767003354815239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269279.P6749767003354815239

/-!
# A269280: Number of 5Xn 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269280, there is no canonical definition to state claims against.
-/

/-! ## A269280.P16243757146276728205

`A269276(A167499(n+3))`
-/

namespace A269280.P16243757146276728205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A167499 (n + 3)).toNat

end

end A269280.P16243757146276728205

/-! ## A269280.P1709223877842339591

`A269276(A155212(n)+13)`
-/

namespace A269280.P1709223877842339591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A155212 n + 13).toNat

end

end A269280.P1709223877842339591

/-! ## A269280.P3964992342554202705

`A269276(A056000(n)+15)`
-/

namespace A269280.P3964992342554202705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A056000 n + 15).toNat

end

end A269280.P3964992342554202705

/-! ## A269280.P6776535474474113708

`A269276(eq[7, A066657(n)])`
-/

namespace A269280.P6776535474474113708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269280.P6776535474474113708

/-! ## A269280.P9858690817237877104

`A269276(eq[6, A131818(n+1)])`
-/

namespace A269280.P9858690817237877104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269280.P9858690817237877104

/-!
# A269281: Number of 6Xn 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three exactly once.

The programs for A269281, there is no canonical definition to state claims against.
-/

/-! ## A269281.P10964360499715861439

`A269276(A246172(n+1)+20)`
-/

namespace A269281.P10964360499715861439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269276 (A246172 (n + 1) + 20).toNat

end

end A269281.P10964360499715861439

/-!
# A269283: Number of n X n 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269283, there is no canonical definition to state claims against.
-/

/-! ## A269283.P18022148314296909620

`A269289((n+1)²+n²)`
-/

namespace A269283.P18022148314296909620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 ((n + 1) ^ 2 + n ^ 2)

end

end A269283.P18022148314296909620

/-!
# A269284: Number of n X 3 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269284, there is no canonical definition to state claims against.
-/

/-! ## A269284.P8262406491861410251

`A269289(∑[n+3]+1)`
-/

namespace A269284.P8262406491861410251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269284.P8262406491861410251

/-!
# A269285: Number of n X 4 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269285, there is no canonical definition to state claims against.
-/

/-! ## A269285.P15266927603790460081

`A269290(2*(n+1))`
-/

namespace A269285.P15266927603790460081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269290 (2 * (n + 1))

end

end A269285.P15266927603790460081

/-! ## A269285.P6828901859348154795

`lcm(2, A269290(Δ[A027688(n)]))`
-/

namespace A269285.P6828901859348154795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269290 (f1 (n + 1) - f1 n).toNat)

end

end A269285.P6828901859348154795

/-! ## A269285.P5354503734606037146

`A269290(Δ[A027688(n)])%A269293(n+1)`
-/

namespace A269285.P5354503734606037146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269290 (f1 (n + 1) - f1 n).toNat) (A269293 (n + 1))

end

end A269285.P5354503734606037146

/-! ## A269285.P16159427776946330738

`A269289(∑[n+5]-(n-2))`
-/

namespace A269285.P16159427776946330738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A269285.P16159427776946330738

/-! ## A269285.P8106366050603494649

`∏{e}[A000302(n+1), A269290(#)]`
-/

namespace A269285.P8106366050603494649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A269290 (Nat.factorization (f1 n).natAbs p)

end

end A269285.P8106366050603494649

/-!
# A269286: Number of n X 5 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269286, there is no canonical definition to state claims against.
-/

/-! ## A269286.P1300970260035777665

`A269289(∑[n+5]+6)`
-/

namespace A269286.P1300970260035777665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A269286.P1300970260035777665

/-! ## A269286.P7793057387755001241

`A269289(A046691(n+3))%A269287(n+1)`
-/

namespace A269286.P7793057387755001241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269289 (A046691 (n + 3)).toNat) (A269287 (n + 1))

end

end A269286.P7793057387755001241

/-!
# A269287: Number of nX6 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269287, there is no canonical definition to state claims against.
-/

/-! ## A269287.P18095514764546590018

`A269289(eq[5, A193592(n)])`
-/

namespace A269287.P18095514764546590018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269287.P18095514764546590018

/-! ## A269287.P3507694206558643814

`A269289(A055999(n+3)+1)`
-/

namespace A269287.P3507694206558643814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A055999 (n + 3) + 1).toNat

end

end A269287.P3507694206558643814

/-! ## A269287.P6682387040144146387

`A269289(A167499(n+1)+A008574(n+2))`
-/

namespace A269287.P6682387040144146387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A167499 (n + 1) + A008574 (n + 2)).toNat

end

end A269287.P6682387040144146387

/-!
# A269288: Number of nX7 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269288, there is no canonical definition to state claims against.
-/

/-! ## A269288.P15575108361995400323

`A269289(eq[6, A193592(n)])`
-/

namespace A269288.P15575108361995400323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269288.P15575108361995400323

/-! ## A269288.P13028791888258240643

`A269289(eq[10, A185782(n+1)])`
-/

namespace A269288.P13028791888258240643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269288.P13028791888258240643

/-!
# A269289: T(n,k)=Number of nXk 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269289, there is no canonical definition to state claims against.
-/

/-! ## A269289.P11836369096355194909

`A269201(A130749(n)+A062943(n+1))`
-/

namespace A269289.P11836369096355194909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A130749 n + A062943 (n + 1)).toNat

end

end A269289.P11836369096355194909

/-! ## A269289.P4912925393224498887

`A292156(A330030(n))+A269201(n+1)`
-/

namespace A269289.P4912925393224498887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292156 (A330030 n).toNat + A269201 (n + 1)

end

end A269289.P4912925393224498887

/-! ## A269289.P3714630841759317794

`A269201(or(A141769(n+1), A165012(n)))`
-/

namespace A269289.P3714630841759317794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (Int.lor (A141769 (n + 1)) (A165012 n)).toNat

end

end A269289.P3714630841759317794

/-!
# A269290: Number of 2 X n 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269290, there is no canonical definition to state claims against.
-/

/-! ## A269290.P9523043188754738165

`A269289(∑[n+1]+2)`
-/

namespace A269290.P9523043188754738165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269290.P9523043188754738165

/-! ## A269290.P7964254960630233609

`record[A269289(A025796(n)+2)]`
-/

namespace A269290.P7964254960630233609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A025796 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269290.P7964254960630233609

/-! ## A269290.P7176924330389903132

`record[A010054(n)*A269289(n+2)]`
-/

namespace A269290.P7176924330389903132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A269289 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269290.P7176924330389903132

/-! ## A269290.P12240365642676836616

`record[A269289(n+3)/A329066(n)]`
-/

namespace A269290.P12240365642676836616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269289 (n + 3) : ℚ) / (A329066 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269290.P12240365642676836616

/-! ## A269290.P663353403672053027

`record[gcd(A269276(n+1), A269289(n+3))]`
-/

namespace A269290.P663353403672053027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269276 (n + 1)) (A269289 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269290.P663353403672053027

/-!
# A269291: Number of 3 X n 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269291, there is no canonical definition to state claims against.
-/

/-! ## A269291.P7559681317285617500

`A269289(∑[n+2]+4)`
-/

namespace A269291.P7559681317285617500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269291.P7559681317285617500

/-! ## A269291.P4625740535660754835

`lcm(2, A269289(A167614(n+1)))`
-/

namespace A269291.P4625740535660754835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269289 (A167614 (n + 1)).toNat)

end

end A269291.P4625740535660754835

/-! ## A269291.P11705082231501295515

`A269289(A167614(n+1))+A185255(n)`
-/

namespace A269291.P11705082231501295515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A167614 (n + 1)).toNat + A185255 n

end

end A269291.P11705082231501295515

/-! ## A269291.P10829143366626818252

`A326687(n)+A269289(A167614(n+1))`
-/

namespace A269291.P10829143366626818252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326687 n + A269289 (A167614 (n + 1)).toNat

end

end A269291.P10829143366626818252

/-! ## A269291.P681273725079738149

`A062513(n+1)*A269289(A167614(n+1))`
-/

namespace A269291.P681273725079738149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A269289 (A167614 (n + 1)).toNat

end

end A269291.P681273725079738149

/-!
# A269292: Number of 4Xn 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269292, there is no canonical definition to state claims against.
-/

/-! ## A269292.P16753335205992058704

`A269289(A141214(n)+7)`
-/

namespace A269292.P16753335205992058704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A141214 n + 7).toNat

end

end A269292.P16753335205992058704

/-! ## A269292.P3794396050694824755

`A269289(A052905(n)+9)`
-/

namespace A269292.P3794396050694824755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A052905 n + 9).toNat

end

end A269292.P3794396050694824755

/-! ## A269292.P9655805046563226081

`A269289(A055999(n)+10)`
-/

namespace A269292.P9655805046563226081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A055999 n + 10).toNat

end

end A269292.P9655805046563226081

/-! ## A269292.P8155416104323337501

`A269289(A167614(n+2)+1)`
-/

namespace A269292.P8155416104323337501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A167614 (n + 2) + 1).toNat

end

end A269292.P8155416104323337501

/-! ## A269292.P3943834024103939068

`A269289(A167499(n+2)-1)`
-/

namespace A269292.P3943834024103939068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A167499 (n + 2) - 1).toNat

end

end A269292.P3943834024103939068

/-!
# A269293: Number of 5Xn 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269293, there is no canonical definition to state claims against.
-/

/-! ## A269293.P8499657667495855126

`A269289(A167499(n+3))`
-/

namespace A269293.P8499657667495855126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A167499 (n + 3)).toNat

end

end A269293.P8499657667495855126

/-! ## A269293.P2857185659519857681

`A269289(A056000(n)+15)`
-/

namespace A269293.P2857185659519857681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A056000 n + 15).toNat

end

end A269293.P2857185659519857681

/-! ## A269293.P12941758505389771674

`A269289(eq[7, A066657(n)])`
-/

namespace A269293.P12941758505389771674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269293.P12941758505389771674

/-! ## A269293.P14372809873686996251

`A269289(A055998(n+2)+8)`
-/

namespace A269293.P14372809873686996251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A055998 (n + 2) + 8).toNat

end

end A269293.P14372809873686996251

/-! ## A269293.P14896938472610858489

`A269289(A055999(n+1)+11)`
-/

namespace A269293.P14896938472610858489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A055999 (n + 1) + 11).toNat

end

end A269293.P14896938472610858489

/-!
# A269294: Number of 6Xn 0..3 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269294, there is no canonical definition to state claims against.
-/

/-! ## A269294.P3318993282890678345

`A269289(A052905(n+2)+11)`
-/

namespace A269294.P3318993282890678345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (A052905 (n + 2) + 11).toNat

end

end A269294.P3318993282890678345

/-! ## A269294.P17151426998745109423

`A269289(eq[7, A131818(n+1)])`
-/

namespace A269294.P17151426998745109423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269294.P17151426998745109423

/-!
# A269297: Magic sums of 3 X 3 semimagic squares composed of odd squares.

The programs for A269297, there is no canonical definition to state claims against.
-/

/-! ## A269297.P35520102549073318

`8*A265197(n+1)+3`
-/

namespace A269297.P35520102549073318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A265197 (n + 1) + 3

end

end A269297.P35520102549073318

/-! ## A269297.P13657784594627689696

`A017101(A265197(n+1))`
-/

namespace A269297.P13657784594627689696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A265197 (n + 1)).toNat

end

end A269297.P13657784594627689696

/-! ## A269297.P14462510222744584399

`A004769(A265197(n+1)-1)`
-/

namespace A269297.P14462510222744584399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (A265197 (n + 1) - 1).toNat

end

end A269297.P14462510222744584399

/-! ## A269297.P2899339607988217231

`A271022(n+1)%(A265197(n+1)-A271020(n+1))`
-/

namespace A269297.P2899339607988217231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271022 (n + 1)) (A265197 (n + 1) - A271020 (n + 1))

end

end A269297.P2899339607988217231

/-! ## A269297.P5872146917828939077

`A004767(2*A265197(n+1))`
-/

namespace A269297.P5872146917828939077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * A265197 (n + 1)).toNat

end

end A269297.P5872146917828939077

/-!
# A269298: Central nonzero values of A231599.

The programs for A269298, there is no canonical definition to state claims against.
-/

/-! ## A269298.P6323881290839483492

`A086376(4*n)`
-/

namespace A269298.P6323881290839483492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086376 (4 * n)

end

end A269298.P6323881290839483492

/-! ## A269298.P6257141975480085060

`A160089(4*n)`
-/

namespace A269298.P6257141975480085060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160089 (4 * n)

end

end A269298.P6257141975480085060

/-! ## A269298.P15621268747120892150

`or(A000007(n), A160089(A008574(n)))`
-/

namespace A269298.P15621268747120892150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A160089 (A008574 n).toNat)

end

end A269298.P15621268747120892150

/-! ## A269298.P3229017723375206265

`A160089(A008574(n))+A000007(n+1)`
-/

namespace A269298.P3229017723375206265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160089 (A008574 n).toNat + A000007 (n + 1)

end

end A269298.P3229017723375206265

/-! ## A269298.P12041289460554432142

`A160089(A008574(n))/A340365(A008578(n+1))`
-/

namespace A269298.P12041289460554432142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160089 (A008574 n).toNat : ℚ) / (A340365 (A008578 (n + 1)).toNat : ℚ)

end

end A269298.P12041289460554432142

/-! ## A269298.P13288130003518678861

`A160089(A008574(n))%A265803(n)`
-/

namespace A269298.P13288130003518678861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160089 (A008574 n).toNat) (A265803 n)

end

end A269298.P13288130003518678861

