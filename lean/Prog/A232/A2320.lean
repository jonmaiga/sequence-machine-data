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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

/-!
# A232000: Number of (3+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A232000, there is no canonical definition to state claims against.
-/

/-! ## A232000.P10669858231943739142

`A231997(∑[n+2]+4)`
-/

namespace A232000.P10669858231943739142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232000.P10669858231943739142

/-! ## A232000.P17890991555223611134

`lcm(A057077(n), A231997(A167614(n+1)))`
-/

namespace A232000.P17890991555223611134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A231997 (A167614 (n + 1)).toNat)

end

end A232000.P17890991555223611134

/-! ## A232000.P8365447852197144134

`or(A000007(n), A231997(A167614(n+1)))`
-/

namespace A232000.P8365447852197144134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A231997 (A167614 (n + 1)).toNat)

end

end A232000.P8365447852197144134

/-! ## A232000.P316910742146648796

`A231997(A167614(n+1))+A034562(n+1)`
-/

namespace A232000.P316910742146648796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A167614 (n + 1)).toNat + A034562 (n + 1)

end

end A232000.P316910742146648796

/-! ## A232000.P7420608265977757730

`A231997(A167614(n+1))%A232001(n+1)`
-/

namespace A232000.P7420608265977757730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231997 (A167614 (n + 1)).toNat) (A232001 (n + 1))

end

end A232000.P7420608265977757730

/-!
# A232001: Number of (4+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A232001, there is no canonical definition to state claims against.
-/

/-! ## A232001.P12510935696716301244

`A231997(A141214(n)+7)`
-/

namespace A232001.P12510935696716301244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A141214 n + 7).toNat

end

end A232001.P12510935696716301244

/-! ## A232001.P13639083918116488429

`A231997(A052905(n)+9)`
-/

namespace A232001.P13639083918116488429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A052905 n + 9).toNat

end

end A232001.P13639083918116488429

/-! ## A232001.P8607351395888646400

`A231997(A055999(n)+10)`
-/

namespace A232001.P8607351395888646400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A055999 n + 10).toNat

end

end A232001.P8607351395888646400

/-! ## A232001.P14651553589739744461

`A231997(A167614(n+2)+1)`
-/

namespace A232001.P14651553589739744461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A167614 (n + 2) + 1).toNat

end

end A232001.P14651553589739744461

/-! ## A232001.P7542910740388893506

`A231997(A034856(n+2)+6)`
-/

namespace A232001.P7542910740388893506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A034856 (n + 2) + 6).toNat

end

end A232001.P7542910740388893506

/-!
# A232002: Number of (5+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A232002, there is no canonical definition to state claims against.
-/

/-! ## A232002.P14265054007678274573

`A231997(A167499(n+3))`
-/

namespace A232002.P14265054007678274573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A167499 (n + 3)).toNat

end

end A232002.P14265054007678274573

/-! ## A232002.P9712508102756810697

`A231997(eq[7, A066657(n)])`
-/

namespace A232002.P9712508102756810697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232002.P9712508102756810697

/-! ## A232002.P14911608431356489911

`A231997(eq[6, A131818(n+1)])`
-/

namespace A232002.P14911608431356489911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232002.P14911608431356489911

/-! ## A232002.P8468661383927558501

`A231997(A020744(n+2)+A000217(n+2))`
-/

namespace A232002.P8468661383927558501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A020744 (n + 2) + A000217 (n + 2)).toNat

end

end A232002.P8468661383927558501

/-! ## A232002.P7603538889939628725

`A231997(A316782(n²+1)+A133263(n+4)+2)`
-/

namespace A232002.P7603538889939628725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A316782 (n ^ 2 + 1) + (A133263 (n + 4) + 2)).toNat

end

end A232002.P7603538889939628725

/-!
# A232003: Number of (6+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A232003, there is no canonical definition to state claims against.
-/

/-! ## A232003.P12461237829898240903

`A231997(A167499(n+4)+1)`
-/

namespace A232003.P12461237829898240903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A167499 (n + 4) + 1).toNat

end

end A232003.P12461237829898240903

/-! ## A232003.P18047185071424331345

`A231997(A167487(n+4)-1)`
-/

namespace A232003.P18047185071424331345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A167487 (n + 4) - 1).toNat

end

end A232003.P18047185071424331345

/-! ## A232003.P16456263284023880004

`A231997(eq[7, A131818(n+1)])`
-/

namespace A232003.P16456263284023880004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232003.P16456263284023880004

/-! ## A232003.P16269771047496535101

`A231997(A000217(n+7)-7-2*n)`
-/

namespace A232003.P16269771047496535101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A000217 (n + 7) - 7 - (2 * n : ℤ)).toNat

end

end A232003.P16269771047496535101

/-! ## A232003.P12570986852384685025

`A231997(A034111(n+1)-A055999(n))`
-/

namespace A232003.P12570986852384685025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A034111 (n + 1) - A055999 n).toNat

end

end A232003.P12570986852384685025

/-!
# A232004: Number of (7+1) X (n+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A232004, there is no canonical definition to state claims against.
-/

/-! ## A232004.P1109585261914007322

`A231997(A167487(n+5))`
-/

namespace A232004.P1109585261914007322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A167487 (n + 5)).toNat

end

end A232004.P1109585261914007322

/-! ## A232004.P16937314561736350638

`A231997(A056119(n)+28)`
-/

namespace A232004.P16937314561736350638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A056119 n + 28).toNat

end

end A232004.P16937314561736350638

/-! ## A232004.P8425721809486612758

`A231997(eq[11, A066657(n)])`
-/

namespace A232004.P8425721809486612758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232004.P8425721809486612758

/-! ## A232004.P8411525254175405735

`A231997(A167499(n+5)+2)`
-/

namespace A232004.P8411525254175405735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A167499 (n + 5) + 2).toNat

end

end A232004.P8411525254175405735

/-! ## A232004.P11123547018708589376

`A231997(eq[8, A131818(n+1)])`
-/

namespace A232004.P11123547018708589376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232004.P11123547018708589376

/-!
# A232005: Number of distinct resistances that can be produced from a circuit of resistors with resistances 1, 2, ..., n using only series and parallel combinations.

The programs for A232005, there is no canonical definition to state claims against.
-/

/-! ## A232005.P13841642734660207248

`A200750(∑[2*n]^∑{p}[n+1, gcd(n, #)])`
-/

namespace A232005.P13841642734660207248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200750 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p))

end

end A232005.P13841642734660207248

/-!
# A232006: Triangular array read by rows: T(n, k) is the number of simple labeled graphs on vertex set {1,2,...,n} with exactly k components (all of which are trees) such that the labels {1,2,...,k} are all in distinct components (trees), n >= 0, 0 <= k <= n.

The programs for A232006, the canonical program `A232006.P18262333690393174813` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232006 has offset 0).

The definition of A232006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232006.P18262333690393174813

`A243203(n)/A008279(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232006

/-- `A243203(n)/A008279(n)` -/
def P18262333690393174813.Spec : Prop :=
  ∀ n, P18262333690393174813.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P9148501530406599635

`A137452(n)/A130595(n)`
-/

namespace A232006.P9148501530406599635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137452 n : ℚ) / (A130595 n : ℚ)

end

end A232006.P9148501530406599635

namespace A232006

/-- `A137452(n)/A130595(n)` -/
def P9148501530406599635.Spec : Prop :=
  ∀ n, P9148501530406599635.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P4275447577645574316

`A398913(n)/A135278(n)`
-/

namespace A232006.P4275447577645574316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398913 n : ℚ) / (A135278 n : ℚ)

end

end A232006.P4275447577645574316

namespace A232006

/-- `A398913(n)/A135278(n)` -/
def P4275447577645574316.Spec : Prop :=
  ∀ n, P4275447577645574316.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P3524671644265565015

`A398913(n)/A153861(n)`
-/

namespace A232006.P3524671644265565015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398913 n : ℚ) / (A153861 n : ℚ)

end

end A232006.P3524671644265565015

namespace A232006

/-- `A398913(n)/A153861(n)` -/
def P3524671644265565015.Spec : Prop :=
  ∀ n, P3524671644265565015.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P18055792413257956274

`A398913(n)/A184049(n)`
-/

namespace A232006.P18055792413257956274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398913 n : ℚ) / (A184049 n : ℚ)

end

end A232006.P18055792413257956274

namespace A232006

/-- `A398913(n)/A184049(n)` -/
def P18055792413257956274.Spec : Prop :=
  ∀ n, P18055792413257956274.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P14783958093390126299

`abs(A137452(n)/A007318(n))`
-/

namespace A232006.P14783958093390126299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A137452 n : ℚ) / (A007318 n : ℚ)|

end

end A232006.P14783958093390126299

namespace A232006

/-- `abs(A137452(n)/A007318(n))` -/
def P14783958093390126299.Spec : Prop :=
  ∀ n, P14783958093390126299.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P330731044380271789

`abs(A137452(n)/A117440(n))`
-/

namespace A232006.P330731044380271789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A137452 n : ℚ) / (A117440 n : ℚ)|

end

end A232006.P330731044380271789

namespace A232006

/-- `abs(A137452(n)/A117440(n))` -/
def P330731044380271789.Spec : Prop :=
  ∀ n, P330731044380271789.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P15998621234135480050

`abs(A137452(n)/A132749(n))`
-/

namespace A232006.P15998621234135480050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A137452 n : ℚ) / (A132749 n : ℚ)|

end

end A232006.P15998621234135480050

namespace A232006

/-- `abs(A137452(n)/A132749(n))` -/
def P15998621234135480050.Spec : Prop :=
  ∀ n, P15998621234135480050.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P6038917368990704368

`abs(A137452(n)/A135227(n))`
-/

namespace A232006.P6038917368990704368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A137452 n : ℚ) / (A135227 n : ℚ)|

end

end A232006.P6038917368990704368

namespace A232006

/-- `abs(A137452(n)/A135227(n))` -/
def P6038917368990704368.Spec : Prop :=
  ∀ n, P6038917368990704368.a n = (A232006 n : ℚ)

end A232006

/-! ## A232006.P15135415385255975527

`A398913(n)/A130301(n+1)`
-/

namespace A232006.P15135415385255975527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398913 n : ℚ) / (A130301 (n + 1) : ℚ)

end

end A232006.P15135415385255975527

namespace A232006

/-- `A398913(n)/A130301(n+1)` -/
def P15135415385255975527.Spec : Prop :=
  ∀ n, P15135415385255975527.a n = (A232006 n : ℚ)

end A232006

/-!
# A232007: Maximal number of moves needed by a knight to reach every square from a fixed position on an n X n chessboard, or -1 if it is not possible to reach every square.

The programs for A232007, the canonical program `A232007.P7270781104360858736` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232007 has offset 1).

The definition of A232007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232007.P5958029374034912197

`ogf((-x+6x^3-5x^6+2x^7)/(1-x-x^3+x^4))`
-/

namespace A232007.P5958029374034912197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 0, 6, 0, 0, -5, 2] [1, -1, 0, -1, 1] n

end

end A232007.P5958029374034912197

namespace A232007

/-- `ogf((-x+6x^3-5x^6+2x^7)/(1-x-x^3+x^4))` -/
def P5958029374034912197.Spec : Prop :=
  ∀ n, P5958029374034912197.a n = A232007 (n + 1)

end A232007

/-! ## A232007.P7270781104360858736

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=-1, a(3)=5, a(4)=4, a(5)=4, a(6)=5, a(7)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232007

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P7270781104360858736.Spec : Prop :=
  ∀ n, P7270781104360858736.a n = A232007 (n + 1)

theorem P7270781104360858736.correct : P7270781104360858736.Spec := by
  intro n
  simp only [A232007, Nat.add_sub_cancel]

end A232007

/-!
# A232008: Values x of successive minima records of k = log(x)/log(-d) where d runs through the negative values of x^3-round(sqrt(x^3))^2.

The programs for A232008, there is no canonical definition to state claims against.
-/

/-! ## A232008.P4558554590374411827

`A141494(A039650(2*(n+2)))+A141494(n+1)`
-/

namespace A232008.P4558554590374411827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141494 (A039650 (2 * (n + 2))).toNat + A141494 (n + 1)

end

end A232008.P4558554590374411827

/-!
# A232009: a(n) = the smallest squarefree number (from A005117) of the form p*q with prime factors in a p^2 + n progression, or 0 if no such number exists.

The programs for A232009, there is no canonical definition to state claims against.
-/

/-! ## A232009.P11433617889170564618

`A061397(A088212(n+1))*A088213(n+1)`
-/

namespace A232009.P11433617889170564618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A088212 (n + 1)).toNat * A088213 (n + 1)

end

end A232009.P11433617889170564618

/-!
# A232010: Numbers k such that p^2 + k is composite for all prime p.

The programs for A232010, there is no canonical definition to state claims against.
-/

/-! ## A232010.P16852459850661947001

`lt[2*floor((A000010(A020639(n+1)²+n)+n-1)/4), n]`
-/

namespace A232010.P16852459850661947001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A000010 (A020639 (n + 1) ^ 2 + (n : ℤ)).toNat + ((n : ℤ) - 1) : ℚ) / 4⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A232010.P16852459850661947001

/-! ## A232010.P14669269299845048708

`eq[A155875(n)-(n+4), A291701(A264940(n+1))]`
-/

namespace A232010.P14669269299845048708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155875 n - (n + 4 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291701 (A264940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232010.P14669269299845048708

/-! ## A232010.P15131106359931356018

`lt[2, A000005(A085099(n+1)%A046048(n+1))]+1`
-/

namespace A232010.P15131106359931356018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A085099 (n + 1)) (A046048 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A232010.P15131106359931356018

/-! ## A232010.P14167099916683799295

`eq[0, A232009(n+1)]+1`
-/

namespace A232010.P14167099916683799295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232010.P14167099916683799295

/-! ## A232010.P13906381880078610670

`lt[A232009(n+2), 1]+2`
-/

namespace A232010.P13906381880078610670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232009 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A232010.P13906381880078610670

/-!
# A232011: Numbers n such that (3n)^2 + 2 is prime.

The programs for A232011, there is no canonical definition to state claims against.
-/

/-! ## A232011.P9715361032256101550

`A067201(n+3)/3`
-/

namespace A232011.P9715361032256101550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067201 (n + 3) : ℚ) / 3

end

end A232011.P9715361032256101550

/-! ## A232011.P13975126423821375568

`sqrt(A056899(n+3)-2)/3`
-/

namespace A232011.P13975126423821375568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056899 (n + 3) - 2 : ℝ) / 3

end

end A232011.P13975126423821375568

/-! ## A232011.P7705150457775557860

`2*A056900(n)+1`
-/

namespace A232011.P7705150457775557860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056900 n + 1

end

end A232011.P7705150457775557860

/-! ## A232011.P16867430091633309122

`2*A091199(n+1)-1`
-/

namespace A232011.P16867430091633309122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091199 (n + 1) - 1

end

end A232011.P16867430091633309122

/-! ## A232011.P5180285569774581607

`A091199(n+1)+A056900(n)`
-/

namespace A232011.P5180285569774581607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091199 (n + 1) + A056900 n

end

end A232011.P5180285569774581607

/-! ## A232011.P9144542025730258217

`A005408(A056900(n))`
-/

namespace A232011.P9144542025730258217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A056900 n).toNat

end

end A232011.P9144542025730258217

/-! ## A232011.P10100448932426274707

`A004273(A091199(n+1))`
-/

namespace A232011.P10100448932426274707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A091199 (n + 1)).toNat

end

end A232011.P10100448932426274707

/-! ## A232011.P11540879424505060717

`A161680(2*A091199(n+1))/A091199(n+1)`
-/

namespace A232011.P11540879424505060717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 (2 * A091199 (n + 1)).toNat : ℚ) / (A091199 (n + 1) : ℚ)

end

end A232011.P11540879424505060717

/-! ## A232011.P16716510837207230787

`A023443(2*A091199(n+1))`
-/

namespace A232011.P16716510837207230787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A091199 (n + 1)).toNat

end

end A232011.P16716510837207230787

/-! ## A232011.P5628770581001744322

`ceil(A129389(n+1)/3)`
-/

namespace A232011.P5628770581001744322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129389 (n + 1) : ℚ) / 3⌉

end

end A232011.P5628770581001744322

/-! ## A232011.P499647972499747294

`A008619(4*A056900(n))`
-/

namespace A232011.P499647972499747294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A056900 n).toNat

end

end A232011.P499647972499747294

/-! ## A232011.P11735001602405210520

`A008620(A129389(n+1))`
-/

namespace A232011.P11735001602405210520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A129389 (n + 1)).toNat

end

end A232011.P11735001602405210520

/-! ## A232011.P9362128144349168737

`eq[2, A053000(3*n)+A010051(2*(n+1))]`
-/

namespace A232011.P9362128144349168737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (3 * n) + A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232011.P9362128144349168737

/-! ## A232011.P10188887879947826669

`A008615(2*A129389(n+1))`
-/

namespace A232011.P10188887879947826669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A129389 (n + 1)).toNat

end

end A232011.P10188887879947826669

/-! ## A232011.P9965675299668753648

`A130747(2*A129389(n+1))`
-/

namespace A232011.P9965675299668753648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (2 * A129389 (n + 1)).toNat

end

end A232011.P9965675299668753648

/-! ## A232011.P6384578792807235468

`A008612(2*A129389(n+1)+1)`
-/

namespace A232011.P6384578792807235468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (2 * A129389 (n + 1) + 1).toNat

end

end A232011.P6384578792807235468

/-! ## A232011.P17753885796828213495

`A026806(2*A129389(n+1)+1)`
-/

namespace A232011.P17753885796828213495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (2 * A129389 (n + 1) + 1).toNat

end

end A232011.P17753885796828213495

/-! ## A232011.P3608354901156343870

`A008612(A129389(n+1)+A129389(n+1)+1)`
-/

namespace A232011.P3608354901156343870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A129389 (n + 1) + (A129389 (n + 1) + 1)).toNat

end

end A232011.P3608354901156343870

/-! ## A232011.P3494272140640276294

`A026806(A129389(n+1)+A129389(n+1)+1)`
-/

namespace A232011.P3494272140640276294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A129389 (n + 1) + (A129389 (n + 1) + 1)).toNat

end

end A232011.P3494272140640276294

/-! ## A232011.P1861604060205184676

`A008615(A129389(n+1)+A129389(n+1)+2)`
-/

namespace A232011.P1861604060205184676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A129389 (n + 1) + (A129389 (n + 1) + 2)).toNat

end

end A232011.P1861604060205184676

/-!
# A232012: Numbers n such that p^2 + n is prime for some prime p.

The programs for A232012, there is no canonical definition to state claims against.
-/

/-! ## A232012.P14088465484621754486

`comp[A232010(n+1)-1]+1`
-/

namespace A232012.P14088465484621754486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232010 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A232012.P14088465484621754486

/-! ## A232012.P8186330919316482758

`eq[1, A128751(A316568(n+1))]+1`
-/

namespace A232012.P8186330919316482758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128751 (A316568 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232012.P8186330919316482758

/-! ## A232012.P10649931554955643457

`lt[A001222(A085099(n+1)), 2]+1`
-/

namespace A232012.P10649931554955643457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A085099 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A232012.P10649931554955643457

/-! ## A232012.P2493238168542673359

`lt[A000005(A316568(n+1)+1), 3]+1`
-/

namespace A232012.P2493238168542673359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A316568 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A232012.P2493238168542673359

/-! ## A232012.P3377060039234761750

`lt[A347231(sqrt(A059844(n+1)))², 2]+1`
-/

namespace A232012.P3377060039234761750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347231 (SequenceMachineLib.roundAway (Real.sqrt (A059844 (n + 1) : ℝ))).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A232012.P3377060039234761750

/-! ## A232012.P10443853104660597685

`lt[n+1, A000010(A020639(n+1)²+n)]`
-/

namespace A232012.P10443853104660597685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020639 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A232012.P10443853104660597685

/-!
# A232015: Expansion of (1-2*x)/((1+2*x)*(1-3*x)).

The programs for A232015, the canonical program `A232015.P12034488493438073734` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232015 has offset 0).

The definition of A232015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-x-6x^2))` (program `A232015.P12034488493438073734`, by `A232015.P12034488493438073734.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232015.P12034488493438073734

`ogf((1-2x)/(1-x-6x^2))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232015

/-- `ogf((1-2x)/(1-x-6x^2))` -/
def P12034488493438073734.Spec : Prop :=
  ∀ n, P12034488493438073734.a n = A232015 n

theorem P12034488493438073734.correct : P12034488493438073734.Spec := by
  intro n
  simp only [A232015]

end A232015

/-! ## A232015.P13158601876453783377

`a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A232015.P13158601876453783377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 1) + 6 * a (n - 2)

end

end A232015.P13158601876453783377

namespace A232015

/-- `a(n-1)+6*a(n-2)` -/
def P13158601876453783377.Spec : Prop :=
  ∀ n, P13158601876453783377.a n = A232015 n

end A232015

/-! ## A232015.P2457084284206754937

`A102901(n)-A015441(n)`
-/

namespace A232015.P2457084284206754937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n - A015441 n

end

end A232015.P2457084284206754937

namespace A232015

/-- `A102901(n)-A015441(n)` -/
def P2457084284206754937.Spec : Prop :=
  ∀ n, P2457084284206754937.a n = A232015 n

end A232015

/-! ## A232015.P1938768533771350011

`(3^n+4*(-2)^n)/5`
-/

namespace A232015.P1938768533771350011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + 4 * (-2) ^ n : ℚ) / 5

end

end A232015.P1938768533771350011

namespace A232015

/-- `(3^n+4*(-2)^n)/5` -/
def P1938768533771350011.Spec : Prop :=
  ∀ n, P1938768533771350011.a n = (A232015 n : ℚ)

end A232015

/-! ## A232015.P9797933346748206616

`∑[2*(floor(3^(n-2))-a(n-1))]` with `a(0)=1`
-/

namespace A232015.P9797933346748206616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (⌊(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232015.P9797933346748206616

namespace A232015

/-- `∑[2*(floor(3^(n-2))-a(n-1))]` -/
def P9797933346748206616.Spec : Prop :=
  ∀ n, P9797933346748206616.a n = A232015 n

end A232015

/-! ## A232015.P9943873853148979688

`3*a(n-1)-Δ[1-a(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A232015.P9943873853148979688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A232015.P9943873853148979688

namespace A232015

/-- `3*a(n-1)-Δ[1-a(n-1)-a(n-1)]` -/
def P9943873853148979688.Spec : Prop :=
  ∀ n, P9943873853148979688.a n = A232015 n

end A232015

/-! ## A232015.P7160367751513972967

`2*A091000(n)-1`
-/

namespace A232015.P7160367751513972967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091000 n - 1

end

end A232015.P7160367751513972967

namespace A232015

/-- `2*A091000(n)-1` -/
def P7160367751513972967.Spec : Prop :=
  ∀ n, P7160367751513972967.a n = A232015 n

end A232015

/-! ## A232015.P7715833622452182206

`3*a(n-1)-Δ[A077925(n)]` with `a(0)=1`
-/

namespace A232015.P7715833622452182206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A232015.P7715833622452182206

namespace A232015

/-- `3*a(n-1)-Δ[A077925(n)]` -/
def P7715833622452182206.Spec : Prop :=
  ∀ n, P7715833622452182206.a n = A232015 n

end A232015

/-! ## A232015.P13276275822524406517

`3*a(n-1)-A122803(n+1)` with `a(0)=1`
-/

namespace A232015.P13276275822524406517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A122803 (n + 1)

end

end A232015.P13276275822524406517

namespace A232015

/-- `3*a(n-1)-A122803(n+1)` -/
def P13276275822524406517.Spec : Prop :=
  ∀ n, P13276275822524406517.a n = A232015 n

end A232015

/-! ## A232015.P7611685107940927006

`A122803(n)+A015441(n)`
-/

namespace A232015.P7611685107940927006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n + A015441 n

end

end A232015.P7611685107940927006

namespace A232015

/-- `A122803(n)+A015441(n)` -/
def P7611685107940927006.Spec : Prop :=
  ∀ n, P7611685107940927006.a n = A232015 n

end A232015

/-! ## A232015.P10131042531128290754

`A117575(2*n+1)+A015441(n)`
-/

namespace A232015.P10131042531128290754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n + 1) + A015441 n

end

end A232015.P10131042531128290754

namespace A232015

/-- `A117575(2*n+1)+A015441(n)` -/
def P10131042531128290754.Spec : Prop :=
  ∀ n, P10131042531128290754.a n = A232015 n

end A232015

/-! ## A232015.P8154771949831729878

`A084179(n+1)+A098703(n)-A000045(n)`
-/

namespace A232015.P8154771949831729878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (n + 1) + (A098703 n - A000045 n)

end

end A232015.P8154771949831729878

namespace A232015

/-- `A084179(n+1)+A098703(n)-A000045(n)` -/
def P8154771949831729878.Spec : Prop :=
  ∀ n, P8154771949831729878.a n = A232015 n

end A232015

/-! ## A232015.P1722409659580549601

`3^(n-1)-2*a(n-1)` with `a(0)=1`
-/

namespace A232015.P1722409659580549601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * a (n - 1)

end

end A232015.P1722409659580549601

namespace A232015

/-- `3^(n-1)-2*a(n-1)` -/
def P1722409659580549601.Spec : Prop :=
  ∀ n, P1722409659580549601.a n = (A232015 n : ℚ)

end A232015

/-! ## A232015.P2549979806688281502

`3^(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A232015.P2549979806688281502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - a (n - 1)

end

end A232015.P2549979806688281502

namespace A232015

/-- `3^(n-1)-a(n-1)-a(n-1)` -/
def P2549979806688281502.Spec : Prop :=
  ∀ n, P2549979806688281502.a n = (A232015 n : ℚ)

end A232015

/-! ## A232015.P7329509802636819041

`Δ[A091001(n)]`
-/

namespace A232015.P7329509802636819041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232015.P7329509802636819041

namespace A232015

/-- `Δ[A091001(n)]` -/
def P7329509802636819041.Spec : Prop :=
  ∀ n, P7329509802636819041.a n = A232015 n

end A232015

/-! ## A232015.P6962460101779270807

`A133494(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A232015.P6962460101779270807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133494 n - (a (n - 1) + a (n - 1))

end

end A232015.P6962460101779270807

namespace A232015

/-- `A133494(n)-(a(n-1)+a(n-1))` -/
def P6962460101779270807.Spec : Prop :=
  ∀ n, P6962460101779270807.a n = A232015 n

end A232015

/-! ## A232015.P14650515068046710093

`A140429(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A232015.P14650515068046710093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140429 n - (a (n - 1) + a (n - 1))

end

end A232015.P14650515068046710093

namespace A232015

/-- `A140429(n)-(a(n-1)+a(n-1))` -/
def P14650515068046710093.Spec : Prop :=
  ∀ n, P14650515068046710093.a n = A232015 n

end A232015

/-! ## A232015.P14641020992913422605

`A155734(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A232015.P14641020992913422605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155734 n - (a (n - 1) + a (n - 1))

end

end A232015.P14641020992913422605

namespace A232015

/-- `A155734(n)-(a(n-1)+a(n-1))` -/
def P14641020992913422605.Spec : Prop :=
  ∀ n, P14641020992913422605.a n = A232015 n

end A232015

/-! ## A232015.P14362917899063202544

`A249992(n)-A015518(n)`
-/

namespace A232015.P14362917899063202544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249992 n - A015518 n

end

end A232015.P14362917899063202544

namespace A232015

/-- `A249992(n)-A015518(n)` -/
def P14362917899063202544.Spec : Prop :=
  ∀ n, P14362917899063202544.a n = A232015 n

end A232015

/-! ## A232015.P15308488145542657687

`A091001(n+1)-A091001(n)`
-/

namespace A232015.P15308488145542657687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091001 (n + 1) - A091001 n

end

end A232015.P15308488145542657687

namespace A232015

/-- `A091001(n+1)-A091001(n)` -/
def P15308488145542657687.Spec : Prop :=
  ∀ n, P15308488145542657687.a n = A232015 n

end A232015

/-!
# A232016: Number of n X n 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232016, there is no canonical definition to state claims against.
-/

/-! ## A232016.P15922373455099006274

`A232023((n+1)²+n²)`
-/

namespace A232016.P15922373455099006274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 ((n + 1) ^ 2 + n ^ 2)

end

end A232016.P15922373455099006274

/-!
# A232017: Number of n X 2 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232017, the canonical program `A232017.P13088024248350548098` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232017 has offset 1).

The definition of A232017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232017.P4112554215008785822

`ogf((3+13x+16x^2+7x^3+x^4)/(1-3x-13x^2-16x^3-7x^4-x^5))`
-/

namespace A232017.P4112554215008785822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 13, 16, 7, 1] [1, -3, -13, -16, -7, -1] n

end

end A232017.P4112554215008785822

namespace A232017

/-- `ogf((3+13x+16x^2+7x^3+x^4)/(1-3x-13x^2-16x^3-7x^4-x^5))` -/
def P4112554215008785822.Spec : Prop :=
  ∀ n, P4112554215008785822.a n = A232017 (n + 1)

end A232017

/-! ## A232017.P13088024248350548098

`A202882(2*(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232017

/-- `A202882(2*(n+1))` -/
def P13088024248350548098.Spec : Prop :=
  ∀ n, P13088024248350548098.a n = A232017 (n + 1)

theorem P13088024248350548098.correct : P13088024248350548098.Spec := by
  intro n
  simp only [A232017, Nat.add_sub_cancel]

end A232017

/-! ## A232017.P14205271818956198033

`record[A202882(xor(1, n)+1)]`
-/

namespace A232017.P14205271818956198033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202882 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232017.P14205271818956198033

namespace A232017

/-- `record[A202882(xor(1, n)+1)]` -/
def P14205271818956198033.Spec : Prop :=
  ∀ n, P14205271818956198033.a n = A232017 (n + 1)

end A232017

/-! ## A232017.P1962479432605819764

`record[A202882((-1)^n+n+1)]`
-/

namespace A232017.P1962479432605819764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202882 ((-1) ^ n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232017.P1962479432605819764

namespace A232017

/-- `record[A202882((-1)^n+n+1)]` -/
def P1962479432605819764.Spec : Prop :=
  ∀ n, P1962479432605819764.a n = A232017 (n + 1)

end A232017

/-! ## A232017.P17277018037522596889

`record[A202882(n+2)/A033999(n)]`
-/

namespace A232017.P17277018037522596889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202882 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232017.P17277018037522596889

namespace A232017

/-- `record[A202882(n+2)/A033999(n)]` -/
def P17277018037522596889.Spec : Prop :=
  ∀ n, P17277018037522596889.a n = (A232017 (n + 1) : ℚ)

end A232017

/-! ## A232017.P6878610016279898740

`A202882(A122080(n+1))%A232278(n+1)`
-/

namespace A232017.P6878610016279898740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202882 (A122080 (n + 1)).toNat) (A232278 (n + 1))

end

end A232017.P6878610016279898740

namespace A232017

/-- `A202882(A122080(n+1))%A232278(n+1)` -/
def P6878610016279898740.Spec : Prop :=
  ∀ n, P6878610016279898740.a n = A232017 (n + 1)

end A232017

/-!
# A232018: Number of n X 3 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232018, there is no canonical definition to state claims against.
-/

/-! ## A232018.P9759115298005769054

`A232023(∑[n+3]+1)`
-/

namespace A232018.P9759115298005769054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232018.P9759115298005769054

/-!
# A232019: Number of nX4 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232019, there is no canonical definition to state claims against.
-/

/-! ## A232019.P8590388486382305833

`A232023(A141214(n+1))`
-/

namespace A232019.P8590388486382305833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A141214 (n + 1)).toNat

end

end A232019.P8590388486382305833

/-! ## A232019.P1324550222335887200

`A232023(A027379(n+2))`
-/

namespace A232019.P1324550222335887200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A027379 (n + 2)).toNat

end

end A232019.P1324550222335887200

/-! ## A232019.P2715925382855766526

`A232023(A055998(n+2))`
-/

namespace A232019.P2715925382855766526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A055998 (n + 2)).toNat

end

end A232019.P2715925382855766526

/-! ## A232019.P12996285824919253821

`A232023(Δ[A034857(n+1)])`
-/

namespace A232019.P12996285824919253821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (f1 (n + 1) - f1 n).toNat

end

end A232019.P12996285824919253821

/-! ## A232019.P18022973666638208716

`A232023(A052905(n+1)+2)`
-/

namespace A232019.P18022973666638208716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A052905 (n + 1) + 2).toNat

end

end A232019.P18022973666638208716

/-!
# A232020: Number of nX5 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232020, there is no canonical definition to state claims against.
-/

/-! ## A232020.P5905503934368893392

`A232023(A056115(n)+11)`
-/

namespace A232020.P5905503934368893392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A056115 n + 11).toNat

end

end A232020.P5905503934368893392

/-! ## A232020.P7644249059786383380

`A232023(eq[4, A193592(n)])`
-/

namespace A232020.P7644249059786383380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232020.P7644249059786383380

/-! ## A232020.P96068775148464566

`A232023(Δ[A023545(n+1)])`
-/

namespace A232020.P96068775148464566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (f1 (n + 1) - f1 n).toNat

end

end A232020.P96068775148464566

/-! ## A232020.P6465136503918747310

`A232023(A052905(n+2)+1)`
-/

namespace A232020.P6465136503918747310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A052905 (n + 2) + 1).toNat

end

end A232020.P6465136503918747310

/-! ## A232020.P15427513250464201581

`A232023(eq[5, A200370(n+1)])`
-/

namespace A232020.P15427513250464201581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232020.P15427513250464201581

/-!
# A232021: Number of nX6 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232021, there is no canonical definition to state claims against.
-/

/-! ## A232021.P12060315326787732468

`A232023(A052905(n+3))`
-/

namespace A232021.P12060315326787732468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A052905 (n + 3)).toNat

end

end A232021.P12060315326787732468

/-! ## A232021.P3871043584859975084

`A232023(eq[3, A219347(n)])`
-/

namespace A232021.P3871043584859975084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232021.P3871043584859975084

/-! ## A232021.P3303918337291557079

`A232023(eq[5, A193592(n)])`
-/

namespace A232021.P3303918337291557079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232021.P3303918337291557079

/-! ## A232021.P12521377069952745215

`A232023(eq[8, A258709(n)])`
-/

namespace A232021.P12521377069952745215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232021.P12521377069952745215

/-! ## A232021.P8658647185845954035

`A232023(A055999(n+3)+1)`
-/

namespace A232021.P8658647185845954035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A055999 (n + 3) + 1).toNat

end

end A232021.P8658647185845954035

/-!
# A232022: Number of nX7 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232022, there is no canonical definition to state claims against.
-/

/-! ## A232022.P4473892610789091658

`A232023(eq[4, A219347(n)])`
-/

namespace A232022.P4473892610789091658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232022.P4473892610789091658

/-! ## A232022.P11610809409051818809

`A232023(A000217(n+6)+n+1)`
-/

namespace A232022.P11610809409051818809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A000217 (n + 6) + (n : ℤ) + 1).toNat

end

end A232022.P11610809409051818809

/-!
# A232024: Number of 2 X n 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232024, there is no canonical definition to state claims against.
-/

/-! ## A232024.P11877149723856623

`A232023(∑[n+1]+2)`
-/

namespace A232024.P11877149723856623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232024.P11877149723856623

/-! ## A232024.P4900776243310350285

`record[A232023(A133263(abs(1-n)))]`
-/

namespace A232024.P4900776243310350285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232024.P4900776243310350285

/-! ## A232024.P13301444988813864764

`record[gcd(A168511(n+3), A232023(n+4))]`
-/

namespace A232024.P13301444988813864764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168511 (n + 3)) (A232023 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232024.P13301444988813864764

/-!
# A232025: Number of 3Xn 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232025, there is no canonical definition to state claims against.
-/

/-! ## A232025.P3289866340735682760

`A232023(∑[n+2]+4)`
-/

namespace A232025.P3289866340735682760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232025.P3289866340735682760

/-! ## A232025.P15008839795646572416

`A232023(A167614(n+1))+A185284(n)`
-/

namespace A232025.P15008839795646572416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A167614 (n + 1)).toNat + A185284 n

end

end A232025.P15008839795646572416

/-! ## A232025.P11430848082076329699

`lcm(A033999(n), A232023(A167614(n+1)))`
-/

namespace A232025.P11430848082076329699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A232023 (A167614 (n + 1)).toNat)

end

end A232025.P11430848082076329699

/-! ## A232025.P1763461012113355914

`or(A000007(n), A232023(A167614(n+1)))`
-/

namespace A232025.P1763461012113355914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A232023 (A167614 (n + 1)).toNat)

end

end A232025.P1763461012113355914

/-! ## A232025.P7562080497456201251

`or(A000038(n), A232023(A167614(n+1)))`
-/

namespace A232025.P7562080497456201251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A232023 (A167614 (n + 1)).toNat)

end

end A232025.P7562080497456201251

/-!
# A232026: Number of 4Xn 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232026, there is no canonical definition to state claims against.
-/

/-! ## A232026.P10616465580056995570

`A232023(A141214(n)+7)`
-/

namespace A232026.P10616465580056995570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A141214 n + 7).toNat

end

end A232026.P10616465580056995570

/-! ## A232026.P13624289383568300876

`A232023(A052905(n)+9)`
-/

namespace A232026.P13624289383568300876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A052905 n + 9).toNat

end

end A232026.P13624289383568300876

/-! ## A232026.P4255736943871998774

`A232023(A055999(n)+10)`
-/

namespace A232026.P4255736943871998774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A055999 n + 10).toNat

end

end A232026.P4255736943871998774

/-! ## A232026.P15354033662114122702

`A232023(A167614(n+2)+1)`
-/

namespace A232026.P15354033662114122702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A167614 (n + 2) + 1).toNat

end

end A232026.P15354033662114122702

/-! ## A232026.P17650176395376395747

`A232023(A034856(n+2)+6)`
-/

namespace A232026.P17650176395376395747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A034856 (n + 2) + 6).toNat

end

end A232026.P17650176395376395747

/-!
# A232027: Number of 5Xn 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232027, there is no canonical definition to state claims against.
-/

/-! ## A232027.P6513094059475946534

`A232023(A167499(n+3))`
-/

namespace A232027.P6513094059475946534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A167499 (n + 3)).toNat

end

end A232027.P6513094059475946534

/-! ## A232027.P6790446629454920959

`A232023(A056000(n)+15)`
-/

namespace A232027.P6790446629454920959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A056000 n + 15).toNat

end

end A232027.P6790446629454920959

/-! ## A232027.P16180720203995525032

`A232023(eq[7, A066657(n)])`
-/

namespace A232027.P16180720203995525032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232027.P16180720203995525032

/-! ## A232027.P2907303506441685112

`A232023(A046691(n+2)+9)`
-/

namespace A232027.P2907303506441685112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A046691 (n + 2) + 9).toNat

end

end A232027.P2907303506441685112

/-! ## A232027.P11352634467106517826

`A232023(A052905(n+1)+10)`
-/

namespace A232027.P11352634467106517826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A052905 (n + 1) + 10).toNat

end

end A232027.P11352634467106517826

/-!
# A232028: Number of 6Xn 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232028, there is no canonical definition to state claims against.
-/

/-! ## A232028.P6705037633818919174

`A232023(A056115(n)+21)`
-/

namespace A232028.P6705037633818919174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A056115 n + 21).toNat

end

end A232028.P6705037633818919174

/-! ## A232028.P4501354037950020487

`A232023(eq[7, A131818(n+1)])`
-/

namespace A232028.P4501354037950020487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232028.P4501354037950020487

/-! ## A232028.P1619855718644402893

`A232023(eq[5, A200370(n+1)]+10)`
-/

namespace A232028.P1619855718644402893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A232028.P1619855718644402893

/-! ## A232028.P201740291282983280

`A232023(A000217(n+7)-7-2*n)`
-/

namespace A232028.P201740291282983280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (A000217 (n + 7) - 7 - (2 * n : ℤ)).toNat

end

end A232028.P201740291282983280

/-! ## A232028.P10600957222941062892

`A232023(gcd(2, A054801(n+1))+A167614(n+4)+2)`
-/

namespace A232028.P10600957222941062892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 ((Int.gcd 2 (A054801 (n + 1)) : ℤ) + (A167614 (n + 4) + 2)).toNat

end

end A232028.P10600957222941062892

/-!
# A232029: Number of 7Xn 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232029, there is no canonical definition to state claims against.
-/

/-! ## A232029.P4703365840569512353

`A232023(eq[8, A131818(n+1)])`
-/

namespace A232029.P4703365840569512353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232029.P4703365840569512353

/-!
# A232030: Number of (n+1)X(n+1) 0..1 arrays with every element equal to some horizontal, vertical or antidiagonal neighbor, with top left element zero.

The programs for A232030, there is no canonical definition to state claims against.
-/

/-! ## A232030.P18208585237733558513

`A232038(∑[4*n]+1)`
-/

namespace A232030.P18208585237733558513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232030.P18208585237733558513

/-!
# A232031: Number of (n+1) X (1+1) 0..1 arrays with every element equal to some horizontal, vertical or antidiagonal neighbor, with top left element zero.

The programs for A232031, the canonical program `A232031.P7374199409555413025` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232031 has offset 1).

The definition of A232031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232031.P6560859501280889327

`ogf((3-x-x^2)/(1-4x+2x^2-x^3+x^4))`
-/

namespace A232031.P6560859501280889327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, -1] [1, -4, 2, -1, 1] n

end

end A232031.P6560859501280889327

namespace A232031

/-- `ogf((3-x-x^2)/(1-4x+2x^2-x^3+x^4))` -/
def P6560859501280889327.Spec : Prop :=
  ∀ n, P6560859501280889327.a n = A232031 (n + 1)

end A232031

/-! ## A232031.P7374199409555413025

`4*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=11, a(2)=37, a(3)=129`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232031

/-- `4*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` -/
def P7374199409555413025.Spec : Prop :=
  ∀ n, P7374199409555413025.a n = A232031 (n + 1)

theorem P7374199409555413025.correct : P7374199409555413025.Spec := by
  intro n
  simp only [A232031, Nat.add_sub_cancel]

end A232031

/-! ## A232031.P6529837068268209052

`Δ[A049864(2*(n+1))]`
-/

namespace A232031.P6529837068268209052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232031.P6529837068268209052

namespace A232031

/-- `Δ[A049864(2*(n+1))]` -/
def P6529837068268209052.Spec : Prop :=
  ∀ n, P6529837068268209052.a n = A232031 (n + 1)

end A232031

/-! ## A232031.P4245452932300335736

`Δ[Δ[A049856(2*(n+1))]]`
-/

namespace A232031.P4245452932300335736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232031.P4245452932300335736

namespace A232031

/-- `Δ[Δ[A049856(2*(n+1))]]` -/
def P4245452932300335736.Spec : Prop :=
  ∀ n, P4245452932300335736.a n = A232031 (n + 1)

end A232031

/-! ## A232031.P9790088277470584517

`A290987(2*n+1)+Δ[n²]`
-/

namespace A232031.P9790088277470584517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290987 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A232031.P9790088277470584517

namespace A232031

/-- `A290987(2*n+1)+Δ[n²]` -/
def P9790088277470584517.Spec : Prop :=
  ∀ n, P9790088277470584517.a n = A232031 (n + 1)

end A232031

/-! ## A232031.P13331408147166078690

`n+1+A290987(n+1+n)+n`
-/

namespace A232031.P13331408147166078690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A290987 (n + 1 + n) + (n : ℤ))

end

end A232031.P13331408147166078690

namespace A232031

/-- `n+1+A290987(n+1+n)+n` -/
def P13331408147166078690.Spec : Prop :=
  ∀ n, P13331408147166078690.a n = A232031 (n + 1)

end A232031

/-! ## A232031.P16877055017124127726

`A049858(2*n+3)+A049858(2*n)`
-/

namespace A232031.P16877055017124127726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (2 * n + 3) + A049858 (2 * n)

end

end A232031.P16877055017124127726

namespace A232031

/-- `A049858(2*n+3)+A049858(2*n)` -/
def P16877055017124127726.Spec : Prop :=
  ∀ n, P16877055017124127726.a n = A232031 (n + 1)

end A232031

/-! ## A232031.P9423594799136023393

`A059633(2*n+3)+A059633(2*(n+2))`
-/

namespace A232031.P9423594799136023393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (2 * n + 3) + A059633 (2 * (n + 2))

end

end A232031.P9423594799136023393

namespace A232031

/-- `A059633(2*n+3)+A059633(2*(n+2))` -/
def P9423594799136023393.Spec : Prop :=
  ∀ n, P9423594799136023393.a n = A232031 (n + 1)

end A232031

/-!
# A232032: Number of (n+1) X (2+1) 0..1 arrays with every element equal to some horizontal, vertical or antidiagonal neighbor, with top left element zero.

The programs for A232032, the canonical program `A232032.P2817705692145557892` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232032 has offset 1).

The definition of A232032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232032.P2817705692145557892

`ogf((11-x-11x^2-4x^3+5x^4+5x^5-x^7)/(1-7x+5x^3+2x^4+x^5-2x^6-2x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232032

/-- `ogf((11-x-11x^2-4x^3+5x^4+5x^5-x^7)/(1-7x+5x^3+2x^4+x^5-2x^6-2x^7))` -/
def P2817705692145557892.Spec : Prop :=
  ∀ n, P2817705692145557892.a n = A232032 (n + 1)

theorem P2817705692145557892.correct : P2817705692145557892.Spec := by
  intro n
  simp only [A232032, Nat.add_sub_cancel]

end A232032

/-! ## A232032.P16707612173982796509

`A232038(∑[n+1]+2)`
-/

namespace A232032.P16707612173982796509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232032.P16707612173982796509

namespace A232032

/-- `A232038(∑[n+1]+2)` -/
def P16707612173982796509.Spec : Prop :=
  ∀ n, P16707612173982796509.a n = A232032 (n + 1)

end A232032

/-! ## A232032.P4176271958297494320

`record[A232038(A130270(n+1)+2)]`
-/

namespace A232032.P4176271958297494320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232032.P4176271958297494320

namespace A232032

/-- `record[A232038(A130270(n+1)+2)]` -/
def P4176271958297494320.Spec : Prop :=
  ∀ n, P4176271958297494320.a n = A232032 (n + 1)

end A232032

/-! ## A232032.P4140144398365350858

`lcm(A033999(n), A232038(A000096(n)+3))`
-/

namespace A232032.P4140144398365350858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A232038 (A000096 n + 3).toNat)

end

end A232032.P4140144398365350858

namespace A232032

/-- `lcm(A033999(n), A232038(A000096(n)+3))` -/
def P4140144398365350858.Spec : Prop :=
  ∀ n, (P4140144398365350858.a n : ℤ) = A232032 (n + 1)

end A232032

/-! ## A232032.P11081806343117623262

`xor(A232038(A000096(n)+3), A326292(n))`
-/

namespace A232032.P11081806343117623262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A232038 (A000096 n + 3).toNat) (A326292 n)

end

end A232032.P11081806343117623262

namespace A232032

/-- `xor(A232038(A000096(n)+3), A326292(n))` -/
def P11081806343117623262.Spec : Prop :=
  ∀ n, P11081806343117623262.a n = A232032 (n + 1)

end A232032

/-!
# A232033: Number of (n+1)X(3+1) 0..1 arrays with every element equal to some horizontal, vertical or antidiagonal neighbor, with top left element zero.

The programs for A232033, there is no canonical definition to state claims against.
-/

/-! ## A232033.P12735250471710757513

`A232038(∑[n+2]+4)`
-/

namespace A232033.P12735250471710757513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232033.P12735250471710757513

/-! ## A232033.P7652344785133842449

`A232038(A167614(n+1))+A025469(n)`
-/

namespace A232033.P7652344785133842449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A167614 (n + 1)).toNat + A025469 n

end

end A232033.P7652344785133842449

/-! ## A232033.P2014151455932486961

`or(A000007(n), A232038(A167614(n+1)))`
-/

namespace A232033.P2014151455932486961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A232038 (A167614 (n + 1)).toNat)

end

end A232033.P2014151455932486961

/-! ## A232033.P8552760601219817110

`A232038(A167614(n+1))+A034560(n+1)`
-/

namespace A232033.P8552760601219817110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A167614 (n + 1)).toNat + A034560 (n + 1)

end

end A232033.P8552760601219817110

/-!
# A232034: Number of (n+1)X(4+1) 0..1 arrays with every element equal to some horizontal, vertical or antidiagonal neighbor, with top left element zero.

The programs for A232034, there is no canonical definition to state claims against.
-/

/-! ## A232034.P1711805631377030133

`A232038(A374004(n+1))`
-/

namespace A232034.P1711805631377030133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A374004 (n + 1)).toNat

end

end A232034.P1711805631377030133

/-! ## A232034.P13608240432378867774

`A232038(A141214(n)+7)`
-/

namespace A232034.P13608240432378867774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A141214 n + 7).toNat

end

end A232034.P13608240432378867774

/-! ## A232034.P8295314518775240795

`A232038(A052905(n)+9)`
-/

namespace A232034.P8295314518775240795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A052905 n + 9).toNat

end

end A232034.P8295314518775240795

/-! ## A232034.P1894161270265974530

`A232038(A055999(n)+10)`
-/

namespace A232034.P1894161270265974530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A055999 n + 10).toNat

end

end A232034.P1894161270265974530

/-! ## A232034.P10923051420597969211

`A232038(A167614(n+2)+1)`
-/

namespace A232034.P10923051420597969211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A167614 (n + 2) + 1).toNat

end

end A232034.P10923051420597969211

/-!
# A232035: Number of (n+1)X(5+1) 0..1 arrays with every element equal to some horizontal, vertical or antidiagonal neighbor, with top left element zero.

The programs for A232035, there is no canonical definition to state claims against.
-/

/-! ## A232035.P13948021721145235687

`A232038(A374005(n+1))`
-/

namespace A232035.P13948021721145235687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A374005 (n + 1)).toNat

end

end A232035.P13948021721145235687

/-! ## A232035.P7786344020283102142

`A232038(A167499(n+3))`
-/

namespace A232035.P7786344020283102142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A167499 (n + 3)).toNat

end

end A232035.P7786344020283102142

/-! ## A232035.P11467214621157017571

`A232038(eq[6, A131818(n+1)])`
-/

namespace A232035.P11467214621157017571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232035.P11467214621157017571

/-! ## A232035.P3578306860623626522

`A232038(Δ[A264443(n)])`
-/

namespace A232035.P3578306860623626522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (f1 (n + 1) - f1 n).toNat

end

end A232035.P3578306860623626522

/-! ## A232035.P2376393358622445949

`A232038(eq[3, A152157(n)])`
-/

namespace A232035.P2376393358622445949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232035.P2376393358622445949

/-!
# A232036: Number of (n+1) X (6+1) 0..1 arrays with every element equal to some horizontal, vertical or antidiagonal neighbor, with top left element zero.

The programs for A232036, there is no canonical definition to state claims against.
-/

/-! ## A232036.P6593940023792020984

`A232038(A374007(n+1))`
-/

namespace A232036.P6593940023792020984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A374007 (n + 1)).toNat

end

end A232036.P6593940023792020984

/-! ## A232036.P12545514877113775381

`A232038(eq[7, A131818(n+1)])`
-/

namespace A232036.P12545514877113775381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232036.P12545514877113775381

/-! ## A232036.P2544437233219315980

`A232038(A056119(n)+16)`
-/

namespace A232036.P2544437233219315980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A056119 n + 16).toNat

end

end A232036.P2544437233219315980

/-! ## A232036.P9452039536945358067

`A232038(eq[5, A193592(n)])`
-/

namespace A232036.P9452039536945358067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232036.P9452039536945358067

/-! ## A232036.P13161020134614701209

`A232038(eq[8, A185782(n+1)])`
-/

namespace A232036.P13161020134614701209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232036.P13161020134614701209

/-!
# A232037: Number of (n+1)X(7+1) 0..1 arrays with every element equal to some horizontal, vertical or antidiagonal neighbor, with top left element zero.

The programs for A232037, there is no canonical definition to state claims against.
-/

/-! ## A232037.P4249724641282638975

`A232038(A374008(n+1))`
-/

namespace A232037.P4249724641282638975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A374008 (n + 1)).toNat

end

end A232037.P4249724641282638975

/-! ## A232037.P6491164415979645168

`A232038(A055999(n+4))`
-/

namespace A232037.P6491164415979645168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A055999 (n + 4)).toNat

end

end A232037.P6491164415979645168

/-! ## A232037.P11670058769070664520

`A232038(eq[4, A219347(n)])`
-/

namespace A232037.P11670058769070664520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232037.P11670058769070664520

/-! ## A232037.P7321363391881668752

`A232038(eq[6, A193592(n)])`
-/

namespace A232037.P7321363391881668752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232037.P7321363391881668752

/-! ## A232037.P15274021226757434782

`A232038(A141214(n+4)-3)`
-/

namespace A232037.P15274021226757434782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232038 (A141214 (n + 4) - 3).toNat

end

end A232037.P15274021226757434782

/-!
# A232039: Primes p congruent to 1 mod 12 such that (p + 1)/2 does not divide the numerator of the Bernoulli number B(p + 1).

The programs for A232039, there is no canonical definition to state claims against.
-/

/-! ## A232039.P16208569331305250664

`p?[2*A286854(n+1)-1]`
-/

namespace A232039.P16208569331305250664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286854 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232039.P16208569331305250664

/-! ## A232039.P11529978618182664562

`p?[A004273(A286854(n+1))]`
-/

namespace A232039.P11529978618182664562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A286854 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232039.P11529978618182664562

/-! ## A232039.P9512955433441122789

`p?[A005408(A286854(n+1)-1)]`
-/

namespace A232039.P9512955433441122789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A286854 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232039.P9512955433441122789

/-! ## A232039.P17803641297265055067

`p?[A042948(A286854(n+1))+A008683(20*n+48)]`
-/

namespace A232039.P17803641297265055067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A286854 (n + 1)).toNat + A008683 (20 * n + 48)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232039.P17803641297265055067

/-! ## A232039.P17602042969587607339

`A000032(((-1)^n)²)*p?[A042948(A286854(n+1))]`
-/

namespace A232039.P17602042969587607339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A286854 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (((-1) ^ n) ^ 2).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232039.P17602042969587607339

/-!
# A232040: Primes p congruent to 11 mod 12 such that (p - 1)/2 does not divide the numerator of the Bernoulli number B(p-1).

The programs for A232040, there is no canonical definition to state claims against.
-/

/-! ## A232040.P17718724238578440403

`p?[A040658(n)*A161709(2*n+3)]`
-/

namespace A232040.P17718724238578440403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040658 n * A161709 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232040.P17718724238578440403

/-! ## A232040.P3980017526235220908

`p?[2*A286854(n+1)+1]`
-/

namespace A232040.P3980017526235220908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286854 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232040.P3980017526235220908

/-! ## A232040.P9158041223371076312

`p?[A314031(A315335(2*(n+1))+11)]`
-/

namespace A232040.P9158041223371076312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 (A315335 (2 * (n + 1)) + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232040.P9158041223371076312

/-!
# A232041: Number of n X n 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232041, there is no canonical definition to state claims against.
-/

/-! ## A232041.P11948740980101376829

`A232047(∑[4*n]+1)`
-/

namespace A232041.P11948740980101376829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232041.P11948740980101376829

/-! ## A232041.P13397902850712609826

`record[A003982(n)*A232047(n+1)]`
-/

namespace A232041.P13397902850712609826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232041.P13397902850712609826

/-! ## A232041.P4288454243574382631

`record[gcd(A114327(n), A232047(n+1))]`
-/

namespace A232041.P4288454243574382631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A232047 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232041.P4288454243574382631

/-! ## A232041.P997593690101945971

`record[root(A232047(n+1), A113881(n+1))]`
-/

namespace A232041.P997593690101945971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232047 (n + 1) : ℝ) ^ (1 / (A113881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232041.P997593690101945971

/-! ## A232041.P13871071435927087797

`A232047(A001844(n))+A127937(n)`
-/

namespace A232041.P13871071435927087797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A001844 n).toNat + A127937 n

end

end A232041.P13871071435927087797

/-!
# A232042: Number of n X 3 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232042, the canonical program `A232042.P7486063902333790548` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232042 has offset 1).

The definition of A232042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232042.P7486063902333790548

`ogf((4-x-16x^2-5x^3+12x^4)/(1-4x-9x^2+x^3+6x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232042

/-- `ogf((4-x-16x^2-5x^3+12x^4)/(1-4x-9x^2+x^3+6x^4))` -/
def P7486063902333790548.Spec : Prop :=
  ∀ n, P7486063902333790548.a n = A232042 (n + 1)

theorem P7486063902333790548.correct : P7486063902333790548.Spec := by
  intro n
  simp only [A232042, Nat.add_sub_cancel]

end A232042

/-! ## A232042.P18042683165340589128

`A232047(∑[n+3]+1)`
-/

namespace A232042.P18042683165340589128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232042.P18042683165340589128

namespace A232042

/-- `A232047(∑[n+3]+1)` -/
def P18042683165340589128.Spec : Prop :=
  ∀ n, P18042683165340589128.a n = A232042 (n + 1)

end A232042

/-!
# A232043: Number of n X 4 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232043, there is no canonical definition to state claims against.
-/

/-! ## A232043.P2360869249858226276

`A232047(A141214(n+1))`
-/

namespace A232043.P2360869249858226276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A141214 (n + 1)).toNat

end

end A232043.P2360869249858226276

/-! ## A232043.P2609018383718608372

`A232047(A055998(n+2))`
-/

namespace A232043.P2609018383718608372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A055998 (n + 2)).toNat

end

end A232043.P2609018383718608372

/-! ## A232043.P5852972513440912581

`A232047(A155212(n)+5)`
-/

namespace A232043.P5852972513440912581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A155212 n + 5).toNat

end

end A232043.P5852972513440912581

/-! ## A232043.P3723994012959610416

`A232047(eq[2, A152157(n)])`
-/

namespace A232043.P3723994012959610416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232043.P3723994012959610416

/-! ## A232043.P12875591816255330853

`A232047(A052905(n+1)+2)`
-/

namespace A232043.P12875591816255330853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A052905 (n + 1) + 2).toNat

end

end A232043.P12875591816255330853

/-!
# A232044: Number of nX5 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232044, there is no canonical definition to state claims against.
-/

/-! ## A232044.P12815739769384310608

`A232047(A046691(n+3))`
-/

namespace A232044.P12815739769384310608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A046691 (n + 3)).toNat

end

end A232044.P12815739769384310608

/-! ## A232044.P9407754934119206397

`A232047(eq[3, A152157(n)])`
-/

namespace A232044.P9407754934119206397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232044.P9407754934119206397

/-! ## A232044.P9500141683056797841

`A232047(eq[4, A193592(n)])`
-/

namespace A232044.P9500141683056797841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232044.P9500141683056797841

/-! ## A232044.P17768605110215971376

`A232047(Δ[A023545(n+1)])`
-/

namespace A232044.P17768605110215971376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (f1 (n + 1) - f1 n).toNat

end

end A232044.P17768605110215971376

/-! ## A232044.P11822750392278004685

`A232047(A052905(n+2)+1)`
-/

namespace A232044.P11822750392278004685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A052905 (n + 2) + 1).toNat

end

end A232044.P11822750392278004685

/-!
# A232045: Number of nX6 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232045, there is no canonical definition to state claims against.
-/

/-! ## A232045.P1802515447267404047

`A232047(A052905(n+3))`
-/

namespace A232045.P1802515447267404047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A052905 (n + 3)).toNat

end

end A232045.P1802515447267404047

/-! ## A232045.P11793923433477204040

`A232047(eq[3, A219347(n)])`
-/

namespace A232045.P11793923433477204040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232045.P11793923433477204040

/-! ## A232045.P433442936153371133

`A232047(eq[5, A193592(n)])`
-/

namespace A232045.P433442936153371133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232045.P433442936153371133

/-! ## A232045.P105491108906973828

`A232047(eq[8, A258709(n)])`
-/

namespace A232045.P105491108906973828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232045.P105491108906973828

/-! ## A232045.P8810885537173268569

`A232047(Δ[Δ[A006504(n+1)]])`
-/

namespace A232045.P8810885537173268569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (f1 (n + 1) - f1 n).toNat

end

end A232045.P8810885537173268569

/-!
# A232046: Number of nX7 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232046, there is no canonical definition to state claims against.
-/

/-! ## A232046.P2662104806046132180

`A232047(A055999(n+4))`
-/

namespace A232046.P2662104806046132180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A055999 (n + 4)).toNat

end

end A232046.P2662104806046132180

/-! ## A232046.P17963443448359632050

`A232047(eq[4, A219347(n)])`
-/

namespace A232046.P17963443448359632050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232046.P17963443448359632050

/-! ## A232046.P8051015068433702009

`A232047(eq[6, A193592(n)])`
-/

namespace A232046.P8051015068433702009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232046.P8051015068433702009

/-! ## A232046.P6982570604127786974

`A232047(A000096(n+6)-5)`
-/

namespace A232046.P6982570604127786974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A000096 (n + 6) - 5).toNat

end

end A232046.P6982570604127786974

/-! ## A232046.P8176219629035166946

`A232047(A134869(n+7)-7)`
-/

namespace A232046.P8176219629035166946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A134869 (n + 7) - 7).toNat

end

end A232046.P8176219629035166946

/-!
# A232048: Number of 2 X n 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232048, the canonical program `A232048.P5953761576513992802` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232048 has offset 1).

The definition of A232048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232048.P5953761576513992802

`ogf((4-9x+11x^2-12x^3+8x^4-3x^5-x^6+x^7)/(1-4x+6x^2-7x^3+6x^4-3x^5+x^6+x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232048

/-- `ogf((4-9x+11x^2-12x^3+8x^4-3x^5-x^6+x^7)/(1-4x+6x^2-7x^3+6x^4-3x^5+x^6+x^7))` -/
def P5953761576513992802.Spec : Prop :=
  ∀ n, P5953761576513992802.a n = A232048 (n + 1)

theorem P5953761576513992802.correct : P5953761576513992802.Spec := by
  intro n
  simp only [A232048, Nat.add_sub_cancel]

end A232048

/-! ## A232048.P1510394353966912152

`A232047(∑[n+1]+2)`
-/

namespace A232048.P1510394353966912152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232048.P1510394353966912152

namespace A232048

/-- `A232047(∑[n+1]+2)` -/
def P1510394353966912152.Spec : Prop :=
  ∀ n, P1510394353966912152.a n = A232048 (n + 1)

end A232048

/-! ## A232048.P2597650896122843203

`A232047(A133263(n+1))+A000007(n+1)`
-/

namespace A232048.P2597650896122843203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A232048.P2597650896122843203

namespace A232048

/-- `A232047(A133263(n+1))+A000007(n+1)` -/
def P2597650896122843203.Spec : Prop :=
  ∀ n, P2597650896122843203.a n = A232048 (n + 1)

end A232048

/-! ## A232048.P11244427082151845369

`A057427(n+1)*A232047(A133263(n+1))`
-/

namespace A232048.P11244427082151845369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A232047 (A133263 (n + 1)).toNat

end

end A232048.P11244427082151845369

namespace A232048

/-- `A057427(n+1)*A232047(A133263(n+1))` -/
def P11244427082151845369.Spec : Prop :=
  ∀ n, P11244427082151845369.a n = A232048 (n + 1)

end A232048

/-! ## A232048.P8993317044183370310

`record[A232047(n+3)/A264059(n+1)]`
-/

namespace A232048.P8993317044183370310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232047 (n + 3) : ℚ) / (A264059 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232048.P8993317044183370310

namespace A232048

/-- `record[A232047(n+3)/A264059(n+1)]` -/
def P8993317044183370310.Spec : Prop :=
  ∀ n, P8993317044183370310.a n = (A232048 (n + 1) : ℚ)

end A232048

/-!
# A232049: Number of 3Xn 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232049, there is no canonical definition to state claims against.
-/

/-! ## A232049.P5108249664849991719

`A232047(∑[n+2]+4)`
-/

namespace A232049.P5108249664849991719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232049.P5108249664849991719

/-! ## A232049.P8095322334795590103

`A232047(A167614(n+1))+A178798(n)`
-/

namespace A232049.P8095322334795590103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167614 (n + 1)).toNat + A178798 n

end

end A232049.P8095322334795590103

/-! ## A232049.P16742410610216218211

`A232047(A167614(n+1))+A185284(n)`
-/

namespace A232049.P16742410610216218211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167614 (n + 1)).toNat + A185284 n

end

end A232049.P16742410610216218211

/-! ## A232049.P13366755533599098946

`lcm(A033999(n), A232047(A167614(n+1)))`
-/

namespace A232049.P13366755533599098946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A232047 (A167614 (n + 1)).toNat)

end

end A232049.P13366755533599098946

/-! ## A232049.P16006065824411474440

`or(A084904(n), A232047(A167614(n+1)))`
-/

namespace A232049.P16006065824411474440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084904 n) (A232047 (A167614 (n + 1)).toNat)

end

end A232049.P16006065824411474440

/-!
# A232050: Number of 4Xn 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232050, there is no canonical definition to state claims against.
-/

/-! ## A232050.P8409079921789307081

`A232047(A141214(n)+7)`
-/

namespace A232050.P8409079921789307081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A141214 n + 7).toNat

end

end A232050.P8409079921789307081

/-! ## A232050.P11074665152056810814

`A232047(A052905(n)+9)`
-/

namespace A232050.P11074665152056810814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A052905 n + 9).toNat

end

end A232050.P11074665152056810814

/-! ## A232050.P2048840564312620039

`A232047(A055999(n)+10)`
-/

namespace A232050.P2048840564312620039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A055999 n + 10).toNat

end

end A232050.P2048840564312620039

/-! ## A232050.P4837879033387362447

`A232047(A167614(n+2)+1)`
-/

namespace A232050.P4837879033387362447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167614 (n + 2) + 1).toNat

end

end A232050.P4837879033387362447

/-! ## A232050.P11143891116214579984

`A232047(A167499(n+2)-1)`
-/

namespace A232050.P11143891116214579984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167499 (n + 2) - 1).toNat

end

end A232050.P11143891116214579984

/-!
# A232051: Number of 5Xn 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232051, there is no canonical definition to state claims against.
-/

/-! ## A232051.P16166516768141495455

`A232047(A167499(n+3))`
-/

namespace A232051.P16166516768141495455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167499 (n + 3)).toNat

end

end A232051.P16166516768141495455

/-! ## A232051.P9387894752154813171

`A232047(A155212(n)+13)`
-/

namespace A232051.P9387894752154813171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A155212 n + 13).toNat

end

end A232051.P9387894752154813171

/-! ## A232051.P13597945381969170230

`A232047(A056000(n)+15)`
-/

namespace A232051.P13597945381969170230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A056000 n + 15).toNat

end

end A232051.P13597945381969170230

/-! ## A232051.P11976558506645942720

`A232047(A052905(n+1)+10)`
-/

namespace A232051.P11976558506645942720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A052905 (n + 1) + 10).toNat

end

end A232051.P11976558506645942720

/-! ## A232051.P2144904316471323759

`A232047(eq[6, A131818(n+1)])`
-/

namespace A232051.P2144904316471323759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232051.P2144904316471323759

/-!
# A232052: Number of 6Xn 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232052, there is no canonical definition to state claims against.
-/

/-! ## A232052.P8302105084957920563

`A232047(A167499(n+4)+1)`
-/

namespace A232052.P8302105084957920563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167499 (n + 4) + 1).toNat

end

end A232052.P8302105084957920563

/-! ## A232052.P10824667677890076212

`A232047(A167614(n+4)+3)`
-/

namespace A232052.P10824667677890076212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167614 (n + 4) + 3).toNat

end

end A232052.P10824667677890076212

/-! ## A232052.P6204237311102625816

`A232047(A134869(n+5)+5)`
-/

namespace A232052.P6204237311102625816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A134869 (n + 5) + 5).toNat

end

end A232052.P6204237311102625816

/-! ## A232052.P13043246795962397836

`A232047(eq[7, A131818(n+1)])`
-/

namespace A232052.P13043246795962397836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232052.P13043246795962397836

/-! ## A232052.P2924480793103008914

`A232047(eq[5, A200370(n+1)]+10)`
-/

namespace A232052.P2924480793103008914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A232052.P2924480793103008914

/-!
# A232053: Number of 7Xn 0..1 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A232053, there is no canonical definition to state claims against.
-/

/-! ## A232053.P14693737267205159518

`A232047(A167487(n+5))`
-/

namespace A232053.P14693737267205159518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167487 (n + 5)).toNat

end

end A232053.P14693737267205159518

/-! ## A232053.P9514608982346504575

`A232047(A056119(n)+28)`
-/

namespace A232053.P9514608982346504575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A056119 n + 28).toNat

end

end A232053.P9514608982346504575

/-! ## A232053.P18381121288159504861

`A232047(eq[11, A066657(n)])`
-/

namespace A232053.P18381121288159504861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232053.P18381121288159504861

/-! ## A232053.P17929259879861119185

`A232047(A167614(n+5)+4)`
-/

namespace A232053.P17929259879861119185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (A167614 (n + 5) + 4).toNat

end

end A232053.P17929259879861119185

/-! ## A232053.P7171602431061026307

`A232047(eq[8, A131818(n+1)])`
-/

namespace A232053.P7171602431061026307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232053.P7171602431061026307

/-!
# A232054: Complement of A056875.

The programs for A232054, there is no canonical definition to state claims against.
-/

/-! ## A232054.P12443641188376579417

`eq[char[A056875(n)], A000007(n)]`
-/

namespace A232054.P12443641188376579417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056875 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A232054.P12443641188376579417

/-! ## A232054.P17499230812507687253

`eq[char[A056875(n)], A000038(n)]`
-/

namespace A232054.P17499230812507687253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056875 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A232054.P17499230812507687253

/-! ## A232054.P9246365736376878250

`eq[char[A056875(n)], A036987(2*n)]`
-/

namespace A232054.P9246365736376878250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056875 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A232054.P9246365736376878250

/-! ## A232054.P16534656041483089022

`eq[char[A056875(n)], A264739(2*n+1)]`
-/

namespace A232054.P16534656041483089022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056875 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A232054.P16534656041483089022

/-! ## A232054.P12255866517638949779

`comp[A056875(n)-1]-A033999(A092899(n))`
-/

namespace A232054.P12255866517638949779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056875 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A033999 (A092899 n).toNat

end

end A232054.P12255866517638949779

/-!
# A232055: Triangular array read by rows: T(n,k) is the number of forests of rooted labeled trees such that the vertex labeled with 1 is in a component (rooted tree) of size k, n>=1, 1<=k<=n.

The programs for A232055, there is no canonical definition to state claims against.
-/

/-! ## A232055.P10375036710736138025

`A103690(n+1)/∑[char[∑[n]]]`
-/

namespace A232055.P10375036710736138025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103690 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A232055.P10375036710736138025

/-! ## A232055.P1170987274322808358

`A002260(n+1)*A298594(n+1)`
-/

namespace A232055.P1170987274322808358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A298594 (n + 1)

end

end A232055.P1170987274322808358

/-! ## A232055.P6560542531851888082

`(A002262(n)+1)*A298594(n+1)`
-/

namespace A232055.P6560542531851888082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A298594 (n + 1)

end

end A232055.P6560542531851888082

/-! ## A232055.P10852951981757251689

`abs(A136261(n+1)*A298594(n+1))`
-/

namespace A232055.P10852951981757251689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136261 (n + 1) * A298594 (n + 1)|

end

end A232055.P10852951981757251689

/-! ## A232055.P16950103518012979700

`floor(A103690(n+1)/A002024(n+1))`
-/

namespace A232055.P16950103518012979700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103690 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A232055.P16950103518012979700

/-!
# A232058: Number of n X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically, with no adjacent values equal.

The programs for A232058, there is no canonical definition to state claims against.
-/

/-! ## A232058.P4448560564477028139

`A232065(∑[4*n]+1)`
-/

namespace A232058.P4448560564477028139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232058.P4448560564477028139

/-! ## A232058.P10910616542411803128

`record[A003982(n)*A232065(n+1)]`
-/

namespace A232058.P10910616542411803128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232058.P10910616542411803128

/-! ## A232058.P12118583177587384789

`record[gcd(A112467(n), A232065(n+1))]`
-/

namespace A232058.P12118583177587384789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A232065 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232058.P12118583177587384789

/-! ## A232058.P4091122125778588031

`A232065(A001844(n))+A064459(n)`
-/

namespace A232058.P4091122125778588031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A001844 n).toNat + A064459 n

end

end A232058.P4091122125778588031

/-! ## A232058.P5706858165271227277

`A007318(∑[n])*A232065(A001844(n))`
-/

namespace A232058.P5706858165271227277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A232065 (A001844 n).toNat

end

end A232058.P5706858165271227277

/-!
# A232059: Number of n X 2 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically, with no adjacent values equal.

The programs for A232059, the canonical program `A232059.P2978471775451707155` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232059 has offset 1).

The definition of A232059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232059.P5027218622451073421

`ogf((2+2x+2x^2)/(1-2x-x^3))`
-/

namespace A232059.P5027218622451073421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2] [1, -2, 0, -1] n

end

end A232059.P5027218622451073421

namespace A232059

/-- `ogf((2+2x+2x^2)/(1-2x-x^3))` -/
def P5027218622451073421.Spec : Prop :=
  ∀ n, P5027218622451073421.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P2978471775451707155

`2*a(n-1)+a(n-3)` with `a(0)=2, a(1)=6, a(2)=14`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232059

/-- `2*a(n-1)+a(n-3)` -/
def P2978471775451707155.Spec : Prop :=
  ∀ n, (P2978471775451707155.a n : ℤ) = A232059 (n + 1)

theorem P2978471775451707155.correct : P2978471775451707155.Spec := by
  intro n
  simp only [A232059, Nat.add_sub_cancel]

end A232059

/-! ## A232059.P16586311990822844756

`Δ[A285184(n+1)]`
-/

namespace A232059.P16586311990822844756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232059.P16586311990822844756

namespace A232059

/-- `Δ[A285184(n+1)]` -/
def P16586311990822844756.Spec : Prop :=
  ∀ n, P16586311990822844756.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P8385089490781051547

`∑[2*A052910(n)]`
-/

namespace A232059.P8385089490781051547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232059.P8385089490781051547

namespace A232059

/-- `∑[2*A052910(n)]` -/
def P8385089490781051547.Spec : Prop :=
  ∀ n, P8385089490781051547.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P8388636531749161182

`2*A193641(n+1)`
-/

namespace A232059.P8388636531749161182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193641 (n + 1)

end

end A232059.P8388636531749161182

namespace A232059

/-- `2*A193641(n+1)` -/
def P8388636531749161182.Spec : Prop :=
  ∀ n, P8388636531749161182.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P3994415824809657921

`2*or(1, A232230(n+1))`
-/

namespace A232059.P3994415824809657921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A232230 (n + 1))

end

end A232059.P3994415824809657921

namespace A232059

/-- `2*or(1, A232230(n+1))` -/
def P3994415824809657921.Spec : Prop :=
  ∀ n, P3994415824809657921.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P8752063265115627963

`A190512(n)+A183304(n+1)`
-/

namespace A232059.P8752063265115627963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 n + A183304 (n + 1)

end

end A232059.P8752063265115627963

namespace A232059

/-- `A190512(n)+A183304(n+1)` -/
def P8752063265115627963.Spec : Prop :=
  ∀ n, P8752063265115627963.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P476043438252872479

`A214260(n)+A190512(n+1)`
-/

namespace A232059.P476043438252872479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 n + A190512 (n + 1)

end

end A232059.P476043438252872479

namespace A232059

/-- `A214260(n)+A190512(n+1)` -/
def P476043438252872479.Spec : Prop :=
  ∀ n, P476043438252872479.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P3962476261942810674

`A214260(n)+A052980(n+2)`
-/

namespace A232059.P3962476261942810674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 n + A052980 (n + 2)

end

end A232059.P3962476261942810674

namespace A232059

/-- `A214260(n)+A052980(n+2)` -/
def P3962476261942810674.Spec : Prop :=
  ∀ n, P3962476261942810674.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P12826468503256551825

`A020708(n)-A335242(n+2)`
-/

namespace A232059.P12826468503256551825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n - A335242 (n + 2)

end

end A232059.P12826468503256551825

namespace A232059

/-- `A020708(n)-A335242(n+2)` -/
def P12826468503256551825.Spec : Prop :=
  ∀ n, P12826468503256551825.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P3687324538864158875

`2*(A214260(n)+A008998(n))`
-/

namespace A232059.P3687324538864158875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A214260 n + A008998 n)

end

end A232059.P3687324538864158875

namespace A232059

/-- `2*(A214260(n)+A008998(n))` -/
def P3687324538864158875.Spec : Prop :=
  ∀ n, P3687324538864158875.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P10118067356172612778

`Δ[A052980(n)+A008998(n+1)]`
-/

namespace A232059.P10118067356172612778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n + A008998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232059.P10118067356172612778

namespace A232059

/-- `Δ[A052980(n)+A008998(n+1)]` -/
def P10118067356172612778.Spec : Prop :=
  ∀ n, P10118067356172612778.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P7130270970369623962

`A335242(n+1)+A332647(n+1)`
-/

namespace A232059.P7130270970369623962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (n + 1) + A332647 (n + 1)

end

end A232059.P7130270970369623962

namespace A232059

/-- `A335242(n+1)+A332647(n+1)` -/
def P7130270970369623962.Spec : Prop :=
  ∀ n, P7130270970369623962.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P10138027570635993730

`A285184(n+2)-A285184(n+1)`
-/

namespace A232059.P10138027570635993730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (n + 2) - A285184 (n + 1)

end

end A232059.P10138027570635993730

namespace A232059

/-- `A285184(n+2)-A285184(n+1)` -/
def P10138027570635993730.Spec : Prop :=
  ∀ n, P10138027570635993730.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P6136958345390935868

`A008998(n+2)-A335242(n+2)`
-/

namespace A232059.P6136958345390935868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 2) - A335242 (n + 2)

end

end A232059.P6136958345390935868

namespace A232059

/-- `A008998(n+2)-A335242(n+2)` -/
def P6136958345390935868.Spec : Prop :=
  ∀ n, P6136958345390935868.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P6365648399793135996

`(A232230(n+1)+1)*A280193(2*n)`
-/

namespace A232059.P6365648399793135996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A232230 (n + 1) + 1) * A280193 (2 * n)

end

end A232059.P6365648399793135996

namespace A232059

/-- `(A232230(n+1)+1)*A280193(2*n)` -/
def P6365648399793135996.Spec : Prop :=
  ∀ n, P6365648399793135996.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P17720325923050593627

`A020708(n)-(A052980(n)+A008998(n))`
-/

namespace A232059.P17720325923050593627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n - (A052980 n + A008998 n)

end

end A232059.P17720325923050593627

namespace A232059

/-- `A020708(n)-(A052980(n)+A008998(n))` -/
def P17720325923050593627.Spec : Prop :=
  ∀ n, P17720325923050593627.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P15341319830560366947

`A193641(n+1)+A214260(n)+A008998(n)`
-/

namespace A232059.P15341319830560366947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + (A214260 n + A008998 n)

end

end A232059.P15341319830560366947

namespace A232059

/-- `A193641(n+1)+A214260(n)+A008998(n)` -/
def P15341319830560366947.Spec : Prop :=
  ∀ n, P15341319830560366947.a n = A232059 (n + 1)

end A232059

/-! ## A232059.P18206574384617324558

`A335274(n+1)+A335274(n)+A052980(n)`
-/

namespace A232059.P18206574384617324558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) + (A335274 n + A052980 n)

end

end A232059.P18206574384617324558

namespace A232059

/-- `A335274(n+1)+A335274(n)+A052980(n)` -/
def P18206574384617324558.Spec : Prop :=
  ∀ n, P18206574384617324558.a n = A232059 (n + 1)

end A232059

/-!
# A232060: Number of n X 3 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically, with no adjacent values equal.

The programs for A232060, the canonical program `A232060.P15311994178643441300` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232060 has offset 1).

The definition of A232060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232060.P15311994178643441300

`ogf((4+10x+4x^2-2x^3-12x^4-2x^5+4x^7)/(1-x-7x^2+3x^3-3x^4+7x^5-2x^6+2x^7-2x^8))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232060

/-- `ogf((4+10x+4x^2-2x^3-12x^4-2x^5+4x^7)/(1-x-7x^2+3x^3-3x^4+7x^5-2x^6+2x^7-2x^8))` -/
def P15311994178643441300.Spec : Prop :=
  ∀ n, P15311994178643441300.a n = A232060 (n + 1)

theorem P15311994178643441300.correct : P15311994178643441300.Spec := by
  intro n
  simp only [A232060, Nat.add_sub_cancel]

end A232060

/-! ## A232060.P6486929481184387229

`A232065(∑[n+2]+4)`
-/

namespace A232060.P6486929481184387229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232060.P6486929481184387229

namespace A232060

/-- `A232065(∑[n+2]+4)` -/
def P6486929481184387229.Spec : Prop :=
  ∀ n, P6486929481184387229.a n = A232060 (n + 1)

end A232060

/-! ## A232060.P18225377010139154912

`lcm(2, A232065(A167614(n+1)))`
-/

namespace A232060.P18225377010139154912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232065 (A167614 (n + 1)).toNat)

end

end A232060.P18225377010139154912

namespace A232060

/-- `lcm(2, A232065(A167614(n+1)))` -/
def P18225377010139154912.Spec : Prop :=
  ∀ n, (P18225377010139154912.a n : ℤ) = A232060 (n + 1)

end A232060

/-! ## A232060.P12126416028396842744

`A232065(A167614(n+1))+A180472(n)`
-/

namespace A232060.P12126416028396842744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A167614 (n + 1)).toNat + A180472 n

end

end A232060.P12126416028396842744

namespace A232060

/-- `A232065(A167614(n+1))+A180472(n)` -/
def P12126416028396842744.Spec : Prop :=
  ∀ n, P12126416028396842744.a n = A232060 (n + 1)

end A232060

/-! ## A232060.P12052861095693397608

`A232065(A167614(n+1))%A207740(n+1)`
-/

namespace A232060.P12052861095693397608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232065 (A167614 (n + 1)).toNat) (A207740 (n + 1))

end

end A232060.P12052861095693397608

namespace A232060

/-- `A232065(A167614(n+1))%A207740(n+1)` -/
def P12052861095693397608.Spec : Prop :=
  ∀ n, P12052861095693397608.a n = A232060 (n + 1)

end A232060

/-!
# A232061: Number of nX4 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically, with no adjacent values equal.

The programs for A232061, there is no canonical definition to state claims against.
-/

/-! ## A232061.P11063711154157312418

`A232065(A374004(n+1))`
-/

namespace A232061.P11063711154157312418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A374004 (n + 1)).toNat

end

end A232061.P11063711154157312418

/-! ## A232061.P4793575735669255315

`A232065(A145018(n+4))`
-/

namespace A232061.P4793575735669255315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A145018 (n + 4)).toNat

end

end A232061.P4793575735669255315

/-! ## A232061.P7885289471046725773

`A232065(A141214(n)+7)`
-/

namespace A232061.P7885289471046725773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A141214 n + 7).toNat

end

end A232061.P7885289471046725773

/-! ## A232061.P2474991854170855326

`A232065(A052905(n)+9)`
-/

namespace A232061.P2474991854170855326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A052905 n + 9).toNat

end

end A232061.P2474991854170855326

/-! ## A232061.P8389347299983700156

`A232065(A055999(n)+10)`
-/

namespace A232061.P8389347299983700156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A055999 n + 10).toNat

end

end A232061.P8389347299983700156

/-!
# A232062: Number of nX5 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically, with no adjacent values equal.

The programs for A232062, there is no canonical definition to state claims against.
-/

/-! ## A232062.P1918275234759031715

`A232065(A374005(n+1))`
-/

namespace A232062.P1918275234759031715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A374005 (n + 1)).toNat

end

end A232062.P1918275234759031715

/-! ## A232062.P13639706045530647939

`A232065(A167499(n+3))`
-/

namespace A232062.P13639706045530647939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A167499 (n + 3)).toNat

end

end A232062.P13639706045530647939

/-! ## A232062.P14054369494255115205

`A232065(A167614(n+3)+2)`
-/

namespace A232062.P14054369494255115205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A167614 (n + 3) + 2).toNat

end

end A232062.P14054369494255115205

/-! ## A232062.P12335324192803961774

`A232065(A000124(n+4)+4)`
-/

namespace A232062.P12335324192803961774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A000124 (n + 4) + 4).toNat

end

end A232062.P12335324192803961774

/-! ## A232062.P17480980060021198853

`A232065(A141214(n+1)+8)`
-/

namespace A232062.P17480980060021198853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A141214 (n + 1) + 8).toNat

end

end A232062.P17480980060021198853

/-!
# A232063: Number of nX6 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically, with no adjacent values equal.

The programs for A232063, there is no canonical definition to state claims against.
-/

/-! ## A232063.P16776150337264035265

`A232065(A374007(n+1))`
-/

namespace A232063.P16776150337264035265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A374007 (n + 1)).toNat

end

end A232063.P16776150337264035265

/-! ## A232063.P3192586691732034273

`A232065(A166136(n+4))`
-/

namespace A232063.P3192586691732034273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A166136 (n + 4)).toNat

end

end A232063.P3192586691732034273

/-! ## A232063.P11229985754959111346

`A232065(A000124(n+5)+5)`
-/

namespace A232063.P11229985754959111346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A000124 (n + 5) + 5).toNat

end

end A232063.P11229985754959111346

/-! ## A232063.P8026823508541034203

`A232065(A000217(n+5)+6)`
-/

namespace A232063.P8026823508541034203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A000217 (n + 5) + 6).toNat

end

end A232063.P8026823508541034203

/-! ## A232063.P2390306303512465806

`A232065(A141214(n+2)+9)`
-/

namespace A232063.P2390306303512465806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A141214 (n + 2) + 9).toNat

end

end A232063.P2390306303512465806

/-!
# A232064: Number of nX7 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically, with no adjacent values equal.

The programs for A232064, there is no canonical definition to state claims against.
-/

/-! ## A232064.P13964117479025507078

`A232065(A374008(n+1))`
-/

namespace A232064.P13964117479025507078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A374008 (n + 1)).toNat

end

end A232064.P13964117479025507078

/-! ## A232064.P11484900867360476645

`A232065(A167614(n+5)+4)`
-/

namespace A232064.P11484900867360476645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A167614 (n + 5) + 4).toNat

end

end A232064.P11484900867360476645

/-! ## A232064.P10482152743226782398

`A232065(A161680(n+7)+7)`
-/

namespace A232064.P10482152743226782398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A161680 (n + 7) + 7).toNat

end

end A232064.P10482152743226782398

/-! ## A232064.P13430910700669670174

`A232065(eq[8, A131818(n+1)])`
-/

namespace A232064.P13430910700669670174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232064.P13430910700669670174

/-! ## A232064.P15644717671587171156

`A232065(A055999(n+4))`
-/

namespace A232064.P15644717671587171156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A055999 (n + 4)).toNat

end

end A232064.P15644717671587171156

/-!
# A232065: T(n,k)=Number of nXk 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically, with no adjacent values equal.

The programs for A232065, there is no canonical definition to state claims against.
-/

/-! ## A232065.P4327918589003425349

`A027383(A059036(n)%A208733(n))`
-/

namespace A232065.P4327918589003425349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (Int.tmod (A059036 n) (A208733 n)).toNat

end

end A232065.P4327918589003425349

/-! ## A232065.P15246142749587833395

`A027383(A059036(n))%A339585(n+4)`
-/

namespace A232065.P15246142749587833395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027383 (A059036 n).toNat) (A339585 (n + 4))

end

end A232065.P15246142749587833395

/-! ## A232065.P1772942901580669541

`A020639(A091521(n))*A091533(n)`
-/

namespace A232065.P1772942901580669541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A091521 n).toNat * A091533 n

end

end A232065.P1772942901580669541

/-!
# A232066: Periodic primes: primes p whose decimal expansion can be written as sss...st, where s is nonempty string of digits not beginning with 0, there are at least two copies of s, and t (which may be absent) is a prefix of s.

The programs for A232066, there is no canonical definition to state claims against.
-/

/-! ## A232066.P14995266440017003102

`p?[A344550(n+9)]`
-/

namespace A232066.P14995266440017003102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344550 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232066.P14995266440017003102

/-! ## A232066.P15466272565653250901

`p?[A082216(A020338(n+1))]`
-/

namespace A232066.P15466272565653250901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A020338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232066.P15466272565653250901

/-! ## A232066.P7500070333052839492

`p?[A082216(A115853(n+1))]`
-/

namespace A232066.P7500070333052839492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A115853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232066.P7500070333052839492

/-! ## A232066.P9280524898995592841

`p?[A082216(A127421(n+1)-1)]`
-/

namespace A232066.P9280524898995592841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A127421 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232066.P9280524898995592841

/-!
# A232067: Numbers k such that sigma(k^2) and Sum_{d|k} d*sigma(d) are both multiples of k.

The programs for A232067, there is no canonical definition to state claims against.
-/

/-! ## A232067.P13202887321583070475

`∩[A069520(n+1), A232354(n+1)]`
-/

namespace A232067.P13202887321583070475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232067.P13202887321583070475

/-! ## A232067.P1516094809777534314

`A232354(lt[A184197(3*n+1), A373206(2*n+1)])`
-/

namespace A232067.P1516094809777534314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373206 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232354 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232067.P1516094809777534314

/-! ## A232067.P11133927321927311169

`∩[A232354(n+1), A290815(n+1)]`
-/

namespace A232067.P11133927321927311169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232067.P11133927321927311169

/-!
# A232069: Number of (n+1)X(n+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232069, there is no canonical definition to state claims against.
-/

/-! ## A232069.P6303686003356210204

`A232076((n+1)²+n²)`
-/

namespace A232069.P6303686003356210204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 ((n + 1) ^ 2 + n ^ 2)

end

end A232069.P6303686003356210204

/-! ## A232069.P6314225032392465766

`A232076(A001844(n))+C(n, 64)`
-/

namespace A232069.P6314225032392465766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A001844 n).toNat + (Nat.choose n 64 : ℤ)

end

end A232069.P6314225032392465766

/-!
# A232070: Number of (n+1) X (2+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232070, the canonical program `A232070.P3574805386687387175` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232070 has offset 1).

The definition of A232070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232070.P3574805386687387175

`ogf((15+12x+2x^2-12x^3-8x^4)/(1-5x-11x^2-2x^3+8x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232070

/-- `ogf((15+12x+2x^2-12x^3-8x^4)/(1-5x-11x^2-2x^3+8x^5))` -/
def P3574805386687387175.Spec : Prop :=
  ∀ n, P3574805386687387175.a n = A232070 (n + 1)

theorem P3574805386687387175.correct : P3574805386687387175.Spec := by
  intro n
  simp only [A232070, Nat.add_sub_cancel]

end A232070

/-! ## A232070.P14282437278636692313

`A232076(∑[n+2])`
-/

namespace A232070.P14282437278636692313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232070.P14282437278636692313

namespace A232070

/-- `A232076(∑[n+2])` -/
def P14282437278636692313.Spec : Prop :=
  ∀ n, P14282437278636692313.a n = A232070 (n + 1)

end A232070

/-! ## A232070.P4736602478423329580

`record[A232076(abs(A201163(n)))]`
-/

namespace A232070.P4736602478423329580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232070.P4736602478423329580

namespace A232070

/-- `record[A232076(abs(A201163(n)))]` -/
def P4736602478423329580.Spec : Prop :=
  ∀ n, P4736602478423329580.a n = A232070 (n + 1)

end A232070

/-! ## A232070.P7344781004899465080

`record[A232076(Δ[A003453(n+5)])]`
-/

namespace A232070.P7344781004899465080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232070.P7344781004899465080

namespace A232070

/-- `record[A232076(Δ[A003453(n+5)])]` -/
def P7344781004899465080.Spec : Prop :=
  ∀ n, P7344781004899465080.a n = A232070 (n + 1)

end A232070

/-! ## A232070.P4893236731602691470

`record[root(A232076(n+2), A004736(n+3))]`
-/

namespace A232070.P4893236731602691470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232076 (n + 2) : ℝ) ^ (1 / (A004736 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232070.P4893236731602691470

namespace A232070

/-- `record[root(A232076(n+2), A004736(n+3))]` -/
def P4893236731602691470.Spec : Prop :=
  ∀ n, P4893236731602691470.a n = (A232070 (n + 1) : ℝ)

end A232070

/-!
# A232071: Number of (n+1)X(3+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232071, there is no canonical definition to state claims against.
-/

/-! ## A232071.P9867861681478231464

`A232076(∑[n+3]+1)`
-/

namespace A232071.P9867861681478231464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232071.P9867861681478231464

/-! ## A232071.P4698464605496739583

`record[A232076(A198464(n+1))]`
-/

namespace A232071.P4698464605496739583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232071.P4698464605496739583

/-! ## A232071.P6349004828670662264

`A232076(A034856(n+2))%A001044(n+4)`
-/

namespace A232071.P6349004828670662264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232076 (A034856 (n + 2)).toNat) (A001044 (n + 4))

end

end A232071.P6349004828670662264

/-!
# A232072: Number of (n+1)X(4+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232072, there is no canonical definition to state claims against.
-/

/-! ## A232072.P6070138958958556033

`A232076(∑[n+4]+3)`
-/

namespace A232072.P6070138958958556033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A232072.P6070138958958556033

/-! ## A232072.P5641286881598959077

`A232076(A055998(n+2))+A181837(n)`
-/

namespace A232072.P5641286881598959077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A055998 (n + 2)).toNat + A181837 n

end

end A232072.P5641286881598959077

/-!
# A232073: Number of (n+1)X(5+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232073, there is no canonical definition to state claims against.
-/

/-! ## A232073.P14549441547153048153

`A232076(A046691(n+3))`
-/

namespace A232073.P14549441547153048153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A046691 (n + 3)).toNat

end

end A232073.P14549441547153048153

/-! ## A232073.P14014692085452921168

`A232076(eq[4, A193592(n)])`
-/

namespace A232073.P14014692085452921168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232073.P14014692085452921168

/-! ## A232073.P8139659468166943775

`A232076(eq[8, A209439(n)])`
-/

namespace A232073.P8139659468166943775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232073.P8139659468166943775

/-! ## A232073.P16907584119795961337

`A232076(Δ[A023545(n+1)])`
-/

namespace A232073.P16907584119795961337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (f1 (n + 1) - f1 n).toNat

end

end A232073.P16907584119795961337

/-! ## A232073.P13492829067445767283

`A232076(A052905(n+2)+1)`
-/

namespace A232073.P13492829067445767283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A052905 (n + 2) + 1).toNat

end

end A232073.P13492829067445767283

/-!
# A232074: Number of (n+1)X(6+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232074, there is no canonical definition to state claims against.
-/

/-! ## A232074.P16173369821849409214

`A232076(A052905(n+3))`
-/

namespace A232074.P16173369821849409214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A052905 (n + 3)).toNat

end

end A232074.P16173369821849409214

/-! ## A232074.P5274925611184437915

`A232076(eq[5, A193592(n)])`
-/

namespace A232074.P5274925611184437915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232074.P5274925611184437915

/-! ## A232074.P6465378468533072114

`A232076(eq[8, A258709(n)])`
-/

namespace A232074.P6465378468533072114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232074.P6465378468533072114

/-! ## A232074.P7025723384791372313

`A232076(eq[16, A209439(n)])`
-/

namespace A232074.P7025723384791372313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232074.P7025723384791372313

/-! ## A232074.P7786420200832892218

`A232076(eq[8, A185782(n+1)])`
-/

namespace A232074.P7786420200832892218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232074.P7786420200832892218

/-!
# A232075: Number of (n+1)X(7+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232075, there is no canonical definition to state claims against.
-/

/-! ## A232075.P15879051625817419659

`A232076(A055999(n+4))`
-/

namespace A232075.P15879051625817419659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A055999 (n + 4)).toNat

end

end A232075.P15879051625817419659

/-! ## A232075.P8386646527172295061

`A232076(eq[4, A219347(n)])`
-/

namespace A232075.P8386646527172295061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232075.P8386646527172295061

/-! ## A232075.P18281338960531058170

`A232076(eq[6, A193592(n)])`
-/

namespace A232075.P18281338960531058170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232075.P18281338960531058170

/-!
# A232077: Number of (1+1) X (n+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232077, the canonical program `A232077.P15603656551578629924` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232077 has offset 1).

The definition of A232077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232077.P3615355180948925411

`ogf((3+6x-2x^2-4x^3)/(1-3x-x^2-4x^3-4x^4))`
-/

namespace A232077.P3615355180948925411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -2, -4] [1, -3, -1, -4, -4] n

end

end A232077.P3615355180948925411

namespace A232077

/-- `ogf((3+6x-2x^2-4x^3)/(1-3x-x^2-4x^3-4x^4))` -/
def P3615355180948925411.Spec : Prop :=
  ∀ n, P3615355180948925411.a n = A232077 (n + 1)

end A232077

/-! ## A232077.P15603656551578629924

`3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` with `a(0)=3, a(1)=15, a(2)=46, a(3)=161`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232077

/-- `3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` -/
def P15603656551578629924.Spec : Prop :=
  ∀ n, (P15603656551578629924.a n : ℤ) = A232077 (n + 1)

theorem P15603656551578629924.correct : P15603656551578629924.Spec := by
  intro n
  simp only [A232077, Nat.add_sub_cancel]

end A232077

/-! ## A232077.P18294654885227318164

`A278208(∑[n+2]+3)`
-/

namespace A232077.P18294654885227318164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A232077.P18294654885227318164

namespace A232077

/-- `A278208(∑[n+2]+3)` -/
def P18294654885227318164.Spec : Prop :=
  ∀ n, P18294654885227318164.a n = A232077 (n + 1)

end A232077

/-! ## A232077.P11294158753790644942

`A232076(∑[n]+1)`
-/

namespace A232077.P11294158753790644942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232077.P11294158753790644942

namespace A232077

/-- `A232076(∑[n]+1)` -/
def P11294158753790644942.Spec : Prop :=
  ∀ n, P11294158753790644942.a n = A232077 (n + 1)

end A232077

/-! ## A232077.P17925561859706997648

`record[gcd(A232076(n+1), A278208(n+1))]`
-/

namespace A232077.P17925561859706997648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232076 (n + 1)) (A278208 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232077.P17925561859706997648

namespace A232077

/-- `record[gcd(A232076(n+1), A278208(n+1))]` -/
def P17925561859706997648.Spec : Prop :=
  ∀ n, (P17925561859706997648.a n : ℤ) = A232077 (n + 1)

end A232077

/-!
# A232078: Number of (2+1) X (n+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232078, there is no canonical definition to state claims against.
-/

/-! ## A232078.P3846180087046506948

`A232076(∑[n+1]+2)`
-/

namespace A232078.P3846180087046506948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232078.P3846180087046506948

/-! ## A232078.P3992028185540528440

`record[root(A232076(n+3), A004736(n+1))]`
-/

namespace A232078.P3992028185540528440
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232076 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232078.P3992028185540528440

/-! ## A232078.P292084399264397090

`record[gcd(A084938(n+1), A232076(n+3))]`
-/

namespace A232078.P292084399264397090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 (n + 1)) (A232076 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232078.P292084399264397090

/-! ## A232078.P15645405032913399346

`record[A107727(n)*A232076(n+3)]`
-/

namespace A232078.P15645405032913399346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107727 n * A232076 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232078.P15645405032913399346

/-!
# A232079: Number of (3+1)X(n+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232079, there is no canonical definition to state claims against.
-/

/-! ## A232079.P2758618202209387683

`A232076(∑[n+2]+4)`
-/

namespace A232079.P2758618202209387683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232079.P2758618202209387683

/-! ## A232079.P16186577189840555803

`A232076(A167614(n+1))+A025469(n)`
-/

namespace A232079.P16186577189840555803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A167614 (n + 1)).toNat + A025469 n

end

end A232079.P16186577189840555803

/-! ## A232079.P1453715115659650151

`A232076(A167614(n+1))+A178798(n)`
-/

namespace A232079.P1453715115659650151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A167614 (n + 1)).toNat + A178798 n

end

end A232079.P1453715115659650151

/-! ## A232079.P10345967787380619889

`lcm(A033999(n), A232076(A167614(n+1)))`
-/

namespace A232079.P10345967787380619889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A232076 (A167614 (n + 1)).toNat)

end

end A232079.P10345967787380619889

/-! ## A232079.P2692144904271068226

`or(A000038(n), A232076(A167614(n+1)))`
-/

namespace A232079.P2692144904271068226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A232076 (A167614 (n + 1)).toNat)

end

end A232079.P2692144904271068226

/-!
# A232080: Number of (4+1)X(n+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232080, there is no canonical definition to state claims against.
-/

/-! ## A232080.P2412079016699707434

`A232076(A141214(n)+7)`
-/

namespace A232080.P2412079016699707434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A141214 n + 7).toNat

end

end A232080.P2412079016699707434

/-! ## A232080.P6425468956842780125

`A232076(A052905(n)+9)`
-/

namespace A232080.P6425468956842780125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A052905 n + 9).toNat

end

end A232080.P6425468956842780125

/-! ## A232080.P9800423359181026228

`A232076(A055999(n)+10)`
-/

namespace A232080.P9800423359181026228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A055999 n + 10).toNat

end

end A232080.P9800423359181026228

/-! ## A232080.P17961155271418785754

`A232076(A167614(n+2)+1)`
-/

namespace A232080.P17961155271418785754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A167614 (n + 2) + 1).toNat

end

end A232080.P17961155271418785754

/-! ## A232080.P11795206653687590896

`A232076(A167499(n+2)-1)`
-/

namespace A232080.P11795206653687590896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A167499 (n + 2) - 1).toNat

end

end A232080.P11795206653687590896

/-!
# A232081: Number of (5+1)X(n+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232081, there is no canonical definition to state claims against.
-/

/-! ## A232081.P10999219507939314110

`A232076(A155212(n)+13)`
-/

namespace A232081.P10999219507939314110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A155212 n + 13).toNat

end

end A232081.P10999219507939314110

/-! ## A232081.P12591411650876047582

`A232076(A056000(n)+15)`
-/

namespace A232081.P12591411650876047582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A056000 n + 15).toNat

end

end A232081.P12591411650876047582

/-! ## A232081.P811128186592186870

`A232076(A141214(n+1)+8)`
-/

namespace A232081.P811128186592186870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A141214 (n + 1) + 8).toNat

end

end A232081.P811128186592186870

/-! ## A232081.P15948973273331639158

`A232076(A034856(n+3)+7)`
-/

namespace A232081.P15948973273331639158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A034856 (n + 3) + 7).toNat

end

end A232081.P15948973273331639158

/-! ## A232081.P13778736364243698738

`A232076(A052905(n+1)+10)`
-/

namespace A232081.P13778736364243698738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A052905 (n + 1) + 10).toNat

end

end A232081.P13778736364243698738

/-!
# A232082: Number of (6+1)X(n+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232082, there is no canonical definition to state claims against.
-/

/-! ## A232082.P11434641556894952532

`A232076(A167614(n+4)+3)`
-/

namespace A232082.P11434641556894952532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A167614 (n + 4) + 3).toNat

end

end A232082.P11434641556894952532

/-! ## A232082.P4957003126160038824

`A232076(A141214(n+2)+9)`
-/

namespace A232082.P4957003126160038824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A141214 (n + 2) + 9).toNat

end

end A232082.P4957003126160038824

/-! ## A232082.P10420563485529608025

`A232076(A034856(n+4)+8)`
-/

namespace A232082.P10420563485529608025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A034856 (n + 4) + 8).toNat

end

end A232082.P10420563485529608025

/-! ## A232082.P12116934186290820531

`A232076(eq[7, A131818(n+1)])`
-/

namespace A232082.P12116934186290820531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232082.P12116934186290820531

/-! ## A232082.P5899954218472745735

`A232076(A055999(n+4)-(2*n+1))`
-/

namespace A232082.P5899954218472745735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A232082.P5899954218472745735

/-!
# A232083: Number of (7+1) X (n+1) 0..1 arrays with every element equal to some horizontal, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A232083, there is no canonical definition to state claims against.
-/

/-! ## A232083.P15545422871371358557

`A232076(eq[11, A066657(n)])`
-/

namespace A232083.P15545422871371358557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232083.P15545422871371358557

/-! ## A232083.P15106599637945651024

`A232076(eq[8, A131818(n+1)])`
-/

namespace A232083.P15106599637945651024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232083.P15106599637945651024

/-! ## A232083.P16388814621874320882

`A232076(A000124(n+7)-(n+1))`
-/

namespace A232083.P16388814621874320882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232076 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A232083.P16388814621874320882

/-!
# A232084: Least k such that prime(n) + 2^(k+L) - 2^L is a prime, where L is the length of binary representation of prime(n): L = A070939(A000040(n)). a(n) = -1 if no such k exists.

The programs for A232084, there is no canonical definition to state claims against.
-/

/-! ## A232084.P8276054890970916017

`gcd(A053644(n), A182768(A011782(n)))`
-/

namespace A232084.P8276054890970916017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053644 n) (A182768 (A011782 n).toNat)

end

end A232084.P8276054890970916017

/-! ## A232084.P9153975430477713137

`A059268(A000120(Δ[A075276(n+1)]))`
-/

namespace A232084.P9153975430477713137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A000120 (f1 (n + 1) - f1 n).toNat).toNat

end

end A232084.P9153975430477713137

/-! ## A232084.P17907534509193428140

`A003641(xor(A001045(n), A128390(n+1)))`
-/

namespace A232084.P17907534509193428140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003641 (Int.xor (A001045 n) (A128390 (n + 1))).toNat

end

end A232084.P17907534509193428140

/-! ## A232084.P8643902632087831895

`A088570(A105140(n+3)^A006928(n+2))`
-/

namespace A232084.P8643902632087831895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (SequenceMachineLib.roundAway ((A105140 (n + 3) : ℚ) ^ (A006928 (n + 2) : ℤ))).toNat

end

end A232084.P8643902632087831895

/-! ## A232084.P7309967568914110408

`gcd(A006370(n+2), A016777(A379290(2*(n+2))))`
-/

namespace A232084.P7309967568914110408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006370 (n + 2)) (A016777 (A379290 (2 * (n + 2))).toNat)

end

end A232084.P7309967568914110408

/-!
# A232085: Primes that can be written in binary representation as concatenation of two primes. That is, primes representable as p * 2^L + q, where p and q are primes, and L is the length of binary representation of q: L = A070939(q).

The programs for A232085, there is no canonical definition to state claims against.
-/

/-! ## A232085.P4674051446172525562

`A090423(lt[A047993(n+1), A344372(n+1)])`
-/

namespace A232085.P4674051446172525562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090423 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232085.P4674051446172525562

/-! ## A232085.P6950310694351611201

`A090423(lt[A047993(n+1), A344371(2*(n+1))])`
-/

namespace A232085.P6950310694351611201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344371 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090423 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232085.P6950310694351611201

/-! ## A232085.P14503682455317052277

`A090423(∑[val(A224341(n), 6)]+n+1)`
-/

namespace A232085.P14503682455317052277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224341 n).toNat 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090423 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A232085.P14503682455317052277

/-!
# A232088: Table read by rows: Replace last term of the n-th row with 1,1,2,4,...,2^n to get the next row.

The programs for A232088, there is no canonical definition to state claims against.
-/

/-! ## A232088.P16325971853241608159

`A160467(eq[8, A245564(n)])`
-/

namespace A232088.P16325971853241608159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232088.P16325971853241608159

/-! ## A232088.P6187694053898304401

`A182105(eq[A004525(n), A256992(n+1)])`
-/

namespace A232088.P6187694053898304401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A232088.P6187694053898304401

/-! ## A232088.P89467798569845407

`gcd(A000569(n+2), A329618(A000569(n+1)))`
-/

namespace A232088.P89467798569845407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000569 (n + 2)) (A329618 (A000569 (n + 1)).toNat)

end

end A232088.P89467798569845407

/-! ## A232088.P3868917165027452733

`A321994(A194297(n+1)*A209314(n+1)+1)`
-/

namespace A232088.P3868917165027452733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (A194297 (n + 1) * A209314 (n + 1) + 1).toNat

end

end A232088.P3868917165027452733

/-!
# A232089: Table read by rows, which consist of 1 followed by 2^k, 0 <= k < n ; n = 0,1,2,3,...

The programs for A232089, the canonical program `A232089.P13658100046472038826` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232089 has offset 0).

The definition of A232089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232089.P13658100046472038826

`A011782(col(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232089

/-- `A011782(col(n))` -/
def P13658100046472038826.Spec : Prop :=
  ∀ n, P13658100046472038826.a n = A232089 n

theorem P13658100046472038826.correct : P13658100046472038826.Spec := by
  intro n
  simp only [A232089]

end A232089

/-! ## A232089.P17491882914113960771

`ceil(2^(col(n)-1))`
-/

namespace A232089.P17491882914113960771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - 1 : ℤ)⌉

end

end A232089.P17491882914113960771

namespace A232089

/-- `ceil(2^(col(n)-1))` -/
def P17491882914113960771.Spec : Prop :=
  ∀ n, P17491882914113960771.a n = A232089 n

end A232089

/-! ## A232089.P399043246210328375

`round(2^(col(n)-1))`
-/

namespace A232089.P399043246210328375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - 1 : ℤ))

end

end A232089.P399043246210328375

namespace A232089

/-- `round(2^(col(n)-1))` -/
def P399043246210328375.Spec : Prop :=
  ∀ n, P399043246210328375.a n = A232089 n

end A232089

/-! ## A232089.P12982251147897994833

`ceil(2^col(n)/2)`
-/

namespace A232089.P12982251147897994833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ SequenceMachineLib.triCol n : ℚ) / 2⌉

end

end A232089.P12982251147897994833

namespace A232089

/-- `ceil(2^col(n)/2)` -/
def P12982251147897994833.Spec : Prop :=
  ∀ n, P12982251147897994833.a n = A232089 n

end A232089

/-! ## A232089.P10975225726445968795

`round(2^col(n)/2)`
-/

namespace A232089.P10975225726445968795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ SequenceMachineLib.triCol n : ℚ) / 2)

end

end A232089.P10975225726445968795

namespace A232089

/-- `round(2^col(n)/2)` -/
def P10975225726445968795.Spec : Prop :=
  ∀ n, P10975225726445968795.a n = A232089 n

end A232089

/-! ## A232089.P4475943140223049158

`T(n-1,k)+2*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A232089.P4475943140223049158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A232089.P4475943140223049158

namespace A232089

/-- `T(n-1,k)+2*(T(n-1,k-1)-T(n-2,k-1))` -/
def P4475943140223049158.Spec : Prop :=
  ∀ n, P4475943140223049158.a n = A232089 n

end A232089

/-! ## A232089.P14250876603479299074

`T(n-1,k)+2*(T(n,k-1)-T(n-2,k-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A232089.P14250876603479299074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A232089.P14250876603479299074

namespace A232089

/-- `T(n-1,k)+2*(T(n,k-1)-T(n-2,k-1))` -/
def P14250876603479299074.Spec : Prop :=
  ∀ n, P14250876603479299074.a n = A232089 n

end A232089

/-! ## A232089.P10875343362462719384

`T(n-1,k)-2*(T(n-2,k-1)-T(n-1,k-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A232089.P10875343362462719384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUpLeft a n)

end

end A232089.P10875343362462719384

namespace A232089

/-- `T(n-1,k)-2*(T(n-2,k-1)-T(n-1,k-1))` -/
def P10875343362462719384.Spec : Prop :=
  ∀ n, P10875343362462719384.a n = A232089 n

end A232089

/-! ## A232089.P9528241057267965725

`T(n-1,k)-2*(T(n-2,k-1)-T(n,k-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A232089.P9528241057267965725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n)

end

end A232089.P9528241057267965725

namespace A232089

/-- `T(n-1,k)-2*(T(n-2,k-1)-T(n,k-1))` -/
def P9528241057267965725.Spec : Prop :=
  ∀ n, P9528241057267965725.a n = A232089 n

end A232089

/-! ## A232089.P5318574866359341543

`ceil(2^(n-C(∑[char[∑[n]]], 2))/2)`
-/

namespace A232089.P5318574866359341543
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) / 2⌉

end

end A232089.P5318574866359341543

namespace A232089

/-- `ceil(2^(n-C(∑[char[∑[n]]], 2))/2)` -/
def P5318574866359341543.Spec : Prop :=
  ∀ n, P5318574866359341543.a n = A232089 n

end A232089

/-! ## A232089.P14743584542318332549

`round(2^(n-C(∑[char[∑[n]]], 2))/2)`
-/

namespace A232089.P14743584542318332549
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) / 2)

end

end A232089.P14743584542318332549

namespace A232089

/-- `round(2^(n-C(∑[char[∑[n]]], 2))/2)` -/
def P14743584542318332549.Spec : Prop :=
  ∀ n, P14743584542318332549.a n = A232089 n

end A232089

/-! ## A232089.P15141999437752041669

`floor(cosh(log(2^(n-C(∑[char[∑[n]]], 2)))))`
-/

namespace A232089.P15141999437752041669
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) : ℝ))⌋

end

end A232089.P15141999437752041669

namespace A232089

/-- `floor(cosh(log(2^(n-C(∑[char[∑[n]]], 2)))))` -/
def P15141999437752041669.Spec : Prop :=
  ∀ n, P15141999437752041669.a n = A232089 n

end A232089

/-! ## A232089.P5245312340903588769

`round(cosh(log(2^(n-C(∑[char[∑[n]]], 2)))))`
-/

namespace A232089.P5245312340903588769
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) : ℝ)))

end

end A232089.P5245312340903588769

namespace A232089

/-- `round(cosh(log(2^(n-C(∑[char[∑[n]]], 2)))))` -/
def P5245312340903588769.Spec : Prop :=
  ∀ n, P5245312340903588769.a n = A232089 n

end A232089

/-! ## A232089.P2135721934487074394

`ceil(A059268(n)/2)`
-/

namespace A232089.P2135721934487074394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059268 n : ℚ) / 2⌉

end

end A232089.P2135721934487074394

namespace A232089

/-- `ceil(A059268(n)/2)` -/
def P2135721934487074394.Spec : Prop :=
  ∀ n, P2135721934487074394.a n = A232089 n

end A232089

/-! ## A232089.P3079092920258590385

`A166444(col(n)+1)`
-/

namespace A232089.P3079092920258590385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (SequenceMachineLib.triCol n + 1)

end

end A232089.P3079092920258590385

namespace A232089

/-- `A166444(col(n)+1)` -/
def P3079092920258590385.Spec : Prop :=
  ∀ n, P3079092920258590385.a n = A232089 n

end A232089

/-! ## A232089.P2499147134389190438

`A166918(char[∑[n]]+n)`
-/

namespace A232089.P2499147134389190438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A232089.P2499147134389190438

namespace A232089

/-- `A166918(char[∑[n]]+n)` -/
def P2499147134389190438.Spec : Prop :=
  ∀ n, P2499147134389190438.a n = A232089 n

end A232089

/-! ## A232089.P8375053107903132202

`ceil(2^(A002262(n)-1))`
-/

namespace A232089.P8375053107903132202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A002262 n - 1 : ℤ)⌉

end

end A232089.P8375053107903132202

namespace A232089

/-- `ceil(2^(A002262(n)-1))` -/
def P8375053107903132202.Spec : Prop :=
  ∀ n, P8375053107903132202.a n = A232089 n

end A232089

/-! ## A232089.P6000865679439985525

`2^(A144328(n+1)-1)`
-/

namespace A232089.P6000865679439985525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A144328 (n + 1) - 1 : ℤ)

end

end A232089.P6000865679439985525

namespace A232089

/-- `2^(A144328(n+1)-1)` -/
def P6000865679439985525.Spec : Prop :=
  ∀ n, P6000865679439985525.a n = (A232089 n : ℚ)

end A232089

/-! ## A232089.P663423421712315705

`A011782(A002262(n))`
-/

namespace A232089.P663423421712315705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat

end

end A232089.P663423421712315705

namespace A232089

/-- `A011782(A002262(n))` -/
def P663423421712315705.Spec : Prop :=
  ∀ n, P663423421712315705.a n = A232089 n

end A232089

/-! ## A232089.P18027725872788484529

`A039991(A112367(n))`
-/

namespace A232089.P18027725872788484529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A112367 n).toNat

end

end A232089.P18027725872788484529

namespace A232089

/-- `A039991(A112367(n))` -/
def P18027725872788484529.Spec : Prop :=
  ∀ n, P18027725872788484529.a n = A232089 n

end A232089

/-!
# A232091: Smallest square or promic (oblong) number greater than or equal to n.

The programs for A232091, the canonical program `A232091.P4560155968691293298` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232091 has offset 0).

The definition of A232091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232091.P7383595533327966816

`ceil(sqrt(n))*round(sqrt(n))`
-/

namespace A232091.P7383595533327966816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ * SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A232091.P7383595533327966816

namespace A232091

/-- `ceil(sqrt(n))*round(sqrt(n))` -/
def P7383595533327966816.Spec : Prop :=
  ∀ n, P7383595533327966816.a n = A232091 n

end A232091

/-! ## A232091.P6249855279916638848

`A002620(ceil(2*sqrt(n)))`
-/

namespace A232091.P6249855279916638848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ⌈2 * Real.sqrt (n : ℝ)⌉.toNat

end

end A232091.P6249855279916638848

namespace A232091

/-- `A002620(ceil(2*sqrt(n)))` -/
def P6249855279916638848.Spec : Prop :=
  ∀ n, P6249855279916638848.a n = A232091 n

end A232091

/-! ## A232091.P2507466856788451454

`sqrt(round(sqrt(n))²*A048761(n))`
-/

namespace A232091.P2507466856788451454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 * A048761 n : ℝ)

end

end A232091.P2507466856788451454

namespace A232091

/-- `sqrt(round(sqrt(n))²*A048761(n))` -/
def P2507466856788451454.Spec : Prop :=
  ∀ n, P2507466856788451454.a n = (A232091 n : ℝ)

end A232091

/-! ## A232091.P14774084270458311256

`floor((ceil(sqrt(A004277(n)+2*n))/2)²)`
-/

namespace A232091.P14774084270458311256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌈Real.sqrt (A004277 n + (2 * n : ℤ) : ℝ)⌉ : ℚ) / 2) ^ 2⌋

end

end A232091.P14774084270458311256

namespace A232091

/-- `floor((ceil(sqrt(A004277(n)+2*n))/2)²)` -/
def P14774084270458311256.Spec : Prop :=
  ∀ n, P14774084270458311256.a n = A232091 n

end A232091

/-! ## A232091.P4560155968691293298

`A008238(A027709(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232091

/-- `A008238(A027709(n))` -/
def P4560155968691293298.Spec : Prop :=
  ∀ n, P4560155968691293298.a n = A232091 n

theorem P4560155968691293298.correct : P4560155968691293298.Spec := by
  intro n
  simp only [A232091]

end A232091

/-! ## A232091.P10699285374821835760

`A008217(A027709(n)+1)`
-/

namespace A232091.P10699285374821835760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A027709 n + 1).toNat

end

end A232091.P10699285374821835760

namespace A232091

/-- `A008217(A027709(n)+1)` -/
def P10699285374821835760.Spec : Prop :=
  ∀ n, P10699285374821835760.a n = A232091 n

end A232091

/-! ## A232091.P9288479434626764640

`A033638(A027709(n)/2)-1`
-/

namespace A232091.P9288479434626764640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (SequenceMachineLib.roundAway ((A027709 n : ℚ) / 2)).toNat - 1

end

end A232091.P9288479434626764640

namespace A232091

/-- `A033638(A027709(n)/2)-1` -/
def P9288479434626764640.Spec : Prop :=
  ∀ n, P9288479434626764640.a n = A232091 n

end A232091

/-! ## A232091.P17348960816245058676

`A007590(A027709(n)/2)/2`
-/

namespace A232091.P17348960816245058676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (SequenceMachineLib.roundAway ((A027709 n : ℚ) / 2)).toNat : ℚ) / 2

end

end A232091.P17348960816245058676

namespace A232091

/-- `A007590(A027709(n)/2)/2` -/
def P17348960816245058676.Spec : Prop :=
  ∀ n, P17348960816245058676.a n = (A232091 n : ℚ)

end A232091

/-! ## A232091.P3034253455839805413

`A008642(A235382(n))-A235382(n)`
-/

namespace A232091.P3034253455839805413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A235382 n).toNat - A235382 n

end

end A232091.P3034253455839805413

namespace A232091

/-- `A008642(A235382(n))-A235382(n)` -/
def P3034253455839805413.Spec : Prop :=
  ∀ n, P3034253455839805413.a n = A232091 n

end A232091

/-! ## A232091.P136416089591859040

`A135034(n)*A368941(n)-A135034(n)`
-/

namespace A232091.P136416089591859040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 n * A368941 n - A135034 n

end

end A232091.P136416089591859040

namespace A232091

/-- `A135034(n)*A368941(n)-A135034(n)` -/
def P136416089591859040.Spec : Prop :=
  ∀ n, P136416089591859040.a n = A232091 n

end A232091

/-! ## A232091.P1456596541533804789

`A000194(n)+A000194(n)*A000194(A028391(n))`
-/

namespace A232091.P1456596541533804789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n + A000194 n * A000194 (A028391 n).toNat

end

end A232091.P1456596541533804789

namespace A232091

/-- `A000194(n)+A000194(n)*A000194(A028391(n))` -/
def P1456596541533804789.Spec : Prop :=
  ∀ n, P1456596541533804789.a n = A232091 n

end A232091

/-! ## A232091.P15979026478386370326

`A000194(n)+A000194(n)*A000194(A056847(n))`
-/

namespace A232091.P15979026478386370326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n + A000194 n * A000194 (A056847 n).toNat

end

end A232091.P15979026478386370326

namespace A232091

/-- `A000194(n)+A000194(n)*A000194(A056847(n))` -/
def P15979026478386370326.Spec : Prop :=
  ∀ n, P15979026478386370326.a n = A232091 n

end A232091

/-! ## A232091.P11104671947936408491

`A038759(A053188(n)+n)`
-/

namespace A232091.P11104671947936408491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 (A053188 n + (n : ℤ)).toNat

end

end A232091.P11104671947936408491

namespace A232091

/-- `A038759(A053188(n)+n)` -/
def P11104671947936408491.Spec : Prop :=
  ∀ n, P11104671947936408491.a n = A232091 n

end A232091

/-! ## A232091.P450208865344627562

`A206224(A174805(n))`
-/

namespace A232091.P450208865344627562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206224 (A174805 n).toNat

end

end A232091.P450208865344627562

namespace A232091

/-- `A206224(A174805(n))` -/
def P450208865344627562.Spec : Prop :=
  ∀ n, P450208865344627562.a n = A232091 n

end A232091

/-! ## A232091.P11137415519426645117

`A206224(A186350(n+1))`
-/

namespace A232091.P11137415519426645117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206224 (A186350 (n + 1)).toNat

end

end A232091.P11137415519426645117

namespace A232091

/-- `A206224(A186350(n+1))` -/
def P11137415519426645117.Spec : Prop :=
  ∀ n, P11137415519426645117.a n = A232091 n

end A232091

/-! ## A232091.P5736867657523790673

`A206224(A000267(n)+n)`
-/

namespace A232091.P5736867657523790673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206224 (A000267 n + (n : ℤ)).toNat

end

end A232091.P5736867657523790673

namespace A232091

/-- `A206224(A000267(n)+n)` -/
def P5736867657523790673.Spec : Prop :=
  ∀ n, P5736867657523790673.a n = A232091 n

end A232091

/-! ## A232091.P5385337116252634555

`A206224(A049068(n+1)-2)`
-/

namespace A232091.P5385337116252634555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206224 (A049068 (n + 1) - 2).toNat

end

end A232091.P5385337116252634555

namespace A232091

/-- `A206224(A049068(n+1)-2)` -/
def P5385337116252634555.Spec : Prop :=
  ∀ n, P5385337116252634555.a n = A232091 n

end A232091

/-! ## A232091.P4455645061229211524

`A206224(A055086(n)+n+1)`
-/

namespace A232091.P4455645061229211524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206224 (A055086 n + (n + 1 : ℤ)).toNat

end

end A232091.P4455645061229211524

namespace A232091

/-- `A206224(A055086(n)+n+1)` -/
def P4455645061229211524.Spec : Prop :=
  ∀ n, P4455645061229211524.a n = A232091 n

end A232091

/-! ## A232091.P17560814637277458808

`record[(n+1)%A038722(n+1)]-n`
-/

namespace A232091.P17560814637277458808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A038722 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A232091.P17560814637277458808

namespace A232091

/-- `record[(n+1)%A038722(n+1)]-n` -/
def P17560814637277458808.Spec : Prop :=
  ∀ n, P17560814637277458808.a n = A232091 n

end A232091

/-! ## A232091.P6522549423811335655

`eq[1, A162319(A066182(n+1))]-n`
-/

namespace A232091.P6522549423811335655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162319 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A232091.P6522549423811335655

namespace A232091

/-- `eq[1, A162319(A066182(n+1))]-n` -/
def P6522549423811335655.Spec : Prop :=
  ∀ n, P6522549423811335655.a n = A232091 n

end A232091

/-!
# A232093: Position of 7^n among 7-smooth numbers (A002473).

The programs for A232093, there is no canonical definition to state claims against.
-/

/-! ## A232093.P14058527132031583946

`A242727(n+1)+A187449(A103745(n+1))`
-/

namespace A232093.P14058527132031583946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242727 (n + 1) + A187449 (A103745 (n + 1)).toNat

end

end A232093.P14058527132031583946

/-! ## A232093.P3984017243898578796

`A132117(n+1)-A001221(A021034(n))`
-/

namespace A232093.P3984017243898578796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132117 (n + 1) - A001221 (A021034 n).toNat

end

end A232093.P3984017243898578796

/-!
# A232094: a(n) = A060130(A000217(n)); number of nonzero digits in factorial base representation (A007623) of 0+1+2+...+n.

The programs for A232094, the canonical program `A232094.P2245050724957225248` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232094 has offset 0).

The definition of A232094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060130, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A232094.P2245050724957225248

`A060130(A000217(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A232094

/-- `A060130(A000217(n))` -/
def P2245050724957225248.Spec : Prop :=
  ∀ n, P2245050724957225248.a n = A232094 n

theorem P2245050724957225248.correct : P2245050724957225248.Spec := by
  intro n
  simp only [A232094]

end A232094

/-! ## A232094.P13274468552755243663

`A060130(∑[n])`
-/

namespace A232094.P13274468552755243663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232094.P13274468552755243663

namespace A232094

/-- `A060130(∑[n])` -/
def P13274468552755243663.Spec : Prop :=
  ∀ n, P13274468552755243663.a n = A232094 n

end A232094

/-! ## A232094.P4197360326347920726

`abs(abs(A060130(C(n+1, 2))-n)-n)`
-/

namespace A232094.P4197360326347920726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A060130 (Nat.choose (n + 1) 2) - (n : ℤ)| - (n : ℤ))|

end

end A232094.P4197360326347920726

namespace A232094

/-- `abs(abs(A060130(C(n+1, 2))-n)-n)` -/
def P4197360326347920726.Spec : Prop :=
  ∀ n, P4197360326347920726.a n = A232094 n

end A232094

/-! ## A232094.P11735140158311093458

`A000120(A275727(∑[n]))`
-/

namespace A232094.P11735140158311093458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A275727 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232094.P11735140158311093458

namespace A232094

/-- `A000120(A275727(∑[n]))` -/
def P11735140158311093458.Spec : Prop :=
  ∀ n, P11735140158311093458.a n = A232094 n

end A232094

/-! ## A232094.P14894802214432971596

`A001222(A275734(∑[n]))`
-/

namespace A232094.P14894802214432971596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275734 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232094.P14894802214432971596

namespace A232094

/-- `A001222(A275734(∑[n]))` -/
def P14894802214432971596.Spec : Prop :=
  ∀ n, P14894802214432971596.a n = A232094 n

end A232094

/-! ## A232094.P12788740240772888107

`A001222(A275735(∑[n]))`
-/

namespace A232094.P12788740240772888107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275735 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232094.P12788740240772888107

namespace A232094

/-- `A001222(A275735(∑[n]))` -/
def P12788740240772888107.Spec : Prop :=
  ∀ n, P12788740240772888107.a n = A232094 n

end A232094

/-! ## A232094.P10448326965085704241

`A001222(A278234(∑[n]))`
-/

namespace A232094.P10448326965085704241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278234 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232094.P10448326965085704241

namespace A232094

/-- `A001222(A278234(∑[n]))` -/
def P10448326965085704241.Spec : Prop :=
  ∀ n, P10448326965085704241.a n = A232094 n

end A232094

/-! ## A232094.P11596456404450367683

`A001222(A278235(∑[n]))`
-/

namespace A232094.P11596456404450367683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278235 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232094.P11596456404450367683

namespace A232094

/-- `A001222(A278235(∑[n]))` -/
def P11596456404450367683.Spec : Prop :=
  ∀ n, P11596456404450367683.a n = A232094 n

end A232094

/-! ## A232094.P10502298640983469264

`A001222(A275733(∑[n]))`
-/

namespace A232094.P10502298640983469264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275733 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232094.P10502298640983469264

namespace A232094

/-- `A001222(A275733(∑[n]))` -/
def P10502298640983469264.Spec : Prop :=
  ∀ n, P10502298640983469264.a n = A232094 n

end A232094

/-! ## A232094.P7465277264399898943

`A034968(A348138(∑[n]))`
-/

namespace A232094.P7465277264399898943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A348138 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232094.P7465277264399898943

namespace A232094

/-- `A034968(A348138(∑[n]))` -/
def P7465277264399898943.Spec : Prop :=
  ∀ n, P7465277264399898943.a n = A232094 n

end A232094

/-!
# A232095: Minimal number of factorials which add to 0+1+2+...+n; a(n) = A034968(A000217(n)).

The programs for A232095, the canonical program `A232095.P10152144582324022357` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232095 has offset 0).

The definition of A232095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A232095.P10152144582324022357

`A034968(A000217(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A232095

/-- `A034968(A000217(n))` -/
def P10152144582324022357.Spec : Prop :=
  ∀ n, P10152144582324022357.a n = A232095 n

theorem P10152144582324022357.correct : P10152144582324022357.Spec := by
  intro n
  simp only [A232095]

end A232095

/-! ## A232095.P17990146297348068155

`∑{digits}[A007623(∑[n]), #]`
-/

namespace A232095.P17990146297348068155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A232095.P17990146297348068155

namespace A232095

/-- `∑{digits}[A007623(∑[n]), #]` -/
def P17990146297348068155.Spec : Prop :=
  ∀ n, (P17990146297348068155.a n : ℤ) = A232095 n

end A232095

/-! ## A232095.P2412503702300856995

`∑[n]-A219650(floor(∑[n/2]))`
-/

namespace A232095.P2412503702300856995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A219650 ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋.toNat

end

end A232095.P2412503702300856995

namespace A232095

/-- `∑[n]-A219650(floor(∑[n/2]))` -/
def P2412503702300856995.Spec : Prop :=
  ∀ n, P2412503702300856995.a n = A232095 n

end A232095

/-! ## A232095.P12554128346354797981

`A056239(A275735(∑[n]))`
-/

namespace A232095.P12554128346354797981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A275735 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232095.P12554128346354797981

namespace A232095

/-- `A056239(A275735(∑[n]))` -/
def P12554128346354797981.Spec : Prop :=
  ∀ n, P12554128346354797981.a n = A232095 n

end A232095

/-! ## A232095.P17737718586342298328

`∑[n]-A219651(∑[n])`
-/

namespace A232095.P17737718586342298328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A219651 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A232095.P17737718586342298328

namespace A232095

/-- `∑[n]-A219651(∑[n])` -/
def P17737718586342298328.Spec : Prop :=
  ∀ n, P17737718586342298328.a n = A232095 n

end A232095

/-! ## A232095.P12958640304711831472

`(A000217(n)-A219651(A000217(n)))*A005131(3*n)`
-/

namespace A232095.P12958640304711831472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - A219651 (A000217 n).toNat) * A005131 (3 * n)

end

end A232095.P12958640304711831472

namespace A232095

/-- `(A000217(n)-A219651(A000217(n)))*A005131(3*n)` -/
def P12958640304711831472.Spec : Prop :=
  ∀ n, P12958640304711831472.a n = A232095 n

end A232095

/-! ## A232095.P5956214741283217408

`(A000217(n)-A219651(A000217(n)))%A000040(n+1)`
-/

namespace A232095.P5956214741283217408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n - A219651 (A000217 n).toNat) (A000040 (n + 1))

end

end A232095.P5956214741283217408

namespace A232095

/-- `(A000217(n)-A219651(A000217(n)))%A000040(n+1)` -/
def P5956214741283217408.Spec : Prop :=
  ∀ n, P5956214741283217408.a n = A232095 n

end A232095

/-! ## A232095.P3809726397791341331

`A034968(∑[n])`
-/

namespace A232095.P3809726397791341331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232095.P3809726397791341331

namespace A232095

/-- `A034968(∑[n])` -/
def P3809726397791341331.Spec : Prop :=
  ∀ n, P3809726397791341331.a n = A232095 n

end A232095

/-! ## A232095.P5856813203924947868

`A034968(lt[0, A010054(n)])%A069099(n+1)`
-/

namespace A232095.P5856813203924947868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A069099 (n + 1))

end

end A232095.P5856813203924947868

namespace A232095

/-- `A034968(lt[0, A010054(n)])%A069099(n+1)` -/
def P5856813203924947868.Spec : Prop :=
  ∀ n, P5856813203924947868.a n = A232095 n

end A232095

/-! ## A232095.P12485016481325344544

`A034968(record[A220691(n+1)])%A069099(n+1)`
-/

namespace A232095.P12485016481325344544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034968 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A069099 (n + 1))

end

end A232095.P12485016481325344544

namespace A232095

/-- `A034968(record[A220691(n+1)])%A069099(n+1)` -/
def P12485016481325344544.Spec : Prop :=
  ∀ n, P12485016481325344544.a n = A232095 n

end A232095

/-! ## A232095.P7374943588387144443

`A276146(A225901(∑[n]))`
-/

namespace A232095.P7374943588387144443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276146 (A225901 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232095.P7374943588387144443

namespace A232095

/-- `A276146(A225901(∑[n]))` -/
def P7374943588387144443.Spec : Prop :=
  ∀ n, P7374943588387144443.a n = A232095 n

end A232095

/-!
# A232096: a(n) = largest m such that m! divides 1+2+...+n; a(n) = A055881(A000217(n)).

The programs for A232096, the canonical program `A232096.P3607466228667116580` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232096 has offset 1).

The definition of A232096 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A232096.P3607466228667116580

`A055881(A000217(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232096

/-- `A055881(A000217(n+1))` -/
def P3607466228667116580.Spec : Prop :=
  ∀ n, P3607466228667116580.a n = A232096 (n + 1)

theorem P3607466228667116580.correct : P3607466228667116580.Spec := by
  intro n
  simp only [A232096, Nat.add_sub_cancel]

end A232096

/-! ## A232096.P12065407412472529929

`∑{d}[∑[n+1], A316341(#)]`
-/

namespace A232096.P12065407412472529929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316341 d

end

end A232096.P12065407412472529929

namespace A232096

/-- `∑{d}[∑[n+1], A316341(#)]` -/
def P12065407412472529929.Spec : Prop :=
  ∀ n, P12065407412472529929.a n = A232096 (n + 1)

end A232096

/-! ## A232096.P2477241271575850984

`A040997(∑{d}[A000217(n+1), A316341(#)])`
-/

namespace A232096.P2477241271575850984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (∑ d ∈ Nat.divisors (f1 n).natAbs, A316341 d).toNat

end

end A232096.P2477241271575850984

namespace A232096

/-- `A040997(∑{d}[A000217(n+1), A316341(#)])` -/
def P2477241271575850984.Spec : Prop :=
  ∀ n, P2477241271575850984.a n = A232096 (n + 1)

end A232096

/-! ## A232096.P12281763404884733993

`val(A007623(∑[n+1]), 10)+1`
-/

namespace A232096.P12281763404884733993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007623 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 10 + 1

end

end A232096.P12281763404884733993

namespace A232096

/-- `val(A007623(∑[n+1]), 10)+1` -/
def P12281763404884733993.Spec : Prop :=
  ∀ n, (P12281763404884733993.a n : ℤ) = A232096 (n + 1)

end A232096

/-! ## A232096.P13272413636661809746

`∑{d}[∑[n+1], floor(2/A275735(#))]`
-/

namespace A232096.P13272413636661809746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊2 / (A275735 d : ℚ)⌋

end

end A232096.P13272413636661809746

namespace A232096

/-- `∑{d}[∑[n+1], floor(2/A275735(#))]` -/
def P13272413636661809746.Spec : Prop :=
  ∀ n, P13272413636661809746.a n = A232096 (n + 1)

end A232096

/-! ## A232096.P1025377580175142056

`A001511(A275727(∑[n+1]))`
-/

namespace A232096.P1025377580175142056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A275727 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232096.P1025377580175142056

namespace A232096

/-- `A001511(A275727(∑[n+1]))` -/
def P1025377580175142056.Spec : Prop :=
  ∀ n, P1025377580175142056.a n = A232096 (n + 1)

end A232096

/-! ## A232096.P8664257378917802964

`∑{d}[∑[n+1], A012245(#)]`
-/

namespace A232096.P8664257378917802964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A012245 d

end

end A232096.P8664257378917802964

namespace A232096

/-- `∑{d}[∑[n+1], A012245(#)]` -/
def P8664257378917802964.Spec : Prop :=
  ∀ n, P8664257378917802964.a n = A232096 (n + 1)

end A232096

/-! ## A232096.P15157819284576538090

`A055881(∑[n+1])`
-/

namespace A232096.P15157819284576538090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232096.P15157819284576538090

namespace A232096

/-- `A055881(∑[n+1])` -/
def P15157819284576538090.Spec : Prop :=
  ∀ n, P15157819284576538090.a n = A232096 (n + 1)

end A232096

/-! ## A232096.P9410224618189281050

`A230403(∑[n+1])+1`
-/

namespace A232096.P9410224618189281050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A232096.P9410224618189281050

namespace A232096

/-- `A230403(∑[n+1])+1` -/
def P9410224618189281050.Spec : Prop :=
  ∀ n, P9410224618189281050.a n = A232096 (n + 1)

end A232096

/-! ## A232096.P14349178510962776257

`∑{d}[∑[n+1], A151934(A034968(#)-1)]`
-/

namespace A232096.P14349178510962776257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151934 (A034968 d - 1).toNat

end

end A232096.P14349178510962776257

namespace A232096

/-- `∑{d}[∑[n+1], A151934(A034968(#)-1)]` -/
def P14349178510962776257.Spec : Prop :=
  ∀ n, P14349178510962776257.a n = A232096 (n + 1)

end A232096

/-!
# A232097: a(n) = least k such that 1+2+3+...+k (k-th triangular number) is a multiple of n!; a(n) = least k such that A232096(k) >= n.

The programs for A232097, there is no canonical definition to state claims against.
-/

/-! ## A232097.P16667509265472362945

`A011772((n+1)!)`
-/

namespace A232097.P16667509265472362945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (Nat.factorial (n + 1))

end

end A232097.P16667509265472362945

/-! ## A232097.P4686474761191311185

`A321366((n+1)!)-1`
-/

namespace A232097.P4686474761191311185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (Nat.factorial (n + 1)) - 1

end

end A232097.P4686474761191311185

/-! ## A232097.P6182332573080248557

`A291927(A056449(n))`
-/

namespace A232097.P6182332573080248557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291927 (A056449 n).toNat

end

end A232097.P6182332573080248557

/-!
# A232098: 

The programs for A232098, there is no canonical definition to state claims against.
-/

/-! ## A232098.P1246393882065664000

`A055874(A000188(n+1)*A007947(n+1))`
-/

namespace A232098.P1246393882065664000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A000188 (n + 1) * A007947 (n + 1)).toNat

end

end A232098.P1246393882065664000

/-!
# A232099: Numbers n such that {largest m such that 1, 2, ..., m divide n} is different from {largest m such that m! divides n^2}.

The programs for A232099, there is no canonical definition to state claims against.
-/

/-! ## A232099.P9888527885349551334

`A055926(A232100(n+1))`
-/

namespace A232099.P9888527885349551334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (A232100 (n + 1)).toNat

end

end A232099.P9888527885349551334

