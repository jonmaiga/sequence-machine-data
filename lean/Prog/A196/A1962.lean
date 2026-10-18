import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A196202: a(n) = 2^(prime(n)-1) mod prime(n)^2.

The programs for A196202, there is no canonical definition to state claims against.
-/

/-! ## A196202.P13855363730709469028

`A271234(n+1)%A001248(n+1)`
-/

namespace A196202.P13855363730709469028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271234 (n + 1)) (A001248 (n + 1))

end

end A196202.P13855363730709469028

/-! ## A196202.P10545669966479919951

`A220105(p?[comp[n²]])`
-/

namespace A196202.P10545669966479919951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A196202.P10545669966479919951

/-! ## A196202.P6869913031578697676

`A077815(A000040(n+1))`
-/

namespace A196202.P6869913031578697676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077815 (A000040 (n + 1)).toNat

end

end A196202.P6869913031578697676

/-! ## A196202.P12430567825525608596

`A077815(A008578(n+2))`
-/

namespace A196202.P12430567825525608596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077815 (A008578 (n + 2)).toNat

end

end A196202.P12430567825525608596

/-! ## A196202.P17547872353282195596

`A077815(A182986(n+2))`
-/

namespace A196202.P17547872353282195596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077815 (A182986 (n + 2)).toNat

end

end A196202.P17547872353282195596

/-! ## A196202.P2695554078175429707

`A220105(eq[1, A105700(n)])`
-/

namespace A196202.P2695554078175429707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196202.P2695554078175429707

/-! ## A196202.P13137068279803516860

`A077815(record[A006530(n+2)])`
-/

namespace A196202.P13137068279803516860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077815 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P13137068279803516860

/-! ## A196202.P14178664138468700336

`A077815(record[A014963(n+2)])`
-/

namespace A196202.P14178664138468700336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077815 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P14178664138468700336

/-! ## A196202.P12470402928045359779

`A077815(record[A020639(n+2)])`
-/

namespace A196202.P12470402928045359779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077815 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P12470402928045359779

/-! ## A196202.P14867835470636570537

`A220105(record[A006530(n+2)])`
-/

namespace A196202.P14867835470636570537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P14867835470636570537

/-! ## A196202.P16206693534449895024

`A220105(record[A014963(n+2)])`
-/

namespace A196202.P16206693534449895024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P16206693534449895024

/-! ## A196202.P2875830189600472094

`A220105(record[A020639(n+2)])`
-/

namespace A196202.P2875830189600472094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P2875830189600472094

/-! ## A196202.P2753862656116161474

`A220105(A006093(n+1)+1)`
-/

namespace A196202.P2753862656116161474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (A006093 (n + 1) + 1).toNat

end

end A196202.P2753862656116161474

/-! ## A196202.P12509466288687439208

`A220105(record[p?[A220137(n+2)]])`
-/

namespace A196202.P12509466288687439208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220137 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P12509466288687439208

/-! ## A196202.P17795825828039892752

`A220105(record[A220096(n+2)+1])`
-/

namespace A196202.P17795825828039892752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P17795825828039892752

/-! ## A196202.P6299058504246841977

`A220105(eq[1, A001222(n+1)]+1)`
-/

namespace A196202.P6299058504246841977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A196202.P6299058504246841977

/-! ## A196202.P3463777094802764241

`A220105(lt[1, A105700(2*n)])`
-/

namespace A196202.P3463777094802764241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A196202.P3463777094802764241

/-! ## A196202.P3503934694911621194

`A220105(eq[2, A284289(2*n)])`
-/

namespace A196202.P3503934694911621194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196202.P3503934694911621194

/-! ## A196202.P17734911353786394046

`A220105(record[p?[A220096(n+1)]])`
-/

namespace A196202.P17734911353786394046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196202.P17734911353786394046

/-!
# A196203: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,3,4,1 for x=0,1,2,3,4.

The programs for A196203, there is no canonical definition to state claims against.
-/

/-! ## A196203.P9426417841912017418

`A196210(∑[4*n]+1)`
-/

namespace A196203.P9426417841912017418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196203.P9426417841912017418

/-! ## A196203.P7993638875244819683

`and(-1, A196210(A001844(n)))`
-/

namespace A196203.P7993638875244819683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A196210 (A001844 n).toNat)

end

end A196203.P7993638875244819683

/-! ## A196203.P6400552834800240375

`record[A196210(A001844(∑{digits}[n, #]))]`
-/

namespace A196203.P6400552834800240375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196203.P6400552834800240375

/-! ## A196203.P6668301413260482331

`record[gcd(A196210(n+1), A204016(n+1))]`
-/

namespace A196203.P6668301413260482331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196210 (n + 1)) (A204016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196203.P6668301413260482331

/-! ## A196203.P4718343906491675295

`record[gcd(A196199(n), A196210(2*n+1))]`
-/

namespace A196203.P4718343906491675295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196199 n) (A196210 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196203.P4718343906491675295

/-!
# A196204: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,4,1 for x=0,1,2,3,4.

The programs for A196204, the canonical program `A196204.P7096902526240260792` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196204 has offset 1).

The definition of A196204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196204.P7096902526240260792

`2*a(n-1)-a(n-4)-a(n-5)` with `a(0)=3, a(1)=5, a(2)=8, a(3)=11, a(4)=18`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A196204

/-- `2*a(n-1)-a(n-4)-a(n-5)` -/
def P7096902526240260792.Spec : Prop :=
  ∀ n, P7096902526240260792.a n = A196204 (n + 1)

theorem P7096902526240260792.correct : P7096902526240260792.Spec := by
  intro n
  simp only [A196204, Nat.add_sub_cancel]

end A196204

/-! ## A196204.P15887219562166262386

`A288429(n)+A001595(n)`
-/

namespace A196204.P15887219562166262386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288429 n + A001595 n

end

end A196204.P15887219562166262386

namespace A196204

/-- `A288429(n)+A001595(n)` -/
def P15887219562166262386.Spec : Prop :=
  ∀ n, P15887219562166262386.a n = A196204 (n + 1)

end A196204

/-! ## A196204.P9695326128023501615

`A288429(n)+∑[A006355(n)]`
-/

namespace A196204.P9695326128023501615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288429 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196204.P9695326128023501615

namespace A196204

/-- `A288429(n)+∑[A006355(n)]` -/
def P9695326128023501615.Spec : Prop :=
  ∀ n, P9695326128023501615.a n = A196204 (n + 1)

end A196204

/-! ## A196204.P12237968876917234503

`record[A179070(n+1)+A118658(n)]`
-/

namespace A196204.P12237968876917234503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 1) + A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196204.P12237968876917234503

namespace A196204

/-- `record[A179070(n+1)+A118658(n)]` -/
def P12237968876917234503.Spec : Prop :=
  ∀ n, P12237968876917234503.a n = A196204 (n + 1)

end A196204

/-! ## A196204.P2991178960501077755

`A006355(n+2)+A288429(n)-1`
-/

namespace A196204.P2991178960501077755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 2) + (A288429 n - 1)

end

end A196204.P2991178960501077755

namespace A196204

/-- `A006355(n+2)+A288429(n)-1` -/
def P2991178960501077755.Spec : Prop :=
  ∀ n, P2991178960501077755.a n = A196204 (n + 1)

end A196204

/-! ## A196204.P14613637670990234268

`A179070(n+3)+A006355(n+2)`
-/

namespace A196204.P14613637670990234268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 3) + A006355 (n + 2)

end

end A196204.P14613637670990234268

namespace A196204

/-- `A179070(n+3)+A006355(n+2)` -/
def P14613637670990234268.Spec : Prop :=
  ∀ n, P14613637670990234268.a n = A196204 (n + 1)

end A196204

/-!
# A196205: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,4,1 for x=0,1,2,3,4.

The programs for A196205, there is no canonical definition to state claims against.
-/

/-! ## A196205.P14741259644368912594

`A196210(∑[n+2]+4)`
-/

namespace A196205.P14741259644368912594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196205.P14741259644368912594

/-! ## A196205.P12717222233070538209

`and(-1, A196210(A167614(n+1)))`
-/

namespace A196205.P12717222233070538209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A196210 (A167614 (n + 1)).toNat)

end

end A196205.P12717222233070538209

/-! ## A196205.P18138119099791784492

`A196210(A167499(n)+n)+char[36]`
-/

namespace A196205.P18138119099791784492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196205.P18138119099791784492

/-! ## A196205.P9703363925545310671

`A196210(A167614(n+1))+A185264(n)`
-/

namespace A196205.P9703363925545310671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A167614 (n + 1)).toNat + A185264 n

end

end A196205.P9703363925545310671

/-! ## A196205.P15548420988643341414

`A196210(A167614(n+1))+A185284(n)`
-/

namespace A196205.P15548420988643341414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A167614 (n + 1)).toNat + A185284 n

end

end A196205.P15548420988643341414

/-!
# A196206: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,4,1 for x=0,1,2,3,4.

The programs for A196206, there is no canonical definition to state claims against.
-/

/-! ## A196206.P6312153376794449062

`A196210(∑[n+3]+7)`
-/

namespace A196206.P6312153376794449062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A196206.P6312153376794449062

/-! ## A196206.P6759840257633846702

`or(char[1], A196210(A052905(n)+9))`
-/

namespace A196206.P6759840257633846702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196210 (A052905 n + 9).toNat)

end

end A196206.P6759840257633846702

/-! ## A196206.P653977151419913670

`record[gcd(A196199(2*(n+1)), A196210(n+5))]`
-/

namespace A196206.P653977151419913670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196199 (2 * (n + 1))) (A196210 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196206.P653977151419913670

/-! ## A196206.P7831380415347374722

`A007318(C(2, n))*A196210(A052905(n)+9)`
-/

namespace A196206.P7831380415347374722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A196210 (A052905 n + 9).toNat

end

end A196206.P7831380415347374722

/-! ## A196206.P12700001756290035476

`A196210(A052905(n)+9)/A007318(C(n, 41))`
-/

namespace A196206.P12700001756290035476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196210 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose n 41) : ℚ)

end

end A196206.P12700001756290035476

/-!
# A196207: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,4,1 for x=0,1,2,3,4.

The programs for A196207, there is no canonical definition to state claims against.
-/

/-! ## A196207.P3259004354594445564

`A196210(A167499(n+3))`
-/

namespace A196207.P3259004354594445564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A167499 (n + 3)).toNat

end

end A196207.P3259004354594445564

/-! ## A196207.P11733848953989793949

`A196210(A155212(n)+13)`
-/

namespace A196207.P11733848953989793949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A155212 n + 13).toNat

end

end A196207.P11733848953989793949

/-! ## A196207.P17087318692076213696

`A196210(A056000(n)+15)`
-/

namespace A196207.P17087318692076213696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A056000 n + 15).toNat

end

end A196207.P17087318692076213696

/-! ## A196207.P14017003917223314872

`A196210(A167614(n+3)+2)`
-/

namespace A196207.P14017003917223314872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A167614 (n + 3) + 2).toNat

end

end A196207.P14017003917223314872

/-! ## A196207.P7783511862750418054

`A196210(A000124(n+4)+4)`
-/

namespace A196207.P7783511862750418054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A000124 (n + 4) + 4).toNat

end

end A196207.P7783511862750418054

/-!
# A196208: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,4,1 for x=0,1,2,3,4.

The programs for A196208, there is no canonical definition to state claims against.
-/

/-! ## A196208.P17692061165731730029

`A196210(A166136(n+4))`
-/

namespace A196208.P17692061165731730029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A166136 (n + 4)).toNat

end

end A196208.P17692061165731730029

/-! ## A196208.P17061042247395021942

`A196210(A056115(n)+21)`
-/

namespace A196208.P17061042247395021942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A056115 n + 21).toNat

end

end A196208.P17061042247395021942

/-! ## A196208.P194733781422174013

`A196210(A000124(n+5)+5)`
-/

namespace A196208.P194733781422174013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A000124 (n + 5) + 5).toNat

end

end A196208.P194733781422174013

/-! ## A196208.P1569092883724114063

`A196210(A000096(n+4)+7)`
-/

namespace A196208.P1569092883724114063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A000096 (n + 4) + 7).toNat

end

end A196208.P1569092883724114063

/-! ## A196208.P10312232276586123852

`A196210(A000217(n+5)+6)`
-/

namespace A196208.P10312232276586123852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A000217 (n + 5) + 6).toNat

end

end A196208.P10312232276586123852

/-!
# A196209: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,4,1 for x=0,1,2,3,4.

The programs for A196209, there is no canonical definition to state claims against.
-/

/-! ## A196209.P10441657938681916462

`A196210(A056119(n)+28)`
-/

namespace A196209.P10441657938681916462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A056119 n + 28).toNat

end

end A196209.P10441657938681916462

/-! ## A196209.P16163567942222197417

`A196210(A000124(n+6)+6)`
-/

namespace A196209.P16163567942222197417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A000124 (n + 6) + 6).toNat

end

end A196209.P16163567942222197417

/-! ## A196209.P4741259508318723386

`A196210(A000096(n+5)+8)`
-/

namespace A196209.P4741259508318723386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A000096 (n + 5) + 8).toNat

end

end A196209.P4741259508318723386

/-! ## A196209.P17238038959654933448

`A196210(A000217(n+6)+7)`
-/

namespace A196209.P17238038959654933448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A000217 (n + 6) + 7).toNat

end

end A196209.P17238038959654933448

/-! ## A196209.P14755923194195417670

`A196210(A034856(n+5)+9)`
-/

namespace A196209.P14755923194195417670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196210 (A034856 (n + 5) + 9).toNat

end

end A196209.P14755923194195417670

/-!
# A196210: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,3,4,1 for x=0,1,2,3,4.

The programs for A196210, there is no canonical definition to state claims against.
-/

/-! ## A196210.P2147620726956680500

`A196477(n+1)%A138667(n+1)`
-/

namespace A196210.P2147620726956680500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196477 (n + 1)) (A138667 (n + 1))

end

end A196210.P2147620726956680500

/-! ## A196210.P14986846484015438645

`A196477(n+1)+A010815(A238057(n+1))`
-/

namespace A196210.P14986846484015438645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (n + 1) + A010815 (A238057 (n + 1)).toNat

end

end A196210.P14986846484015438645

/-! ## A196210.P18178219844349902945

`A196477(n+1)+A185284(A070678(n+1))`
-/

namespace A196210.P18178219844349902945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (n + 1) + A185284 (A070678 (n + 1)).toNat

end

end A196210.P18178219844349902945

/-! ## A196210.P13098374595193327238

`A196477(n+1)+A000007(A261352(n+1))`
-/

namespace A196210.P13098374595193327238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (n + 1) + A000007 (A261352 (n + 1)).toNat

end

end A196210.P13098374595193327238

/-! ## A196210.P559470017766840314

`A010684(A207845(n+1))*A196477(n+1)`
-/

namespace A196210.P559470017766840314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A207845 (n + 1)).toNat * A196477 (n + 1)

end

end A196210.P559470017766840314

/-!
# A196211: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,1,2,4 for x=0,1,2,3,4.

The programs for A196211, there is no canonical definition to state claims against.
-/

/-! ## A196211.P15858890153329631998

`A196218(∑[4*n]+1)`
-/

namespace A196211.P15858890153329631998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196211.P15858890153329631998

/-! ## A196211.P3449271480828444234

`record[A196218(A152271(n²))]`
-/

namespace A196211.P3449271480828444234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196211.P3449271480828444234

/-! ## A196211.P8077787586581878564

`record[A196218(Δ[A235355(n)])]`
-/

namespace A196211.P8077787586581878564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196211.P8077787586581878564

/-! ## A196211.P9128268696594077928

`and(-1, A196218(A001844(n)))`
-/

namespace A196211.P9128268696594077928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A196218 (A001844 n).toNat)

end

end A196211.P9128268696594077928

/-!
# A196212: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,2,4 for x=0,1,2,3,4.

The programs for A196212, there is no canonical definition to state claims against.
-/

/-! ## A196212.P16867953214335992798

`A196218(∑[n+1]+2)`
-/

namespace A196212.P16867953214335992798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196212.P16867953214335992798

/-! ## A196212.P9025067540735322601

`A196685(∑[n+1]+2)`
-/

namespace A196212.P9025067540735322601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196212.P9025067540735322601

/-! ## A196212.P3291758839382179361

`A196218(A000096(n)+3)+char[16]`
-/

namespace A196212.P3291758839382179361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196212.P3291758839382179361

/-! ## A196212.P16028393487833180550

`record[gcd(A002262(n), A196218(n+2))]`
-/

namespace A196212.P16028393487833180550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A196218 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196212.P16028393487833180550

/-! ## A196212.P7165023928969154913

`record[gcd(A092921(n), A196218(n+3))]`
-/

namespace A196212.P7165023928969154913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A196218 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196212.P7165023928969154913

/-!
# A196213: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,2,4 for x=0,1,2,3,4.

The programs for A196213, there is no canonical definition to state claims against.
-/

/-! ## A196213.P18365501657218701337

`A196218(∑[n+2]+4)`
-/

namespace A196213.P18365501657218701337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196213.P18365501657218701337

/-! ## A196213.P15316172701281581569

`and(-1, A196218(A167614(n+1)))`
-/

namespace A196213.P15316172701281581569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A196218 (A167614 (n + 1)).toNat)

end

end A196213.P15316172701281581569

/-! ## A196213.P14747867443692284452

`record[A196218(n+4)/A060923(n)]`
-/

namespace A196213.P14747867443692284452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196218 (n + 4) : ℚ) / (A060923 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196213.P14747867443692284452

/-! ## A196213.P8489596925961189738

`record[A196218(n+4)/A266101(n+1)]`
-/

namespace A196213.P8489596925961189738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196218 (n + 4) : ℚ) / (A266101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196213.P8489596925961189738

/-! ## A196213.P10450985481324010258

`A196218(A167614(n+1))+A011731(n)`
-/

namespace A196213.P10450985481324010258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A167614 (n + 1)).toNat + A011731 n

end

end A196213.P10450985481324010258

/-!
# A196214: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,2,4 for x=0,1,2,3,4.

The programs for A196214, there is no canonical definition to state claims against.
-/

/-! ## A196214.P9116775556456858775

`A196218(∑[n+3]+7)`
-/

namespace A196214.P9116775556456858775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A196214.P9116775556456858775

/-!
# A196215: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,2,4 for x=0,1,2,3,4.

The programs for A196215, there is no canonical definition to state claims against.
-/

/-! ## A196215.P3470001039387471738

`A196218(A374005(n+1))`
-/

namespace A196215.P3470001039387471738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A374005 (n + 1)).toNat

end

end A196215.P3470001039387471738

/-! ## A196215.P1345125111374642993

`A196218(A167499(n+3))`
-/

namespace A196215.P1345125111374642993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A167499 (n + 3)).toNat

end

end A196215.P1345125111374642993

/-! ## A196215.P16177895486009553619

`A196218(A155212(n)+13)`
-/

namespace A196215.P16177895486009553619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A155212 n + 13).toNat

end

end A196215.P16177895486009553619

/-! ## A196215.P12785949205930372381

`A196218(A056000(n)+15)`
-/

namespace A196215.P12785949205930372381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A056000 n + 15).toNat

end

end A196215.P12785949205930372381

/-! ## A196215.P9089931292404248404

`A196218(eq[7, A066657(n)])`
-/

namespace A196215.P9089931292404248404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196215.P9089931292404248404

/-!
# A196216: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,2,4 for x=0,1,2,3,4.

The programs for A196216, there is no canonical definition to state claims against.
-/

/-! ## A196216.P15920406203322918465

`A196218(A374007(n+1))`
-/

namespace A196216.P15920406203322918465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A374007 (n + 1)).toNat

end

end A196216.P15920406203322918465

/-! ## A196216.P11804182525817182043

`A196218(A166136(n+4))`
-/

namespace A196216.P11804182525817182043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A166136 (n + 4)).toNat

end

end A196216.P11804182525817182043

/-! ## A196216.P4929146165640893229

`A196218(A167499(n+4)+1)`
-/

namespace A196216.P4929146165640893229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A167499 (n + 4) + 1).toNat

end

end A196216.P4929146165640893229

/-! ## A196216.P14709941441567590950

`A196218(A167614(n+4)+3)`
-/

namespace A196216.P14709941441567590950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A167614 (n + 4) + 3).toNat

end

end A196216.P14709941441567590950

/-! ## A196216.P10530421757673549118

`A196218(A141214(n+2)+9)`
-/

namespace A196216.P10530421757673549118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A141214 (n + 2) + 9).toNat

end

end A196216.P10530421757673549118

/-!
# A196217: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,2,4 for x=0,1,2,3,4.

The programs for A196217, there is no canonical definition to state claims against.
-/

/-! ## A196217.P4027372918018243952

`A196218(A374008(n+1))`
-/

namespace A196217.P4027372918018243952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A374008 (n + 1)).toNat

end

end A196217.P4027372918018243952

/-! ## A196217.P4260739294007478511

`A196218(A056119(n)+28)`
-/

namespace A196217.P4260739294007478511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A056119 n + 28).toNat

end

end A196217.P4260739294007478511

/-! ## A196217.P13258876272234284087

`A196218(A000096(n+5)+8)`
-/

namespace A196217.P13258876272234284087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A000096 (n + 5) + 8).toNat

end

end A196217.P13258876272234284087

/-! ## A196217.P13820066614421847780

`A196218(eq[8, A131818(n+1)])`
-/

namespace A196217.P13820066614421847780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196217.P13820066614421847780

/-! ## A196217.P1972022070648862941

`A196218(A055999(n+4))`
-/

namespace A196217.P1972022070648862941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A055999 (n + 4)).toNat

end

end A196217.P1972022070648862941

/-!
# A196218: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,1,2,4 for x=0,1,2,3,4.

The programs for A196218, there is no canonical definition to state claims against.
-/

/-! ## A196218.P7468390825030595575

`A196685(n+1)-A185044(A128545(n))`
-/

namespace A196218.P7468390825030595575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (n + 1) - A185044 (A128545 n).toNat

end

end A196218.P7468390825030595575

/-! ## A196218.P1321053603285624296

`A196685(n+1)-A185234(A278657(n))`
-/

namespace A196218.P1321053603285624296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (n + 1) - A185234 (A278657 n).toNat

end

end A196218.P1321053603285624296

/-! ## A196218.P8702996654687436501

`A280618(A185274(n)*A280618(n))+A196300(n+1)`
-/

namespace A196218.P8702996654687436501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A185274 n * A280618 n).toNat + A196300 (n + 1)

end

end A196218.P8702996654687436501

/-! ## A196218.P13061675282258979073

`A196300(n+1)+A071692(A185274(n))`
-/

namespace A196218.P13061675282258979073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (n + 1) + A071692 (A185274 n).toNat

end

end A196218.P13061675282258979073

/-! ## A196218.P6084394328334135504

`A196300(n+1)-A301979(A014761(n+1))`
-/

namespace A196218.P6084394328334135504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (n + 1) - A301979 (A014761 (n + 1)).toNat

end

end A196218.P6084394328334135504

/-!
# A196221: a(n) = binomial(n+10, 10)*9^n.

The programs for A196221, there is no canonical definition to state claims against.
-/

/-! ## A196221.P11534992056311932748

`9^n*C(n+10, 10)`
-/

namespace A196221.P11534992056311932748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * Nat.choose (n + 10) 10

end

end A196221.P11534992056311932748

/-! ## A196221.P14297869956510642013

`C(n+10, 10)/(3^-n)²`
-/

namespace A196221.P14297869956510642013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 10) 10 : ℚ) / ((3 : ℚ) ^ (-(n : ℤ) : ℤ)) ^ 2

end

end A196221.P14297869956510642013

/-! ## A196221.P1029622644327622720

`3*(30/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A196221.P1029622644327622720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((30 / (n : ℚ) + 3) * a (n - 1))

end

end A196221.P1029622644327622720

/-! ## A196221.P3923366382076314278

`3^n*A172362(n)`
-/

namespace A196221.P3923366382076314278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A172362 n

end

end A196221.P3923366382076314278

/-! ## A196221.P3539723680661363310

`9^n*A001287(n)`
-/

namespace A196221.P3539723680661363310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A001287 (n + 10)

end

end A196221.P3539723680661363310

/-! ## A196221.P17805895833152525159

`9^n*∑[A000582(n+9)]`
-/

namespace A196221.P17805895833152525159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196221.P17805895833152525159

/-! ## A196221.P6607773528325051488

`A013616(eq[11, A004736(n+1)])`
-/

namespace A196221.P6607773528325051488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196221.P6607773528325051488

/-! ## A196221.P11578729530580009053

`A038291(eq[11, A002260(n+1)])`
-/

namespace A196221.P11578729530580009053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196221.P11578729530580009053

/-! ## A196221.P14749873866264288138

`∑[A000582(n+9)]*A001019(n)`
-/

namespace A196221.P14749873866264288138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001019 n

end

end A196221.P14749873866264288138

/-! ## A196221.P14063696542953847418

`∑[A000582(n+9)]*A000244(n)²`
-/

namespace A196221.P14063696542953847418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n ^ 2

end

end A196221.P14063696542953847418

/-!
# A196222: a(n) = A047726(n)^A047726(n), where A047726(n) is the number of numbers which can be written with n's digits.

The programs for A196222, there is no canonical definition to state claims against.
-/

/-! ## A196222.P9186615974721861583

`A047726(A028310(n))^A047726(A028310(n))`
-/

namespace A196222.P9186615974721861583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047726 (A028310 n).toNat : ℚ) ^ (A047726 (A028310 n).toNat : ℤ)

end

end A196222.P9186615974721861583

/-! ## A196222.P1569074890597762188

`A047726(A233583(n+1))^A047726(A233583(n+1))`
-/

namespace A196222.P1569074890597762188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047726 (A233583 (n + 1)).toNat : ℚ) ^ (A047726 (A233583 (n + 1)).toNat : ℤ)

end

end A196222.P1569074890597762188

/-! ## A196222.P16520988444159770737

`A043562(A118759(n))^A055642(n)`
-/

namespace A196222.P16520988444159770737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043562 (A118759 n).toNat : ℚ) ^ (A055642 n : ℤ)

end

end A196222.P16520988444159770737

/-! ## A196222.P5013090701257557713

`(2-∑{p}[n^3, val(#, 11)]^floor(n/10))²`
-/

namespace A196222.P5013090701257557713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 10⌋ : ℤ)) ^ 2

end

end A196222.P5013090701257557713

/-! ## A196222.P11241829780273679352

`(∑{p}[n^3, val(#, 11)]-∑{digits}[n, (#%2)!])²`
-/

namespace A196222.P11241829780273679352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum : ℕ) : ℤ)) ^ 2

end

end A196222.P11241829780273679352

/-! ## A196222.P10592142750221612239

`dr(∑{p}[n^3, val(#, 11)]-∑{digits}[n, 10^#])²`
-/

namespace A196222.P10592142750221612239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ)) ^ 2

end

end A196222.P10592142750221612239

/-! ## A196222.P13984059871112978912

`(val(∏{p}[n^3, #], 11)-dr(∑{digits}[n, 10^#]))²`
-/

namespace A196222.P13984059871112978912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ) - (SequenceMachineLib.digitalRoot ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) : ℤ)) ^ 2

end

end A196222.P13984059871112978912

/-! ## A196222.P17601965664913554424

`13%(3^(2-∑{p}[n^3, val(#, 11)]^floor(n/10)))`
-/

namespace A196222.P17601965664913554424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 13 (SequenceMachineLib.roundAway ((3 : ℝ) ^ (2 - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 10⌋ : ℤ) : ℝ)))

end

end A196222.P17601965664913554424

/-! ## A196222.P17774399849342802309

`3*(∑{digits}[n, dr(10^#)]-∑{p}[n^3, val(#, 11)])-2`
-/

namespace A196222.P17774399849342802309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 11 : ℕ) : ℤ)) - 2

end

end A196222.P17774399849342802309

/-! ## A196222.P5646496061217488926

`4^(dr(∑{digits}[n, 10^#])-val(∏{p}[n^3, #], 11)-1)`
-/

namespace A196222.P5646496061217488926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((SequenceMachineLib.digitalRoot ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) : ℤ) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 11 : ℤ) - 1 : ℤ)

end

end A196222.P5646496061217488926

/-! ## A196222.P1870004528931041588

`A030547(A213217(n))²`
-/

namespace A196222.P1870004528931041588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A213217 n).toNat ^ 2

end

end A196222.P1870004528931041588

/-! ## A196222.P17012648572030380726

`A072137(A213217(n)²)`
-/

namespace A196222.P17012648572030380726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 (A213217 n ^ 2).toNat

end

end A196222.P17012648572030380726

/-! ## A196222.P67018785122549830

`A043562(A338754(n))²`
-/

namespace A196222.P67018785122549830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A338754 n).toNat ^ 2

end

end A196222.P67018785122549830

/-! ## A196222.P4788882140550783209

`A105257(A139337(n))-1`
-/

namespace A196222.P4788882140550783209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105257 (A139337 n).toNat - 1

end

end A196222.P4788882140550783209

/-! ## A196222.P16183183312000302203

`gcd(4, A151933(A151949(n)))`
-/

namespace A196222.P16183183312000302203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A151933 (A151949 n).toNat)

end

end A196222.P16183183312000302203

/-! ## A196222.P8077012295841523054

`∏{e}[A304405(A139337(n)+3), #]`
-/

namespace A196222.P8077012295841523054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304405 (A139337 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A196222.P8077012295841523054

/-! ## A196222.P11002230350212852548

`A001221(∏{digits}[n, A000040(#+30)])²`
-/

namespace A196222.P11002230350212852548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000040 (x + 30)).prod.toNat ^ 2

end

end A196222.P11002230350212852548

/-! ## A196222.P10837511582013477939

`A047726(A000196(A014206(n)))²`
-/

namespace A196222.P10837511582013477939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A000196 (A014206 n).toNat).toNat ^ 2

end

end A196222.P10837511582013477939

/-!
# A196224: Numbers n such that n^2 + n is not of the form x^2 + y^2 + z^2.

The programs for A196224, there is no canonical definition to state claims against.
-/

/-! ## A196224.P17597488336562617652

`lt[3, A002828(n²+n)]`
-/

namespace A196224.P17597488336562617652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196224.P17597488336562617652

/-! ## A196224.P11805907034403864608

`eq[0, A004015(C(n+1, 2))]`
-/

namespace A196224.P11805907034403864608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (Nat.choose (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196224.P11805907034403864608

/-! ## A196224.P10000552522496534706

`eq[0, A014455(C(n+1, 2))]`
-/

namespace A196224.P10000552522496534706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (Nat.choose (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196224.P10000552522496534706

/-! ## A196224.P8020873737949623319

`eq[4, A002828(n*(n+1))]`
-/

namespace A196224.P8020873737949623319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196224.P8020873737949623319

/-! ## A196224.P10228297488723804669

`eq[0, A014455((n²+n)/2)]`
-/

namespace A196224.P10228297488723804669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196224.P10228297488723804669

/-!
# A196226: m such that A054024(m) (sum of divisors of m reduced modulo m) is 3 + m/2.

The programs for A196226, there is no canonical definition to state claims against.
-/

/-! ## A196226.P8390976939559044908

`2*(p?[2*n+1]+floor(acot(n)))`
-/

namespace A196226.P8390976939559044908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A196226.P8390976939559044908

/-! ## A196226.P11883872768306862525

`2*(p?[2*n+1]+C(2, n+2))`
-/

namespace A196226.P11883872768306862525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.choose 2 (n + 2))

end

end A196226.P11883872768306862525

/-! ## A196226.P6624882484581241058

`p?[2*n+1]+p?[a(n-1)+2]` with `a(0)=5, a(1)=5`
-/

namespace A196226.P6624882484581241058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  f2 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A196226.P6624882484581241058

/-! ## A196226.P9704475466525838661

`A073582(n+2)`
-/

namespace A196226.P9704475466525838661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 2)

end

end A196226.P9704475466525838661

/-! ## A196226.P14805882788783974803

`A161344(n+3)`
-/

namespace A196226.P14805882788783974803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 3)

end

end A196226.P14805882788783974803

/-! ## A196226.P13601506687063431082

`2*A175787(n+3)`
-/

namespace A196226.P13601506687063431082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175787 (n + 3)

end

end A196226.P13601506687063431082

/-! ## A196226.P7333153364282180326

`2*A046022(n+4)`
-/

namespace A196226.P7333153364282180326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046022 (n + 4)

end

end A196226.P7333153364282180326

/-! ## A196226.P8061063676421580426

`2*eq[2, A349043(n)]`
-/

namespace A196226.P8061063676421580426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196226.P8061063676421580426

/-! ## A196226.P3615527911191227671

`record[A001414((n+4)²)]`
-/

namespace A196226.P3615527911191227671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((n + 4) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196226.P3615527911191227671

/-! ## A196226.P12441416529051467301

`A006255(p?[2*n+1])`
-/

namespace A196226.P12441416529051467301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A196226.P12441416529051467301

/-!
# A196227: Number of 2 X 2 integer matrices with elements from {1,...,n} whose determinant is 1.

The programs for A196227, the canonical program `A196227.P1038827225562638311` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196227 has offset 0).

The definition of A196227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A196227.P1038827225562638311

`2*A209978(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A196227

/-- `2*A209978(n)` -/
def P1038827225562638311.Spec : Prop :=
  ∀ n, P1038827225562638311.a n = A196227 n

theorem P1038827225562638311.correct : P1038827225562638311.Spec := by
  intro n
  simp only [A196227]

end A196227

/-! ## A196227.P2220819571665910502

`A209979(n)/2`
-/

namespace A196227.P2220819571665910502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209979 n : ℚ) / 2

end

end A196227.P2220819571665910502

namespace A196227

/-- `A209979(n)/2` -/
def P2220819571665910502.Spec : Prop :=
  ∀ n, P2220819571665910502.a n = (A196227 n : ℚ)

end A196227

/-! ## A196227.P9257060470969886096

`2*(A206350(n+1)-(n+1))`
-/

namespace A196227.P9257060470969886096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A206350 (n + 1) - (n + 1 : ℤ))

end

end A196227.P9257060470969886096

namespace A196227

/-- `2*(A206350(n+1)-(n+1))` -/
def P9257060470969886096.Spec : Prop :=
  ∀ n, P9257060470969886096.a n = A196227 n

end A196227

/-! ## A196227.P5213432535838325030

`or(1, A171503(n))-(2*n+1)`
-/

namespace A196227.P5213432535838325030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171503 n) - (2 * n + 1 : ℤ)

end

end A196227.P5213432535838325030

namespace A196227

/-- `or(1, A171503(n))-(2*n+1)` -/
def P5213432535838325030.Spec : Prop :=
  ∀ n, P5213432535838325030.a n = A196227 n

end A196227

/-! ## A196227.P7765996644090034468

`a(n-1)+4*A000010(n)-2` with `a(0)=0, a(1)=0`
-/

namespace A196227.P7765996644090034468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + 4 * A000010 n - 2

end

end A196227.P7765996644090034468

namespace A196227

/-- `a(n-1)+4*A000010(n)-2` -/
def P7765996644090034468.Spec : Prop :=
  ∀ n, P7765996644090034468.a n = A196227 n

end A196227

/-! ## A196227.P12649312623502574610

`A140466(n)-A163300(n+1)`
-/

namespace A196227.P12649312623502574610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n - A163300 (n + 1)

end

end A196227.P12649312623502574610

namespace A196227

/-- `A140466(n)-A163300(n+1)` -/
def P12649312623502574610.Spec : Prop :=
  ∀ n, P12649312623502574610.a n = A196227 n

end A196227

/-! ## A196227.P4326722984195309882

`2*(A049696(n)-A087156(n+1))`
-/

namespace A196227.P4326722984195309882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049696 n - A087156 (n + 1))

end

end A196227.P4326722984195309882

namespace A196227

/-- `2*(A049696(n)-A087156(n+1))` -/
def P4326722984195309882.Spec : Prop :=
  ∀ n, P4326722984195309882.a n = A196227 n

end A196227

/-! ## A196227.P18031804461118746707

`2*(A049691(n)-A114637(n+1))`
-/

namespace A196227.P18031804461118746707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049691 n - A114637 (n + 1))

end

end A196227.P18031804461118746707

namespace A196227

/-- `2*(A049691(n)-A114637(n+1))` -/
def P18031804461118746707.Spec : Prop :=
  ∀ n, P18031804461118746707.a n = A196227 n

end A196227

/-! ## A196227.P8956409507990281312

`2*(A049632(n)-A171463(n+1))`
-/

namespace A196227.P8956409507990281312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049632 n - A171463 (n + 1))

end

end A196227.P8956409507990281312

namespace A196227

/-- `2*(A049632(n)-A171463(n+1))` -/
def P8956409507990281312.Spec : Prop :=
  ∀ n, P8956409507990281312.a n = A196227 n

end A196227

/-! ## A196227.P3044185031403013908

`A171503(n)-(2*n+1)%A059306(n)`
-/

namespace A196227.P3044185031403013908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n - Int.tmod (2 * n + 1 : ℤ) (A059306 n)

end

end A196227.P3044185031403013908

namespace A196227

/-- `A171503(n)-(2*n+1)%A059306(n)` -/
def P3044185031403013908.Spec : Prop :=
  ∀ n, P3044185031403013908.a n = A196227 n

end A196227

/-! ## A196227.P7240715913710330687

`A171503(n)-((n+1)%A106634(n)+n)`
-/

namespace A196227.P7240715913710330687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n - (Int.tmod (n + 1 : ℤ) (A106634 n) + (n : ℤ))

end

end A196227.P7240715913710330687

namespace A196227

/-- `A171503(n)-((n+1)%A106634(n)+n)` -/
def P7240715913710330687.Spec : Prop :=
  ∀ n, P7240715913710330687.a n = A196227 n

end A196227

/-! ## A196227.P8115717420872251572

`2*(A018805(A028310(n))-A028310(n))`
-/

namespace A196227.P8115717420872251572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A018805 (A028310 n).toNat - A028310 n)

end

end A196227.P8115717420872251572

namespace A196227

/-- `2*(A018805(A028310(n))-A028310(n))` -/
def P8115717420872251572.Spec : Prop :=
  ∀ n, P8115717420872251572.a n = A196227 n

end A196227

/-! ## A196227.P9158206007755093781

`2*(A206297(n+1)-A065475(n+1))`
-/

namespace A196227.P9158206007755093781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A206297 (n + 1) - A065475 (n + 1))

end

end A196227.P9158206007755093781

namespace A196227

/-- `2*(A206297(n+1)-A065475(n+1))` -/
def P9158206007755093781.Spec : Prop :=
  ∀ n, P9158206007755093781.a n = A196227 n

end A196227

/-! ## A196227.P3208644437547175549

`A209978(A005843(n)/2)+A209978(n)`
-/

namespace A196227.P3208644437547175549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209978 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A209978 n

end

end A196227.P3208644437547175549

namespace A196227

/-- `A209978(A005843(n)/2)+A209978(n)` -/
def P3208644437547175549.Spec : Prop :=
  ∀ n, P3208644437547175549.a n = A196227 n

end A196227

/-! ## A196227.P4788461085099994828

`A209979(n)-(A209978(n)+A209978(n))`
-/

namespace A196227.P4788461085099994828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209979 n - (A209978 n + A209978 n)

end

end A196227.P4788461085099994828

namespace A196227

/-- `A209979(n)-(A209978(n)+A209978(n))` -/
def P4788461085099994828.Spec : Prop :=
  ∀ n, P4788461085099994828.a n = A196227 n

end A196227

/-! ## A196227.P14025893587661966763

`A326354(n)-Δ[n²]`
-/

namespace A196227.P14025893587661966763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326354 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A196227.P14025893587661966763

namespace A196227

/-- `A326354(n)-Δ[n²]` -/
def P14025893587661966763.Spec : Prop :=
  ∀ n, P14025893587661966763.a n = A196227 n

end A196227

/-! ## A196227.P16450147058207473586

`A014682(A209979(n))`
-/

namespace A196227.P16450147058207473586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A209979 n).toNat

end

end A196227.P16450147058207473586

namespace A196227

/-- `A014682(A209979(n))` -/
def P16450147058207473586.Spec : Prop :=
  ∀ n, P16450147058207473586.a n = A196227 n

end A196227

/-! ## A196227.P2026811998077508990

`2*(A004273(A002088(n))-n)`
-/

namespace A196227.P2026811998077508990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004273 (A002088 n).toNat - (n : ℤ))

end

end A196227.P2026811998077508990

namespace A196227

/-- `2*(A004273(A002088(n))-n)` -/
def P2026811998077508990.Spec : Prop :=
  ∀ n, P2026811998077508990.a n = A196227 n

end A196227

/-! ## A196227.P443600676906936629

`A209992(n)-A134506(n)`
-/

namespace A196227.P443600676906936629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209992 n - A134506 n

end

end A196227.P443600676906936629

namespace A196227

/-- `A209992(n)-A134506(n)` -/
def P443600676906936629.Spec : Prop :=
  ∀ n, P443600676906936629.a n = A196227 n

end A196227

/-! ## A196227.P15049581256198587081

`A209994(n)-A209992(n)`
-/

namespace A196227.P15049581256198587081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209994 n - A209992 n

end

end A196227.P15049581256198587081

namespace A196227

/-- `A209994(n)-A209992(n)` -/
def P15049581256198587081.Spec : Prop :=
  ∀ n, P15049581256198587081.a n = A196227 n

end A196227

/-!
# A196228: Number of ways of writing n as sum of a prime and a perfect power.

The programs for A196228, there is no canonical definition to state claims against.
-/

/-! ## A196228.P7898575758411594517

`A253238(n+1)+char[A151800(n)]`
-/

namespace A196228.P7898575758411594517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253238 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196228.P7898575758411594517

/-! ## A196228.P166348498195367168

`A276711(n+1)-A010051(n+1)`
-/

namespace A196228.P166348498195367168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (n + 1) - A010051 (n + 1)

end

end A196228.P166348498195367168

/-! ## A196228.P5090688515528312789

`A253238(n+1)+char[A000040(n+1)]`
-/

namespace A196228.P5090688515528312789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253238 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196228.P5090688515528312789

/-! ## A196228.P16422386391623194969

`A276711(n+1)-char[A006093(n+1)]`
-/

namespace A196228.P16422386391623194969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196228.P16422386391623194969

/-! ## A196228.P17250279977561004250

`A276711(n+1)+A008683(n+1)*A010051(n+1)`
-/

namespace A196228.P17250279977561004250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (n + 1) + A008683 (n + 1) * A010051 (n + 1)

end

end A196228.P17250279977561004250

/-! ## A196228.P17234376231776740511

`A276711(n+1)-Δ[A230980(n)]`
-/

namespace A196228.P17234376231776740511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (n + 1) - (f1 (n + 1) - f1 n)

end

end A196228.P17234376231776740511

/-! ## A196228.P2450330773251786591

`A133364(A098983(A280616(n+1)))`
-/

namespace A196228.P2450330773251786591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133364 (A098983 (A280616 (n + 1)).toNat).toNat

end

end A196228.P2450330773251786591

/-! ## A196228.P6505930841037211141

`A133364(n+1)%A000664(n)`
-/

namespace A196228.P6505930841037211141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133364 (n + 1)) (A000664 n)

end

end A196228.P6505930841037211141

/-! ## A196228.P622855546871924327

`and(A002223(n+1), A133364(n+1))`
-/

namespace A196228.P622855546871924327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A133364 (n + 1))

end

end A196228.P622855546871924327

/-! ## A196228.P329694579873926489

`and(A045535(n), A133364(n+1))`
-/

namespace A196228.P329694579873926489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A133364 (n + 1))

end

end A196228.P329694579873926489

/-!
# A196230: Euler primes: values of x^2 - x + k for x = 1..k-1, where k is one of Euler's "lucky" numbers 2, 3, 5, 11, 17, 41.

The programs for A196230, there is no canonical definition to state claims against.
-/

/-! ## A196230.P2198682078268814732

`A000040(lt[A329329(2*n+5), A005843(n)])`
-/

namespace A196230.P2198682078268814732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329329 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196230.P2198682078268814732

/-! ## A196230.P6685779916037041592

`A000040(lt[A329329(2*n+5), A055938(n+1)])`
-/

namespace A196230.P6685779916037041592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329329 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196230.P6685779916037041592

/-! ## A196230.P7187488564758397765

`A000040(lt[A033740(n), A045572(n+1)])`
-/

namespace A196230.P7187488564758397765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033740 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196230.P7187488564758397765

/-! ## A196230.P16437317618776219991

`eq[A003415(n), A005329(A336850(2*n+1))]`
-/

namespace A196230.P16437317618776219991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005329 (A336850 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196230.P16437317618776219991

/-! ## A196230.P7508303289233356450

`A000040(lt[A198469(3*n+4), A121031(n+1)])`
-/

namespace A196230.P7508303289233356450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198469 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196230.P7508303289233356450

/-!
# A196231: Irregular triangle T(n,k), n>=1, 1<=k<=ceiling(n/2), read by rows: T(n,k) is the number of different ways to select k disjoint (nonempty) subsets from {1..n} with equal element sum.

The programs for A196231, there is no canonical definition to state claims against.
-/

/-! ## A196231.P5594297258341026468

`A161700(A248112(n+1)%A221792(2*(n+1)))`
-/

namespace A196231.P5594297258341026468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161700 (Int.tmod (A248112 (n + 1)) (A221792 (2 * (n + 1)))).toNat

end

end A196231.P5594297258341026468

/-! ## A196231.P6758138454216275987

`2*∏{p}[(-4)^n, #]^A082375(n)-1`
-/

namespace A196231.P6758138454216275987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) ^ (A082375 n : ℤ) - 1

end

end A196231.P6758138454216275987

/-! ## A196231.P11756418570208912893

`A140670(A176598(n+1))`
-/

namespace A196231.P11756418570208912893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (A176598 (n + 1)).toNat

end

end A196231.P11756418570208912893

/-! ## A196231.P11028992108523328903

`A038712(97*A062053(n+1))`
-/

namespace A196231.P11028992108523328903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (97 * A062053 (n + 1)).toNat

end

end A196231.P11028992108523328903

/-! ## A196231.P4276271626484006692

`A000203(∏{p}[(-4)^n, #]^A082375(n))`
-/

namespace A196231.P4276271626484006692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) ^ (A082375 n : ℤ))).toNat

end

end A196231.P4276271626484006692

/-!
# A196232: Number of different ways to select 5 disjoint subsets from {1..n} with equal element sum.

The programs for A196232, there is no canonical definition to state claims against.
-/

/-! ## A196232.P393131927840443531

`A104858(n)+A056239(A104871(n+1))`
-/

namespace A196232.P393131927840443531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104858 n + A056239 (A104871 (n + 1)).toNat

end

end A196232.P393131927840443531

/-! ## A196232.P16375614132421065374

`A304328(A325858(3*n)+A132458(n+1))`
-/

namespace A196232.P16375614132421065374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A325858 (3 * n) + A132458 (n + 1)).toNat

end

end A196232.P16375614132421065374

/-!
# A196233: Number of different ways to select 6 disjoint subsets from {1..n} with equal element sum.

The programs for A196233, there is no canonical definition to state claims against.
-/

/-! ## A196233.P13090923864520599991

`or(2^val(n+1, 2), A341693(A341703(n)))`
-/

namespace A196233.P13090923864520599991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A341693 (A341703 n).toNat)

end

end A196233.P13090923864520599991

/-! ## A196233.P6407908186989387741

`A276625(or(gcd(n+1, (n+13)^9), A061511(3*n)))`
-/

namespace A196233.P6407908186989387741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (Int.lor (Nat.gcd (n + 1) ((n + 13) ^ 9) : ℤ) (A061511 (3 * n))).toNat

end

end A196233.P6407908186989387741

/-!
# A196234: Number of different ways to select 7 disjoint subsets from {1..n} with equal element sum.

The programs for A196234, there is no canonical definition to state claims against.
-/

/-! ## A196234.P759883854371478977

`A209312(6^n)+A058187(n)`
-/

namespace A196234.P759883854371478977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209312 (6 ^ n) + A058187 n

end

end A196234.P759883854371478977

/-!
# A196235: Number of different ways to select 8 disjoint subsets from {1..n} with equal element sum.

The programs for A196235, there is no canonical definition to state claims against.
-/

/-! ## A196235.P2118438270550393698

`A083382(A051924(n+3))`
-/

namespace A196235.P2118438270550393698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A051924 (n + 3)).toNat

end

end A196235.P2118438270550393698

/-! ## A196235.P930737292466360449

`A083382(Δ[A000984(n+2)])`
-/

namespace A196235.P930737292466360449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (f1 (n + 1) - f1 n).toNat

end

end A196235.P930737292466360449

/-!
# A196236: Number of different ways to select 9 disjoint subsets from {1..n} with equal element sum.

The programs for A196236, there is no canonical definition to state claims against.
-/

/-! ## A196236.P1141344730914883353

`A307800(n)+A135017(A024733(n+1))`
-/

namespace A196236.P1141344730914883353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307800 n + A135017 (A024733 (n + 1)).toNat

end

end A196236.P1141344730914883353

/-!
# A196237: Number of different ways to select 10 disjoint subsets from {1..n} with equal element sum.

The programs for A196237, there is no canonical definition to state claims against.
-/

/-! ## A196237.P15030523491342862261

`A140114(A150285(n+1))`
-/

namespace A196237.P15030523491342862261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (A150285 (n + 1)).toNat

end

end A196237.P15030523491342862261

/-!
# A196238: Positive integers a for which there is a 10-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196238, there is no canonical definition to state claims against.
-/

/-! ## A196238.P1035210562619034951

`A257639(A267303(n+1)+2*(n+1))`
-/

namespace A196238.P1035210562619034951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A267303 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A196238.P1035210562619034951

/-! ## A196238.P8119013104190321920

`A000196(eq[A181499(n), A187950(n+1)])`
-/

namespace A196238.P8119013104190321920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A196238.P8119013104190321920

/-! ## A196238.P11126468652551240753

`A002024(lt[A233249(2*(n+1)), A324526(n+1)])`
-/

namespace A196238.P11126468652551240753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196238.P11126468652551240753

/-!
# A196241: Positive integers a for which there is a primitive 10-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196241, there is no canonical definition to state claims against.
-/

/-! ## A196241.P13745155888583638917

`∑[A287068(A191676(n+1)+A110165(n+3))%2]`
-/

namespace A196241.P13745155888583638917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287068 (A191676 (n + 1) + A110165 (n + 3)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196241.P13745155888583638917

/-! ## A196241.P12261203296892297710

`∑[A264739(A145271(3*n)+1)]`
-/

namespace A196241.P12261203296892297710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (A145271 (3 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196241.P12261203296892297710

/-! ## A196241.P8386886854273537918

`∑[A068433(A123316(n+1)-n)]`
-/

namespace A196241.P8386886854273537918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068433 (A123316 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196241.P8386886854273537918

/-! ## A196241.P15888403153694727470

`A221671(∑[A002260(A112857(n))])`
-/

namespace A196241.P15888403153694727470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A112857 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196241.P15888403153694727470

/-! ## A196241.P7374586383710304991

`∑[A008966(∑[A225393(n+2)])]`
-/

namespace A196241.P7374586383710304991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225393 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196241.P7374586383710304991

/-!
# A196244: Number of distinct values taken by r^r^...^r where r=1/2 (with n r's and parentheses inserted in all possible ways).

The programs for A196244, there is no canonical definition to state claims against.
-/

/-! ## A196244.P6794991514482496473

`A138194(A027133(n+1))`
-/

namespace A196244.P6794991514482496473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A027133 (n + 1)).toNat

end

end A196244.P6794991514482496473

/-! ## A196244.P7540284669221641459

`A349014(n)+A036646(A102493(n+1))`
-/

namespace A196244.P7540284669221641459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349014 n + A036646 (A102493 (n + 1)).toNat

end

end A196244.P7540284669221641459

/-! ## A196244.P17948269429222268629

`or(A003018(n+1), A232243(A111160(n)))`
-/

namespace A196244.P17948269429222268629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003018 (n + 1)) (A232243 (A111160 n).toNat)

end

end A196244.P17948269429222268629

/-! ## A196244.P14818389946455778511

`or(A003018(n+1), A093313(A006093(n+5)))`
-/

namespace A196244.P14818389946455778511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003018 (n + 1)) (A093313 (A006093 (n + 5)).toNat)

end

end A196244.P14818389946455778511

/-! ## A196244.P14802046706078787959

`or(A003018(n+1), A297330(A022166(3*n+2)))`
-/

namespace A196244.P14802046706078787959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003018 (n + 1)) (A297330 (A022166 (3 * n + 2)).toNat)

end

end A196244.P14802046706078787959

/-!
# A196250: Positive integers b for which there is a primitive (-3/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196250, there is no canonical definition to state claims against.
-/

/-! ## A196250.P3573129906092176372

`A211451(A241381(3*(n+1)))+A196246(n+1)`
-/

namespace A196250.P3573129906092176372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211451 (A241381 (3 * (n + 1))).toNat + A196246 (n + 1)

end

end A196250.P3573129906092176372

/-!
# A196251: Leading terms of successive absolute differences of the partition numbers (A000041).

The programs for A196251, there is no canonical definition to state claims against.
-/

/-! ## A196251.P14846807200403947117

`and(1, A281425(n)+A116165(n))`
-/

namespace A196251.P14846807200403947117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A281425 n + A116165 n)

end

end A196251.P14846807200403947117

/-! ## A196251.P12992103678518130187

`and(A001222(A059496(n+1)), A218481(n))`
-/

namespace A196251.P12992103678518130187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A059496 (n + 1)).toNat) (A218481 n)

end

end A196251.P12992103678518130187

/-! ## A196251.P18399720777701975156

`and(A057427(A102716(n)), A307264(n))`
-/

namespace A196251.P18399720777701975156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 (A102716 n).toNat) (A307264 n)

end

end A196251.P18399720777701975156

/-! ## A196251.P7222202540729201626

`and(1, A281425(n)+A116166(n))`
-/

namespace A196251.P7222202540729201626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A281425 n + A116166 n)

end

end A196251.P7222202540729201626

/-! ## A196251.P1987464109427102436

`A218481(n)%A178815(n+1)`
-/

namespace A196251.P1987464109427102436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218481 n) (A178815 (n + 1))

end

end A196251.P1987464109427102436

/-! ## A196251.P4721498970942084980

`A307264(n)%A178815(n+1)`
-/

namespace A196251.P4721498970942084980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307264 n) (A178815 (n + 1))

end

end A196251.P4721498970942084980

/-! ## A196251.P16175225311725005699

`and(A094404(n+1), A307260(n))`
-/

namespace A196251.P16175225311725005699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094404 (n + 1)) (A307260 n)

end

end A196251.P16175225311725005699

/-! ## A196251.P13126467867353572217

`and(A102716(∑[n]), A307264(n))`
-/

namespace A196251.P13126467867353572217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102716 (∑ j ∈ Finset.range (n + 1), f1 j)) (A307264 n)

end

end A196251.P13126467867353572217

/-! ## A196251.P15336666697683094465

`and(A057427(2*A104566(n+1)), A307264(n))`
-/

namespace A196251.P15336666697683094465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 (2 * A104566 (n + 1)).toNat) (A307264 n)

end

end A196251.P15336666697683094465

/-!
# A196252: Positive integers a for which there is a (3/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196252, there is no canonical definition to state claims against.
-/

/-! ## A196252.P665922677310714867

`A089058(eq[2, A020639(A123673(n+1))])`
-/

namespace A196252.P665922677310714867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A123673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196252.P665922677310714867

/-! ## A196252.P11854287557733162576

`A137734(A329366(3*n+5)+A250120(n))`
-/

namespace A196252.P11854287557733162576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A329366 (3 * n + 5) + A250120 n).toNat

end

end A196252.P11854287557733162576

/-! ## A196252.P6967958964783563000

`A029837(A007096(n))+p?[A035177(n+1)]`
-/

namespace A196252.P6967958964783563000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A007096 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A196252.P6967958964783563000

/-! ## A196252.P1824798513417236704

`A029837(A007096(n))+A020639(A196253(2*n+5))`
-/

namespace A196252.P1824798513417236704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A007096 n).toNat + A020639 (A196253 (2 * n + 5)).toNat

end

end A196252.P1824798513417236704

/-!
# A196255: Positive integers a for which there is a primitive (3/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196255, there is no canonical definition to state claims against.
-/

/-! ## A196255.P2676522332433538743

`A350254(∑[dr(A166591(n+1))])`
-/

namespace A196255.P2676522332433538743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A166591 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196255.P2676522332433538743

/-!
# A196256: Positive integers b for which there is a primitive (3/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196256, there is no canonical definition to state claims against.
-/

/-! ## A196256.P3344256285445446474

`A196253(A057640(n+1)^A346775(n))`
-/

namespace A196256.P3344256285445446474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196253 (SequenceMachineLib.roundAway ((A057640 (n + 1) : ℚ) ^ (A346775 n : ℤ))).toNat

end

end A196256.P3344256285445446474

/-! ## A196256.P3965758037822925592

`A196253(C(A057640(n+1), A346775(n)))`
-/

namespace A196256.P3965758037822925592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196253 (Nat.choose (A057640 (n + 1)).toNat (A346775 n).toNat)

end

end A196256.P3965758037822925592

/-!
# A196257: Positive integers c for which there is a primitive (3/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196257, there is no canonical definition to state claims against.
-/

/-! ## A196257.P18371437182399444299

`A196254(A057640(n+1)^A346775(n))`
-/

namespace A196257.P18371437182399444299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196254 (SequenceMachineLib.roundAway ((A057640 (n + 1) : ℚ) ^ (A346775 n : ℤ))).toNat

end

end A196257.P18371437182399444299

/-! ## A196257.P869047185534330223

`A196254(C(A057640(n+1), A346775(n)))`
-/

namespace A196257.P869047185534330223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196254 (Nat.choose (A057640 (n + 1)).toNat (A346775 n).toNat)

end

end A196257.P869047185534330223

/-!
# A196258: a(n) = 11^n*n!.

The programs for A196258, the canonical program `A196258.P2143419765051837064` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196258 has offset 0).

The definition of A196258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n*n!` (program `A196258.P2143419765051837064`, by `A196258.P2143419765051837064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196258.P2143419765051837064

`11^n*n!`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A196258

/-- `11^n*n!` -/
def P2143419765051837064.Spec : Prop :=
  ∀ n, (P2143419765051837064.a n : ℤ) = A196258 n

theorem P2143419765051837064.correct : P2143419765051837064.Spec := by
  intro n
  simp only [A196258]

end A196258

/-! ## A196258.P3367406535827642261

`n!/(1/11)^n`
-/

namespace A196258.P3367406535827642261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((1 : ℚ) / 11) ^ n

end

end A196258.P3367406535827642261

namespace A196258

/-- `n!/(1/11)^n` -/
def P3367406535827642261.Spec : Prop :=
  ∀ n, P3367406535827642261.a n = (A196258 n : ℚ)

end A196258

/-! ## A196258.P8095685064145775813

`∏[floor(acot(n))+11*n]`
-/

namespace A196258.P8095685064145775813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (11 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A196258.P8095685064145775813

namespace A196258

/-- `∏[floor(acot(n))+11*n]` -/
def P8095685064145775813.Spec : Prop :=
  ∀ n, P8095685064145775813.a n = A196258 n

end A196258

/-! ## A196258.P6815086400468352795

`∏[gcd(11*n, floor(acot(n)))]`
-/

namespace A196258.P6815086400468352795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (11 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A196258.P6815086400468352795

namespace A196258

/-- `∏[gcd(11*n, floor(acot(n)))]` -/
def P6815086400468352795.Spec : Prop :=
  ∀ n, (P6815086400468352795.a n : ℤ) = A196258 n

end A196258

/-! ## A196258.P10291711186789394865

`∏[or(11*n, floor(acot(n)))]`
-/

namespace A196258.P10291711186789394865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (11 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A196258.P10291711186789394865

namespace A196258

/-- `∏[or(11*n, floor(acot(n)))]` -/
def P10291711186789394865.Spec : Prop :=
  ∀ n, P10291711186789394865.a n = A196258 n

end A196258

/-!
# A196259: Positive integers a in (1/4)-Pythagorean triples (a,b,c) satisfying a<=b, in order of increasing a and then increasing b.

The programs for A196259, there is no canonical definition to state claims against.
-/

/-! ## A196259.P8100496611460041056

`A389784(A307562(n+2))`
-/

namespace A196259.P8100496611460041056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389784 (A307562 (n + 2)).toNat

end

end A196259.P8100496611460041056

/-! ## A196259.P13324348927716834839

`A008619(A046693(p?[A240108(n+1)]))`
-/

namespace A196259.P13324348927716834839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A046693 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A196259.P13324348927716834839

/-! ## A196259.P5638524174609027871

`A155934(A004050(n+1))+A003056(n)`
-/

namespace A196259.P5638524174609027871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155934 (A004050 (n + 1)).toNat + A003056 n

end

end A196259.P5638524174609027871

/-! ## A196259.P15645719104442464629

`A155934(A004050(n+1))+A117707(n)`
-/

namespace A196259.P15645719104442464629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155934 (A004050 (n + 1)).toNat + A117707 n

end

end A196259.P15645719104442464629

/-! ## A196259.P14747653764249948026

`A163352(n)+A155934(A004050(n+1))`
-/

namespace A196259.P14747653764249948026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 n + A155934 (A004050 (n + 1)).toNat

end

end A196259.P14747653764249948026

/-!
# A196263: Positive integers b in primitive (1/4)-Pythagorean triples (a,b,c) satisfying a<=b, in order of increasing a and then increasing b.

The programs for A196263, there is no canonical definition to state claims against.
-/

/-! ## A196263.P13990895702811612056

`A196260(comp[5-A149397(n)]+1)`
-/

namespace A196263.P13990895702811612056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A149397 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A196263.P13990895702811612056

/-! ## A196263.P17021418768373697653

`A196260(comp[4-A075757(n+3)]+1)`
-/

namespace A196263.P17021418768373697653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A075757 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A196263.P17021418768373697653

/-!
# A196264: Positive integers c in primitive (1/4)-Pythagorean triples (a,b,c) satisfying a<=b, in order of increasing a and then increasing b.

The programs for A196264, there is no canonical definition to state claims against.
-/

/-! ## A196264.P3673055086133571854

`A196261(lt[A004174(n), A057996(n)])`
-/

namespace A196264.P3673055086133571854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196261 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196264.P3673055086133571854

/-! ## A196264.P2290859953240161695

`A341970(A177477(n))+A196263(n+1)`
-/

namespace A196264.P2290859953240161695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341970 (A177477 n).toNat + A196263 (n + 1)

end

end A196264.P2290859953240161695

/-!
# A196266: Positive integers a for which there is a (-1/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196266, there is no canonical definition to state claims against.
-/

/-! ## A196266.P2493603938595307554

`∑[A241666(A214269(A188437(n+1))!)]`
-/

namespace A196266.P2493603938595307554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241666 (Nat.factorial (A214269 (A188437 (n + 1)).toNat).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196266.P2493603938595307554

/-! ## A196266.P9102686825575067710

`A070939(∪[A007678(2*n+3), A059618(2*n+3)])`
-/

namespace A196266.P9102686825575067710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059618 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A196266.P9102686825575067710

/-! ## A196266.P800713907744808136

`A000523(A006533(n+1)+∑[n+1])`
-/

namespace A196266.P800713907744808136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A006533 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A196266.P800713907744808136

/-! ## A196266.P3707971015133209407

`A048766(A372682(n)-A000041(n))`
-/

namespace A196266.P3707971015133209407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A372682 n - A000041 n).toNat

end

end A196266.P3707971015133209407

/-! ## A196266.P15840269145561504851

`A000523(A007678(n+1)+A003625(n+1))`
-/

namespace A196266.P15840269145561504851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A007678 (n + 1) + A003625 (n + 1)).toNat

end

end A196266.P15840269145561504851

/-!
# A196270: Positive integers b for which there is a primitive (-1/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196270, there is no canonical definition to state claims against.
-/

/-! ## A196270.P300418349038998360

`A299202(A005891(n))+A196271(n+1)`
-/

namespace A196270.P300418349038998360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299202 (A005891 n).toNat + A196271 (n + 1)

end

end A196270.P300418349038998360

/-! ## A196270.P10285239001521003755

`A196271(n+1)+A080891(A177874(2*(n+2)))`
-/

namespace A196270.P10285239001521003755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196271 (n + 1) + A080891 (A177874 (2 * (n + 2))).toNat

end

end A196270.P10285239001521003755

/-!
# A196272: Number of occurrences of '11' in base-4 expansion of n.

The programs for A196272, there is no canonical definition to state claims against.
-/

/-! ## A196272.P8661854050926484432

`A014081(A292371(n))`
-/

namespace A196272.P8661854050926484432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A292371 n).toNat

end

end A196272.P8661854050926484432

/-! ## A196272.P1453719892339043957

`A000120(A048735(A292372(A292272(2*n))))`
-/

namespace A196272.P1453719892339043957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048735 (A292372 (A292272 (2 * n)).toNat).toNat).toNat

end

end A196272.P1453719892339043957

/-! ## A196272.P2276716743697428904

`A102677(A160381(n)^A292371(n))`
-/

namespace A196272.P2276716743697428904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (SequenceMachineLib.roundAway ((A160381 n : ℚ) ^ (A292371 n : ℤ))).toNat

end

end A196272.P2276716743697428904

/-! ## A196272.P12762937366229608550

`A124764(A292371(n))+A000007(A267089(n))`
-/

namespace A196272.P12762937366229608550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A292371 n).toNat + A000007 (A267089 n).toNat

end

end A196272.P12762937366229608550

/-! ## A196272.P5102941249724546175

`A160383(A001196(A292371(n))²)`
-/

namespace A196272.P5102941249724546175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A001196 (A292371 n).toNat ^ 2).toNat

end

end A196272.P5102941249724546175

/-! ## A196272.P928817205201571345

`A124764(A292371(n))+A000007(A033170(2*(n+2)))`
-/

namespace A196272.P928817205201571345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A292371 n).toNat + A000007 (A033170 (2 * (n + 2))).toNat

end

end A196272.P928817205201571345

/-!
# A196273: Primes of the form n*2^(n-1)+1.

The programs for A196273, there is no canonical definition to state claims against.
-/

/-! ## A196273.P17542930932183407582

`A005183(A029544(n+1)+1)`
-/

namespace A196273.P17542930932183407582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (A029544 (n + 1) + 1).toNat

end

end A196273.P17542930932183407582

/-! ## A196273.P15260402926240185058

`A001787(A029544(n+1)+1)+1`
-/

namespace A196273.P15260402926240185058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A029544 (n + 1) + 1).toNat + 1

end

end A196273.P15260402926240185058

/-!
# A196274: Half of the gaps A067970 between odd nonprimes A014076.

The programs for A196274, the canonical program `A196274.P15919097305767155130` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196274 has offset 1).

The definition of A196274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A196274.P15919097305767155130

`A067970(n+1)/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A196274

/-- `A067970(n+1)/2` -/
def P15919097305767155130.Spec : Prop :=
  ∀ n, P15919097305767155130.a n = (A196274 (n + 1) : ℚ)

end A196274

/-! ## A196274.P8738119775873547638

`(A014076(n+2)-A014076(n+1))/2`
-/

namespace A196274.P8738119775873547638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014076 (n + 2) - A014076 (n + 1) : ℚ) / 2

end

end A196274.P8738119775873547638

namespace A196274

/-- `(A014076(n+2)-A014076(n+1))/2` -/
def P8738119775873547638.Spec : Prop :=
  ∀ n, P8738119775873547638.a n = (A196274 (n + 1) : ℚ)

end A196274

/-! ## A196274.P17980570189820562741

`Δ[A104275(n+1)]`
-/

namespace A196274.P17980570189820562741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P17980570189820562741

namespace A196274

/-- `Δ[A104275(n+1)]` -/
def P17980570189820562741.Spec : Prop :=
  ∀ n, P17980570189820562741.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P395400663279081519

`A144411(n+1)+2`
-/

namespace A196274.P395400663279081519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144411 (n + 1) + 2

end

end A196274.P395400663279081519

namespace A196274

/-- `A144411(n+1)+2` -/
def P395400663279081519.Spec : Prop :=
  ∀ n, P395400663279081519.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P6887712768376406445

`A053726(n+1)-A104275(n+1)`
-/

namespace A196274.P6887712768376406445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - A104275 (n + 1)

end

end A196274.P6887712768376406445

namespace A196274

/-- `A053726(n+1)-A104275(n+1)` -/
def P6887712768376406445.Spec : Prop :=
  ∀ n, P6887712768376406445.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P10891305825279416731

`A104275(n+2)-A104275(n+1)`
-/

namespace A196274.P10891305825279416731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) - A104275 (n + 1)

end

end A196274.P10891305825279416731

namespace A196274

/-- `A104275(n+2)-A104275(n+1)` -/
def P10891305825279416731.Spec : Prop :=
  ∀ n, P10891305825279416731.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P1695599100824363817

`A053726(n+1)-(A047845(n+1)+1)`
-/

namespace A196274.P1695599100824363817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - (A047845 (n + 1) + 1)

end

end A196274.P1695599100824363817

namespace A196274

/-- `A053726(n+1)-(A047845(n+1)+1)` -/
def P1695599100824363817.Spec : Prop :=
  ∀ n, P1695599100824363817.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P5581314648925256270

`A153238(n+1)+1-A047845(n+1)`
-/

namespace A196274.P5581314648925256270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + (1 - A047845 (n + 1))

end

end A196274.P5581314648925256270

namespace A196274

/-- `A153238(n+1)+1-A047845(n+1)` -/
def P5581314648925256270.Spec : Prop :=
  ∀ n, P5581314648925256270.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P15594171662251319175

`A000720(A071904(n+1)-A014076(n+1))`
-/

namespace A196274.P15594171662251319175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071904 (n + 1) - A014076 (n + 1)).toNat

end

end A196274.P15594171662251319175

namespace A196274

/-- `A000720(A071904(n+1)-A014076(n+1))` -/
def P15594171662251319175.Spec : Prop :=
  ∀ n, P15594171662251319175.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P12680401581975368429

`Δ[A047845(n+1)]`
-/

namespace A196274.P12680401581975368429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P12680401581975368429

namespace A196274

/-- `Δ[A047845(n+1)]` -/
def P12680401581975368429.Spec : Prop :=
  ∀ n, P12680401581975368429.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P8142357533644695607

`Δ[A153041(n+1)]`
-/

namespace A196274.P8142357533644695607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P8142357533644695607

namespace A196274

/-- `Δ[A153041(n+1)]` -/
def P8142357533644695607.Spec : Prop :=
  ∀ n, P8142357533644695607.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P13844237685394377699

`Δ[A153043(n+1)]`
-/

namespace A196274.P13844237685394377699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P13844237685394377699

namespace A196274

/-- `Δ[A153043(n+1)]` -/
def P13844237685394377699.Spec : Prop :=
  ∀ n, P13844237685394377699.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P13974754033795684252

`Δ[A153044(n+1)]`
-/

namespace A196274.P13974754033795684252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P13974754033795684252

namespace A196274

/-- `Δ[A153044(n+1)]` -/
def P13974754033795684252.Spec : Prop :=
  ∀ n, P13974754033795684252.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P5918730219433205290

`Δ[A153049(n+1)]`
-/

namespace A196274.P5918730219433205290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P5918730219433205290

namespace A196274

/-- `Δ[A153049(n+1)]` -/
def P5918730219433205290.Spec : Prop :=
  ∀ n, P5918730219433205290.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P17195210774246830225

`Δ[A153051(n+1)]`
-/

namespace A196274.P17195210774246830225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P17195210774246830225

namespace A196274

/-- `Δ[A153051(n+1)]` -/
def P17195210774246830225.Spec : Prop :=
  ∀ n, P17195210774246830225.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P9925929582147758873

`Δ[comp[A005097(n+1)]]`
-/

namespace A196274.P9925929582147758873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A196274.P9925929582147758873

namespace A196274

/-- `Δ[comp[A005097(n+1)]]` -/
def P9925929582147758873.Spec : Prop :=
  ∀ n, P9925929582147758873.a n = A196274 (n + 1)

end A196274

/-! ## A196274.P4154324228590639245

`Δ[A014076(n+1)/2]`
-/

namespace A196274.P4154324228590639245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014076 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P4154324228590639245

namespace A196274

/-- `Δ[A014076(n+1)/2]` -/
def P4154324228590639245.Spec : Prop :=
  ∀ n, P4154324228590639245.a n = (A196274 (n + 1) : ℚ)

end A196274

/-! ## A196274.P18205781311129883888

`Δ[A172048(n+1)/3]`
-/

namespace A196274.P18205781311129883888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172048 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196274.P18205781311129883888

namespace A196274

/-- `Δ[A172048(n+1)/3]` -/
def P18205781311129883888.Spec : Prop :=
  ∀ n, P18205781311129883888.a n = (A196274 (n + 1) : ℚ)

end A196274

/-!
# A196275: Number of column-convex permutominoes of size n.

The programs for A196275, there is no canonical definition to state claims against.
-/

/-! ## A196275.P7831905402205250044

`2*A275848(n*a(n-1)+1)` with `a(0)=1, a(1)=4`
-/

namespace A196275.P7831905402205250044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * A275848 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A196275.P7831905402205250044

/-!
# A196276: Numbers m such that A196274(m) = 1.

The programs for A196276, the canonical program `A196276.P9076072526218901477` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196276 has offset 1).

The definition of A196276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196276.P9076072526218901477

`comp[A008507(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A196276

/-- `comp[A008507(n+1)]+1` -/
def P9076072526218901477.Spec : Prop :=
  ∀ n, (P9076072526218901477.a n : ℤ) = A196276 (n + 1)

theorem P9076072526218901477.correct : P9076072526218901477.Spec := by
  intro n
  simp only [A196276, Nat.add_sub_cancel]

end A196276

/-! ## A196276.P1311081099093918224

`comp[A067076(n+1)-n]+1`
-/

namespace A196276.P1311081099093918224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A196276.P1311081099093918224

namespace A196276

/-- `comp[A067076(n+1)-n]+1` -/
def P1311081099093918224.Spec : Prop :=
  ∀ n, (P1311081099093918224.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P10147407693272956502

`comp[A089038(n+1)-n]+1`
-/

namespace A196276.P10147407693272956502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A196276.P10147407693272956502

namespace A196276

/-- `comp[A089038(n+1)-n]+1` -/
def P10147407693272956502.Spec : Prop :=
  ∀ n, (P10147407693272956502.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P7255601930514227169

`comp[A102781(n+1)-n]+1`
-/

namespace A196276.P7255601930514227169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A196276.P7255601930514227169

namespace A196276

/-- `comp[A102781(n+1)-n]+1` -/
def P7255601930514227169.Spec : Prop :=
  ∀ n, (P7255601930514227169.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P7537877614534569180

`comp[A105760(n+1)-n]+1`
-/

namespace A196276.P7537877614534569180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A196276.P7537877614534569180

namespace A196276

/-- `comp[A105760(n+1)-n]+1` -/
def P7537877614534569180.Spec : Prop :=
  ∀ n, (P7537877614534569180.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P4400140294698134126

`comp[A130290(n+1)-n]+1`
-/

namespace A196276.P4400140294698134126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A196276.P4400140294698134126

namespace A196276

/-- `comp[A130290(n+1)-n]+1` -/
def P4400140294698134126.Spec : Prop :=
  ∀ n, (P4400140294698134126.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P11918244228548194197

`comp[A101448(n+1)-n]+2`
-/

namespace A196276.P11918244228548194197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A196276.P11918244228548194197

namespace A196276

/-- `comp[A101448(n+1)-n]+2` -/
def P11918244228548194197.Spec : Prop :=
  ∀ n, (P11918244228548194197.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P10771540475867979966

`comp[A161720(n+3)-n]+2`
-/

namespace A196276.P10771540475867979966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A196276.P10771540475867979966

namespace A196276

/-- `comp[A161720(n+3)-n]+2` -/
def P10771540475867979966.Spec : Prop :=
  ∀ n, (P10771540475867979966.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P12079504614398326516

`eq[1, A196274(n+1)]+1`
-/

namespace A196276.P12079504614398326516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A196276.P12079504614398326516

namespace A196276

/-- `eq[1, A196274(n+1)]+1` -/
def P12079504614398326516.Spec : Prop :=
  ∀ n, (P12079504614398326516.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P12667270215891832855

`lt[Δ[A104275(n+1)], 2]+1`
-/

namespace A196276.P12667270215891832855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A196276.P12667270215891832855

namespace A196276

/-- `lt[Δ[A104275(n+1)], 2]+1` -/
def P12667270215891832855.Spec : Prop :=
  ∀ n, (P12667270215891832855.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P11070380562908570999

`lt[Δ[comp[A005097(n+1)]], 2]+1`
-/

namespace A196276.P11070380562908570999
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A196276.P11070380562908570999

namespace A196276

/-- `lt[Δ[comp[A005097(n+1)]], 2]+1` -/
def P11070380562908570999.Spec : Prop :=
  ∀ n, (P11070380562908570999.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P9201273838878234375

`A210469(A104278(n+1))+1`
-/

namespace A196276.P9201273838878234375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (A104278 (n + 1)).toNat + 1

end

end A196276.P9201273838878234375

namespace A196276

/-- `A210469(A104278(n+1))+1` -/
def P9201273838878234375.Spec : Prop :=
  ∀ n, P9201273838878234375.a n = A196276 (n + 1)

end A196276

/-! ## A196276.P6374381400041623843

`eq[3, A072491(A014076(n+1))]`
-/

namespace A196276.P6374381400041623843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A014076 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196276.P6374381400041623843

namespace A196276

/-- `eq[3, A072491(A014076(n+1))]` -/
def P6374381400041623843.Spec : Prop :=
  ∀ n, (P6374381400041623843.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P10640234134183029478

`A033271(A061673(n+1))`
-/

namespace A196276.P10640234134183029478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (A061673 (n + 1)).toNat

end

end A196276.P10640234134183029478

namespace A196276

/-- `A033271(A061673(n+1))` -/
def P10640234134183029478.Spec : Prop :=
  ∀ n, P10640234134183029478.a n = A196276 (n + 1)

end A196276

/-! ## A196276.P7538963725973965957

`A033271(A269345(n+1))`
-/

namespace A196276.P7538963725973965957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (A269345 (n + 1)).toNat

end

end A196276.P7538963725973965957

namespace A196276

/-- `A033271(A269345(n+1))` -/
def P7538963725973965957.Spec : Prop :=
  ∀ n, P7538963725973965957.a n = A196276 (n + 1)

end A196276

/-! ## A196276.P5952249350716882379

`lt[2, A303809(A007921(n+1))]+1`
-/

namespace A196276.P5952249350716882379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (A007921 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A196276.P5952249350716882379

namespace A196276

/-- `lt[2, A303809(A007921(n+1))]+1` -/
def P5952249350716882379.Spec : Prop :=
  ∀ n, (P5952249350716882379.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P3596124976234701571

`A171691(A025583(n+1))`
-/

namespace A196276.P3596124976234701571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (A025583 (n + 1)).toNat

end

end A196276.P3596124976234701571

namespace A196276

/-- `A171691(A025583(n+1))` -/
def P3596124976234701571.Spec : Prop :=
  ∀ n, P3596124976234701571.a n = A196276 (n + 1)

end A196276

/-! ## A196276.P5926582192726743626

`lt[A014963(A014076(abs(1-n)+1)+2), n]`
-/

namespace A196276.P5926582192726743626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014076 (|1 - (n : ℤ)| + 1).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A196276.P5926582192726743626

namespace A196276

/-- `lt[A014963(A014076(abs(1-n)+1)+2), n]` -/
def P5926582192726743626.Spec : Prop :=
  ∀ n, (P5926582192726743626.a n : ℤ) = A196276 (n + 1)

end A196276

/-! ## A196276.P16067584661214409432

`A224708(A298366(n+1)-1)+1`
-/

namespace A196276.P16067584661214409432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A298366 (n + 1) - 1).toNat + 1

end

end A196276.P16067584661214409432

namespace A196276

/-- `A224708(A298366(n+1)-1)+1` -/
def P16067584661214409432.Spec : Prop :=
  ∀ n, P16067584661214409432.a n = A196276 (n + 1)

end A196276

/-! ## A196276.P11557844589682001092

`A224708(A298366(n+1)+1)`
-/

namespace A196276.P11557844589682001092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A298366 (n + 1) + 1).toNat

end

end A196276.P11557844589682001092

namespace A196276

/-- `A224708(A298366(n+1)+1)` -/
def P11557844589682001092.Spec : Prop :=
  ∀ n, P11557844589682001092.a n = A196276 (n + 1)

end A196276

/-!
# A196277: Numbers m such that A196274(m) > 1.

The programs for A196277, the canonical program `A196277.P16361909060250174625` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196277 has offset 1).

The definition of A196277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196277.P16361909060250174625

`∑[A047846(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A196277

/-- `∑[A047846(n+1)]` -/
def P16361909060250174625.Spec : Prop :=
  ∀ n, P16361909060250174625.a n = A196277 (n + 1)

theorem P16361909060250174625.correct : P16361909060250174625.Spec := by
  intro n
  simp only [A196277, Nat.add_sub_cancel]

end A196277

/-! ## A196277.P948647846843227066

`A129768(A049579(n+1))`
-/

namespace A196277.P948647846843227066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (A049579 (n + 1)).toNat

end

end A196277.P948647846843227066

namespace A196277

/-- `A129768(A049579(n+1))` -/
def P948647846843227066.Spec : Prop :=
  ∀ n, P948647846843227066.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P12710323392388784178

`record[A129768(A278028(n+1))]`
-/

namespace A196277.P12710323392388784178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (A278028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196277.P12710323392388784178

namespace A196277

/-- `record[A129768(A278028(n+1))]` -/
def P12710323392388784178.Spec : Prop :=
  ∀ n, P12710323392388784178.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P10863976644929555772

`record[A129768(A336934(n+1))]`
-/

namespace A196277.P10863976644929555772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (A336934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196277.P10863976644929555772

namespace A196277

/-- `record[A129768(A336934(n+1))]` -/
def P10863976644929555772.Spec : Prop :=
  ∀ n, P10863976644929555772.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P13956633155412994072

`record[A305800(A000010(2*n+1))-n]`
-/

namespace A196277.P13956633155412994072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A000010 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196277.P13956633155412994072

namespace A196277

/-- `record[A305800(A000010(2*n+1))-n]` -/
def P13956633155412994072.Spec : Prop :=
  ∀ n, P13956633155412994072.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P16002240451110987054

`record[A175540(∑[char[2*n]])-n]`
-/

namespace A196277.P16002240451110987054
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196277.P16002240451110987054

namespace A196277

/-- `record[A175540(∑[char[2*n]])-n]` -/
def P16002240451110987054.Spec : Prop :=
  ∀ n, P16002240451110987054.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P6426893773733058897

`lt[1, Δ[A104275(n+1)]]+1`
-/

namespace A196277.P6426893773733058897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A196277.P6426893773733058897

namespace A196277

/-- `lt[1, Δ[A104275(n+1)]]+1` -/
def P6426893773733058897.Spec : Prop :=
  ∀ n, (P6426893773733058897.a n : ℤ) = A196277 (n + 1)

end A196277

/-! ## A196277.P12671060626608599571

`record[Δ[A305901(n+1)]]`
-/

namespace A196277.P12671060626608599571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196277.P12671060626608599571

namespace A196277

/-- `record[Δ[A305901(n+1)]]` -/
def P12671060626608599571.Spec : Prop :=
  ∀ n, P12671060626608599571.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P14366486077001474852

`A104279(n+1)+1-A038802(A104279(n+1))`
-/

namespace A196277.P14366486077001474852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1) + (1 - A038802 (A104279 (n + 1)).toNat)

end

end A196277.P14366486077001474852

namespace A196277

/-- `A104279(n+1)+1-A038802(A104279(n+1))` -/
def P14366486077001474852.Spec : Prop :=
  ∀ n, P14366486077001474852.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P2318281944463538230

`A008619(record[A073846(n+1)-n])`
-/

namespace A196277.P2318281944463538230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196277.P2318281944463538230

namespace A196277

/-- `A008619(record[A073846(n+1)-n])` -/
def P2318281944463538230.Spec : Prop :=
  ∀ n, P2318281944463538230.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P7331740102415259371

`A029579(record[A073846(n+1)-n])`
-/

namespace A196277.P7331740102415259371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196277.P7331740102415259371

namespace A196277

/-- `A029579(record[A073846(n+1)-n])` -/
def P7331740102415259371.Spec : Prop :=
  ∀ n, P7331740102415259371.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P12832323163180657955

`record[n+2-A026233(2*n+1)]`
-/

namespace A196277.P12832323163180657955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A026233 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196277.P12832323163180657955

namespace A196277

/-- `record[n+2-A026233(2*n+1)]` -/
def P12832323163180657955.Spec : Prop :=
  ∀ n, P12832323163180657955.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P2269638400270576037

`A033271(A049591(n+1))`
-/

namespace A196277.P2269638400270576037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (A049591 (n + 1)).toNat

end

end A196277.P2269638400270576037

namespace A196277

/-- `A033271(A049591(n+1))` -/
def P2269638400270576037.Spec : Prop :=
  ∀ n, P2269638400270576037.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P10196936567486851

`A033271(A136798(n+1))`
-/

namespace A196277.P10196936567486851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (A136798 (n + 1)).toNat

end

end A196277.P10196936567486851

namespace A196277

/-- `A033271(A136798(n+1))` -/
def P10196936567486851.Spec : Prop :=
  ∀ n, P10196936567486851.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P2814167473183026719

`A062610(A107987(n+1))`
-/

namespace A196277.P2814167473183026719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A107987 (n + 1)).toNat

end

end A196277.P2814167473183026719

namespace A196277

/-- `A062610(A107987(n+1))` -/
def P2814167473183026719.Spec : Prop :=
  ∀ n, P2814167473183026719.a n = A196277 (n + 1)

end A196277

/-! ## A196277.P2066716232530852721

`A033271(A025584(n+2))`
-/

namespace A196277.P2066716232530852721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (A025584 (n + 2)).toNat

end

end A196277.P2066716232530852721

namespace A196277

/-- `A033271(A025584(n+2))` -/
def P2066716232530852721.Spec : Prop :=
  ∀ n, P2066716232530852721.a n = A196277 (n + 1)

end A196277

/-!
# A196279: Let r= (7n) mod 10 and x=floor(7n/10) be the last digit and leading part of 7n. Then a(n) = (x-2r)/7.

The programs for A196279, the canonical program `A196279.P10021771390144808542` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196279 has offset 0).

The definition of A196279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196279.P10021771390144808542

`A194519(n+1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A196279

/-- `A194519(n+1)-1` -/
def P10021771390144808542.Spec : Prop :=
  ∀ n, P10021771390144808542.a n = A196279 n

theorem P10021771390144808542.correct : P10021771390144808542.Spec := by
  intro n
  simp only [A196279]

end A196279

/-! ## A196279.P14293916212424614798

`∑[A131713(A028898(n))]-1`
-/

namespace A196279.P14293916212424614798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A028898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A196279.P14293916212424614798

namespace A196279

/-- `∑[A131713(A028898(n))]-1` -/
def P14293916212424614798.Spec : Prop :=
  ∀ n, P14293916212424614798.a n = A196279 n

end A196279

/-! ## A196279.P16844030000513939285

`∑[A131713(A081597(n))]-1`
-/

namespace A196279.P16844030000513939285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A081597 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A196279.P16844030000513939285

namespace A196279

/-- `∑[A131713(A081597(n))]-1` -/
def P16844030000513939285.Spec : Prop :=
  ∀ n, P16844030000513939285.a n = A196279 n

end A196279

/-! ## A196279.P7104606188635385629

`A008585(A188511(n))-2*n`
-/

namespace A196279.P7104606188635385629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A188511 n).toNat - (2 * n : ℤ)

end

end A196279.P7104606188635385629

namespace A196279

/-- `A008585(A188511(n))-2*n` -/
def P7104606188635385629.Spec : Prop :=
  ∀ n, P7104606188635385629.a n = A196279 n

end A196279

/-! ## A196279.P3519755541626593217

`n-A008585(n-A188511(n))`
-/

namespace A196279.P3519755541626593217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008585 ((n : ℤ) - A188511 n).toNat

end

end A196279.P3519755541626593217

namespace A196279

/-- `n-A008585(n-A188511(n))` -/
def P3519755541626593217.Spec : Prop :=
  ∀ n, P3519755541626593217.a n = A196279 n

end A196279

/-! ## A196279.P6012767320442282734

`n-3*A327440(n+3)`
-/

namespace A196279.P6012767320442282734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A327440 (n + 3)

end

end A196279.P6012767320442282734

namespace A196279

/-- `n-3*A327440(n+3)` -/
def P6012767320442282734.Spec : Prop :=
  ∀ n, P6012767320442282734.a n = A196279 n

end A196279

/-! ## A196279.P18301701081658696383

`n-A008585(A327440(n+3))`
-/

namespace A196279.P18301701081658696383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008585 (A327440 (n + 3)).toNat

end

end A196279.P18301701081658696383

namespace A196279

/-- `n-A008585(A327440(n+3))` -/
def P18301701081658696383.Spec : Prop :=
  ∀ n, P18301701081658696383.a n = A196279 n

end A196279

/-! ## A196279.P10523687776166798149

`n-A008585(A059995(A008585(n+3)))`
-/

namespace A196279.P10523687776166798149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008585 (A059995 (A008585 (n + 3)).toNat).toNat

end

end A196279.P10523687776166798149

namespace A196279

/-- `n-A008585(A059995(A008585(n+3)))` -/
def P10523687776166798149.Spec : Prop :=
  ∀ n, P10523687776166798149.a n = A196279 n

end A196279

/-! ## A196279.P10838842456373844961

`A076309(7*n)/7`
-/

namespace A196279.P10838842456373844961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076309 (7 * n) : ℚ) / 7

end

end A196279.P10838842456373844961

namespace A196279

/-- `A076309(7*n)/7` -/
def P10838842456373844961.Spec : Prop :=
  ∀ n, P10838842456373844961.a n = (A196279 n : ℚ)

end A196279

/-! ## A196279.P7269785859852748224

`A076311(A008599(n))/17`
-/

namespace A196279.P7269785859852748224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076311 (A008599 n).toNat : ℚ) / 17

end

end A196279.P7269785859852748224

namespace A196279

/-- `A076311(A008599(n))/17` -/
def P7269785859852748224.Spec : Prop :=
  ∀ n, P7269785859852748224.a n = (A196279 n : ℚ)

end A196279

/-!
# A196280: a(n) = binomial(n+9, 9)*8^n.

The programs for A196280, there is no canonical definition to state claims against.
-/

/-! ## A196280.P5395500414935237405

`8^n*C(n+9, 9)`
-/

namespace A196280.P5395500414935237405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * Nat.choose (n + 9) 9

end

end A196280.P5395500414935237405

/-! ## A196280.P4865626294058383700

`8*(9/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A196280.P4865626294058383700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 * ((9 / (n : ℚ) + 1) * a (n - 1))

end

end A196280.P4865626294058383700

/-! ## A196280.P2669309845405721864

`2^n*A054340(n)`
-/

namespace A196280.P2669309845405721864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A054340 n

end

end A196280.P2669309845405721864

/-! ## A196280.P10902766813430889398

`4^n*A140354(n)`
-/

namespace A196280.P10902766813430889398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A140354 n

end

end A196280.P10902766813430889398

/-! ## A196280.P7410374293304276615

`8^n*A000582(n+9)`
-/

namespace A196280.P7410374293304276615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000582 (n + 9)

end

end A196280.P7410374293304276615

/-! ## A196280.P8586471173823988500

`8^n*∑[A000581(n+8)]`
-/

namespace A196280.P8586471173823988500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196280.P8586471173823988500

/-! ## A196280.P6078115879992391815

`C(n+9, 9)*A000079(3*n)`
-/

namespace A196280.P6078115879992391815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A000079 (3 * n)

end

end A196280.P6078115879992391815

/-! ## A196280.P12533001070503611919

`C(n+9, 9)*A016116(6*n)`
-/

namespace A196280.P12533001070503611919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A016116 (6 * n)

end

end A196280.P12533001070503611919

/-! ## A196280.P13206528698372252354

`A000079(n)*A000582(n+9)*A000079(n)²`
-/

namespace A196280.P13206528698372252354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000582 (n + 9) * A000079 n ^ 2

end

end A196280.P13206528698372252354

/-! ## A196280.P9486892493311971228

`∑[A000581(n+8)]*A000079(n)*A000079(n)²`
-/

namespace A196280.P9486892493311971228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n * A000079 n ^ 2

end

end A196280.P9486892493311971228

/-!
# A196281: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,3,1,4 for x=0,1,2,3,4.

The programs for A196281, there is no canonical definition to state claims against.
-/

/-! ## A196281.P4437450618497057984

`A196287(∑[4*n]+1)`
-/

namespace A196281.P4437450618497057984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196281.P4437450618497057984

/-! ## A196281.P7582453534087878379

`or(1, A196287(A001844(n)))`
-/

namespace A196281.P7582453534087878379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196287 (A001844 n).toNat)

end

end A196281.P7582453534087878379

/-! ## A196281.P11816066736150905953

`record[A003982(n)*A196287(n+1)]`
-/

namespace A196281.P11816066736150905953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196281.P11816066736150905953

/-! ## A196281.P16520737359569914566

`record[A196287(n+1)*A214505(n)]`
-/

namespace A196281.P16520737359569914566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196281.P16520737359569914566

/-! ## A196281.P3980833901026636505

`record[gcd(A037012(n), A196287(n+1))]`
-/

namespace A196281.P3980833901026636505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A196287 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196281.P3980833901026636505

/-!
# A196282: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,1,4 for x=0,1,2,3,4.

The programs for A196282, there is no canonical definition to state claims against.
-/

/-! ## A196282.P17771888874700791100

`A196287(∑[n+2]+4)`
-/

namespace A196282.P17771888874700791100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196282.P17771888874700791100

/-! ## A196282.P4923157465676322276

`A196314(∑[n+2]+4)`
-/

namespace A196282.P4923157465676322276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196282.P4923157465676322276

/-! ## A196282.P4382239704717104239

`A119335(n)*A196287(A167614(n+1))`
-/

namespace A196282.P4382239704717104239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A196287 (A167614 (n + 1)).toNat

end

end A196282.P4382239704717104239

/-! ## A196282.P1428127589149750

`A196287(A167614(n+1))%A041472(n)`
-/

namespace A196282.P1428127589149750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196287 (A167614 (n + 1)).toNat) (A041472 n)

end

end A196282.P1428127589149750

/-! ## A196282.P7069878307283248782

`A196314(A167614(n+1))%A198644(n)`
-/

namespace A196282.P7069878307283248782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196314 (A167614 (n + 1)).toNat) (A198644 n)

end

end A196282.P7069878307283248782

/-!
# A196283: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,1,4 for x=0,1,2,3,4.

The programs for A196283, there is no canonical definition to state claims against.
-/

/-! ## A196283.P4204079806840320669

`A196287(A374004(n+1))`
-/

namespace A196283.P4204079806840320669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A374004 (n + 1)).toNat

end

end A196283.P4204079806840320669

/-! ## A196283.P18186164250545855108

`A196287(A145018(n+4))`
-/

namespace A196283.P18186164250545855108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A145018 (n + 4)).toNat

end

end A196283.P18186164250545855108

/-! ## A196283.P8773010696864277844

`A196287(A052905(n)+9)`
-/

namespace A196283.P8773010696864277844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A052905 n + 9).toNat

end

end A196283.P8773010696864277844

/-! ## A196283.P1226893081200499964

`A196287(A055999(n)+10)`
-/

namespace A196283.P1226893081200499964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A055999 n + 10).toNat

end

end A196283.P1226893081200499964

/-! ## A196283.P13390147429451075939

`A196287(Δ[A008778(n)]+6)`
-/

namespace A196283.P13390147429451075939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (f1 (n + 1) - f1 n + 6).toNat

end

end A196283.P13390147429451075939

/-!
# A196284: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,1,4 for x=0,1,2,3,4.

The programs for A196284, there is no canonical definition to state claims against.
-/

/-! ## A196284.P4934492755514396720

`A196287(A374005(n+1))`
-/

namespace A196284.P4934492755514396720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A374005 (n + 1)).toNat

end

end A196284.P4934492755514396720

/-! ## A196284.P5639315048640510913

`A196287(A167499(n+3))`
-/

namespace A196284.P5639315048640510913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A167499 (n + 3)).toNat

end

end A196284.P5639315048640510913

/-! ## A196284.P12506313868081449393

`record[A196287(A167499(A008611(n)))]`
-/

namespace A196284.P12506313868081449393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A167499 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196284.P12506313868081449393

/-! ## A196284.P11404338652304741622

`record[A196287(A167499(A008624(n)))]`
-/

namespace A196284.P11404338652304741622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A167499 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196284.P11404338652304741622

/-! ## A196284.P17352325566687089238

`record[A196287(A167499(A028242(n)))]`
-/

namespace A196284.P17352325566687089238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A167499 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196284.P17352325566687089238

/-!
# A196285: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,1,4 for x=0,1,2,3,4.

The programs for A196285, there is no canonical definition to state claims against.
-/

/-! ## A196285.P7765764577621434293

`A196287(A374007(n+1))`
-/

namespace A196285.P7765764577621434293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A374007 (n + 1)).toNat

end

end A196285.P7765764577621434293

/-! ## A196285.P15611750978082539352

`A196287(A000217(n+5)+6)`
-/

namespace A196285.P15611750978082539352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A000217 (n + 5) + 6).toNat

end

end A196285.P15611750978082539352

/-! ## A196285.P9732444507829114851

`A196287(A141214(n+2)+9)`
-/

namespace A196285.P9732444507829114851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A141214 (n + 2) + 9).toNat

end

end A196285.P9732444507829114851

/-! ## A196285.P17042721807810595123

`A196287(A000124(n+6)-(n+1))`
-/

namespace A196285.P17042721807810595123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A196285.P17042721807810595123

/-! ## A196285.P1426058802271801422

`A196287(A167614(n+5)-(n+3))`
-/

namespace A196285.P1426058802271801422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A196285.P1426058802271801422

/-!
# A196286: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,3,1,4 for x=0,1,2,3,4.

The programs for A196286, there is no canonical definition to state claims against.
-/

/-! ## A196286.P13068501163338782478

`A196287(A374008(n+1))`
-/

namespace A196286.P13068501163338782478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A374008 (n + 1)).toNat

end

end A196286.P13068501163338782478

/-! ## A196286.P9891470278203805539

`A196287(A302537(n)+27)`
-/

namespace A196286.P9891470278203805539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (A302537 n + 27).toNat

end

end A196286.P9891470278203805539

/-! ## A196286.P15876973971237268456

`A196287(eq[11, A066657(n)])`
-/

namespace A196286.P15876973971237268456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196286.P15876973971237268456

/-! ## A196286.P1239072725186050094

`A196287(eq[8, A131818(n+1)])`
-/

namespace A196286.P1239072725186050094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196286.P1239072725186050094

/-! ## A196286.P6687371510284881362

`A196287(eq[4, A219347(n)])`
-/

namespace A196286.P6687371510284881362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196287 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196286.P6687371510284881362

/-!
# A196287: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,3,1,4 for x=0,1,2,3,4.

The programs for A196287, there is no canonical definition to state claims against.
-/

/-! ## A196287.P4136720075681296663

`A196337(n+1)%∑[A174111(n)]`
-/

namespace A196287.P4136720075681296663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196337 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196287.P4136720075681296663

/-! ## A196287.P6301115094506902793

`A196314(n+1)%A096708(n+1)`
-/

namespace A196287.P6301115094506902793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196314 (n + 1)) (A096708 (n + 1))

end

end A196287.P6301115094506902793

/-! ## A196287.P12646567702049442956

`A196314(n+1)+A003285(9^∑{e}[n+1, #])`
-/

namespace A196287.P12646567702049442956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (n + 1) + A003285 (9 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A196287.P12646567702049442956

/-! ## A196287.P13760674746184495317

`A196314(n+1)+A003285(∏{p}[n+1, 9^val(n+1, #)])`
-/

namespace A196287.P13760674746184495317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (n + 1) + A003285 (∏ p ∈ Nat.primeFactors (f1 n), 9 ^ SequenceMachineLib.valuation (n + 1) p)

end

end A196287.P13760674746184495317

/-! ## A196287.P8884223089412224683

`A023532(A176157(n))*A196337(n+1)`
-/

namespace A196287.P8884223089412224683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A176157 n).toNat * A196337 (n + 1)

end

end A196287.P8884223089412224683

/-!
# A196288: a(n) = n^8 + n.

The programs for A196288, the canonical program `A196288.P6585146386637395745` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196288 has offset 0).

The definition of A196288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8+n` (program `A196288.P6585146386637395745`, by `A196288.P6585146386637395745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196288.P6585146386637395745

`n^8+n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A196288

/-- `n^8+n` -/
def P6585146386637395745.Spec : Prop :=
  ∀ n, (P6585146386637395745.a n : ℤ) = A196288 n

theorem P6585146386637395745.correct : P6585146386637395745.Spec := by
  intro n
  simp only [A196288]

end A196288

/-!
# A196289: a(n) = n^9 - n.

The programs for A196289, the canonical program `A196289.P16193682725617865103` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196289 has offset 0).

The definition of A196289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9-n` (program `A196289.P16193682725617865103`, by `A196289.P16193682725617865103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196289.P16193682725617865103

`n^9-n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A196289

/-- `n^9-n` -/
def P16193682725617865103.Spec : Prop :=
  ∀ n, P16193682725617865103.a n = A196289 n

theorem P16193682725617865103.correct : P16193682725617865103.Spec := by
  intro n
  simp only [A196289]

end A196289

/-!
# A196290: a(n) = n^9 + n.

The programs for A196290, the canonical program `A196290.P15509192531314657128` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196290 has offset 0).

The definition of A196290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9+n` (program `A196290.P15509192531314657128`, by `A196290.P15509192531314657128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196290.P15509192531314657128

`n^9+n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A196290

/-- `n^9+n` -/
def P15509192531314657128.Spec : Prop :=
  ∀ n, (P15509192531314657128.a n : ℤ) = A196290 n

theorem P15509192531314657128.correct : P15509192531314657128.Spec := by
  intro n
  simp only [A196290]

end A196290

/-!
# A196291: a(n) = n^10 - n.

The programs for A196291, the canonical program `A196291.P1507647903665626748` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196291 has offset 0).

The definition of A196291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10-n` (program `A196291.P1507647903665626748`, by `A196291.P1507647903665626748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196291.P1507647903665626748

`n^10-n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A196291

/-- `n^10-n` -/
def P1507647903665626748.Spec : Prop :=
  ∀ n, P1507647903665626748.a n = A196291 n

theorem P1507647903665626748.correct : P1507647903665626748.Spec := by
  intro n
  simp only [A196291]

end A196291

/-!
# A196292: a(n) = n^10 + n.

The programs for A196292, the canonical program `A196292.P15465651716842654391` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196292 has offset 0).

The definition of A196292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10+n` (program `A196292.P15465651716842654391`, by `A196292.P15465651716842654391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196292.P15465651716842654391

`n^10+n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A196292

/-- `n^10+n` -/
def P15465651716842654391.Spec : Prop :=
  ∀ n, (P15465651716842654391.a n : ℤ) = A196292 n

theorem P15465651716842654391.correct : P15465651716842654391.Spec := by
  intro n
  simp only [A196292]

end A196292

/-!
# A196293: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,1,4,2 for x=0,1,2,3,4.

The programs for A196293, there is no canonical definition to state claims against.
-/

/-! ## A196293.P7280257699026764924

`A196300(∑[4*n]+1)`
-/

namespace A196293.P7280257699026764924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196293.P7280257699026764924

/-! ## A196293.P8388460065407299065

`record[A196300(Δ[A235355(n)])]`
-/

namespace A196293.P8388460065407299065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196293.P8388460065407299065

/-! ## A196293.P7263996500228561047

`and(-1, A196300(A001844(n)))`
-/

namespace A196293.P7263996500228561047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A196300 (A001844 n).toNat)

end

end A196293.P7263996500228561047

/-! ## A196293.P534392174668275756

`record[A196300(A272267(n+1))]`
-/

namespace A196293.P534392174668275756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196293.P534392174668275756

/-!
# A196294: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,4,2 for x=0,1,2,3,4.

The programs for A196294, there is no canonical definition to state claims against.
-/

/-! ## A196294.P8987567802842196350

`A196300(∑[n+1]+2)`
-/

namespace A196294.P8987567802842196350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196294.P8987567802842196350

/-! ## A196294.P16888101089695489758

`record[gcd(A002262(n), A196300(n+2))]`
-/

namespace A196294.P16888101089695489758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A196300 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196294.P16888101089695489758

/-! ## A196294.P15760534552785927343

`A196300(A000217(n+1)+2)+char[16]`
-/

namespace A196294.P15760534552785927343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A000217 (n + 1) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196294.P15760534552785927343

/-! ## A196294.P3423035936850144955

`record[A196300(n+2)/A173020(n+1)]`
-/

namespace A196294.P3423035936850144955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196300 (n + 2) : ℚ) / (A173020 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196294.P3423035936850144955

/-! ## A196294.P2493280955404202517

`A196300(eq[3, A131818(n+1)])%A203573(n)`
-/

namespace A196294.P2493280955404202517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A203573 n)

end

end A196294.P2493280955404202517

/-!
# A196295: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,4,2 for x=0,1,2,3,4.

The programs for A196295, there is no canonical definition to state claims against.
-/

/-! ## A196295.P6251198858413270625

`A196300(∑[n+2]+4)`
-/

namespace A196295.P6251198858413270625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196295.P6251198858413270625

/-! ## A196295.P18376341548813214657

`A196300(A167614(n+1))+char[20]`
-/

namespace A196295.P18376341548813214657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196295.P18376341548813214657

/-! ## A196295.P15378643355166699716

`record[A196300(n+4)/A173020(n+2)]`
-/

namespace A196295.P15378643355166699716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196300 (n + 4) : ℚ) / (A173020 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196295.P15378643355166699716

/-! ## A196295.P17680787688148743525

`A196300(A167614(n+1))*A278657(n)`
-/

namespace A196295.P17680787688148743525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A167614 (n + 1)).toNat * A278657 n

end

end A196295.P17680787688148743525

/-! ## A196295.P9459362958409187405

`gcd(A025444(n), A196300(A167614(n+1)))`
-/

namespace A196295.P9459362958409187405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025444 n) (A196300 (A167614 (n + 1)).toNat)

end

end A196295.P9459362958409187405

/-!
# A196296: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,4,2 for x=0,1,2,3,4.

The programs for A196296, there is no canonical definition to state claims against.
-/

/-! ## A196296.P3853942685698362509

`A196300(A374004(n+1))`
-/

namespace A196296.P3853942685698362509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A374004 (n + 1)).toNat

end

end A196296.P3853942685698362509

/-! ## A196296.P3421972779214711648

`A196300(A141214(n)+7)`
-/

namespace A196296.P3421972779214711648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A141214 n + 7).toNat

end

end A196296.P3421972779214711648

/-! ## A196296.P14268471282044449255

`A196300(A052905(n)+9)`
-/

namespace A196296.P14268471282044449255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A052905 n + 9).toNat

end

end A196296.P14268471282044449255

/-! ## A196296.P17397151063021709245

`A196300(A055999(n)+10)`
-/

namespace A196296.P17397151063021709245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A055999 n + 10).toNat

end

end A196296.P17397151063021709245

/-! ## A196296.P14648475493892524337

`A196300(eq[5, A066657(n)])`
-/

namespace A196296.P14648475493892524337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196296.P14648475493892524337

/-!
# A196297: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,4,2 for x=0,1,2,3,4.

The programs for A196297, there is no canonical definition to state claims against.
-/

/-! ## A196297.P7545168426044481057

`A196300(A374005(n+1))`
-/

namespace A196297.P7545168426044481057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A374005 (n + 1)).toNat

end

end A196297.P7545168426044481057

/-! ## A196297.P14939100558024554846

`A196300(A167499(n+3))`
-/

namespace A196297.P14939100558024554846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A167499 (n + 3)).toNat

end

end A196297.P14939100558024554846

/-! ## A196297.P13641596924532836152

`A196300(A155212(n)+13)`
-/

namespace A196297.P13641596924532836152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A155212 n + 13).toNat

end

end A196297.P13641596924532836152

/-! ## A196297.P6862129420210475567

`A196300(A056000(n)+15)`
-/

namespace A196297.P6862129420210475567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A056000 n + 15).toNat

end

end A196297.P6862129420210475567

/-! ## A196297.P15050162522009615192

`A196300(eq[7, A066657(n)])`
-/

namespace A196297.P15050162522009615192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196297.P15050162522009615192

/-!
# A196298: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,4,2 for x=0,1,2,3,4.

The programs for A196298, there is no canonical definition to state claims against.
-/

/-! ## A196298.P17792084541569851989

`A196300(A374007(n+1))`
-/

namespace A196298.P17792084541569851989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A374007 (n + 1)).toNat

end

end A196298.P17792084541569851989

/-! ## A196298.P16699187663960037668

`A196300(A166136(n+4))`
-/

namespace A196298.P16699187663960037668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A166136 (n + 4)).toNat

end

end A196298.P16699187663960037668

/-! ## A196298.P8458901228481316392

`A196300(A167499(n+4)+1)`
-/

namespace A196298.P8458901228481316392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A167499 (n + 4) + 1).toNat

end

end A196298.P8458901228481316392

/-! ## A196298.P5423910877400526114

`A196300(A000217(n+5)+6)`
-/

namespace A196298.P5423910877400526114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A000217 (n + 5) + 6).toNat

end

end A196298.P5423910877400526114

/-! ## A196298.P5069287026758752810

`A196300(A141214(n+2)+9)`
-/

namespace A196298.P5069287026758752810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A141214 (n + 2) + 9).toNat

end

end A196298.P5069287026758752810

/-!
# A196299: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,4,2 for x=0,1,2,3,4.

The programs for A196299, there is no canonical definition to state claims against.
-/

/-! ## A196299.P1649935363897730614

`A196300(A374008(n+1))`
-/

namespace A196299.P1649935363897730614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A374008 (n + 1)).toNat

end

end A196299.P1649935363897730614

/-! ## A196299.P5374647783727893283

`A196300(A056119(n)+28)`
-/

namespace A196299.P5374647783727893283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A056119 n + 28).toNat

end

end A196299.P5374647783727893283

/-! ## A196299.P13997787611180589506

`A196300(eq[11, A066657(n)])`
-/

namespace A196299.P13997787611180589506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196299.P13997787611180589506

/-! ## A196299.P15304126534133125935

`A196300(A167499(n+5)+2)`
-/

namespace A196299.P15304126534133125935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A167499 (n + 5) + 2).toNat

end

end A196299.P15304126534133125935

/-! ## A196299.P15011865135328101590

`A196300(A167614(n+5)+4)`
-/

namespace A196299.P15011865135328101590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (A167614 (n + 5) + 4).toNat

end

end A196299.P15011865135328101590

