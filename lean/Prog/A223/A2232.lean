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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B008.C000
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

/-!
# A223200: Rolling cube footprints: number of nX6 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or vertical neighbor moves across a corresponding cube edge.

The programs for A223200, there is no canonical definition to state claims against.
-/

/-! ## A223200.P18313997412532716817

`A223202(A374007(n+1))`
-/

namespace A223200.P18313997412532716817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A374007 (n + 1)).toNat

end

end A223200.P18313997412532716817

/-! ## A223200.P1744309541263755156

`A223202(A052905(n+3))`
-/

namespace A223200.P1744309541263755156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A052905 (n + 3)).toNat

end

end A223200.P1744309541263755156

/-!
# A223201: 

The programs for A223201, there is no canonical definition to state claims against.
-/

/-! ## A223201.P4856928562854779803

`A223202(A055999(n+4))`
-/

namespace A223201.P4856928562854779803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A055999 (n + 4)).toNat

end

end A223201.P4856928562854779803

/-!
# A223202: T(n,k)=Rolling cube face footprints: number of nXk 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or vertical neighbor moves across a corresponding cube edge.

The programs for A223202, there is no canonical definition to state claims against.
-/

/-! ## A223202.P5668298919308780226

`A011782(A003991(n+1))*A078099(n+1)`
-/

namespace A223202.P5668298919308780226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003991 (n + 1)).toNat * A078099 (n + 1)

end

end A223202.P5668298919308780226

/-! ## A223202.P9402264662042727907

`A003958(A222281(n+1))`
-/

namespace A223202.P9402264662042727907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A222281 (n + 1)).toNat

end

end A223202.P9402264662042727907

/-! ## A223202.P10039543327705874653

`A333787(A222144(n+1))`
-/

namespace A223202.P10039543327705874653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (A222144 (n + 1)).toNat

end

end A223202.P10039543327705874653

/-! ## A223202.P8377534775892938078

`A333787(A223263(n+1))`
-/

namespace A223202.P8377534775892938078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (A223263 (n + 1)).toNat

end

end A223202.P8377534775892938078

/-! ## A223202.P8457057599020475384

`A003958(4*A223263(n+1))`
-/

namespace A223202.P8457057599020475384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (4 * A223263 (n + 1)).toNat

end

end A223202.P8457057599020475384

/-!
# A223203: Rolling icosahedron face footprints: number of n X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or vertical neighbor moves across an icosahedral edge.

The programs for A223203, there is no canonical definition to state claims against.
-/

/-! ## A223203.P6167960597259608511

`A223209(∑[4*n]+1)`
-/

namespace A223203.P6167960597259608511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223203.P6167960597259608511

/-! ## A223203.P8800174319774245739

`or(1, A223209(A001844(n)))`
-/

namespace A223203.P8800174319774245739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223209 (A001844 n).toNat)

end

end A223203.P8800174319774245739

/-! ## A223203.P8756238978699402624

`record[gcd(A003987(n), A223209(n+1))]`
-/

namespace A223203.P8756238978699402624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A223209 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223203.P8756238978699402624

/-! ## A223203.P8374665627136120919

`A223209(A001844(n))+A185284(n)`
-/

namespace A223203.P8374665627136120919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A001844 n).toNat + A185284 n

end

end A223203.P8374665627136120919

/-! ## A223203.P8285998279542442245

`gcd(A000038(n), A223209(A001844(n)))`
-/

namespace A223203.P8285998279542442245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A223209 (A001844 n).toNat)

end

end A223203.P8285998279542442245

/-!
# A223204: Rolling icosahedron face footprints: number of n X 3 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or vertical neighbor moves across an icosahedral edge.

The programs for A223204, the canonical program `A223204.P11673993963763712133` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223204 has offset 1).

The definition of A223204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223204.P11673993963763712133

`9*a(n-1)-2*a(n-2)` with `a(0)=9, a(1)=75`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223204

/-- `9*a(n-1)-2*a(n-2)` -/
def P11673993963763712133.Spec : Prop :=
  ∀ n, P11673993963763712133.a n = A223204 (n + 1)

theorem P11673993963763712133.correct : P11673993963763712133.Spec := by
  intro n
  simp only [A223204, Nat.add_sub_cancel]

end A223204

/-! ## A223204.P1391446250843059572

`A223209(∑[n+2]+4)`
-/

namespace A223204.P1391446250843059572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223204.P1391446250843059572

namespace A223204

/-- `A223209(∑[n+2]+4)` -/
def P1391446250843059572.Spec : Prop :=
  ∀ n, P1391446250843059572.a n = A223204 (n + 1)

end A223204

/-! ## A223204.P9306810604277432304

`lcm(3, A223209(A167614(n+1)))`
-/

namespace A223204.P9306810604277432304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A223209 (A167614 (n + 1)).toNat)

end

end A223204.P9306810604277432304

namespace A223204

/-- `lcm(3, A223209(A167614(n+1)))` -/
def P9306810604277432304.Spec : Prop :=
  ∀ n, (P9306810604277432304.a n : ℤ) = A223204 (n + 1)

end A223204

/-! ## A223204.P3770796315998154658

`or(A000007(n), A223209(A167614(n+1)))`
-/

namespace A223204.P3770796315998154658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223209 (A167614 (n + 1)).toNat)

end

end A223204.P3770796315998154658

namespace A223204

/-- `or(A000007(n), A223209(A167614(n+1)))` -/
def P3770796315998154658.Spec : Prop :=
  ∀ n, P3770796315998154658.a n = A223204 (n + 1)

end A223204

/-!
# A223205: Rolling icosahedron face footprints: number of n X 4 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or vertical neighbor moves across an icosahedral edge.

The programs for A223205, there is no canonical definition to state claims against.
-/

/-! ## A223205.P15586132011368017368

`A223209(A374004(n+1))`
-/

namespace A223205.P15586132011368017368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A374004 (n + 1)).toNat

end

end A223205.P15586132011368017368

/-! ## A223205.P16135066646345764950

`A223209(A141214(n)+7)`
-/

namespace A223205.P16135066646345764950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A141214 n + 7).toNat

end

end A223205.P16135066646345764950

/-! ## A223205.P13795379792521309587

`A223209(A052905(n)+9)`
-/

namespace A223205.P13795379792521309587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A052905 n + 9).toNat

end

end A223205.P13795379792521309587

/-! ## A223205.P12432941107174113596

`A223209(A055999(n)+10)`
-/

namespace A223205.P12432941107174113596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A055999 n + 10).toNat

end

end A223205.P12432941107174113596

/-! ## A223205.P7583621638579974065

`A223209(A167614(n+2)+1)`
-/

namespace A223205.P7583621638579974065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A167614 (n + 2) + 1).toNat

end

end A223205.P7583621638579974065

/-!
# A223206: Rolling icosahedron face footprints: number of nX5 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or vertical neighbor moves across an icosahedral edge.

The programs for A223206, there is no canonical definition to state claims against.
-/

/-! ## A223206.P8384980042358176699

`A223209(A374005(n+1))`
-/

namespace A223206.P8384980042358176699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A374005 (n + 1)).toNat

end

end A223206.P8384980042358176699

/-! ## A223206.P8919249486165720909

`A223209(A167499(n+3))`
-/

namespace A223206.P8919249486165720909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A167499 (n + 3)).toNat

end

end A223206.P8919249486165720909

/-! ## A223206.P4052851118696368962

`A223209(A046691(n+3))`
-/

namespace A223206.P4052851118696368962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A046691 (n + 3)).toNat

end

end A223206.P4052851118696368962

/-! ## A223206.P15536777374355455847

`A223209(eq[4, A193592(n)])`
-/

namespace A223206.P15536777374355455847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223206.P15536777374355455847

/-! ## A223206.P18148799615294411856

`A223209(eq[8, A140996(n)])`
-/

namespace A223206.P18148799615294411856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223206.P18148799615294411856

/-!
# A223207: Rolling icosahedron face footprints: number of nX6 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or vertical neighbor moves across an icosahedral edge.

The programs for A223207, there is no canonical definition to state claims against.
-/

/-! ## A223207.P14033832271662506641

`A223209(A374007(n+1))`
-/

namespace A223207.P14033832271662506641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A374007 (n + 1)).toNat

end

end A223207.P14033832271662506641

/-! ## A223207.P9129502409683400506

`A223209(eq[7, A131818(n+1)])`
-/

namespace A223207.P9129502409683400506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223207.P9129502409683400506

/-! ## A223207.P18088262345398134058

`A223209(A056119(n)+16)`
-/

namespace A223207.P18088262345398134058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A056119 n + 16).toNat

end

end A223207.P18088262345398134058

/-! ## A223207.P6367111280555717011

`A223209(eq[3, A219347(n)])`
-/

namespace A223207.P6367111280555717011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223207.P6367111280555717011

/-! ## A223207.P72559525441406301

`A223209(eq[5, A193592(n)])`
-/

namespace A223207.P72559525441406301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223207.P72559525441406301

/-!
# A223208: Rolling icosahedron face footprints: number of nX7 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or vertical neighbor moves across an icosahedral edge.

The programs for A223208, there is no canonical definition to state claims against.
-/

/-! ## A223208.P14757919296392022067

`A223209(A374008(n+1))`
-/

namespace A223208.P14757919296392022067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A374008 (n + 1)).toNat

end

end A223208.P14757919296392022067

/-! ## A223208.P10840118080005077914

`A223209(eq[8, A131818(n+1)])`
-/

namespace A223208.P10840118080005077914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223208.P10840118080005077914

/-! ## A223208.P1774257503644490194

`A223209(A055999(n+4))`
-/

namespace A223208.P1774257503644490194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (A055999 (n + 4)).toNat

end

end A223208.P1774257503644490194

/-! ## A223208.P8640530249250915517

`A223209(eq[4, A219347(n)])`
-/

namespace A223208.P8640530249250915517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223208.P8640530249250915517

/-! ## A223208.P16413926988971002934

`A223209(eq[6, A193592(n)])`
-/

namespace A223208.P16413926988971002934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223208.P16413926988971002934

/-!
# A223209: T(n,k)=Rolling icosahedron face footprints: number of nXk 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or vertical neighbor moves across an icosahedral edge.

The programs for A223209, there is no canonical definition to state claims against.
-/

/-! ## A223209.P3861914553300070647

`A347123(A223263(n+1))`
-/

namespace A223209.P3861914553300070647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347123 (A223263 (n + 1)).toNat

end

end A223209.P3861914553300070647

/-! ## A223209.P3388831992268137508

`A318509(4*A223263(n+1))`
-/

namespace A223209.P3388831992268137508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (4 * A223263 (n + 1)).toNat

end

end A223209.P3388831992268137508

/-! ## A223209.P799138138135128950

`A318509(lcm(4, A223263(n+1)))`
-/

namespace A223209.P799138138135128950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (Int.lcm 4 (A223263 (n + 1)))

end

end A223209.P799138138135128950

/-! ## A223209.P2986602411321672170

`A003961(A208314(n+1))%A273599(n+2)`
-/

namespace A223209.P2986602411321672170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A208314 (n + 1)).toNat) (A273599 (n + 2))

end

end A223209.P2986602411321672170

/-! ## A223209.P9656395274532257216

`A166586(A222281(n+1))`
-/

namespace A223209.P9656395274532257216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (A222281 (n + 1)).toNat

end

end A223209.P9656395274532257216

/-!
# A223210: 3X3X3 triangular graph coloring a rectangular array: number of n X n 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223210, there is no canonical definition to state claims against.
-/

/-! ## A223210.P12611449903242708338

`A223218((n+1)²+n²)`
-/

namespace A223210.P12611449903242708338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 ((n + 1) ^ 2 + n ^ 2)

end

end A223210.P12611449903242708338

/-! ## A223210.P182893959875115937

`lcm(2, A223218(A001844(n)))`
-/

namespace A223210.P182893959875115937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223218 (A001844 n).toNat)

end

end A223210.P182893959875115937

/-! ## A223210.P9069256954743608798

`record[gcd(A114327(n), A223218(n+1))]`
-/

namespace A223210.P9069256954743608798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223218 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223210.P9069256954743608798

/-! ## A223210.P16176552866309829180

`A223218(A001844(n))*A296077(n+1)`
-/

namespace A223210.P16176552866309829180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A001844 n).toNat * A296077 (n + 1)

end

end A223210.P16176552866309829180

/-!
# A223211: 3 X 3 X 3 triangular graph coloring a rectangular array: number of n X 1 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223211, the canonical program `A223211.P4717968384554284171` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223211 has offset 1).

The definition of A223211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223211.P4717968384554284171

`2*a(n-1)+4*a(n-2)` with `a(0)=6, a(1)=18`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223211

/-- `2*a(n-1)+4*a(n-2)` -/
def P4717968384554284171.Spec : Prop :=
  ∀ n, (P4717968384554284171.a n : ℤ) = A223211 (n + 1)

theorem P4717968384554284171.correct : P4717968384554284171.Spec := by
  intro n
  simp only [A223211, Nat.add_sub_cancel]

end A223211

/-! ## A223211.P4300745781818711437

`6*A063782(n)`
-/

namespace A223211.P4300745781818711437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A063782 n

end

end A223211.P4300745781818711437

namespace A223211

/-- `6*A063782(n)` -/
def P4300745781818711437.Spec : Prop :=
  ∀ n, P4300745781818711437.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P5290939340470574159

`3*A279245(Δ[n²])`
-/

namespace A223211.P5290939340470574159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A279245 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A223211.P5290939340470574159

namespace A223211

/-- `3*A279245(Δ[n²])` -/
def P5290939340470574159.Spec : Prop :=
  ∀ n, P5290939340470574159.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P12920854559417607425

`3/2*A087206(n+1)`
-/

namespace A223211.P12920854559417607425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A087206 (n + 1) : ℚ)

end

end A223211.P12920854559417607425

namespace A223211

/-- `3/2*A087206(n+1)` -/
def P12920854559417607425.Spec : Prop :=
  ∀ n, P12920854559417607425.a n = (A223211 (n + 1) : ℚ)

end A223211

/-! ## A223211.P16069632227760038093

`2^n*A022086(n+3)`
-/

namespace A223211.P16069632227760038093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A022086 (n + 3)

end

end A223211.P16069632227760038093

namespace A223211

/-- `2^n*A022086(n+3)` -/
def P16069632227760038093.Spec : Prop :=
  ∀ n, P16069632227760038093.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P9119422539604781018

`2^n*A097135(n+3)`
-/

namespace A223211.P9119422539604781018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A097135 (n + 3)

end

end A223211.P9119422539604781018

namespace A223211

/-- `2^n*A097135(n+3)` -/
def P9119422539604781018.Spec : Prop :=
  ∀ n, P9119422539604781018.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P13561070928431351198

`2^(n-1)*A022089(n+3)`
-/

namespace A223211.P13561070928431351198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A022089 (n + 3) : ℚ)

end

end A223211.P13561070928431351198

namespace A223211

/-- `2^(n-1)*A022089(n+3)` -/
def P13561070928431351198.Spec : Prop :=
  ∀ n, P13561070928431351198.a n = (A223211 (n + 1) : ℚ)

end A223211

/-! ## A223211.P17317973852125135697

`2^(n-2)*A022346(n+3)`
-/

namespace A223211.P17317973852125135697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A022346 (n + 3) : ℚ)

end

end A223211.P17317973852125135697

namespace A223211

/-- `2^(n-2)*A022346(n+3)` -/
def P17317973852125135697.Spec : Prop :=
  ∀ n, P17317973852125135697.a n = (A223211 (n + 1) : ℚ)

end A223211

/-! ## A223211.P850813261626021547

`3*2^n*A000045(n+3)`
-/

namespace A223211.P850813261626021547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 ^ n : ℤ) * A000045 (n + 3))

end

end A223211.P850813261626021547

namespace A223211

/-- `3*2^n*A000045(n+3)` -/
def P850813261626021547.Spec : Prop :=
  ∀ n, P850813261626021547.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P2259889309870871047

`A007283(n)*A020695(n)`
-/

namespace A223211.P2259889309870871047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A020695 n

end

end A223211.P2259889309870871047

namespace A223211

/-- `A007283(n)*A020695(n)` -/
def P2259889309870871047.Spec : Prop :=
  ∀ n, P2259889309870871047.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P4361118335108308768

`Δ[A020701(n)]*A007283(n)`
-/

namespace A223211.P4361118335108308768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007283 n

end

end A223211.P4361118335108308768

namespace A223211

/-- `Δ[A020701(n)]*A007283(n)` -/
def P4361118335108308768.Spec : Prop :=
  ∀ n, P4361118335108308768.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P4919085486276419024

`Δ[A020706(n)]*A007283(n)`
-/

namespace A223211.P4919085486276419024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007283 n

end

end A223211.P4919085486276419024

namespace A223211

/-- `Δ[A020706(n)]*A007283(n)` -/
def P4919085486276419024.Spec : Prop :=
  ∀ n, P4919085486276419024.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P7362870084237031240

`Δ[A048584(n)]*A007283(n)`
-/

namespace A223211.P7362870084237031240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007283 n

end

end A223211.P7362870084237031240

namespace A223211

/-- `Δ[A048584(n)]*A007283(n)` -/
def P7362870084237031240.Spec : Prop :=
  ∀ n, P7362870084237031240.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P16901412542403896289

`Δ[A181565(n)]*A020695(n)`
-/

namespace A223211.P16901412542403896289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n

end

end A223211.P16901412542403896289

namespace A223211

/-- `Δ[A181565(n)]*A020695(n)` -/
def P16901412542403896289.Spec : Prop :=
  ∀ n, P16901412542403896289.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P5908923865219073778

`A081057(n+2)+A014334(n)`
-/

namespace A223211.P5908923865219073778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081057 (n + 2) + A014334 n

end

end A223211.P5908923865219073778

namespace A223211

/-- `A081057(n+2)+A014334(n)` -/
def P5908923865219073778.Spec : Prop :=
  ∀ n, P5908923865219073778.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P9291499187418683135

`A103435(n)+A084057(n+2)`
-/

namespace A223211.P9291499187418683135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 n + A084057 (n + 2)

end

end A223211.P9291499187418683135

namespace A223211

/-- `A103435(n)+A084057(n+2)` -/
def P9291499187418683135.Spec : Prop :=
  ∀ n, P9291499187418683135.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P11647405685207222290

`A103435(n+2)+A087131(n)`
-/

namespace A223211.P11647405685207222290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 (n + 2) + A087131 n

end

end A223211.P11647405685207222290

namespace A223211

/-- `A103435(n+2)+A087131(n)` -/
def P11647405685207222290.Spec : Prop :=
  ∀ n, P11647405685207222290.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P15313146729156983321

`(A153893(n)+1)*A020695(n)`
-/

namespace A223211.P15313146729156983321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153893 n + 1) * A020695 n

end

end A223211.P15313146729156983321

namespace A223211

/-- `(A153893(n)+1)*A020695(n)` -/
def P15313146729156983321.Spec : Prop :=
  ∀ n, P15313146729156983321.a n = A223211 (n + 1)

end A223211

/-! ## A223211.P14025151669557676167

`(A048577(n)-1)*A007283(n)`
-/

namespace A223211.P14025151669557676167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048577 n - 1) * A007283 n

end

end A223211.P14025151669557676167

namespace A223211

/-- `(A048577(n)-1)*A007283(n)` -/
def P14025151669557676167.Spec : Prop :=
  ∀ n, P14025151669557676167.a n = A223211 (n + 1)

end A223211

/-!
# A223212: 3X3X3 triangular graph coloring a rectangular array: number of nX2 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223212, the canonical program `A223212.P7789862753238068417` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223212 has offset 1).

The definition of A223212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223212.P7789862753238068417

`6*a(n-1)+9*a(n-2)` with `a(0)=18, a(1)=126`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223212

/-- `6*a(n-1)+9*a(n-2)` -/
def P7789862753238068417.Spec : Prop :=
  ∀ n, (P7789862753238068417.a n : ℤ) = A223212 (n + 1)

theorem P7789862753238068417.correct : P7789862753238068417.Spec := by
  intro n
  simp only [A223212, Nat.add_sub_cancel]

end A223212

/-! ## A223212.P16132921061904603735

`3^(n+1)*A002203(n+2)`
-/

namespace A223212.P16132921061904603735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A002203 (n + 2)

end

end A223212.P16132921061904603735

namespace A223212

/-- `3^(n+1)*A002203(n+2)` -/
def P16132921061904603735.Spec : Prop :=
  ∀ n, P16132921061904603735.a n = A223212 (n + 1)

end A223212

/-! ## A223212.P10372366935181969100

`3^(n+1)*A099425(n+2)`
-/

namespace A223212.P10372366935181969100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A099425 (n + 2)

end

end A223212.P10372366935181969100

namespace A223212

/-- `3^(n+1)*A099425(n+2)` -/
def P10372366935181969100.Spec : Prop :=
  ∀ n, P10372366935181969100.a n = A223212 (n + 1)

end A223212

/-! ## A223212.P6483523292234497141

`Δ[3*a(n-1)]*A078057(n+1)` with `a(0)=3`
-/

namespace A223212.P6483523292234497141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A078057 (n + 1)

end

end A223212.P6483523292234497141

namespace A223212

/-- `Δ[3*a(n-1)]*A078057(n+1)` -/
def P6483523292234497141.Spec : Prop :=
  ∀ n, P6483523292234497141.a n = A223212 (n + 1)

end A223212

/-! ## A223212.P10620983250144563101

`A001333(n+2)*A008776(n+1)`
-/

namespace A223212.P10620983250144563101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) * A008776 (n + 1)

end

end A223212.P10620983250144563101

namespace A223212

/-- `A001333(n+2)*A008776(n+1)` -/
def P10620983250144563101.Spec : Prop :=
  ∀ n, P10620983250144563101.a n = A223212 (n + 1)

end A223212

/-! ## A223212.P24718979824491963

`A025192(n+2)*A078057(n+1)`
-/

namespace A223212.P24718979824491963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (n + 2) * A078057 (n + 1)

end

end A223212.P24718979824491963

namespace A223212

/-- `A025192(n+2)*A078057(n+1)` -/
def P24718979824491963.Spec : Prop :=
  ∀ n, P24718979824491963.a n = A223212 (n + 1)

end A223212

/-! ## A223212.P2234240320142001820

`A001333(n+2)*A025192(n+2)`
-/

namespace A223212.P2234240320142001820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) * A025192 (n + 2)

end

end A223212.P2234240320142001820

namespace A223212

/-- `A001333(n+2)*A025192(n+2)` -/
def P2234240320142001820.Spec : Prop :=
  ∀ n, P2234240320142001820.a n = A223212 (n + 1)

end A223212

/-! ## A223212.P25936605712573307

`2*A000244(n+1)*A078057(n+1)`
-/

namespace A223212.P25936605712573307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000244 (n + 1) * A078057 (n + 1))

end

end A223212.P25936605712573307

namespace A223212

/-- `2*A000244(n+1)*A078057(n+1)` -/
def P25936605712573307.Spec : Prop :=
  ∀ n, P25936605712573307.a n = A223212 (n + 1)

end A223212

/-!
# A223213: 3X3X3 triangular graph coloring a rectangular array: number of nX3 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223213, there is no canonical definition to state claims against.
-/

/-! ## A223213.P3410981125175526077

`A223218(∑[n+2]+4)`
-/

namespace A223213.P3410981125175526077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223213.P3410981125175526077

/-! ## A223213.P10066910444506396685

`lcm(2, A223218(A167614(n+1)))`
-/

namespace A223213.P10066910444506396685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223218 (A167614 (n + 1)).toNat)

end

end A223213.P10066910444506396685

/-! ## A223213.P9458711171908657703

`A223218(A167614(n+1))+A025469(n)`
-/

namespace A223213.P9458711171908657703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A167614 (n + 1)).toNat + A025469 n

end

end A223213.P9458711171908657703

/-! ## A223213.P1183642476692265803

`gcd(A137579(n), A223218(A167614(n+1)))`
-/

namespace A223213.P1183642476692265803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137579 n) (A223218 (A167614 (n + 1)).toNat)

end

end A223213.P1183642476692265803

/-! ## A223213.P3218520102173263661

`A223218(A167614(n+1))%A223214(n+1)`
-/

namespace A223213.P3218520102173263661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223218 (A167614 (n + 1)).toNat) (A223214 (n + 1))

end

end A223213.P3218520102173263661

/-!
# A223214: 3X3X3 triangular graph coloring a rectangular array: number of nX4 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223214, there is no canonical definition to state claims against.
-/

/-! ## A223214.P6688742217021238347

`A223218(A374004(n+1))`
-/

namespace A223214.P6688742217021238347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A374004 (n + 1)).toNat

end

end A223214.P6688742217021238347

/-! ## A223214.P1146823830964300659

`A223218(A141214(n)+7)`
-/

namespace A223214.P1146823830964300659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A141214 n + 7).toNat

end

end A223214.P1146823830964300659

/-! ## A223214.P9613673765749913865

`A223218(A052905(n)+9)`
-/

namespace A223214.P9613673765749913865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A052905 n + 9).toNat

end

end A223214.P9613673765749913865

/-! ## A223214.P17935961453561277475

`A223218(A055999(n)+10)`
-/

namespace A223214.P17935961453561277475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A055999 n + 10).toNat

end

end A223214.P17935961453561277475

/-! ## A223214.P14421309541695108464

`A223218(A167614(n+2)+1)`
-/

namespace A223214.P14421309541695108464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A167614 (n + 2) + 1).toNat

end

end A223214.P14421309541695108464

/-!
# A223215: 3X3X3 triangular graph coloring a rectangular array: number of nX5 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223215, there is no canonical definition to state claims against.
-/

/-! ## A223215.P16222315795889164386

`A223218(A374005(n+1))`
-/

namespace A223215.P16222315795889164386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A374005 (n + 1)).toNat

end

end A223215.P16222315795889164386

/-! ## A223215.P4716505125947042952

`A223218(A167499(n+3))`
-/

namespace A223215.P4716505125947042952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A167499 (n + 3)).toNat

end

end A223215.P4716505125947042952

/-! ## A223215.P13562607206122644109

`A223218(A046691(n+3))`
-/

namespace A223215.P13562607206122644109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A046691 (n + 3)).toNat

end

end A223215.P13562607206122644109

/-! ## A223215.P7200174867412200931

`A223218(eq[2, A092921(n)])`
-/

namespace A223215.P7200174867412200931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223215.P7200174867412200931

/-! ## A223215.P3507456100508595656

`A223218(eq[4, A193592(n)])`
-/

namespace A223215.P3507456100508595656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223215.P3507456100508595656

/-!
# A223216: 3X3X3 triangular graph coloring a rectangular array: number of nX6 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223216, there is no canonical definition to state claims against.
-/

/-! ## A223216.P6958506983697071947

`A223218(A374007(n+1))`
-/

namespace A223216.P6958506983697071947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A374007 (n + 1)).toNat

end

end A223216.P6958506983697071947

/-! ## A223216.P1582692436199395169

`A223218(A141214(n+2)+9)`
-/

namespace A223216.P1582692436199395169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A141214 (n + 2) + 9).toNat

end

end A223216.P1582692436199395169

/-! ## A223216.P688538853818054719

`A223218(A056119(n)+16)`
-/

namespace A223216.P688538853818054719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A056119 n + 16).toNat

end

end A223216.P688538853818054719

/-! ## A223216.P16097636199038531626

`A223218(eq[3, A219347(n)])`
-/

namespace A223216.P16097636199038531626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223216.P16097636199038531626

/-! ## A223216.P5854126254788675578

`A223218(eq[5, A193592(n)])`
-/

namespace A223216.P5854126254788675578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223216.P5854126254788675578

/-!
# A223217: 3X3X3 triangular graph coloring a rectangular array: number of nX7 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223217, there is no canonical definition to state claims against.
-/

/-! ## A223217.P8578558439599193519

`A223218(A374008(n+1))`
-/

namespace A223217.P8578558439599193519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (A374008 (n + 1)).toNat

end

end A223217.P8578558439599193519

/-! ## A223217.P7698707508032538188

`A223218(eq[4, A219347(n)])`
-/

namespace A223217.P7698707508032538188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223217.P7698707508032538188

/-! ## A223217.P1274449396317357340

`A223218(eq[6, A193592(n)])`
-/

namespace A223217.P1274449396317357340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223217.P1274449396317357340

/-! ## A223217.P11995676668531568657

`A223218(eq[10, A185782(n+1)])`
-/

namespace A223217.P11995676668531568657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223217.P11995676668531568657

/-!
# A223218: T(n,k)=3X3X3 triangular graph coloring a rectangular array: number of nXk 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223218, there is no canonical definition to state claims against.
-/

/-! ## A223218.P358921682011061815

`A234523(A227594(n+1)+A006257(n))`
-/

namespace A223218.P358921682011061815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234523 (A227594 (n + 1) + A006257 n).toNat

end

end A223218.P358921682011061815

/-!
# A223219: Number of n X n 0..1 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223219, there is no canonical definition to state claims against.
-/

/-! ## A223219.P4070086660600953879

`A223227(∑[4*n]+1)`
-/

namespace A223219.P4070086660600953879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223219.P4070086660600953879

/-! ## A223219.P11157160777440341163

`lcm(2, A223227(A001844(n)))`
-/

namespace A223219.P11157160777440341163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223227 (A001844 n).toNat)

end

end A223219.P11157160777440341163

/-! ## A223219.P1898700736646267268

`record[A223227(Δ[A235355(n)])]`
-/

namespace A223219.P1898700736646267268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223219.P1898700736646267268

/-! ## A223219.P5500939863274999738

`record[A003982(n)*A223227(n+1)]`
-/

namespace A223219.P5500939863274999738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223219.P5500939863274999738

/-!
# A223220: Number of nX1 0..1 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223220, there is no canonical definition to state claims against.
-/

/-! ## A223220.P14550309782856487579

`sqrt(A223221(n+1))`
-/

namespace A223220.P14550309782856487579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223221 (n + 1) : ℝ)

end

end A223220.P14550309782856487579

/-! ## A223220.P8117420386832975306

`root(A223221(n+1), ratio[A000079(n)])`
-/

namespace A223220.P8117420386832975306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223221 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A223220.P8117420386832975306

/-! ## A223220.P79422670979159664

`root(A223221(n+1), 2%A017233(n))`
-/

namespace A223220.P79422670979159664
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223221 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017233 n) : ℝ))

end

end A223220.P79422670979159664

/-! ## A223220.P8322687872262066929

`root(A223221(n+1), gcd(2, A001105(n)))`
-/

namespace A223220.P8322687872262066929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223221 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A001105 n) : ℝ))

end

end A223220.P8322687872262066929

/-! ## A223220.P8026150569123290005

`root(A223221(n+1), A001316(A001316(n)))`
-/

namespace A223220.P8026150569123290005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223221 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A223220.P8026150569123290005

/-!
# A223221: Number of nX2 0..1 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223221, there is no canonical definition to state claims against.
-/

/-! ## A223221.P13387614181323357133

`A223220(n+1)²`
-/

namespace A223221.P13387614181323357133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223220 (n + 1) ^ 2

end

end A223221.P13387614181323357133

/-! ## A223221.P8071851819717404805

`A223220(n+1)^ratio[A000079(n)]`
-/

namespace A223221.P8071851819717404805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223220 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A223221.P8071851819717404805

/-! ## A223221.P14412575279751187766

`A223220(n+1)^A001316(A001316(n))`
-/

namespace A223221.P14412575279751187766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223220 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A223221.P14412575279751187766

/-! ## A223221.P14544117068311018602

`A223220(A000027(n+1))*A223220(n+1)`
-/

namespace A223221.P14544117068311018602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223220 (A000027 (n + 1)).toNat * A223220 (n + 1)

end

end A223221.P14544117068311018602

/-! ## A223221.P3360346293348825164

`A223220(A008611(3*n))*A223220(n+1)`
-/

namespace A223221.P3360346293348825164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223220 (A008611 (3 * n)).toNat * A223220 (n + 1)

end

end A223221.P3360346293348825164

/-!
# A223222: Number of nX3 0..1 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223222, there is no canonical definition to state claims against.
-/

/-! ## A223222.P3633214122994565126

`A223227(∑[n+2]+4)`
-/

namespace A223222.P3633214122994565126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223222.P3633214122994565126

/-! ## A223222.P7230498067233546274

`lcm(2^∑{e}[n+1, #-1], A223227(A167614(n+1)))`
-/

namespace A223222.P7230498067233546274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))) (A223227 (A167614 (n + 1)).toNat)

end

end A223222.P7230498067233546274

/-! ## A223222.P14018393653990011955

`A223227(A167614(n+1))+A011737(n)`
-/

namespace A223222.P14018393653990011955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A167614 (n + 1)).toNat + A011737 n

end

end A223222.P14018393653990011955

/-! ## A223222.P9177884717629106298

`A223227(A167614(n+1))+A011741(n)`
-/

namespace A223222.P9177884717629106298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A167614 (n + 1)).toNat + A011741 n

end

end A223222.P9177884717629106298

/-! ## A223222.P16372833082241546940

`A223227(A167614(n+1))+A025439(n)`
-/

namespace A223222.P16372833082241546940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A167614 (n + 1)).toNat + A025439 n

end

end A223222.P16372833082241546940

/-!
# A223223: Number of nX4 0..1 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223223, there is no canonical definition to state claims against.
-/

/-! ## A223223.P10020533237447325227

`A223227(∑[n+3]+7)`
-/

namespace A223223.P10020533237447325227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223223.P10020533237447325227

/-!
# A223224: Number of nX5 0..1 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223224, there is no canonical definition to state claims against.
-/

/-! ## A223224.P10047818123210109941

`A223227(A167499(n+3))`
-/

namespace A223224.P10047818123210109941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A167499 (n + 3)).toNat

end

end A223224.P10047818123210109941

/-! ## A223224.P702536845180988579

`A223227(A155212(n)+13)`
-/

namespace A223224.P702536845180988579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A155212 n + 13).toNat

end

end A223224.P702536845180988579

/-! ## A223224.P4300256355798544161

`A223227(A056000(n)+15)`
-/

namespace A223224.P4300256355798544161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A056000 n + 15).toNat

end

end A223224.P4300256355798544161

/-! ## A223224.P6629025607443501220

`A223227(eq[7, A066657(n)])`
-/

namespace A223224.P6629025607443501220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223224.P6629025607443501220

/-! ## A223224.P7460561183876438617

`A223227(A166136(n+3)-1)`
-/

namespace A223224.P7460561183876438617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A166136 (n + 3) - 1).toNat

end

end A223224.P7460561183876438617

/-!
# A223225: Number of nX6 0..1 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223225, there is no canonical definition to state claims against.
-/

/-! ## A223225.P16405819786690946939

`A223227(A166136(n+4))`
-/

namespace A223225.P16405819786690946939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A166136 (n + 4)).toNat

end

end A223225.P16405819786690946939

/-! ## A223225.P1298471300835654213

`A223227(A167614(n+4)+3)`
-/

namespace A223225.P1298471300835654213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A167614 (n + 4) + 3).toNat

end

end A223225.P1298471300835654213

/-! ## A223225.P221619572581823280

`A223227(A000096(n+4)+7)`
-/

namespace A223225.P221619572581823280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A000096 (n + 4) + 7).toNat

end

end A223225.P221619572581823280

/-! ## A223225.P8596081714508475704

`A223227(A000217(n+5)+6)`
-/

namespace A223225.P8596081714508475704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A000217 (n + 5) + 6).toNat

end

end A223225.P8596081714508475704

/-! ## A223225.P6558774390401197329

`A223227(eq[7, A131818(n+1)])`
-/

namespace A223225.P6558774390401197329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223225.P6558774390401197329

/-!
# A223226: Number of nX7 0..1 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223226, there is no canonical definition to state claims against.
-/

/-! ## A223226.P2773827043602341172

`A223227(A167487(n+5))`
-/

namespace A223226.P2773827043602341172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A167487 (n + 5)).toNat

end

end A223226.P2773827043602341172

/-! ## A223226.P8097842691970887779

`A223227(A302537(n)+27)`
-/

namespace A223226.P8097842691970887779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A302537 n + 27).toNat

end

end A223226.P8097842691970887779

/-! ## A223226.P10027264280987877041

`A223227(eq[11, A066657(n)])`
-/

namespace A223226.P10027264280987877041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223226.P10027264280987877041

/-! ## A223226.P5593828748610466451

`A223227(eq[8, A131818(n+1)])`
-/

namespace A223226.P5593828748610466451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223226.P5593828748610466451

/-! ## A223226.P12313697086929861318

`A223227(A374008(n+1))`
-/

namespace A223226.P12313697086929861318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223227 (A374008 (n + 1)).toNat

end

end A223226.P12313697086929861318

/-!
# A223228: Rolling icosahedron footprints: number of n X 3 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223228, there is no canonical definition to state claims against.
-/

/-! ## A223228.P5294154669883833195

`35*a(n-1)-90*a(n-2)` with `a(0)=25, a(1)=785`
-/

namespace A223228.P5294154669883833195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 785] fun n a =>
  35 * a (n - 1) - 90 * a (n - 2)

end

end A223228.P5294154669883833195

/-! ## A223228.P14783686628324071254

`A223233(∑[n+3]+1)`
-/

namespace A223228.P14783686628324071254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223228.P14783686628324071254

/-! ## A223228.P5391230921571658724

`A294929(n+1)+A223233(A034856(n+2))`
-/

namespace A223228.P5391230921571658724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (n + 1) + A223233 (A034856 (n + 2)).toNat

end

end A223228.P5391230921571658724

/-!
# A223229: Rolling icosahedron footprints: number of n X 4 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223229, there is no canonical definition to state claims against.
-/

/-! ## A223229.P2004305699025495887

`A223233(A141214(n+1))`
-/

namespace A223229.P2004305699025495887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A141214 (n + 1)).toNat

end

end A223229.P2004305699025495887

/-! ## A223229.P6387116268027398276

`A223233(A155212(n)+5)`
-/

namespace A223229.P6387116268027398276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A155212 n + 5).toNat

end

end A223229.P6387116268027398276

/-! ## A223229.P6998570600378280269

`A223233(eq[3, A193592(n)])`
-/

namespace A223229.P6998570600378280269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223229.P6998570600378280269

/-! ## A223229.P8279551713229236368

`A223233(Δ[A034857(n+1)])`
-/

namespace A223229.P8279551713229236368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (f1 (n + 1) - f1 n).toNat

end

end A223229.P8279551713229236368

/-! ## A223229.P7800851060384730542

`A223233(A052905(n+1)+2)`
-/

namespace A223229.P7800851060384730542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A052905 (n + 1) + 2).toNat

end

end A223229.P7800851060384730542

/-!
# A223230: Rolling icosahedron footprints: number of n X 5 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223230, there is no canonical definition to state claims against.
-/

/-! ## A223230.P615117295472981808

`A223233(Δ[A264443(n)])`
-/

namespace A223230.P615117295472981808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (f1 (n + 1) - f1 n).toNat

end

end A223230.P615117295472981808

/-! ## A223230.P13460649143530743891

`A223233(eq[4, A193592(n)])`
-/

namespace A223230.P13460649143530743891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223230.P13460649143530743891

/-! ## A223230.P12013475902761164199

`A223233(Δ[A023545(n+1)])`
-/

namespace A223230.P12013475902761164199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (f1 (n + 1) - f1 n).toNat

end

end A223230.P12013475902761164199

/-! ## A223230.P13598090566154618781

`A223233(A052905(n+2)+1)`
-/

namespace A223230.P13598090566154618781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A052905 (n + 2) + 1).toNat

end

end A223230.P13598090566154618781

/-! ## A223230.P609915326145888601

`A223233(eq[6, A185782(n+1)])`
-/

namespace A223230.P609915326145888601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223230.P609915326145888601

/-!
# A223231: Rolling icosahedron footprints: number of nX6 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223231, there is no canonical definition to state claims against.
-/

/-! ## A223231.P12636240691902394866

`A223233(eq[5, A193592(n)])`
-/

namespace A223231.P12636240691902394866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223231.P12636240691902394866

/-! ## A223231.P10936070833928363563

`A223233(eq[16, A057728(n+1)])`
-/

namespace A223231.P10936070833928363563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223231.P10936070833928363563

/-! ## A223231.P14493575967522670241

`A223233(Δ[Δ[A006504(n+1)]])`
-/

namespace A223231.P14493575967522670241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (f1 (n + 1) - f1 n).toNat

end

end A223231.P14493575967522670241

/-! ## A223231.P1254328234321481848

`A223233(Δ[A264443(n+1)]-1)`
-/

namespace A223231.P1254328234321481848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (f1 (n + 1) - f1 n - 1).toNat

end

end A223231.P1254328234321481848

/-!
# A223232: Rolling icosahedron footprints: number of n X 7 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223232, there is no canonical definition to state claims against.
-/

/-! ## A223232.P9868840639769183110

`A223233(A055999(n+4))`
-/

namespace A223232.P9868840639769183110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A055999 (n + 4)).toNat

end

end A223232.P9868840639769183110

/-! ## A223232.P11699119168254718507

`A223233(eq[6, A193592(n)])`
-/

namespace A223232.P11699119168254718507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223232.P11699119168254718507

/-! ## A223232.P3675278359421174591

`A223233(A000124(n+7)-7)`
-/

namespace A223232.P3675278359421174591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A000124 (n + 7) - 7).toNat

end

end A223232.P3675278359421174591

/-!
# A223233: T(n,k)=Rolling icosahedron footprints: number of nXk 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223233, there is no canonical definition to state claims against.
-/

/-! ## A223233.P13348191547880156174

`A345167(∑[∑[A141036(n)]])`
-/

namespace A223233.P13348191547880156174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223233.P13348191547880156174

/-! ## A223233.P16667452620507261671

`A345167(∑[A006755(n+1)])`
-/

namespace A223233.P16667452620507261671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223233.P16667452620507261671

/-!
# A223234: Rolling icosahedron footprints: number of 2 X n 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223234, the canonical program `A223234.P16416916966436449932` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223234 has offset 1).

The definition of A223234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223234.P16416916966436449932

`7*a(n-1)+30*a(n-2)` with `a(0)=12, a(1)=65, a(2)=785`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223234

/-- `7*a(n-1)+30*a(n-2)` -/
def P16416916966436449932.Spec : Prop :=
  ∀ n, (P16416916966436449932.a n : ℤ) = A223234 (n + 1)

theorem P16416916966436449932.correct : P16416916966436449932.Spec := by
  intro n
  simp only [A223234, Nat.add_sub_cancel]

end A223234

/-! ## A223234.P10795160829668782186

`A223233(∑[n+1]+2)`
-/

namespace A223234.P10795160829668782186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223234.P10795160829668782186

namespace A223234

/-- `A223233(∑[n+1]+2)` -/
def P10795160829668782186.Spec : Prop :=
  ∀ n, P10795160829668782186.a n = A223234 (n + 1)

end A223234

/-! ## A223234.P1998155845479674095

`char[A040076(n+1)]*A223233(A133263(n+1))`
-/

namespace A223234.P1998155845479674095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223233 (A133263 (n + 1)).toNat

end

end A223234.P1998155845479674095

namespace A223234

/-- `char[A040076(n+1)]*A223233(A133263(n+1))` -/
def P1998155845479674095.Spec : Prop :=
  ∀ n, P1998155845479674095.a n = A223234 (n + 1)

end A223234

/-! ## A223234.P10614215798324726114

`char[A048138(n+2)]*A223233(A133263(n+1))`
-/

namespace A223234.P10614215798324726114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223233 (A133263 (n + 1)).toNat

end

end A223234.P10614215798324726114

namespace A223234

/-- `char[A048138(n+2)]*A223233(A133263(n+1))` -/
def P10614215798324726114.Spec : Prop :=
  ∀ n, P10614215798324726114.a n = A223234 (n + 1)

end A223234

/-!
# A223235: Rolling icosahedron footprints: number of 3 X n 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223235, there is no canonical definition to state claims against.
-/

/-! ## A223235.P10150424732936768794

`A223233(∑[n+2]+4)`
-/

namespace A223235.P10150424732936768794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223235.P10150424732936768794

/-! ## A223235.P9367481047452255501

`A223233(A167614(n+1))+A185264(n)`
-/

namespace A223235.P9367481047452255501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A167614 (n + 1)).toNat + A185264 n

end

end A223235.P9367481047452255501

/-! ## A223235.P10442644350065892024

`A223233(A167614(n+1))+A185284(n)`
-/

namespace A223235.P10442644350065892024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A167614 (n + 1)).toNat + A185284 n

end

end A223235.P10442644350065892024

/-! ## A223235.P3428836156178444111

`lcm(A033999(n), A223233(A167614(n+1)))`
-/

namespace A223235.P3428836156178444111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223233 (A167614 (n + 1)).toNat)

end

end A223235.P3428836156178444111

/-! ## A223235.P14543366073168224498

`or(A000035(n), A223233(A167614(n+1)))`
-/

namespace A223235.P14543366073168224498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A223233 (A167614 (n + 1)).toNat)

end

end A223235.P14543366073168224498

/-!
# A223236: Rolling icosahedron footprints: number of 4Xn 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223236, there is no canonical definition to state claims against.
-/

/-! ## A223236.P5389799585105677770

`A223233(A141214(n)+7)`
-/

namespace A223236.P5389799585105677770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A141214 n + 7).toNat

end

end A223236.P5389799585105677770

/-! ## A223236.P6164887066280626104

`A223233(A052905(n)+9)`
-/

namespace A223236.P6164887066280626104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A052905 n + 9).toNat

end

end A223236.P6164887066280626104

/-! ## A223236.P4532038227954317276

`A223233(A055999(n)+10)`
-/

namespace A223236.P4532038227954317276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A055999 n + 10).toNat

end

end A223236.P4532038227954317276

/-! ## A223236.P11923048241024000905

`A223233(eq[5, A066657(n)])`
-/

namespace A223236.P11923048241024000905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223236.P11923048241024000905

/-! ## A223236.P1895347945400466215

`A223233(A167614(n+2)+1)`
-/

namespace A223236.P1895347945400466215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A167614 (n + 2) + 1).toNat

end

end A223236.P1895347945400466215

/-!
# A223237: Rolling icosahedron footprints: number of 5Xn 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223237, there is no canonical definition to state claims against.
-/

/-! ## A223237.P162283935356857675

`A223233(A167499(n+3))`
-/

namespace A223237.P162283935356857675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A167499 (n + 3)).toNat

end

end A223237.P162283935356857675

/-! ## A223237.P576710629987121954

`A223233(A155212(n)+13)`
-/

namespace A223237.P576710629987121954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A155212 n + 13).toNat

end

end A223237.P576710629987121954

/-! ## A223237.P10223813644716458956

`A223233(eq[7, A066657(n)])`
-/

namespace A223237.P10223813644716458956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223237.P10223813644716458956

/-! ## A223237.P16445986704514682177

`A223233(A167614(n+3)+2)`
-/

namespace A223237.P16445986704514682177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A167614 (n + 3) + 2).toNat

end

end A223237.P16445986704514682177

/-! ## A223237.P9571819973562910026

`A223233(A000124(n+4)+4)`
-/

namespace A223237.P9571819973562910026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A000124 (n + 4) + 4).toNat

end

end A223237.P9571819973562910026

/-!
# A223238: Rolling icosahedron footprints: number of 6Xn 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223238, there is no canonical definition to state claims against.
-/

/-! ## A223238.P5247543778683101426

`A223233(A056115(n)+21)`
-/

namespace A223238.P5247543778683101426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (A056115 n + 21).toNat

end

end A223238.P5247543778683101426

/-! ## A223238.P8698706832742654637

`A223233(eq[5, A002262(n)]+1)`
-/

namespace A223238.P8698706832742654637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223238.P8698706832742654637

/-! ## A223238.P721960301637710926

`A223233(eq[7, A131818(n+1)])`
-/

namespace A223238.P721960301637710926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223238.P721960301637710926

/-! ## A223238.P3842648540743931174

`A223233(Δ[A023545(n+1)]+10)`
-/

namespace A223238.P3842648540743931174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223233 (f1 (n + 1) - f1 n + 10).toNat

end

end A223238.P3842648540743931174

/-!
# A223239: 3-loop graph coloring a rectangular array: number of n X n 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223239, there is no canonical definition to state claims against.
-/

/-! ## A223239.P272080562803319760

`A223247((n+1)²+n²)`
-/

namespace A223239.P272080562803319760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 ((n + 1) ^ 2 + n ^ 2)

end

end A223239.P272080562803319760

/-!
# A223240: 3-loop graph coloring a rectangular array: number of n X 1 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223240, the canonical program `A223240.P14962152695289272436` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223240 has offset 1).

The definition of A223240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223240.P14962152695289272436

`a(n-1)+6*a(n-2)` with `a(0)=7, a(1)=18`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223240

/-- `a(n-1)+6*a(n-2)` -/
def P14962152695289272436.Spec : Prop :=
  ∀ n, (P14962152695289272436.a n : ℤ) = A223240 (n + 1)

theorem P14962152695289272436.correct : P14962152695289272436.Spec := by
  intro n
  simp only [A223240, Nat.add_sub_cancel]

end A223240

/-! ## A223240.P1184173243034303389

`A102901(n)+2*3^(n+1)`
-/

namespace A223240.P1184173243034303389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n + (2 * 3 ^ (n + 1) : ℤ)

end

end A223240.P1184173243034303389

namespace A223240

/-- `A102901(n)+2*3^(n+1)` -/
def P1184173243034303389.Spec : Prop :=
  ∀ n, P1184173243034303389.a n = A223240 (n + 1)

end A223240

/-! ## A223240.P17822620611482860024

`3*(a(n-1)-A123344(n))` with `a(0)=7`
-/

namespace A223240.P17822620611482860024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  3 * (a (n - 1) - A123344 n)

end

end A223240.P17822620611482860024

namespace A223240

/-- `3*(a(n-1)-A123344(n))` -/
def P17822620611482860024.Spec : Prop :=
  ∀ n, P17822620611482860024.a n = A223240 (n + 1)

end A223240

/-! ## A223240.P7190653979829890920

`A133467(n+2)-A133467(n)`
-/

namespace A223240.P7190653979829890920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133467 (n + 2) - A133467 n

end

end A223240.P7190653979829890920

namespace A223240

/-- `A133467(n+2)-A133467(n)` -/
def P7190653979829890920.Spec : Prop :=
  ∀ n, P7190653979829890920.a n = A223240 (n + 1)

end A223240

/-! ## A223240.P6828170831053161811

`Δ[A133467(n+1)+A133467(n)]`
-/

namespace A223240.P6828170831053161811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133467 (n + 1) + A133467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223240.P6828170831053161811

namespace A223240

/-- `Δ[A133467(n+1)+A133467(n)]` -/
def P6828170831053161811.Spec : Prop :=
  ∀ n, P6828170831053161811.a n = A223240 (n + 1)

end A223240

/-! ## A223240.P10428201407304964313

`A000244(n+1)+A102901(n)+A000244(n+1)`
-/

namespace A223240.P10428201407304964313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) + (A102901 n + A000244 (n + 1))

end

end A223240.P10428201407304964313

namespace A223240

/-- `A000244(n+1)+A102901(n)+A000244(n+1)` -/
def P10428201407304964313.Spec : Prop :=
  ∀ n, P10428201407304964313.a n = A223240 (n + 1)

end A223240

/-! ## A223240.P10596987163092637238

`A140725(n+1)+A140796(n+1)+A102901(n)`
-/

namespace A223240.P10596987163092637238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140725 (n + 1) + (A140796 (n + 1) + A102901 n)

end

end A223240.P10596987163092637238

namespace A223240

/-- `A140725(n+1)+A140796(n+1)+A102901(n)` -/
def P10596987163092637238.Spec : Prop :=
  ∀ n, P10596987163092637238.a n = A223240 (n + 1)

end A223240

/-!
# A223241: 3-loop graph coloring a rectangular array: number of n X 2 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223241, the canonical program `A223241.P8040308150240833249` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223241 has offset 1).

The definition of A223241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223241.P8040308150240833249

`7*a(n-1)-4*a(n-2)` with `a(0)=18, a(1)=102`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223241

/-- `7*a(n-1)-4*a(n-2)` -/
def P8040308150240833249.Spec : Prop :=
  ∀ n, P8040308150240833249.a n = A223241 (n + 1)

theorem P8040308150240833249.correct : P8040308150240833249.Spec := by
  intro n
  simp only [A223241, Nat.add_sub_cancel]

end A223241

/-! ## A223241.P7264242950515932126

`A223247(∑[n+1]+2)`
-/

namespace A223241.P7264242950515932126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223241.P7264242950515932126

namespace A223241

/-- `A223247(∑[n+1]+2)` -/
def P7264242950515932126.Spec : Prop :=
  ∀ n, P7264242950515932126.a n = A223241 (n + 1)

end A223241

/-! ## A223241.P8180560349580554127

`record[gcd(A002262(n), A223247(n+2))]`
-/

namespace A223241.P8180560349580554127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A223247 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223241.P8180560349580554127

namespace A223241

/-- `record[gcd(A002262(n), A223247(n+2))]` -/
def P8180560349580554127.Spec : Prop :=
  ∀ n, (P8180560349580554127.a n : ℤ) = A223241 (n + 1)

end A223241

/-! ## A223241.P6321780891043747309

`A223247(A238531(n+2))%A085447(n+2)`
-/

namespace A223241.P6321780891043747309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223247 (A238531 (n + 2)).toNat) (A085447 (n + 2))

end

end A223241.P6321780891043747309

namespace A223241

/-- `A223247(A238531(n+2))%A085447(n+2)` -/
def P6321780891043747309.Spec : Prop :=
  ∀ n, P6321780891043747309.a n = A223241 (n + 1)

end A223241

/-!
# A223242: 3-loop graph coloring a rectangular array: number of n X 3 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223242, there is no canonical definition to state claims against.
-/

/-! ## A223242.P4715947874967736741

`A223247(∑[n+2]+4)`
-/

namespace A223242.P4715947874967736741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223242.P4715947874967736741

/-! ## A223242.P14732649939881679717

`lcm(2, A223247(A167614(n+1)))`
-/

namespace A223242.P14732649939881679717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223247 (A167614 (n + 1)).toNat)

end

end A223242.P14732649939881679717

/-! ## A223242.P1633967292615386269

`A223247(A167614(n+1))+A070202(n+1)`
-/

namespace A223242.P1633967292615386269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A167614 (n + 1)).toNat + A070202 (n + 1)

end

end A223242.P1633967292615386269

/-! ## A223242.P4768903133801506048

`A223247(A167614(n+1))*A289014(n+1)`
-/

namespace A223242.P4768903133801506048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A167614 (n + 1)).toNat * A289014 (n + 1)

end

end A223242.P4768903133801506048

/-! ## A223242.P9335534171321132151

`A288707(2*(n+1))+A223247(A167614(n+1))`
-/

namespace A223242.P9335534171321132151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288707 (2 * (n + 1)) + A223247 (A167614 (n + 1)).toNat

end

end A223242.P9335534171321132151

/-!
# A223243: 3-loop graph coloring a rectangular array: number of n X 4 0..6 arrays where 0..6 label nodes of a graph with edges (0,1), (1,2), (2,0), (0,3), (3,4), (4,0), (0,5), (5,6), and (6,0), and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223243, there is no canonical definition to state claims against.
-/

/-! ## A223243.P9585596214404320713

`A223247(A055999(n)+10)`
-/

namespace A223243.P9585596214404320713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A055999 n + 10).toNat

end

end A223243.P9585596214404320713

/-! ## A223243.P13348740892567062112

`A223247(A167614(n+2)+1)`
-/

namespace A223243.P13348740892567062112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A167614 (n + 2) + 1).toNat

end

end A223243.P13348740892567062112

/-! ## A223243.P2291811999725911419

`A223247(3*(n+3)+A000124(n))`
-/

namespace A223243.P2291811999725911419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 ((3 * (n + 3) : ℤ) + A000124 n).toNat

end

end A223243.P2291811999725911419

/-! ## A223243.P7358250900728868554

`A223247(A141214(n+1))`
-/

namespace A223243.P7358250900728868554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A141214 (n + 1)).toNat

end

end A223243.P7358250900728868554

/-! ## A223243.P6880975979193729411

`A223247(A374004(n+1))`
-/

namespace A223243.P6880975979193729411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A374004 (n + 1)).toNat

end

end A223243.P6880975979193729411

/-!
# A223244: 3-loop graph coloring a rectangular array: number of nX5 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223244, there is no canonical definition to state claims against.
-/

/-! ## A223244.P4266407053321114450

`A223247(A167499(n+3))`
-/

namespace A223244.P4266407053321114450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A167499 (n + 3)).toNat

end

end A223244.P4266407053321114450

/-! ## A223244.P16138641989676533714

`A223247(A155212(n)+13)`
-/

namespace A223244.P16138641989676533714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A155212 n + 13).toNat

end

end A223244.P16138641989676533714

/-! ## A223244.P3594920592981444502

`A223247(A167614(n+3)+2)`
-/

namespace A223244.P3594920592981444502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A167614 (n + 3) + 2).toNat

end

end A223244.P3594920592981444502

/-! ## A223244.P16054410478738473768

`A223247(A000124(n+4)+4)`
-/

namespace A223244.P16054410478738473768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A000124 (n + 4) + 4).toNat

end

end A223244.P16054410478738473768

/-! ## A223244.P6295412039583528788

`A223247(A000217(n+4)+5)`
-/

namespace A223244.P6295412039583528788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A000217 (n + 4) + 5).toNat

end

end A223244.P6295412039583528788

/-!
# A223245: 3-loop graph coloring a rectangular array: number of nX6 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223245, there is no canonical definition to state claims against.
-/

/-! ## A223245.P4295300457059151156

`A223247(A000124(n+6)-(n+1))`
-/

namespace A223245.P4295300457059151156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A223245.P4295300457059151156

/-! ## A223245.P11271615288338612088

`A223247(A167499(n+3)+A020715(n))`
-/

namespace A223245.P11271615288338612088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A167499 (n + 3) + A020715 n).toNat

end

end A223245.P11271615288338612088

/-! ## A223245.P16682377321703641696

`A223247(A374007(n+1))`
-/

namespace A223245.P16682377321703641696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A374007 (n + 1)).toNat

end

end A223245.P16682377321703641696

/-! ## A223245.P8390384761199977208

`A223247(A052905(n+3))`
-/

namespace A223245.P8390384761199977208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A052905 (n + 3)).toNat

end

end A223245.P8390384761199977208

/-! ## A223245.P14137396836251452245

`A223247(eq[3, A219347(n)])`
-/

namespace A223245.P14137396836251452245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223245.P14137396836251452245

/-!
# A223246: 3-loop graph coloring a rectangular array: number of nX7 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223246, there is no canonical definition to state claims against.
-/

/-! ## A223246.P7347403415586558899

`A223247(A167614(n+5)+4)`
-/

namespace A223246.P7347403415586558899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A167614 (n + 5) + 4).toNat

end

end A223246.P7347403415586558899

/-! ## A223246.P9353532576319535769

`A223247(A000124(n+6)+6)`
-/

namespace A223246.P9353532576319535769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A000124 (n + 6) + 6).toNat

end

end A223246.P9353532576319535769

/-! ## A223246.P13211630463962581560

`A223247(A374008(n+1))`
-/

namespace A223246.P13211630463962581560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A374008 (n + 1)).toNat

end

end A223246.P13211630463962581560

/-! ## A223246.P1627883415656273372

`A223247(A055999(n+4))`
-/

namespace A223246.P1627883415656273372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (A055999 (n + 4)).toNat

end

end A223246.P1627883415656273372

/-! ## A223246.P6295823516582350802

`A223247(eq[4, A219347(n)])`
-/

namespace A223246.P6295823516582350802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223246.P6295823516582350802

/-!
# A223248: Two-loop graph coloring a rectangular array: number of n X n 0..4 arrays where 0..4 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223248, there is no canonical definition to state claims against.
-/

/-! ## A223248.P1875006310225825789

`A223255(∑[4*n]+1)`
-/

namespace A223248.P1875006310225825789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223248.P1875006310225825789

/-! ## A223248.P9612455078072714486

`record[A003982(n)*A223255(n+1)]`
-/

namespace A223248.P9612455078072714486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223248.P9612455078072714486

/-! ## A223248.P17635183281176691387

`record[gcd(A114327(n), A223255(n+1))]`
-/

namespace A223248.P17635183281176691387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223255 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223248.P17635183281176691387

/-! ## A223248.P3753387702715742520

`record[A077606(n+1)*A223255(n+1)]`
-/

namespace A223248.P3753387702715742520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A223255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223248.P3753387702715742520

/-! ## A223248.P17422789424716509080

`lcm(A001316(n), A223255(A001844(n)))`
-/

namespace A223248.P17422789424716509080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A223255 (A001844 n).toNat)

end

end A223248.P17422789424716509080

/-!
# A223249: Two-loop graph coloring a rectangular array: number of n X 2 0..4 arrays where 0..4 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223249, the canonical program `A223249.P4183320366044125358` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223249 has offset 1).

The definition of A223249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223249.P4183320366044125358

`5*a(n-1)-2*a(n-2)` with `a(0)=12, a(1)=52`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223249

/-- `5*a(n-1)-2*a(n-2)` -/
def P4183320366044125358.Spec : Prop :=
  ∀ n, P4183320366044125358.a n = A223249 (n + 1)

theorem P4183320366044125358.correct : P4183320366044125358.Spec := by
  intro n
  simp only [A223249, Nat.add_sub_cancel]

end A223249

/-! ## A223249.P2529288790109285554

`4*A052984(n+1)`
-/

namespace A223249.P2529288790109285554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A052984 (n + 1)

end

end A223249.P2529288790109285554

namespace A223249

/-- `4*A052984(n+1)` -/
def P2529288790109285554.Spec : Prop :=
  ∀ n, P2529288790109285554.a n = A223249 (n + 1)

end A223249

/-! ## A223249.P8134724812317267548

`lcm(4, A152594(n+2))`
-/

namespace A223249.P8134724812317267548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A152594 (n + 2))

end

end A223249.P8134724812317267548

namespace A223249

/-- `lcm(4, A152594(n+2))` -/
def P8134724812317267548.Spec : Prop :=
  ∀ n, (P8134724812317267548.a n : ℤ) = A223249 (n + 1)

end A223249

/-! ## A223249.P7644465528181855938

`2*(A159289(n)+A107839(n))`
-/

namespace A223249.P7644465528181855938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159289 n + A107839 n)

end

end A223249.P7644465528181855938

namespace A223249

/-- `2*(A159289(n)+A107839(n))` -/
def P7644465528181855938.Spec : Prop :=
  ∀ n, P7644465528181855938.a n = A223249 (n + 1)

end A223249

/-! ## A223249.P1637317630327346956

`4*(A052913(n)+A020698(n))`
-/

namespace A223249.P1637317630327346956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A052913 n + A020698 n)

end

end A223249.P1637317630327346956

namespace A223249

/-- `4*(A052913(n)+A020698(n))` -/
def P1637317630327346956.Spec : Prop :=
  ∀ n, P1637317630327346956.a n = A223249 (n + 1)

end A223249

/-! ## A223249.P7535472758184326385

`A106709(n)+6*A020698(n)`
-/

namespace A223249.P7535472758184326385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106709 n + 6 * A020698 n

end

end A223249.P7535472758184326385

namespace A223249

/-- `A106709(n)+6*A020698(n)` -/
def P7535472758184326385.Spec : Prop :=
  ∀ n, P7535472758184326385.a n = A223249 (n + 1)

end A223249

/-! ## A223249.P3596145913640985414

`2*(A147722(n+1)+A052913(n+1))`
-/

namespace A223249.P3596145913640985414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A147722 (n + 1) + A052913 (n + 1))

end

end A223249.P3596145913640985414

namespace A223249

/-- `2*(A147722(n+1)+A052913(n+1))` -/
def P3596145913640985414.Spec : Prop :=
  ∀ n, P3596145913640985414.a n = A223249 (n + 1)

end A223249

/-! ## A223249.P17794088936619475824

`2*(A107839(n+1)+A005824(2*n+1))`
-/

namespace A223249.P17794088936619475824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A107839 (n + 1) + A005824 (2 * n + 1))

end

end A223249.P17794088936619475824

namespace A223249

/-- `2*(A107839(n+1)+A005824(2*n+1))` -/
def P17794088936619475824.Spec : Prop :=
  ∀ n, P17794088936619475824.a n = A223249 (n + 1)

end A223249

/-! ## A223249.P14929215059144894799

`A020698(n+1)+A147722(n)+A020698(n)`
-/

namespace A223249.P14929215059144894799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 (n + 1) + (A147722 n + A020698 n)

end

end A223249.P14929215059144894799

namespace A223249

/-- `A020698(n+1)+A147722(n)+A020698(n)` -/
def P14929215059144894799.Spec : Prop :=
  ∀ n, P14929215059144894799.a n = A223249 (n + 1)

end A223249

/-! ## A223249.P10961002646035909736

`A159289(n)+A159289(n)-A106709(n+1)`
-/

namespace A223249.P10961002646035909736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159289 n + (A159289 n - A106709 (n + 1))

end

end A223249.P10961002646035909736

namespace A223249

/-- `A159289(n)+A159289(n)-A106709(n+1)` -/
def P10961002646035909736.Spec : Prop :=
  ∀ n, P10961002646035909736.a n = A223249 (n + 1)

end A223249

/-! ## A223249.P10775471463656731877

`Δ[4*∑[A052984(n)]]`
-/

namespace A223249.P10775471463656731877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223249.P10775471463656731877

namespace A223249

/-- `Δ[4*∑[A052984(n)]]` -/
def P10775471463656731877.Spec : Prop :=
  ∀ n, P10775471463656731877.a n = A223249 (n + 1)

end A223249

/-!
# A223250: Two-loop graph coloring a rectangular array: number of n X 3 0..4 arrays where 0..4 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223250, there is no canonical definition to state claims against.
-/

/-! ## A223250.P13218035517806650628

`A223255(∑[n+2]+4)`
-/

namespace A223250.P13218035517806650628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223250.P13218035517806650628

/-! ## A223250.P12243536023779327393

`lcm(2, A223255(A167614(n+1)))`
-/

namespace A223250.P12243536023779327393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223255 (A167614 (n + 1)).toNat)

end

end A223250.P12243536023779327393

/-! ## A223250.P5542297386477578034

`A223255(A167614(n+1))+A034576(n+1)`
-/

namespace A223250.P5542297386477578034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A167614 (n + 1)).toNat + A034576 (n + 1)

end

end A223250.P5542297386477578034

/-! ## A223250.P545848947251479456

`A223255(A167614(n+1))%A251033(n+1)`
-/

namespace A223250.P545848947251479456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223255 (A167614 (n + 1)).toNat) (A251033 (n + 1))

end

end A223250.P545848947251479456

/-! ## A223250.P2786799872423618647

`A223255(A034856(n+2))%A332179(n+1)`
-/

namespace A223250.P2786799872423618647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223255 (A034856 (n + 2)).toNat) (A332179 (n + 1))

end

end A223250.P2786799872423618647

/-!
# A223251: Two-loop graph coloring a rectangular array: number of n X 4 0..4 arrays where 0..4 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223251, there is no canonical definition to state claims against.
-/

/-! ## A223251.P11176842371501701661

`A223255(A374004(n+1))`
-/

namespace A223251.P11176842371501701661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A374004 (n + 1)).toNat

end

end A223251.P11176842371501701661

/-! ## A223251.P5734642272209705373

`A223255(A141214(n)+7)`
-/

namespace A223251.P5734642272209705373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A141214 n + 7).toNat

end

end A223251.P5734642272209705373

/-! ## A223251.P1193236539055864269

`A223255(A167614(n+2)+1)`
-/

namespace A223251.P1193236539055864269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A167614 (n + 2) + 1).toNat

end

end A223251.P1193236539055864269

/-! ## A223251.P15933913977512418390

`A223255(A055998(n+2))`
-/

namespace A223251.P15933913977512418390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A055998 (n + 2)).toNat

end

end A223251.P15933913977512418390

/-! ## A223251.P1684596410670550185

`A223255(A155212(n)+5)`
-/

namespace A223251.P1684596410670550185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A155212 n + 5).toNat

end

end A223251.P1684596410670550185

/-!
# A223252: Two-loop graph coloring a rectangular array: number of nX5 0..4 arrays where 0..4 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223252, there is no canonical definition to state claims against.
-/

/-! ## A223252.P28308170950720351

`A223255(A374005(n+1))`
-/

namespace A223252.P28308170950720351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A374005 (n + 1)).toNat

end

end A223252.P28308170950720351

/-! ## A223252.P10746583105452274563

`A223255(A167499(n+3))`
-/

namespace A223252.P10746583105452274563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A167499 (n + 3)).toNat

end

end A223252.P10746583105452274563

/-! ## A223252.P5487065010154723563

`A223255(A155212(n)+13)`
-/

namespace A223252.P5487065010154723563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A155212 n + 13).toNat

end

end A223252.P5487065010154723563

/-! ## A223252.P12509396035976765504

`A223255(A167614(n+3)+2)`
-/

namespace A223252.P12509396035976765504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A167614 (n + 3) + 2).toNat

end

end A223252.P12509396035976765504

/-! ## A223252.P13325457141978127704

`A223255(A000217(n+4)+5)`
-/

namespace A223252.P13325457141978127704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A000217 (n + 4) + 5).toNat

end

end A223252.P13325457141978127704

/-!
# A223253: Two-loop graph coloring a rectangular array: number of nX6 0..4 arrays where 0..4 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223253, there is no canonical definition to state claims against.
-/

/-! ## A223253.P11304138258913702017

`A223255(A374007(n+1))`
-/

namespace A223253.P11304138258913702017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A374007 (n + 1)).toNat

end

end A223253.P11304138258913702017

/-! ## A223253.P8976027946859872532

`A223255(A141214(n+2)+9)`
-/

namespace A223253.P8976027946859872532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A141214 (n + 2) + 9).toNat

end

end A223253.P8976027946859872532

/-! ## A223253.P7156248515512967608

`A223255(eq[7, A131818(n+1)])`
-/

namespace A223253.P7156248515512967608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223253.P7156248515512967608

/-! ## A223253.P8236331341716304429

`A223255(A167499(n+3)+A020715(n))`
-/

namespace A223253.P8236331341716304429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A167499 (n + 3) + A020715 n).toNat

end

end A223253.P8236331341716304429

/-! ## A223253.P10783758128467452251

`A223255(A056119(n)+16)`
-/

namespace A223253.P10783758128467452251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A056119 n + 16).toNat

end

end A223253.P10783758128467452251

/-!
# A223254: Two-loop graph coloring a rectangular array: number of nX7 0..4 arrays where 0..4 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223254, there is no canonical definition to state claims against.
-/

/-! ## A223254.P15198011456374838151

`A223255(A374008(n+1))`
-/

namespace A223254.P15198011456374838151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A374008 (n + 1)).toNat

end

end A223254.P15198011456374838151

/-! ## A223254.P5557680298757461961

`A223255(A052905(n+3)+12)`
-/

namespace A223254.P5557680298757461961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (A052905 (n + 3) + 12).toNat

end

end A223254.P5557680298757461961

/-! ## A223254.P14401066481200285313

`A223255(eq[8, A131818(n+1)])`
-/

namespace A223254.P14401066481200285313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223254.P14401066481200285313

/-! ## A223254.P13852835065166604839

`A223255(eq[4, A219347(n)])`
-/

namespace A223254.P13852835065166604839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223254.P13852835065166604839

/-! ## A223254.P9814685505771061169

`A223255(eq[6, A193592(n)])`
-/

namespace A223254.P9814685505771061169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223254.P9814685505771061169

/-!
# A223256: Triangle read by rows: T(0,0)=1; for n>=1 T(n,k) is the numerator of the coefficient of x^k in the characteristic polynomial of the matrix realizing the transformation to Jacobi coordinates for a system of n particles on a line.

The programs for A223256, there is no canonical definition to state claims against.
-/

/-! ## A223256.P16270557916567131791

`A026741(A298854(n)^A351356(n+1))`
-/

namespace A223256.P16270557916567131791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A298854 n : ℚ) ^ (A351356 (n + 1) : ℤ))).toNat

end

end A223256.P16270557916567131791

/-! ## A223256.P588145934311690100

`A104192(A180959(n)^A287383(n))`
-/

namespace A223256.P588145934311690100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (SequenceMachineLib.roundAway ((A180959 n : ℚ) ^ (A287383 n : ℤ))).toNat

end

end A223256.P588145934311690100

/-! ## A223256.P17203085461001763430

`A042996(A022166(n)%A052023(n+1))`
-/

namespace A223256.P17203085461001763430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (Int.tmod (A022166 n) (A052023 (n + 1))).toNat

end

end A223256.P17203085461001763430

/-! ## A223256.P17244925731163134601

`or(1, A008292(n+1)-A283826(A068045(n))-1)`
-/

namespace A223256.P17244925731163134601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008292 (n + 1) - A283826 (A068045 n).toNat - 1)

end

end A223256.P17244925731163134601

/-!
# A223257: Triangle read by rows: T(0,0)=1; for n>=1 T(n,k) is the denominator of the coefficient of x^k in the characteristic polynomial of the matrix realizing the transformation to Jacobi coordinates for a system of n particles on a line.

The programs for A223257, there is no canonical definition to state claims against.
-/

/-! ## A223257.P8390708992527965157

`A277173(A183342(n+1))%A114823(A122978(n+1))`
-/

namespace A223257.P8390708992527965157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277173 (A183342 (n + 1)).toNat) (A114823 (A122978 (n + 1)).toNat)

end

end A223257.P8390708992527965157

/-! ## A223257.P5274459918492400372

`A047726(A176795(n)+6)`
-/

namespace A223257.P5274459918492400372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A176795 n + 6).toNat

end

end A223257.P5274459918492400372

/-! ## A223257.P3435232843863991558

`A047726(A032671(A296405(n+1)²))`
-/

namespace A223257.P3435232843863991558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A032671 (A296405 (n + 1) ^ 2).toNat).toNat

end

end A223257.P3435232843863991558

/-! ## A223257.P8956645283336612875

`A047726(A250044(A296974(n+1)²))`
-/

namespace A223257.P8956645283336612875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A250044 (A296974 (n + 1) ^ 2).toNat).toNat

end

end A223257.P8956645283336612875

/-! ## A223257.P5211587401926690165

`A155864(lt[A007690(n), A007091(n+2)])`
-/

namespace A223257.P5211587401926690165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155864 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A223257.P5211587401926690165

/-!
# A223258: Rolling icosahedron footprints: number of n X 3 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or vertical neighbor moves along an icosahedral edge.

The programs for A223258, there is no canonical definition to state claims against.
-/

/-! ## A223258.P9854128063974629354

`38*a(n-1)-129*a(n-2)` with `a(0)=25, a(1)=845`
-/

namespace A223258.P9854128063974629354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 845] fun n a =>
  38 * a (n - 1) - 129 * a (n - 2)

end

end A223258.P9854128063974629354

/-! ## A223258.P1401147091884087683

`A223263(∑[n+2]+4)`
-/

namespace A223258.P1401147091884087683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223258.P1401147091884087683

/-! ## A223258.P15284133145122703286

`lcm(5, A223263(A167614(n+1)))`
-/

namespace A223258.P15284133145122703286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A223263 (A167614 (n + 1)).toNat)

end

end A223258.P15284133145122703286

/-! ## A223258.P14093581738281796260

`A223263(A167614(n+1))*A291168(n)`
-/

namespace A223258.P14093581738281796260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A167614 (n + 1)).toNat * A291168 n

end

end A223258.P14093581738281796260

/-! ## A223258.P13584533175690598514

`or(A000007(n), A223263(A167614(n+1)))`
-/

namespace A223258.P13584533175690598514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223263 (A167614 (n + 1)).toNat)

end

end A223258.P13584533175690598514

/-!
# A223259: Rolling icosahedron footprints: number of nX4 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or vertical neighbor moves along an icosahedral edge.

The programs for A223259, there is no canonical definition to state claims against.
-/

/-! ## A223259.P720489581424275383

`A223263(A374004(n+1))`
-/

namespace A223259.P720489581424275383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A374004 (n + 1)).toNat

end

end A223259.P720489581424275383

/-! ## A223259.P3332019444802316035

`A223263(A141214(n)+7)`
-/

namespace A223259.P3332019444802316035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A141214 n + 7).toNat

end

end A223259.P3332019444802316035

/-! ## A223259.P11889655864622588928

`A223263(A052905(n)+9)`
-/

namespace A223259.P11889655864622588928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A052905 n + 9).toNat

end

end A223259.P11889655864622588928

/-! ## A223259.P14404970657967422856

`A223263(A055999(n)+10)`
-/

namespace A223259.P14404970657967422856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A055999 n + 10).toNat

end

end A223259.P14404970657967422856

/-! ## A223259.P8503019128665054014

`A223263(A167614(n+2)+1)`
-/

namespace A223259.P8503019128665054014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A167614 (n + 2) + 1).toNat

end

end A223259.P8503019128665054014

/-!
# A223260: Rolling icosahedron footprints: number of nX5 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or vertical neighbor moves along an icosahedral edge.

The programs for A223260, there is no canonical definition to state claims against.
-/

/-! ## A223260.P8226393969427337276

`A223263(A374005(n+1))`
-/

namespace A223260.P8226393969427337276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A374005 (n + 1)).toNat

end

end A223260.P8226393969427337276

/-! ## A223260.P1014335660621648640

`A223263(A167614(n+3)+2)`
-/

namespace A223260.P1014335660621648640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A167614 (n + 3) + 2).toNat

end

end A223260.P1014335660621648640

/-! ## A223260.P3620279459140553667

`A223263(A000217(n+4)+5)`
-/

namespace A223260.P3620279459140553667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A000217 (n + 4) + 5).toNat

end

end A223260.P3620279459140553667

/-! ## A223260.P7584468909180157702

`A223263(Δ[A023545(n+1)])`
-/

namespace A223260.P7584468909180157702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (f1 (n + 1) - f1 n).toNat

end

end A223260.P7584468909180157702

/-!
# A223261: Rolling icosahedron footprints: number of nX6 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or vertical neighbor moves along an icosahedral edge.

The programs for A223261, there is no canonical definition to state claims against.
-/

/-! ## A223261.P2709379285483044791

`A223263(A374007(n+1))`
-/

namespace A223261.P2709379285483044791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A374007 (n + 1)).toNat

end

end A223261.P2709379285483044791

/-! ## A223261.P1337032042573721864

`A223263(A052905(n+3))`
-/

namespace A223261.P1337032042573721864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A052905 (n + 3)).toNat

end

end A223261.P1337032042573721864

/-!
# A223262: 

The programs for A223262, there is no canonical definition to state claims against.
-/

/-! ## A223262.P7360342272702124855

`A223263(A141214(n+4)-3)`
-/

namespace A223262.P7360342272702124855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (A141214 (n + 4) - 3).toNat

end

end A223262.P7360342272702124855

/-!
# A223263: T(n,k)=Rolling icosahedron footprints: number of nXk 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or vertical neighbor moves along an icosahedral edge.

The programs for A223263, there is no canonical definition to state claims against.
-/

/-! ## A223263.P3176824837756167633

`A370297(A373692(n+1))`
-/

namespace A223263.P3176824837756167633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370297 (A373692 (n + 1)).toNat

end

end A223263.P3176824837756167633

/-! ## A223263.P1705064043660850361

`∏{e}[A300938(n+1), #²+4]`
-/

namespace A223263.P1705064043660850361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p ^ 2 + 4)

end

end A223263.P1705064043660850361

/-! ## A223263.P8015653954108078977

`A370297(A118171(n))`
-/

namespace A223263.P8015653954108078977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370297 (A118171 n).toNat

end

end A223263.P8015653954108078977

/-!
# A223264: Rolling cube footprints: number of n X n 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223264, there is no canonical definition to state claims against.
-/

/-! ## A223264.P4753780334747722205

`A223269((n+1)²+n²)`
-/

namespace A223264.P4753780334747722205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 ((n + 1) ^ 2 + n ^ 2)

end

end A223264.P4753780334747722205

/-!
# A223265: Rolling cube footprints: number of n X 4 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223265, there is no canonical definition to state claims against.
-/

/-! ## A223265.P8477589576284197344

`A223269(A141214(n+1))`
-/

namespace A223265.P8477589576284197344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A141214 (n + 1)).toNat

end

end A223265.P8477589576284197344

/-! ## A223265.P7053093878564445785

`A223269(A055998(n+2))`
-/

namespace A223265.P7053093878564445785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A055998 (n + 2)).toNat

end

end A223265.P7053093878564445785

/-! ## A223265.P1663404836897569978

`A223269(A155212(n)+5)`
-/

namespace A223265.P1663404836897569978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A155212 n + 5).toNat

end

end A223265.P1663404836897569978

/-! ## A223265.P2939328152503484983

`A223269(A056000(n)+7)`
-/

namespace A223265.P2939328152503484983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A056000 n + 7).toNat

end

end A223265.P2939328152503484983

/-! ## A223265.P6623086496355162342

`A223269(A052905(n+1)+2)`
-/

namespace A223265.P6623086496355162342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A052905 (n + 1) + 2).toNat

end

end A223265.P6623086496355162342

/-!
# A223266: Rolling cube footprints: number of n X 5 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223266, there is no canonical definition to state claims against.
-/

/-! ## A223266.P10737251996049265014

`A223269(Δ[A023545(n+1)])`
-/

namespace A223266.P10737251996049265014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (f1 (n + 1) - f1 n).toNat

end

end A223266.P10737251996049265014

/-! ## A223266.P11987586204262889254

`A223269(A055999(n+2)+2)`
-/

namespace A223266.P11987586204262889254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A055999 (n + 2) + 2).toNat

end

end A223266.P11987586204262889254

/-! ## A223266.P2983974523666759231

`A223269(A000217(n+5)-4)`
-/

namespace A223266.P2983974523666759231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A000217 (n + 5) - 4).toNat

end

end A223266.P2983974523666759231

/-!
# A223267: Rolling cube footprints: number of nX6 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223267, there is no canonical definition to state claims against.
-/

/-! ## A223267.P8061299533476283513

`A223269(Δ[A023545(n+2)]-1)`
-/

namespace A223267.P8061299533476283513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (f1 (n + 1) - f1 n - 1).toNat

end

end A223267.P8061299533476283513

/-! ## A223267.P12766276321433203650

`A223269(A000217(n+5)+n+1)`
-/

namespace A223267.P12766276321433203650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A223267.P12766276321433203650

/-! ## A223267.P4931594381953690251

`A223269(A167499(n+3)+2*n+1)`
-/

namespace A223267.P4931594381953690251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A223267.P4931594381953690251

/-! ## A223267.P12991800412345941730

`A223269(A291769(n)+A000217(n+5))`
-/

namespace A223267.P12991800412345941730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A291769 n + A000217 (n + 5)).toNat

end

end A223267.P12991800412345941730

/-!
# A223269: T(n,k)=Rolling cube face footprints: number of nXk 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223269, there is no canonical definition to state claims against.
-/

/-! ## A223269.P10782839431147839903

`A255588(A232920(n+1)*A298970(n+1))`
-/

namespace A223269.P10782839431147839903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A232920 (n + 1) * A298970 (n + 1)).toNat

end

end A223269.P10782839431147839903

/-! ## A223269.P7879083430225653285

`A255588(A232920(n+1)*A317517(n+1))`
-/

namespace A223269.P7879083430225653285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A232920 (n + 1) * A317517 (n + 1)).toNat

end

end A223269.P7879083430225653285

/-! ## A223269.P4651676534329221462

`A052126(A232920(n+1)*A298970(n+1))`
-/

namespace A223269.P4651676534329221462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A232920 (n + 1) * A298970 (n + 1)).toNat

end

end A223269.P4651676534329221462

/-! ## A223269.P14968821574363276614

`A055034(A232920(n+1)*A298970(n+1))`
-/

namespace A223269.P14968821574363276614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A232920 (n + 1) * A298970 (n + 1)).toNat

end

end A223269.P14968821574363276614

/-! ## A223269.P16422620739749235805

`A052126(A232920(n+1)*A317517(n+1))`
-/

namespace A223269.P16422620739749235805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A232920 (n + 1) * A317517 (n + 1)).toNat

end

end A223269.P16422620739749235805

/-!
# A223270: Rolling cube footprints: number of 2 X n 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223270, there is no canonical definition to state claims against.
-/

/-! ## A223270.P10299379309008350907

`8*a(n-1)+32*a(n-2)` with `a(0)=6, a(1)=48`
-/

namespace A223270.P10299379309008350907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 48] fun n a =>
  8 * a (n - 1) + 32 * a (n - 2)

end

end A223270.P10299379309008350907

/-! ## A223270.P16191270334483400531

`∑[A080040(n)]*A164346(n)`
-/

namespace A223270.P16191270334483400531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A164346 n

end

end A223270.P16191270334483400531

/-! ## A223270.P12438346710961391298

`A000302(n)*A239171(n+1)`
-/

namespace A223270.P12438346710961391298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A239171 (n + 1)

end

end A223270.P12438346710961391298

/-! ## A223270.P10855232338648523729

`A000079(n)²*A239171(n+1)`
-/

namespace A223270.P10855232338648523729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A239171 (n + 1)

end

end A223270.P10855232338648523729

/-! ## A223270.P14424849114036401258

`Δ[A047849(n)]*A239171(n+1)`
-/

namespace A223270.P14424849114036401258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A239171 (n + 1)

end

end A223270.P14424849114036401258

/-! ## A223270.P11123687989205295523

`A000079(2*n)*A239171(n+1)`
-/

namespace A223270.P11123687989205295523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A239171 (n + 1)

end

end A223270.P11123687989205295523

/-! ## A223270.P12879664663611126411

`2*A000079(n)²*A083337(n+1)`
-/

namespace A223270.P12879664663611126411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 * A083337 (n + 1)

end

end A223270.P12879664663611126411

/-! ## A223270.P8360973664380483629

`Δ[A000079(n)²]*Δ[A052948(n+1)]`
-/

namespace A223270.P8360973664380483629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A223270.P8360973664380483629

/-! ## A223270.P819617464288258584

`A002605(n+1)*A007283(2*n+1)`
-/

namespace A223270.P819617464288258584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) * A007283 (2 * n + 1)

end

end A223270.P819617464288258584

/-!
# A223271: Rolling cube footprints: number of 3 X n 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223271, there is no canonical definition to state claims against.
-/

/-! ## A223271.P3058311774022579624

`A223269(∑[n+2]+4)`
-/

namespace A223271.P3058311774022579624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223271.P3058311774022579624

/-! ## A223271.P2521227001049045400

`lcm(2, A223269(A167614(n+1)))`
-/

namespace A223271.P2521227001049045400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223269 (A167614 (n + 1)).toNat)

end

end A223271.P2521227001049045400

/-! ## A223271.P1675853919371252962

`record[A223269(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A223271.P1675853919371252962
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223271.P1675853919371252962

/-! ## A223271.P10957758411662889393

`A223269(A167614(n+1))/A195061(n+2)`
-/

namespace A223271.P10957758411662889393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223269 (A167614 (n + 1)).toNat : ℚ) / (A195061 (n + 2) : ℚ)

end

end A223271.P10957758411662889393

/-! ## A223271.P16881587320119888332

`A223269(A167614(n+1))%A206314(n+1)`
-/

namespace A223271.P16881587320119888332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223269 (A167614 (n + 1)).toNat) (A206314 (n + 1))

end

end A223271.P16881587320119888332

/-!
# A223272: Rolling cube footprints: number of 4Xn 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223272, there is no canonical definition to state claims against.
-/

/-! ## A223272.P6168892538931796717

`A223269(A141214(n)+7)`
-/

namespace A223272.P6168892538931796717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A141214 n + 7).toNat

end

end A223272.P6168892538931796717

/-! ## A223272.P10987846977803564798

`A223269(A052905(n)+9)`
-/

namespace A223272.P10987846977803564798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A052905 n + 9).toNat

end

end A223272.P10987846977803564798

/-! ## A223272.P3656091126651334488

`A223269(A055999(n)+10)`
-/

namespace A223272.P3656091126651334488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A055999 n + 10).toNat

end

end A223272.P3656091126651334488

/-! ## A223272.P5978824873379052024

`A223269(A167614(n+2)+1)`
-/

namespace A223272.P5978824873379052024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A167614 (n + 2) + 1).toNat

end

end A223272.P5978824873379052024

/-! ## A223272.P7819450142673733900

`A223269(A000217(n+3)+4)`
-/

namespace A223272.P7819450142673733900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A000217 (n + 3) + 4).toNat

end

end A223272.P7819450142673733900

/-!
# A223273: Rolling cube footprints: number of 5Xn 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223273, there is no canonical definition to state claims against.
-/

/-! ## A223273.P14073184798008117809

`A223269(A167499(n+3))`
-/

namespace A223273.P14073184798008117809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A167499 (n + 3)).toNat

end

end A223273.P14073184798008117809

/-! ## A223273.P17960857400716182608

`A223269(A000217(n+4)+5)`
-/

namespace A223273.P17960857400716182608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A000217 (n + 4) + 5).toNat

end

end A223273.P17960857400716182608

/-! ## A223273.P1051683205648970637

`A223269(A167614(n+4)-(n+3))`
-/

namespace A223273.P1051683205648970637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A167614 (n + 4) - (n + 3 : ℤ)).toNat

end

end A223273.P1051683205648970637

/-! ## A223273.P1240762851807022890

`A223269(A000124(n+4)+5-A007318(C(2, n)))`
-/

namespace A223273.P1240762851807022890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A000124 (n + 4) + (5 - A007318 (Nat.choose 2 n))).toNat

end

end A223273.P1240762851807022890

/-!
# A223274: Rolling cube footprints: number of 6Xn 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223274, there is no canonical definition to state claims against.
-/

/-! ## A223274.P8168587152278219846

`A223269(A000217(n+5)+6)`
-/

namespace A223274.P8168587152278219846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A000217 (n + 5) + 6).toNat

end

end A223274.P8168587152278219846

/-! ## A223274.P7560320122088528499

`A223269(A167499(n+3)+A020715(n))`
-/

namespace A223274.P7560320122088528499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A167499 (n + 3) + A020715 n).toNat

end

end A223274.P7560320122088528499

/-!
# A223275: 

The programs for A223275, there is no canonical definition to state claims against.
-/

/-! ## A223275.P8203696121409364813

`A223269(A000124(n+6)+6)`
-/

namespace A223275.P8203696121409364813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223269 (A000124 (n + 6) + 6).toNat

end

end A223275.P8203696121409364813

/-!
# A223276: Rolling icosahedron face footprints: number of n X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223276, there is no canonical definition to state claims against.
-/

/-! ## A223276.P7874910343933259110

`A223282(∑[4*n]+1)`
-/

namespace A223276.P7874910343933259110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223276.P7874910343933259110

/-! ## A223276.P16286372234068798583

`or(1, A223282(A001844(n)))`
-/

namespace A223276.P16286372234068798583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223282 (A001844 n).toNat)

end

end A223276.P16286372234068798583

/-! ## A223276.P14111660070808461504

`record[gcd(A214292(n), A223282(n+1))]`
-/

namespace A223276.P14111660070808461504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A223282 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223276.P14111660070808461504

/-! ## A223276.P13861637444470314010

`lcm(A020985(n), A223282(A001844(n)))`
-/

namespace A223276.P13861637444470314010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A223282 (A001844 n).toNat)

end

end A223276.P13861637444470314010

/-! ## A223276.P6733196101612483032

`A223282(A001844(n))+A160990(n+1)`
-/

namespace A223276.P6733196101612483032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A001844 n).toNat + A160990 (n + 1)

end

end A223276.P6733196101612483032

/-!
# A223277: Rolling icosahedron face footprints: number of n X 3 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223277, the canonical program `A223277.P11847857013027741488` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223277 has offset 1).

The definition of A223277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223277.P11847857013027741488

`11*a(n-1)-12*a(n-2)` with `a(0)=9, a(1)=87`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223277

/-- `11*a(n-1)-12*a(n-2)` -/
def P11847857013027741488.Spec : Prop :=
  ∀ n, P11847857013027741488.a n = A223277 (n + 1)

theorem P11847857013027741488.correct : P11847857013027741488.Spec := by
  intro n
  simp only [A223277, Nat.add_sub_cancel]

end A223277

/-! ## A223277.P11491537817010197338

`A223299(n+2)/A002063(n+1)*A000302(n)`
-/

namespace A223277.P11491537817010197338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223299 (n + 2) : ℚ) / (A002063 (n + 1) : ℚ) * (A000302 n : ℚ)

end

end A223277.P11491537817010197338

namespace A223277

/-- `A223299(n+2)/A002063(n+1)*A000302(n)` -/
def P11491537817010197338.Spec : Prop :=
  ∀ n, P11491537817010197338.a n = (A223277 (n + 1) : ℚ)

end A223277

/-! ## A223277.P17884348907621067770

`A223282(∑[n+3]+1)`
-/

namespace A223277.P17884348907621067770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223277.P17884348907621067770

namespace A223277

/-- `A223282(∑[n+3]+1)` -/
def P17884348907621067770.Spec : Prop :=
  ∀ n, P17884348907621067770.a n = A223277 (n + 1)

end A223277

/-!
# A223278: Rolling icosahedron face footprints: number of n X 4 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223278, there is no canonical definition to state claims against.
-/

/-! ## A223278.P11530332677915027998

`17*a(n-1)-36*a(n-2)` with `a(0)=27, a(1)=351`
-/

namespace A223278.P11530332677915027998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27, 351] fun n a =>
  17 * a (n - 1) - 36 * a (n - 2)

end

end A223278.P11530332677915027998

/-! ## A223278.P8727260924933304747

`A223282(A141214(n+1))`
-/

namespace A223278.P8727260924933304747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A141214 (n + 1)).toNat

end

end A223278.P8727260924933304747

/-! ## A223278.P12483471121163230601

`A223282(A055998(n+2))`
-/

namespace A223278.P12483471121163230601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A055998 (n + 2)).toNat

end

end A223278.P12483471121163230601

/-! ## A223278.P1495288204692581714

`A223282(A155212(n)+5)`
-/

namespace A223278.P1495288204692581714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A155212 n + 5).toNat

end

end A223278.P1495288204692581714

/-! ## A223278.P9394752651057287089

`A223282(A056000(n)+7)`
-/

namespace A223278.P9394752651057287089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A056000 n + 7).toNat

end

end A223278.P9394752651057287089

/-!
# A223279: Rolling icosahedron face footprints: number of n X 5 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223279, there is no canonical definition to state claims against.
-/

/-! ## A223279.P1944377074965610497

`A223282(Δ[A264443(n)])`
-/

namespace A223279.P1944377074965610497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (f1 (n + 1) - f1 n).toNat

end

end A223279.P1944377074965610497

/-! ## A223279.P11447152808015811626

`A223282(A046691(n+3))`
-/

namespace A223279.P11447152808015811626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A046691 (n + 3)).toNat

end

end A223279.P11447152808015811626

/-! ## A223279.P4793867404950507995

`A223282(eq[4, A193592(n)])`
-/

namespace A223279.P4793867404950507995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223279.P4793867404950507995

/-! ## A223279.P4474605209619931386

`A223282(eq[8, A140996(n)])`
-/

namespace A223279.P4474605209619931386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223279.P4474605209619931386

/-! ## A223279.P1832655698983065902

`A223282(Δ[A023545(n+1)])`
-/

namespace A223279.P1832655698983065902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (f1 (n + 1) - f1 n).toNat

end

end A223279.P1832655698983065902

/-!
# A223280: Rolling icosahedron face footprints: number of nX6 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223280, there is no canonical definition to state claims against.
-/

/-! ## A223280.P1383495943310195613

`A223282(A052905(n+3))`
-/

namespace A223280.P1383495943310195613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A052905 (n + 3)).toNat

end

end A223280.P1383495943310195613

/-! ## A223280.P6219662160332692895

`A223282(eq[3, A219347(n)])`
-/

namespace A223280.P6219662160332692895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223280.P6219662160332692895

/-! ## A223280.P10479966034142218910

`A223282(eq[5, A193592(n)])`
-/

namespace A223280.P10479966034142218910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223280.P10479966034142218910

/-! ## A223280.P4424115430642684537

`A223282(eq[16, A166065(n)])`
-/

namespace A223280.P4424115430642684537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223280.P4424115430642684537

/-! ## A223280.P273577578229113862

`A223282(eq[6, A200370(n+1)])`
-/

namespace A223280.P273577578229113862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223280.P273577578229113862

/-!
# A223281: Rolling icosahedron face footprints: number of nX7 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223281, there is no canonical definition to state claims against.
-/

/-! ## A223281.P4527322991601102956

`A223282(eq[4, A219347(n)])`
-/

namespace A223281.P4527322991601102956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223281.P4527322991601102956

/-! ## A223281.P8569009922071284695

`A223282(eq[6, A193592(n)])`
-/

namespace A223281.P8569009922071284695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223281.P8569009922071284695

/-! ## A223281.P11742667296757102807

`A223282(eq[7, A200370(n+1)])`
-/

namespace A223281.P11742667296757102807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223281.P11742667296757102807

/-! ## A223281.P1850562441559857244

`A223282(eq[10, A185782(n+1)])`
-/

namespace A223281.P1850562441559857244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223281.P1850562441559857244

/-! ## A223281.P9674280481068353753

`A223282(Δ[n²]+Δ[A264443(n)]+10)`
-/

namespace A223281.P9674280481068353753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (f2 (n + 1) - f2 n + 10)).toNat

end

end A223281.P9674280481068353753

/-!
# A223282: T(n,k)=Rolling icosahedron face footprints: number of nXk 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223282, there is no canonical definition to state claims against.
-/

/-! ## A223282.P1533718647197629238

`A223480(n+1)-A270256(A100793(n))`
-/

namespace A223282.P1533718647197629238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (n + 1) - A270256 (A100793 n).toNat

end

end A223282.P1533718647197629238

/-! ## A223282.P2763451025412292119

`A223480(n+1)-A331428(A293326(n))`
-/

namespace A223282.P2763451025412292119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (n + 1) - A331428 (A293326 n).toNat

end

end A223282.P2763451025412292119

/-!
# A223283: Rolling icosahedron face footprints: number of 2 X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223283, the canonical program `A223283.P16520387215469201581` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223283 has offset 1).

The definition of A223283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223283.P16520387215469201581

`3*a(n-1)+6*a(n-2)` with `a(0)=20, a(1)=15, a(2)=87`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223283

/-- `3*a(n-1)+6*a(n-2)` -/
def P16520387215469201581.Spec : Prop :=
  ∀ n, (P16520387215469201581.a n : ℤ) = A223283 (n + 1)

theorem P16520387215469201581.correct : P16520387215469201581.Spec := by
  intro n
  simp only [A223283, Nat.add_sub_cancel]

end A223283

/-! ## A223283.P2703052209387347209

`A223282(∑[n+1]+2)`
-/

namespace A223283.P2703052209387347209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223283.P2703052209387347209

namespace A223283

/-- `A223282(∑[n+1]+2)` -/
def P2703052209387347209.Spec : Prop :=
  ∀ n, P2703052209387347209.a n = A223283 (n + 1)

end A223283

/-! ## A223283.P15943011795200907100

`or(4, A223282(A133263(n+1)))`
-/

namespace A223283.P15943011795200907100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A223282 (A133263 (n + 1)).toNat)

end

end A223283.P15943011795200907100

namespace A223283

/-- `or(4, A223282(A133263(n+1)))` -/
def P15943011795200907100.Spec : Prop :=
  ∀ n, P15943011795200907100.a n = A223283 (n + 1)

end A223283

/-!
# A223284: Rolling icosahedron face footprints: number of 3 X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223284, there is no canonical definition to state claims against.
-/

/-! ## A223284.P166358852227163934

`A223282(∑[n+2]+4)`
-/

namespace A223284.P166358852227163934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223284.P166358852227163934

/-! ## A223284.P4736502207288256503

`A223282(A167614(n+1))+A185037(n)`
-/

namespace A223284.P4736502207288256503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A167614 (n + 1)).toNat + A185037 n

end

end A223284.P4736502207288256503

/-! ## A223284.P2166978245868748095

`A223282(A167614(n+1))+A185284(n)`
-/

namespace A223284.P2166978245868748095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A167614 (n + 1)).toNat + A185284 n

end

end A223284.P2166978245868748095

/-! ## A223284.P6119017944315515801

`lcm(A015343(n), A223282(A167614(n+1)))`
-/

namespace A223284.P6119017944315515801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015343 n) (A223282 (A167614 (n + 1)).toNat)

end

end A223284.P6119017944315515801

/-! ## A223284.P7496361933948604075

`or(A000035(n), A223282(A167614(n+1)))`
-/

namespace A223284.P7496361933948604075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A223282 (A167614 (n + 1)).toNat)

end

end A223284.P7496361933948604075

/-!
# A223285: Rolling icosahedron face footprints: number of 4 X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223285, there is no canonical definition to state claims against.
-/

/-! ## A223285.P2212864238826416476

`A223282(A141214(n)+7)`
-/

namespace A223285.P2212864238826416476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A141214 n + 7).toNat

end

end A223285.P2212864238826416476

/-! ## A223285.P13516275350997999388

`A223282(A052905(n)+9)`
-/

namespace A223285.P13516275350997999388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A052905 n + 9).toNat

end

end A223285.P13516275350997999388

/-! ## A223285.P10703266349857509075

`A223282(A055999(n)+10)`
-/

namespace A223285.P10703266349857509075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A055999 n + 10).toNat

end

end A223285.P10703266349857509075

/-! ## A223285.P16354626780263552335

`A223282(A167614(n+2)+1)`
-/

namespace A223285.P16354626780263552335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A167614 (n + 2) + 1).toNat

end

end A223285.P16354626780263552335

/-! ## A223285.P14306937561607661263

`A223282(A166136(n+2)-2)`
-/

namespace A223285.P14306937561607661263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A166136 (n + 2) - 2).toNat

end

end A223285.P14306937561607661263

/-!
# A223286: Rolling icosahedron face footprints: number of 5Xn 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223286, there is no canonical definition to state claims against.
-/

/-! ## A223286.P15272796240216498685

`A223282(A167499(n+3))`
-/

namespace A223286.P15272796240216498685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A167499 (n + 3)).toNat

end

end A223286.P15272796240216498685

/-! ## A223286.P12960666428397429114

`A223282(A155212(n)+13)`
-/

namespace A223286.P12960666428397429114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A155212 n + 13).toNat

end

end A223286.P12960666428397429114

/-! ## A223286.P2129692446448544776

`A223282(A056000(n)+15)`
-/

namespace A223286.P2129692446448544776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A056000 n + 15).toNat

end

end A223286.P2129692446448544776

/-! ## A223286.P5581282717588864346

`A223282(eq[7, A066657(n)])`
-/

namespace A223286.P5581282717588864346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223286.P5581282717588864346

/-! ## A223286.P5392812370262526373

`A223282(eq[6, A131818(n+1)])`
-/

namespace A223286.P5392812370262526373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223286.P5392812370262526373

/-!
# A223287: Rolling icosahedron face footprints: number of 6 X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223287, there is no canonical definition to state claims against.
-/

/-! ## A223287.P10581313809649874910

`A223282(A166136(n+4))`
-/

namespace A223287.P10581313809649874910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A166136 (n + 4)).toNat

end

end A223287.P10581313809649874910

/-! ## A223287.P9608226284090072335

`A223282(A056115(n)+21)`
-/

namespace A223287.P9608226284090072335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A056115 n + 21).toNat

end

end A223287.P9608226284090072335

/-! ## A223287.P14793214535804669355

`A223282(Δ[A264443(n)]+10)`
-/

namespace A223287.P14793214535804669355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (f1 (n + 1) - f1 n + 10).toNat

end

end A223287.P14793214535804669355

/-! ## A223287.P12174936738037218247

`A223282(A000217(n+5)+6)`
-/

namespace A223287.P12174936738037218247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A000217 (n + 5) + 6).toNat

end

end A223287.P12174936738037218247

/-! ## A223287.P16489862955611375880

`A223282(eq[7, A131818(n+1)])`
-/

namespace A223287.P16489862955611375880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223287.P16489862955611375880

/-!
# A223288: Rolling icosahedron face footprints: number of 7Xn 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal, diagonal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223288, there is no canonical definition to state claims against.
-/

/-! ## A223288.P9051266295192621491

`A223282(A056119(n)+28)`
-/

namespace A223288.P9051266295192621491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A056119 n + 28).toNat

end

end A223288.P9051266295192621491

/-! ## A223288.P2154272065608163669

`A223282(eq[11, A066657(n)])`
-/

namespace A223288.P2154272065608163669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223288.P2154272065608163669

/-! ## A223288.P14708754959099763071

`A223282(A167499(n+5)+2)`
-/

namespace A223288.P14708754959099763071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A167499 (n + 5) + 2).toNat

end

end A223288.P14708754959099763071

/-! ## A223288.P6098056730481244603

`A223282(A000217(n+6)+7)`
-/

namespace A223288.P6098056730481244603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A000217 (n + 6) + 7).toNat

end

end A223288.P6098056730481244603

/-! ## A223288.P16407278191136857494

`A223282(eq[8, A131818(n+1)])`
-/

namespace A223288.P16407278191136857494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223288.P16407278191136857494

/-!
# A223289: 4-loop graph coloring a rectangular array: number of n X n 0..8 arrays where 0..8 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 0,7 7,8 8,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223289, there is no canonical definition to state claims against.
-/

/-! ## A223289.P6548093638788679937

`A223297(∑[4*n]+1)`
-/

namespace A223289.P6548093638788679937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223289.P6548093638788679937

/-!
# A223290: 4-loop graph coloring a rectangular array: number of n X 1 0..8 arrays where 0..8 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 0,7 7,8 8,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223290, the canonical program `A223290.P10235978463499011789` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223290 has offset 1).

The definition of A223290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223290.P10235978463499011789

`a(n-1)+8*a(n-2)` with `a(0)=9, a(1)=24`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223290

/-- `a(n-1)+8*a(n-2)` -/
def P10235978463499011789.Spec : Prop :=
  ∀ n, (P10235978463499011789.a n : ℤ) = A223290 (n + 1)

theorem P10235978463499011789.correct : P10235978463499011789.Spec := by
  intro n
  simp only [A223290, Nat.add_sub_cancel]

end A223290

/-! ## A223290.P9018825677911548066

`A133479(n+2)-A133479(n)`
-/

namespace A223290.P9018825677911548066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133479 (n + 2) - A133479 n

end

end A223290.P9018825677911548066

namespace A223290

/-- `A133479(n+2)-A133479(n)` -/
def P9018825677911548066.Spec : Prop :=
  ∀ n, P9018825677911548066.a n = A223290 (n + 1)

end A223290

/-! ## A223290.P1586730304500569129

`Δ[A133479(n+1)+A133479(n)]`
-/

namespace A223290.P1586730304500569129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133479 (n + 1) + A133479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223290.P1586730304500569129

namespace A223290

/-- `Δ[A133479(n+1)+A133479(n)]` -/
def P1586730304500569129.Spec : Prop :=
  ∀ n, P1586730304500569129.a n = A223290 (n + 1)

end A223290

/-! ## A223290.P7366099816783735984

`A223297(∑[n]+1)`
-/

namespace A223290.P7366099816783735984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223290.P7366099816783735984

namespace A223290

/-- `A223297(∑[n]+1)` -/
def P7366099816783735984.Spec : Prop :=
  ∀ n, P7366099816783735984.a n = A223290 (n + 1)

end A223290

/-!
# A223291: 4-loop graph coloring a rectangular array: number of n X 2 0..8 arrays where 0..8 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 0,7 7,8 8,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223291, the canonical program `A223291.P7155115258008896642` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223291 has offset 1).

The definition of A223291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223291.P7155115258008896642

`9*a(n-1)-6*a(n-2)` with `a(0)=24, a(1)=168`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223291

/-- `9*a(n-1)-6*a(n-2)` -/
def P7155115258008896642.Spec : Prop :=
  ∀ n, P7155115258008896642.a n = A223291 (n + 1)

theorem P7155115258008896642.correct : P7155115258008896642.Spec := by
  intro n
  simp only [A223291, Nat.add_sub_cancel]

end A223291

/-! ## A223291.P6930887248864924818

`A223297(∑[n+1]+2)`
-/

namespace A223291.P6930887248864924818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223291.P6930887248864924818

namespace A223291

/-- `A223297(∑[n+1]+2)` -/
def P6930887248864924818.Spec : Prop :=
  ∀ n, P6930887248864924818.a n = A223291 (n + 1)

end A223291

/-! ## A223291.P12991512225736524744

`record[root(A223297(n+2), A074909(n))]`
-/

namespace A223291.P12991512225736524744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223297 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223291.P12991512225736524744

namespace A223291

/-- `record[root(A223297(n+2), A074909(n))]` -/
def P12991512225736524744.Spec : Prop :=
  ∀ n, P12991512225736524744.a n = (A223291 (n + 1) : ℝ)

end A223291

/-! ## A223291.P831116741061257165

`record[gcd(A166065(n+1), A223297(n+3))]`
-/

namespace A223291.P831116741061257165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166065 (n + 1)) (A223297 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223291.P831116741061257165

namespace A223291

/-- `record[gcd(A166065(n+1), A223297(n+3))]` -/
def P831116741061257165.Spec : Prop :=
  ∀ n, (P831116741061257165.a n : ℤ) = A223291 (n + 1)

end A223291

/-! ## A223291.P1989219534444200882

`record[A223297(Δ[A003453(n+5)])]`
-/

namespace A223291.P1989219534444200882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223291.P1989219534444200882

namespace A223291

/-- `record[A223297(Δ[A003453(n+5)])]` -/
def P1989219534444200882.Spec : Prop :=
  ∀ n, P1989219534444200882.a n = A223291 (n + 1)

end A223291

/-!
# A223292: 4-loop graph coloring a rectangular array: number of n X 3 0..8 arrays where 0..8 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 0,7 7,8 8,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223292, there is no canonical definition to state claims against.
-/

/-! ## A223292.P7655844570334207731

`A223297(∑[n+2]+4)`
-/

namespace A223292.P7655844570334207731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223292.P7655844570334207731

/-! ## A223292.P3277711549860763758

`lcm(2, A223297(A167614(n+1)))`
-/

namespace A223292.P3277711549860763758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223297 (A167614 (n + 1)).toNat)

end

end A223292.P3277711549860763758

/-! ## A223292.P2384253490763156687

`A223297(A167614(n+1))+A025444(n)`
-/

namespace A223292.P2384253490763156687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A167614 (n + 1)).toNat + A025444 n

end

end A223292.P2384253490763156687

/-! ## A223292.P13362830925594892326

`A223297(A167614(n+1))%A223293(n+1)`
-/

namespace A223292.P13362830925594892326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223297 (A167614 (n + 1)).toNat) (A223293 (n + 1))

end

end A223292.P13362830925594892326

/-! ## A223292.P11812848961076388245

`record[A223297(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A223292.P11812848961076388245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223292.P11812848961076388245

/-!
# A223293: 4-loop graph coloring a rectangular array: number of nX4 0..8 arrays where 0..8 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 0,7 7,8 8,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223293, there is no canonical definition to state claims against.
-/

/-! ## A223293.P2659174266549054175

`A223297(A052905(n)+9)`
-/

namespace A223293.P2659174266549054175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A052905 n + 9).toNat

end

end A223293.P2659174266549054175

/-! ## A223293.P18350641447923427499

`A223297(A055999(n)+10)`
-/

namespace A223293.P18350641447923427499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A055999 n + 10).toNat

end

end A223293.P18350641447923427499

/-! ## A223293.P768929978655163261

`A223297(A167614(n+2)+1)`
-/

namespace A223293.P768929978655163261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A167614 (n + 2) + 1).toNat

end

end A223293.P768929978655163261

/-! ## A223293.P2806946467118327515

`A223297(A112355(n+1)+4)`
-/

namespace A223293.P2806946467118327515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A112355 (n + 1) + 4).toNat

end

end A223293.P2806946467118327515

/-! ## A223293.P7471235996956340951

`A223297(eq[3, A002262(n)]+1)`
-/

namespace A223293.P7471235996956340951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223293.P7471235996956340951

/-!
# A223294: 4-loop graph coloring a rectangular array: number of nX5 0..8 arrays where 0..8 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 0,7 7,8 8,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223294, there is no canonical definition to state claims against.
-/

/-! ## A223294.P7066390803521768322

`A223297(A374005(n+1))`
-/

namespace A223294.P7066390803521768322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A374005 (n + 1)).toNat

end

end A223294.P7066390803521768322

/-! ## A223294.P8402520591535102441

`A223297(Δ[A023545(n+1)])`
-/

namespace A223294.P8402520591535102441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (f1 (n + 1) - f1 n).toNat

end

end A223294.P8402520591535102441

/-!
# A223295: 4-loop graph coloring a rectangular array: number of nX6 0..8 arrays where 0..8 label nodes of a graph with edges 0,1 1,2 2,0 0,3 3,4 4,0 0,5 5,6 6,0 0,7 7,8 8,0 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223295, there is no canonical definition to state claims against.
-/

/-! ## A223295.P17221851244985595445

`A223297(A000217(n+5)+6)`
-/

namespace A223295.P17221851244985595445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A000217 (n + 5) + 6).toNat

end

end A223295.P17221851244985595445

/-! ## A223295.P5977880200402906723

`A223297(A374007(n+1))`
-/

namespace A223295.P5977880200402906723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A374007 (n + 1)).toNat

end

end A223295.P5977880200402906723

/-! ## A223295.P17962757496211636169

`A223297(eq[16, A166065(n)])`
-/

namespace A223295.P17962757496211636169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223295.P17962757496211636169

/-! ## A223295.P6961385644980160046

`A223297(Δ[A023545(n+2)]-1)`
-/

namespace A223295.P6961385644980160046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (f1 (n + 1) - f1 n - 1).toNat

end

end A223295.P6961385644980160046

/-!
# A223296: 

The programs for A223296, there is no canonical definition to state claims against.
-/

/-! ## A223296.P16591970029834314238

`A223297(eq[7, A025581(n)]-2*n)`
-/

namespace A223296.P16591970029834314238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A223296.P16591970029834314238

/-! ## A223296.P9644913032975336900

`A223297(A052905(n+4)-1)`
-/

namespace A223296.P9644913032975336900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A052905 (n + 4) - 1).toNat

end

end A223296.P9644913032975336900

/-! ## A223296.P4419410656150876824

`A223297(A000217(n+6)+n+1)`
-/

namespace A223296.P4419410656150876824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223297 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A223296.P4419410656150876824

/-!
# A223298: 4X4X4 triangular graph coloring a rectangular array: number of n X n 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223298, there is no canonical definition to state claims against.
-/

/-! ## A223298.P12359864656840516015

`A223305((n+1)²+n²)`
-/

namespace A223298.P12359864656840516015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 ((n + 1) ^ 2 + n ^ 2)

end

end A223298.P12359864656840516015

/-!
# A223299: 4 X 4 X 4 triangular graph coloring a rectangular array: number of n X 2 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223299, the canonical program `A223299.P2803462563803056230` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223299 has offset 1).

The definition of A223299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223299.P2803462563803056230

`11*a(n-1)-12*a(n-2)` with `a(0)=36, a(1)=324`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A223299

/-- `11*a(n-1)-12*a(n-2)` -/
def P2803462563803056230.Spec : Prop :=
  ∀ n, P2803462563803056230.a n = A223299 (n + 1)

theorem P2803462563803056230.correct : P2803462563803056230.Spec := by
  intro n
  simp only [A223299, Nat.add_sub_cancel]

end A223299

/-! ## A223299.P12320076412395129854

`A223305(∑[n+1]+2)`
-/

namespace A223299.P12320076412395129854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223299.P12320076412395129854

namespace A223299

/-- `A223305(∑[n+1]+2)` -/
def P12320076412395129854.Spec : Prop :=
  ∀ n, P12320076412395129854.a n = A223299 (n + 1)

end A223299

/-! ## A223299.P6365546743361707677

`record[A223305(A152948(A002260(n+1)))]`
-/

namespace A223299.P6365546743361707677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A152948 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223299.P6365546743361707677

namespace A223299

/-- `record[A223305(A152948(A002260(n+1)))]` -/
def P6365546743361707677.Spec : Prop :=
  ∀ n, P6365546743361707677.a n = A223299 (n + 1)

end A223299

/-! ## A223299.P6794536305983655100

`record[A223305(A152948(A003963(n+1)))]`
-/

namespace A223299.P6794536305983655100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A152948 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223299.P6794536305983655100

namespace A223299

/-- `record[A223305(A152948(A003963(n+1)))]` -/
def P6794536305983655100.Spec : Prop :=
  ∀ n, P6794536305983655100.a n = A223299 (n + 1)

end A223299

/-! ## A223299.P3719228326577754439

`record[A223305(abs(A201163(n)))]`
-/

namespace A223299.P3719228326577754439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223299.P3719228326577754439

namespace A223299

/-- `record[A223305(abs(A201163(n)))]` -/
def P3719228326577754439.Spec : Prop :=
  ∀ n, P3719228326577754439.a n = A223299 (n + 1)

end A223299

