import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C047
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

/-!
# A399400: Triangle read by rows: T(n,k) is the number of perfect matchings in the k-twisted 2*n X 2*n torus grid graph, 0 <= k <= n.

The programs for A399400, there is no canonical definition to state claims against.
-/

/-! ## A399400.P9479193139178128073

`A007203(A041605(n+1))`
-/

namespace A399400.P9479193139178128073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007203 (A041605 (n + 1)).toNat

end

end A399400.P9479193139178128073

/-!
# A399404: Number of asymmetric transitive relations on an n-element set.

The programs for A399404, there is no canonical definition to state claims against.
-/

/-! ## A399404.P1027429987645134205

`A130943(2*A098616(n))`
-/

namespace A399404.P1027429987645134205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130943 (2 * A098616 n).toNat

end

end A399404.P1027429987645134205

/-!
# A399405: a(n) = 6*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=3.

The programs for A399405, the canonical program `A399405.P16569053505981937419` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399405 has offset 0).

The definition of A399405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+10*a(n-2)` (program `A399405.P16569053505981937419`, by `A399405.P16569053505981937419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399405.P4433230492361259618

`ogf((1-3x)/(1-6x-10x^2))`
-/

namespace A399405.P4433230492361259618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, -10] n

end

end A399405.P4433230492361259618

namespace A399405

/-- `ogf((1-3x)/(1-6x-10x^2))` -/
def P4433230492361259618.Spec : Prop :=
  ∀ n, P4433230492361259618.a n = A399405 n

end A399405

/-! ## A399405.P16569053505981937419

`6*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399405

/-- `6*a(n-1)+10*a(n-2)` -/
def P16569053505981937419.Spec : Prop :=
  ∀ n, (P16569053505981937419.a n : ℤ) = A399405 n

theorem P16569053505981937419.correct : P16569053505981937419.Spec := by
  intro n
  simp only [A399405]

end A399405

/-!
# A399410: Order array, U, of the array W given by w(n, k) = k*(n + sqrt(1/2)), for n >= 1, k >= 1, a rectangular array, read by descending antidiagonals; see Comments.

The programs for A399410, there is no canonical definition to state claims against.
-/

/-! ## A399410.P9622368811192717321

`A399417(n+1)%(2^A134841(n))`
-/

namespace A399410.P9622368811192717321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399417 (n + 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A134841 n : ℤ)))

end

end A399410.P9622368811192717321

/-! ## A399410.P5068367467646250007

`A399417(n+1)+A000007(A134841(n))`
-/

namespace A399410.P5068367467646250007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399417 (n + 1) + A000007 (A134841 n).toNat

end

end A399410.P5068367467646250007

/-! ## A399410.P4386251891655202651

`A318982(A134841(n)²)*A399417(n+1)`
-/

namespace A399410.P4386251891655202651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318982 (A134841 n ^ 2).toNat * A399417 (n + 1)

end

end A399410.P4386251891655202651

/-! ## A399410.P4390251241202942053

`A399417(n+1)+A000007(A022004(n+1))`
-/

namespace A399410.P4390251241202942053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399417 (n + 1) + A000007 (A022004 (n + 1)).toNat

end

end A399410.P4390251241202942053

/-! ## A399410.P5466315549478061150

`A089026(A235289(n+1))*A399417(n+1)`
-/

namespace A399410.P5466315549478061150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A235289 (n + 1)).toNat * A399417 (n + 1)

end

end A399410.P5466315549478061150

/-! ## A399410.P17242137031467037988

`A060680(A001013(n+4))*A399417(n+1)`
-/

namespace A399410.P17242137031467037988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (A001013 (n + 4)).toNat * A399417 (n + 1)

end

end A399410.P17242137031467037988

/-! ## A399410.P6907220239166204069

`gcd(A022004(n+1), A134841(n))*A399417(n+1)`
-/

namespace A399410.P6907220239166204069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A022004 (n + 1)) (A134841 n) : ℤ) * A399417 (n + 1)

end

end A399410.P6907220239166204069

/-! ## A399410.P1632492376037249871

`A399417(n+1)+C(A134841(n), A006512(n+1))`
-/

namespace A399410.P1632492376037249871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399417 (n + 1) + (Nat.choose (A134841 n).toNat (A006512 (n + 1)).toNat : ℤ)

end

end A399410.P1632492376037249871

/-! ## A399410.P1421478227619087735

`A399417(n+1)+C(A134841(n), A050266(n+1))`
-/

namespace A399410.P1421478227619087735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399417 (n + 1) + (Nat.choose (A134841 n).toNat (A050266 (n + 1)).toNat : ℤ)

end

end A399410.P1421478227619087735

/-! ## A399410.P9173105440964255052

`A399417(n+1)+C(A134841(n), A072141(n+1))`
-/

namespace A399410.P9173105440964255052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399417 (n + 1) + (Nat.choose (A134841 n).toNat (A072141 (n + 1)).toNat : ℤ)

end

end A399410.P9173105440964255052

/-!
# A399411: Order array, U, of the array W given by w(n, k) = k*(n + sqrt(1/3)), for n >= 1, k >= 1, a rectangular array, read by descending antidiagonals; see Comments.

The programs for A399411, there is no canonical definition to state claims against.
-/

/-! ## A399411.P2454620245070643130

`A182849(n+1)-A155102(A104394(3*n+5))`
-/

namespace A399411.P2454620245070643130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182849 (n + 1) - A155102 (A104394 (3 * n + 5)).toNat

end

end A399411.P2454620245070643130

/-!
# A399412: Order array, U, of the array W given by w(n, k) = k*(n + sqrt(2) + sqrt(3)), for n >= 1, k >= 1, a rectangular array, read by descending antidiagonals; see Comments.

The programs for A399412, there is no canonical definition to state claims against.
-/

/-! ## A399412.P15953043246342330100

`A399416(n+1)%A134960(A262947(n))`
-/

namespace A399412.P15953043246342330100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399416 (n + 1)) (A134960 (A262947 n).toNat)

end

end A399412.P15953043246342330100

/-! ## A399412.P4006526077686396841

`A399416(n+1)+A000007(A131050(n+1))`
-/

namespace A399412.P4006526077686396841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399416 (n + 1) + A000007 (A131050 (n + 1)).toNat

end

end A399412.P4006526077686396841

/-! ## A399412.P12590736699665116891

`A399416(n+1)+A332671(A200920(n+1))`
-/

namespace A399412.P12590736699665116891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399416 (n + 1) + A332671 (A200920 (n + 1)).toNat

end

end A399412.P12590736699665116891

/-! ## A399412.P2439159995106616268

`A380467(A000043(n+1))*A399416(n+1)`
-/

namespace A399412.P2439159995106616268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (A000043 (n + 1)).toNat * A399416 (n + 1)

end

end A399412.P2439159995106616268

/-! ## A399412.P801165759397991729

`A399374(A002407(n+1))*A399416(n+1)`
-/

namespace A399412.P801165759397991729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399374 (A002407 (n + 1)).toNat * A399416 (n + 1)

end

end A399412.P801165759397991729

/-!
# A399419: Number of nonisomorphic simple hypergraphs with n vertices and trivial automorphism group, allowing isolated vertices and excluding the empty edge.

The programs for A399419, there is no canonical definition to state claims against.
-/

/-! ## A399419.P10853830703613598476

`A129955(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A399419.P10853830703613598476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A129955 (a (n - 1)).toNat

end

end A399419.P10853830703613598476

/-!
# A399420: Number of P-partitions of n into distinct parts where P is the labeled poset defined by a covers b if f(a) > f(b) where f(i) = floor(sqrt(2*i) + 1/2).

The programs for A399420, there is no canonical definition to state claims against.
-/

/-! ## A399420.P7616351876909366863

`A051764(A000079(n))+A032153(n)`
-/

namespace A399420.P7616351876909366863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A000079 n).toNat + A032153 n

end

end A399420.P7616351876909366863

/-! ## A399420.P1540199509599837721

`A382019(A072706(n))`
-/

namespace A399420.P1540199509599837721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A072706 n).toNat

end

end A399420.P1540199509599837721

/-! ## A399420.P12123700541557046584

`A220136(A060547(3*n+2))+A032153(n)`
-/

namespace A399420.P12123700541557046584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A060547 (3 * n + 2)).toNat + A032153 n

end

end A399420.P12123700541557046584

/-! ## A399420.P10000557517824704302

`2*A032228(n)-A360119(A222144(n+3))`
-/

namespace A399420.P10000557517824704302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032228 n - A360119 (A222144 (n + 3)).toNat

end

end A399420.P10000557517824704302

/-! ## A399420.P17161348340952058335

`or(A323431(n), A323460(A323423(n)))`
-/

namespace A399420.P17161348340952058335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323431 n) (A323460 (A323423 n).toNat)

end

end A399420.P17161348340952058335

/-!
# A399428: The number of chains in "0,1,2" Motzkin trees.

The programs for A399428, there is no canonical definition to state claims against.
-/

/-! ## A399428.P12708417011710973353

`A103221(record[4*a(n-1)-a(n-2)])` with `a(0)=5, a(1)=1, a(2)=5`
-/

namespace A399428.P12708417011710973353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 5] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399428.P12708417011710973353

/-! ## A399428.P17359911315612431781

`∑[A006253(A001096(n))]`
-/

namespace A399428.P17359911315612431781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (A001096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399428.P17359911315612431781

/-!
# A399430: b * c * d where b >= c >= d >= 0 ordered by b then c then d.

The programs for A399430, the canonical program `A399430.P14427685385738939723` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399430 has offset 1).

The definition of A399430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399430.P14427685385738939723

`A056556(n)*A056557(n)*A056558(n)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A399430

/-- `A056556(n)*A056557(n)*A056558(n)` -/
def P14427685385738939723.Spec : Prop :=
  ∀ n, P14427685385738939723.a n = A399430 (n + 1)

theorem P14427685385738939723.correct : P14427685385738939723.Spec := by
  intro n
  simp only [A399430, Nat.add_sub_cancel]

end A399430

/-!
# A399431: a(n) = (2^prime(n) - 2)/prime(n) + 2.

The programs for A399431, the canonical program `A399431.P9696602572664343429` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399431 has offset 1).

The definition of A399431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399431.P9696602572664343429

`(2^A000040(n+1)-2)/A000040(n+1)+2`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A399431

/-- `(2^A000040(n+1)-2)/A000040(n+1)+2` -/
def P9696602572664343429.Spec : Prop :=
  ∀ n, P9696602572664343429.a n = (A399431 (n + 1) : ℚ)

end A399431

/-! ## A399431.P16019387317116520968

`A064535(1+n)+2`
-/

namespace A399431.P16019387317116520968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064535 (1 + n) + 2

end

end A399431.P16019387317116520968

namespace A399431

/-- `A064535(1+n)+2` -/
def P16019387317116520968.Spec : Prop :=
  ∀ n, P16019387317116520968.a n = A399431 (n + 1)

end A399431

/-! ## A399431.P17950363183732746571

`A164740(1+n)+3`
-/

namespace A399431.P17950363183732746571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164740 (1 + n) + 3

end

end A399431.P17950363183732746571

namespace A399431

/-- `A164740(1+n)+3` -/
def P17950363183732746571.Spec : Prop :=
  ∀ n, P17950363183732746571.a n = A399431 (n + 1)

end A399431

/-! ## A399431.P14300043623271759388

`A059966(record[or(1, ∑{p}[2*n+1, #])])+2`
-/

namespace A399431.P14300043623271759388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 2

end

end A399431.P14300043623271759388

namespace A399431

/-- `A059966(record[or(1, ∑{p}[2*n+1, #])])+2` -/
def P14300043623271759388.Spec : Prop :=
  ∀ n, P14300043623271759388.a n = A399431 (n + 1)

end A399431

/-! ## A399431.P7616034683884387886

`A000031(Δ[A007504(n)])`
-/

namespace A399431.P7616034683884387886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f1 (n + 1) - f1 n).toNat

end

end A399431.P7616034683884387886

namespace A399431

/-- `A000031(Δ[A007504(n)])` -/
def P7616034683884387886.Spec : Prop :=
  ∀ n, P7616034683884387886.a n = A399431 (n + 1)

end A399431

/-! ## A399431.P11290205123305650098

`A000031(record[A051698(n)])`
-/

namespace A399431.P11290205123305650098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399431.P11290205123305650098

namespace A399431

/-- `A000031(record[A051698(n)])` -/
def P11290205123305650098.Spec : Prop :=
  ∀ n, P11290205123305650098.a n = A399431 (n + 1)

end A399431

/-! ## A399431.P14058140859034384535

`A000031(A000040(1+n))`
-/

namespace A399431.P14058140859034384535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A000040 (1 + n)).toNat

end

end A399431.P14058140859034384535

namespace A399431

/-- `A000031(A000040(1+n))` -/
def P14058140859034384535.Spec : Prop :=
  ∀ n, P14058140859034384535.a n = A399431 (n + 1)

end A399431

/-! ## A399431.P18393498058650110281

`A000031(eq[1, A003415(n)])`
-/

namespace A399431.P18393498058650110281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A399431.P18393498058650110281

namespace A399431

/-- `A000031(eq[1, A003415(n)])` -/
def P18393498058650110281.Spec : Prop :=
  ∀ n, P18393498058650110281.a n = A399431 (n + 1)

end A399431

/-! ## A399431.P8406021706414156994

`A000031(sqrt(A001248(n+1)))`
-/

namespace A399431.P8406021706414156994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A399431.P8406021706414156994

namespace A399431

/-- `A000031(sqrt(A001248(n+1)))` -/
def P8406021706414156994.Spec : Prop :=
  ∀ n, P8406021706414156994.a n = A399431 (n + 1)

end A399431

/-! ## A399431.P16890779348884879760

`A000031(record[A362463(n+3)])`
-/

namespace A399431.P16890779348884879760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362463 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399431.P16890779348884879760

namespace A399431

/-- `A000031(record[A362463(n+3)])` -/
def P16890779348884879760.Spec : Prop :=
  ∀ n, P16890779348884879760.a n = A399431 (n + 1)

end A399431

/-!
# A399432: Irregular triangle read by rows: integers from 1 to n that share no prime factor with any other integer from 1 to n.

The programs for A399432, there is no canonical definition to state claims against.
-/

/-! ## A399432.P11080196227940364945

`filter[A384147(n+1), A083187(#)]`
-/

namespace A399432.P11080196227940364945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083187 (f1 j).toNat = 1) n)

end

end A399432.P11080196227940364945

/-! ## A399432.P16190865960788693416

`filter[A384147(n+1), A080339(#)]`
-/

namespace A399432.P16190865960788693416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A399432.P16190865960788693416

/-! ## A399432.P8483927796417777946

`filter[A384147(n+1), A192490(#)]`
-/

namespace A399432.P8483927796417777946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192490 (f1 j).toNat = 1) n)

end

end A399432.P8483927796417777946

/-! ## A399432.P7621900103857850571

`filter[A384147(n+1), A297086(#)]`
-/

namespace A399432.P7621900103857850571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A399432.P7621900103857850571

/-! ## A399432.P12232183249920639390

`A124769(A096360(n+1))`
-/

namespace A399432.P12232183249920639390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A096360 (n + 1)).toNat

end

end A399432.P12232183249920639390

/-!
# A399435: a(n) is the numerator of the probability that two heads will turn up in succession in tossing n times a coin.

The programs for A399435, there is no canonical definition to state claims against.
-/

/-! ## A399435.P12389653454469624066

`A093411(A008466(n+1))`
-/

namespace A399435.P12389653454469624066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A008466 (n + 1)).toNat

end

end A399435.P12389653454469624066

/-! ## A399435.P9137334142928976629

`A093411(A167821(n+1)+A000045(n))`
-/

namespace A399435.P9137334142928976629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A167821 (n + 1) + A000045 n).toNat

end

end A399435.P9137334142928976629

/-! ## A399435.P17756222930672461371

`A093411(A212804(n+1)+A167821(n+1))`
-/

namespace A399435.P17756222930672461371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A212804 (n + 1) + A167821 (n + 1)).toNat

end

end A399435.P17756222930672461371

/-! ## A399435.P8893740354696365711

`A093411(A167821(n+1)+A001611(n)-1)`
-/

namespace A399435.P8893740354696365711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A167821 (n + 1) + (A001611 n - 1)).toNat

end

end A399435.P8893740354696365711

/-! ## A399435.P10024200238913524773

`A093411(A167821(n+1)+A103609(2*n))`
-/

namespace A399435.P10024200238913524773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A167821 (n + 1) + A103609 (2 * n)).toNat

end

end A399435.P10024200238913524773

/-!
# A399436: a(n) is the denominator of the probability that two heads will turn up in succession in tossing n times a coin.

The programs for A399436, there is no canonical definition to state claims against.
-/

/-! ## A399436.P17668087278981249084

`A001316(A399015(3*n+2)+A085263(n+1))`
-/

namespace A399436.P17668087278981249084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A399015 (3 * n + 2) + A085263 (n + 1)).toNat

end

end A399436.P17668087278981249084

/-!
# A399440: Number of pairs (d, e) of divisors of n with d < e < 2*d.

The programs for A399440, there is no canonical definition to state claims against.
-/

/-! ## A399440.P17705842840724453735

`∑{d}[n+1, A069735(#)*A078926((n+1)/#)]`
-/

namespace A399440.P17705842840724453735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A078926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399440.P17705842840724453735

/-! ## A399440.P16095192008453309490

`∑{d}[n+1, A008966(#)*A301989((n+1)/#)]`
-/

namespace A399440.P16095192008453309490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A301989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399440.P16095192008453309490

/-!
# A399442: Primes p such that p - A062329(p) is also a prime.

The programs for A399442, there is no canonical definition to state claims against.
-/

/-! ## A399442.P15784228794686142133

`∑[∑{e}[A052868(n)+3+n, #]!]`
-/

namespace A399442.P15784228794686142133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052868 n + 3 + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399442.P15784228794686142133

/-! ## A399442.P9757745288652177560

`∩[A305462(n+1), A340113(n+1)]`
-/

namespace A399442.P9757745288652177560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399442.P9757745288652177560

/-!
# A399443: a(n) = n * (n^2 + 3*n + 1) * (n + 3)! / 8. (Row 3 of array A399444.)

The programs for A399443, the canonical program `A399443.P12779427697152541881` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399443 has offset 0).

The definition of A399443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399443.P12779427697152541881

`n*(n²+3*n+1)*(n+3)!/8`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399443

/-- `n*(n²+3*n+1)*(n+3)!/8` -/
def P12779427697152541881.Spec : Prop :=
  ∀ n, P12779427697152541881.a n = (A399443 n : ℚ)

end A399443

/-! ## A399443.P217776901108634309

`n!*A399341(n)`
-/

namespace A399443.P217776901108634309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A399341 n

end

end A399443.P217776901108634309

namespace A399443

/-- `n!*A399341(n)` -/
def P217776901108634309.Spec : Prop :=
  ∀ n, P217776901108634309.a n = A399443 n

end A399443

/-! ## A399443.P9007047727140319765

`A000142(n)*A399341(n)`
-/

namespace A399443.P9007047727140319765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A399341 n

end

end A399443.P9007047727140319765

namespace A399443

/-- `A000142(n)*A399341(n)` -/
def P9007047727140319765.Spec : Prop :=
  ∀ n, P9007047727140319765.a n = A399443 n

end A399443

/-! ## A399443.P4856836219741973864

`A399444(A028310(2*n+3)+A000217(n+2))`
-/

namespace A399443.P4856836219741973864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399444 (A028310 (2 * n + 3) + A000217 (n + 2)).toNat

end

end A399443.P4856836219741973864

namespace A399443

/-- `A399444(A028310(2*n+3)+A000217(n+2))` -/
def P4856836219741973864.Spec : Prop :=
  ∀ n, P4856836219741973864.a n = A399443 n

end A399443

/-!
# A399444: Triangle read by rows: T(n,k) is the number of complete non-ambiguous trees with n+1 leaves and maximum weight 0, refined by the degree k of the minimal vertex of the associated fully tiered tree.

The programs for A399444, there is no canonical definition to state claims against.
-/

/-! ## A399444.P12306958872994996202

`A233543(n)*A399342(n)`
-/

namespace A399444.P12306958872994996202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A399342 n

end

end A399444.P12306958872994996202

/-!
# A399445: Distinct values of A399023 in order of appearance.

The programs for A399445, there is no canonical definition to state claims against.
-/

/-! ## A399445.P17307092741953097804

`fo[A399465(n+1)-1]+1`
-/

namespace A399445.P17307092741953097804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399465 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A399445.P17307092741953097804

/-!
# A399447: Number of rooted trees on n unlabeled nodes with exactly 1 node of maximum height.

The programs for A399447, there is no canonical definition to state claims against.
-/

/-! ## A399447.P7472253189789199256

`A399097(∑[n]+1)`
-/

namespace A399447.P7472253189789199256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A399447.P7472253189789199256

/-! ## A399447.P6169892899321371700

`row(A284007(row(A335871(n))))`
-/

namespace A399447.P6169892899321371700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A284007 (SequenceMachineLib.triRow (A335871 n).toNat)).toNat

end

end A399447.P6169892899321371700

/-! ## A399447.P3637983210552740238

`round(A399999(n+1)/A141268(n+1))`
-/

namespace A399447.P3637983210552740238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A399999 (n + 1) : ℚ) / (A141268 (n + 1) : ℚ))

end

end A399447.P3637983210552740238

/-! ## A399447.P10348820213364539926

`∑[floor(A399770(n+1)/(A015518(n)+2))]+1`
-/

namespace A399447.P10348820213364539926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A399770 (n + 1) : ℚ) / (A015518 n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A399447.P10348820213364539926

/-! ## A399447.P2753942902788689791

`A206915(A202705(n)-A265218(n+1))`
-/

namespace A399447.P2753942902788689791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (A202705 n - A265218 (n + 1)).toNat

end

end A399447.P2753942902788689791

/-!
# A399448: Triangle read by rows: T(n,k) is the number of simple connected graphs on n nodes having k distinct vertex transmissions.

The programs for A399448, there is no canonical definition to state claims against.
-/

/-! ## A399448.P1546284087683431070

`A293113(n+1)^A302354(A327859(n))`
-/

namespace A399448.P1546284087683431070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293113 (n + 1) : ℚ) ^ (A302354 (A327859 n).toNat : ℤ)

end

end A399448.P1546284087683431070

/-!
# A399449: Number of simple connected graphs on n unlabeled nodes that are transmission regular.

The programs for A399449, there is no canonical definition to state claims against.
-/

/-! ## A399449.P17648198230416654088

`A399448(∑[n]+1)`
-/

namespace A399449.P17648198230416654088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399448 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A399449.P17648198230416654088

/-!
# A399450: Array read by antidiagonals: T(n,k) = (1/n) * Sum_{x in (Z_n)^k} exp(2*Pi*i*det(circ(x))/n).

The programs for A399450, there is no canonical definition to state claims against.
-/

/-! ## A399450.P12734410243454197676

`A115201(A289537(n))`
-/

namespace A399450.P12734410243454197676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115201 (A289537 n).toNat

end

end A399450.P12734410243454197676

/-! ## A399450.P1900542915730430563

`A375107(A324660(n))`
-/

namespace A399450.P1900542915730430563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375107 (A324660 n).toNat

end

end A399450.P1900542915730430563

/-! ## A399450.P9190458350692399204

`A114643(A110200(n+1))`
-/

namespace A399450.P9190458350692399204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (A110200 (n + 1)).toNat

end

end A399450.P9190458350692399204

/-! ## A399450.P7531636397827301715

`A318721(A208931(n+1))`
-/

namespace A399450.P7531636397827301715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318721 (A208931 (n + 1)).toNat

end

end A399450.P7531636397827301715

/-! ## A399450.P16973660669816280333

`A352512(A208921(n+1))`
-/

namespace A399450.P16973660669816280333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (A208921 (n + 1)).toNat

end

end A399450.P16973660669816280333

/-!
# A399451: Total number of independent vertex sets in all labeled trees on n vertices.

The programs for A399451, there is no canonical definition to state claims against.
-/

/-! ## A399451.P8172917626986975464

`A162695(n)+A055779(n+1)`
-/

namespace A399451.P8172917626986975464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162695 n + A055779 (n + 1)

end

end A399451.P8172917626986975464

/-!
# A399452: Total number of dominating sets in all labeled trees on n vertices.

The programs for A399452, there is no canonical definition to state claims against.
-/

/-! ## A399452.P14731941098491362785

`A025480(A375022(n))+A001813(n)`
-/

namespace A399452.P14731941098491362785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A375022 n).toNat + A001813 n

end

end A399452.P14731941098491362785

/-!
# A399453: Total number of matchings in all labeled trees on n vertices.

The programs for A399453, there is no canonical definition to state claims against.
-/

/-! ## A399453.P5662465216821599880

`∑[A047201(A072034(n))]`
-/

namespace A399453.P5662465216821599880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A072034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399453.P5662465216821599880

/-!
# A399454: Total number of maximal matchings in all labeled trees on n vertices.

The programs for A399454, there is no canonical definition to state claims against.
-/

/-! ## A399454.P8952130810732311103

`A001615(A369090(n+1)-A065733(n))`
-/

namespace A399454.P8952130810732311103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A369090 (n + 1) - A065733 n).toNat

end

end A399454.P8952130810732311103

/-!
# A399455: Total number of edge covers in all labeled trees on n vertices.

The programs for A399455, there is no canonical definition to state claims against.
-/

/-! ## A399455.P13082397033689482129

`A308552(A309915(n))`
-/

namespace A399455.P13082397033689482129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308552 (A309915 n).toNat

end

end A399455.P13082397033689482129

/-!
# A399460: Number of Chvátal-Erdős graphs with degree n.

The programs for A399460, there is no canonical definition to state claims against.
-/

/-! ## A399460.P15364344180860667796

`A112204(A366131(n+1))`
-/

namespace A399460.P15364344180860667796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112204 (A366131 (n + 1)).toNat

end

end A399460.P15364344180860667796

/-!
# A399461: Number of Chvátal-Erdős graphs with order n.

The programs for A399461, there is no canonical definition to state claims against.
-/

/-! ## A399461.P185791856800720203

`A097456(A372031(n+2))`
-/

namespace A399461.P185791856800720203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097456 (A372031 (n + 2)).toNat

end

end A399461.P185791856800720203

/-! ## A399461.P7444401276870493437

`A217605(and(A099295(n+1), A181819(3*n+2)))`
-/

namespace A399461.P7444401276870493437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217605 (Int.land (A099295 (n + 1)) (A181819 (3 * n + 2))).toNat

end

end A399461.P7444401276870493437

/-! ## A399461.P1626320408624309086

`A196564(A069156(n+1))`
-/

namespace A399461.P1626320408624309086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A069156 (n + 1)).toNat

end

end A399461.P1626320408624309086

/-! ## A399461.P14472236180291984969

`A324967(A234310(n+1)+A000051(n))`
-/

namespace A399461.P14472236180291984969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324967 (A234310 (n + 1) + A000051 n).toNat

end

end A399461.P14472236180291984969

/-! ## A399461.P15992379953535659238

`A090395(A190525(n))%A091948(n+4)`
-/

namespace A399461.P15992379953535659238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090395 (A190525 n).toNat) (A091948 (n + 4))

end

end A399461.P15992379953535659238

/-!
# A399464: Number of different ways n lines in the plane, no two parallel, can meet: the number of possible multisets formed by the numbers of lines passing through each intersection point.

The programs for A399464, there is no canonical definition to state claims against.
-/

/-! ## A399464.P4835035252616011825

`xor(A000049(n), A214263(n))`
-/

namespace A399464.P4835035252616011825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000049 n) (A214263 n)

end

end A399464.P4835035252616011825

/-! ## A399464.P2820641415758389801

`A194287(A058094(n))`
-/

namespace A399464.P2820641415758389801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A058094 n).toNat

end

end A399464.P2820641415758389801

/-! ## A399464.P16607586480864491720

`A226763(A240741(n))`
-/

namespace A399464.P16607586480864491720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A240741 (n + 21)).toNat

end

end A399464.P16607586480864491720

/-! ## A399464.P17508316484518573142

`A004438(A137402(n))`
-/

namespace A399464.P17508316484518573142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A137402 n).toNat

end

end A399464.P17508316484518573142

/-! ## A399464.P4747531796853836897

`A000194(A148680(n))`
-/

namespace A399464.P4747531796853836897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A148680 n).toNat

end

end A399464.P4747531796853836897

/-!
# A399465: Inverse permutation to A399445.

The programs for A399465, there is no canonical definition to state claims against.
-/

/-! ## A399465.P5161145856872147848

`fo[A399445(n+1)-1]+1`
-/

namespace A399465.P5161145856872147848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399445 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A399465.P5161145856872147848

/-!
# A399467: Distinct values of A399466 in order of appearance and with offset 0.

The programs for A399467, there is no canonical definition to state claims against.
-/

/-! ## A399467.P17621518634122943689

`fo[A399468(n)]`
-/

namespace A399467.P17621518634122943689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A399467.P17621518634122943689

/-!
# A399468: Inverse permutation to A399467.

The programs for A399468, there is no canonical definition to state claims against.
-/

/-! ## A399468.P8139363245056929812

`fo[A399467(n)]`
-/

namespace A399468.P8139363245056929812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A399468.P8139363245056929812

/-!
# A399469: a(n) is the minimum cardinality of an inclusion-maximal Sidon subset of the set of positive divisors of n.

The programs for A399469, there is no canonical definition to state claims against.
-/

/-! ## A399469.P14101387074301052388

`A080226(A348717(n+1)%A138582(n+1))`
-/

namespace A399469.P14101387074301052388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (Int.tmod (A348717 (n + 1)) (A138582 (n + 1))).toNat

end

end A399469.P14101387074301052388

/-! ## A399469.P17883446427082365000

`A353528(A033849(n+1))+A301979(2*n+2)`
-/

namespace A399469.P17883446427082365000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353528 (A033849 (n + 1)).toNat + A301979 (2 * n + 2)

end

end A399469.P17883446427082365000

/-! ## A399469.P10977763265544354338

`A301979(2*n+2)/A115878(A077718(n+1))`
-/

namespace A399469.P10977763265544354338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301979 (2 * n + 2) : ℚ) / (A115878 (A077718 (n + 1)).toNat : ℚ)

end

end A399469.P10977763265544354338

/-! ## A399469.P4616487094899428639

`A080226(A348717(n+1))%A201447(3*n+5)`
-/

namespace A399469.P4616487094899428639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080226 (A348717 (n + 1)).toNat) (A201447 (3 * n + 5))

end

end A399469.P4616487094899428639

/-! ## A399469.P11308303458832681247

`A301979(2*n+2)*A366902(A001248(n+1))`
-/

namespace A399469.P11308303458832681247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (2 * n + 2) * A366902 (A001248 (n + 1)).toNat

end

end A399469.P11308303458832681247

/-!
# A399470: a(n) is the number of inclusion-maximal Sidon subsets of the set of positive divisors of n.

The programs for A399470, there is no canonical definition to state claims against.
-/

/-! ## A399470.P11305694765556032252

`A080226(A062854(n+1)^A174903(n+1))`
-/

namespace A399470.P11305694765556032252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (SequenceMachineLib.roundAway ((A062854 (n + 1) : ℚ) ^ (A174903 (n + 1) : ℤ))).toNat

end

end A399470.P11305694765556032252

/-! ## A399470.P11668077523385534495

`A080226(A062854(n+1)^A399440(n+1))`
-/

namespace A399470.P11668077523385534495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (SequenceMachineLib.roundAway ((A062854 (n + 1) : ℚ) ^ (A399440 (n + 1) : ℤ))).toNat

end

end A399470.P11668077523385534495

/-!
# A399474: Number of labeled 8-regular graphs on n nodes.

The programs for A399474, there is no canonical definition to state claims against.
-/

/-! ## A399474.P10521575308915632714

`A395907(C(A282582(n), n+1))`
-/

namespace A399474.P10521575308915632714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395907 (Nat.choose (A282582 n).toNat (n + 1))

end

end A399474.P10521575308915632714

/-! ## A399474.P8204021190072766029

`A003415(A165877(n))^A019426(n)`
-/

namespace A399474.P8204021190072766029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A165877 n).toNat : ℚ) ^ (A019426 n : ℤ)

end

end A399474.P8204021190072766029

/-! ## A399474.P8629053593157236326

`A003415(A165877(n))^A003415(n+1)`
-/

namespace A399474.P8629053593157236326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A165877 n).toNat : ℚ) ^ (A003415 (n + 1) : ℤ)

end

end A399474.P8629053593157236326

/-! ## A399474.P11786028073972720211

`A293157(n+1)%A002623(A324435(n))`
-/

namespace A399474.P11786028073972720211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293157 (n + 1)) (A002623 (A324435 n).toNat)

end

end A399474.P11786028073972720211

/-! ## A399474.P14514953969724311145

`A324428(n+1)%A059993(A324435(n))`
-/

namespace A399474.P14514953969724311145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324428 (n + 1)) (A059993 (A324435 n).toNat)

end

end A399474.P14514953969724311145

/-!
# A399475: Position of the first appearance of n in A394762.

The programs for A399475, there is no canonical definition to state claims against.
-/

/-! ## A399475.P9456843393136430616

`A001462(A003116(2*n))+n`
-/

namespace A399475.P9456843393136430616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A003116 (2 * n)).toNat + (n : ℤ)

end

end A399475.P9456843393136430616

/-! ## A399475.P14308283189663254738

`A157271(∑[A376681(n+1)]-n)`
-/

namespace A399475.P14308283189663254738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A399475.P14308283189663254738

/-! ## A399475.P8063993768514712317

`or(A033638(n), A359587(A000244(n)))`
-/

namespace A399475.P8063993768514712317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033638 n) (A359587 (A000244 n).toNat)

end

end A399475.P8063993768514712317

/-! ## A399475.P12097380889845844792

`∑[A006670(A098465(n))+A000045(n)]`
-/

namespace A399475.P12097380889845844792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A098465 n).toNat + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399475.P12097380889845844792

/-! ## A399475.P11630989052039979629

`∑[A103128(A102318(n))+A000045(n)]`
-/

namespace A399475.P11630989052039979629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A102318 n).toNat + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399475.P11630989052039979629

/-!
# A399477: a(n) = 9*binomial(n,8) + 49*binomial(n,7) + 75*binomial(n,6) + 35*binomial(n,5) + 3*binomial(n,4).

The programs for A399477, the canonical program `A399477.P4764234066345403469` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399477 has offset 4).

The definition of A399477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)` (program `A399477.P4764234066345403469`, by `A399477.P4764234066345403469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399477.P4764234066345403469

`9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399477

/-- `9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)` -/
def P4764234066345403469.Spec : Prop :=
  ∀ n, (P4764234066345403469.a n : ℤ) = A399477 (n + 4)

theorem P4764234066345403469.correct : P4764234066345403469.Spec := by
  intro n
  simp only [A399477, Nat.add_sub_cancel]

end A399477

/-!
# A399478: a(n) = n! * (H_{n-1} - 1/n), where H_n is the n-th harmonic number.

The programs for A399478, the canonical program `A399478.P10424283525659201034` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399478 has offset 1).

The definition of A399478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399478.P10424283525659201034

`(n+1)*a(n-1)+(n+2)*(n-1)!` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399478

/-- `(n+1)*a(n-1)+(n+2)*(n-1)!` -/
def P10424283525659201034.Spec : Prop :=
  ∀ n, P10424283525659201034.a n = A399478 (n + 1)

theorem P10424283525659201034.correct : P10424283525659201034.Spec := by
  intro n
  simp only [A399478, Nat.add_sub_cancel]

end A399478

/-! ## A399478.P14342119354168419375

`∑{#}[n, A199221(C(n+1, 2)+#+1)]`
-/

namespace A399478.P14342119354168419375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A199221 (Nat.choose (n + 1) 2 + (k + 1))

end

end A399478.P14342119354168419375

namespace A399478

/-- `∑{#}[n, A199221(C(n+1, 2)+#+1)]` -/
def P14342119354168419375.Spec : Prop :=
  ∀ n, P14342119354168419375.a n = A399478 (n + 1)

end A399478

/-! ## A399478.P3475296284609260369

`A052881(1+n)-n!`
-/

namespace A399478.P3475296284609260369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 (1 + n) - (Nat.factorial n : ℤ)

end

end A399478.P3475296284609260369

namespace A399478

/-- `A052881(1+n)-n!` -/
def P3475296284609260369.Spec : Prop :=
  ∀ n, P3475296284609260369.a n = A399478 (n + 1)

end A399478

/-! ## A399478.P14138651890573512572

`A000774(n)+n*a(n-1)` with `a(0)=-1, a(1)=1`
-/

namespace A399478.P14138651890573512572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  A000774 n + (n : ℤ) * a (n - 1)

end

end A399478.P14138651890573512572

namespace A399478

/-- `A000774(n)+n*a(n-1)` -/
def P14138651890573512572.Spec : Prop :=
  ∀ n, P14138651890573512572.a n = A399478 (n + 1)

end A399478

/-! ## A399478.P16907716731748807891

`A052881(1+n)-A000142(n)`
-/

namespace A399478.P16907716731748807891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 (1 + n) - A000142 n

end

end A399478.P16907716731748807891

namespace A399478

/-- `A052881(1+n)-A000142(n)` -/
def P16907716731748807891.Spec : Prop :=
  ∀ n, P16907716731748807891.a n = A399478 (n + 1)

end A399478

/-! ## A399478.P13792557363374616881

`A000254(n+1)-2*A000142(n)`
-/

namespace A399478.P13792557363374616881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) - 2 * A000142 n

end

end A399478.P13792557363374616881

namespace A399478

/-- `A000254(n+1)-2*A000142(n)` -/
def P13792557363374616881.Spec : Prop :=
  ∀ n, P13792557363374616881.a n = A399478 (n + 1)

end A399478

/-! ## A399478.P1497550798963425103

`abs(A081048(n))*(n+1)-A000142(n)`
-/

namespace A399478.P1497550798963425103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| * (n + 1 : ℤ) - A000142 n

end

end A399478.P1497550798963425103

namespace A399478

/-- `abs(A081048(n))*(n+1)-A000142(n)` -/
def P1497550798963425103.Spec : Prop :=
  ∀ n, P1497550798963425103.a n = A399478 (n + 1)

end A399478

/-! ## A399478.P2696622457661197992

`A052881(n+1)+A052881(n+1)-A000254(n+1)`
-/

namespace A399478.P2696622457661197992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 (n + 1) + A052881 (n + 1) - A000254 (n + 1)

end

end A399478.P2696622457661197992

namespace A399478

/-- `A052881(n+1)+A052881(n+1)-A000254(n+1)` -/
def P2696622457661197992.Spec : Prop :=
  ∀ n, P2696622457661197992.a n = A399478 (n + 1)

end A399478

/-! ## A399478.P6398647318326570756

`A213167(n+2)-(A121586(n+1)+A000142(n))`
-/

namespace A399478.P6398647318326570756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213167 (n + 2) - (A121586 (n + 1) + A000142 n)

end

end A399478.P6398647318326570756

namespace A399478

/-- `A213167(n+2)-(A121586(n+1)+A000142(n))` -/
def P6398647318326570756.Spec : Prop :=
  ∀ n, P6398647318326570756.a n = A399478 (n + 1)

end A399478

/-! ## A399478.P16688810178848580060

`A121636(n+2)-(A121635(n+2)+A121635(n+2))`
-/

namespace A399478.P16688810178848580060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121636 (n + 2) - (A121635 (n + 2) + A121635 (n + 2))

end

end A399478.P16688810178848580060

namespace A399478

/-- `A121636(n+2)-(A121635(n+2)+A121635(n+2))` -/
def P16688810178848580060.Spec : Prop :=
  ∀ n, P16688810178848580060.a n = A399478 (n + 1)

end A399478

/-!
# A399490: Sum of squares of the elements of R(n), where R(n) is the set of n consecutive integers centered at n, with the center n omitted when n is even.

The programs for A399490, the canonical program `A399490.P15700466457018084356` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399490 has offset 1).

The definition of A399490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399490.P15700466457018084356

`A219054(1+n)-A212760(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399490

/-- `A219054(1+n)-A212760(n)` -/
def P15700466457018084356.Spec : Prop :=
  ∀ n, P15700466457018084356.a n = A399490 (n + 1)

theorem P15700466457018084356.correct : P15700466457018084356.Spec := by
  intro n
  simp only [A399490, Nat.add_sub_cancel]

end A399490

/-!
# A399491: The smallest integer m > n such that (n^2+1)*(m^2+1) is a perfect square.

The programs for A399491, there is no canonical definition to state claims against.
-/

/-! ## A399491.P15958581533370444376

`sqrt(A212651((1+n)²))`
-/

namespace A399491.P15958581533370444376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212651 ((1 + n) ^ 2) : ℝ)

end

end A399491.P15958581533370444376

/-! ## A399491.P11607080832718112858

`A229183(∑{e}[A125630(n+1), #])`
-/

namespace A399491.P11607080832718112858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A399491.P11607080832718112858

/-!
# A399493: a(1) = a(2) = 1, a(n) = gcd((n-1)*(n-2), a(n-1)+a(n-2)) for n > 2.

The programs for A399493, the canonical program `A399493.P1639601546475209573` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399493 has offset 1).

The definition of A399493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n*(n-1), a(n-1)+a(n-2))` (program `A399493.P1639601546475209573`, by `A399493.P1639601546475209573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399493.P1639601546475209573

`gcd(n*(n-1), a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399493

/-- `gcd(n*(n-1), a(n-1)+a(n-2))` -/
def P1639601546475209573.Spec : Prop :=
  ∀ n, (P1639601546475209573.a n : ℤ) = A399493 (n + 1)

theorem P1639601546475209573.correct : P1639601546475209573.Spec := by
  intro n
  simp only [A399493, Nat.add_sub_cancel]

end A399493

/-! ## A399493.P12108473256111242293

`gcd(a(n-2)+a(n-1), n²-n)` with `a(0)=1, a(1)=1`
-/

namespace A399493.P12108473256111242293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.gcd (a (n - 2) + a (n - 1) : ℤ) ((n ^ 2 : ℤ) - (n : ℤ))

end

end A399493.P12108473256111242293

namespace A399493

/-- `gcd(a(n-2)+a(n-1), n²-n)` -/
def P12108473256111242293.Spec : Prop :=
  ∀ n, (P12108473256111242293.a n : ℤ) = A399493 (n + 1)

end A399493

/-!
# A399497: H_b(c, d) where b >= c >= d >= 0 ordered by b then c then d, where H_i is the i-th hyperoperation.

The programs for A399497, there is no canonical definition to state claims against.
-/

/-! ## A399497.P14587047946631576921

`A131963(A182214(n+3)*A256786(n+1))`
-/

namespace A399497.P14587047946631576921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131963 (A182214 (n + 3) * A256786 (n + 1)).toNat

end

end A399497.P14587047946631576921

/-!
# A399498: Number of equivalence classes under rotations and reflections of n-step self-avoiding walks on the square lattice that use both coordinate axes and have exactly 2 pairs of nonconsecutive vertices that are adjacent in the lattice.

The programs for A399498, there is no canonical definition to state claims against.
-/

/-! ## A399498.P12372452666120127745

`A033323(n+1)/8`
-/

namespace A399498.P12372452666120127745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033323 (n + 1) : ℚ) / 8

end

end A399498.P12372452666120127745

/-! ## A399498.P17154802217129553146

`A006085(A033323(n+1))`
-/

namespace A399498.P17154802217129553146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A033323 (n + 1)).toNat

end

end A399498.P17154802217129553146

