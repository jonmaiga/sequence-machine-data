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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A183500: Half the number of nX8 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183500, there is no canonical definition to state claims against.
-/

/-! ## A183500.P1085610403403669557

`A183501(A374009(n+1))`
-/

namespace A183500.P1085610403403669557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A374009 (n + 1)).toNat

end

end A183500.P1085610403403669557

/-!
# A183501: T(n,k)=Half the number of nXk 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183501, there is no canonical definition to state claims against.
-/

/-! ## A183501.P6068396718641850874

`A218354(n+1)-A329697(A337075(n))`
-/

namespace A183501.P6068396718641850874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (n + 1) - A329697 (A337075 n).toNat

end

end A183501.P6068396718641850874

/-! ## A183501.P17677767145043429087

`A222779(n+1)+A122841(A250070(n+1))`
-/

namespace A183501.P17677767145043429087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (n + 1) + A122841 (A250070 (n + 1)).toNat

end

end A183501.P17677767145043429087

/-! ## A183501.P10605269032221208930

`A222871(n+1)+A122841(A250070(n+1))`
-/

namespace A183501.P10605269032221208930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (n + 1) + A122841 (A250070 (n + 1)).toNat

end

end A183501.P10605269032221208930

/-! ## A183501.P560977768528793886

`A222894(n+1)+A122841(A250070(n+1))`
-/

namespace A183501.P560977768528793886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (n + 1) + A122841 (A250070 (n + 1)).toNat

end

end A183501.P560977768528793886

/-! ## A183501.P12994702494307844376

`A223949(A240327(n+1))%A209865(2*(n+2))`
-/

namespace A183501.P12994702494307844376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223949 (A240327 (n + 1)).toNat) (A209865 (2 * (n + 2)))

end

end A183501.P12994702494307844376

/-!
# A183502: Number of n X n 0..3 arrays with no element equal to the sum mod 4 of its horizontal and vertical neighbors.

The programs for A183502, there is no canonical definition to state claims against.
-/

/-! ## A183502.P12598977919175542285

`A183508(∑[4*n]+1)`
-/

namespace A183502.P12598977919175542285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183502.P12598977919175542285

/-!
# A183503: Number of n X 1 0..3 arrays with no element equal to the sum mod 4 of its horizontal and vertical neighbors.

The programs for A183503, the canonical program `A183503.P6644649150716126565` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183503 has offset 1).

The definition of A183503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183503.P13026346699537796537

`ogf((3+3x-9x^2-9x^3)/(1-3x-3x^3+9x^4))`
-/

namespace A183503.P13026346699537796537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -9, -9] [1, -3, 0, -3, 9] n

end

end A183503.P13026346699537796537

namespace A183503

/-- `ogf((3+3x-9x^2-9x^3)/(1-3x-3x^3+9x^4))` -/
def P13026346699537796537.Spec : Prop :=
  ∀ n, P13026346699537796537.a n = A183503 (n + 1)

end A183503

/-! ## A183503.P6644649150716126565

`3*a(n-1)+3*a(n-3)-9*a(n-4)` with `a(0)=3, a(1)=12, a(2)=27, a(3)=81`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183503

/-- `3*a(n-1)+3*a(n-3)-9*a(n-4)` -/
def P6644649150716126565.Spec : Prop :=
  ∀ n, P6644649150716126565.a n = A183503 (n + 1)

theorem P6644649150716126565.correct : P6644649150716126565.Spec := by
  intro n
  simp only [A183503, Nat.add_sub_cancel]

end A183503

/-! ## A183503.P15270271167197329174

`Δ[A067771(floor((n+1)/3))+A067771(n)]`
-/

namespace A183503.P15270271167197329174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 ⌊(n + 1 : ℚ) / 3⌋.toNat + A067771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183503.P15270271167197329174

namespace A183503

/-- `Δ[A067771(floor((n+1)/3))+A067771(n)]` -/
def P15270271167197329174.Spec : Prop :=
  ∀ n, P15270271167197329174.a n = A183503 (n + 1)

end A183503

/-! ## A183503.P2285184879708510449

`Δ[A029858(n+1)+A029858(A086161(n))]`
-/

namespace A183503.P2285184879708510449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) + A029858 (A086161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183503.P2285184879708510449

namespace A183503

/-- `Δ[A029858(n+1)+A029858(A086161(n))]` -/
def P2285184879708510449.Spec : Prop :=
  ∀ n, P2285184879708510449.a n = A183503 (n + 1)

end A183503

/-! ## A183503.P12316710574971656247

`Δ[A003462(n+1)+A003462(A008620(n+1))]`
-/

namespace A183503.P12316710574971656247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + A003462 (A008620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183503.P12316710574971656247

namespace A183503

/-- `Δ[A003462(n+1)+A003462(A008620(n+1))]` -/
def P12316710574971656247.Spec : Prop :=
  ∀ n, P12316710574971656247.a n = A183503 (n + 1)

end A183503

/-! ## A183503.P14857935915884491387

`Δ[A115098(n+1)+A115098(A002264(n+4))]`
-/

namespace A183503.P14857935915884491387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (n + 1) + A115098 (A002264 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183503.P14857935915884491387

namespace A183503

/-- `Δ[A115098(n+1)+A115098(A002264(n+4))]` -/
def P14857935915884491387.Spec : Prop :=
  ∀ n, P14857935915884491387.a n = A183503 (n + 1)

end A183503

/-!
# A183504: Number of nX2 0..3 arrays with no element equal to the sum mod 4 of its horizontal and vertical neighbors.

The programs for A183504, there is no canonical definition to state claims against.
-/

/-! ## A183504.P13739807027061655270

`A183508(∑[1+n]+2)`
-/

namespace A183504.P13739807027061655270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183504.P13739807027061655270

/-! ## A183504.P11957949139264631895

`record[A183508(A112367(n)+2)]`
-/

namespace A183504.P11957949139264631895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183504.P11957949139264631895

/-! ## A183504.P15613837043987821151

`record[A127829(n)*A183508(n+3)]`
-/

namespace A183504.P15613837043987821151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127829 n * A183508 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183504.P15613837043987821151

/-! ## A183504.P3347004533963310165

`record[gcd(A183508(n+2), A318753(n))]`
-/

namespace A183504.P3347004533963310165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183508 (n + 2)) (A318753 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183504.P3347004533963310165

/-! ## A183504.P8764476176098583324

`record[A183508(A010054(n+1)*n+3)]`
-/

namespace A183504.P8764476176098583324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (A010054 (n + 1) * (n : ℤ) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183504.P8764476176098583324

/-!
# A183505: Number of nX3 0..3 arrays with no element equal to the sum mod 4 of its horizontal and vertical neighbors.

The programs for A183505, there is no canonical definition to state claims against.
-/

/-! ## A183505.P6144071330232147981

`A183508(∑[n+2]+4)`
-/

namespace A183505.P6144071330232147981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183505.P6144071330232147981

/-! ## A183505.P9722978863628017312

`record[gcd(A183508(n+4), A325191(n+1))]`
-/

namespace A183505.P9722978863628017312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183508 (n + 4)) (A325191 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183505.P9722978863628017312

/-!
# A183506: Number of nX4 0..3 arrays with no element equal to the sum mod 4 of its horizontal and vertical neighbors.

The programs for A183506, there is no canonical definition to state claims against.
-/

/-! ## A183506.P15539666180754714586

`A183508(∑[n+3]+7)`
-/

namespace A183506.P15539666180754714586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183506.P15539666180754714586

/-!
# A183507: Number of nX5 0..3 arrays with no element equal to the sum mod 4 of its horizontal and vertical neighbors.

The programs for A183507, there is no canonical definition to state claims against.
-/

/-! ## A183507.P15151356911374742252

`A183508(∑[n+5]+6)`
-/

namespace A183507.P15151356911374742252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183507.P15151356911374742252

/-!
# A183509: Number of n X n binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183509, there is no canonical definition to state claims against.
-/

/-! ## A183509.P9957682732098173806

`A183517(∑[4*n]+1)`
-/

namespace A183509.P9957682732098173806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183509.P9957682732098173806

/-! ## A183509.P10584367193389857793

`record[A183517(Δ[A235355(n)])]`
-/

namespace A183509.P10584367193389857793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183509.P10584367193389857793

/-! ## A183509.P18193350632229994254

`record[A183517(A001844(val(n+1, 2)))]`
-/

namespace A183509.P18193350632229994254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183509.P18193350632229994254

/-!
# A183510: Number of n X 2 binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183510, the canonical program `A183510.P10876691353202393300` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183510 has offset 1).

The definition of A183510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183510.P10876691353202393300

`ogf((2+x^2-2x^3+x^4-9x^5-6x^6)/(1-2x-x^2+2x^4-x^5+x^6+6x^7))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183510

/-- `ogf((2+x^2-2x^3+x^4-9x^5-6x^6)/(1-2x-x^2+2x^4-x^5+x^6+6x^7))` -/
def P10876691353202393300.Spec : Prop :=
  ∀ n, P10876691353202393300.a n = A183510 (n + 1)

theorem P10876691353202393300.correct : P10876691353202393300.Spec := by
  intro n
  simp only [A183510, Nat.add_sub_cancel]

end A183510

/-! ## A183510.P1374463856841477482

`A183517(∑[n+1]+2)`
-/

namespace A183510.P1374463856841477482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183510.P1374463856841477482

namespace A183510

/-- `A183517(∑[n+1]+2)` -/
def P1374463856841477482.Spec : Prop :=
  ∀ n, P1374463856841477482.a n = A183510 (n + 1)

end A183510

/-! ## A183510.P8299198205004251936

`record[A010054(n)*A183517(n+2)]`
-/

namespace A183510.P8299198205004251936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183517 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183510.P8299198205004251936

namespace A183510

/-- `record[A010054(n)*A183517(n+2)]` -/
def P8299198205004251936.Spec : Prop :=
  ∀ n, P8299198205004251936.a n = A183510 (n + 1)

end A183510

/-! ## A183510.P16695051212688607824

`record[A183517(n+3)/A038231(n)]`
-/

namespace A183510.P16695051212688607824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183517 (n + 3) : ℚ) / (A038231 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183510.P16695051212688607824

namespace A183510

/-- `record[A183517(n+3)/A038231(n)]` -/
def P16695051212688607824.Spec : Prop :=
  ∀ n, P16695051212688607824.a n = (A183510 (n + 1) : ℚ)

end A183510

/-! ## A183510.P17760932159426066492

`record[A183517(A133263(val(n+1, 2)+1))]`
-/

namespace A183510.P17760932159426066492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183510.P17760932159426066492

namespace A183510

/-- `record[A183517(A133263(val(n+1, 2)+1))]` -/
def P17760932159426066492.Spec : Prop :=
  ∀ n, P17760932159426066492.a n = A183510 (n + 1)

end A183510

/-!
# A183511: Number of nX3 binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183511, there is no canonical definition to state claims against.
-/

/-! ## A183511.P2248731050617921473

`A183517(∑[n+2]+4)`
-/

namespace A183511.P2248731050617921473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183511.P2248731050617921473

/-! ## A183511.P1318167517166982951

`record[A132013(n)*A183517(n+4)]`
-/

namespace A183511.P1318167517166982951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A183517 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183511.P1318167517166982951

/-! ## A183511.P15896679916283851237

`record[A183517(n+4)/A114189(n)]`
-/

namespace A183511.P15896679916283851237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183517 (n + 4) : ℚ) / (A114189 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183511.P15896679916283851237

/-! ## A183511.P1569572380546617264

`record[A183517(A167614(val(n+1, 2)+1))]`
-/

namespace A183511.P1569572380546617264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183511.P1569572380546617264

/-!
# A183512: Number of nX4 binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183512, there is no canonical definition to state claims against.
-/

/-! ## A183512.P18179181631005883322

`A183517(∑[n+3]+7)`
-/

namespace A183512.P18179181631005883322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183512.P18179181631005883322

/-!
# A183513: Number of nX5 binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183513, there is no canonical definition to state claims against.
-/

/-! ## A183513.P1104223359285251014

`A183517(∑[n+4]+11)`
-/

namespace A183513.P1104223359285251014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A183513.P1104223359285251014

/-!
# A183514: Number of nX6 binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183514, there is no canonical definition to state claims against.
-/

/-! ## A183514.P2929853837251507513

`A183517(A166136(n+4))`
-/

namespace A183514.P2929853837251507513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A166136 (n + 4)).toNat

end

end A183514.P2929853837251507513

/-! ## A183514.P10333215815324493283

`A183517(A374007(n+1))`
-/

namespace A183514.P10333215815324493283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A374007 (n + 1)).toNat

end

end A183514.P10333215815324493283

/-!
# A183515: Number of nX7 binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183515, there is no canonical definition to state claims against.
-/

/-! ## A183515.P8277066195404188766

`A183517(eq[11, A066657(n)])`
-/

namespace A183515.P8277066195404188766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183515.P8277066195404188766

/-! ## A183515.P12537852771496019335

`A183517(A374008(n+1))`
-/

namespace A183515.P12537852771496019335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A374008 (n + 1)).toNat

end

end A183515.P12537852771496019335

/-!
# A183516: Number of nX8 binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183516, there is no canonical definition to state claims against.
-/

/-! ## A183516.P11518341151315987953

`A183517(A374009(n+1))`
-/

namespace A183516.P11518341151315987953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A374009 (n + 1)).toNat

end

end A183516.P11518341151315987953

/-!
# A183517: T(n,k)=Number of nXk binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183517, there is no canonical definition to state claims against.
-/

/-! ## A183517.P5329918587308892201

`A057955(A264128(n+1))`
-/

namespace A183517.P5329918587308892201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057955 (A264128 (n + 1)).toNat

end

end A183517.P5329918587308892201

/-! ## A183517.P15762077989179475825

`A321166(A240406(n+1))`
-/

namespace A183517.P15762077989179475825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321166 (A240406 (n + 1)).toNat

end

end A183517.P15762077989179475825

/-! ## A183517.P13628895920391527050

`A103298(or(1, A264128(n+1)))`
-/

namespace A183517.P13628895920391527050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (Int.lor 1 (A264128 (n + 1))).toNat

end

end A183517.P13628895920391527050

/-!
# A183518: Number of n X n 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183518, there is no canonical definition to state claims against.
-/

/-! ## A183518.P2617876633529365548

`A183526(∑[4*n]+1)`
-/

namespace A183518.P2617876633529365548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183518.P2617876633529365548

/-!
# A183519: Number of nX2 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183519, there is no canonical definition to state claims against.
-/

/-! ## A183519.P12771172582084765256

`A183526(∑[n+1]+2)`
-/

namespace A183519.P12771172582084765256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183519.P12771172582084765256

/-! ## A183519.P17849921656683983040

`record[A010054(n)*A183526(n+2)]`
-/

namespace A183519.P17849921656683983040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183519.P17849921656683983040

/-! ## A183519.P14717650487929428491

`record[gcd(A089840(n), A183526(n+3))]`
-/

namespace A183519.P14717650487929428491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089840 n) (A183526 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183519.P14717650487929428491

/-! ## A183519.P15926963192929120732

`record[A183526(n+3)-A262795(n+1)]`
-/

namespace A183519.P15926963192929120732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (n + 3) - A262795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183519.P15926963192929120732

/-!
# A183520: Number of n X 3 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183520, there is no canonical definition to state claims against.
-/

/-! ## A183520.P1487272281455765332

`A183526(∑[n+2]+4)`
-/

namespace A183520.P1487272281455765332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183520.P1487272281455765332

/-!
# A183521: Number of nX4 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183521, there is no canonical definition to state claims against.
-/

/-! ## A183521.P8165473452886550957

`A183526(∑[n+5]+5-2*n)`
-/

namespace A183521.P8165473452886550957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - 2 * n)

end

end A183521.P8165473452886550957

/-!
# A183522: Number of nX5 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183522, there is no canonical definition to state claims against.
-/

/-! ## A183522.P15333956979151983388

`A183526(A374005(n+1))`
-/

namespace A183522.P15333956979151983388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A374005 (n + 1)).toNat

end

end A183522.P15333956979151983388

/-!
# A183523: Number of nX6 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183523, there is no canonical definition to state claims against.
-/

/-! ## A183523.P4946771571780174048

`A183526(A374007(n+1))`
-/

namespace A183523.P4946771571780174048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A374007 (n + 1)).toNat

end

end A183523.P4946771571780174048

/-!
# A183524: Number of nX7 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183524, there is no canonical definition to state claims against.
-/

/-! ## A183524.P17869976350874833956

`A183526(A374008(1+n))`
-/

namespace A183524.P17869976350874833956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A374008 (1 + n)).toNat

end

end A183524.P17869976350874833956

/-!
# A183525: Number of nX8 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183525, there is no canonical definition to state claims against.
-/

/-! ## A183525.P8649710324767791210

`A183526(A374009(n+1))`
-/

namespace A183525.P8649710324767791210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A374009 (n + 1)).toNat

end

end A183525.P8649710324767791210

/-!
# A183526: T(n,k)=Number of nXk 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183526, there is no canonical definition to state claims against.
-/

/-! ## A183526.P9778672783496138764

`or(1, A202304(A221001(n+1)))`
-/

namespace A183526.P9778672783496138764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202304 (A221001 (n + 1)).toNat)

end

end A183526.P9778672783496138764

/-! ## A183526.P3708076468297094210

`p?[A256158(n)]%A207269(n+1)`
-/

namespace A183526.P3708076468297094210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A207269 (n + 1))

end

end A183526.P3708076468297094210

/-! ## A183526.P17108274423813086408

`and(p?[A256158(n)], A218372(n+1))`
-/

namespace A183526.P17108274423813086408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A218372 (n + 1))

end

end A183526.P17108274423813086408

/-! ## A183526.P1718292538320431503

`A301784(n+1)-A070750(A140146(n+1))`
-/

namespace A183526.P1718292538320431503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) - A070750 (A140146 (n + 1)).toNat

end

end A183526.P1718292538320431503

/-! ## A183526.P13621268127396034627

`A207346(n+1)-A001055(A213709(2*n))`
-/

namespace A183526.P13621268127396034627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (n + 1) - A001055 (A213709 (2 * n)).toNat

end

end A183526.P13621268127396034627

/-!
# A183527: An Ulam-type sequence: a(n) = n if n<=4; for n>4, a(n) = least number > a(n-1) which is a unique sum of 4 distinct earlier terms.

The programs for A183527, there is no canonical definition to state claims against.
-/

/-! ## A183527.P4142799521276677485

`A183534(1+∑[n+3])`
-/

namespace A183527.P4142799521276677485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183527.P4142799521276677485

/-! ## A183527.P3705264355715391386

`record[A183534(A347633(1+n))]`
-/

namespace A183527.P3705264355715391386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A347633 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183527.P3705264355715391386

/-! ## A183527.P2638030944466077373

`record[A183534(A101881((n-1)^((1-(-1)^n)/2)))]`
-/

namespace A183527.P2638030944466077373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A101881 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183527.P2638030944466077373

/-!
# A183528: An Ulam-type sequence: a(n) = n if n<=5; for n>5, a(n) = least number > a(n-1) which is a unique sum of 5 distinct earlier terms.

The programs for A183528, there is no canonical definition to state claims against.
-/

/-! ## A183528.P17912409290049510689

`A183534(3+∑[n+4])`
-/

namespace A183528.P17912409290049510689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183528.P17912409290049510689

/-! ## A183528.P8655880086778074450

`record[A183534(A019304(n))]`
-/

namespace A183528.P8655880086778074450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183528.P8655880086778074450

/-! ## A183528.P3586922816391582952

`record[A183534(A027379(n))]`
-/

namespace A183528.P3586922816391582952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183528.P3586922816391582952

/-! ## A183528.P1330190523553972799

`record[A183534(A134227(n+1)-n)]`
-/

namespace A183528.P1330190523553972799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A134227 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183528.P1330190523553972799

/-!
# A183529: An Ulam-type sequence: a(n) = n if n<=6; for n>6, a(n) = least number > a(n-1) which is a unique sum of 6 distinct earlier terms.

The programs for A183529, there is no canonical definition to state claims against.
-/

/-! ## A183529.P1155310261907501594

`A183534(∑[n+5]+6)`
-/

namespace A183529.P1155310261907501594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183529.P1155310261907501594

/-! ## A183529.P10826558470238162202

`record[A183534(record[A347633(n+1)]+n)]`
-/

namespace A183529.P10826558470238162202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183529.P10826558470238162202

/-! ## A183529.P17366767653414759959

`eq[A112599(n+1), A332246(n)]`
-/

namespace A183529.P17366767653414759959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183529.P17366767653414759959

/-! ## A183529.P16379744461989831255

`eq[A144265(n), A378288(n+1)]`
-/

namespace A183529.P16379744461989831255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183529.P16379744461989831255

/-!
# A183530: An Ulam-type sequence: a(n) = n if n<=7; for n>7, a(n) = least number > a(n-1) which is a unique sum of 7 distinct earlier terms.

The programs for A183530, there is no canonical definition to state claims against.
-/

/-! ## A183530.P5882640049776299320

`A183534(A052905(n+3))`
-/

namespace A183530.P5882640049776299320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A052905 (n + 3)).toNat

end

end A183530.P5882640049776299320

/-! ## A183530.P8249937054508760331

`A349732(A010354(n+1))`
-/

namespace A183530.P8249937054508760331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349732 (A010354 (n + 1)).toNat

end

end A183530.P8249937054508760331

/-! ## A183530.P10914508991359084437

`eq[A015165(n), A393082(n)]`
-/

namespace A183530.P10914508991359084437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015165 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393082 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183530.P10914508991359084437

/-! ## A183530.P10481627209074442509

`eq[A039127(n+1), A364187(n+1)]`
-/

namespace A183530.P10481627209074442509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183530.P10481627209074442509

/-! ## A183530.P9488976927508701781

`eq[A039172(n+1), A364187(n+1)]`
-/

namespace A183530.P9488976927508701781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183530.P9488976927508701781

/-!
# A183531: An Ulam-type sequence: a(n) = n if n<=8; for n>8, a(n) = least number > a(n-1) which is a unique sum of 8 distinct earlier terms.

The programs for A183531, there is no canonical definition to state claims against.
-/

/-! ## A183531.P10380647132176574197

`A183534(A055999(4+n))`
-/

namespace A183531.P10380647132176574197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A055999 (4 + n)).toNat

end

end A183531.P10380647132176574197

/-! ## A183531.P6403357412783773288

`A191923(A128606(n+2))`
-/

namespace A183531.P6403357412783773288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191923 (A128606 (n + 2)).toNat

end

end A183531.P6403357412783773288

/-! ## A183531.P6880758206810140059

`filter[A100753(n+1), A334460(#)]`
-/

namespace A183531.P6880758206810140059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334460 (f1 j).toNat = 1) n)

end

end A183531.P6880758206810140059

/-! ## A183531.P9081203716454342837

`filter[A128606(n+1), A334460(#)]`
-/

namespace A183531.P9081203716454342837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334460 (f1 j).toNat = 1) n)

end

end A183531.P9081203716454342837

/-! ## A183531.P5849633511179082597

`filter[A132416(n+1), A334460(#)]`
-/

namespace A183531.P5849633511179082597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334460 (f1 j).toNat = 1) n)

end

end A183531.P5849633511179082597

/-!
# A183532: An Ulam-type sequence: a(n) = n if n<=9; for n>9, a(n) = least number > a(n-1) which is a unique sum of 9 distinct earlier terms.

The programs for A183532, there is no canonical definition to state claims against.
-/

/-! ## A183532.P11851263286738495325

`A183534(A155212(n+4)+1)`
-/

namespace A183532.P11851263286738495325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A155212 (n + 4) + 1).toNat

end

end A183532.P11851263286738495325

/-! ## A183532.P13650554550156703462

`∩[A023792(n+1), A097569(n+1)]`
-/

namespace A183532.P13650554550156703462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183532.P13650554550156703462

/-! ## A183532.P7457421465484125779

`∩[A023792(n+1), A114440(n+1)]`
-/

namespace A183532.P7457421465484125779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183532.P7457421465484125779

/-! ## A183532.P17328872718014778711

`∩[A023792(n+1), A308561(n+1)]`
-/

namespace A183532.P17328872718014778711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183532.P17328872718014778711

/-! ## A183532.P9835215308921290382

`C(n+1, ∏{e}[n!-1, #])`
-/

namespace A183532.P9835215308921290382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A183532.P9835215308921290382

/-!
# A183533: An Ulam-type sequence: a(n) = n if n<=10; for n>10, a(n) = least number > a(n-1) which is a unique sum of 10 distinct earlier terms.

The programs for A183533, there is no canonical definition to state claims against.
-/

/-! ## A183533.P4987251807241706849

`A183534(A155212(n+5))`
-/

namespace A183533.P4987251807241706849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A155212 (n + 5)).toNat

end

end A183533.P4987251807241706849

/-! ## A183533.P17225603439226652113

`filter[A179310(n+1), A344884(#)]`
-/

namespace A183533.P17225603439226652113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A183533.P17225603439226652113

/-! ## A183533.P3018695145232627398

`∩[A102576(n+1), A179309(n+1)]`
-/

namespace A183533.P3018695145232627398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183533.P3018695145232627398

/-! ## A183533.P11125757201304692034

`∩[A102576(n+1), A179310(n+1)]`
-/

namespace A183533.P11125757201304692034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183533.P11125757201304692034

/-! ## A183533.P14203043662363069006

`∩[A171828(n+1), A179310(n+1)]`
-/

namespace A183533.P14203043662363069006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183533.P14203043662363069006

/-!
# A183534: Square array of generalized Ulam numbers U(n,k), n>=1, k>=2, read by antidiagonals: U(n,k) = n if n<=k; for n>k, U(n,k) = least number > U(n-1,k) which is a unique sum of k distinct terms U(i,k) with i<n.

The programs for A183534, there is no canonical definition to state claims against.
-/

/-! ## A183534.P2776545768155906839

`A176353(A263905(n+1))+A002262(n)`
-/

namespace A183534.P2776545768155906839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176353 (A263905 (n + 1)).toNat + A002262 n

end

end A183534.P2776545768155906839

/-! ## A183534.P1252135513882959667

`A176353(A263905(n+1))+A025682(n+1)`
-/

namespace A183534.P1252135513882959667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176353 (A263905 (n + 1)).toNat + A025682 (n + 1)

end

end A183534.P1252135513882959667

/-! ## A183534.P15515396684403239825

`A262954(4^A099173(n))`
-/

namespace A183534.P15515396684403239825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262954 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A099173 n : ℤ))).toNat

end

end A183534.P15515396684403239825

/-! ## A183534.P10216776042571225702

`A103183(A209766(n+1)+1)`
-/

namespace A183534.P10216776042571225702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103183 (A209766 (n + 1) + 1).toNat

end

end A183534.P10216776042571225702

/-! ## A183534.P2982610792349474136

`A120842(5^A336820(n+1))`
-/

namespace A183534.P2982610792349474136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120842 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A336820 (n + 1) : ℤ))).toNat

end

end A183534.P2982610792349474136

/-!
# A183535: Number of n X n 0..3 arrays with each element equal to either the sum mod 4 of its horizontal and vertical neighbors or the sum mod 4 of its diagonal and antidiagonal neighbors.

The programs for A183535, there is no canonical definition to state claims against.
-/

/-! ## A183535.P4973516894568727144

`A183541(∑[4*n]+1)`
-/

namespace A183535.P4973516894568727144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183535.P4973516894568727144

/-!
# A183536: Number of nX2 0..3 arrays with each element equal to either the sum mod 4 of its horizontal and vertical neighbors or the sum mod 4 of its diagonal and antidiagonal neighbors.

The programs for A183536, there is no canonical definition to state claims against.
-/

/-! ## A183536.P18147847413978061312

`A183541(∑[n+1]+2)`
-/

namespace A183536.P18147847413978061312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183536.P18147847413978061312

/-! ## A183536.P10198831273691225940

`record[A010054(n)*A183541(n+2)]`
-/

namespace A183536.P10198831273691225940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183536.P10198831273691225940

/-! ## A183536.P2917291105483446099

`record[A183541(n+3)/A027465(n)]`
-/

namespace A183536.P2917291105483446099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183541 (n + 3) : ℚ) / (A027465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183536.P2917291105483446099

/-! ## A183536.P7128523503649015839

`record[A183541(lt[A197167(n+1), n])]`
-/

namespace A183536.P7128523503649015839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183536.P7128523503649015839

/-!
# A183537: Number of nX3 0..3 arrays with each element equal to either the sum mod 4 of its horizontal and vertical neighbors or the sum mod 4 of its diagonal and antidiagonal neighbors.

The programs for A183537, there is no canonical definition to state claims against.
-/

/-! ## A183537.P5998243553538483991

`A183541(∑[n+2]+4)`
-/

namespace A183537.P5998243553538483991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183537.P5998243553538483991

/-!
# A183538: Number of nX4 0..3 arrays with each element equal to either the sum mod 4 of its horizontal and vertical neighbors or the sum mod 4 of its diagonal and antidiagonal neighbors.

The programs for A183538, there is no canonical definition to state claims against.
-/

/-! ## A183538.P6456065767984957072

`A183541(A141214(n)+7)`
-/

namespace A183538.P6456065767984957072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (A141214 n + 7).toNat

end

end A183538.P6456065767984957072

/-! ## A183538.P11006134980036369039

`A183541(A020752(n+1))`
-/

namespace A183538.P11006134980036369039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (A020752 (n + 1)).toNat

end

end A183538.P11006134980036369039

/-!
# A183539: Number of nX5 0..3 arrays with each element equal to either the sum mod 4 of its horizontal and vertical neighbors or the sum mod 4 of its diagonal and antidiagonal neighbors.

The programs for A183539, there is no canonical definition to state claims against.
-/

/-! ## A183539.P16650570403954766131

`A183541(Δ[A264443(n)])`
-/

namespace A183539.P16650570403954766131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (f1 (n + 1) - f1 n).toNat

end

end A183539.P16650570403954766131

/-!
# A183542: First of two complementary trees generated by the Wythoff sequences.

The programs for A183542, there is no canonical definition to state claims against.
-/

/-! ## A183542.P15376641440637294708

`A183544(A048680(n+1))`
-/

namespace A183542.P15376641440637294708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183544 (A048680 (n + 1)).toNat

end

end A183542.P15376641440637294708

/-!
# A183543: Second of two complementary trees generated by the Wythoff sequences.

The programs for A183543, there is no canonical definition to state claims against.
-/

/-! ## A183543.P4231280679494495895

`A048680(lt[n, 2*and(n, 2*n)])-1`
-/

namespace A183543.P4231280679494495895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) - 1

end

end A183543.P4231280679494495895

/-! ## A183543.P16341934209328342973

`A048680(A004755(1+n))-1`
-/

namespace A183543.P16341934209328342973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A004755 (1 + n)).toNat - 1

end

end A183543.P16341934209328342973

/-! ## A183543.P6673039291138148451

`A048680(A004760(3+n))-1`
-/

namespace A183543.P6673039291138148451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A004760 (3 + n)).toNat - 1

end

end A183543.P6673039291138148451

/-! ## A183543.P10548268142498026456

`A048680(lt[A153141(n), n])-1`
-/

namespace A183543.P10548268142498026456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - 1

end

end A183543.P10548268142498026456

/-! ## A183543.P3367588382804855762

`A048680(A206332(n+1)+1)-1`
-/

namespace A183543.P3367588382804855762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A206332 (n + 1) + 1).toNat - 1

end

end A183543.P3367588382804855762

/-! ## A183543.P3056615656147536728

`A056017(A048680(2*n+3))-1`
-/

namespace A183543.P3056615656147536728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056017 (A048680 (2 * n + 3)).toNat - 1

end

end A183543.P3056615656147536728

/-!
# A183544: Ordering of the numbers in the tree A183542; complement of A183545.

The programs for A183544, there is no canonical definition to state claims against.
-/

/-! ## A183544.P7608033228345841051

`eq[0, round(a(floor(n/ϕ)))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0`

`round` is left out, it is the identity on integers.
-/

namespace A183544.P7608033228345841051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183544.P7608033228345841051

/-! ## A183544.P3534808678486524839

`eq[1, a(floor(n/ϕ))%4]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A183544.P3534808678486524839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 1, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183544.P3534808678486524839

/-! ## A183544.P13000218693645433154

`comp[A345347(n)-1]`
-/

namespace A183544.P13000218693645433154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345347 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183544.P13000218693645433154

/-! ## A183544.P15395290062549131684

`A130312(1+n)+n`
-/

namespace A183544.P15395290062549131684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (1 + n) + (n : ℤ)

end

end A183544.P15395290062549131684

/-! ## A183544.P13277259970295126212

`∑[runs[A356988(n+2)]]`
-/

namespace A183544.P13277259970295126212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356988 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183544.P13277259970295126212

/-! ## A183544.P6482508387595630324

`lt[1, val(A277331(n+1), 2)]`
-/

namespace A183544.P6482508387595630324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277331 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A183544.P6482508387595630324

/-! ## A183544.P3085425078764798388

`Δ[n²]-A357589(n+1)`
-/

namespace A183544.P3085425078764798388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A357589 (n + 1)

end

end A183544.P3085425078764798388

/-! ## A183544.P3710843652993039748

`fp[A356988(n+1)-1]-1`
-/

namespace A183544.P3710843652993039748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356988 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - 1

end

end A183544.P3710843652993039748

/-! ## A183544.P223380193146397483

`round(A087172(n+1)/ϕ)+n`
-/

namespace A183544.P223380193146397483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087172 (n + 1) : ℝ) / Real.goldenRatio) + (n : ℤ)

end

end A183544.P223380193146397483

/-! ## A183544.P14144136395321293233

`A005181(floor(log((n+1)²)))+n`
-/

namespace A183544.P14144136395321293233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 ⌊Real.log ((n + 1) ^ 2 : ℝ)⌋.toNat + (n : ℤ)

end

end A183544.P14144136395321293233

/-!
# A183545: Ordering of the numbers in the tree A183543; complement of A183544.

The programs for A183545, there is no canonical definition to state claims against.
-/

/-! ## A183545.P14156703795675599480

`eq[1, a(floor(n/ϕ))²]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0`
-/

namespace A183545.P14156703795675599480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 0, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183545.P14156703795675599480

/-! ## A183545.P6209214193995257194

`eq[2, abs(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=0, a(5)=1`
-/

namespace A183545.P6209214193995257194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 0, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183545.P6209214193995257194

/-! ## A183545.P2593383557509851718

`eq[2, round(a(floor(n/ϕ)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=0, a(5)=0`

`round` is left out, it is the identity on integers.
-/

namespace A183545.P2593383557509851718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 0, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183545.P2593383557509851718

/-! ## A183545.P5657669425207508572

`lt[0, a(floor(n/ϕ))²]` with `a(0)=0, a(1)=0, a(2)=-1, a(3)=1, a(4)=0, a(5)=0`
-/

namespace A183545.P5657669425207508572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -1, 1, 0, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183545.P5657669425207508572

/-! ## A183545.P1851767951540113073

`lt[2, round(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=1, a(5)=-3`

`round` is left out, it is the identity on integers.
-/

namespace A183545.P1851767951540113073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 1, -3] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183545.P1851767951540113073

/-! ## A183545.P12172192838370791907

`lt[1, floor(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=-1, a(2)=-1, a(3)=6, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183545.P12172192838370791907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, -1, 6, 1, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183545.P12172192838370791907

/-! ## A183545.P15100274961227955311

`eq[0, -a(floor(n/ϕ))]` with `a(0)=-1, a(1)=-2, a(2)=1, a(3)=0, a(4)=1, a(5)=-2`
-/

namespace A183545.P15100274961227955311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, -2, 1, 0, 1, -2] fun n f2 =>
  -f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183545.P15100274961227955311

/-! ## A183545.P18330194733548790700

`eq[2, floor(a(floor(n/ϕ)))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A183545.P18330194733548790700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0, 0, 2] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183545.P18330194733548790700

/-! ## A183545.P2000352215736472310

`fp[A066628(n+1)]`
-/

namespace A183545.P2000352215736472310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A183545.P2000352215736472310

/-! ## A183545.P2022597178890644354

`fp[A066628(n)]-1`
-/

namespace A183545.P2022597178890644354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - 1

end

end A183545.P2022597178890644354

/-!
# A183546: Number of n X n 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183546, there is no canonical definition to state claims against.
-/

/-! ## A183546.P1201913661462370808

`A183554(∑[4*n]+1)`
-/

namespace A183546.P1201913661462370808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183546.P1201913661462370808

/-! ## A183546.P4200074691135219443

`record[A003982(n)*A183554(n+1)]`
-/

namespace A183546.P4200074691135219443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183546.P4200074691135219443

/-! ## A183546.P2117744779147565251

`record[A183554(n+1)*A214505(n)]`
-/

namespace A183546.P2117744779147565251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183546.P2117744779147565251

/-!
# A183547: Number of n X 2 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183547, the canonical program `A183547.P17617765754079382918` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183547 has offset 1).

The definition of A183547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183547.P17617765754079382918

`ogf((3+5x^2-23x^3+10x^4-32x^5+17x^6+13x^7+9x^8+10x^9)/(1-5x+3x^2-4x^3+9x^4+13x^6-8x^7-4x^8-7x^9-2x^10))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183547

/-- `ogf((3+5x^2-23x^3+10x^4-32x^5+17x^6+13x^7+9x^8+10x^9)/(1-5x+3x^2-4x^3+9x^4+13x^6-8x^7-4x^8-7x^9-2x^10))` -/
def P17617765754079382918.Spec : Prop :=
  ∀ n, P17617765754079382918.a n = A183547 (n + 1)

theorem P17617765754079382918.correct : P17617765754079382918.Spec := by
  intro n
  simp only [A183547, Nat.add_sub_cancel]

end A183547

/-! ## A183547.P9294356756406876098

`A183554(∑[n+1]+2)`
-/

namespace A183547.P9294356756406876098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183547.P9294356756406876098

namespace A183547

/-- `A183554(∑[n+1]+2)` -/
def P9294356756406876098.Spec : Prop :=
  ∀ n, P9294356756406876098.a n = A183547 (n + 1)

end A183547

/-! ## A183547.P5986256913314960551

`record[A183554(Δ[A003453(n+5)]+2)]`
-/

namespace A183547.P5986256913314960551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183547.P5986256913314960551

namespace A183547

/-- `record[A183554(Δ[A003453(n+5)]+2)]` -/
def P5986256913314960551.Spec : Prop :=
  ∀ n, P5986256913314960551.a n = A183547 (n + 1)

end A183547

/-! ## A183547.P10185723597398566995

`record[root(A183554(n+2), A183534(n+1))]`
-/

namespace A183547.P10185723597398566995
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183554 (n + 2) : ℝ) ^ (1 / (A183534 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183547.P10185723597398566995

namespace A183547

/-- `record[root(A183554(n+2), A183534(n+1))]` -/
def P10185723597398566995.Spec : Prop :=
  ∀ n, P10185723597398566995.a n = (A183547 (n + 1) : ℝ)

end A183547

/-! ## A183547.P2907720223718418702

`record[A183554(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A183547.P2907720223718418702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183547.P2907720223718418702

namespace A183547

/-- `record[A183554(A133263(∑[(-1)^(n%3)]))]` -/
def P2907720223718418702.Spec : Prop :=
  ∀ n, P2907720223718418702.a n = A183547 (n + 1)

end A183547

/-!
# A183548: Number of nX3 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183548, there is no canonical definition to state claims against.
-/

/-! ## A183548.P17966687013591917317

`A183554(∑[n+2]+4)`
-/

namespace A183548.P17966687013591917317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183548.P17966687013591917317

/-!
# A183549: Number of nX4 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183549, there is no canonical definition to state claims against.
-/

/-! ## A183549.P3402992381870174985

`A183554(A141214(n)+7)`
-/

namespace A183549.P3402992381870174985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A141214 n + 7).toNat

end

end A183549.P3402992381870174985

/-! ## A183549.P10706872172441082890

`A183554(A141214(n+1))`
-/

namespace A183549.P10706872172441082890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A141214 (n + 1)).toNat

end

end A183549.P10706872172441082890

/-!
# A183550: Number of nX5 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183550, there is no canonical definition to state claims against.
-/

/-! ## A183550.P7087184146037136986

`A183554(A056000(n)+15)`
-/

namespace A183550.P7087184146037136986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A056000 n + 15).toNat

end

end A183550.P7087184146037136986

/-! ## A183550.P18244743253756000843

`A183554(Δ[A264443(n)])`
-/

namespace A183550.P18244743253756000843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (f1 (n + 1) - f1 n).toNat

end

end A183550.P18244743253756000843

/-!
# A183551: Number of nX6 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183551, there is no canonical definition to state claims against.
-/

/-! ## A183551.P1074073821744229689

`A183554(eq[7, A131818(n+1)])`
-/

namespace A183551.P1074073821744229689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183551.P1074073821744229689

/-! ## A183551.P16238789941680053857

`A183554(A374007(n+1))`
-/

namespace A183551.P16238789941680053857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A374007 (n + 1)).toNat

end

end A183551.P16238789941680053857

/-!
# A183552: Number of nX7 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183552, there is no canonical definition to state claims against.
-/

/-! ## A183552.P155347751174186379

`A183554(A167487(n+5))`
-/

namespace A183552.P155347751174186379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A167487 (n + 5)).toNat

end

end A183552.P155347751174186379

/-! ## A183552.P5499954582933597060

`A183554(A374008(n+1))`
-/

namespace A183552.P5499954582933597060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A374008 (n + 1)).toNat

end

end A183552.P5499954582933597060

/-!
# A183553: Number of nX8 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183553, there is no canonical definition to state claims against.
-/

/-! ## A183553.P15689482876286815900

`A183554(A374009(n+1))`
-/

namespace A183553.P15689482876286815900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A374009 (n + 1)).toNat

end

end A183553.P15689482876286815900

/-!
# A183555: Positions of the records of the positive integers in A179319; a(n) is the first position in A179319 equal to +n.

The programs for A183555, there is no canonical definition to state claims against.
-/

/-! ## A183555.P3925640128901909437

`A183557(A100832(n+1))`
-/

namespace A183555.P3925640128901909437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183557 (A100832 (n + 1)).toNat

end

end A183555.P3925640128901909437

/-!
# A183556: Positions of the records of the negative integers in A179319; a(n) is the first position in A179319 equal to -n.

The programs for A183556, there is no canonical definition to state claims against.
-/

/-! ## A183556.P10352510387000878588

`Δ[A077259(n)]-1`
-/

namespace A183556.P10352510387000878588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A183556.P10352510387000878588

/-! ## A183556.P649387902690702377

`A183557(record[or(2, n)])`
-/

namespace A183556.P649387902690702377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A183556.P649387902690702377

/-! ## A183556.P16286104412139402254

`lcm(2, A085348(n))-1`
-/

namespace A183556.P16286104412139402254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A085348 n) : ℤ) - 1

end

end A183556.P16286104412139402254

/-! ## A183556.P8083544640612541293

`Δ[A351354(n+1)]-1`
-/

namespace A183556.P8083544640612541293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A183556.P8083544640612541293

/-! ## A183556.P12014382685619699618

`∑[A014445(or(1, n))]-1`
-/

namespace A183556.P12014382685619699618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A183556.P12014382685619699618

/-!
# A183557: Positions of records in A179319 for both positive and negative integers; A183555 and A183556 merged together.

The programs for A183557, there is no canonical definition to state claims against.
-/

/-! ## A183557.P6806366576260133596

`∑[A117647(n)]-A001221(A136480(n))`
-/

namespace A183557.P6806366576260133596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001221 (A136480 n).toNat

end

end A183557.P6806366576260133596

/-! ## A183557.P2025196984691447955

`A004525(A116470(3*n+1)-A125768(2*n+1))`
-/

namespace A183557.P2025196984691447955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A116470 (3 * n + 1) - A125768 (2 * n + 1)).toNat

end

end A183557.P2025196984691447955

/-! ## A183557.P2227290106130023033

`or(n, A055086(A179191(n)))`
-/

namespace A183557.P2227290106130023033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A055086 (A179191 n).toNat)

end

end A183557.P2227290106130023033

/-! ## A183557.P17532803228366991111

`or(n, A004788(A242452(n)))`
-/

namespace A183557.P17532803228366991111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A004788 (A242452 n).toNat)

end

end A183557.P17532803228366991111

/-!
# A183558: Number of partitions of n containing a clique of size 1.

The programs for A183558, there is no canonical definition to state claims against.
-/

/-! ## A183558.P148538827219903463

`A000041(n)-A007690(n)`
-/

namespace A183558.P148538827219903463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A007690 n

end

end A183558.P148538827219903463

/-! ## A183558.P5677668878747234995

`∑[A002865(n)]-A007690(n)`
-/

namespace A183558.P5677668878747234995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007690 n

end

end A183558.P5677668878747234995

/-! ## A183558.P13639953690886596588

`1+A000065(n)-A007690(n)`
-/

namespace A183558.P13639953690886596588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 n - A007690 n

end

end A183558.P13639953690886596588

/-! ## A183558.P996495353989649960

`A133041(n)-n-A007690(n)`
-/

namespace A183558.P996495353989649960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A007690 n

end

end A183558.P996495353989649960

/-! ## A183558.P8811074929186083456

`∑[A085811(n+3)]-A007690(n)`
-/

namespace A183558.P8811074929186083456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007690 n

end

end A183558.P8811074929186083456

/-! ## A183558.P7702565859563672671

`A000837(n)+A018783(n)-A007690(n)`
-/

namespace A183558.P7702565859563672671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A007690 n)

end

end A183558.P7702565859563672671

/-! ## A183558.P13236355799954456721

`A035363(2*n)-A007690(n)`
-/

namespace A183558.P13236355799954456721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A007690 n

end

end A183558.P13236355799954456721

/-! ## A183558.P12779166108236442177

`A119620(2*n+1)-A007690(n)`
-/

namespace A183558.P12779166108236442177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n + 1) - A007690 n

end

end A183558.P12779166108236442177

/-! ## A183558.P5431777766523016305

`A114099(9*n)-A007690(n)`
-/

namespace A183558.P5431777766523016305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (9 * n) - A007690 n

end

end A183558.P5431777766523016305

/-! ## A183558.P4425589228287966909

`A002095(n)+A235945(n)-A007690(n)`
-/

namespace A183558.P4425589228287966909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n + (A235945 n - A007690 n)

end

end A183558.P4425589228287966909

/-! ## A183558.P6123116444302087302

`A000041(n)-A116595(∑[A123578(n)])`
-/

namespace A183558.P6123116444302087302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A116595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183558.P6123116444302087302

/-! ## A183558.P17260418428286955595

`A000041(n)-A264403(∑[n])`
-/

namespace A183558.P17260418428286955595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A264403 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183558.P17260418428286955595

/-! ## A183558.P1456513179661830404

`A243978(∑[n]+1)`
-/

namespace A183558.P1456513179661830404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183558.P1456513179661830404

/-! ## A183558.P17571099401723356128

`A183568(A253145(n)-n)-A000007(n)`
-/

namespace A183558.P17571099401723356128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A253145 n - (n : ℤ)).toNat - A000007 n

end

end A183558.P17571099401723356128

/-!
# A183559: Number of partitions of n containing a clique of size 2.

The programs for A183559, there is no canonical definition to state claims against.
-/

/-! ## A183559.P2964642661704554076

`A000041(n+2)-A116645(n+2)`
-/

namespace A183559.P2964642661704554076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2) - A116645 (n + 2)

end

end A183559.P2964642661704554076

/-! ## A183559.P14973443741602900850

`A000065(n+2)+1-A116645(n+2)`
-/

namespace A183559.P14973443741602900850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 2) + (1 - A116645 (n + 2))

end

end A183559.P14973443741602900850

/-! ## A183559.P14660186491077584086

`A035444(A008586(n+2))-A116645(n+2)`
-/

namespace A183559.P14660186491077584086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 (n + 2)).toNat - A116645 (n + 2)

end

end A183559.P14660186491077584086

/-! ## A183559.P5224137157892724050

`sqrt(A001255(n+2))-A116645(n+2)`
-/

namespace A183559.P5224137157892724050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 (n + 2) : ℝ) - (A116645 (n + 2) : ℝ)

end

end A183559.P5224137157892724050

/-! ## A183559.P16578306680384924364

`A183568(3+∑[n+2])`
-/

namespace A183559.P16578306680384924364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183559.P16578306680384924364

/-!
# A183560: Number of partitions of n containing a clique of size 3.

The programs for A183560, there is no canonical definition to state claims against.
-/

/-! ## A183560.P11346714832879183005

`A000041(n+3)-A118807(n+3)`
-/

namespace A183560.P11346714832879183005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 3) - A118807 (n + 3)

end

end A183560.P11346714832879183005

/-! ## A183560.P8653507514122959525

`A183568(∑[n+3]+6)`
-/

namespace A183560.P8653507514122959525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183560.P8653507514122959525

/-!
# A183561: Number of partitions of n containing a clique of size 4.

The programs for A183561, there is no canonical definition to state claims against.
-/

/-! ## A183561.P10122883264131408073

`A000041(n+4)-A184639(n+4)`
-/

namespace A183561.P10122883264131408073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 4) - A184639 (n + 4)

end

end A183561.P10122883264131408073

/-! ## A183561.P3922678525200492899

`A183568(∑[n+4]+10)`
-/

namespace A183561.P3922678525200492899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A183561.P3922678525200492899

/-! ## A183561.P6902121647170793579

`record[A183568(n+10)]-A184639(n+4)`
-/

namespace A183561.P6902121647170793579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A184639 (n + 4)

end

end A183561.P6902121647170793579

/-! ## A183561.P8273842753124482489

`record[A183568(n+14)]%A184639(n+4)`
-/

namespace A183561.P8273842753124482489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A184639 (n + 4))

end

end A183561.P8273842753124482489

/-! ## A183561.P1321925421395481907

`A241068(A013939(n+2)^A347049(2*n+1))`
-/

namespace A183561.P1321925421395481907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241068 (SequenceMachineLib.roundAway ((A013939 (n + 2) : ℚ) ^ (A347049 (2 * n + 1) : ℤ))).toNat

end

end A183561.P1321925421395481907

/-!
# A183562: Number of partitions of n containing a clique of size 5.

The programs for A183562, there is no canonical definition to state claims against.
-/

/-! ## A183562.P8609008672079719564

`A000041(n+5)-A184640(n+5)`
-/

namespace A183562.P8609008672079719564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 5) - A184640 (n + 5)

end

end A183562.P8609008672079719564

/-! ## A183562.P10439645463592503410

`A183568(C(n+7, 2)-(n+1))`
-/

namespace A183562.P10439645463592503410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (Nat.choose (n + 7) 2 - (n + 1))

end

end A183562.P10439645463592503410

/-! ## A183562.P5714672089470382976

`record[A183568(n+15)]-A184640(n+5)`
-/

namespace A183562.P5714672089470382976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A184640 (n + 5)

end

end A183562.P5714672089470382976

/-!
# A183563: Number of partitions of n containing a clique of size 6.

The programs for A183563, there is no canonical definition to state claims against.
-/

/-! ## A183563.P4502068267813464243

`A000041(n+6)-A184641(n+6)`
-/

namespace A183563.P4502068267813464243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 6) - A184641 (n + 6)

end

end A183563.P4502068267813464243

/-! ## A183563.P3650246584684969100

`A183568(C(n+7, 2)+6)`
-/

namespace A183563.P3650246584684969100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (Nat.choose (n + 7) 2 + 6)

end

end A183563.P3650246584684969100

/-!
# A183564: Number of partitions of n containing a clique of size 7.

The programs for A183564, there is no canonical definition to state claims against.
-/

/-! ## A183564.P5680651948000817356

`A000041(n+7)-A184642(n+7)`
-/

namespace A183564.P5680651948000817356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 7) - A184642 (n + 7)

end

end A183564.P5680651948000817356

/-! ## A183564.P1903247072553136834

`A183568(A167487(n+6))`
-/

namespace A183564.P1903247072553136834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A167487 (n + 6)).toNat

end

end A183564.P1903247072553136834

/-! ## A183564.P1699889614300355843

`A103298(A327798(n))`
-/

namespace A183564.P1699889614300355843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A327798 n).toNat

end

end A183564.P1699889614300355843

/-!
# A183565: Number of partitions of n containing a clique of size 8.

The programs for A183565, there is no canonical definition to state claims against.
-/

/-! ## A183565.P5693201273696470187

`A000041(n+8)-A184643(n+8)`
-/

namespace A183565.P5693201273696470187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 8) - A184643 (n + 8)

end

end A183565.P5693201273696470187

/-! ## A183565.P18012131067293841629

`A183568(∑[n+8]+36)`
-/

namespace A183565.P18012131067293841629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (∑ j ∈ Finset.range (n + 1), f1 j + 36)

end

end A183565.P18012131067293841629

/-!
# A183566: Number of partitions of n containing a clique of size 9.

The programs for A183566, there is no canonical definition to state claims against.
-/

/-! ## A183566.P5647191400384525280

`A000041(n+9)-A184644(n+9)`
-/

namespace A183566.P5647191400384525280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 9) - A184644 (n + 9)

end

end A183566.P5647191400384525280

/-! ## A183566.P15310629996976590216

`A183568(C(10+n, 2)+9)`
-/

namespace A183566.P15310629996976590216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (Nat.choose (10 + n) 2 + 9)

end

end A183566.P15310629996976590216

/-!
# A183567: Number of partitions of n containing a clique of size 10.

The programs for A183567, there is no canonical definition to state claims against.
-/

/-! ## A183567.P4041308207719763423

`A000041(n+10)-A184645(n+10)`
-/

namespace A183567.P4041308207719763423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 10) - A184645 (n + 10)

end

end A183567.P4041308207719763423

/-! ## A183567.P8240103450243771265

`A183568(A166136(n+9)+4)`
-/

namespace A183567.P8240103450243771265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A166136 (n + 9) + 4).toNat

end

end A183567.P8240103450243771265

/-!
# A183568: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) is the number of partitions of n containing a clique of size k.

The programs for A183568, there is no canonical definition to state claims against.
-/

/-! ## A183568.P13597870522490940037

`A325687(A219206(n))+A052823(A122200(n))`
-/

namespace A183568.P13597870522490940037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325687 (A219206 n).toNat + A052823 (A122200 n).toNat

end

end A183568.P13597870522490940037

/-! ## A183568.P6842030251353761595

`A027293(n+1)-A014375(A225094(n))`
-/

namespace A183568.P6842030251353761595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1) - A014375 (A225094 n).toNat

end

end A183568.P6842030251353761595

/-! ## A183568.P6559356487666635453

`A027293(n+1)-A276794(A163943(n))`
-/

namespace A183568.P6559356487666635453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1) - A276794 (A163943 n).toNat

end

end A183568.P6559356487666635453

/-! ## A183568.P11484085772213587397

`A099375(n)-A299090(A075503(n+1))`
-/

namespace A183568.P11484085772213587397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n - A299090 (A075503 (n + 1)).toNat

end

end A183568.P11484085772213587397

/-! ## A183568.P6026468744776244208

`A027293(n+1)-A055641(A075500(n+1))`
-/

namespace A183568.P6026468744776244208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1) - A055641 (A075500 (n + 1)).toNat

end

end A183568.P6026468744776244208

/-!
# A183569: n+floor(sqrt(4n-3)), complement of A024206.

The programs for A183569, the canonical program `A183569.P5499308566454369165` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183569 has offset 1).

The definition of A183569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(4*(n+1)-3))` (program `A183569.P5499308566454369165`, by `A183569.P5499308566454369165.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183569.P5499308566454369165

`n+1+floor(sqrt(4*(n+1)-3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183569

/-- `n+1+floor(sqrt(4*(n+1)-3))` -/
def P5499308566454369165.Spec : Prop :=
  ∀ n, P5499308566454369165.a n = A183569 (n + 1)

theorem P5499308566454369165.correct : P5499308566454369165.Spec := by
  intro n
  simp only [A183569, Nat.add_sub_cancel]

end A183569

/-! ## A183569.P123363264307023537

`comp[∑[∑[n%2]-1]]`
-/

namespace A183569.P123363264307023537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P123363264307023537

namespace A183569

/-- `comp[∑[∑[n%2]-1]]` -/
def P123363264307023537.Spec : Prop :=
  ∀ n, (P123363264307023537.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P18294486279960520781

`comp[∑[∑[and(1, n)]]-1]`
-/

namespace A183569.P18294486279960520781
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P18294486279960520781

namespace A183569

/-- `comp[∑[∑[and(1, n)]]-1]` -/
def P18294486279960520781.Spec : Prop :=
  ∀ n, (P18294486279960520781.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P15985379136140157378

`ceil(record[sqrt(xor(3, n))]+n)`
-/

namespace A183569.P15985379136140157378
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℝ)⌉

end

end A183569.P15985379136140157378

namespace A183569

/-- `ceil(record[sqrt(xor(3, n))]+n)` -/
def P15985379136140157378.Spec : Prop :=
  ∀ n, P15985379136140157378.a n = A183569 (n + 1)

end A183569

/-! ## A183569.P12695639061800520798

`ceil(2/acot(sqrt(n))+n)`
-/

namespace A183569.P12695639061800520798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ)) + (n : ℝ)⌉

end

end A183569.P12695639061800520798

namespace A183569

/-- `ceil(2/acot(sqrt(n))+n)` -/
def P12695639061800520798.Spec : Prop :=
  ∀ n, P12695639061800520798.a n = A183569 (n + 1)

end A183569

/-! ## A183569.P16167036426216394210

`fp[floor((n/2)²)]+n`
-/

namespace A183569.P16167036426216394210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + n

end

end A183569.P16167036426216394210

namespace A183569

/-- `fp[floor((n/2)²)]+n` -/
def P16167036426216394210.Spec : Prop :=
  ∀ n, (P16167036426216394210.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P14860970164354071320

`comp[a(n-2)+n]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A183569.P14860970164354071320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183569.P14860970164354071320

namespace A183569

/-- `comp[a(n-2)+n]` -/
def P14860970164354071320.Spec : Prop :=
  ∀ n, (P14860970164354071320.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P2011166933427357206

`comp[n-(4-a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A183569.P2011166933427357206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - (4 - f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P2011166933427357206

namespace A183569

/-- `comp[n-(4-a(n-2))]` -/
def P2011166933427357206.Spec : Prop :=
  ∀ n, (P2011166933427357206.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P5271064883858300785

`comp[A078126(n)]`
-/

namespace A183569.P5271064883858300785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P5271064883858300785

namespace A183569

/-- `comp[A078126(n)]` -/
def P5271064883858300785.Spec : Prop :=
  ∀ n, (P5271064883858300785.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P18099393345988825343

`∑[A240025(n)+1]`
-/

namespace A183569.P18099393345988825343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183569.P18099393345988825343

namespace A183569

/-- `∑[A240025(n)+1]` -/
def P18099393345988825343.Spec : Prop :=
  ∀ n, P18099393345988825343.a n = A183569 (n + 1)

end A183569

/-! ## A183569.P13539679184933190344

`comp[A024206(n+1)]`
-/

namespace A183569.P13539679184933190344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P13539679184933190344

namespace A183569

/-- `comp[A024206(n+1)]` -/
def P13539679184933190344.Spec : Prop :=
  ∀ n, (P13539679184933190344.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P1110343925952590747

`comp[A002620(n)-1]`
-/

namespace A183569.P1110343925952590747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P1110343925952590747

namespace A183569

/-- `comp[A002620(n)-1]` -/
def P1110343925952590747.Spec : Prop :=
  ∀ n, (P1110343925952590747.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P7704616830498779562

`comp[A008130(n)-1]`
-/

namespace A183569.P7704616830498779562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P7704616830498779562

namespace A183569

/-- `comp[A008130(n)-1]` -/
def P7704616830498779562.Spec : Prop :=
  ∀ n, (P7704616830498779562.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P5186219317833681958

`comp[A008133(n)-1]`
-/

namespace A183569.P5186219317833681958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P5186219317833681958

namespace A183569

/-- `comp[A008133(n)-1]` -/
def P5186219317833681958.Spec : Prop :=
  ∀ n, (P5186219317833681958.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P3996294068528660011

`comp[A008217(n)-1]`
-/

namespace A183569.P3996294068528660011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P3996294068528660011

namespace A183569

/-- `comp[A008217(n)-1]` -/
def P3996294068528660011.Spec : Prop :=
  ∀ n, (P3996294068528660011.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P561424353580523228

`comp[A008497(n)-1]`
-/

namespace A183569.P561424353580523228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008497 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P561424353580523228

namespace A183569

/-- `comp[A008497(n)-1]` -/
def P561424353580523228.Spec : Prop :=
  ∀ n, (P561424353580523228.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P1065065353687361115

`comp[A008642(n)-1]`
-/

namespace A183569.P1065065353687361115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P1065065353687361115

namespace A183569

/-- `comp[A008642(n)-1]` -/
def P1065065353687361115.Spec : Prop :=
  ∀ n, (P1065065353687361115.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P15917870903001397209

`comp[A008733(n)-1]`
-/

namespace A183569.P15917870903001397209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P15917870903001397209

namespace A183569

/-- `comp[A008733(n)-1]` -/
def P15917870903001397209.Spec : Prop :=
  ∀ n, (P15917870903001397209.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P7614491434414669793

`comp[A008737(n)-1]`
-/

namespace A183569.P7614491434414669793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P7614491434414669793

namespace A183569

/-- `comp[A008737(n)-1]` -/
def P7614491434414669793.Spec : Prop :=
  ∀ n, (P7614491434414669793.a n : ℤ) = A183569 (n + 1)

end A183569

/-! ## A183569.P11712047075443685721

`comp[A008767(n)-1]`
-/

namespace A183569.P11712047075443685721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P11712047075443685721

namespace A183569

/-- `comp[A008767(n)-1]` -/
def P11712047075443685721.Spec : Prop :=
  ∀ n, (P11712047075443685721.a n : ℤ) = A183569 (n + 1)

end A183569

/-!
# A183570: a(n) = n + floor(sqrt(n + 1)).

The programs for A183570, the canonical program `A183570.P17560604229379144785` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183570 has offset 0).

The definition of A183570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(sqrt(n+1))` (program `A183570.P17560604229379144785`, by `A183570.P17560604229379144785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183570.P17560604229379144785

`n+floor(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183570

/-- `n+floor(sqrt(n+1))` -/
def P17560604229379144785.Spec : Prop :=
  ∀ n, (P17560604229379144785.a n : ℤ) = A183570 n

theorem P17560604229379144785.correct : P17560604229379144785.Spec := by
  intro n
  simp only [A183570]

end A183570

/-! ## A183570.P184322410912519193

`comp[record[(n-3)*n]]`
-/

namespace A183570.P184322410912519193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P184322410912519193

namespace A183570

/-- `comp[record[(n-3)*n]]` -/
def P184322410912519193.Spec : Prop :=
  ∀ n, (P184322410912519193.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P17287304529812886584

`comp[2*(C(n, 2)-1)]`
-/

namespace A183570.P17287304529812886584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose n 2 : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P17287304529812886584

namespace A183570

/-- `comp[2*(C(n, 2)-1)]` -/
def P17287304529812886584.Spec : Prop :=
  ∀ n, (P17287304529812886584.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P15783501275578679622

`comp[lcm(1+n, n)-2]`
-/

namespace A183570.P15783501275578679622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (1 + n) n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P15783501275578679622

namespace A183570

/-- `comp[lcm(1+n, n)-2]` -/
def P15783501275578679622.Spec : Prop :=
  ∀ n, (P15783501275578679622.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P8068544191260053952

`comp[lcm(2, (n+3)*n)]`
-/

namespace A183570.P8068544191260053952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 3) * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183570.P8068544191260053952

namespace A183570

/-- `comp[lcm(2, (n+3)*n)]` -/
def P8068544191260053952.Spec : Prop :=
  ∀ n, (P8068544191260053952.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P14392940117306729010

`comp[(col(n)+3)*col(n)]`
-/

namespace A183570.P14392940117306729010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 3) * SequenceMachineLib.triCol n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183570.P14392940117306729010

namespace A183570

/-- `comp[(col(n)+3)*col(n)]` -/
def P14392940117306729010.Spec : Prop :=
  ∀ n, (P14392940117306729010.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P12983163362702399329

`comp[(row(n)+3)*row(n)]`
-/

namespace A183570.P12983163362702399329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 3) * SequenceMachineLib.triRow n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183570.P12983163362702399329

namespace A183570

/-- `comp[(row(n)+3)*row(n)]` -/
def P12983163362702399329.Spec : Prop :=
  ∀ n, (P12983163362702399329.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P7094437028123767098

`comp[col(n)+col(n)²-2]`
-/

namespace A183570.P7094437028123767098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + SequenceMachineLib.triCol n ^ 2 : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P7094437028123767098

namespace A183570

/-- `comp[col(n)+col(n)²-2]` -/
def P7094437028123767098.Spec : Prop :=
  ∀ n, (P7094437028123767098.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P10710586852749247911

`comp[(col(n)-2)²-col(n)]`
-/

namespace A183570.P10710586852749247911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n : ℤ) - 2) ^ 2 - (SequenceMachineLib.triCol n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P10710586852749247911

namespace A183570

/-- `comp[(col(n)-2)²-col(n)]` -/
def P10710586852749247911.Spec : Prop :=
  ∀ n, (P10710586852749247911.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P13633196280209614008

`comp[row(n)+row(n)²-2]`
-/

namespace A183570.P13633196280209614008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + SequenceMachineLib.triRow n ^ 2 : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P13633196280209614008

namespace A183570

/-- `comp[row(n)+row(n)²-2]` -/
def P13633196280209614008.Spec : Prop :=
  ∀ n, (P13633196280209614008.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P11508977010423187053

`comp[(row(n)-2)²-row(n)]`
-/

namespace A183570.P11508977010423187053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - 2) ^ 2 - (SequenceMachineLib.triRow n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P11508977010423187053

namespace A183570

/-- `comp[(row(n)-2)²-row(n)]` -/
def P11508977010423187053.Spec : Prop :=
  ∀ n, (P11508977010423187053.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P8108117669918197610

`abs(fp[n²-1]+n-1)`
-/

namespace A183570.P8108117669918197610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) + ((n : ℤ) - 1)|

end

end A183570.P8108117669918197610

namespace A183570

/-- `abs(fp[n²-1]+n-1)` -/
def P8108117669918197610.Spec : Prop :=
  ∀ n, P8108117669918197610.a n = A183570 n

end A183570

/-! ## A183570.P8176704957117427340

`fp[round(n+2-sqrt(n+3))]`
-/

namespace A183570.P8176704957117427340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) - Real.sqrt (n + 3 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A183570.P8176704957117427340

namespace A183570

/-- `fp[round(n+2-sqrt(n+3))]` -/
def P8176704957117427340.Spec : Prop :=
  ∀ n, (P8176704957117427340.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P10199430989687329792

`comp[∑[a(n-1)+2]-2]` with `a(0)=2`
-/

namespace A183570.P10199430989687329792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P10199430989687329792

namespace A183570

/-- `comp[∑[a(n-1)+2]-2]` -/
def P10199430989687329792.Spec : Prop :=
  ∀ n, (P10199430989687329792.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P6715156110535507303

`comp[A028552(n)]`
-/

namespace A183570.P6715156110535507303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183570.P6715156110535507303

namespace A183570

/-- `comp[A028552(n)]` -/
def P6715156110535507303.Spec : Prop :=
  ∀ n, (P6715156110535507303.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P10781095462156634293

`∑[2-A267866(n)]`
-/

namespace A183570.P10781095462156634293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183570.P10781095462156634293

namespace A183570

/-- `∑[2-A267866(n)]` -/
def P10781095462156634293.Spec : Prop :=
  ∀ n, P10781095462156634293.a n = A183570 n

end A183570

/-! ## A183570.P6922243034762178593

`∑[ceil(acot(A145895(n)))]`
-/

namespace A183570.P6922243034762178593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A145895 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183570.P6922243034762178593

namespace A183570

/-- `∑[ceil(acot(A145895(n)))]` -/
def P6922243034762178593.Spec : Prop :=
  ∀ n, P6922243034762178593.a n = A183570 n

end A183570

/-! ## A183570.P1513570681549077910

`lt[0, A308896(n+2)]`
-/

namespace A183570.P1513570681549077910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308896 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183570.P1513570681549077910

namespace A183570

/-- `lt[0, A308896(n+2)]` -/
def P1513570681549077910.Spec : Prop :=
  ∀ n, (P1513570681549077910.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P1816775004303961568

`∑[char[A005563(n+1)]+1]`
-/

namespace A183570.P1816775004303961568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183570.P1816775004303961568

namespace A183570

/-- `∑[char[A005563(n+1)]+1]` -/
def P1816775004303961568.Spec : Prop :=
  ∀ n, (P1816775004303961568.a n : ℤ) = A183570 n

end A183570

/-!
# A183571: n+floor(sqrt(n+2)).

The programs for A183571, the canonical program `A183571.P14643178038538305989` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183571 has offset 1).

The definition of A183571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(n+3))` (program `A183571.P14643178038538305989`, by `A183571.P14643178038538305989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183571.P14643178038538305989

`n+1+floor(sqrt(n+3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183571

/-- `n+1+floor(sqrt(n+3))` -/
def P14643178038538305989.Spec : Prop :=
  ∀ n, (P14643178038538305989.a n : ℤ) = A183571 (n + 1)

theorem P14643178038538305989.correct : P14643178038538305989.Spec := by
  intro n
  simp only [A183571, Nat.add_sub_cancel]

end A183571

/-! ## A183571.P4423177793573436393

`fp[n²-3]+n`
-/

namespace A183571.P4423177793573436393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + n

end

end A183571.P4423177793573436393

namespace A183571

/-- `fp[n²-3]+n` -/
def P4423177793573436393.Spec : Prop :=
  ∀ n, (P4423177793573436393.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P12795381013732556414

`ceil(sqrt(4+and(n, n))+n)`
-/

namespace A183571.P12795381013732556414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 + Nat.land n n : ℝ) + (n : ℝ)⌉

end

end A183571.P12795381013732556414

namespace A183571

/-- `ceil(sqrt(4+and(n, n))+n)` -/
def P12795381013732556414.Spec : Prop :=
  ∀ n, P12795381013732556414.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P5756950010974307751

`ceil(sqrt(4+or(n, n))+n)`
-/

namespace A183571.P5756950010974307751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 + Nat.lor n n : ℝ) + (n : ℝ)⌉

end

end A183571.P5756950010974307751

namespace A183571

/-- `ceil(sqrt(4+or(n, n))+n)` -/
def P5756950010974307751.Spec : Prop :=
  ∀ n, P5756950010974307751.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P16272018152010269673

`record[abs(2-floor(sqrt(n))-n)]`
-/

namespace A183571.P16272018152010269673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.sqrt n : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183571.P16272018152010269673

namespace A183571

/-- `record[abs(2-floor(sqrt(n))-n)]` -/
def P16272018152010269673.Spec : Prop :=
  ∀ n, P16272018152010269673.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P17836648210777894237

`ceil(sqrt(3-xor(n, -1))+n)`
-/

namespace A183571.P17836648210777894237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 - Int.xor (n : ℤ) (-1) : ℝ) + (n : ℝ)⌉

end

end A183571.P17836648210777894237

namespace A183571

/-- `ceil(sqrt(3-xor(n, -1))+n)` -/
def P17836648210777894237.Spec : Prop :=
  ∀ n, P17836648210777894237.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P2389448264601919117

`round(sqrt(a(n-1)+5)+n)` with `a(0)=2`
-/

namespace A183571.P2389448264601919117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) + 5 : ℝ) + (n : ℝ))

end

end A183571.P2389448264601919117

namespace A183571

/-- `round(sqrt(a(n-1)+5)+n)` -/
def P2389448264601919117.Spec : Prop :=
  ∀ n, P2389448264601919117.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P15648164868586261796

`ceil(sqrt(C(n+1, n)+3)+n)`
-/

namespace A183571.P15648164868586261796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (n + 1) n + 3 : ℝ) + (n : ℝ)⌉

end

end A183571.P15648164868586261796

namespace A183571

/-- `ceil(sqrt(C(n+1, n)+3)+n)` -/
def P15648164868586261796.Spec : Prop :=
  ∀ n, P15648164868586261796.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P11532170239083065793

`ceil(sqrt(xor(xor(n+4, n), n))+n)`
-/

namespace A183571.P11532170239083065793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.xor (Nat.xor (n + 4) n) n : ℝ) + (n : ℝ)⌉

end

end A183571.P11532170239083065793

namespace A183571

/-- `ceil(sqrt(xor(xor(n+4, n), n))+n)` -/
def P11532170239083065793.Spec : Prop :=
  ∀ n, P11532170239083065793.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P12432296721554661123

`comp[a(n-1)+2*n]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A183571.P12432296721554661123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 1) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183571.P12432296721554661123

namespace A183571

/-- `comp[a(n-1)+2*n]` -/
def P12432296721554661123.Spec : Prop :=
  ∀ n, (P12432296721554661123.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P2586797453711681468

`comp[∑[comp[a(n-1)+2]]]` with `a(0)=3, a(1)=4, a(2)=3`
-/

namespace A183571.P2586797453711681468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 3] fun n f3 =>
  f3 (n - 1) + 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183571.P2586797453711681468

namespace A183571

/-- `comp[∑[comp[a(n-1)+2]]]` -/
def P2586797453711681468.Spec : Prop :=
  ∀ n, (P2586797453711681468.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P9564309160022765210

`comp[n+a(n-1)+n]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A183571.P9564309160022765210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  n + f1 (n - 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183571.P9564309160022765210

namespace A183571

/-- `comp[n+a(n-1)+n]` -/
def P9564309160022765210.Spec : Prop :=
  ∀ n, (P9564309160022765210.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P16301687445754397565

`comp[A004274(∑[n])]`
-/

namespace A183571.P16301687445754397565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183571.P16301687445754397565

namespace A183571

/-- `comp[A004274(∑[n])]` -/
def P16301687445754397565.Spec : Prop :=
  ∀ n, (P16301687445754397565.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P7313194347242862451

`comp[∑[A248158(n+1)]]`
-/

namespace A183571.P7313194347242862451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248158 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183571.P7313194347242862451

namespace A183571

/-- `comp[∑[A248158(n+1)]]` -/
def P7313194347242862451.Spec : Prop :=
  ∀ n, (P7313194347242862451.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P8854709495220194635

`∑[char[abs(1-A005563(n))-1]+1]`
-/

namespace A183571.P8854709495220194635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A005563 n| - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183571.P8854709495220194635

namespace A183571

/-- `∑[char[abs(1-A005563(n))-1]+1]` -/
def P8854709495220194635.Spec : Prop :=
  ∀ n, (P8854709495220194635.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P16716333671707502005

`∑[A062557(∑[2-A062557(n)])]`
-/

namespace A183571.P16716333671707502005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A062557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183571.P16716333671707502005

namespace A183571

/-- `∑[A062557(∑[2-A062557(n)])]` -/
def P16716333671707502005.Spec : Prop :=
  ∀ n, P16716333671707502005.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P889689441767665981

`∑[2-A267814(∑[A267814(n)])]`
-/

namespace A183571.P889689441767665981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267814 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183571.P889689441767665981

namespace A183571

/-- `∑[2-A267814(∑[A267814(n)])]` -/
def P889689441767665981.Spec : Prop :=
  ∀ n, P889689441767665981.a n = A183571 (n + 1)

end A183571

/-! ## A183571.P14792403616755697555

`∪[A184016(n+1), A183869(n)]`
-/

namespace A183571.P14792403616755697555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183571.P14792403616755697555

namespace A183571

/-- `∪[A184016(n+1), A183869(n)]` -/
def P14792403616755697555.Spec : Prop :=
  ∀ n, (P14792403616755697555.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P140309758734239163

`∪[A217575(n+1), A183869(n)]`
-/

namespace A183571.P140309758734239163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183571.P140309758734239163

namespace A183571

/-- `∪[A217575(n+1), A183869(n)]` -/
def P140309758734239163.Spec : Prop :=
  ∀ n, (P140309758734239163.a n : ℤ) = A183571 (n + 1)

end A183571

/-! ## A183571.P11870756055619486843

`∪[A183869(n), A394957(n+1)]`
-/

namespace A183571.P11870756055619486843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183571.P11870756055619486843

namespace A183571

/-- `∪[A183869(n), A394957(n+1)]` -/
def P11870756055619486843.Spec : Prop :=
  ∀ n, (P11870756055619486843.a n : ℤ) = A183571 (n + 1)

end A183571

/-!
# A183572: a(n) = n + floor(sqrt(2*n-1)).

The programs for A183572, the canonical program `A183572.P15039593679889350833` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183572 has offset 1).

The definition of A183572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(2*(n+1)-1))` (program `A183572.P15039593679889350833`, by `A183572.P15039593679889350833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183572.P15039593679889350833

`n+1+floor(sqrt(2*(n+1)-1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183572

/-- `n+1+floor(sqrt(2*(n+1)-1))` -/
def P15039593679889350833.Spec : Prop :=
  ∀ n, P15039593679889350833.a n = A183572 (n + 1)

theorem P15039593679889350833.correct : P15039593679889350833.Spec := by
  intro n
  simp only [A183572, Nat.add_sub_cancel]

end A183572

/-! ## A183572.P7683591316161541083

`eq[0, abs(T(n-2,k-1))]` with `a(0)=1, a(1)=1`
-/

namespace A183572.P7683591316161541083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  SequenceMachineLib.triUp2Left f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183572.P7683591316161541083

namespace A183572

/-- `eq[0, abs(T(n-2,k-1))]` -/
def P7683591316161541083.Spec : Prop :=
  ∀ n, (P7683591316161541083.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P18057628807159462077

`eq[0, -T(n-2,k-1)]` with `a(0)=1, a(1)=1`
-/

namespace A183572.P18057628807159462077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  -SequenceMachineLib.triUp2Left f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183572.P18057628807159462077

namespace A183572

/-- `eq[0, -T(n-2,k-1)]` -/
def P18057628807159462077.Spec : Prop :=
  ∀ n, (P18057628807159462077.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P17711801488053898596

`eq[0, T(n-2,k-1)²]` with `a(0)=1, a(1)=1`
-/

namespace A183572.P17711801488053898596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  SequenceMachineLib.triUp2Left f2 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183572.P17711801488053898596

namespace A183572

/-- `eq[0, T(n-2,k-1)²]` -/
def P17711801488053898596.Spec : Prop :=
  ∀ n, (P17711801488053898596.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P553840550382567876

`∑[T(n-2,k-1)!]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A183572.P553840550382567876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  Nat.factorial (SequenceMachineLib.triUp2Left f1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183572.P553840550382567876

namespace A183572

/-- `∑[T(n-2,k-1)!]` -/
def P553840550382567876.Spec : Prop :=
  ∀ n, (P553840550382567876.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P13174408208640400193

`eq[0, sqrt(T(n-2,k-1))]` with `a(0)=6, a(1)=1`
-/

namespace A183572.P13174408208640400193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [6, 1] fun n f2 =>
  Real.sqrt (SequenceMachineLib.triUp2Left f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A183572.P13174408208640400193

namespace A183572

/-- `eq[0, sqrt(T(n-2,k-1))]` -/
def P13174408208640400193.Spec : Prop :=
  ∀ n, (P13174408208640400193.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P12838444045489257075

`eq[0, floor(T(n-2,k-1))]` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183572.P12838444045489257075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  SequenceMachineLib.triUp2Left f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183572.P12838444045489257075

namespace A183572

/-- `eq[0, floor(T(n-2,k-1))]` -/
def P12838444045489257075.Spec : Prop :=
  ∀ n, (P12838444045489257075.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P14435734030223691862

`eq[0, ceil(T(n-2,k-1))]` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A183572.P14435734030223691862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  SequenceMachineLib.triUp2Left f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183572.P14435734030223691862

namespace A183572

/-- `eq[0, ceil(T(n-2,k-1))]` -/
def P14435734030223691862.Spec : Prop :=
  ∀ n, (P14435734030223691862.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P7956708962245472479

`comp[∑[or(1, n-1)]]`
-/

namespace A183572.P7956708962245472479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183572.P7956708962245472479

namespace A183572

/-- `comp[∑[or(1, n-1)]]` -/
def P7956708962245472479.Spec : Prop :=
  ∀ n, (P7956708962245472479.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P14943104139719220143

`comp[∑[-or(1, -n)]]`
-/

namespace A183572.P14943104139719220143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183572.P14943104139719220143

namespace A183572

/-- `comp[∑[-or(1, -n)]]` -/
def P14943104139719220143.Spec : Prop :=
  ∀ n, (P14943104139719220143.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P4229950235196474714

`eq[0, 2*T(n-2,k-1)]` with `a(0)=1, a(1)=1`
-/

namespace A183572.P4229950235196474714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * SequenceMachineLib.triUp2Left f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183572.P4229950235196474714

namespace A183572

/-- `eq[0, 2*T(n-2,k-1)]` -/
def P4229950235196474714.Spec : Prop :=
  ∀ n, (P4229950235196474714.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P305137587816699546

`lt[2*T(n-2,k-1), 1]` with `a(0)=1, a(1)=1`
-/

namespace A183572.P305137587816699546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * SequenceMachineLib.triUp2Left f1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A183572.P305137587816699546

namespace A183572

/-- `lt[2*T(n-2,k-1), 1]` -/
def P305137587816699546.Spec : Prop :=
  ∀ n, (P305137587816699546.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P12561389619476255411

`eq[0, T(n-2,k-1)%2]` with `a(0)=1, a(1)=1`
-/

namespace A183572.P12561389619476255411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  SequenceMachineLib.triUp2Left f2 n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183572.P12561389619476255411

namespace A183572

/-- `eq[0, T(n-2,k-1)%2]` -/
def P12561389619476255411.Spec : Prop :=
  ∀ n, (P12561389619476255411.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P8666729119635929207

`lt[1, gcd(2, T(n-2,k-1))]` with `a(0)=1, a(1)=1`
-/

namespace A183572.P8666729119635929207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  Nat.gcd 2 (SequenceMachineLib.triUp2Left f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A183572.P8666729119635929207

namespace A183572

/-- `lt[1, gcd(2, T(n-2,k-1))]` -/
def P8666729119635929207.Spec : Prop :=
  ∀ n, (P8666729119635929207.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P11108907183964665068

`comp[∑[and(n, -2)]+n]`
-/

namespace A183572.P11108907183964665068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183572.P11108907183964665068

namespace A183572

/-- `comp[∑[and(n, -2)]+n]` -/
def P11108907183964665068.Spec : Prop :=
  ∀ n, (P11108907183964665068.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P9729998392740816364

`comp[fp[sqrt(2*n+3)]]`
-/

namespace A183572.P9729998392740816364
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n + 3 : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f2 j) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183572.P9729998392740816364

namespace A183572

/-- `comp[fp[sqrt(2*n+3)]]` -/
def P9729998392740816364.Spec : Prop :=
  ∀ n, (P9729998392740816364.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P4670915528632723665

`fp[floor(n²/2)]+n`
-/

namespace A183572.P4670915528632723665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + n

end

end A183572.P4670915528632723665

namespace A183572

/-- `fp[floor(n²/2)]+n` -/
def P4670915528632723665.Spec : Prop :=
  ∀ n, (P4670915528632723665.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P8808897554881031530

`comp[∑[a(n-2)+2]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A183572.P8808897554881031530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183572.P8808897554881031530

namespace A183572

/-- `comp[∑[a(n-2)+2]]` -/
def P8808897554881031530.Spec : Prop :=
  ∀ n, (P8808897554881031530.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P225638409157822672

`comp[a(n-2)+2*n]` with `a(0)=0, a(1)=1`
-/

namespace A183572.P225638409157822672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183572.P225638409157822672

namespace A183572

/-- `comp[a(n-2)+2*n]` -/
def P225638409157822672.Spec : Prop :=
  ∀ n, (P225638409157822672.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P15516250608130072330

`comp[a(n-2)+n+n]` with `a(0)=0, a(1)=1`
-/

namespace A183572.P15516250608130072330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183572.P15516250608130072330

namespace A183572

/-- `comp[a(n-2)+n+n]` -/
def P15516250608130072330.Spec : Prop :=
  ∀ n, (P15516250608130072330.a n : ℤ) = A183572 (n + 1)

end A183572

/-!
# A183573: a(n) = n + floor(sqrt(2n+1)).

The programs for A183573, the canonical program `A183573.P10860664594631500250` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183573 has offset 1).

The definition of A183573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(2*(n+1)+1))` (program `A183573.P10860664594631500250`, by `A183573.P10860664594631500250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183573.P10860664594631500250

`n+1+floor(sqrt(2*(n+1)+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183573

/-- `n+1+floor(sqrt(2*(n+1)+1))` -/
def P10860664594631500250.Spec : Prop :=
  ∀ n, (P10860664594631500250.a n : ℤ) = A183573 (n + 1)

theorem P10860664594631500250.correct : P10860664594631500250.Spec := by
  intro n
  simp only [A183573, Nat.add_sub_cancel]

end A183573

/-! ## A183573.P9251456475778195818

`ceil(record[sqrt(xor(2, 1+n))]+n)`
-/

namespace A183573.P9251456475778195818
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 2 (1 + n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℝ)⌉

end

end A183573.P9251456475778195818

namespace A183573

/-- `ceil(record[sqrt(xor(2, 1+n))]+n)` -/
def P9251456475778195818.Spec : Prop :=
  ∀ n, P9251456475778195818.a n = A183573 (n + 1)

end A183573

/-! ## A183573.P6250396529286042839

`comp[or(1, a(n-1))+n]` with `a(0)=0, a(1)=1`
-/

namespace A183573.P6250396529286042839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lor 1 (f1 (n - 1)) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183573.P6250396529286042839

namespace A183573

/-- `comp[or(1, a(n-1))+n]` -/
def P6250396529286042839.Spec : Prop :=
  ∀ n, (P6250396529286042839.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P8872167338188631602

`ceil(sqrt(or(3, 2*(n+1)))+n)`
-/

namespace A183573.P8872167338188631602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lor 3 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A183573.P8872167338188631602

namespace A183573

/-- `ceil(sqrt(or(3, 2*(n+1)))+n)` -/
def P8872167338188631602.Spec : Prop :=
  ∀ n, P8872167338188631602.a n = A183573 (n + 1)

end A183573

/-! ## A183573.P5458808245666794655

`fp[n+1-sqrt(2*(n+2))]`
-/

namespace A183573.P5458808245666794655
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (2 * (n + 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A183573.P5458808245666794655

namespace A183573

/-- `fp[n+1-sqrt(2*(n+2))]` -/
def P5458808245666794655.Spec : Prop :=
  ∀ n, (P5458808245666794655.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P14515866387555724871

`fp[n-1-sqrt(2*n)]-2`
-/

namespace A183573.P14515866387555724871
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) - Real.sqrt (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0 : ℤ) - 2

end

end A183573.P14515866387555724871

namespace A183573

/-- `fp[n-1-sqrt(2*n)]-2` -/
def P14515866387555724871.Spec : Prop :=
  ∀ n, P14515866387555724871.a n = A183573 (n + 1)

end A183573

/-! ## A183573.P8881657652247898227

`comp[a(n-2)+n+n]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A183573.P8881657652247898227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (n - 2) + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183573.P8881657652247898227

namespace A183573

/-- `comp[a(n-2)+n+n]` -/
def P8881657652247898227.Spec : Prop :=
  ∀ n, (P8881657652247898227.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P15364394327159267115

`comp[∑[char[or(1, n+1)+3]+n]]`
-/

namespace A183573.P15364394327159267115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183573.P15364394327159267115

namespace A183573

/-- `comp[∑[char[or(1, n+1)+3]+n]]` -/
def P15364394327159267115.Spec : Prop :=
  ∀ n, (P15364394327159267115.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P15183455501518462610

`comp[∑[∑[(7-a(n-1))%5]]]` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=0`
-/

namespace A183573.P15183455501518462610
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 0] fun n f3 =>
  Int.tmod (7 - f3 (n - 1)) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183573.P15183455501518462610

namespace A183573

/-- `comp[∑[∑[(7-a(n-1))%5]]]` -/
def P15183455501518462610.Spec : Prop :=
  ∀ n, (P15183455501518462610.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P9288182773951465930

`floor(sqrt(Δ[and((n+1)²+1, -2)])+n+1)`
-/

namespace A183573.P9288182773951465930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 + 1 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (f1 (n + 1) - f1 n : ℝ) + (n + 1 : ℝ)⌋

end

end A183573.P9288182773951465930

namespace A183573

/-- `floor(sqrt(Δ[and((n+1)²+1, -2)])+n+1)` -/
def P9288182773951465930.Spec : Prop :=
  ∀ n, P9288182773951465930.a n = A183573 (n + 1)

end A183573

/-! ## A183573.P13060124376715820836

`comp[∑[or(n, A130543(n))]]`
-/

namespace A183573.P13060124376715820836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A130543 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183573.P13060124376715820836

namespace A183573

/-- `comp[∑[or(n, A130543(n))]]` -/
def P13060124376715820836.Spec : Prop :=
  ∀ n, (P13060124376715820836.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P9250215610928420647

`comp[abs(2-∑[A109613(n)])]`
-/

namespace A183573.P9250215610928420647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f2 j|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183573.P9250215610928420647

namespace A183573

/-- `comp[abs(2-∑[A109613(n)])]` -/
def P9250215610928420647.Spec : Prop :=
  ∀ n, (P9250215610928420647.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P12345885716780088426

`comp[abs(2-A000982(n+1))]`
-/

namespace A183573.P12345885716780088426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000982 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183573.P12345885716780088426

namespace A183573

/-- `comp[abs(2-A000982(n+1))]` -/
def P12345885716780088426.Spec : Prop :=
  ∀ n, (P12345885716780088426.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P6509429345288698885

`comp[abs(abs(1-A000982(n))-1)]`
-/

namespace A183573.P6509429345288698885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|1 - A000982 n| - 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183573.P6509429345288698885

namespace A183573

/-- `comp[abs(abs(1-A000982(n))-1)]` -/
def P6509429345288698885.Spec : Prop :=
  ∀ n, (P6509429345288698885.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P1802397646733849858

`comp[∑[comp[3*n+4]]+1-A267531(n)]`
-/

namespace A183573.P1802397646733849858
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - A267531 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183573.P1802397646733849858

namespace A183573

/-- `comp[∑[comp[3*n+4]]+1-A267531(n)]` -/
def P1802397646733849858.Spec : Prop :=
  ∀ n, (P1802397646733849858.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P14385805148180644836

`comp[A347633(n+1)-A267530(n)]`
-/

namespace A183573.P14385805148180644836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1) - A267530 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183573.P14385805148180644836

namespace A183573

/-- `comp[A347633(n+1)-A267530(n)]` -/
def P14385805148180644836.Spec : Prop :=
  ∀ n, (P14385805148180644836.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P1559613293546074536

`fp[record[n-1-sqrt(2*n)]]`
-/

namespace A183573.P1559613293546074536
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) - Real.sqrt (2 * n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A183573.P1559613293546074536

namespace A183573

/-- `fp[record[n-1-sqrt(2*n)]]` -/
def P1559613293546074536.Spec : Prop :=
  ∀ n, (P1559613293546074536.a n : ℤ) = A183573 (n + 1)

end A183573

/-! ## A183573.P8038637021910721224

`A023443(A183572(n+2))`
-/

namespace A183573.P8038637021910721224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183572 (n + 2)).toNat

end

end A183573.P8038637021910721224

namespace A183573

/-- `A023443(A183572(n+2))` -/
def P8038637021910721224.Spec : Prop :=
  ∀ n, P8038637021910721224.a n = A183573 (n + 1)

end A183573

/-! ## A183573.P924668588062654927

`A097065(A113909(n+2))`
-/

namespace A183573.P924668588062654927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A113909 (n + 2)).toNat

end

end A183573.P924668588062654927

namespace A183573

/-- `A097065(A113909(n+2))` -/
def P924668588062654927.Spec : Prop :=
  ∀ n, P924668588062654927.a n = A183573 (n + 1)

end A183573

/-!
# A183574: n+Floor[sqrt(2n+2)].

The programs for A183574, the canonical program `A183574.P17412151522508656496` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183574 has offset 1).

The definition of A183574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(2*(n+1)+2))` (program `A183574.P17412151522508656496`, by `A183574.P17412151522508656496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183574.P17412151522508656496

`n+1+floor(sqrt(2*(n+1)+2))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183574

/-- `n+1+floor(sqrt(2*(n+1)+2))` -/
def P17412151522508656496.Spec : Prop :=
  ∀ n, (P17412151522508656496.a n : ℤ) = A183574 (n + 1)

theorem P17412151522508656496.correct : P17412151522508656496.Spec := by
  intro n
  simp only [A183574, Nat.add_sub_cancel]

end A183574

/-! ## A183574.P3763217573452781206

`ceil(record[sqrt(xor(1, n+4))]+n)`
-/

namespace A183574.P3763217573452781206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 (n + 4) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℝ)⌉

end

end A183574.P3763217573452781206

namespace A183574

/-- `ceil(record[sqrt(xor(1, n+4))]+n)` -/
def P3763217573452781206.Spec : Prop :=
  ∀ n, P3763217573452781206.a n = A183574 (n + 1)

end A183574

/-! ## A183574.P11946056827693845687

`ceil(sqrt(or(1, 2*(n+2)))+n)`
-/

namespace A183574.P11946056827693845687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lor 1 (2 * (n + 2)) : ℝ) + (n : ℝ)⌉

end

end A183574.P11946056827693845687

namespace A183574

/-- `ceil(sqrt(or(1, 2*(n+2)))+n)` -/
def P11946056827693845687.Spec : Prop :=
  ∀ n, P11946056827693845687.a n = A183574 (n + 1)

end A183574

/-! ## A183574.P2321263699516368845

`fp[n+1-sqrt(2*n+5)]`
-/

namespace A183574.P2321263699516368845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (2 * n + 5 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A183574.P2321263699516368845

namespace A183574

/-- `fp[n+1-sqrt(2*n+5)]` -/
def P2321263699516368845.Spec : Prop :=
  ∀ n, (P2321263699516368845.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P3389153864232480482

`2+comp[∑[n-(and(1, n)+2)]]`
-/

namespace A183574.P3389153864232480482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 1 n + 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183574.P3389153864232480482

namespace A183574

/-- `2+comp[∑[n-(and(1, n)+2)]]` -/
def P3389153864232480482.Spec : Prop :=
  ∀ n, (P3389153864232480482.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P1476829753854454924

`comp[2*n+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A183574.P1476829753854454924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  2 * n + f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183574.P1476829753854454924

namespace A183574

/-- `comp[2*n+a(n-2)]` -/
def P1476829753854454924.Spec : Prop :=
  ∀ n, (P1476829753854454924.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P15529823305935912087

`comp[n+a(n-2)+n]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A183574.P15529823305935912087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  n + f1 (n - 2) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183574.P15529823305935912087

namespace A183574

/-- `comp[n+a(n-2)+n]` -/
def P15529823305935912087.Spec : Prop :=
  ∀ n, (P15529823305935912087.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P10005108042890462411

`record[xor(1, n)+floor(sqrt(n+4))]-n`
-/

namespace A183574.P10005108042890462411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + Nat.sqrt (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A183574.P10005108042890462411

namespace A183574

/-- `record[xor(1, n)+floor(sqrt(n+4))]-n` -/
def P10005108042890462411.Spec : Prop :=
  ∀ n, P10005108042890462411.a n = A183574 (n + 1)

end A183574

/-! ## A183574.P15910905900120174819

`floor(sqrt(and(Δ[(n+1)²]+1, -2))+n+1)`
-/

namespace A183574.P15910905900120174819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) (-2) : ℝ) + (n + 1 : ℝ)⌋

end

end A183574.P15910905900120174819

namespace A183574

/-- `floor(sqrt(and(Δ[(n+1)²]+1, -2))+n+1)` -/
def P15910905900120174819.Spec : Prop :=
  ∀ n, P15910905900120174819.a n = A183574 (n + 1)

end A183574

/-! ## A183574.P775208939542528727

`∑[runs[A265848(n+2)]]`
-/

namespace A183574.P775208939542528727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265848 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183574.P775208939542528727

namespace A183574

/-- `∑[runs[A265848(n+2)]]` -/
def P775208939542528727.Spec : Prop :=
  ∀ n, (P775208939542528727.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P1290983822144538870

`∑[runs[A046225(2+n)]]`
-/

namespace A183574.P1290983822144538870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (2 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183574.P1290983822144538870

namespace A183574

/-- `∑[runs[A046225(2+n)]]` -/
def P1290983822144538870.Spec : Prop :=
  ∀ n, (P1290983822144538870.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P8395400844412548346

`∑[runs[A046546(n+2)]]`
-/

namespace A183574.P8395400844412548346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183574.P8395400844412548346

namespace A183574

/-- `∑[runs[A046546(n+2)]]` -/
def P8395400844412548346.Spec : Prop :=
  ∀ n, (P8395400844412548346.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P11687843189755791817

`∑[runs[A046575(n+2)]]`
-/

namespace A183574.P11687843189755791817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183574.P11687843189755791817

namespace A183574

/-- `∑[runs[A046575(n+2)]]` -/
def P11687843189755791817.Spec : Prop :=
  ∀ n, (P11687843189755791817.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P14359493915724927299

`∑[runs[A046613(n+2)]]`
-/

namespace A183574.P14359493915724927299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183574.P14359493915724927299

namespace A183574

/-- `∑[runs[A046613(n+2)]]` -/
def P14359493915724927299.Spec : Prop :=
  ∀ n, (P14359493915724927299.a n : ℤ) = A183574 (n + 1)

end A183574

/-! ## A183574.P6098378760924003174

`A023443(A047839(n+2))`
-/

namespace A183574.P6098378760924003174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047839 (n + 2)).toNat

end

end A183574.P6098378760924003174

namespace A183574

/-- `A023443(A047839(n+2))` -/
def P6098378760924003174.Spec : Prop :=
  ∀ n, P6098378760924003174.a n = A183574 (n + 1)

end A183574

/-!
# A183575: a(n) = n - 1 + ceiling((n^2-2)/2); complement of A183574.

The programs for A183575, the canonical program `A183575.P13619925784177707556` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183575 has offset 1).

The definition of A183575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil(((n+1)²-2)/2)` (program `A183575.P13619925784177707556`, by `A183575.P13619925784177707556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183575.P13619925784177707556

`n+ceil(((n+1)²-2)/2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183575

/-- `n+ceil(((n+1)²-2)/2)` -/
def P13619925784177707556.Spec : Prop :=
  ∀ n, P13619925784177707556.a n = A183575 (n + 1)

theorem P13619925784177707556.correct : P13619925784177707556.Spec := by
  intro n
  simp only [A183575, Nat.add_sub_cancel]

end A183575

/-! ## A183575.P8256352981021411001

`ogf((2x+2x^2-2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A183575.P8256352981021411001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, -2] [1, -2, 0, 2, -1] n

end

end A183575.P8256352981021411001

namespace A183575

/-- `ogf((2x+2x^2-2x^3)/(1-2x+2x^3-x^4))` -/
def P8256352981021411001.Spec : Prop :=
  ∀ n, P8256352981021411001.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P17712216755179849238

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=10`
-/

namespace A183575.P17712216755179849238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 10] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A183575.P17712216755179849238

namespace A183575

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P17712216755179849238.Spec : Prop :=
  ∀ n, P17712216755179849238.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P10612949524630549418

`∑[1+or(1, n)]-2`
-/

namespace A183575.P10612949524630549418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A183575.P10612949524630549418

namespace A183575

/-- `∑[1+or(1, n)]-2` -/
def P10612949524630549418.Spec : Prop :=
  ∀ n, P10612949524630549418.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P5476155521675086329

`∑[gcd(2, n)+n]-2`
-/

namespace A183575.P5476155521675086329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A183575.P5476155521675086329

namespace A183575

/-- `∑[gcd(2, n)+n]-2` -/
def P5476155521675086329.Spec : Prop :=
  ∀ n, P5476155521675086329.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P976655995852873116

`∑[or(1, n)]-(1-n)`
-/

namespace A183575.P976655995852873116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (1 - (n : ℤ))

end

end A183575.P976655995852873116

namespace A183575

/-- `∑[or(1, n)]-(1-n)` -/
def P976655995852873116.Spec : Prop :=
  ∀ n, P976655995852873116.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P5236226116409348882

`xor(1, ∑[or(1, n)]+n)`
-/

namespace A183575.P5236226116409348882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A183575.P5236226116409348882

namespace A183575

/-- `xor(1, ∑[or(1, n)]+n)` -/
def P5236226116409348882.Spec : Prop :=
  ∀ n, (P5236226116409348882.a n : ℤ) = A183575 (n + 1)

end A183575

/-! ## A183575.P14772104821145894636

`∑[and(n+2, -2)]-2`
-/

namespace A183575.P14772104821145894636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A183575.P14772104821145894636

namespace A183575

/-- `∑[and(n+2, -2)]-2` -/
def P14772104821145894636.Spec : Prop :=
  ∀ n, P14772104821145894636.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P10796687611812419442

`∑[fp[and(n, n+1)]]-2`
-/

namespace A183575.P10796687611812419442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A183575.P10796687611812419442

namespace A183575

/-- `∑[fp[and(n, n+1)]]-2` -/
def P10796687611812419442.Spec : Prop :=
  ∀ n, P10796687611812419442.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P8709730094674828582

`∑[a(n-2)+2]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A183575.P8709730094674828582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P8709730094674828582

namespace A183575

/-- `∑[a(n-2)+2]` -/
def P8709730094674828582.Spec : Prop :=
  ∀ n, (P8709730094674828582.a n : ℤ) = A183575 (n + 1)

end A183575

/-! ## A183575.P10023698343751682384

`(or(1, (n+2)²)-5)/2`
-/

namespace A183575.P10023698343751682384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 ((n + 2) ^ 2) : ℤ) - 5 : ℚ) / 2

end

end A183575.P10023698343751682384

namespace A183575

/-- `(or(1, (n+2)²)-5)/2` -/
def P10023698343751682384.Spec : Prop :=
  ∀ n, P10023698343751682384.a n = (A183575 (n + 1) : ℚ)

end A183575

/-! ## A183575.P17760502574203233763

`∑[(n-1)%2+1+n]`
-/

namespace A183575.P17760502574203233763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P17760502574203233763

namespace A183575

/-- `∑[(n-1)%2+1+n]` -/
def P17760502574203233763.Spec : Prop :=
  ∀ n, P17760502574203233763.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P14446461366302726421

`∑[n+2-and(1, n)]-2`
-/

namespace A183575.P14446461366302726421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A183575.P14446461366302726421

namespace A183575

/-- `∑[n+2-and(1, n)]-2` -/
def P14446461366302726421.Spec : Prop :=
  ∀ n, P14446461366302726421.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P16830479982877165717

`∑[2*ceil(cot(2/(n+1)))]`
-/

namespace A183575.P16830479982877165717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P16830479982877165717

namespace A183575

/-- `∑[2*ceil(cot(2/(n+1)))]` -/
def P16830479982877165717.Spec : Prop :=
  ∀ n, P16830479982877165717.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P3046148028659971255

`2*n-∑[n%2-n]`
-/

namespace A183575.P3046148028659971255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P3046148028659971255

namespace A183575

/-- `2*n-∑[n%2-n]` -/
def P3046148028659971255.Spec : Prop :=
  ∀ n, P3046148028659971255.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P16689708069473911277

`2*n-∑[and(1, n)-n]`
-/

namespace A183575.P16689708069473911277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P16689708069473911277

namespace A183575

/-- `2*n-∑[and(1, n)-n]` -/
def P16689708069473911277.Spec : Prop :=
  ∀ n, P16689708069473911277.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P16424531055928769003

`record[floor(n²/2-2*n)]`
-/

namespace A183575.P16424531055928769003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2 - (2 * n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183575.P16424531055928769003

namespace A183575

/-- `record[floor(n²/2-2*n)]` -/
def P16424531055928769003.Spec : Prop :=
  ∀ n, P16424531055928769003.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P9936451161015214019

`∑[fp[sqrt(lcm(n+1, n-1))]]`
-/

namespace A183575.P9936451161015214019
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1) : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P9936451161015214019

namespace A183575

/-- `∑[fp[sqrt(lcm(n+1, n-1))]]` -/
def P9936451161015214019.Spec : Prop :=
  ∀ n, (P9936451161015214019.a n : ℤ) = A183575 (n + 1)

end A183575

/-! ## A183575.P10218874134277894024

`∑[fp[xor(1, n²)/(n+1)]]`
-/

namespace A183575.P10218874134277894024
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n ^ 2) : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P10218874134277894024

namespace A183575

/-- `∑[fp[xor(1, n²)/(n+1)]]` -/
def P10218874134277894024.Spec : Prop :=
  ∀ n, (P10218874134277894024.a n : ℤ) = A183575 (n + 1)

end A183575

/-! ## A183575.P4195765657167378164

`∑[∑[2-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A183575.P4195765657167378164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P4195765657167378164

namespace A183575

/-- `∑[∑[2-a(n-1)]]` -/
def P4195765657167378164.Spec : Prop :=
  ∀ n, P4195765657167378164.a n = A183575 (n + 1)

end A183575

/-!
# A183576: Half the number of n X n 0..3 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183576, there is no canonical definition to state claims against.
-/

/-! ## A183576.P15639564138768401492

`A183584((n+1)²+n²)`
-/

namespace A183576.P15639564138768401492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 ((n + 1) ^ 2 + n ^ 2)

end

end A183576.P15639564138768401492

/-!
# A183577: Half the number of nX2 0..3 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183577, there is no canonical definition to state claims against.
-/

/-! ## A183577.P12503403355612386750

`A183584(∑[n+1]+2)`
-/

namespace A183577.P12503403355612386750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183577.P12503403355612386750

/-! ## A183577.P113191173927647033

`record[A010054(n)*A183584(n+2)]`
-/

namespace A183577.P113191173927647033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183584 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183577.P113191173927647033

/-! ## A183577.P14672509412763153749

`record[A183584(n+2)/A120258(n)]`
-/

namespace A183577.P14672509412763153749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183584 (n + 2) : ℚ) / (A120258 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183577.P14672509412763153749

/-! ## A183577.P6614634294647909832

`record[root(A183584(n+2), A193592(n))]`
-/

namespace A183577.P6614634294647909832
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183584 (n + 2) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183577.P6614634294647909832

/-! ## A183577.P10528031535938316162

`record[gcd(A183584(n+2), A259016(n))]`
-/

namespace A183577.P10528031535938316162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183584 (n + 2)) (A259016 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183577.P10528031535938316162

/-!
# A183578: Half the number of n X 3 0..3 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183578, there is no canonical definition to state claims against.
-/

/-! ## A183578.P15674482766378715550

`A183584(∑[n+2]+4)`
-/

namespace A183578.P15674482766378715550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183578.P15674482766378715550

/-!
# A183579: Half the number of nX4 0..3 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183579, there is no canonical definition to state claims against.
-/

/-! ## A183579.P8104630543583605624

`A183584(A374004(n+1))`
-/

namespace A183579.P8104630543583605624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A374004 (n + 1)).toNat

end

end A183579.P8104630543583605624

/-! ## A183579.P1089496904020442855

`A183584(A141214(n+1))`
-/

namespace A183579.P1089496904020442855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A141214 (n + 1)).toNat

end

end A183579.P1089496904020442855

/-!
# A183580: Half the number of nX5 0..3 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183580, there is no canonical definition to state claims against.
-/

/-! ## A183580.P1775233399002249184

`A183584(A374005(n+1))`
-/

namespace A183580.P1775233399002249184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A374005 (n + 1)).toNat

end

end A183580.P1775233399002249184

/-!
# A183581: Half the number of nX6 0..3 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183581, there is no canonical definition to state claims against.
-/

/-! ## A183581.P7247224706326106401

`A183584(A374007(n+1))`
-/

namespace A183581.P7247224706326106401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A374007 (n + 1)).toNat

end

end A183581.P7247224706326106401

/-!
# A183582: Half the number of n X 7 0..3 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183582, there is no canonical definition to state claims against.
-/

/-! ## A183582.P13884002211037543240

`A183584(A374008(n+1))`
-/

namespace A183582.P13884002211037543240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A374008 (n + 1)).toNat

end

end A183582.P13884002211037543240

/-!
# A183583: Half the number of nX8 0..3 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183583, there is no canonical definition to state claims against.
-/

/-! ## A183583.P11211188220528977451

`A183584(A374009(n+1))`
-/

namespace A183583.P11211188220528977451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A374009 (n + 1)).toNat

end

end A183583.P11211188220528977451

/-!
# A183585: 1/24 the number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock containing exactly three distinct values.

The programs for A183585, there is no canonical definition to state claims against.
-/

/-! ## A183585.P8244206446837847302

`A183594(4*∑[n]+1)`
-/

namespace A183585.P8244206446837847302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A183585.P8244206446837847302

/-!
# A183586: 1/24 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock containing exactly three distinct values.

The programs for A183586, the canonical program `A183586.P112796413103120228` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183586 has offset 1).

The definition of A183586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183586.P14330834058856693717

`ogf((6+8x)/(1-8x-12x^2))`
-/

namespace A183586.P14330834058856693717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 8] [1, -8, -12] n

end

end A183586.P14330834058856693717

namespace A183586

/-- `ogf((6+8x)/(1-8x-12x^2))` -/
def P14330834058856693717.Spec : Prop :=
  ∀ n, P14330834058856693717.a n = A183586 (n + 1)

end A183586

/-! ## A183586.P112796413103120228

`8*a(n-1)+12*a(n-2)` with `a(0)=6, a(1)=56`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183586

/-- `8*a(n-1)+12*a(n-2)` -/
def P112796413103120228.Spec : Prop :=
  ∀ n, (P112796413103120228.a n : ℤ) = A183586 (n + 1)

theorem P112796413103120228.correct : P112796413103120228.Spec := by
  intro n
  simp only [A183586, Nat.add_sub_cancel]

end A183586

/-! ## A183586.P15127656127538547061

`A183594(∑[n]+1)`
-/

namespace A183586.P15127656127538547061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183586.P15127656127538547061

namespace A183586

/-- `A183594(∑[n]+1)` -/
def P15127656127538547061.Spec : Prop :=
  ∀ n, P15127656127538547061.a n = A183586 (n + 1)

end A183586

/-! ## A183586.P13847812213335005403

`record[A010054(n)*A183594(n+1)]`
-/

namespace A183586.P13847812213335005403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183586.P13847812213335005403

namespace A183586

/-- `record[A010054(n)*A183594(n+1)]` -/
def P13847812213335005403.Spec : Prop :=
  ∀ n, P13847812213335005403.a n = A183586 (n + 1)

end A183586

/-!
# A183587: 1/24 the number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock containing exactly three distinct values.

The programs for A183587, there is no canonical definition to state claims against.
-/

/-! ## A183587.P1340504882069690603

`ogf((56-101x-772x^2+512x^3)/(1-24x+30x^2+296x^3-192x^4))`
-/

namespace A183587.P1340504882069690603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [56, -101, -772, 512] [1, -24, 30, 296, -192] n

end

end A183587.P1340504882069690603

/-! ## A183587.P7732772673278324180

`A210261(n+1)+A183596(n+1)`
-/

namespace A183587.P7732772673278324180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210261 (n + 1) + A183596 (n + 1)

end

end A183587.P7732772673278324180

/-! ## A183587.P7627633481981564844

`A210267(∑[n+1]+2)+A183596(n+1)`
-/

namespace A183587.P7627633481981564844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A183596 (n + 1)

end

end A183587.P7627633481981564844

/-! ## A183587.P8396408765473191802

`A183594(∑[n+1]+2)`
-/

namespace A183587.P8396408765473191802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183587.P8396408765473191802

/-! ## A183587.P12977729733001625506

`record[A010054(n)*A183594(n+2)]`
-/

namespace A183587.P12977729733001625506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183587.P12977729733001625506

/-!
# A183588: 1/24 the number of (n+1)X4 0..3 arrays with every 2X2 subblock containing exactly three distinct values.

The programs for A183588, there is no canonical definition to state claims against.
-/

/-! ## A183588.P6711763599393861308

`A210262(1+n)+A183597(n+1)`
-/

namespace A183588.P6711763599393861308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210262 (1 + n) + A183597 (n + 1)

end

end A183588.P6711763599393861308

/-! ## A183588.P15890486035948298964

`A210262(n+1)+A183603(A167614(n+1))`
-/

namespace A183588.P15890486035948298964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210262 (n + 1) + A183603 (A167614 (n + 1)).toNat

end

end A183588.P15890486035948298964

/-! ## A183588.P3157194034667231398

`A210267(A167614(n+1))+A183597(n+1)`
-/

namespace A183588.P3157194034667231398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A167614 (n + 1)).toNat + A183597 (n + 1)

end

end A183588.P3157194034667231398

/-! ## A183588.P12179165903007661702

`A210267(A055998(n)+6)+A183597(n+1)`
-/

namespace A183588.P12179165903007661702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A055998 n + 6).toNat + A183597 (n + 1)

end

end A183588.P12179165903007661702

/-! ## A183588.P1189562330752397584

`A210267(A046691(n)+7)+A183597(n+1)`
-/

namespace A183588.P1189562330752397584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A046691 n + 7).toNat + A183597 (n + 1)

end

end A183588.P1189562330752397584

/-!
# A183589: 1/24 the number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock containing exactly three distinct values.

The programs for A183589, there is no canonical definition to state claims against.
-/

/-! ## A183589.P16930174996876854408

`A183594(A374004(n+1))`
-/

namespace A183589.P16930174996876854408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (A374004 (n + 1)).toNat

end

end A183589.P16930174996876854408

/-!
# A183590: 1/24 the number of (n+1)X6 0..3 arrays with every 2X2 subblock containing exactly three distinct values.

The programs for A183590, there is no canonical definition to state claims against.
-/

/-! ## A183590.P8637589472634980153

`A183594(A374005(n+1))`
-/

namespace A183590.P8637589472634980153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (A374005 (n + 1)).toNat

end

end A183590.P8637589472634980153

/-!
# A183591: 1/24 the number of (n+1)X7 0..3 arrays with every 2X2 subblock containing exactly three distinct values.

The programs for A183591, there is no canonical definition to state claims against.
-/

/-! ## A183591.P18273116159225979784

`A210265(n+1)+A183600(n+1)`
-/

namespace A183591.P18273116159225979784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210265 (n + 1) + A183600 (n + 1)

end

end A183591.P18273116159225979784

/-! ## A183591.P13873659658884955148

`A210267(A055999(n+2)+12)+A183600(n+1)`
-/

namespace A183591.P13873659658884955148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A055999 (n + 2) + 12).toNat + A183600 (n + 1)

end

end A183591.P13873659658884955148

/-! ## A183591.P5188856154704165134

`A210267(A000096(n+5)-n+1)+A183600(n+1)`
-/

namespace A183591.P5188856154704165134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A000096 (n + 5) - (n : ℤ) + 1).toNat + A183600 (n + 1)

end

end A183591.P5188856154704165134

/-!
# A183592: 1/24 of the number of (n+1) X 8 0..3 arrays with every 2 X 2 subblock containing exactly three distinct values.

The programs for A183592, there is no canonical definition to state claims against.
-/

/-! ## A183592.P12047409341190257961

`A183594(eq[7, A004736(n+1)]+1)`
-/

namespace A183592.P12047409341190257961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183592.P12047409341190257961

/-!
# A183593: 1/24 the number of (n+1)X9 0..3 arrays with every 2X2 subblock containing exactly three distinct values.

The programs for A183593, there is no canonical definition to state claims against.
-/

/-! ## A183593.P10715583700010968560

`A183594(A155212(n+4)+1)`
-/

namespace A183593.P10715583700010968560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (A155212 (n + 4) + 1).toNat

end

end A183593.P10715583700010968560

/-!
# A183594: T(n,k)=1/24 the number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock containing exactly three distinct values.

The programs for A183594, there is no canonical definition to state claims against.
-/

/-! ## A183594.P3101125364028632933

`A210267(n+1)+A183603(n+1)`
-/

namespace A183594.P3101125364028632933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (n + 1) + A183603 (n + 1)

end

end A183594.P3101125364028632933

/-! ## A183594.P17670618686613388409

`A210267(n+1)+A210413(n+1)-A210183(n+1)`
-/

namespace A183594.P17670618686613388409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (n + 1) + (A210413 (n + 1) - A210183 (n + 1))

end

end A183594.P17670618686613388409

/-!
# A183595: 1/6 the number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock containing all three values.

The programs for A183595, there is no canonical definition to state claims against.
-/

/-! ## A183595.P11463059945906843075

`A183603((n+1)²+n²)`
-/

namespace A183595.P11463059945906843075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 ((n + 1) ^ 2 + n ^ 2)

end

end A183595.P11463059945906843075

/-!
# A183596: 1/6 the number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock containing all three values.

The programs for A183596, the canonical program `A183596.P10315231493471973087` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183596 has offset 1).

The definition of A183596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183596.P10315231493471973087

`ogf((27-12x-72x^2+9x^3)/(1-8x+3x^2+16x^3-2x^4))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A183596

/-- `ogf((27-12x-72x^2+9x^3)/(1-8x+3x^2+16x^3-2x^4))` -/
def P10315231493471973087.Spec : Prop :=
  ∀ n, P10315231493471973087.a n = A183596 (n + 1)

theorem P10315231493471973087.correct : P10315231493471973087.Spec := by
  intro n
  simp only [A183596, Nat.add_sub_cancel]

end A183596

/-! ## A183596.P11633006782472528908

`A183587(n+1)-A210261(n+1)`
-/

namespace A183596.P11633006782472528908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183587 (n + 1) - A210261 (n + 1)

end

end A183596.P11633006782472528908

namespace A183596

/-- `A183587(n+1)-A210261(n+1)` -/
def P11633006782472528908.Spec : Prop :=
  ∀ n, P11633006782472528908.a n = A183596 (n + 1)

end A183596

/-! ## A183596.P364371341033269614

`A183603(∑[n+1]+2)`
-/

namespace A183596.P364371341033269614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183596.P364371341033269614

namespace A183596

/-- `A183603(∑[n+1]+2)` -/
def P364371341033269614.Spec : Prop :=
  ∀ n, P364371341033269614.a n = A183596 (n + 1)

end A183596

/-! ## A183596.P2551417262880420574

`record[A183603(Δ[A003453(n+5)])]`
-/

namespace A183596.P2551417262880420574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183596.P2551417262880420574

namespace A183596

/-- `record[A183603(Δ[A003453(n+5)])]` -/
def P2551417262880420574.Spec : Prop :=
  ∀ n, P2551417262880420574.a n = A183596 (n + 1)

end A183596

/-!
# A183597: 1/6 the number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock containing all three values.

The programs for A183597, there is no canonical definition to state claims against.
-/

/-! ## A183597.P4563438733911362047

`A183588(n+1)-A210262(n+1)`
-/

namespace A183597.P4563438733911362047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183588 (n + 1) - A210262 (n + 1)

end

end A183597.P4563438733911362047

/-! ## A183597.P12020994020030214754

`A183603(∑[n+2]+4)`
-/

namespace A183597.P12020994020030214754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183597.P12020994020030214754

/-!
# A183598: 1/6 the number of (n+1)X5 0..2 arrays with every 2X2 subblock containing all three values.

The programs for A183598, there is no canonical definition to state claims against.
-/

/-! ## A183598.P8261471062309295922

`A183603(A374004(n+1))`
-/

namespace A183598.P8261471062309295922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A374004 (n + 1)).toNat

end

end A183598.P8261471062309295922

/-! ## A183598.P4927585283717799770

`A183603(A141214(n+1))`
-/

namespace A183598.P4927585283717799770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A141214 (n + 1)).toNat

end

end A183598.P4927585283717799770

/-!
# A183599: 1/6 the number of (n+1)X6 0..2 arrays with every 2X2 subblock containing all three values.

The programs for A183599, there is no canonical definition to state claims against.
-/

/-! ## A183599.P13101771052589705897

`A183603(A374005(n+1))`
-/

namespace A183599.P13101771052589705897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A374005 (n + 1)).toNat

end

end A183599.P13101771052589705897

