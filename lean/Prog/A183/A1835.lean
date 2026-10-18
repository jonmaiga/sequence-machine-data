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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
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

The programs for A183503, the canonical program `A183503.P6644649150716126565` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183503 has offset 1).

The definition of A183503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183503.P6644649150716126565

`3*a(n-1)+3*a(n-3)-9*a(n-4)` with `a(0)=3, a(1)=12, a(2)=27, a(3)=81`

The canonical program, it is in `Seq.B000.C023`.
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

/-! ## A183504.P9372793922314321977

`A183508(∑[n+1]+2)`
-/

namespace A183504.P9372793922314321977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183504.P9372793922314321977

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

/-! ## A183504.P11033117705687447385

`record[A183508(n+3)/A075504(n+1)]`
-/

namespace A183504.P11033117705687447385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183508 (n + 3) : ℚ) / (A075504 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183504.P11033117705687447385

/-! ## A183504.P13530957127724379277

`record[A183508(Δ[A003453(n+5)])]`
-/

namespace A183504.P13530957127724379277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183504.P13530957127724379277

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

/-! ## A183505.P16765144820893484053

`A183508(A167614(n+1))+A025469(n)`
-/

namespace A183505.P16765144820893484053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (A167614 (n + 1)).toNat + A025469 n

end

end A183505.P16765144820893484053

/-! ## A183505.P3986296441815106335

`A183508(A167614(n+1))+A054899(n)`
-/

namespace A183505.P3986296441815106335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (A167614 (n + 1)).toNat + A054899 n

end

end A183505.P3986296441815106335

/-! ## A183505.P6102024116299021176

`A183508(A167614(n+1))+A064459(n)`
-/

namespace A183505.P6102024116299021176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183508 (A167614 (n + 1)).toNat + A064459 n

end

end A183505.P6102024116299021176

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

/-! ## A183506.P6963789972856183748

`A185705(n+1)+A183508(A167614(n+2)+1)`
-/

namespace A183506.P6963789972856183748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185705 (n + 1) + A183508 (A167614 (n + 2) + 1).toNat

end

end A183506.P6963789972856183748

/-! ## A183506.P8611010207505177049

`A183508(A167614(n+2)+1)%A001020(3*(n+1))`
-/

namespace A183506.P8611010207505177049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183508 (A167614 (n + 2) + 1).toNat) (A001020 (3 * (n + 1)))

end

end A183506.P8611010207505177049

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

/-! ## A183509.P8978242365985781104

`A183517(A001844(n))+A011730(n)`
-/

namespace A183509.P8978242365985781104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A001844 n).toNat + A011730 n

end

end A183509.P8978242365985781104

/-!
# A183510: Number of n X 2 binary arrays with each element equal to either the sum mod 2 of its horizontal and vertical neighbors or the sum mod 2 of its diagonal and antidiagonal neighbors.

The programs for A183510, there is no canonical definition to state claims against.
-/

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

/-! ## A183510.P11426361048237940891

`record[A183517(n+3)/A264285(n+1)]`
-/

namespace A183510.P11426361048237940891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183517 (n + 3) : ℚ) / (A264285 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183510.P11426361048237940891

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

/-! ## A183511.P2083188149106031156

`lcm((-1)^n, A183517(A167614(n+1)))`
-/

namespace A183511.P2083188149106031156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A183517 (A167614 (n + 1)).toNat)

end

end A183511.P2083188149106031156

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

/-! ## A183512.P567961915585261631

`A183517(A141214(n+1))%A226772(n+1)`
-/

namespace A183512.P567961915585261631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183517 (A141214 (n + 1)).toNat) (A226772 (n + 1))

end

end A183512.P567961915585261631

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

/-! ## A183514.P2539274991215519502

`A183517(A056115(n)+21)`
-/

namespace A183514.P2539274991215519502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A056115 n + 21).toNat

end

end A183514.P2539274991215519502

/-! ## A183514.P13846263867230942977

`A183517(A167499(n+4)+1)`
-/

namespace A183514.P13846263867230942977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A167499 (n + 4) + 1).toNat

end

end A183514.P13846263867230942977

/-! ## A183514.P11105251398450343806

`A183517(A167614(n+4)+3)`
-/

namespace A183514.P11105251398450343806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A167614 (n + 4) + 3).toNat

end

end A183514.P11105251398450343806

/-! ## A183514.P2898772449843004461

`A183517(A000217(n+5)+6)`
-/

namespace A183514.P2898772449843004461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A000217 (n + 5) + 6).toNat

end

end A183514.P2898772449843004461

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

/-! ## A183515.P16898292324161687897

`A183517(A167499(n+5)+2)`
-/

namespace A183515.P16898292324161687897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A167499 (n + 5) + 2).toNat

end

end A183515.P16898292324161687897

/-! ## A183515.P3336374464530646533

`A183517(eq[8, A131818(n+1)])`
-/

namespace A183515.P3336374464530646533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183515.P3336374464530646533

/-! ## A183515.P12537852771496019335

`A183517(A374008(n+1))`
-/

namespace A183515.P12537852771496019335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A374008 (n + 1)).toNat

end

end A183515.P12537852771496019335

/-! ## A183515.P7978958227012745780

`A183517(A055999(n+4))`
-/

namespace A183515.P7978958227012745780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A055999 (n + 4)).toNat

end

end A183515.P7978958227012745780

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

/-! ## A183516.P14499964219626946140

`A183517(A168106(n)+8)`
-/

namespace A183516.P14499964219626946140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (A168106 n + 8).toNat

end

end A183516.P14499964219626946140

/-! ## A183516.P12977094067224562517

`A183517(eq[5, A219347(n)])`
-/

namespace A183516.P12977094067224562517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183516.P12977094067224562517

/-! ## A183516.P5350119714677958100

`A183517(eq[7, A193592(n)])`
-/

namespace A183516.P5350119714677958100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183516.P5350119714677958100

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

/-! ## A183517.P11811357281138200049

`A103298(A264128(n+1)%Δ[3^n])`
-/

namespace A183517.P11811357281138200049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (Int.tmod (A264128 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A183517.P11811357281138200049

/-! ## A183517.P18159218155514615326

`A103298(A264128(n+1)+A011730(n))`
-/

namespace A183517.P18159218155514615326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A264128 (n + 1) + A011730 n).toNat

end

end A183517.P18159218155514615326

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

/-! ## A183519.P6924204767481066711

`or(1, A183526(A133263(n+1)))`
-/

namespace A183519.P6924204767481066711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183526 (A133263 (n + 1)).toNat)

end

end A183519.P6924204767481066711

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

/-! ## A183520.P17735648798582039967

`or(1, A183526(A167614(n+1)))`
-/

namespace A183520.P17735648798582039967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183526 (A167614 (n + 1)).toNat)

end

end A183520.P17735648798582039967

/-! ## A183520.P7623010514184120313

`A183526(A167614(n+1))+A054900(n)`
-/

namespace A183520.P7623010514184120313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A167614 (n + 1)).toNat + A054900 n

end

end A183520.P7623010514184120313

/-! ## A183520.P17161415045310684165

`A183526(A167614(n+1))+A165656(n)`
-/

namespace A183520.P17161415045310684165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A167614 (n + 1)).toNat + A165656 n

end

end A183520.P17161415045310684165

/-! ## A183520.P16711298815383005528

`A183526(A167614(n+1))+A178798(n)`
-/

namespace A183520.P16711298815383005528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A167614 (n + 1)).toNat + A178798 n

end

end A183520.P16711298815383005528

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

/-! ## A183521.P5606205268316277915

`or(1, A183526(A374004(n+1)))`
-/

namespace A183521.P5606205268316277915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183526 (A374004 (n + 1)).toNat)

end

end A183521.P5606205268316277915

/-! ## A183521.P11781695518311885420

`A127193(n+1)*A183526(A055998(n+2))`
-/

namespace A183521.P11781695518311885420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127193 (n + 1) * A183526 (A055998 (n + 2)).toNat

end

end A183521.P11781695518311885420

/-! ## A183521.P7486289179367904882

`A183526(A055998(n+2))%A317157(n+4)`
-/

namespace A183521.P7486289179367904882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183526 (A055998 (n + 2)).toNat) (A317157 (n + 4))

end

end A183521.P7486289179367904882

/-! ## A183521.P17790099306348868410

`A183526(A055998(n+2))+A000007(3*n+4)`
-/

namespace A183521.P17790099306348868410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A055998 (n + 2)).toNat + A000007 (3 * n + 4)

end

end A183521.P17790099306348868410

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

/-! ## A183522.P13159636452826589500

`A183526(A167499(n+3))`
-/

namespace A183522.P13159636452826589500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A167499 (n + 3)).toNat

end

end A183522.P13159636452826589500

/-! ## A183522.P763871033117661560

`A183526(A155212(n)+13)`
-/

namespace A183522.P763871033117661560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A155212 n + 13).toNat

end

end A183522.P763871033117661560

/-! ## A183522.P322937363759809072

`A183526(A056000(n)+15)`
-/

namespace A183522.P322937363759809072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A056000 n + 15).toNat

end

end A183522.P322937363759809072

/-! ## A183522.P12470781731273900521

`A183526(eq[7, A066657(n)])`
-/

namespace A183522.P12470781731273900521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183522.P12470781731273900521

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

/-! ## A183523.P6775808139942287538

`A183526(A052905(n+3))`
-/

namespace A183523.P6775808139942287538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A052905 (n + 3)).toNat

end

end A183523.P6775808139942287538

/-! ## A183523.P10120371807665969906

`A183526(A166136(n+4))`
-/

namespace A183523.P10120371807665969906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A166136 (n + 4)).toNat

end

end A183523.P10120371807665969906

/-!
# A183524: Number of nX7 0..2 arrays with each element equal to either the sum mod 3 of its horizontal and vertical neighbors or the sum mod 3 of its diagonal and antidiagonal neighbors.

The programs for A183524, there is no canonical definition to state claims against.
-/

/-! ## A183524.P1530168892158080252

`A183526(A374008(n+1))`
-/

namespace A183524.P1530168892158080252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183526 (A374008 (n + 1)).toNat

end

end A183524.P1530168892158080252

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

/-! ## A183527.P10807876860912325489

`A183534(∑[n+3]+1)`
-/

namespace A183527.P10807876860912325489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183527.P10807876860912325489

/-! ## A183527.P15075312420089933584

`record[A183534(A347633(n+1))]`
-/

namespace A183527.P15075312420089933584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183527.P15075312420089933584

/-! ## A183527.P16367419218312020175

`or(char[2], A183534(A034856(n+2)))`
-/

namespace A183527.P16367419218312020175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183534 (A034856 (n + 2)).toNat)

end

end A183527.P16367419218312020175

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

/-! ## A183527.P10512468899682732445

`A183534(A034856(n+2))%A001546(n)`
-/

namespace A183527.P10512468899682732445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183534 (A034856 (n + 2)).toNat) (A001546 n)

end

end A183527.P10512468899682732445

/-! ## A183527.P1364267473745249328

`∑{d}[A183534(A034856(n+2)), A000010(#)]`
-/

namespace A183527.P1364267473745249328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A034856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A183527.P1364267473745249328

/-! ## A183527.P5558573984417373145

`A007318(C(2, n))*A183534(A034856(n+2))`
-/

namespace A183527.P5558573984417373145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183534 (A034856 (n + 2)).toNat

end

end A183527.P5558573984417373145

/-! ## A183527.P10860005731534201460

`A000009(C(2, n+2))*A183534(A034856(n+2))`
-/

namespace A183527.P10860005731534201460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Nat.choose 2 (n + 2)) * A183534 (A034856 (n + 2)).toNat

end

end A183527.P10860005731534201460

/-! ## A183527.P11971184640073525123

`A000041(C(2, n+2))*A183534(A034856(n+2))`
-/

namespace A183527.P11971184640073525123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A183534 (A034856 (n + 2)).toNat

end

end A183527.P11971184640073525123

/-! ## A183527.P9663467309051159402

`A183534(A034856(n+2))+A008683(A001248(n+1))`
-/

namespace A183527.P9663467309051159402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A034856 (n + 2)).toNat + A008683 (A001248 (n + 1)).toNat

end

end A183527.P9663467309051159402

/-!
# A183528: An Ulam-type sequence: a(n) = n if n<=5; for n>5, a(n) = least number > a(n-1) which is a unique sum of 5 distinct earlier terms.

The programs for A183528, there is no canonical definition to state claims against.
-/

/-! ## A183528.P312233021796889683

`A183534(∑[n+4]+3)`
-/

namespace A183528.P312233021796889683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183528.P312233021796889683

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

/-! ## A183528.P15779846128904082783

`or(char[2], A183534(A027379(n+2)))`
-/

namespace A183528.P15779846128904082783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183534 (A027379 (n + 2)).toNat)

end

end A183528.P15779846128904082783

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

/-! ## A183528.P16958394389252513818

`∑{d}[A183534(A027379(n+2)), A000010(#)]`
-/

namespace A183528.P16958394389252513818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A027379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A183528.P16958394389252513818

/-! ## A183528.P12534919396586590297

`char[A080412(n)]*A183534(A027379(n+2))`
-/

namespace A183528.P12534919396586590297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A183534 (A027379 (n + 2)).toNat

end

end A183528.P12534919396586590297

/-! ## A183528.P311441706297384576

`A183534(A027379(n+2))+A000007(n+1)`
-/

namespace A183528.P311441706297384576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A027379 (n + 2)).toNat + A000007 (n + 1)

end

end A183528.P311441706297384576

/-! ## A183528.P16255522223351838943

`A183534(A027379(n+2))%A000040(n+1)²`
-/

namespace A183528.P16255522223351838943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183534 (A027379 (n + 2)).toNat) (A000040 (n + 1) ^ 2)

end

end A183528.P16255522223351838943

/-! ## A183528.P11375210379009611211

`A183534(A027379(n+2))+A008683(8*n+4)`
-/

namespace A183528.P11375210379009611211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A027379 (n + 2)).toNat + A008683 (8 * n + 4)

end

end A183528.P11375210379009611211

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

/-! ## A183529.P4429760057801973070

`or(char[2], A183534(A055999(n+2)+2))`
-/

namespace A183529.P4429760057801973070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183534 (A055999 (n + 2) + 2).toNat)

end

end A183529.P4429760057801973070

/-! ## A183529.P3514373554335693249

`or(C(2, n+2), A183534(A046691(n+3)))`
-/

namespace A183529.P3514373554335693249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A183534 (A046691 (n + 3)).toNat)

end

end A183529.P3514373554335693249

/-! ## A183529.P3048304330770253555

`gcd(A000038(n), A183534(A055999(n+2)+2))`
-/

namespace A183529.P3048304330770253555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183534 (A055999 (n + 2) + 2).toNat)

end

end A183529.P3048304330770253555

/-! ## A183529.P6776105867788826398

`∑{d}[A183534(A055999(n+2)+2), A000010(#)]`
-/

namespace A183529.P6776105867788826398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A055999 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A183529.P6776105867788826398

/-! ## A183529.P16190225120094448932

`A183534(A055999(n+2)+2)%A000041(n+7)`
-/

namespace A183529.P16190225120094448932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183534 (A055999 (n + 2) + 2).toNat) (A000041 (n + 7))

end

end A183529.P16190225120094448932

/-! ## A183529.P15652774207006387574

`A007318(C(2, n))*A183534(A055999(n+2)+2)`
-/

namespace A183529.P15652774207006387574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183534 (A055999 (n + 2) + 2).toNat

end

end A183529.P15652774207006387574

/-! ## A183529.P13354409301629858681

`A183534(A055999(n+2)+2)+A008683(4*(n+1))`
-/

namespace A183529.P13354409301629858681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A055999 (n + 2) + 2).toNat + A008683 (4 * (n + 1))

end

end A183529.P13354409301629858681

/-! ## A183529.P2740491945581596155

`A007318(and(2, n-2))*A183534(A055999(n+2)+2)`
-/

namespace A183529.P2740491945581596155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A183534 (A055999 (n + 2) + 2).toNat

end

end A183529.P2740491945581596155

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

/-! ## A183530.P16875416553455052997

`A183534(A302537(n)+15)`
-/

namespace A183530.P16875416553455052997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A302537 n + 15).toNat

end

end A183530.P16875416553455052997

/-! ## A183530.P8542250203770434423

`A183534(A056119(n)+16)`
-/

namespace A183530.P8542250203770434423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A056119 n + 16).toNat

end

end A183530.P8542250203770434423

/-! ## A183530.P12933193960567978121

`A183534(eq[5, A193592(n)])`
-/

namespace A183530.P12933193960567978121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183530.P12933193960567978121

/-! ## A183530.P14009081180143398466

`A183534(A055999(n+3)+1)`
-/

namespace A183530.P14009081180143398466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A055999 (n + 3) + 1).toNat

end

end A183530.P14009081180143398466

/-! ## A183530.P18183018746953812272

`A183534(A155212(n+2)+3)`
-/

namespace A183530.P18183018746953812272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A155212 (n + 2) + 3).toNat

end

end A183530.P18183018746953812272

/-! ## A183530.P11618129749580570207

`A183534(A046691(n+4)-1)`
-/

namespace A183530.P11618129749580570207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A046691 (n + 4) - 1).toNat

end

end A183530.P11618129749580570207

/-! ## A183530.P10436367827997919953

`A183534(A027379(n+4)-2)`
-/

namespace A183530.P10436367827997919953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A027379 (n + 4) - 2).toNat

end

end A183530.P10436367827997919953

/-! ## A183530.P4181942871761032622

`A183534(A055998(n+4)-2)`
-/

namespace A183530.P4181942871761032622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A055998 (n + 4) - 2).toNat

end

end A183530.P4181942871761032622

/-! ## A183530.P3421874600951331833

`A183534(A000096(n+5)-4)`
-/

namespace A183530.P3421874600951331833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000096 (n + 5) - 4).toNat

end

end A183530.P3421874600951331833

/-!
# A183531: An Ulam-type sequence: a(n) = n if n<=8; for n>8, a(n) = least number > a(n-1) which is a unique sum of 8 distinct earlier terms.

The programs for A183531, there is no canonical definition to state claims against.
-/

/-! ## A183531.P17849787049515711139

`A183534(A055999(n+4))`
-/

namespace A183531.P17849787049515711139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A055999 (n + 4)).toNat

end

end A183531.P17849787049515711139

/-! ## A183531.P14971342658567253054

`A183534(eq[6, A193592(n)])`
-/

namespace A183531.P14971342658567253054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183531.P14971342658567253054

/-! ## A183531.P10328951872664441757

`A183534(Δ[A023551(n+2)])`
-/

namespace A183531.P10328951872664441757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (f1 (n + 1) - f1 n).toNat

end

end A183531.P10328951872664441757

/-! ## A183531.P2062347149622229135

`A183534(A052905(n+4)-1)`
-/

namespace A183531.P2062347149622229135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A052905 (n + 4) - 1).toNat

end

end A183531.P2062347149622229135

/-! ## A183531.P1590982857819605937

`A183534(A056000(n+3)+4)`
-/

namespace A183531.P1590982857819605937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A056000 (n + 3) + 4).toNat

end

end A183531.P1590982857819605937

/-! ## A183531.P4735664930409097346

`A183534(A034856(n+6)-4)`
-/

namespace A183531.P4735664930409097346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A034856 (n + 6) - 4).toNat

end

end A183531.P4735664930409097346

/-! ## A183531.P2444720557509839256

`A183534(A000096(n+6)-5)`
-/

namespace A183531.P2444720557509839256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000096 (n + 6) - 5).toNat

end

end A183531.P2444720557509839256

/-! ## A183531.P1840521377699609004

`A183534(A000217(n+7)-6)`
-/

namespace A183531.P1840521377699609004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000217 (n + 7) - 6).toNat

end

end A183531.P1840521377699609004

/-! ## A183531.P6376202528027936190

`A183534(A000124(n+7)-7)`
-/

namespace A183531.P6376202528027936190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000124 (n + 7) - 7).toNat

end

end A183531.P6376202528027936190

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

/-! ## A183532.P14276445695602263010

`A183534(A055999(n+5)-1)`
-/

namespace A183532.P14276445695602263010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A055999 (n + 5) - 1).toNat

end

end A183532.P14276445695602263010

/-! ## A183532.P11735575074904652864

`A183534(A052905(n+5)-2)`
-/

namespace A183532.P11735575074904652864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A052905 (n + 5) - 2).toNat

end

end A183532.P11735575074904652864

/-! ## A183532.P10357218137286354614

`A183534(A046691(n+6)-3)`
-/

namespace A183532.P10357218137286354614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A046691 (n + 6) - 3).toNat

end

end A183532.P10357218137286354614

/-! ## A183532.P11401253019548637233

`A183534(A000217(n+8)-7)`
-/

namespace A183532.P11401253019548637233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000217 (n + 8) - 7).toNat

end

end A183532.P11401253019548637233

/-! ## A183532.P10646557079540536958

`A183534(A000124(n+8)-8)`
-/

namespace A183532.P10646557079540536958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000124 (n + 8) - 8).toNat

end

end A183532.P10646557079540536958

/-! ## A183532.P1772583960406825999

`A183534(A167614(n+7)-10)`
-/

namespace A183532.P1772583960406825999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A167614 (n + 7) - 10).toNat

end

end A183532.P1772583960406825999

/-! ## A183532.P511003113594798572

`A183534(A000096(n+6)+n+2)`
-/

namespace A183532.P511003113594798572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000096 (n + 6) + (n + 2 : ℤ)).toNat

end

end A183532.P511003113594798572

/-! ## A183532.P7294015721311509740

`A183534(A055998(n+5)+n+4)`
-/

namespace A183532.P7294015721311509740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A055998 (n + 5) + (n + 4 : ℤ)).toNat

end

end A183532.P7294015721311509740

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

/-! ## A183533.P11489639389739115050

`A183534(A246172(n+5)+6)`
-/

namespace A183533.P11489639389739115050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A246172 (n + 5) + 6).toNat

end

end A183533.P11489639389739115050

/-! ## A183533.P142040041434490160

`A183534(A046691(n+7)-4)`
-/

namespace A183533.P142040041434490160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A046691 (n + 7) - 4).toNat

end

end A183533.P142040041434490160

/-! ## A183533.P11418946548343452879

`A183534(A000124(n+9)-9)`
-/

namespace A183533.P11418946548343452879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000124 (n + 9) - 9).toNat

end

end A183533.P11418946548343452879

/-! ## A183533.P12068096586052587970

`A183534(A000096(n+7)+n+2)`
-/

namespace A183533.P12068096586052587970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A183533.P12068096586052587970

/-! ## A183533.P3435729265500472851

`A183534(A000217(n+8)+n+1)`
-/

namespace A183533.P3435729265500472851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A183533.P3435729265500472851

/-!
# A183534: Square array of generalized Ulam numbers U(n,k), n>=1, k>=2, read by antidiagonals: U(n,k) = n if n<=k; for n>k, U(n,k) = least number > U(n-1,k) which is a unique sum of k distinct terms U(i,k) with i

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

/-! ## A183537.P6967204328843682749

`A183541(A167614(n+1))+A011737(n)`
-/

namespace A183537.P6967204328843682749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (A167614 (n + 1)).toNat + A011737 n

end

end A183537.P6967204328843682749

/-! ## A183537.P6333362877604284648

`A183541(A167614(n+1))+A054908(n)`
-/

namespace A183537.P6333362877604284648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (A167614 (n + 1)).toNat + A054908 n

end

end A183537.P6333362877604284648

/-! ## A183537.P17515224040661230055

`A183541(A167614(n+1))+A084904(n)`
-/

namespace A183537.P17515224040661230055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (A167614 (n + 1)).toNat + A084904 n

end

end A183537.P17515224040661230055

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

/-! ## A183538.P15473783752544819995

`A183541(A052905(n)+9)`
-/

namespace A183538.P15473783752544819995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (A052905 n + 9).toNat

end

end A183538.P15473783752544819995

/-! ## A183538.P394950430436445794

`A183541(A055999(n)+10)`
-/

namespace A183538.P394950430436445794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (A055999 n + 10).toNat

end

end A183538.P394950430436445794

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

/-! ## A183542.P6546286582974577229

`A183544(A074049(n+2)-1)`
-/

namespace A183542.P6546286582974577229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183544 (A074049 (n + 2) - 1).toNat

end

end A183542.P6546286582974577229

/-! ## A183542.P7600591155994957904

`A048680(A004754(n+1))-A097479(n)!`
-/

namespace A183542.P7600591155994957904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A004754 (n + 1)).toNat - (Nat.factorial (A097479 n).toNat : ℤ)

end

end A183542.P7600591155994957904

/-! ## A183542.P5082166397168619715

`A048680(A004754(n+1))-A006466(A052955(n))`
-/

namespace A183542.P5082166397168619715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A004754 (n + 1)).toNat - A006466 (A052955 n).toNat

end

end A183542.P5082166397168619715

/-! ## A183542.P3150331889219494416

`A048680(A004754(n+1))-A002217(A000043(n+1))`
-/

namespace A183542.P3150331889219494416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A004754 (n + 1)).toNat - A002217 (A000043 (n + 1)).toNat

end

end A183542.P3150331889219494416

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

/-! ## A183543.P11716391679620295280

`A048680(A004755(n+1))-1`
-/

namespace A183543.P11716391679620295280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A004755 (n + 1)).toNat - 1

end

end A183543.P11716391679620295280

/-! ## A183543.P1531951238629993602

`A048680(A004760(n+3))-1`
-/

namespace A183543.P1531951238629993602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A004760 (n + 3)).toNat - 1

end

end A183543.P1531951238629993602

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

/-! ## A183543.P12861478231086123362

`A260196(n+2)+A048680(A004760(n+3))`
-/

namespace A183543.P12861478231086123362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A048680 (A004760 (n + 3)).toNat

end

end A183543.P12861478231086123362

/-! ## A183543.P17852130936108156862

`A062157(2*(n+1))+A048680(A004760(n+3))`
-/

namespace A183543.P17852130936108156862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 1)) + A048680 (A004760 (n + 3)).toNat

end

end A183543.P17852130936108156862

/-! ## A183543.P15720535648785976843

`A321804(A002262(n))+A048680(A004760(n+3))`
-/

namespace A183543.P15720535648785976843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A002262 n).toNat + A048680 (A004760 (n + 3)).toNat

end

end A183543.P15720535648785976843

/-! ## A183543.P10291597810831047588

`A321804(A000005(n+1))+A048680(A004760(n+3))`
-/

namespace A183543.P10291597810831047588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000005 (n + 1)).toNat + A048680 (A004760 (n + 3)).toNat

end

end A183543.P10291597810831047588

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

/-! ## A183544.P14057644836948112651

`A130312(n+1)+n`
-/

namespace A183544.P14057644836948112651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (n + 1) + (n : ℤ)

end

end A183544.P14057644836948112651

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

/-! ## A183544.P17149017204050498102

`A000045(ceil(log((atan(ϕ)+n)²)))+n`
-/

namespace A183544.P17149017204050498102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.log ((Real.arctan Real.goldenRatio + (n : ℝ)) ^ 2)⌉.toNat + (n : ℤ)

end

end A183544.P17149017204050498102

/-! ## A183544.P11572943626790681479

`A000045(floor(log((n+1)²))+1)+n`
-/

namespace A183544.P11572943626790681479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊Real.log ((n + 1) ^ 2 : ℝ)⌋ + 1).toNat + (n : ℤ)

end

end A183544.P11572943626790681479

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

/-! ## A183545.P10096585720192853832

`eq[1, round(a(floor(n/ϕ)))]` with `a(0)=3, a(1)=4, a(2)=-4, a(3)=1, a(4)=0, a(5)=0`

`round` is left out, it is the identity on integers.
-/

namespace A183545.P10096585720192853832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, -4, 1, 0, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183545.P10096585720192853832

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

/-! ## A183545.P950208212714121843

`lt[3, abs(a(floor(n/ϕ)))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7, a(4)=1, a(5)=1, a(6)=4`
-/

namespace A183545.P950208212714121843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 7, 1, 1, 4] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A183545.P950208212714121843

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

/-! ## A183545.P10713407884230791627

`∑[abs(Δ[A345347(n)])]`
-/

namespace A183545.P10713407884230791627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183545.P10713407884230791627

/-! ## A183545.P14535703295607244347

`A345347(n+1)-1`
-/

namespace A183545.P14535703295607244347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345347 (n + 1) - 1

end

end A183545.P14535703295607244347

/-! ## A183545.P6866365650353439183

`A354415(n+1)+n`
-/

namespace A183545.P6866365650353439183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354415 (n + 1) + (n : ℤ)

end

end A183545.P6866365650353439183

/-! ## A183545.P3227234515230723422

`round(ϕ*A246104(n))+n`
-/

namespace A183545.P3227234515230723422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A246104 n : ℝ)) + (n : ℤ)

end

end A183545.P3227234515230723422

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

/-! ## A183546.P7732409684577008162

`A183554(n²+(n+1)²)+A025465(n)`
-/

namespace A183546.P7732409684577008162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (n ^ 2 + (n + 1) ^ 2) + A025465 n

end

end A183546.P7732409684577008162

/-!
# A183547: Number of n X 2 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183547, there is no canonical definition to state claims against.
-/

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

/-! ## A183547.P1339828297072577909

`record[A183554(abs(A201163(n)))]`
-/

namespace A183547.P1339828297072577909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183547.P1339828297072577909

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

/-! ## A183548.P18267294168308371701

`or(1, A183554(A167614(n+1)))`
-/

namespace A183548.P18267294168308371701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183554 (A167614 (n + 1)).toNat)

end

end A183548.P18267294168308371701

/-! ## A183548.P6736566250331372436

`A185036(n)+A183554(A167614(n+1))`
-/

namespace A183548.P6736566250331372436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n + A183554 (A167614 (n + 1)).toNat

end

end A183548.P6736566250331372436

/-! ## A183548.P10847481249167760951

`A185237(n)+A183554(A167614(n+1))`
-/

namespace A183548.P10847481249167760951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n + A183554 (A167614 (n + 1)).toNat

end

end A183548.P10847481249167760951

/-! ## A183548.P14074206367587417951

`A324803(n+1)+A183554(A167614(n+1))`
-/

namespace A183548.P14074206367587417951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324803 (n + 1) + A183554 (A167614 (n + 1)).toNat

end

end A183548.P14074206367587417951

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

/-! ## A183549.P13779708031940903914

`A183554(A052905(n)+9)`
-/

namespace A183549.P13779708031940903914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A052905 n + 9).toNat

end

end A183549.P13779708031940903914

/-! ## A183549.P16466190871828341462

`A183554(A167614(n+2)+1)`
-/

namespace A183549.P16466190871828341462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A167614 (n + 2) + 1).toNat

end

end A183549.P16466190871828341462

/-! ## A183549.P10184976282788098091

`A183554(A167487(n+2)-3)`
-/

namespace A183549.P10184976282788098091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A167487 (n + 2) - 3).toNat

end

end A183549.P10184976282788098091

/-! ## A183549.P10698521722748874418

`A183554(Δ[A264443(n)-n²])`
-/

namespace A183549.P10698521722748874418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (f1 (n + 1) - f1 n).toNat

end

end A183549.P10698521722748874418

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

/-! ## A183550.P14068699216425503055

`A183554(eq[6, A131818(n+1)])`
-/

namespace A183550.P14068699216425503055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183550.P14068699216425503055

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

/-! ## A183550.P17677965534736762643

`A183554(A374005(n+1))`
-/

namespace A183550.P17677965534736762643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A374005 (n + 1)).toNat

end

end A183550.P17677965534736762643

/-! ## A183550.P16351215757861211464

`A183554(eq[2, A092921(n)])`
-/

namespace A183550.P16351215757861211464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183550.P16351215757861211464

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

/-! ## A183551.P16123665667444535897

`A183554(A052905(n+3))`
-/

namespace A183551.P16123665667444535897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A052905 (n + 3)).toNat

end

end A183551.P16123665667444535897

/-! ## A183551.P7619845433175109166

`A183554(eq[3, A219347(n)])`
-/

namespace A183551.P7619845433175109166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183551.P7619845433175109166

/-! ## A183551.P1255060566660587316

`A183554(eq[5, A193592(n)])`
-/

namespace A183551.P1255060566660587316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183551.P1255060566660587316

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

/-! ## A183552.P1132014554491970013

`A183554(A151742(n+1)+A000124(n))`
-/

namespace A183552.P1132014554491970013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A151742 (n + 1) + A000124 n).toNat

end

end A183552.P1132014554491970013

/-! ## A183552.P5499954582933597060

`A183554(A374008(n+1))`
-/

namespace A183552.P5499954582933597060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (A374008 (n + 1)).toNat

end

end A183552.P5499954582933597060

/-! ## A183552.P738126142694960435

`A183554(eq[4, A219347(n)])`
-/

namespace A183552.P738126142694960435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183552.P738126142694960435

/-! ## A183552.P17402206260328328119

`A183554(eq[6, A193592(n)])`
-/

namespace A183552.P17402206260328328119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183552.P17402206260328328119

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

/-! ## A183553.P16803925499641868114

`A183554(eq[7, A193592(n)])`
-/

namespace A183553.P16803925499641868114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183553.P16803925499641868114

/-!
# A183554: T(n,k)=Number of nXk 0..2 arrays with each element equal to either the maximum or the minimum of its horizontal and vertical neighbors.

The programs for A183554, there is no canonical definition to state claims against.
-/

/-! ## A183554.P7864501540335362169

`A176347(A183501(n+1))%A270929(A192869(n+1))`
-/

namespace A183554.P7864501540335362169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176347 (A183501 (n + 1)).toNat) (A270929 (A192869 (n + 1)).toNat)

end

end A183554.P7864501540335362169

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

/-! ## A183555.P17635974521543802312

`A183557(eq[1-and(2, n), A285080(n+1)])`
-/

namespace A183555.P17635974521543802312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183557 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A183555.P17635974521543802312

/-! ## A183555.P7488482407960910841

`A183557(eq[A005614(2*(n+2)), A046978(2*(n+1))])`
-/

namespace A183555.P7488482407960910841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183557 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A183555.P7488482407960910841

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

/-! ## A183558.P424545077479566651

`A000065(n)+1-A007690(n)`
-/

namespace A183558.P424545077479566651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A007690 n)

end

end A183558.P424545077479566651

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

/-! ## A183559.P5171685837614813847

`A183568(∑[n+2]+3)`
-/

namespace A183559.P5171685837614813847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183559.P5171685837614813847

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

/-! ## A183560.P4058275613846397398

`or(char[2], A183568(A055999(n)+9))`
-/

namespace A183560.P4058275613846397398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183568 (A055999 n + 9).toNat)

end

end A183560.P4058275613846397398

/-! ## A183560.P18211642452204271111

`(A183568(A167614(n+2))^(1/2))²`
-/

namespace A183560.P18211642452204271111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A183568 (A167614 (n + 2)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A183560.P18211642452204271111

/-! ## A183560.P6204991888020112714

`gcd(A000038(n), A183568(A167614(n+2)))`
-/

namespace A183560.P6204991888020112714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183568 (A167614 (n + 2)).toNat)

end

end A183560.P6204991888020112714

/-! ## A183560.P12487128146834029458

`A183568(A055999(n)+9)%A120949(n)`
-/

namespace A183560.P12487128146834029458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183568 (A055999 n + 9).toNat) (A120949 n)

end

end A183560.P12487128146834029458

/-! ## A183560.P16289652722630982638

`and(A063397(n), A183568(A055999(n)+9))`
-/

namespace A183560.P16289652722630982638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063397 n) (A183568 (A055999 n + 9).toNat)

end

end A183560.P16289652722630982638

/-! ## A183560.P2297849849740984457

`abs(A033999(n)*A183568(A055999(n)+9))`
-/

namespace A183560.P2297849849740984457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A183568 (A055999 n + 9).toNat|

end

end A183560.P2297849849740984457

/-! ## A183560.P16938318301068990467

`A057427(n+1)*A183568(A055999(n)+9)`
-/

namespace A183560.P16938318301068990467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A183568 (A055999 n + 9).toNat

end

end A183560.P16938318301068990467

/-! ## A183560.P14717668550030010543

`A000034(2*n)*A183568(A055999(n)+9)`
-/

namespace A183560.P14717668550030010543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A183568 (A055999 n + 9).toNat

end

end A183560.P14717668550030010543

/-! ## A183560.P16484048572060002068

`A183568(A167614(n+2))%(A000041(n)+1)`
-/

namespace A183560.P16484048572060002068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183568 (A167614 (n + 2)).toNat) (A000041 n + 1)

end

end A183560.P16484048572060002068

/-! ## A183560.P17257336618360644987

`A007318(and(3, -n))*A183568(A055999(n)+9)`
-/

namespace A183560.P17257336618360644987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A183568 (A055999 n + 9).toNat

end

end A183560.P17257336618360644987

/-! ## A183560.P9013689162019474597

`A014963(6*(n+1))*A183568(A167614(n+2))`
-/

namespace A183560.P9013689162019474597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A183568 (A167614 (n + 2)).toNat

end

end A183560.P9013689162019474597

/-! ## A183560.P16541545797512751929

`A183568(A055999(n)+9)^A014963(4*n+2)`
-/

namespace A183560.P16541545797512751929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183568 (A055999 n + 9).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A183560.P16541545797512751929

/-! ## A183560.P12496447532233287203

`A183568(A055999(n)+9)+val(A000040(n+4), 3)`
-/

namespace A183560.P12496447532233287203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A055999 n + 9).toNat + (SequenceMachineLib.valuation (A000040 (n + 4)).toNat 3 : ℤ)

end

end A183560.P12496447532233287203

/-! ## A183560.P16216124026209670820

`A000108(gcd(n, n+1))*A183568(A167614(n+2))`
-/

namespace A183560.P16216124026209670820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A183568 (A167614 (n + 2)).toNat

end

end A183560.P16216124026209670820

/-! ## A183560.P6935534744972362990

`lcm((-1)^A000005(n+2), A183568(A167614(n+2)))`
-/

namespace A183560.P6935534744972362990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000005 (n + 2) : ℤ))) (A183568 (A167614 (n + 2)).toNat)

end

end A183560.P6935534744972362990

/-! ## A183560.P3912421260178143335

`A183568(A000217(n+3)+3)^A014963(4*n+2)`
-/

namespace A183560.P3912421260178143335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183568 (A000217 (n + 3) + 3).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A183560.P3912421260178143335

/-! ## A183560.P5823878405848195256

`A001222(A050260(n+1))*A183568(A055999(n)+9)`
-/

namespace A183560.P5823878405848195256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A050260 (n + 1)).toNat * A183568 (A055999 n + 9).toNat

end

end A183560.P5823878405848195256

/-! ## A183560.P17818858629405315898

`A027023(A062732(n+1))*A183568(A055999(n)+9)`
-/

namespace A183560.P17818858629405315898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (A062732 (n + 1)).toNat * A183568 (A055999 n + 9).toNat

end

end A183560.P17818858629405315898

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

/-! ## A183562.P16570308194309667357

`A183568(A167499(n+4))`
-/

namespace A183562.P16570308194309667357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A167499 (n + 4)).toNat

end

end A183562.P16570308194309667357

/-! ## A183562.P18118553096025681122

`A183568(A056115(n)+20)`
-/

namespace A183562.P18118553096025681122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A056115 n + 20).toNat

end

end A183562.P18118553096025681122

/-! ## A183562.P5620824328621741104

`A183568(A166136(n+4)-1)`
-/

namespace A183562.P5620824328621741104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A166136 (n + 4) - 1).toNat

end

end A183562.P5620824328621741104

/-! ## A183562.P2065948932635059442

`A183568(A167614(n+4)+2)`
-/

namespace A183562.P2065948932635059442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A167614 (n + 4) + 2).toNat

end

end A183562.P2065948932635059442

/-! ## A183562.P9114890071048448594

`A183568(A167487(n+4)-2)`
-/

namespace A183562.P9114890071048448594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A167487 (n + 4) - 2).toNat

end

end A183562.P9114890071048448594

/-! ## A183562.P7807938298340737693

`A183568(A000124(n+5)+4)`
-/

namespace A183562.P7807938298340737693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000124 (n + 5) + 4).toNat

end

end A183562.P7807938298340737693

/-! ## A183562.P5627004987584567296

`A183568(A000096(n+4)+6)`
-/

namespace A183562.P5627004987584567296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000096 (n + 4) + 6).toNat

end

end A183562.P5627004987584567296

/-! ## A183562.P2220489534275931711

`A183568(A000217(n+5)+5)`
-/

namespace A183562.P2220489534275931711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000217 (n + 5) + 5).toNat

end

end A183562.P2220489534275931711

/-! ## A183562.P9495728458916476830

`A183568(A052905(n+2)+10)`
-/

namespace A183562.P9495728458916476830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A052905 (n + 2) + 10).toNat

end

end A183562.P9495728458916476830

/-! ## A183562.P17626240920136549323

`A183568(A055999(n+2)+11)`
-/

namespace A183562.P17626240920136549323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A055999 (n + 2) + 11).toNat

end

end A183562.P17626240920136549323

/-! ## A183562.P8730280774548544377

`A183568(Δ[A000292(n+4)]+5)`
-/

namespace A183562.P8730280774548544377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (f1 (n + 1) - f1 n + 5).toNat

end

end A183562.P8730280774548544377

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

/-! ## A183563.P1829716948945929267

`A183568(A166136(n+5))`
-/

namespace A183563.P1829716948945929267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A166136 (n + 5)).toNat

end

end A183563.P1829716948945929267

/-! ## A183563.P2679995561552563433

`A183568(A056119(n)+27)`
-/

namespace A183563.P2679995561552563433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A056119 n + 27).toNat

end

end A183563.P2679995561552563433

/-! ## A183563.P5607167920299163419

`A183568(A167614(n+5)+3)`
-/

namespace A183563.P5607167920299163419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A167614 (n + 5) + 3).toNat

end

end A183563.P5607167920299163419

/-! ## A183563.P10840991596686520273

`A183568(A133263(n+6)+4)`
-/

namespace A183563.P10840991596686520273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A133263 (n + 6) + 4).toNat

end

end A183563.P10840991596686520273

/-! ## A183563.P7902145337864694192

`A183568(A000124(n+6)+5)`
-/

namespace A183563.P7902145337864694192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000124 (n + 6) + 5).toNat

end

end A183563.P7902145337864694192

/-! ## A183563.P8861973640864693860

`A183568(A000096(n+5)+7)`
-/

namespace A183563.P8861973640864693860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000096 (n + 5) + 7).toNat

end

end A183563.P8861973640864693860

/-! ## A183563.P4777191069328824818

`A183568(A000217(n+6)+6)`
-/

namespace A183563.P4777191069328824818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000217 (n + 6) + 6).toNat

end

end A183563.P4777191069328824818

/-! ## A183563.P15147727951030675695

`A183568(A155212(n+4)-A005408(n))`
-/

namespace A183563.P15147727951030675695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A155212 (n + 4) - A005408 n).toNat

end

end A183563.P15147727951030675695

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

/-! ## A183564.P5142231379989470967

`A183568(A133263(n+7)+5)`
-/

namespace A183564.P5142231379989470967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A133263 (n + 7) + 5).toNat

end

end A183564.P5142231379989470967

/-! ## A183564.P17670558869762583969

`A183568(A000124(n+7)+6)`
-/

namespace A183564.P17670558869762583969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000124 (n + 7) + 6).toNat

end

end A183564.P17670558869762583969

/-! ## A183564.P11124660487400987373

`A183568(A000096(n+6)+8)`
-/

namespace A183564.P11124660487400987373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000096 (n + 6) + 8).toNat

end

end A183564.P11124660487400987373

/-! ## A183564.P10730529714744483697

`A183568(A000217(n+7)+7)`
-/

namespace A183564.P10730529714744483697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000217 (n + 7) + 7).toNat

end

end A183564.P10730529714744483697

/-! ## A183564.P1728254260027984882

`A183568(A052905(n+7)-A008585(n+5))`
-/

namespace A183564.P1728254260027984882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A052905 (n + 7) - A008585 (n + 5)).toNat

end

end A183564.P1728254260027984882

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

/-! ## A183565.P10969185500011632749

`or(char[2], A183568(A253145(n+7)+8))`
-/

namespace A183565.P10969185500011632749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183568 (A253145 (n + 7) + 8).toNat)

end

end A183565.P10969185500011632749

/-! ## A183565.P16977873778739587390

`or(char[2], A183568(A000096(n+7)+9))`
-/

namespace A183565.P16977873778739587390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183568 (A000096 (n + 7) + 9).toNat)

end

end A183565.P16977873778739587390

/-! ## A183565.P16481694122510551165

`and(A047859(n), A183568(A253145(n+7)+8))`
-/

namespace A183565.P16481694122510551165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047859 n) (A183568 (A253145 (n + 7) + 8).toNat)

end

end A183565.P16481694122510551165

/-! ## A183565.P17708407467527632695

`A183568(A253145(n+7)+8)+A000007(n+1)`
-/

namespace A183565.P17708407467527632695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A253145 (n + 7) + 8).toNat + A000007 (n + 1)

end

end A183565.P17708407467527632695

/-! ## A183565.P4171858744247266999

`A183568(A253145(n+7)+8)%A000041(n+2)`
-/

namespace A183565.P4171858744247266999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183568 (A253145 (n + 7) + 8).toNat) (A000041 (n + 2))

end

end A183565.P4171858744247266999

/-! ## A183565.P6051865931890956143

`A183568(A000096(n+7)+9)%A000041(n+2)`
-/

namespace A183565.P6051865931890956143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183568 (A000096 (n + 7) + 9).toNat) (A000041 (n + 2))

end

end A183565.P6051865931890956143

/-! ## A183565.P6114570999723308419

`A040001(or(1, n))*A183568(A253145(n+7)+8)`
-/

namespace A183565.P6114570999723308419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Nat.lor 1 n) * A183568 (A253145 (n + 7) + 8).toNat

end

end A183565.P6114570999723308419

/-! ## A183565.P11104838788412954927

`A183568(A000096(n+7)+9)+A008683(4*(n+1))`
-/

namespace A183565.P11104838788412954927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000096 (n + 7) + 9).toNat + A008683 (4 * (n + 1))

end

end A183565.P11104838788412954927

/-! ## A183565.P9477674849837331375

`A014963(12*n+6)*A183568(A253145(n+7)+8)`
-/

namespace A183565.P9477674849837331375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A183568 (A253145 (n + 7) + 8).toNat

end

end A183565.P9477674849837331375

/-! ## A183565.P2093612901924660533

`(1-A001489(n)-n)*A183568(A253145(n+7)+8)`
-/

namespace A183565.P2093612901924660533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n - (n : ℤ)) * A183568 (A253145 (n + 7) + 8).toNat

end

end A183565.P2093612901924660533

/-! ## A183565.P4424956510508281954

`A014963(gcd(n, n+1))*A183568(A000096(n+7)+9)`
-/

namespace A183565.P4424956510508281954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A183568 (A000096 (n + 7) + 9).toNat

end

end A183565.P4424956510508281954

/-! ## A183565.P17369336764073428787

`A000045(and(2, -n)!)*A183568(A253145(n+7)+8)`
-/

namespace A183565.P17369336764073428787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat) * A183568 (A253145 (n + 7) + 8).toNat

end

end A183565.P17369336764073428787

/-! ## A183565.P1591491043441419897

`A183568(A253145(n+7)+8)+A063691(and(n+1, -n))`
-/

namespace A183565.P1591491043441419897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A253145 (n + 7) + 8).toNat + A063691 (Int.land (n + 1 : ℤ) (-(n : ℤ))).toNat

end

end A183565.P1591491043441419897

/-! ## A183565.P6752213535496962753

`A001221(2-C(n, n²))!*A183568(A000096(n+7)+9)`
-/

namespace A183565.P6752213535496962753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001221 (2 - Nat.choose n (n ^ 2))).toNat : ℤ) * A183568 (A000096 (n + 7) + 9).toNat

end

end A183565.P6752213535496962753

/-! ## A183565.P16308043679425194958

`A183568(A253145(n+7)+8)+A063691(A001316(n))`
-/

namespace A183565.P16308043679425194958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A253145 (n + 7) + 8).toNat + A063691 (A001316 n).toNat

end

end A183565.P16308043679425194958

/-! ## A183565.P1871991806532493166

`A183568(A253145(n+7)+8)^A014963(A001749(n+1))`
-/

namespace A183565.P1871991806532493166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183568 (A253145 (n + 7) + 8).toNat : ℚ) ^ (A014963 (A001749 (n + 1)).toNat : ℤ)

end

end A183565.P1871991806532493166

/-! ## A183565.P10243498973151255929

`A183568(A253145(n+7)+8)^A014963(A001750(n+1))`
-/

namespace A183565.P10243498973151255929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183568 (A253145 (n + 7) + 8).toNat : ℚ) ^ (A014963 (A001750 (n + 1)).toNat : ℤ)

end

end A183565.P10243498973151255929

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

/-! ## A183566.P256806127493863775

`A183568(A167499(n+8)+4)`
-/

namespace A183566.P256806127493863775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A167499 (n + 8) + 4).toNat

end

end A183566.P256806127493863775

/-! ## A183566.P11282086028336669537

`A183568(A133263(n+9)+7)`
-/

namespace A183566.P11282086028336669537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A133263 (n + 9) + 7).toNat

end

end A183566.P11282086028336669537

/-! ## A183566.P13055715737245963985

`A183568(A000124(n+9)+8)`
-/

namespace A183566.P13055715737245963985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000124 (n + 9) + 8).toNat

end

end A183566.P13055715737245963985

/-! ## A183566.P4232985085981391945

`A183568(A000096(n+8)+10)`
-/

namespace A183566.P4232985085981391945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000096 (n + 8) + 10).toNat

end

end A183566.P4232985085981391945

/-! ## A183566.P14728024230801296407

`A183568(A056119(n+3)+30)`
-/

namespace A183566.P14728024230801296407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A056119 (n + 3) + 30).toNat

end

end A183566.P14728024230801296407

/-! ## A183566.P6028192977930679302

`A183568(A008805(2*(n+8))+9)`
-/

namespace A183566.P6028192977930679302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A008805 (2 * (n + 8)) + 9).toNat

end

end A183566.P6028192977930679302

/-! ## A183566.P2867404895551922267

`A183568(A000217(n+10)-(n+1))`
-/

namespace A183566.P2867404895551922267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A183566.P2867404895551922267

/-! ## A183566.P18408631141559576992

`A183568(A005843(n+13)+A000217(n+7))`
-/

namespace A183566.P18408631141559576992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A005843 (n + 13) + A000217 (n + 7)).toNat

end

end A183566.P18408631141559576992

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

/-! ## A183567.P14282270305699647288

`A183568(A167499(n+9)+5)`
-/

namespace A183567.P14282270305699647288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A167499 (n + 9) + 5).toNat

end

end A183567.P14282270305699647288

/-! ## A183567.P9278725730174228669

`A183568(A133263(n+10)+8)`
-/

namespace A183567.P9278725730174228669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A133263 (n + 10) + 8).toNat

end

end A183567.P9278725730174228669

/-! ## A183567.P10396722805378212743

`A183568(A000096(n+9)+11)`
-/

namespace A183567.P10396722805378212743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000096 (n + 9) + 11).toNat

end

end A183567.P10396722805378212743

/-! ## A183567.P6046954472197086137

`A183568(A000217(n+10)+10)`
-/

namespace A183567.P6046954472197086137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000217 (n + 10) + 10).toNat

end

end A183567.P6046954472197086137

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

The programs for A183569, the canonical program `A183569.P5499308566454369165` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183569 has offset 1).

The definition of A183569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(4*(n+1)-3))` (program `A183569.P5499308566454369165`, by `A183569.P5499308566454369165.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183569.P5499308566454369165

`n+1+floor(sqrt(4*(n+1)-3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183569

/-- `n+1+floor(sqrt(4*(n+1)-3))` -/
def P5499308566454369165.Spec : Prop :=
  ∀ n, P5499308566454369165.a n = A183569 (n + 1)

theorem P5499308566454369165.correct : P5499308566454369165.Spec := by
  intro n
  simp only [A183569, Nat.add_sub_cancel]

end A183569

/-! ## A183569.P12020684429387511796

`comp[∑[∑[n%2]]-1]`
-/

namespace A183569.P12020684429387511796
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P12020684429387511796

namespace A183569

/-- `comp[∑[∑[n%2]]-1]` -/
def P12020684429387511796.Spec : Prop :=
  ∀ n, (P12020684429387511796.a n : ℤ) = A183569 (n + 1)

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

/-! ## A183569.P5779928391664771779

`comp[A008797(n)-1]`
-/

namespace A183569.P5779928391664771779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183569.P5779928391664771779

namespace A183569

/-- `comp[A008797(n)-1]` -/
def P5779928391664771779.Spec : Prop :=
  ∀ n, (P5779928391664771779.a n : ℤ) = A183569 (n + 1)

end A183569

/-!
# A183570: a(n) = n + floor(sqrt(n + 1)).

The programs for A183570, the canonical program `A183570.P17560604229379144785` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183570 has offset 0).

The definition of A183570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(sqrt(n+1))` (program `A183570.P17560604229379144785`, by `A183570.P17560604229379144785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183570.P17560604229379144785

`n+floor(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183570

/-- `n+floor(sqrt(n+1))` -/
def P17560604229379144785.Spec : Prop :=
  ∀ n, (P17560604229379144785.a n : ℤ) = A183570 n

theorem P17560604229379144785.correct : P17560604229379144785.Spec := by
  intro n
  simp only [A183570]

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

/-! ## A183570.P14647635065888489610

`lt[acot(A166085(n+2))², 1]`
-/

namespace A183570.P14647635065888489610
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A166085 (n + 2) : ℝ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A183570.P14647635065888489610

namespace A183570

/-- `lt[acot(A166085(n+2))², 1]` -/
def P14647635065888489610.Spec : Prop :=
  ∀ n, (P14647635065888489610.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P8448974458619899941

`∪[A183868(n+1), A267874(n)]`
-/

namespace A183570.P8448974458619899941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183570.P8448974458619899941

namespace A183570

/-- `∪[A183868(n+1), A267874(n)]` -/
def P8448974458619899941.Spec : Prop :=
  ∀ n, (P8448974458619899941.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P5713956846471919752

`∪[A048859(n+1), A183868(n+1)]`
-/

namespace A183570.P5713956846471919752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183570.P5713956846471919752

namespace A183570

/-- `∪[A048859(n+1), A183868(n+1)]` -/
def P5713956846471919752.Spec : Prop :=
  ∀ n, (P5713956846471919752.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P1088510538332935826

`∪[A048859(n+1), A184675(n+1)]`
-/

namespace A183570.P1088510538332935826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183570.P1088510538332935826

namespace A183570

/-- `∪[A048859(n+1), A184675(n+1)]` -/
def P1088510538332935826.Spec : Prop :=
  ∀ n, (P1088510538332935826.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P9958228600483785627

`∪[A184675(n+1), A184676(n+1)]`
-/

namespace A183570.P9958228600483785627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183570.P9958228600483785627

namespace A183570

/-- `∪[A184675(n+1), A184676(n+1)]` -/
def P9958228600483785627.Spec : Prop :=
  ∀ n, (P9958228600483785627.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P4746970468365154977

`eq[0, A245552(n+3)]`
-/

namespace A183570.P4746970468365154977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183570.P4746970468365154977

namespace A183570

/-- `eq[0, A245552(n+3)]` -/
def P4746970468365154977.Spec : Prop :=
  ∀ n, (P4746970468365154977.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P2446889859383900976

`eq[0, char[n*(n+3)]]`
-/

namespace A183570.P2446889859383900976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183570.P2446889859383900976

namespace A183570

/-- `eq[0, char[n*(n+3)]]` -/
def P2446889859383900976.Spec : Prop :=
  ∀ n, (P2446889859383900976.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P10500420365873295230

`lt[char[n*(n+3)], 1]`
-/

namespace A183570.P10500420365873295230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A183570.P10500420365873295230

namespace A183570

/-- `lt[char[n*(n+3)], 1]` -/
def P10500420365873295230.Spec : Prop :=
  ∀ n, (P10500420365873295230.a n : ℤ) = A183570 n

end A183570

/-! ## A183570.P11645967987911709568

`A023443(A028392(n+1))`
-/

namespace A183570.P11645967987911709568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A028392 (n + 1)).toNat

end

end A183570.P11645967987911709568

namespace A183570

/-- `A023443(A028392(n+1))` -/
def P11645967987911709568.Spec : Prop :=
  ∀ n, P11645967987911709568.a n = A183570 n

end A183570

/-! ## A183570.P8902465598114827441

`A023444(A078358(n+2))`
-/

namespace A183570.P8902465598114827441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A078358 (n + 2)).toNat

end

end A183570.P8902465598114827441

namespace A183570

/-- `A023444(A078358(n+2))` -/
def P8902465598114827441.Spec : Prop :=
  ∀ n, P8902465598114827441.a n = A183570 n

end A183570

/-! ## A183570.P3771074961827126571

`A023445(A135668(n+2))`
-/

namespace A183570.P3771074961827126571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A135668 (n + 2)).toNat

end

end A183570.P3771074961827126571

namespace A183570

/-- `A023445(A135668(n+2))` -/
def P3771074961827126571.Spec : Prop :=
  ∀ n, P3771074961827126571.a n = A183570 n

end A183570

/-!
# A183571: n+floor(sqrt(n+2)).

The programs for A183571, the canonical program `A183571.P14643178038538305989` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183571 has offset 1).

The definition of A183571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(n+3))` (program `A183571.P14643178038538305989`, by `A183571.P14643178038538305989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183571.P14643178038538305989

`n+1+floor(sqrt(n+3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183571

/-- `n+1+floor(sqrt(n+3))` -/
def P14643178038538305989.Spec : Prop :=
  ∀ n, (P14643178038538305989.a n : ℤ) = A183571 (n + 1)

theorem P14643178038538305989.correct : P14643178038538305989.Spec := by
  intro n
  simp only [A183571, Nat.add_sub_cancel]

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

/-! ## A183571.P14713757821185575469

`comp[(n-1)*A136521(n)+1]`
-/

namespace A183571.P14713757821185575469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A136521 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183571.P14713757821185575469

namespace A183571

/-- `comp[(n-1)*A136521(n)+1]` -/
def P14713757821185575469.Spec : Prop :=
  ∀ n, (P14713757821185575469.a n : ℤ) = A183571 (n + 1)

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

/-!
# A183572: a(n) = n + floor(sqrt(2*n-1)).

The programs for A183572, the canonical program `A183572.P15039593679889350833` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183572 has offset 1).

The definition of A183572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(2*(n+1)-1))` (program `A183572.P15039593679889350833`, by `A183572.P15039593679889350833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183572.P15039593679889350833

`n+1+floor(sqrt(2*(n+1)-1))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183572

/-- `n+1+floor(sqrt(2*(n+1)-1))` -/
def P15039593679889350833.Spec : Prop :=
  ∀ n, P15039593679889350833.a n = A183572 (n + 1)

theorem P15039593679889350833.correct : P15039593679889350833.Spec := by
  intro n
  simp only [A183572, Nat.add_sub_cancel]

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

/-! ## A183572.P6406412468444219855

`(lt[floor(sqrt(lcm(2, n+1)))², n]-1)/2`
-/

namespace A183572.P6406412468444219855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.lcm 2 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1 : ℚ) / 2

end

end A183572.P6406412468444219855

namespace A183572

/-- `(lt[floor(sqrt(lcm(2, n+1)))², n]-1)/2` -/
def P6406412468444219855.Spec : Prop :=
  ∀ n, P6406412468444219855.a n = (A183572 (n + 1) : ℚ)

end A183572

/-! ## A183572.P7950091222223607116

`∑[char[A007590(n)]+1]`
-/

namespace A183572.P7950091222223607116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183572.P7950091222223607116

namespace A183572

/-- `∑[char[A007590(n)]+1]` -/
def P7950091222223607116.Spec : Prop :=
  ∀ n, (P7950091222223607116.a n : ℤ) = A183572 (n + 1)

end A183572

/-! ## A183572.P4561818491156476492

`∑[2-char[A278818(n)]]`
-/

namespace A183572.P4561818491156476492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183572.P4561818491156476492

namespace A183572

/-- `∑[2-char[A278818(n)]]` -/
def P4561818491156476492.Spec : Prop :=
  ∀ n, P4561818491156476492.a n = A183572 (n + 1)

end A183572

/-! ## A183572.P15194745063273253793

`(A113909(n+1)-1)/2`
-/

namespace A183572.P15194745063273253793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113909 (n + 1) - 1 : ℚ) / 2

end

end A183572.P15194745063273253793

namespace A183572

/-- `(A113909(n+1)-1)/2` -/
def P15194745063273253793.Spec : Prop :=
  ∀ n, P15194745063273253793.a n = (A183572 (n + 1) : ℚ)

end A183572

/-! ## A183572.P170781841822742063

`floor(sqrt(A079896(n+1))+n)`
-/

namespace A183572.P170781841822742063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A079896 (n + 1) : ℝ) + (n : ℝ)⌋

end

end A183572.P170781841822742063

namespace A183572

/-- `floor(sqrt(A079896(n+1))+n)` -/
def P170781841822742063.Spec : Prop :=
  ∀ n, P170781841822742063.a n = A183572 (n + 1)

end A183572

/-! ## A183572.P6382142517765669313

`ceil(sqrt(A005843(n+1))+n)`
-/

namespace A183572.P6382142517765669313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A005843 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A183572.P6382142517765669313

namespace A183572

/-- `ceil(sqrt(A005843(n+1))+n)` -/
def P6382142517765669313.Spec : Prop :=
  ∀ n, P6382142517765669313.a n = A183572 (n + 1)

end A183572

/-! ## A183572.P11981454519430633574

`∑[char[A008818(2*n+1)]+1]`
-/

namespace A183572.P11981454519430633574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183572.P11981454519430633574

namespace A183572

/-- `∑[char[A008818(2*n+1)]+1]` -/
def P11981454519430633574.Spec : Prop :=
  ∀ n, (P11981454519430633574.a n : ℤ) = A183572 (n + 1)

end A183572

/-!
# A183573: a(n) = n + floor(sqrt(2n+1)).

The programs for A183573, the canonical program `A183573.P10860664594631500250` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183573 has offset 1).

The definition of A183573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(2*(n+1)+1))` (program `A183573.P10860664594631500250`, by `A183573.P10860664594631500250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183573.P10860664594631500250

`n+1+floor(sqrt(2*(n+1)+1))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183573

/-- `n+1+floor(sqrt(2*(n+1)+1))` -/
def P10860664594631500250.Spec : Prop :=
  ∀ n, (P10860664594631500250.a n : ℤ) = A183573 (n + 1)

theorem P10860664594631500250.correct : P10860664594631500250.Spec := by
  intro n
  simp only [A183573, Nat.add_sub_cancel]

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

/-! ## A183573.P8293027403262310409

`(comp[A000982(n)+A004277(n)-1]+1)%A016969(n)`
-/

namespace A183573.P8293027403262310409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + (A004277 n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (A016969 n)

end

end A183573.P8293027403262310409

namespace A183573

/-- `(comp[A000982(n)+A004277(n)-1]+1)%A016969(n)` -/
def P8293027403262310409.Spec : Prop :=
  ∀ n, P8293027403262310409.a n = A183573 (n + 1)

end A183573

/-!
# A183574: n+Floor[sqrt(2n+2)].

The programs for A183574, the canonical program `A183574.P17412151522508656496` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183574 has offset 1).

The definition of A183574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(2*(n+1)+2))` (program `A183574.P17412151522508656496`, by `A183574.P17412151522508656496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183574.P17412151522508656496

`n+1+floor(sqrt(2*(n+1)+2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183574

/-- `n+1+floor(sqrt(2*(n+1)+2))` -/
def P17412151522508656496.Spec : Prop :=
  ∀ n, (P17412151522508656496.a n : ℤ) = A183574 (n + 1)

theorem P17412151522508656496.correct : P17412151522508656496.Spec := by
  intro n
  simp only [A183574, Nat.add_sub_cancel]

end A183574

/-!
# A183575: a(n) = n - 1 + ceiling((n^2-2)/2); complement of A183574.

The programs for A183575, the canonical program `A183575.P17712216755179849238` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183575 has offset 1).

The definition of A183575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183575.P17712216755179849238

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183575

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P17712216755179849238.Spec : Prop :=
  ∀ n, P17712216755179849238.a n = A183575 (n + 1)

theorem P17712216755179849238.correct : P17712216755179849238.Spec := by
  intro n
  simp only [A183575, Nat.add_sub_cancel]

end A183575

/-! ## A183575.P1983445340434041369

`∑[or(1, n)+1]-2`
-/

namespace A183575.P1983445340434041369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A183575.P1983445340434041369

namespace A183575

/-- `∑[or(1, n)+1]-2` -/
def P1983445340434041369.Spec : Prop :=
  ∀ n, P1983445340434041369.a n = A183575 (n + 1)

end A183575

/-! ## A183575.P9195247118310711825

`floor(n*(n/2+2))`
-/

namespace A183575.P9195247118310711825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((n : ℚ) / 2 + 2)⌋

end

end A183575.P9195247118310711825

namespace A183575

/-- `floor(n*(n/2+2))` -/
def P9195247118310711825.Spec : Prop :=
  ∀ n, P9195247118310711825.a n = A183575 (n + 1)

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

/-! ## A183575.P9975294340306830285

`or(1, a(n-1)+n)+1` with `a(0)=0`
-/

namespace A183575.P9975294340306830285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (a (n - 1) + n) + 1

end

end A183575.P9975294340306830285

namespace A183575

/-- `or(1, a(n-1)+n)+1` -/
def P9975294340306830285.Spec : Prop :=
  ∀ n, (P9975294340306830285.a n : ℤ) = A183575 (n + 1)

end A183575

/-! ## A183575.P16220048794028356317

`lcm(2, 2-floor((n+2)²/2))`
-/

namespace A183575.P16220048794028356317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 - ⌊((n + 2) ^ 2 : ℚ) / 2⌋)

end

end A183575.P16220048794028356317

namespace A183575

/-- `lcm(2, 2-floor((n+2)²/2))` -/
def P16220048794028356317.Spec : Prop :=
  ∀ n, (P16220048794028356317.a n : ℤ) = A183575 (n + 1)

end A183575

/-! ## A183575.P2344790594106732691

`∑[and(n+2, -2%(n+2))]`
-/

namespace A183575.P2344790594106732691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-((2 % (n + 2) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183575.P2344790594106732691

namespace A183575

/-- `∑[and(n+2, -2%(n+2))]` -/
def P2344790594106732691.Spec : Prop :=
  ∀ n, P2344790594106732691.a n = A183575 (n + 1)

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

/-! ## A183578.P8575655599146133142

`A183584(A167614(n+1))+A025442(n)`
-/

namespace A183578.P8575655599146133142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A167614 (n + 1)).toNat + A025442 n

end

end A183578.P8575655599146133142

/-! ## A183578.P7226870395827610580

`A185284(n)+A183584(A167614(n+1))`
-/

namespace A183578.P7226870395827610580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A183584 (A167614 (n + 1)).toNat

end

end A183578.P7226870395827610580

/-! ## A183578.P18278576146931406098

`lcm(A033999(n), A183584(A167614(n+1)))`
-/

namespace A183578.P18278576146931406098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183584 (A167614 (n + 1)).toNat)

end

end A183578.P18278576146931406098

/-! ## A183578.P4179954036918943325

`A183584(A167614(n+1))+A089455(n+1)`
-/

namespace A183578.P4179954036918943325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A167614 (n + 1)).toNat + A089455 (n + 1)

end

end A183578.P4179954036918943325

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

/-! ## A183579.P8421011355282932050

`A183584(A141214(n)+7)`
-/

namespace A183579.P8421011355282932050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A141214 n + 7).toNat

end

end A183579.P8421011355282932050

/-! ## A183579.P1732321886788062437

`A183584(A052905(n)+9)`
-/

namespace A183579.P1732321886788062437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A052905 n + 9).toNat

end

end A183579.P1732321886788062437

/-! ## A183579.P6987854513560991405

`A183584(A055999(n)+10)`
-/

namespace A183579.P6987854513560991405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A055999 n + 10).toNat

end

end A183579.P6987854513560991405

/-! ## A183579.P4208357274133287852

`A183584(A167614(n+2)+1)`
-/

namespace A183579.P4208357274133287852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A167614 (n + 2) + 1).toNat

end

end A183579.P4208357274133287852

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

/-! ## A183580.P16329415138583187642

`A183584(eq[6, A131818(n+1)])`
-/

namespace A183580.P16329415138583187642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183580.P16329415138583187642

/-! ## A183580.P10483863555208967152

`A183584(A046691(n+3))`
-/

namespace A183580.P10483863555208967152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (A046691 (n + 3)).toNat

end

end A183580.P10483863555208967152

/-! ## A183580.P13482166537494611995

`A183584(eq[4, A193592(n)])`
-/

namespace A183580.P13482166537494611995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183580.P13482166537494611995

/-! ## A183580.P1892970632039858421

`A183584(Δ[A023545(n+1)])`
-/

namespace A183580.P1892970632039858421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (f1 (n + 1) - f1 n).toNat

end

end A183580.P1892970632039858421

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

/-! ## A183581.P48225796236376147

`A183584(eq[7, A131818(n+1)])`
-/

namespace A183581.P48225796236376147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183581.P48225796236376147

/-! ## A183581.P1505915147726218259

`A183584(Δ[A023545(n+1)]+10)`
-/

namespace A183581.P1505915147726218259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (f1 (n + 1) - f1 n + 10).toNat

end

end A183581.P1505915147726218259

/-! ## A183581.P3805188200701988213

`A183584(eq[5, A193592(n)])`
-/

namespace A183581.P3805188200701988213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183581.P3805188200701988213

/-! ## A183581.P1034752021170198895

`A183584(eq[6, A200370(n+1)])`
-/

namespace A183581.P1034752021170198895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183581.P1034752021170198895

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

/-! ## A183582.P2459327461830801305

`A183584(eq[6, A193592(n)])`
-/

namespace A183582.P2459327461830801305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183582.P2459327461830801305

/-! ## A183582.P14861452175602587090

`A183584(eq[7, A200370(n+1)])`
-/

namespace A183582.P14861452175602587090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183582.P14861452175602587090

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

/-! ## A183583.P18143574436272273071

`A183584(eq[7, A193592(n)])`
-/

namespace A183583.P18143574436272273071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183583.P18143574436272273071

/-!
# A183585: 1/24 the number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock containing exactly three distinct values.

The programs for A183585, there is no canonical definition to state claims against.
-/

/-! ## A183585.P2956634966106505502

`A183594((n+1)²+n²)`
-/

namespace A183585.P2956634966106505502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 ((n + 1) ^ 2 + n ^ 2)

end

end A183585.P2956634966106505502

/-!
# A183586: 1/24 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock containing exactly three distinct values.

The programs for A183586, the canonical program `A183586.P112796413103120228` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183586 has offset 1).

The definition of A183586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183586.P112796413103120228

`8*a(n-1)+12*a(n-2)` with `a(0)=6, a(1)=56`

The canonical program, it is in `Seq.B000.C023`.
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

/-! ## A183586.P3852217394063558738

`lcm(2, A183594(A000124(n)))`
-/

namespace A183586.P3852217394063558738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183594 (A000124 n).toNat)

end

end A183586.P3852217394063558738

namespace A183586

/-- `lcm(2, A183594(A000124(n)))` -/
def P3852217394063558738.Spec : Prop :=
  ∀ n, (P3852217394063558738.a n : ℤ) = A183586 (n + 1)

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

/-! ## A183587.P4526003689276788230

`record[gcd(A002262(n), A183594(n+2))]`
-/

namespace A183587.P4526003689276788230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183594 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183587.P4526003689276788230

/-!
# A183588: 1/24 the number of (n+1)X4 0..3 arrays with every 2X2 subblock containing exactly three distinct values.

The programs for A183588, there is no canonical definition to state claims against.
-/

/-! ## A183588.P6613754560618665844

`A210262(n+1)+A183597(n+1)`
-/

namespace A183588.P6613754560618665844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210262 (n + 1) + A183597 (n + 1)

end

end A183588.P6613754560618665844

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

/-! ## A183589.P1119971238778532760

`A183594(A167614(n+2)+1)`
-/

namespace A183589.P1119971238778532760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (A167614 (n + 2) + 1).toNat

end

end A183589.P1119971238778532760

/-! ## A183589.P2089976847827363952

`A183594(eq[3, A193592(n)])`
-/

namespace A183589.P2089976847827363952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183589.P2089976847827363952

/-! ## A183589.P18184071699006162485

`A183594(A055999(n+2)-(n+2))`
-/

namespace A183589.P18184071699006162485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (A055999 (n + 2) - (n + 2 : ℤ)).toNat

end

end A183589.P18184071699006162485

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

/-! ## A183590.P8951256191779262828

`A183594(A167499(n+3))`
-/

namespace A183590.P8951256191779262828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (A167499 (n + 3)).toNat

end

end A183590.P8951256191779262828

/-! ## A183590.P18197789665166342175

`A183594(A167614(n+3)+2)`
-/

namespace A183590.P18197789665166342175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (A167614 (n + 3) + 2).toNat

end

end A183590.P18197789665166342175

/-! ## A183590.P2142490211389194437

`A183594(A055999(n+2)+2)`
-/

namespace A183590.P2142490211389194437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (A055999 (n + 2) + 2).toNat

end

end A183590.P2142490211389194437

/-!
# A183591: 

The programs for A183591, there is no canonical definition to state claims against.
-/

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
# A183592: 

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
# A183593: 

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

The programs for A183596, there is no canonical definition to state claims against.
-/

/-! ## A183596.P11633006782472528908

`A183587(n+1)-A210261(n+1)`
-/

namespace A183596.P11633006782472528908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183587 (n + 1) - A210261 (n + 1)

end

end A183596.P11633006782472528908

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

/-! ## A183596.P3471340651684796503

`lcm(3, A183603(A000096(n)+3))`
-/

namespace A183596.P3471340651684796503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A183603 (A000096 n + 3).toNat)

end

end A183596.P3471340651684796503

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

/-! ## A183596.P305702508955875738

`record[A183603(A000096(A143182(n)))]`
-/

namespace A183596.P305702508955875738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A000096 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183596.P305702508955875738

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

/-! ## A183597.P13317750591021702243

`A183603(A167614(n+1))+A025444(n)`
-/

namespace A183597.P13317750591021702243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A167614 (n + 1)).toNat + A025444 n

end

end A183597.P13317750591021702243

/-! ## A183597.P7743103683630542814

`A015342(n)*A183603(A167614(n+1))`
-/

namespace A183597.P7743103683630542814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015342 n * A183603 (A167614 (n + 1)).toNat

end

end A183597.P7743103683630542814

/-! ## A183597.P1173928480977238524

`A183603(A167614(n+1))%A289024(n+1)`
-/

namespace A183597.P1173928480977238524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183603 (A167614 (n + 1)).toNat) (A289024 (n + 1))

end

end A183597.P1173928480977238524

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

/-! ## A183598.P10155174280331252478

`A183603(A141214(n)+7)`
-/

namespace A183598.P10155174280331252478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A141214 n + 7).toNat

end

end A183598.P10155174280331252478

/-! ## A183598.P2248649610306874888

`A183603(A052905(n)+9)`
-/

namespace A183598.P2248649610306874888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A052905 n + 9).toNat

end

end A183598.P2248649610306874888

/-! ## A183598.P7303631847586322717

`A183603(A055999(n)+10)`
-/

namespace A183598.P7303631847586322717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A055999 n + 10).toNat

end

end A183598.P7303631847586322717

/-! ## A183598.P15043852789735543514

`A183603(A167614(n+2)+1)`
-/

namespace A183598.P15043852789735543514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A167614 (n + 2) + 1).toNat

end

end A183598.P15043852789735543514

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

/-! ## A183599.P14259804844640364467

`A183603(A167499(n+3))`
-/

namespace A183599.P14259804844640364467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A167499 (n + 3)).toNat

end

end A183599.P14259804844640364467

/-! ## A183599.P12772337827255089856

`A183603(A056000(n)+15)`
-/

namespace A183599.P12772337827255089856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A056000 n + 15).toNat

end

end A183599.P12772337827255089856

/-! ## A183599.P1017134513847868824

`A183603(A167614(n+3)+2)`
-/

namespace A183599.P1017134513847868824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A167614 (n + 3) + 2).toNat

end

end A183599.P1017134513847868824

/-! ## A183599.P16771081223327433883

`A183603(A046691(n+3))`
-/

namespace A183599.P16771081223327433883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A046691 (n + 3)).toNat

end

end A183599.P16771081223327433883

