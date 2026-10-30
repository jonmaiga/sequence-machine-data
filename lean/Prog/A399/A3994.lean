import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C020
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

The programs for A399405, the canonical program `A399405.P16569053505981937419` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399405 has offset 0).

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

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A399410.P9472086347350986501

`A060680(A076075(2*(n+1)))*A399417(n+1)`
-/

namespace A399410.P9472086347350986501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (A076075 (2 * (n + 1))).toNat * A399417 (n + 1)

end

end A399410.P9472086347350986501

/-! ## A399410.P665316011625083053

`A063775(A375082(3*n+5))*A399417(n+1)`
-/

namespace A399410.P665316011625083053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A375082 (3 * n + 5)).toNat * A399417 (n + 1)

end

end A399410.P665316011625083053

/-! ## A399410.P485162607385849162

`A071797(A399417(n+1)+(2*n)²)`
-/

namespace A399410.P485162607385849162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A399417 (n + 1) + ((2 * n) ^ 2 : ℤ)).toNat

end

end A399410.P485162607385849162

/-! ## A399410.P808316151091475848

`A399417(n+1)+A341994((A000959(n+1)+1)²)`
-/

namespace A399410.P808316151091475848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399417 (n + 1) + A341994 ((A000959 (n + 1) + 1) ^ 2).toNat

end

end A399410.P808316151091475848

/-! ## A399410.P1568338932629199983

`A399417(A123271(n+2)²+n)`
-/

namespace A399410.P1568338932629199983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399417 (A123271 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A399410.P1568338932629199983

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

/-! ## A399412.P7671809832291150539

`and(A152388(A051664(n+1)), A399416(n+1))`
-/

namespace A399412.P7671809832291150539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (A051664 (n + 1)).toNat) (A399416 (n + 1))

end

end A399412.P7671809832291150539

/-! ## A399412.P11406074097070372320

`and(A152388(n+1), A399416(n+1))`
-/

namespace A399412.P11406074097070372320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A399416 (n + 1))

end

end A399412.P11406074097070372320

/-! ## A399412.P11179396319542196358

`and(A383046(n+3), A399416(n+1))`
-/

namespace A399412.P11179396319542196358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A383046 (n + 3)) (A399416 (n + 1))

end

end A399412.P11179396319542196358

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

/-! ## A399420.P1540199509599837721

`A382019(A072706(n))`
-/

namespace A399420.P1540199509599837721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A072706 n).toNat

end

end A399420.P1540199509599837721

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

/-! ## A399428.P1521558254430509499

`A011960(A001834(n+1))`
-/

namespace A399428.P1521558254430509499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A001834 (n + 1)).toNat

end

end A399428.P1521558254430509499

/-!
# A399430: b * c * d where b >= c >= d >= 0 ordered by b then c then d.

The programs for A399430, the canonical program `A399430.P14427685385738939723` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399430 has offset 1).

The definition of A399430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399430.P14427685385738939723

`A056556(n)*A056557(n)*A056558(n)`

The canonical program, it is in `Seq.B005.C002`.
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

The programs for A399431, the canonical program `A399431.P9696602572664343429` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399431 has offset 1).

The definition of A399431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399431.P9696602572664343429

`(2^A000040(n+1)-2)/A000040(n+1)+2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399431

/-- `(2^A000040(n+1)-2)/A000040(n+1)+2` -/
def P9696602572664343429.Spec : Prop :=
  ∀ n, P9696602572664343429.a n = (A399431 (n + 1) : ℚ)

end A399431

/-! ## A399431.P8473439590732848660

`A064535(n+1)+2`
-/

namespace A399431.P8473439590732848660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064535 (n + 1) + 2

end

end A399431.P8473439590732848660

namespace A399431

/-- `A064535(n+1)+2` -/
def P8473439590732848660.Spec : Prop :=
  ∀ n, P8473439590732848660.a n = A399431 (n + 1)

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

/-! ## A399435.P11490747093872710134

`A227140(A167821(n+2))`
-/

namespace A399435.P11490747093872710134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (A167821 (n + 2)).toNat

end

end A399435.P11490747093872710134

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

/-! ## A399442.P9811577016689258271

`∑[(T(n-1,k+1)+(T(n-1,k-1)+T(n-1,k+1)+2*T(n-1,k))*col(n))!]` with `a(0)=2`
-/

namespace A399442.P9811577016689258271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.factorial (SequenceMachineLib.triUpRight f1 n + (SequenceMachineLib.triUpLeft f1 n + SequenceMachineLib.triUpRight f1 n + 2 * SequenceMachineLib.triUp f1 n) * SequenceMachineLib.triCol n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399442.P9811577016689258271

/-!
# A399443: a(n) = n * (n^2 + 3*n + 1) * (n + 3)! / 8. (Row 3 of array A399444.)

The programs for A399443, the canonical program `A399443.P12779427697152541881` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399443 has offset 0).

The definition of A399443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399443.P12779427697152541881

`n*(n²+3*n+1)*(n+3)!/8`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399443

/-- `n*(n²+3*n+1)*(n+3)!/8` -/
def P12779427697152541881.Spec : Prop :=
  ∀ n, P12779427697152541881.a n = (A399443 n : ℚ)

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

/-! ## A399451.P15006787227464478278

`A007916(A243676(n)+n)`
-/

namespace A399451.P15006787227464478278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A243676 n + (n : ℤ)).toNat

end

end A399451.P15006787227464478278

/-!
# A399452: Total number of dominating sets in all labeled trees on n vertices.

The programs for A399452, there is no canonical definition to state claims against.
-/

/-! ## A399452.P12241034337314881500

`A199332(A234505(n)+A000129(n))`
-/

namespace A399452.P12241034337314881500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199332 (A234505 n + A000129 n).toNat

end

end A399452.P12241034337314881500

/-!
# A399453: Total number of matchings in all labeled trees on n vertices.

The programs for A399453, there is no canonical definition to state claims against.
-/

/-! ## A399453.P10422950217551855732

`A392379(A009881(n+1))`
-/

namespace A399453.P10422950217551855732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392379 (A009881 (n + 1)).toNat

end

end A399453.P10422950217551855732

/-!
# A399454: Total number of maximal matchings in all labeled trees on n vertices.

The programs for A399454, there is no canonical definition to state claims against.
-/

/-! ## A399454.P2770361668471610644

`(n+1)*A077117(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A399454.P2770361668471610644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 1 : ℤ) * A077117 (a (n - 1)).toNat

end

end A399454.P2770361668471610644

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

/-! ## A399461.P1626320408624309086

`A196564(A069156(n+1))`
-/

namespace A399461.P1626320408624309086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A069156 (n + 1)).toNat

end

end A399461.P1626320408624309086

/-! ## A399461.P15992379953535659238

`A090395(A190525(n))%A091948(n+4)`
-/

namespace A399461.P15992379953535659238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090395 (A190525 n).toNat) (A091948 (n + 4))

end

end A399461.P15992379953535659238

/-! ## A399461.P11244817851839545009

`A252055(A281929(n+2))`
-/

namespace A399461.P11244817851839545009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252055 (A281929 (n + 2)).toNat

end

end A399461.P11244817851839545009

/-! ## A399461.P15042252508467936930

`A083025(A115683(n+5)*A134672(n+1))`
-/

namespace A399461.P15042252508467936930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A115683 (n + 5) * A134672 (n + 1)).toNat

end

end A399461.P15042252508467936930

/-!
# A399469: a(n) is the minimum cardinality of an inclusion-maximal Sidon subset of the set of positive divisors of n.

The programs for A399469, there is no canonical definition to state claims against.
-/

/-! ## A399469.P10977763265544354338

`A301979(2*n+2)/A115878(A077718(n+1))`
-/

namespace A399469.P10977763265544354338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301979 (2 * n + 2) : ℚ) / (A115878 (A077718 (n + 1)).toNat : ℚ)

end

end A399469.P10977763265544354338

/-! ## A399469.P10250425882434990527

`A083399(A328023(n+1))`
-/

namespace A399469.P10250425882434990527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A328023 (n + 1)).toNat

end

end A399469.P10250425882434990527

/-! ## A399469.P2438148075646345629

`A166469(n+1)-A374093(A144553(n+1))`
-/

namespace A399469.P2438148075646345629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (n + 1) - A374093 (A144553 (n + 1)).toNat

end

end A399469.P2438148075646345629

/-! ## A399469.P9788469456863809741

`A080226(n+1)-A176137(A364320(2*n+5))`
-/

namespace A399469.P9788469456863809741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (n + 1) - A176137 (A364320 (2 * n + 5)).toNat

end

end A399469.P9788469456863809741

/-! ## A399469.P2674507695790195709

`A352897(n+1)-A351619(A000043(n+4))`
-/

namespace A399469.P2674507695790195709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352897 (n + 1) - A351619 (A000043 (n + 4)).toNat

end

end A399469.P2674507695790195709

/-!
# A399474: Number of labeled 8-regular graphs on n nodes.

The programs for A399474, there is no canonical definition to state claims against.
-/

/-! ## A399474.P8629053593157236326

`A003415(A165877(n))^A003415(n+1)`
-/

namespace A399474.P8629053593157236326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A165877 n).toNat : ℚ) ^ (A003415 (n + 1) : ℤ)

end

end A399474.P8629053593157236326

/-! ## A399474.P4841593983381609630

`A104548(A324098(n+1)^A370885(2*n))`
-/

namespace A399474.P4841593983381609630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104548 (SequenceMachineLib.roundAway ((A324098 (n + 1) : ℚ) ^ (A370885 (2 * n) : ℤ))).toNat

end

end A399474.P4841593983381609630

/-!
# A399475: Position of the first appearance of n in A394762.

The programs for A399475, there is no canonical definition to state claims against.
-/

/-! ## A399475.P8063993768514712317

`or(A033638(n), A359587(A000244(n)))`
-/

namespace A399475.P8063993768514712317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033638 n) (A359587 (A000244 n).toNat)

end

end A399475.P8063993768514712317

/-! ## A399475.P5332970299893856655

`A375815(A007482(n))`
-/

namespace A399475.P5332970299893856655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A007482 n).toNat

end

end A399475.P5332970299893856655

/-! ## A399475.P5808751546031816173

`A229994(A266367(n))`
-/

namespace A399475.P5808751546031816173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229994 (A266367 n).toNat

end

end A399475.P5808751546031816173

/-! ## A399475.P11737978970429338428

`A337125(A164352(n))`
-/

namespace A399475.P11737978970429338428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A164352 n).toNat

end

end A399475.P11737978970429338428

/-!
# A399477: a(n) = 9*binomial(n,8) + 49*binomial(n,7) + 75*binomial(n,6) + 35*binomial(n,5) + 3*binomial(n,4).

The programs for A399477, the canonical program `A399477.P4764234066345403469` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399477 has offset 4).

The definition of A399477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)` (program `A399477.P4764234066345403469`, by `A399477.P4764234066345403469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399477.P4764234066345403469

`9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A399478, the canonical program `A399478.P10424283525659201034` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399478 has offset 1).

The definition of A399478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399478.P10424283525659201034

`(n+1)*a(n-1)+(n+2)*(n-1)!` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A399490, the canonical program `A399490.P10332122597394421596` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399490 has offset 1).

The definition of A399490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399490.P10332122597394421596

`A219054(n+1)-A212760(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399490

/-- `A219054(n+1)-A212760(n)` -/
def P10332122597394421596.Spec : Prop :=
  ∀ n, P10332122597394421596.a n = A399490 (n + 1)

theorem P10332122597394421596.correct : P10332122597394421596.Spec := by
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

