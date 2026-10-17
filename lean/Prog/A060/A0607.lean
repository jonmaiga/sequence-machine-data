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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A060700: "Anomalous" numbers k such that for even numbers 2k, gcd(2k, lcm(dd(2k)))=2k and not k, where dd(2k) is the first difference set of divisors of 2k.

The programs for A060700, there is no canonical definition to state claims against.
-/

/-! ## A060700.P4683417733243660322

`lt[n+1, A060695(n+1)]+1`
-/

namespace A060700.P4683417733243660322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060700.P4683417733243660322

/-! ## A060700.P14817780826791118130

`lt[A028310(n), A060695(A028310(n))]`
-/

namespace A060700.P14817780826791118130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060695 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060700.P14817780826791118130

/-! ## A060700.P10850372312057841495

`lt[n+1, A060654(2*(n+1))]+1`
-/

namespace A060700.P10850372312057841495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060654 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060700.P10850372312057841495

/-!
# A060701: Table by antidiagonals of Mahonian numbers T(n,k): permutations of n letters with k inversions.

The programs for A060701, there is no canonical definition to state claims against.
-/

/-! ## A060701.P11931488381255168264

`A177517(comp[∑[n]]+1)`
-/

namespace A060701.P11931488381255168264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A060701.P11931488381255168264

/-! ## A060701.P3517241765415744475

`or(char[2], A177517(A014132(n+1)+1))`
-/

namespace A060701.P3517241765415744475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A177517 (A014132 (n + 1) + 1).toNat)

end

end A060701.P3517241765415744475

/-! ## A060701.P2015711900289254397

`or(char[2], A177517(A080036(n+1)))`
-/

namespace A060701.P2015711900289254397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A177517 (A080036 (n + 1)).toNat)

end

end A060701.P2015711900289254397

/-! ## A060701.P17945163071258252698

`A177517(A080036(1-char[1]+n))-char[1]`
-/

namespace A060701.P17945163071258252698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A080036 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060701.P17945163071258252698

/-! ## A060701.P15711039324562585297

`A007318(C(2, n))*A177517(A080036(n+1))`
-/

namespace A060701.P15711039324562585297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A177517 (A080036 (n + 1)).toNat

end

end A060701.P15711039324562585297

/-! ## A060701.P14654504054589016480

`A000041(C(2, n+2))*A177517(A080036(n+1))`
-/

namespace A060701.P14654504054589016480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A177517 (A080036 (n + 1)).toNat

end

end A060701.P14654504054589016480

/-! ## A060701.P6861672432054209306

`A000108(C(2, n+2))*A177517(A080036(n+1))`
-/

namespace A060701.P6861672432054209306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A177517 (A080036 (n + 1)).toNat

end

end A060701.P6861672432054209306

/-! ## A060701.P11405058263564750887

`A000032(gcd(n, n+1))*A177517(A080036(n+1))`
-/

namespace A060701.P11405058263564750887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd n (n + 1)) * A177517 (A080036 (n + 1)).toNat

end

end A060701.P11405058263564750887

/-! ## A060701.P4990507159085098586

`A177517(A080036(n+1))^A014963(4*n+2)`
-/

namespace A060701.P4990507159085098586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177517 (A080036 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A060701.P4990507159085098586

/-!
# A060702: Orders of finite groups that have trivial center.

The programs for A060702, there is no canonical definition to state claims against.
-/

/-! ## A060702.P7831761384814552500

`eq[1, A059806(n+1)]+1`
-/

namespace A060702.P7831761384814552500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060702.P7831761384814552500

/-! ## A060702.P12830810850382955820

`record[A000027(n+1)/A059806(n+1)]`
-/

namespace A060702.P12830810850382955820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A059806 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060702.P12830810850382955820

/-! ## A060702.P13849631959484685730

`record[A014684(n+1)/A059806(n+1)]`
-/

namespace A060702.P13849631959484685730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) : ℚ) / (A059806 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060702.P13849631959484685730

/-! ## A060702.P725572024968001016

`record[A008619(n)/A059806(A008619(n))]`
-/

namespace A060702.P725572024968001016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A059806 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060702.P725572024968001016

/-! ## A060702.P11977210580606712168

`record[A008620(n)/A059806(A008620(n))]`
-/

namespace A060702.P11977210580606712168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) / (A059806 (A008620 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060702.P11977210580606712168

/-! ## A060702.P7519811480500475422

`record[A008621(n)/A059806(A008621(n))]`
-/

namespace A060702.P7519811480500475422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008621 n : ℚ) / (A059806 (A008621 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060702.P7519811480500475422

/-! ## A060702.P17078068339295440509

`eq[n, A028310(n)*A059806(A028310(n))]`
-/

namespace A060702.P17078068339295440509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A059806 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060702.P17078068339295440509

/-! ## A060702.P16580515146722605787

`record[A003602(n+1)/A059806(A003602(n+1))]`
-/

namespace A060702.P16580515146722605787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) / (A059806 (A003602 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060702.P16580515146722605787

/-! ## A060702.P11114624083198369466

`record[A062298(n+1)/A059806(A062298(n+1))]`
-/

namespace A060702.P11114624083198369466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062298 (n + 1) : ℚ) / (A059806 (A062298 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060702.P11114624083198369466

/-!
# A060704: Singular n X n matrices over GF(2).

The programs for A060704, there is no canonical definition to state claims against.
-/

/-! ## A060704.P11682921486516684085

`∏[A000079(n)]*A114604(n)`
-/

namespace A060704.P11682921486516684085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A114604 n

end

end A060704.P11682921486516684085

/-! ## A060704.P7374667664774698441

`A006125(n+1)*A114604(n)`
-/

namespace A060704.P7374667664774698441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) * A114604 n

end

end A060704.P7374667664774698441

/-! ## A060704.P12208252181343845961

`A002416(n+1)-A002884(n+1)`
-/

namespace A060704.P12208252181343845961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) - A002884 (n + 1)

end

end A060704.P12208252181343845961

/-! ## A060704.P4476556721933064018

`A000079(A000217(n))*A114604(n)`
-/

namespace A060704.P4476556721933064018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000217 n).toNat * A114604 n

end

end A060704.P4476556721933064018

/-! ## A060704.P9152796971213774526

`A114604(n)/A186340(n)*A186339(n)`
-/

namespace A060704.P9152796971213774526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114604 n : ℚ) / (A186340 n : ℚ) * (A186339 n : ℚ)

end

end A060704.P9152796971213774526

/-!
# A060705: Singular n X n matrices over GF(3).

The programs for A060705, there is no canonical definition to state claims against.
-/

/-! ## A060705.P15249955087257956915

`A060722(n+1)-A053290(n+1)`
-/

namespace A060705.P15249955087257956915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060722 (n + 1) - A053290 (n + 1)

end

end A060705.P15249955087257956915

/-!
# A060706: For n >= 1 a(n) is the size of the conjugacy class in the symmetric group S_(4n) consisting of permutations whose cycle decomposition is a product of n disjoint 4-cycles.

The programs for A060706, the canonical program `A060706.P13181574498493673248` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060706 has offset 0).

The definition of A060706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060706.P13181574498493673248

`(4*n)!/(n!*4^n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060706

/-- `(4*n)!/(n!*4^n)` -/
def P13181574498493673248.Spec : Prop :=
  ∀ n, P13181574498493673248.a n = (A060706 n : ℚ)

end A060706

/-! ## A060706.P12338926255452909147

`(4*n-1)*(4*n-3)*(4*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A060706.P12338926255452909147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) - 1) * (((4 * n : ℤ) - 3) * (((4 * n : ℤ) - 2) * a (n - 1)))

end

end A060706.P12338926255452909147

namespace A060706

/-- `(4*n-1)*(4*n-3)*(4*n-2)*a(n-1)` -/
def P12338926255452909147.Spec : Prop :=
  ∀ n, P12338926255452909147.a n = A060706 n

end A060706

/-! ## A060706.P8750432243962570732

`lcm(A002867(n), A139541(n))`
-/

namespace A060706.P8750432243962570732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002867 n) (A139541 n)

end

end A060706.P8750432243962570732

namespace A060706

/-- `lcm(A002867(n), A139541(n))` -/
def P8750432243962570732.Spec : Prop :=
  ∀ n, (P8750432243962570732.a n : ℤ) = A060706 n

end A060706

/-! ## A060706.P9730257025441014337

`Δ[A000225(n)]*A139541(n)`
-/

namespace A060706.P9730257025441014337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A139541 n

end

end A060706.P9730257025441014337

namespace A060706

/-- `Δ[A000225(n)]*A139541(n)` -/
def P9730257025441014337.Spec : Prop :=
  ∀ n, P9730257025441014337.a n = A060706 n

end A060706

/-! ## A060706.P3618901033028080927

`A001147(2*n)*A001813(n)`
-/

namespace A060706.P3618901033028080927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (2 * n) * A001813 n

end

end A060706.P3618901033028080927

namespace A060706

/-- `A001147(2*n)*A001813(n)` -/
def P3618901033028080927.Spec : Prop :=
  ∀ n, P3618901033028080927.a n = A060706 n

end A060706

/-!
# A060710: Number of subgroups of dihedral group with 2n elements, counting conjugate subgroups only once, i.e., conjugacy classes of subgroups of the dihedral group.

The programs for A060710, the canonical program `A060710.P10859739969959718488` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060710 has offset 1).

The definition of A060710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060710.P10859739969959718488

`∑{d}[n+1, gcd(2, #)+1]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060710

/-- `∑{d}[n+1, gcd(2, #)+1]` -/
def P10859739969959718488.Spec : Prop :=
  ∀ n, (P10859739969959718488.a n : ℤ) = A060710 (n + 1)

theorem P10859739969959718488.correct : P10859739969959718488.Spec := by
  intro n
  simp only [A060710, Nat.add_sub_cancel]

end A060710

/-! ## A060710.P6435748960884258882

`∑{d}[n+1, 3-#%2]`
-/

namespace A060710.P6435748960884258882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 - ((d % 2 : ℕ) : ℤ))

end

end A060710.P6435748960884258882

namespace A060710

/-- `∑{d}[n+1, 3-#%2]` -/
def P6435748960884258882.Spec : Prop :=
  ∀ n, P6435748960884258882.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P1271752296311582313

`∑{d}[n+1, 3-and(1, #)]`
-/

namespace A060710.P1271752296311582313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 - (Nat.land 1 d : ℤ))

end

end A060710.P1271752296311582313

namespace A060710

/-- `∑{d}[n+1, 3-and(1, #)]` -/
def P1271752296311582313.Spec : Prop :=
  ∀ n, P1271752296311582313.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P14470514535370844947

`∑{d}[n+1, 1-or(#, -2)]`
-/

namespace A060710.P14470514535370844947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - Int.lor (d : ℤ) (-2))

end

end A060710.P14470514535370844947

namespace A060710

/-- `∑{d}[n+1, 1-or(#, -2)]` -/
def P14470514535370844947.Spec : Prop :=
  ∀ n, P14470514535370844947.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P8817489197309006480

`∑{d}[n+1, (#+1)%2+2]`
-/

namespace A060710.P8817489197309006480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d + 1) % 2 + 2)

end

end A060710.P8817489197309006480

namespace A060710

/-- `∑{d}[n+1, (#+1)%2+2]` -/
def P8817489197309006480.Spec : Prop :=
  ∀ n, (P8817489197309006480.a n : ℤ) = A060710 (n + 1)

end A060710

/-! ## A060710.P13264404928179495644

`∑{d}[n+1, A010693(#-1)]`
-/

namespace A060710.P13264404928179495644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010693 (d - 1)

end

end A060710.P13264404928179495644

namespace A060710

/-- `∑{d}[n+1, A010693(#-1)]` -/
def P13264404928179495644.Spec : Prop :=
  ∀ n, P13264404928179495644.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P18151775416097001189

`A069735(n+1)+A000005(n+1)`
-/

namespace A060710.P18151775416097001189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (n + 1) + A000005 (n + 1)

end

end A060710.P18151775416097001189

namespace A060710

/-- `A069735(n+1)+A000005(n+1)` -/
def P18151775416097001189.Spec : Prop :=
  ∀ n, P18151775416097001189.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P12184269166450287259

`A183063(n+1)+A062011(n+1)`
-/

namespace A060710.P12184269166450287259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A062011 (n + 1)

end

end A060710.P12184269166450287259

namespace A060710

/-- `A183063(n+1)+A062011(n+1)` -/
def P12184269166450287259.Spec : Prop :=
  ∀ n, P12184269166450287259.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P16895864609182042859

`∑{d}[n+1, A020639(A020639(#)+1)]`
-/

namespace A060710.P16895864609182042859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020639 (A020639 d + 1).toNat

end

end A060710.P16895864609182042859

namespace A060710

/-- `∑{d}[n+1, A020639(A020639(#)+1)]` -/
def P16895864609182042859.Spec : Prop :=
  ∀ n, P16895864609182042859.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P12189914384206787486

`A114003(n+1)+A183063(n+1)+1`
-/

namespace A060710.P12189914384206787486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + (A183063 (n + 1) + 1)

end

end A060710.P12189914384206787486

namespace A060710

/-- `A114003(n+1)+A183063(n+1)+1` -/
def P12189914384206787486.Spec : Prop :=
  ∀ n, P12189914384206787486.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P15052312402661377862

`A183063(n+1)+2*A000005(n+1)`
-/

namespace A060710.P15052312402661377862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + 2 * A000005 (n + 1)

end

end A060710.P15052312402661377862

namespace A060710

/-- `A183063(n+1)+2*A000005(n+1)` -/
def P15052312402661377862.Spec : Prop :=
  ∀ n, P15052312402661377862.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P6784611627978218713

`A320111(2*(n+1))+A069735(n+1)`
-/

namespace A060710.P6784611627978218713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + A069735 (n + 1)

end

end A060710.P6784611627978218713

namespace A060710

/-- `A320111(2*(n+1))+A069735(n+1)` -/
def P6784611627978218713.Spec : Prop :=
  ∀ n, P6784611627978218713.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P15938693556702520637

`A145154(n+1)-A000005(2*(n+1))`
-/

namespace A060710.P15938693556702520637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 1) - A000005 (2 * (n + 1))

end

end A060710.P15938693556702520637

namespace A060710

/-- `A145154(n+1)-A000005(2*(n+1))` -/
def P15938693556702520637.Spec : Prop :=
  ∀ n, P15938693556702520637.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P6007606284686220394

`2*A069735(n+1)-A183063(n+1)`
-/

namespace A060710.P6007606284686220394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069735 (n + 1) - A183063 (n + 1)

end

end A060710.P6007606284686220394

namespace A060710

/-- `2*A069735(n+1)-A183063(n+1)` -/
def P6007606284686220394.Spec : Prop :=
  ∀ n, P6007606284686220394.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P15396037799989381122

`∑{d}[n+1, A000005(#)*A033322((n+1)/#)]`
-/

namespace A060710.P15396037799989381122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A033322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060710.P15396037799989381122

namespace A060710

/-- `∑{d}[n+1, A000005(#)*A033322((n+1)/#)]` -/
def P15396037799989381122.Spec : Prop :=
  ∀ n, P15396037799989381122.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P1624791702252228113

`∑{d}[n+1, A176059(#)]`
-/

namespace A060710.P1624791702252228113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176059 d

end

end A060710.P1624791702252228113

namespace A060710

/-- `∑{d}[n+1, A176059(#)]` -/
def P1624791702252228113.Spec : Prop :=
  ∀ n, P1624791702252228113.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P1253242263194964517

`A145390(2*(n+1))+A000005(n+1)`
-/

namespace A060710.P1253242263194964517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (2 * (n + 1)) + A000005 (n + 1)

end

end A060710.P1253242263194964517

namespace A060710

/-- `A145390(2*(n+1))+A000005(n+1)` -/
def P1253242263194964517.Spec : Prop :=
  ∀ n, P1253242263194964517.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P15354322231465433026

`A094572(2*(n+1))+A000005(2*(n+1))`
-/

namespace A060710.P15354322231465433026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094572 (2 * (n + 1)) + A000005 (2 * (n + 1))

end

end A060710.P15354322231465433026

namespace A060710

/-- `A094572(2*(n+1))+A000005(2*(n+1))` -/
def P15354322231465433026.Spec : Prop :=
  ∀ n, P15354322231465433026.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P6489887810875064786

`A183063(2*(n+1))+A145390(2*(n+1))`
-/

namespace A060710.P6489887810875064786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) + A145390 (2 * (n + 1))

end

end A060710.P6489887810875064786

namespace A060710

/-- `A183063(2*(n+1))+A145390(2*(n+1))` -/
def P6489887810875064786.Spec : Prop :=
  ∀ n, P6489887810875064786.a n = A060710 (n + 1)

end A060710

/-! ## A060710.P17463475161324309423

`A000005(2*(n+1))+2*A112329(2*(n+1))`
-/

namespace A060710.P17463475161324309423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) + 2 * A112329 (2 * (n + 1))

end

end A060710.P17463475161324309423

namespace A060710

/-- `A000005(2*(n+1))+2*A112329(2*(n+1))` -/
def P17463475161324309423.Spec : Prop :=
  ∀ n, P17463475161324309423.a n = A060710 (n + 1)

end A060710

/-!
# A060711: 

The programs for A060711, there is no canonical definition to state claims against.
-/

/-! ## A060711.P2799826517671665250

`A061104((n+1)²)`
-/

namespace A060711.P2799826517671665250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061104 ((n + 1) ^ 2)

end

end A060711.P2799826517671665250

/-!
# A060712: Smallest number whose sum of digits is 3^n.

The programs for A060712, there is no canonical definition to state claims against.
-/

/-! ## A060712.P12798451718721759791

`A002998(3^n)`
-/

namespace A060712.P12798451718721759791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (3 ^ n)

end

end A060712.P12798451718721759791

/-! ## A060712.P18429546728353017407

`A010785(3^n)`
-/

namespace A060712.P18429546728353017407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (3 ^ n)

end

end A060712.P18429546728353017407

/-! ## A060712.P7694068462905985096

`A051885(3^n)`
-/

namespace A060712.P7694068462905985096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (3 ^ n)

end

end A060712.P7694068462905985096

/-!
# A060713: 

The programs for A060713, there is no canonical definition to state claims against.
-/

/-! ## A060713.P11438452613908133075

`A051885(5^n)`
-/

namespace A060713.P11438452613908133075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (5 ^ n)

end

end A060713.P11438452613908133075

/-!
# A060714: a(n) = a(n-1) + a(n-1 minus the number of terms of the same parity as n so far).

The programs for A060714, there is no canonical definition to state claims against.
-/

/-! ## A060714.P3609546968137896685

`A276611(A026563(n+1)*A051038(n+1))`
-/

namespace A060714.P3609546968137896685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A026563 (n + 1) * A051038 (n + 1)).toNat

end

end A060714.P3609546968137896685

/-!
# A060715: Number of primes between n and 2n exclusive.

The programs for A060715, the canonical program `A060715.P12348036717669642849` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060715 has offset 1).

The definition of A060715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060715.P12348036717669642849

`n-A307912(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060715

/-- `n-A307912(n+1)` -/
def P12348036717669642849.Spec : Prop :=
  ∀ n, P12348036717669642849.a n = A060715 (n + 1)

theorem P12348036717669642849.correct : P12348036717669642849.Spec := by
  intro n
  simp only [A060715, Nat.add_sub_cancel]

end A060715

/-! ## A060715.P2215706998005153812

`A108954(n+1)%(n+1)`
-/

namespace A060715.P2215706998005153812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108954 (n + 1)) (n + 1 : ℤ)

end

end A060715.P2215706998005153812

namespace A060715

/-- `A108954(n+1)%(n+1)` -/
def P2215706998005153812.Spec : Prop :=
  ∀ n, P2215706998005153812.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P4463688484174113045

`A000720(2*n+1)-∑[round(∑{p}[n+1, (#/(n+1))²])]`
-/

namespace A060715.P4463688484174113045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℚ) / (n + 1 : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060715.P4463688484174113045

namespace A060715

/-- `A000720(2*n+1)-∑[round(∑{p}[n+1, (#/(n+1))²])]` -/
def P4463688484174113045.Spec : Prop :=
  ∀ n, P4463688484174113045.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P10852086713453862697

`A056171(A103517(n))`
-/

namespace A060715.P10852086713453862697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A103517 n).toNat

end

end A060715.P10852086713453862697

namespace A060715

/-- `A056171(A103517(n))` -/
def P10852086713453862697.Spec : Prop :=
  ∀ n, P10852086713453862697.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P11669501627533098733

`A056171(A014683(n+1)+n)`
-/

namespace A060715.P11669501627533098733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A014683 (n + 1) + (n : ℤ)).toNat

end

end A060715.P11669501627533098733

namespace A060715

/-- `A056171(A014683(n+1)+n)` -/
def P11669501627533098733.Spec : Prop :=
  ∀ n, P11669501627533098733.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P14765342362286880401

`A101264(n)+A077463(n+1)`
-/

namespace A060715.P14765342362286880401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + A077463 (n + 1)

end

end A060715.P14765342362286880401

namespace A060715

/-- `A101264(n)+A077463(n+1)` -/
def P14765342362286880401.Spec : Prop :=
  ∀ n, P14765342362286880401.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P13933426487689209876

`A099801(n)-A000720(n+1)`
-/

namespace A060715.P13933426487689209876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - A000720 (n + 1)

end

end A060715.P13933426487689209876

namespace A060715

/-- `A099801(n)-A000720(n+1)` -/
def P13933426487689209876.Spec : Prop :=
  ∀ n, P13933426487689209876.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P16261913295634645643

`A108954(n+1)-A000007(n)`
-/

namespace A060715.P16261913295634645643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) - A000007 n

end

end A060715.P16261913295634645643

namespace A060715

/-- `A108954(n+1)-A000007(n)` -/
def P16261913295634645643.Spec : Prop :=
  ∀ n, P16261913295634645643.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P8626340754736997378

`A057427(n)*A108954(n+1)`
-/

namespace A060715.P8626340754736997378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A108954 (n + 1)

end

end A060715.P8626340754736997378

namespace A060715

/-- `A057427(n)*A108954(n+1)` -/
def P8626340754736997378.Spec : Prop :=
  ∀ n, P8626340754736997378.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P13317733339873936681

`and(A003817(n), A108954(n+1))`
-/

namespace A060715.P13317733339873936681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A108954 (n + 1))

end

end A060715.P13317733339873936681

namespace A060715

/-- `and(A003817(n), A108954(n+1))` -/
def P13317733339873936681.Spec : Prop :=
  ∀ n, P13317733339873936681.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P13842908511999052783

`and(A057428(n), A108954(n+1))`
-/

namespace A060715.P13842908511999052783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A108954 (n + 1))

end

end A060715.P13842908511999052783

namespace A060715

/-- `and(A057428(n), A108954(n+1))` -/
def P13842908511999052783.Spec : Prop :=
  ∀ n, P13842908511999052783.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P10229881698578109211

`and(A108954(n+1), A134824(n))`
-/

namespace A060715.P10229881698578109211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108954 (n + 1)) (A134824 n)

end

end A060715.P10229881698578109211

namespace A060715

/-- `and(A108954(n+1), A134824(n))` -/
def P10229881698578109211.Spec : Prop :=
  ∀ n, P10229881698578109211.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P10581007485109841961

`A099801(n)-∑[A010051(n+1)]`
-/

namespace A060715.P10581007485109841961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060715.P10581007485109841961

namespace A060715

/-- `A099801(n)-∑[A010051(n+1)]` -/
def P10581007485109841961.Spec : Prop :=
  ∀ n, P10581007485109841961.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P3817994759512179865

`A035250(n+1)-A080339(n+1)`
-/

namespace A060715.P3817994759512179865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) - A080339 (n + 1)

end

end A060715.P3817994759512179865

namespace A060715

/-- `A035250(n+1)-A080339(n+1)` -/
def P3817994759512179865.Spec : Prop :=
  ∀ n, P3817994759512179865.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P14066291894559302423

`A014085(n+1)-A143223(n+1)`
-/

namespace A060715.P14066291894559302423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1) - A143223 (n + 1)

end

end A060715.P14066291894559302423

namespace A060715

/-- `A014085(n+1)-A143223(n+1)` -/
def P14066291894559302423.Spec : Prop :=
  ∀ n, P14066291894559302423.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P6986402773864565625

`A108954(n+1)-A063524(n+1)`
-/

namespace A060715.P6986402773864565625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) - A063524 (n + 1)

end

end A060715.P6986402773864565625

namespace A060715

/-- `A108954(n+1)-A063524(n+1)` -/
def P6986402773864565625.Spec : Prop :=
  ∀ n, P6986402773864565625.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P7368171794679767460

`A056171(2*(n+1))-A000007(n)`
-/

namespace A060715.P7368171794679767460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1)) - A000007 n

end

end A060715.P7368171794679767460

namespace A060715

/-- `A056171(2*(n+1))-A000007(n)` -/
def P7368171794679767460.Spec : Prop :=
  ∀ n, P7368171794679767460.a n = A060715 (n + 1)

end A060715

/-! ## A060715.P6265552848989868836

`A263995(n+1)%A027424(n+1)`
-/

namespace A060715.P6265552848989868836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263995 (n + 1)) (A027424 (n + 1))

end

end A060715.P6265552848989868836

namespace A060715

/-- `A263995(n+1)%A027424(n+1)` -/
def P6265552848989868836.Spec : Prop :=
  ∀ n, P6265552848989868836.a n = A060715 (n + 1)

end A060715

/-!
# A060717: Degrees of irreducible representations of alternating group A_14.

The programs for A060717, there is no canonical definition to state claims against.
-/

/-! ## A060717.P13830352586160096641

`A059796(2*A077342(n+1))`
-/

namespace A060717.P13830352586160096641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059796 (2 * A077342 (n + 1)).toNat

end

end A060717.P13830352586160096641

/-! ## A060717.P18172814454701097243

`A059796(2*A242474(n+1))`
-/

namespace A060717.P18172814454701097243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059796 (2 * A242474 (n + 1)).toNat

end

end A060717.P18172814454701097243

/-! ## A060717.P12912950625765450218

`A059796(A077342(n+1)+n)`
-/

namespace A060717.P12912950625765450218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059796 (A077342 (n + 1) + (n : ℤ)).toNat

end

end A060717.P12912950625765450218

/-! ## A060717.P11775024888731670041

`A059796(A242474(n+1)+n)`
-/

namespace A060717.P11775024888731670041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059796 (A242474 (n + 1) + (n : ℤ)).toNat

end

end A060717.P11775024888731670041

/-! ## A060717.P1848112526552411600

`A059796(A351374(n+1)+n)`
-/

namespace A060717.P1848112526552411600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059796 (A351374 (n + 1) + (n : ℤ)).toNat

end

end A060717.P1848112526552411600

/-!
# A060719: a(0) = 1; a(n+1) = a(n) + Sum_{i=0..n} binomial(n,i)*(a(i)+1).

The programs for A060719, there is no canonical definition to state claims against.
-/

/-! ## A060719.P12682142624806883971

`A186021(n+1)-1`
-/

namespace A060719.P12682142624806883971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 (n + 1) - 1

end

end A060719.P12682142624806883971

/-! ## A060719.P5392404543539219929

`A136791(∑[n+1])`
-/

namespace A060719.P5392404543539219929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060719.P5392404543539219929

/-! ## A060719.P6116275063898213920

`∑[abs(Δ[A186021(n)])]`
-/

namespace A060719.P6116275063898213920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060719.P6116275063898213920

/-! ## A060719.P4965801761988436170

`2*A011972(∑[n])-1`
-/

namespace A060719.P4965801761988436170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011972 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A060719.P4965801761988436170

/-! ## A060719.P16073852443068194448

`2*A123346(∑[n])-1`
-/

namespace A060719.P16073852443068194448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123346 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A060719.P16073852443068194448

/-! ## A060719.P6197203956106171489

`record[2*A095149(n)-1]`
-/

namespace A060719.P6197203956106171489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095149 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060719.P6197203956106171489

/-! ## A060719.P11105253756480962982

`record[2*A108087(n)-1]`
-/

namespace A060719.P11105253756480962982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108087 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060719.P11105253756480962982

/-! ## A060719.P8104397300358236674

`record[2*A123346(n)-1]`
-/

namespace A060719.P8104397300358236674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123346 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060719.P8104397300358236674

/-! ## A060719.P8868733748605783145

`record[2*A186020(n)-1]`
-/

namespace A060719.P8868733748605783145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186020 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060719.P8868733748605783145

/-! ## A060719.P18033012905459943340

`record[2*A205574(n)-1]`
-/

namespace A060719.P18033012905459943340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205574 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060719.P18033012905459943340

/-!
# A060722: a(n) = 3^(n^2).

The programs for A060722, the canonical program `A060722.P2589213307438030463` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060722 has offset 0).

The definition of A060722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n²` (program `A060722.P2589213307438030463`, by `A060722.P2589213307438030463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060722.P2589213307438030463

`3^n²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060722

/-- `3^n²` -/
def P2589213307438030463.Spec : Prop :=
  ∀ n, (P2589213307438030463.a n : ℤ) = A060722 n

theorem P2589213307438030463.correct : P2589213307438030463.Spec := by
  intro n
  simp only [A060722]

end A060722

/-!
# A060723: a(n) is the denominator of r(n) where r(n) is the sequence of rational numbers defined by the recursion: r(0) = 0, r(1) = 1 and for n>1 r(n) = r(n-1) + r(n-2)/2. From this definition it is clear that a(n) is always a power of 2 (see A060755).

The programs for A060723, the canonical program `A060723.P17724226130501470945` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060723 has offset 0).

The definition of A060723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060723.P14718883463402650122

`2^A060755(n)`
-/

namespace A060723.P14718883463402650122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A060755 n : ℤ)

end

end A060723.P14718883463402650122

namespace A060723

/-- `2^A060755(n)` -/
def P14718883463402650122.Spec : Prop :=
  ∀ n, P14718883463402650122.a n = (A060723 n : ℚ)

end A060723

/-! ## A060723.P2900454580228377306

`A000079(A060755(n))`
-/

namespace A060723.P2900454580228377306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A060755 n).toNat

end

end A060723.P2900454580228377306

namespace A060723

/-- `A000079(A060755(n))` -/
def P2900454580228377306.Spec : Prop :=
  ∀ n, P2900454580228377306.a n = A060723 n

end A060723

/-! ## A060723.P8254270071815917514

`A011782(A060755(n)+1)`
-/

namespace A060723.P8254270071815917514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A060755 n + 1).toNat

end

end A060723.P8254270071815917514

namespace A060723

/-- `A011782(A060755(n)+1)` -/
def P8254270071815917514.Spec : Prop :=
  ∀ n, P8254270071815917514.a n = A060723 n

end A060723

/-! ## A060723.P8058668585438343255

`A131577(A060755(n)+1)`
-/

namespace A060723.P8058668585438343255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A060755 n + 1).toNat

end

end A060723.P8058668585438343255

namespace A060723

/-- `A131577(A060755(n)+1)` -/
def P8058668585438343255.Spec : Prop :=
  ∀ n, P8058668585438343255.a n = A060723 n

end A060723

/-! ## A060723.P17724226130501470945

`2^floor(n/2)/gcd(2^floor(n/2), or(2*n, n%4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060723

/-- `2^floor(n/2)/gcd(2^floor(n/2), or(2*n, n%4))` -/
def P17724226130501470945.Spec : Prop :=
  ∀ n, P17724226130501470945.a n = (A060723 n : ℚ)

end A060723

/-! ## A060723.P10031630102465645042

`A016116(n)/gcd(A016116(n), A048788(n))`
-/

namespace A060723.P10031630102465645042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (Int.gcd (A016116 n) (A048788 n) : ℚ)

end

end A060723.P10031630102465645042

namespace A060723

/-- `A016116(n)/gcd(A016116(n), A048788(n))` -/
def P10031630102465645042.Spec : Prop :=
  ∀ n, P10031630102465645042.a n = (A060723 n : ℚ)

end A060723

/-! ## A060723.P14424275701892756433

`A011782(n)/A011782(n-A060755(n))`
-/

namespace A060723.P14424275701892756433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A011782 ((n : ℤ) - A060755 n).toNat : ℚ)

end

end A060723.P14424275701892756433

namespace A060723

/-- `A011782(n)/A011782(n-A060755(n))` -/
def P14424275701892756433.Spec : Prop :=
  ∀ n, P14424275701892756433.a n = (A060723 n : ℚ)

end A060723

/-! ## A060723.P12582752921296205880

`A011782(n)/gcd(A002605(n), A011782(n))`
-/

namespace A060723.P12582752921296205880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (Int.gcd (A002605 n) (A011782 n) : ℚ)

end

end A060723.P12582752921296205880

namespace A060723

/-- `A011782(n)/gcd(A002605(n), A011782(n))` -/
def P12582752921296205880.Spec : Prop :=
  ∀ n, P12582752921296205880.a n = (A060723 n : ℚ)

end A060723

/-! ## A060723.P15921961323047734290

`A026150(n)/gcd(A001353(n), A026150(n))`
-/

namespace A060723.P15921961323047734290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / (Int.gcd (A001353 n) (A026150 n) : ℚ)

end

end A060723.P15921961323047734290

namespace A060723

/-- `A026150(n)/gcd(A001353(n), A026150(n))` -/
def P15921961323047734290.Spec : Prop :=
  ∀ n, P15921961323047734290.a n = (A060723 n : ℚ)

end A060723

/-!
# A060724: Number of subgroups of the group C_n X C_n (where C_n is the cyclic group of order n).

The programs for A060724, the canonical program `A060724.P13091416846170327268` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060724 has offset 1).

The definition of A060724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060724.P13091416846170327268

`∑{d}[n+1, A060648(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060724

/-- `∑{d}[n+1, A060648(#)]` -/
def P13091416846170327268.Spec : Prop :=
  ∀ n, P13091416846170327268.a n = A060724 (n + 1)

theorem P13091416846170327268.correct : P13091416846170327268.Spec := by
  intro n
  simp only [A060724, Nat.add_sub_cancel]

end A060724

/-! ## A060724.P16586548068804157416

`∑{d}[n+1, #*A048691((n+1)/#)]`
-/

namespace A060724.P16586548068804157416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P16586548068804157416

namespace A060724

/-- `∑{d}[n+1, #*A048691((n+1)/#)]` -/
def P16586548068804157416.Spec : Prop :=
  ∀ n, P16586548068804157416.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P7407738318178413675

`∑{d}[n+1, A000005(#)*A001615((n+1)/#)]`
-/

namespace A060724.P7407738318178413675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P7407738318178413675

namespace A060724

/-- `∑{d}[n+1, A000005(#)*A001615((n+1)/#)]` -/
def P7407738318178413675.Spec : Prop :=
  ∀ n, P7407738318178413675.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P11847915357985518401

`∑{d}[n+1, A007429(#)*A008966((n+1)/#)]`
-/

namespace A060724.P11847915357985518401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P11847915357985518401

namespace A060724

/-- `∑{d}[n+1, A007429(#)*A008966((n+1)/#)]` -/
def P11847915357985518401.Spec : Prop :=
  ∀ n, P11847915357985518401.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P6086128040684299010

`∑{d}[n+1, A000203(#)*A034444((n+1)/#)]`
-/

namespace A060724.P6086128040684299010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P6086128040684299010

namespace A060724

/-- `∑{d}[n+1, A000203(#)*A034444((n+1)/#)]` -/
def P6086128040684299010.Spec : Prop :=
  ∀ n, P6086128040684299010.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P13707047566610149795

`∑{d}[n+1, A000010(#)*A035116((n+1)/#)]`
-/

namespace A060724.P13707047566610149795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P13707047566610149795

namespace A060724

/-- `∑{d}[n+1, A000010(#)*A035116((n+1)/#)]` -/
def P13707047566610149795.Spec : Prop :=
  ∀ n, P13707047566610149795.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P4655918756712349788

`∑{d}[n+1, A007431(#)*A062367((n+1)/#)]`
-/

namespace A060724.P4655918756712349788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A062367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P4655918756712349788

namespace A060724

/-- `∑{d}[n+1, A007431(#)*A062367((n+1)/#)]` -/
def P4655918756712349788.Spec : Prop :=
  ∀ n, P4655918756712349788.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P783752541141022763

`∑{d}[n+1, A008683(#)*A062369((n+1)/#)]`
-/

namespace A060724.P783752541141022763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A062369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P783752541141022763

namespace A060724

/-- `∑{d}[n+1, A008683(#)*A062369((n+1)/#)]` -/
def P783752541141022763.Spec : Prop :=
  ∀ n, P783752541141022763.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P10003055848142239904

`∑{d}[n+1, A007425(#)*A063659((n+1)/#)]`
-/

namespace A060724.P10003055848142239904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P10003055848142239904

namespace A060724

/-- `∑{d}[n+1, A007425(#)*A063659((n+1)/#)]` -/
def P10003055848142239904.Spec : Prop :=
  ∀ n, P10003055848142239904.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P5206894337691447989

`∑{d}[n+1, A034448(#)*A055155((n+1)/#)]`
-/

namespace A060724.P5206894337691447989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A055155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P5206894337691447989

namespace A060724

/-- `∑{d}[n+1, A034448(#)*A055155((n+1)/#)]` -/
def P5206894337691447989.Spec : Prop :=
  ∀ n, P5206894337691447989.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P10402610247328588291

`∑{d}[n+1, A048250(#)*A068976((n+1)/#)]`
-/

namespace A060724.P10402610247328588291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A068976 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P10402610247328588291

namespace A060724

/-- `∑{d}[n+1, A048250(#)*A068976((n+1)/#)]` -/
def P10402610247328588291.Spec : Prop :=
  ∀ n, P10402610247328588291.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P4864503378509620263

`∑{d}[n+1, A007426(#)*A130107((n+1)/#)]`
-/

namespace A060724.P4864503378509620263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P4864503378509620263

namespace A060724

/-- `∑{d}[n+1, A007426(#)*A130107((n+1)/#)]` -/
def P4864503378509620263.Spec : Prop :=
  ∀ n, P4864503378509620263.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P17187604419629632137

`∑{d}[n+1, A078644(#)*A080512((n+1)/#)]`
-/

namespace A060724.P17187604419629632137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078644 d * A080512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P17187604419629632137

namespace A060724

/-- `∑{d}[n+1, A078644(#)*A080512((n+1)/#)]` -/
def P17187604419629632137.Spec : Prop :=
  ∀ n, P17187604419629632137.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P9464831701433588234

`∑{d}[n+1, A069735(#)*A159634((n+1)/#)]`
-/

namespace A060724.P9464831701433588234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P9464831701433588234

namespace A060724

/-- `∑{d}[n+1, A069735(#)*A159634((n+1)/#)]` -/
def P9464831701433588234.Spec : Prop :=
  ∀ n, P9464831701433588234.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P3572709533872970552

`∑{d}[n+1, A007430(#)*A271102((n+1)/#)]`
-/

namespace A060724.P3572709533872970552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P3572709533872970552

namespace A060724

/-- `∑{d}[n+1, A007430(#)*A271102((n+1)/#)]` -/
def P3572709533872970552.Spec : Prop :=
  ∀ n, P3572709533872970552.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P17588079950136914392

`∑{d}[n+1, A008833(#)*A319132((n+1)/#)]`
-/

namespace A060724.P17588079950136914392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060724.P17588079950136914392

namespace A060724

/-- `∑{d}[n+1, A008833(#)*A319132((n+1)/#)]` -/
def P17588079950136914392.Spec : Prop :=
  ∀ n, P17588079950136914392.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P17193168178899056451

`A216625(∑[n+1])`
-/

namespace A060724.P17193168178899056451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060724.P17193168178899056451

namespace A060724

/-- `A216625(∑[n+1])` -/
def P17193168178899056451.Spec : Prop :=
  ∀ n, P17193168178899056451.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P16249364457599970442

`A124316((n+1)²)`
-/

namespace A060724.P16249364457599970442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124316 ((n + 1) ^ 2)

end

end A060724.P16249364457599970442

namespace A060724

/-- `A124316((n+1)²)` -/
def P16249364457599970442.Spec : Prop :=
  ∀ n, P16249364457599970442.a n = A060724 (n + 1)

end A060724

/-! ## A060724.P8380263354882922234

`∑{d}[n+1, A055155(#²)]`
-/

namespace A060724.P8380263354882922234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055155 (d ^ 2)

end

end A060724.P8380263354882922234

namespace A060724

/-- `∑{d}[n+1, A055155(#²)]` -/
def P8380263354882922234.Spec : Prop :=
  ∀ n, P8380263354882922234.a n = A060724 (n + 1)

end A060724

/-!
# A060725: E.g.f.: exp(-(x^5/5))/(1-x).

The programs for A060725, there is no canonical definition to state claims against.
-/

/-! ## A060725.P6359596889738289030

`n!-A029572(n)`
-/

namespace A060725.P6359596889738289030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A029572 n

end

end A060725.P6359596889738289030

/-! ## A060725.P11317872345155688050

`A000142(n)-A029572(n)`
-/

namespace A060725.P11317872345155688050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A029572 n

end

end A060725.P11317872345155688050

/-! ## A060725.P6814768219419200755

`Δ[A003422(n)]-A029572(n)`
-/

namespace A060725.P6814768219419200755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A029572 n

end

end A060725.P6814768219419200755

/-! ## A060725.P12541757234547138902

`∏[A028310(n)]-A029572(n)`
-/

namespace A060725.P12541757234547138902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A029572 n

end

end A060725.P12541757234547138902

/-!
# A060726: For n >= 1, a(n) is the number of permutations in the symmetric group S_n such that their cycle decomposition contains no 6-cycle.

The programs for A060726, there is no canonical definition to state claims against.
-/

/-! ## A060726.P4184246511258273480

`n!-A029573(n)`
-/

namespace A060726.P4184246511258273480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A029573 n

end

end A060726.P4184246511258273480

/-! ## A060726.P14969882980854381605

`A000142(n)-A029573(n)`
-/

namespace A060726.P14969882980854381605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A029573 n

end

end A060726.P14969882980854381605

/-! ## A060726.P8375916445038076379

`abs(A133942(n))-A029573(n)`
-/

namespace A060726.P8375916445038076379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A029573 n

end

end A060726.P8375916445038076379

/-! ## A060726.P11022870794828093706

`Δ[A003422(n)]-A029573(n)`
-/

namespace A060726.P11022870794828093706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A029573 n

end

end A060726.P11022870794828093706

/-!
# A060727: For n >= 1 a(n) is the number of permutations in the symmetric group S_n such that their cycle decomposition contains no 7-cycle.

The programs for A060727, there is no canonical definition to state claims against.
-/

/-! ## A060727.P4789647435523472789

`n!-A029574(n)`
-/

namespace A060727.P4789647435523472789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A029574 n

end

end A060727.P4789647435523472789

/-! ## A060727.P456150017492008044

`A000142(n)-A029574(n)`
-/

namespace A060727.P456150017492008044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A029574 n

end

end A060727.P456150017492008044

/-! ## A060727.P10879073665350716208

`abs(A133942(n))-A029574(n)`
-/

namespace A060727.P10879073665350716208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A029574 n

end

end A060727.P10879073665350716208

/-! ## A060727.P6289824982043423723

`Δ[A003422(n)]-A029574(n)`
-/

namespace A060727.P6289824982043423723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A029574 n

end

end A060727.P6289824982043423723

/-! ## A060727.P9383198212991067911

`∏[A065033(2*n)]-A029574(n)`
-/

namespace A060727.P9383198212991067911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A029574 n

end

end A060727.P9383198212991067911

/-! ## A060727.P9477718118695465787

`A000166(n)+A002467(n)-A029574(n)`
-/

namespace A060727.P9477718118695465787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + (A002467 n - A029574 n)

end

end A060727.P9477718118695465787

/-! ## A060727.P15703216298003445595

`A000138(n)+A029571(n)-A029574(n)`
-/

namespace A060727.P15703216298003445595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000138 n + (A029571 n - A029574 n)

end

end A060727.P15703216298003445595

/-!
# A060729: a(n+1) = a(n) + a(n minus the number of terms of the same parity as n so far).

The programs for A060729, there is no canonical definition to state claims against.
-/

/-! ## A060729.P14592140684722550401

`∑[A262611(∑[A193734(n)])]`
-/

namespace A060729.P14592140684722550401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193734 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060729.P14592140684722550401

/-! ## A060729.P3397728923248651108

`∑[A043556(∏[A077581(n+1)])]`
-/

namespace A060729.P3397728923248651108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060729.P3397728923248651108

/-! ## A060729.P15563433737689526364

`A229302(A392463(n+2))%A079454(n+4)`
-/

namespace A060729.P15563433737689526364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229302 (A392463 (n + 2)).toNat) (A079454 (n + 4))

end

end A060729.P15563433737689526364

/-! ## A060729.P8918643724135728957

`∑[A333224(A227375(n))]`
-/

namespace A060729.P8918643724135728957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A227375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060729.P8918643724135728957

/-! ## A060729.P8539497902134587800

`A113512(A000064(n+1))`
-/

namespace A060729.P8539497902134587800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113512 (A000064 (n + 1)).toNat

end

end A060729.P8539497902134587800

/-!
# A060730: a(n) = a(n-1) + a(n - 1 minus the number of terms of a(k) == n (mod 3) so far).

The programs for A060730, there is no canonical definition to state claims against.
-/

/-! ## A060730.P10727578011464690101

`∑[A305301(A193344(∑[n])-1)]`
-/

namespace A060730.P10727578011464690101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305301 (A193344 (∑ j ∈ Finset.range (n + 1), f2 j) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060730.P10727578011464690101

/-! ## A060730.P11936363490333864731

`floor(sqrt(A316313(∑[n+2]+4)))`
-/

namespace A060730.P11936363490333864731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A316313 (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A060730.P11936363490333864731

/-! ## A060730.P3949297655096256438

`∑[A053735(A202705(n))]`
-/

namespace A060730.P3949297655096256438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A202705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060730.P3949297655096256438

/-! ## A060730.P8918561223999860044

`∑[A329198(A101500(n))]`
-/

namespace A060730.P8918561223999860044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329198 (A101500 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060730.P8918561223999860044

/-! ## A060730.P4211965357046318424

`∑[A001817(∏[A102405(n)])]`
-/

namespace A060730.P4211965357046318424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060730.P4211965357046318424

/-!
# A060731: a(n) = a(n-1) + a(n - 1 minus the number of terms of a(k) == (mod 4) so far).

The programs for A060731, there is no canonical definition to state claims against.
-/

/-! ## A060731.P8894289362328987404

`A056556(∑{d}[A058818(n), #])`
-/

namespace A060731.P8894289362328987404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A060731.P8894289362328987404

/-! ## A060731.P4728425652276302907

`Δ[Δ[A000006(A051439(n))]]`
-/

namespace A060731.P4728425652276302907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A051439 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060731.P4728425652276302907

/-! ## A060731.P9014147704168185293

`record[A116675(record[A122282(n)])]`
-/

namespace A060731.P9014147704168185293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116675 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060731.P9014147704168185293

/-! ## A060731.P907150079892319322

`A106442(∑[A072713(n+1)])`
-/

namespace A060731.P907150079892319322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060731.P907150079892319322

/-! ## A060731.P8330061548409758018

`∑[A286334(A084696(n+1))]`
-/

namespace A060731.P8330061548409758018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286334 (A084696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060731.P8330061548409758018

/-!
# A060733: a(n) = a(n-1) + a(n - 1 minus the number of terms of a(k) == (mod 6) so far).

The programs for A060733, there is no canonical definition to state claims against.
-/

/-! ## A060733.P7841891854452940866

`lt[A111633(2*n), 3]+1`
-/

namespace A060733.P7841891854452940866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111633 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A060733.P7841891854452940866

/-! ## A060733.P5741193770617807513

`record[gcd(n+1, A113602(2*(n+1)))]`
-/

namespace A060733.P5741193770617807513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A113602 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060733.P5741193770617807513

/-! ## A060733.P18340764212155297683

`∑[A244232(A001736(n)+1)]`
-/

namespace A060733.P18340764212155297683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244232 (A001736 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060733.P18340764212155297683

/-! ## A060733.P3877364323793638329

`∑[A069897(A149965(n))%15]`
-/

namespace A060733.P3877364323793638329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069897 (A149965 n).toNat) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060733.P3877364323793638329

/-! ## A060733.P2856265520353393173

`∑[A119989(∏[A120019(n+2)])]`
-/

namespace A060733.P2856265520353393173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119989 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060733.P2856265520353393173

/-!
# A060734: Natural numbers written as a square array ending in last row from left to right and rightmost column from bottom to top are read by antidiagonals downwards.

The programs for A060734, the canonical program `A060734.P8616229989639901220` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060734 has offset 1).

The definition of A060734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060734.P8616229989639901220

`A114327(n)+A002061(A051125(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A060734

/-- `A114327(n)+A002061(A051125(n+1))` -/
def P8616229989639901220.Spec : Prop :=
  ∀ n, P8616229989639901220.a n = A060734 (n + 1)

theorem P8616229989639901220.correct : P8616229989639901220.Spec := by
  intro n
  simp only [A060734, Nat.add_sub_cancel]

end A060734

/-! ## A060734.P5812972881349554070

`A114327(n)+A033638(A204022(n+1))`
-/

namespace A060734.P5812972881349554070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + A033638 (A204022 (n + 1)).toNat

end

end A060734.P5812972881349554070

namespace A060734

/-- `A114327(n)+A033638(A204022(n+1))` -/
def P5812972881349554070.Spec : Prop :=
  ∀ n, P5812972881349554070.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P3812414331141869302

`A002061(A051125(n+1))+A061579(n)-n`
-/

namespace A060734.P3812414331141869302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A051125 (n + 1)).toNat + (A061579 n - (n : ℤ))

end

end A060734.P3812414331141869302

namespace A060734

/-- `A002061(A051125(n+1))+A061579(n)-n` -/
def P3812414331141869302.Spec : Prop :=
  ∀ n, P3812414331141869302.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P12235515314891429135

`A060736(∑[char[∑[n]]]²-n)`
-/

namespace A060734.P12235515314891429135
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A060734.P12235515314891429135

namespace A060734

/-- `A060736(∑[char[∑[n]]]²-n)` -/
def P12235515314891429135.Spec : Prop :=
  ∀ n, P12235515314891429135.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P2307020269511674988

`A220508(A061579(n))+1`
-/

namespace A060734.P2307020269511674988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 (A061579 n).toNat + 1

end

end A060734.P2307020269511674988

namespace A060734

/-- `A220508(A061579(n))+1` -/
def P2307020269511674988.Spec : Prop :=
  ∀ n, P2307020269511674988.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P15131190782030164324

`A081344(A208234(n+1)+A057944(n))`
-/

namespace A060734.P15131190782030164324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A208234 (n + 1) + A057944 n).toNat

end

end A060734.P15131190782030164324

namespace A060734

/-- `A081344(A208234(n+1)+A057944(n))` -/
def P15131190782030164324.Spec : Prop :=
  ∀ n, P15131190782030164324.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P3579547729313475404

`A081344(A188568(A056023(A056011(n+1))))`
-/

namespace A060734.P3579547729313475404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A188568 (A056023 (A056011 (n + 1)).toNat).toNat).toNat

end

end A060734.P3579547729313475404

namespace A060734

/-- `A081344(A188568(A056023(A056011(n+1))))` -/
def P3579547729313475404.Spec : Prop :=
  ∀ n, P3579547729313475404.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P7868627024318233453

`A020703(A060736(n+1))`
-/

namespace A060734.P7868627024318233453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A060736 (n + 1)).toNat

end

end A060734.P7868627024318233453

namespace A060734

/-- `A020703(A060736(n+1))` -/
def P7868627024318233453.Spec : Prop :=
  ∀ n, P7868627024318233453.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P11672576934061553962

`A045901(A213922(n+1))`
-/

namespace A060734.P11672576934061553962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045901 (A213922 (n + 1)).toNat

end

end A060734.P11672576934061553962

namespace A060734

/-- `A045901(A213922(n+1))` -/
def P11672576934061553962.Spec : Prop :=
  ∀ n, P11672576934061553962.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P4165125107044316159

`A081344(A064790(A081344(n+1)))`
-/

namespace A060734.P4165125107044316159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A064790 (A081344 (n + 1)).toNat).toNat

end

end A060734.P4165125107044316159

namespace A060734

/-- `A081344(A064790(A081344(n+1)))` -/
def P4165125107044316159.Spec : Prop :=
  ∀ n, P4165125107044316159.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P1036142147724583863

`A213928(A064790(A213928(n+1)))`
-/

namespace A060734.P1036142147724583863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213928 (A064790 (A213928 (n + 1)).toNat).toNat

end

end A060734.P1036142147724583863

namespace A060734

/-- `A213928(A064790(A213928(n+1)))` -/
def P1036142147724583863.Spec : Prop :=
  ∀ n, P1036142147724583863.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P9688711860517658223

`A219159(A064790(A219159(n+1)))`
-/

namespace A060734.P9688711860517658223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219159 (A064790 (A219159 (n + 1)).toNat).toNat

end

end A060734.P9688711860517658223

namespace A060734

/-- `A219159(A064790(A219159(n+1)))` -/
def P9688711860517658223.Spec : Prop :=
  ∀ n, P9688711860517658223.a n = A060734 (n + 1)

end A060734

/-! ## A060734.P9006260058388478121

`A170950(A213922(n+1)-A068344(n))`
-/

namespace A060734.P9006260058388478121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170950 (A213922 (n + 1) - A068344 n).toNat

end

end A060734.P9006260058388478121

namespace A060734

/-- `A170950(A213922(n+1)-A068344(n))` -/
def P9006260058388478121.Spec : Prop :=
  ∀ n, P9006260058388478121.a n = A060734 (n + 1)

end A060734

/-!
# A060735: a(1)=1, a(2)=2; thereafter, a(n) is the smallest number m not yet in the sequence such that every prime that divides a(n-1) also divides m.

The programs for A060735, there is no canonical definition to state claims against.
-/

/-! ## A060735.P3547205502496322573

`1+A343048(n)`
-/

namespace A060735.P3547205502496322573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A343048 n

end

end A060735.P3547205502496322573

/-! ## A060735.P16918484282448979204

`1-A057428(n)*A343048(n)`
-/

namespace A060735.P16918484282448979204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A343048 n

end

end A060735.P16918484282448979204

/-! ## A060735.P1445623656876263421

`2-(A033999(n)²-A343048(n))`
-/

namespace A060735.P1445623656876263421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A033999 n ^ 2 - A343048 n)

end

end A060735.P1445623656876263421

/-! ## A060735.P11647161631596094158

`A000124(n)-(∑[n]-A343048(n))`
-/

namespace A060735.P11647161631596094158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A343048 n)

end

end A060735.P11647161631596094158

/-! ## A060735.P14836221096670855556

`Δ[A000125(n)]-(∑[n]-A343048(n))`
-/

namespace A060735.P14836221096670855556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A343048 n)

end

end A060735.P14836221096670855556

/-! ## A060735.P16542026181679293405

`∩[A055932(n+1), A288784(n)]`
-/

namespace A060735.P16542026181679293405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060735.P16542026181679293405

/-! ## A060735.P245395257612802725

`∩[A055932(n+1), A116998(n+1)]`
-/

namespace A060735.P245395257612802725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060735.P245395257612802725

/-! ## A060735.P14801994713223298935

`∩[A055932(n+1), A392612(n+1)]`
-/

namespace A060735.P14801994713223298935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060735.P14801994713223298935

/-! ## A060735.P4895745053140304541

`∩[A090958(n), A288784(n)]`
-/

namespace A060735.P4895745053140304541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060735.P4895745053140304541

/-! ## A060735.P5192613962131580486

`∩[A116998(n+1), A090958(n)]`
-/

namespace A060735.P5192613962131580486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060735.P5192613962131580486

/-!
# A060736: Array of square numbers read by antidiagonals in up direction.

The programs for A060736, the canonical program `A060736.P900922812008928419` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060736 has offset 1).

The definition of A060736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060736.P900922812008928419

`A220508(n)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A060736

/-- `A220508(n)+1` -/
def P900922812008928419.Spec : Prop :=
  ∀ n, P900922812008928419.a n = A060736 (n + 1)

theorem P900922812008928419.correct : P900922812008928419.Spec := by
  intro n
  simp only [A060736, Nat.add_sub_cancel]

end A060736

/-! ## A060736.P2960193466215140470

`A060734(∑[char[∑[n]]]²-n)`
-/

namespace A060736.P2960193466215140470
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A060736.P2960193466215140470

namespace A060736

/-- `A060734(∑[char[∑[n]]]²-n)` -/
def P2960193466215140470.Spec : Prop :=
  ∀ n, P2960193466215140470.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P14536539359682775635

`A002061(A051125(n+1))-A114327(n)`
-/

namespace A060736.P14536539359682775635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A051125 (n + 1)).toNat - A114327 n

end

end A060736.P14536539359682775635

namespace A060736

/-- `A002061(A051125(n+1))-A114327(n)` -/
def P14536539359682775635.Spec : Prop :=
  ∀ n, P14536539359682775635.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P890973389327673813

`A033638(A204022(n+1))-A114327(n)`
-/

namespace A060736.P890973389327673813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A204022 (n + 1)).toNat - A114327 n

end

end A060736.P890973389327673813

namespace A060736

/-- `A033638(A204022(n+1))-A114327(n)` -/
def P890973389327673813.Spec : Prop :=
  ∀ n, P890973389327673813.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P12370321148236644278

`A081344(A188568(n+1))`
-/

namespace A060736.P12370321148236644278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A188568 (n + 1)).toNat

end

end A060736.P12370321148236644278

namespace A060736

/-- `A081344(A188568(n+1))` -/
def P12370321148236644278.Spec : Prop :=
  ∀ n, P12370321148236644278.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P16111332348936505

`A020703(A060734(n+1))`
-/

namespace A060736.P16111332348936505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A060734 (n + 1)).toNat

end

end A060736.P16111332348936505

namespace A060736

/-- `A020703(A060734(n+1))` -/
def P16111332348936505.Spec : Prop :=
  ∀ n, P16111332348936505.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P4765261490465043057

`A170950(A213922(n+1))`
-/

namespace A060736.P4765261490465043057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170950 (A213922 (n + 1)).toNat

end

end A060736.P4765261490465043057

namespace A060736

/-- `A170950(A213922(n+1))` -/
def P4765261490465043057.Spec : Prop :=
  ∀ n, P4765261490465043057.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P13438952675197003499

`A081344(A064788(A081344(n+1)))`
-/

namespace A060736.P13438952675197003499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A064788 (A081344 (n + 1)).toNat).toNat

end

end A060736.P13438952675197003499

namespace A060736

/-- `A081344(A064788(A081344(n+1)))` -/
def P13438952675197003499.Spec : Prop :=
  ∀ n, P13438952675197003499.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P9211183899359862288

`A213928(A064788(A213928(n+1)))`
-/

namespace A060736.P9211183899359862288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213928 (A064788 (A213928 (n + 1)).toNat).toNat

end

end A060736.P9211183899359862288

namespace A060736

/-- `A213928(A064788(A213928(n+1)))` -/
def P9211183899359862288.Spec : Prop :=
  ∀ n, P9211183899359862288.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P13979924883189029188

`A219159(A064788(A219159(n+1)))`
-/

namespace A060736.P13979924883189029188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219159 (A064788 (A219159 (n + 1)).toNat).toNat

end

end A060736.P13979924883189029188

namespace A060736

/-- `A219159(A064788(A219159(n+1)))` -/
def P13979924883189029188.Spec : Prop :=
  ∀ n, P13979924883189029188.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P16547356114382811088

`A028242(2*A220508(n))`
-/

namespace A060736.P16547356114382811088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A220508 n).toNat

end

end A060736.P16547356114382811088

namespace A060736

/-- `A028242(2*A220508(n))` -/
def P16547356114382811088.Spec : Prop :=
  ∀ n, P16547356114382811088.a n = A060736 (n + 1)

end A060736

/-! ## A060736.P13273970900708484393

`A004442(2*A220508(n))-A220508(n)`
-/

namespace A060736.P13273970900708484393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A220508 n).toNat - A220508 n

end

end A060736.P13273970900708484393

namespace A060736

/-- `A004442(2*A220508(n))-A220508(n)` -/
def P13273970900708484393.Spec : Prop :=
  ∀ n, P13273970900708484393.a n = A060736 (n + 1)

end A060736

/-!
# A060737: Number of distinct differences between consecutive divisors of n! (ordered by size).

The programs for A060737, there is no canonical definition to state claims against.
-/

/-! ## A060737.P13513496363044786568

`A060742(n)+A060738(n)`
-/

namespace A060737.P13513496363044786568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060742 n + A060738 n

end

end A060737.P13513496363044786568

/-! ## A060737.P7323189479048490683

`eq[1, A107260(n+2)]-A107286(n)`
-/

namespace A060737.P7323189479048490683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A107286 n

end

end A060737.P7323189479048490683

/-! ## A060737.P2135446619383917419

`A342528(n)-A006530(A273696(n))`
-/

namespace A060737.P2135446619383917419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342528 n - A006530 (A273696 n).toNat

end

end A060737.P2135446619383917419

/-! ## A060737.P10257680634138399652

`A332578(n)-A382152(A000930(n))`
-/

namespace A060737.P10257680634138399652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332578 n - A382152 (A000930 n).toNat

end

end A060737.P10257680634138399652

/-! ## A060737.P18378565211655096654

`A109401(A061257(n))`
-/

namespace A060737.P18378565211655096654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (A061257 n).toNat

end

end A060737.P18378565211655096654

/-!
# A060738: Number of distinct differences between consecutive divisors (ordered by increasing magnitude) of n! which are not also divisors of n!.

The programs for A060738, there is no canonical definition to state claims against.
-/

/-! ## A060738.P5652078552210022964

`A060737(n)-A060742(n)`
-/

namespace A060738.P5652078552210022964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060737 n - A060742 n

end

end A060738.P5652078552210022964

/-!
# A060739: a(n) = (-1)^(n*(n-1)/2) * Product_{k=0..n-1} (n+k-1)!/((k!)^2 * (n-1-k)!).

The programs for A060739, there is no canonical definition to state claims against.
-/

/-! ## A060739.P168981222088691651

`A349442(and(A002426(3*n+1), A349458(2*n)))`
-/

namespace A060739.P168981222088691651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349442 (Int.land (A002426 (3 * n + 1)) (A349458 (2 * n))).toNat

end

end A060739.P168981222088691651

/-!
# A060741: Number of divisors of 2n which are also differences between consecutive divisors of 2n (ordered by size).

The programs for A060741, there is no canonical definition to state claims against.
-/

/-! ## A060741.P1078279824198214251

`∑{d}[n+1, lcm(2, #)/#]-A060764(2*(n+1))`
-/

namespace A060741.P1078279824198214251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / (d : ℚ) - (A060764 (2 * (n + 1)) : ℚ)

end

end A060741.P1078279824198214251

/-! ## A060741.P13848119473455878384

`A099777(n+1)-A060764(2*(n+1))`
-/

namespace A060741.P13848119473455878384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A060764 (2 * (n + 1))

end

end A060741.P13848119473455878384

/-! ## A060741.P7828146881858240906

`A000005(2*(n+1))-A060764(2*(n+1))`
-/

namespace A060741.P7828146881858240906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A060764 (2 * (n + 1))

end

end A060741.P7828146881858240906

/-! ## A060741.P2978880524670121307

`A060682(2*(n+1))-A060763(2*(n+1))`
-/

namespace A060741.P2978880524670121307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060682 (2 * (n + 1)) - A060763 (2 * (n + 1))

end

end A060741.P2978880524670121307

/-! ## A060741.P7562215813747049436

`A289849(n+1)-A210455(n+1)`
-/

namespace A060741.P7562215813747049436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (n + 1) - A210455 (n + 1)

end

end A060741.P7562215813747049436

/-!
# A060742: Number of divisors of n! which are also differences between consecutive divisors of n! (ordered by size).

The programs for A060742, there is no canonical definition to state claims against.
-/

/-! ## A060742.P17092117352574585639

`A060737(n)-A060738(n)`
-/

namespace A060742.P17092117352574585639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060737 n - A060738 n

end

end A060742.P17092117352574585639

/-! ## A060742.P8249420079291073268

`eq[1, A107260(n+2)]-A107286(n)-A060738(n)`
-/

namespace A060742.P8249420079291073268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A107286 n - A060738 n

end

end A060742.P8249420079291073268

/-! ## A060742.P12632602272400741103

`A342528(n)-(A060738(n)+A006530(A273696(n)))`
-/

namespace A060742.P12632602272400741103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342528 n - (A060738 n + A006530 (A273696 n).toNat)

end

end A060742.P12632602272400741103

/-! ## A060742.P17973214796896057752

`A347697(A275605(n))`
-/

namespace A060742.P17973214796896057752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A275605 n).toNat

end

end A060742.P17973214796896057752

/-! ## A060742.P13456994335422644624

`A371625(A347760(n))`
-/

namespace A060742.P13456994335422644624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371625 (A347760 n).toNat

end

end A060742.P13456994335422644624

/-!
# A060744: Numbers n such that n | p(n)*q(n), where p() is the unrestricted partition function (A000041) and q is the distinct partition function (A000009).

The programs for A060744, there is no canonical definition to state claims against.
-/

/-! ## A060744.P7088776784530407542

`eq[n, gcd(n, A304991(n))]`
-/

namespace A060744.P7088776784530407542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A304991 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060744.P7088776784530407542

/-!
# A060745: When gcd( p(n), q(n) ) increases, where p() is the unrestricted partition function (A000041) and q is the distinct partition function (A000009).

The programs for A060745, there is no canonical definition to state claims against.
-/

/-! ## A060745.P1920047194765777891

`A191917(A160677(n+1))`
-/

namespace A060745.P1920047194765777891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191917 (A160677 (n + 1)).toNat

end

end A060745.P1920047194765777891

/-!
# A060746: Absolute value of numerator of non-Euler-constant term of Laurent expansion of Gamma function at s = -n.

The programs for A060746, there is no canonical definition to state claims against.
-/

/-! ## A060746.P1947199672012558078

`A124078(n)/gcd(A000142(n), A124078(n))`
-/

namespace A060746.P1947199672012558078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124078 n : ℚ) / (Int.gcd (A000142 n) (A124078 n) : ℚ)

end

end A060746.P1947199672012558078

/-! ## A060746.P4341679351631952670

`lcm(A000254(n), A334958(2*n+1))/A334958(2*n+1)`
-/

namespace A060746.P4341679351631952670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000254 n) (A334958 (2 * n + 1)) : ℚ) / (A334958 (2 * n + 1) : ℚ)

end

end A060746.P4341679351631952670

/-! ## A060746.P8067719246754037923

`abs(A103879(∑[n+1]+1))`
-/

namespace A060746.P8067719246754037923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103879 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A060746.P8067719246754037923

/-! ## A060746.P7710546024207957577

`C(2, n+2)-A103879(A134869(n+1))`
-/

namespace A060746.P7710546024207957577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - A103879 (A134869 (n + 1)).toNat

end

end A060746.P7710546024207957577

/-! ## A060746.P2305082764081887792

`A093411(A000254(n)/A008279(n))`
-/

namespace A060746.P2305082764081887792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (SequenceMachineLib.roundAway ((A000254 n : ℚ) / (A008279 n : ℚ))).toNat

end

end A060746.P2305082764081887792

/-!
# A060747: a(n) = 2*n - 1.

The programs for A060747, the canonical program `A060747.P16920431360270313306` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060747 has offset 0).

The definition of A060747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n-1` (program `A060747.P16920431360270313306`, by `A060747.P16920431360270313306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060747.P16920431360270313306

`2*n-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060747

/-- `2*n-1` -/
def P16920431360270313306.Spec : Prop :=
  ∀ n, P16920431360270313306.a n = A060747 n

theorem P16920431360270313306.correct : P16920431360270313306.Spec := by
  intro n
  simp only [A060747]

end A060747

/-!
# A060749: Triangle in which n-th row lists all primitive roots modulo the n-th prime.

The programs for A060749, there is no canonical definition to state claims against.
-/

/-! ## A060749.P16308019839002742418

`A000193(2^val(n+1, 2)*A195248(n+1))`
-/

namespace A060749.P16308019839002742418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 ((2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A195248 (n + 1)).toNat

end

end A060749.P16308019839002742418

/-! ## A060749.P13570038180701568424

`A358372(A371767(n))+A001222(n+1)`
-/

namespace A060749.P13570038180701568424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A371767 n).toNat + A001222 (n + 1)

end

end A060749.P13570038180701568424

/-!
# A060750: Step at which card n appears on top of deck for first time in Guy's shuffling problem A035485.

The programs for A060750, there is no canonical definition to state claims against.
-/

/-! ## A060750.P15824576949112170022

`A063667(∑[n])+A035490(n+1)`
-/

namespace A060750.P15824576949112170022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (∑ j ∈ Finset.range (n + 1), f1 j) + A035490 (n + 1)

end

end A060750.P15824576949112170022

/-! ## A060750.P1391581697141049146

`A169585(n+1)+A035490(n+1)`
-/

namespace A060750.P1391581697141049146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (n + 1) + A035490 (n + 1)

end

end A060750.P1391581697141049146

/-! ## A060750.P17861142415515501736

`A035490(n+1)+3*A000007(n)`
-/

namespace A060750.P17861142415515501736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (n + 1) + 3 * A000007 n

end

end A060750.P17861142415515501736

/-! ## A060750.P9622928498641908366

`A035490(n+1)+3*A151909(n)`
-/

namespace A060750.P9622928498641908366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (n + 1) + 3 * A151909 n

end

end A060750.P9622928498641908366

/-! ## A060750.P15206988550879084583

`A035490(n+1)+C(3, A055788(n))`
-/

namespace A060750.P15206988550879084583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (n + 1) + (Nat.choose 3 (A055788 n).toNat : ℤ)

end

end A060750.P15206988550879084583

/-! ## A060750.P4479627798040127873

`A061397(3*(n+1))+A035490(n+1)`
-/

namespace A060750.P4479627798040127873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (3 * (n + 1)) + A035490 (n + 1)

end

end A060750.P4479627798040127873

/-! ## A060750.P6920273689960559037

`A035490(n+1)+A131991(n+1)%4`
-/

namespace A060750.P6920273689960559037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (n + 1) + Int.tmod (A131991 (n + 1)) 4

end

end A060750.P6920273689960559037

/-! ## A060750.P16014259152356220601

`A035490(n+1)+3*val(record[A014963(n+2)], 2)`
-/

namespace A060750.P16014259152356220601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (n + 1) + (3 * SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 : ℤ)

end

end A060750.P16014259152356220601

/-! ## A060750.P15136281083624316832

`A035490(n+1)+A010104(A000120(n))`
-/

namespace A060750.P15136281083624316832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (n + 1) + A010104 (A000120 n).toNat

end

end A060750.P15136281083624316832

/-! ## A060750.P6079144421578276159

`A035490(n+1)+A010104(A000196(n))`
-/

namespace A060750.P6079144421578276159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (n + 1) + A010104 (A000196 n).toNat

end

end A060750.P6079144421578276159

/-!
# A060751: These numbers take a record number of steps to reach the top of the deck in Guy's shuffle (see A060750).

The programs for A060751, there is no canonical definition to state claims against.
-/

/-! ## A060751.P5302390298945919896

`A057983(comp[comp[3*n]!])`
-/

namespace A060751.P5302390298945919896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057983 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A060751.P5302390298945919896

/-! ## A060751.P15278326833170724623

`A057983(n+2)%(n+2)!`
-/

namespace A060751.P15278326833170724623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057983 (n + 2)) (Nat.factorial (n + 2) : ℤ)

end

end A060751.P15278326833170724623

/-! ## A060751.P18385375732588260480

`A057983(3%comp[∑[n]]+n-1)`
-/

namespace A060751.P18385375732588260480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057983 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n - 1)

end

end A060751.P18385375732588260480

/-! ## A060751.P14696222431339247442

`A057983(comp[15*C(n, 2)+n+1])`
-/

namespace A060751.P14696222431339247442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * Nat.choose n 2 + n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057983 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A060751.P14696222431339247442

/-! ## A060751.P3534007452586929975

`A057983(comp[A234505(n)])`
-/

namespace A060751.P3534007452586929975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234505 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057983 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A060751.P3534007452586929975

/-!
# A060752: These numbers are the record number of steps for the numbers in A060751 to reach the top of the deck in Guy's shuffle (see A060750).

The programs for A060752, there is no canonical definition to state claims against.
-/

/-! ## A060752.P225459716641874900

`floor(A057984(n+2)+acot(n))`
-/

namespace A060752.P225459716641874900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057984 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A060752.P225459716641874900

/-! ## A060752.P1531925223523874740

`record[or(A057984(n), A063667(n))]`
-/

namespace A060752.P1531925223523874740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057984 n) (A063667 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060752.P1531925223523874740

/-! ## A060752.P14612272237596438757

`A057984(n+2)+A000007(n)`
-/

namespace A060752.P14612272237596438757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057984 (n + 2) + A000007 n

end

end A060752.P14612272237596438757

/-! ## A060752.P561221800720674471

`record[A057984(n+1)+A000038(n)]`
-/

namespace A060752.P561221800720674471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057984 (n + 1) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060752.P561221800720674471

/-! ## A060752.P1108152844628287375

`A057984(n+2)+char[A119285(n)]`
-/

namespace A060752.P1108152844628287375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119285 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057984 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A060752.P1108152844628287375

/-!
# A060753: Denominator of 1*2*4*6*...*(prime(n-1)-1) / (2*3*5*7*...*prime(n-1)).

The programs for A060753, there is no canonical definition to state claims against.
-/

/-! ## A060753.P2970116182077061632

`record[A076358(A029579(n))]`
-/

namespace A060753.P2970116182077061632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060753.P2970116182077061632

/-! ## A060753.P1343324721173161400

`A076358(A006093(n+1))`
-/

namespace A060753.P1343324721173161400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A006093 (n + 1)).toNat

end

end A060753.P1343324721173161400

/-! ## A060753.P9787374184809605906

`A076358(A008578(n+1))`
-/

namespace A060753.P9787374184809605906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A008578 (n + 1)).toNat

end

end A060753.P9787374184809605906

/-! ## A060753.P365307415930365799

`A076358(A015919(n+1))`
-/

namespace A060753.P365307415930365799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A015919 (n + 1)).toNat

end

end A060753.P365307415930365799

/-! ## A060753.P17877711476286287907

`A076358(A065514(n+1))`
-/

namespace A060753.P17877711476286287907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A065514 (n + 1)).toNat

end

end A060753.P17877711476286287907

/-! ## A060753.P16379364754748871517

`A076358(A112925(n+1))`
-/

namespace A060753.P16379364754748871517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A112925 (n + 1)).toNat

end

end A060753.P16379364754748871517

/-! ## A060753.P5917723405065893023

`A076358(A157604(n+1))`
-/

namespace A060753.P5917723405065893023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A157604 (n + 1)).toNat

end

end A060753.P5917723405065893023

/-! ## A060753.P11920087017555287059

`A076358(A324050(n+1))`
-/

namespace A060753.P11920087017555287059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A324050 (n + 1)).toNat

end

end A060753.P11920087017555287059

/-! ## A060753.P4275757994130157588

`A076358(A158611(n+2))`
-/

namespace A060753.P4275757994130157588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A158611 (n + 2)).toNat

end

end A060753.P4275757994130157588

/-! ## A060753.P8380812786150481991

`A076358(A335402(n+2))`
-/

namespace A060753.P8380812786150481991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076358 (A335402 (n + 2)).toNat

end

end A060753.P8380812786150481991

/-!
# A060755: a(n) = log_2(A060723(n)).

The programs for A060755, the canonical program `A060755.P8092056796497788820` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060755 has offset 0).

The definition of A060755 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060723, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060755.P8092056796497788820

`log2(A060723(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060755

/-- `log2(A060723(n))` -/
def P8092056796497788820.Spec : Prop :=
  ∀ n, P8092056796497788820.a n = (A060755 n : ℝ)

end A060755

/-! ## A060755.P2430611013586214468

`A254667(A093049(n))-A004524(n)`
-/

namespace A060755.P2430611013586214468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A093049 n).toNat - A004524 n

end

end A060755.P2430611013586214468

namespace A060755

/-- `A254667(A093049(n))-A004524(n)` -/
def P2430611013586214468.Spec : Prop :=
  ∀ n, P2430611013586214468.a n = A060755 n

end A060755

/-! ## A060755.P14524622751853005

`A028310(A093048(n)-A004524(n))-1`
-/

namespace A060755.P14524622751853005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A093048 n - A004524 n).toNat - 1

end

end A060755.P14524622751853005

namespace A060755

/-- `A028310(A093048(n)-A004524(n))-1` -/
def P14524622751853005.Spec : Prop :=
  ∀ n, P14524622751853005.a n = A060755 n

end A060755

/-! ## A060755.P2957479169176041369

`floor(A004273(A093048(n)-A004524(n))/2)`
-/

namespace A060755.P2957479169176041369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004273 (A093048 n - A004524 n).toNat : ℚ) / 2⌋

end

end A060755.P2957479169176041369

namespace A060755

/-- `floor(A004273(A093048(n)-A004524(n))/2)` -/
def P2957479169176041369.Spec : Prop :=
  ∀ n, P2957479169176041369.a n = A060755 n

end A060755

/-! ## A060755.P15249926647719210057

`A004524(A004273(A093048(n)-A004524(n)))`
-/

namespace A060755.P15249926647719210057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004273 (A093048 n - A004524 n).toNat).toNat

end

end A060755.P15249926647719210057

namespace A060755

/-- `A004524(A004273(A093048(n)-A004524(n)))` -/
def P15249926647719210057.Spec : Prop :=
  ∀ n, P15249926647719210057.a n = A060755 n

end A060755

/-! ## A060755.P17453042554565295956

`val(A060723(n), A000040(A060680(2*(n+2))))`
-/

namespace A060755.P17453042554565295956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060723 n).toNat (A000040 (A060680 (2 * (n + 2))).toNat).toNat

end

end A060755.P17453042554565295956

namespace A060755

/-- `val(A060723(n), A000040(A060680(2*(n+2))))` -/
def P17453042554565295956.Spec : Prop :=
  ∀ n, (P17453042554565295956.a n : ℤ) = A060755 n

end A060755

/-! ## A060755.P12320589358420058137

`log2(2^floor(n/2)/gcd(2^floor(n/2), or(2*n, n%4)))`
-/

namespace A060755.P12320589358420058137
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / (Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (Nat.lor (2 * n) (n % 4) : ℤ) : ℚ) : ℝ)

end

end A060755.P12320589358420058137

namespace A060755

/-- `log2(2^floor(n/2)/gcd(2^floor(n/2), or(2*n, n%4)))` -/
def P12320589358420058137.Spec : Prop :=
  ∀ n, P12320589358420058137.a n = (A060755 n : ℝ)

end A060755

/-!
# A060756: a(n) is the smallest number for which exactly n primes are bounded between a(n) and 2a(n) exclusively.

The programs for A060756, there is no canonical definition to state claims against.
-/

/-! ## A060756.P1335963761461173137

`eq[A061670(n+1), A279848(n+3)]`
-/

namespace A060756.P1335963761461173137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279848 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060756.P1335963761461173137

/-! ## A060756.P13179243536773540456

`record[A137847(A054712(2*n+1))-A193592(n)]`
-/

namespace A060756.P13179243536773540456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (A054712 (2 * n + 1)).toNat - A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060756.P13179243536773540456

/-! ## A060756.P2517293729025173345

`A359682(2*n+1)-A128428(A125135(n+5))`
-/

namespace A060756.P2517293729025173345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359682 (2 * n + 1) - A128428 (A125135 (n + 5)).toNat

end

end A060756.P2517293729025173345

/-!
# A060757: a(n) = 4^(n^2).

The programs for A060757, the canonical program `A060757.P7635649960497566426` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060757 has offset 0).

The definition of A060757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n²` (program `A060757.P7635649960497566426`, by `A060757.P7635649960497566426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060757.P7635649960497566426

`4^n²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060757

/-- `4^n²` -/
def P7635649960497566426.Spec : Prop :=
  ∀ n, (P7635649960497566426.a n : ℤ) = A060757 n

theorem P7635649960497566426.correct : P7635649960497566426.Spec := by
  intro n
  simp only [A060757]

end A060757

/-!
# A060758: a(n) = 5^(n^2).

The programs for A060758, the canonical program `A060758.P7256117949719674031` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060758 has offset 0).

The definition of A060758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n²` (program `A060758.P7256117949719674031`, by `A060758.P7256117949719674031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060758.P7256117949719674031

`5^n²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060758

/-- `5^n²` -/
def P7256117949719674031.Spec : Prop :=
  ∀ n, (P7256117949719674031.a n : ℤ) = A060758 n

theorem P7256117949719674031.correct : P7256117949719674031.Spec := by
  intro n
  simp only [A060758]

end A060758

/-!
# A060759: a(n) = 7^(n^2).

The programs for A060759, the canonical program `A060759.P8100451158984530122` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060759 has offset 0).

The definition of A060759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n²` (program `A060759.P8100451158984530122`, by `A060759.P8100451158984530122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060759.P8100451158984530122

`7^n²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060759

/-- `7^n²` -/
def P8100451158984530122.Spec : Prop :=
  ∀ n, (P8100451158984530122.a n : ℤ) = A060759 n

theorem P8100451158984530122.correct : P8100451158984530122.Spec := by
  intro n
  simp only [A060759]

end A060759

/-!
# A060760: a(n) = 8^(n^2).

The programs for A060760, the canonical program `A060760.P5847382103380211972` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060760 has offset 0).

The definition of A060760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n²` (program `A060760.P5847382103380211972`, by `A060760.P5847382103380211972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060760.P5847382103380211972

`8^n²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060760

/-- `8^n²` -/
def P5847382103380211972.Spec : Prop :=
  ∀ n, (P5847382103380211972.a n : ℤ) = A060760 n

theorem P5847382103380211972.correct : P5847382103380211972.Spec := by
  intro n
  simp only [A060760]

end A060760

/-!
# A060761: a(n) = 9^(n^2).

The programs for A060761, the canonical program `A060761.P8195413406555080930` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060761 has offset 0).

The definition of A060761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n²` (program `A060761.P8195413406555080930`, by `A060761.P8195413406555080930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060761.P8195413406555080930

`9^n²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060761

/-- `9^n²` -/
def P8195413406555080930.Spec : Prop :=
  ∀ n, (P8195413406555080930.a n : ℤ) = A060761 n

theorem P8195413406555080930.correct : P8195413406555080930.Spec := by
  intro n
  simp only [A060761]

end A060761

/-!
# A060762: Number of conjugacy classes (the same as the number of irreducible representations) in the dihedral group with 2n elements.

The programs for A060762, the canonical program `A060762.P1628905812398900479` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060762 has offset 1).

The definition of A060762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060762.P1628905812398900479

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=4, a(2)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060762

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1628905812398900479.Spec : Prop :=
  ∀ n, P1628905812398900479.a n = A060762 (n + 1)

theorem P1628905812398900479.correct : P1628905812398900479.Spec := by
  intro n
  simp only [A060762, Nat.add_sub_cancel]

end A060762

/-! ## A060762.P12015513041654276917

`a(n-2)+1` with `a(0)=2, a(1)=4`
-/

namespace A060762.P12015513041654276917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 1

end

end A060762.P12015513041654276917

namespace A060762

/-- `a(n-2)+1` -/
def P12015513041654276917.Spec : Prop :=
  ∀ n, (P12015513041654276917.a n : ℤ) = A060762 (n + 1)

end A060762

/-! ## A060762.P2535168907754489216

`ceil(xor(1, n+5)/2)`
-/

namespace A060762.P2535168907754489216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 5) : ℚ) / 2⌉

end

end A060762.P2535168907754489216

namespace A060762

/-- `ceil(xor(1, n+5)/2)` -/
def P2535168907754489216.Spec : Prop :=
  ∀ n, P2535168907754489216.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P14251128679030374143

`round(xor(1, n+5)/2)`
-/

namespace A060762.P14251128679030374143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 5) : ℚ) / 2)

end

end A060762.P14251128679030374143

namespace A060762

/-- `round(xor(1, n+5)/2)` -/
def P14251128679030374143.Spec : Prop :=
  ∀ n, P14251128679030374143.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P15334266039248826978

`Δ[ceil(((n+5)/2)²)]`
-/

namespace A060762.P15334266039248826978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 5 : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060762.P15334266039248826978

namespace A060762

/-- `Δ[ceil(((n+5)/2)²)]` -/
def P15334266039248826978.Spec : Prop :=
  ∀ n, P15334266039248826978.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P281004014418984879

`3-∑[(-2)^(n%2)]`
-/

namespace A060762.P281004014418984879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060762.P281004014418984879

namespace A060762

/-- `3-∑[(-2)^(n%2)]` -/
def P281004014418984879.Spec : Prop :=
  ∀ n, P281004014418984879.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P14210573173599684637

`∑[1-a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A060762.P14210573173599684637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060762.P14210573173599684637

namespace A060762

/-- `∑[1-a(n-1)]` -/
def P14210573173599684637.Spec : Prop :=
  ∀ n, P14210573173599684637.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P1240228418830145744

`5-(a(n-1)-n)` with `a(0)=2`
-/

namespace A060762.P1240228418830145744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 - (a (n - 1) - (n : ℤ))

end

end A060762.P1240228418830145744

namespace A060762

/-- `5-(a(n-1)-n)` -/
def P1240228418830145744.Spec : Prop :=
  ∀ n, P1240228418830145744.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P1933841098235737522

`(xor(6, gcd(2, n))+n)/2`
-/

namespace A060762.P1933841098235737522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 (Nat.gcd 2 n) + n : ℚ) / 2

end

end A060762.P1933841098235737522

namespace A060762

/-- `(xor(6, gcd(2, n))+n)/2` -/
def P1933841098235737522.Spec : Prop :=
  ∀ n, P1933841098235737522.a n = (A060762 (n + 1) : ℚ)

end A060762

/-! ## A060762.P10271901933613761358

`floor((xor(1, n+1)+5)/2)`
-/

namespace A060762.P10271901933613761358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 1) + 5 : ℚ) / 2⌋

end

end A060762.P10271901933613761358

namespace A060762

/-- `floor((xor(1, n+1)+5)/2)` -/
def P10271901933613761358.Spec : Prop :=
  ∀ n, P10271901933613761358.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P298880537153726794

`∑[3*and(1, n)]-(n-2)`
-/

namespace A060762.P298880537153726794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)

end

end A060762.P298880537153726794

namespace A060762

/-- `∑[3*and(1, n)]-(n-2)` -/
def P298880537153726794.Spec : Prop :=
  ∀ n, P298880537153726794.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P14441532061790984407

`∑[and(3, -n²)]-(n-2)`
-/

namespace A060762.P14441532061790984407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 2)

end

end A060762.P14441532061790984407

namespace A060762

/-- `∑[and(3, -n²)]-(n-2)` -/
def P14441532061790984407.Spec : Prop :=
  ∀ n, P14441532061790984407.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P14748481920968403888

`(n-gcd(4, n*n))/2+4`
-/

namespace A060762.P14748481920968403888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.gcd 4 (n * n) : ℤ) : ℚ) / 2 + 4

end

end A060762.P14748481920968403888

namespace A060762

/-- `(n-gcd(4, n*n))/2+4` -/
def P14748481920968403888.Spec : Prop :=
  ∀ n, P14748481920968403888.a n = (A060762 (n + 1) : ℚ)

end A060762

/-! ## A060762.P1820542055034332892

`((and(1, n)+1)²+n+3)/2`
-/

namespace A060762.P1820542055034332892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n + 1) ^ 2 + (n + 3) : ℚ) / 2

end

end A060762.P1820542055034332892

namespace A060762

/-- `((and(1, n)+1)²+n+3)/2` -/
def P1820542055034332892.Spec : Prop :=
  ∀ n, P1820542055034332892.a n = (A060762 (n + 1) : ℚ)

end A060762

/-! ## A060762.P14864932026708327813

`floor(or(1, n+3)-(n+1)/2)`
-/

namespace A060762.P14864932026708327813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 3) : ℚ) - (n + 1 : ℚ) / 2⌋

end

end A060762.P14864932026708327813

namespace A060762

/-- `floor(or(1, n+3)-(n+1)/2)` -/
def P14864932026708327813.Spec : Prop :=
  ∀ n, P14864932026708327813.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P2768780919024408631

`ceil(or(1, n+1)-(n-2)/2)`
-/

namespace A060762.P2768780919024408631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n + 1) : ℚ) - ((n : ℤ) - 2 : ℚ) / 2⌉

end

end A060762.P2768780919024408631

namespace A060762

/-- `ceil(or(1, n+1)-(n-2)/2)` -/
def P2768780919024408631.Spec : Prop :=
  ∀ n, P2768780919024408631.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P2512063081110066340

`round(or(1, n+1)-(n-2)/2)`
-/

namespace A060762.P2512063081110066340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) : ℚ) - ((n : ℤ) - 2 : ℚ) / 2)

end

end A060762.P2512063081110066340

namespace A060762

/-- `round(or(1, n+1)-(n-2)/2)` -/
def P2512063081110066340.Spec : Prop :=
  ∀ n, P2512063081110066340.a n = A060762 (n + 1)

end A060762

/-! ## A060762.P6840440703610206477

`ceil(2*and(1, n)+(n+3)/2)`
-/

namespace A060762.P6840440703610206477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Nat.land 1 n : ℚ) + (n + 3 : ℚ) / 2⌉

end

end A060762.P6840440703610206477

namespace A060762

/-- `ceil(2*and(1, n)+(n+3)/2)` -/
def P6840440703610206477.Spec : Prop :=
  ∀ n, P6840440703610206477.a n = A060762 (n + 1)

end A060762

/-!
# A060763: Number of distinct differences between consecutive divisors (ordered by increasing magnitude) of n which are not also divisors of n.

The programs for A060763, there is no canonical definition to state claims against.
-/

/-! ## A060763.P3910481641373372438

`A360118(n+1)-A010052(A033551(3*n+2))`
-/

namespace A060763.P3910481641373372438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360118 (n + 1) - A010052 (A033551 (3 * n + 2)).toNat

end

end A060763.P3910481641373372438

/-! ## A060763.P9040206431322951776

`A360118(n+1)-A360109(A131686(n+1))`
-/

namespace A060763.P9040206431322951776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360118 (n + 1) - A360109 (A131686 (n + 1)).toNat

end

end A060763.P9040206431322951776

/-! ## A060763.P3401123032296776183

`A001222(A295657(A052552(n)+1)*A300330(n+1))`
-/

namespace A060763.P3401123032296776183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295657 (A052552 n + 1).toNat * A300330 (n + 1)).toNat

end

end A060763.P3401123032296776183

/-! ## A060763.P16708930395163460408

`A237271(n+1)-A213729(A130561(n+1))`
-/

namespace A060763.P16708930395163460408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1) - A213729 (A130561 (n + 1)).toNat

end

end A060763.P16708930395163460408

/-! ## A060763.P13976749697025051335

`A237271(n+1)-A023532(A367301(n+1))`
-/

namespace A060763.P13976749697025051335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1) - A023532 (A367301 (n + 1)).toNat

end

end A060763.P13976749697025051335

/-!
# A060764: Number of divisors of n which are not also differences between consecutive divisors (ordered by increasing magnitude) of n.

The programs for A060764, there is no canonical definition to state claims against.
-/

/-! ## A060764.P2265777757955752164

`A360119(n+1)+A360118(n+1)`
-/

namespace A060764.P2265777757955752164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360119 (n + 1) + A360118 (n + 1)

end

end A060764.P2265777757955752164

/-! ## A060764.P10190189989363694929

`∑{d}[n+1, A336040(A335665(#)*A336041(#))]`
-/

namespace A060764.P10190189989363694929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336040 (A335665 d * A336041 d).toNat

end

end A060764.P10190189989363694929

/-! ## A060764.P12396131375453698651

`A325801(A153679(n+1))+∑{d}[n+1, #%2]`
-/

namespace A060764.P12396131375453698651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (A153679 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A060764.P12396131375453698651

/-! ## A060764.P10579910091814265577

`gcd(A328859(n+1)+A000005(n+1), A319696(n+1))`
-/

namespace A060764.P10579910091814265577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328859 (n + 1) + A000005 (n + 1)) (A319696 (n + 1))

end

end A060764.P10579910091814265577

/-! ## A060764.P8959795118289002942

`gcd(A319696(A045970(n+1)), A319696(n+1))`
-/

namespace A060764.P8959795118289002942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319696 (A045970 (n + 1)).toNat) (A319696 (n + 1))

end

end A060764.P8959795118289002942

/-!
# A060765: Numbers n such that every difference between consecutive divisors (ordered by increasing magnitude) of n is also a divisor of n.

The programs for A060765, there is no canonical definition to state claims against.
-/

/-! ## A060765.P5407866149492208896

`eq[0, A060763(n+1)]+1`
-/

namespace A060765.P5407866149492208896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060765.P5407866149492208896

/-! ## A060765.P15736588807269302868

`eq[3, A003961(a(A060763(n)))]` with `a(0)=2`
-/

namespace A060765.P15736588807269302868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A003961 (f2 (A060763 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060765.P15736588807269302868

/-! ## A060765.P7379860465909390312

`record[gcd(A000027(n+1), A060763(n+1))]`
-/

namespace A060765.P7379860465909390312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A060763 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060765.P7379860465909390312

/-! ## A060765.P9624431454061486080

`record[n+1-A004396(n)*A060763(n+1)]`
-/

namespace A060765.P9624431454061486080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004396 n * A060763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060765.P9624431454061486080

/-! ## A060765.P16605863758914591860

`record[n+1-A060763(n+1)*A108773(n)]`
-/

namespace A060765.P16605863758914591860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060763 (n + 1) * A108773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060765.P16605863758914591860

/-! ## A060765.P6725781451824548902

`A060654(record[n*(2-A060763(n+1))]+2)`
-/

namespace A060765.P6725781451824548902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A060763 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A060765.P6725781451824548902

/-!
# A060766: Least common multiple of differences between consecutive divisors of n (ordered by size).

The programs for A060766, there is no canonical definition to state claims against.
-/

/-! ## A060766.P15240913405870975808

`A290103(∏{p}[A328023(n+2), #])`
-/

namespace A060766.P15240913405870975808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A060766.P15240913405870975808

/-! ## A060766.P10588134172055352381

`A290103(A328023(n+2))`
-/

namespace A060766.P10588134172055352381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A328023 (n + 2)).toNat

end

end A060766.P10588134172055352381

/-! ## A060766.P16281725109935072178

`A242560(A072941(n+2))`
-/

namespace A060766.P16281725109935072178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242560 (A072941 (n + 2)).toNat

end

end A060766.P16281725109935072178

/-! ## A060766.P10199702415322426353

`lcm(A008480(A154117(n)), A060681(n+2))`
-/

namespace A060766.P10199702415322426353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008480 (A154117 n).toNat) (A060681 (n + 2))

end

end A060766.P10199702415322426353

/-! ## A060766.P6759002296335341632

`A060681(n+2)*A118914(A345170(2*(n+2)))`
-/

namespace A060766.P6759002296335341632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) * A118914 (A345170 (2 * (n + 2))).toNat

end

end A060766.P6759002296335341632

/-!
# A060769: "Overdue" primes: upper ends of prime gaps that are larger than the prime number theorem predicts.

The programs for A060769, there is no canonical definition to state claims against.
-/

/-! ## A060769.P8695060651099702126

`p?[A175076(n+1)+A107393(A007921(n+1))]`
-/

namespace A060769.P8695060651099702126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175076 (n + 1) + A107393 (A007921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060769.P8695060651099702126

/-! ## A060769.P1724310650935832524

`A134100(∑[A306860(n)!])`
-/

namespace A060769.P1724310650935832524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A306860 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060769.P1724310650935832524

/-! ## A060769.P9206245832348631942

`A134100(∑[A309863(n)!])`
-/

namespace A060769.P9206245832348631942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309863 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060769.P9206245832348631942

/-! ## A060769.P15391351405024871743

`A134100(record[A086257(3*n)])`
-/

namespace A060769.P15391351405024871743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060769.P15391351405024871743

/-! ## A060769.P11363905997750133243

`A134100(∑[A086862(n+1)!])`
-/

namespace A060769.P11363905997750133243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060769.P11363905997750133243

/-!
# A060770: "Early" primes: upper ends of prime gaps that are smaller than the prime number theorem predicts.

The programs for A060770, there is no canonical definition to state claims against.
-/

/-! ## A060770.P15870795294277587281

`A006530(A337544(A124589(n+1)²))`
-/

namespace A060770.P15870795294277587281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A337544 (A124589 (n + 1) ^ 2).toNat).toNat

end

end A060770.P15870795294277587281

/-! ## A060770.P3478401411465716550

`A117366(A002095(n)*A124589(n+1))`
-/

namespace A060770.P3478401411465716550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A002095 n * A124589 (n + 1)).toNat

end

end A060770.P3478401411465716550

/-! ## A060770.P9744102598178457934

`A117366(lcm(A002095(n), A124589(n+1)))`
-/

namespace A060770.P9744102598178457934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (Int.lcm (A002095 n) (A124589 (n + 1)))

end

end A060770.P9744102598178457934

/-! ## A060770.P10500548970674020785

`A117366(A007444(n+1)*A124589(n+1))`
-/

namespace A060770.P10500548970674020785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A007444 (n + 1) * A124589 (n + 1)).toNat

end

end A060770.P10500548970674020785

/-! ## A060770.P8655107333828599185

`A003961(A124589(n+1))%A095747(A276383(n+1))`
-/

namespace A060770.P8655107333828599185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A124589 (n + 1)).toNat) (A095747 (A276383 (n + 1)).toNat)

end

end A060770.P8655107333828599185

/-!
# A060771: Upper ends of record prime gaps under consideration of the prime number theorem.

The programs for A060771, there is no canonical definition to state claims against.
-/

/-! ## A060771.P18388980063768312656

`p?[∪[A000101(n+1), A018776(n+1)]]`
-/

namespace A060771.P18388980063768312656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018776 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A060771.P18388980063768312656

/-! ## A060771.P11937197725600546522

`p?[∪[A000101(n+1), A047701(n+5)]]`
-/

namespace A060771.P11937197725600546522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047701 (n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A060771.P11937197725600546522

/-! ## A060771.P11426182028431515315

`∪[A000101(n+4), A000040(A347053(n+2))]`
-/

namespace A060771.P11426182028431515315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A347053 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060771.P11426182028431515315

/-!
# A060772: Minimal Thompson primes: a(n) is the smallest prime expressible as p1*p2*...*pk-q1*q2*...*qj, where k+j=n and {p1,...,qj} are the first n primes.

The programs for A060772, there is no canonical definition to state claims against.
-/

/-! ## A060772.P658675651223809792

`A003967(A246463(n+3))`
-/

namespace A060772.P658675651223809792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A246463 (n + 3)).toNat

end

end A060772.P658675651223809792

/-! ## A060772.P15721322582487616011

`A246463(A039723(n)+3)`
-/

namespace A060772.P15721322582487616011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246463 (A039723 n + 3).toNat

end

end A060772.P15721322582487616011

/-! ## A060772.P2728500750750966868

`A246463(A072482(n)+3)`
-/

namespace A060772.P2728500750750966868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246463 (A072482 n + 3).toNat

end

end A060772.P2728500750750966868

/-! ## A060772.P13786211932940494658

`A006530(2*A246463(n+3))`
-/

namespace A060772.P13786211932940494658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A246463 (n + 3)).toNat

end

end A060772.P13786211932940494658

/-! ## A060772.P18086456818040632139

`A006530(lcm(2, A246463(n+3)))`
-/

namespace A060772.P18086456818040632139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A246463 (n + 3)))

end

end A060772.P18086456818040632139

/-!
# A060773: Numbers having a unique partition into three nonnegative triangular numbers.

The programs for A060773, there is no canonical definition to state claims against.
-/

/-! ## A060773.P14408120615448018894

`eq[1, A002636(n)]`
-/

namespace A060773.P14408120615448018894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060773.P14408120615448018894

/-! ## A060773.P9969655390216712984

`floor(A085616(n+1)/8)`
-/

namespace A060773.P9969655390216712984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085616 (n + 1) : ℚ) / 8⌋

end

end A060773.P9969655390216712984

/-! ## A060773.P15379482279326295404

`eq[1, A000164(8*n+3)]`
-/

namespace A060773.P15379482279326295404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060773.P15379482279326295404

/-! ## A060773.P1945889075639904525

`lt[A025427(8*n+3), 2]`
-/

namespace A060773.P1945889075639904525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (8 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060773.P1945889075639904525

/-! ## A060773.P9903499802780142305

`A025480(A085616(n+1))`
-/

namespace A060773.P9903499802780142305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A085616 (n + 1)).toNat

end

end A060773.P9903499802780142305

/-!
# A060774: a(n) = number of lattice paths from (0,0,0) to (n,n,n) along the cracks on the surface of a Rubik-ized n X n X n cube so that no step increases distance from goal.

The programs for A060774, there is no canonical definition to state claims against.
-/

/-! ## A060774.P15453921249407714639

`A225094(∑[n+3]+n+3)`
-/

namespace A060774.P15453921249407714639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A060774.P15453921249407714639

/-! ## A060774.P15046051818123082667

`and(-1, A225094(A046691(n+2)))`
-/

namespace A060774.P15046051818123082667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A225094 (A046691 (n + 2)).toNat)

end

end A060774.P15046051818123082667

/-! ## A060774.P3355780746164429748

`record[A225094(eq[1, A210472(n+2)])]`
-/

namespace A060774.P3355780746164429748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060774.P3355780746164429748

/-! ## A060774.P3910668029893636507

`record[A225094(A046691(A020986(n)))]`
-/

namespace A060774.P3910668029893636507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A046691 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060774.P3910668029893636507

/-! ## A060774.P11939232935166169889

`record[A225094(A046691(A328577(n)))]`
-/

namespace A060774.P11939232935166169889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A046691 (A328577 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060774.P11939232935166169889

/-!
# A060775: The greatest divisor d|n such that d < n/d, with a(1) = 1.

The programs for A060775, there is no canonical definition to state claims against.
-/

/-! ## A060775.P3584903109194007628

`(n+1)/A140271(n+1)`
-/

namespace A060775.P3584903109194007628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A140271 (n + 1) : ℚ)

end

end A060775.P3584903109194007628

/-! ## A060775.P6099924861129238932

`floor(acot(A140271(n+1))*A000037(n+1))`
-/

namespace A060775.P6099924861129238932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A140271 (n + 1) : ℝ) * (A000037 (n + 1) : ℝ)⌋

end

end A060775.P6099924861129238932

/-! ## A060775.P7010170864805064289

`round(acot(A140271(n+1))*A000027(n+1))`
-/

namespace A060775.P7010170864805064289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A140271 (n + 1) : ℝ) * (A000027 (n + 1) : ℝ))

end

end A060775.P7010170864805064289

/-! ## A060775.P7793706918023427968

`A056538(A054519(n)+Δ[A091627(n)])`
-/

namespace A060775.P7793706918023427968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (A054519 n + (f1 (n + 1) - f1 n)).toNat

end

end A060775.P7793706918023427968

/-! ## A060775.P11105071939046925503

`(n+1)/A027750(A054519(n)+A038548(n+1))`
-/

namespace A060775.P11105071939046925503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A027750 (A054519 n + A038548 (n + 1)).toNat : ℚ)

end

end A060775.P11105071939046925503

/-! ## A060775.P18349427976211239169

`(n+1)/A027750(A038548(n+1)+A006218(n)+1)`
-/

namespace A060775.P18349427976211239169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A027750 (A038548 (n + 1) + (A006218 n + 1)).toNat : ℚ)

end

end A060775.P18349427976211239169

/-! ## A060775.P309042587350874005

`A219158(A140271(n+1)+A000217(n))`
-/

namespace A060775.P309042587350874005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A140271 (n + 1) + A000217 n).toNat

end

end A060775.P309042587350874005

/-! ## A060775.P15745688180487284084

`A234575(A140271(n+1)+∑[n])`
-/

namespace A060775.P15745688180487284084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A140271 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060775.P15745688180487284084

/-! ## A060775.P6962838951116391068

`A051537(A140271(n+1)+∑[n])`
-/

namespace A060775.P6962838951116391068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A140271 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060775.P6962838951116391068

/-! ## A060775.P2498137540878218357

`A126988(A140271(n+1)+∑[n])`
-/

namespace A060775.P2498137540878218357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A140271 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060775.P2498137540878218357

/-! ## A060775.P7602000586497247397

`A054531(A140271(n+1)+A000217(n))`
-/

namespace A060775.P7602000586497247397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A140271 (n + 1) + A000217 n).toNat

end

end A060775.P7602000586497247397

/-! ## A060775.P13316428448778893074

`A002034(A363520(n+1))`
-/

namespace A060775.P13316428448778893074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A363520 (n + 1)).toNat

end

end A060775.P13316428448778893074

/-! ## A060775.P16084526863488448135

`sqrt(A366524((n+1)²))`
-/

namespace A060775.P16084526863488448135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A366524 ((n + 1) ^ 2) : ℝ)

end

end A060775.P16084526863488448135

/-! ## A060775.P16595562518558384741

`A033676(A366524(A008833((n+1)²)))`
-/

namespace A060775.P16595562518558384741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A366524 (A008833 ((n + 1) ^ 2)).toNat).toNat

end

end A060775.P16595562518558384741

/-! ## A060775.P14637017778919891961

`A033676(A008833(A366524((n+1)*(n+1))))`
-/

namespace A060775.P14637017778919891961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A008833 (A366524 ((n + 1) * (n + 1))).toNat).toNat

end

end A060775.P14637017778919891961

/-!
# A060776: Smaller central (median) divisor of n!.

The programs for A060776, there is no canonical definition to state claims against.
-/

/-! ## A060776.P11481704987509259684

`A060777(n+1)-A061057(n+1)`
-/

namespace A060776.P11481704987509259684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060777 (n + 1) - A061057 (n + 1)

end

end A060776.P11481704987509259684

/-! ## A060776.P13618760916438852178

`record[A047920(n)]/A060777(n+1)`
-/

namespace A060776.P13618760916438852178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060777 (n + 1) : ℚ)

end

end A060776.P13618760916438852178

/-! ## A060776.P7638484365819548017

`record[A098361(n)]/A060777(n+1)`
-/

namespace A060776.P7638484365819548017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060777 (n + 1) : ℚ)

end

end A060776.P7638484365819548017

/-! ## A060776.P7587728004196972979

`A000142(n+1)/A060777(n+1)`
-/

namespace A060776.P7587728004196972979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A060777 (n + 1) : ℚ)

end

end A060776.P7587728004196972979

/-! ## A060776.P12586185460711086261

`∏[A194960(3*n+1)]/A060777(n+1)`
-/

namespace A060776.P12586185460711086261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060777 (n + 1) : ℚ)

end

end A060776.P12586185460711086261

/-!
# A060777: Larger central (or median) divisor of n!.

The programs for A060777, there is no canonical definition to state claims against.
-/

/-! ## A060777.P117382404204311572

`A061057(n+1)+A060776(n+1)`
-/

namespace A060777.P117382404204311572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061057 (n + 1) + A060776 (n + 1)

end

end A060777.P117382404204311572

/-! ## A060777.P14045047686554699211

`A200743(n+1)/A060776(n+1)*A200744(n+1)`
-/

namespace A060777.P14045047686554699211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200743 (n + 1) : ℚ) / (A060776 (n + 1) : ℚ) * (A200744 (n + 1) : ℚ)

end

end A060777.P14045047686554699211

/-! ## A060777.P17844016735311951302

`A072488(n+1)/A060776(n+1)*A072489(n+1)`
-/

namespace A060777.P17844016735311951302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072488 (n + 1) : ℚ) / (A060776 (n + 1) : ℚ) * (A072489 (n + 1) : ℚ)

end

end A060777.P17844016735311951302

/-! ## A060777.P16431755057203206981

`record[A047920(n)]/A060776(n+1)`
-/

namespace A060777.P16431755057203206981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060776 (n + 1) : ℚ)

end

end A060777.P16431755057203206981

/-! ## A060777.P5021128409569365869

`A000142(n+1)/A060776(n+1)`
-/

namespace A060777.P5021128409569365869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A060776 (n + 1) : ℚ)

end

end A060777.P5021128409569365869

/-! ## A060777.P12534820017283281772

`A214078((n+1)²)/A060776(n+1)`
-/

namespace A060777.P12534820017283281772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214078 ((n + 1) ^ 2) : ℚ) / (A060776 (n + 1) : ℚ)

end

end A060777.P12534820017283281772

/-! ## A060777.P214391828338479280

`∏[A000027(n+1)]/A060776(n+1)`
-/

namespace A060777.P214391828338479280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060776 (n + 1) : ℚ)

end

end A060777.P214391828338479280

/-!
# A060778: a(n) = gcd(tau(n+1), tau(n)), where tau = A000005.

The programs for A060778, the canonical program `A060778.P14283808286973634457` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060778 has offset 1).

The definition of A060778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060778.P13241315398579958734

`gcd(Δ[A000005(n+1)], ∏{e}[n+1, #+1])`
-/

namespace A060778.P13241315398579958734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A060778.P13241315398579958734

namespace A060778

/-- `gcd(Δ[A000005(n+1)], ∏{e}[n+1, #+1])` -/
def P13241315398579958734.Spec : Prop :=
  ∀ n, (P13241315398579958734.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P15066651068891750511

`gcd(A000005(n+2), Δ[A006218(n)])`
-/

namespace A060778.P15066651068891750511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 2)) (f1 (n + 1) - f1 n)

end

end A060778.P15066651068891750511

namespace A060778

/-- `gcd(A000005(n+2), Δ[A006218(n)])` -/
def P15066651068891750511.Spec : Prop :=
  ∀ n, (P15066651068891750511.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P1153285537800719060

`gcd(Δ[A054519(n)], A051950(n+2))`
-/

namespace A060778.P1153285537800719060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A051950 (n + 2))

end

end A060778.P1153285537800719060

namespace A060778

/-- `gcd(Δ[A054519(n)], A051950(n+2))` -/
def P1153285537800719060.Spec : Prop :=
  ∀ n, (P1153285537800719060.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P14865384164473964430

`A092517(n+1)/A060779(n+1)`
-/

namespace A060778.P14865384164473964430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092517 (n + 1) : ℚ) / (A060779 (n + 1) : ℚ)

end

end A060778.P14865384164473964430

namespace A060778

/-- `A092517(n+1)/A060779(n+1)` -/
def P14865384164473964430.Spec : Prop :=
  ∀ n, P14865384164473964430.a n = (A060778 (n + 1) : ℚ)

end A060778

/-! ## A060778.P9318205488847551904

`gcd(A000005(n+1), A092405(n+1))`
-/

namespace A060778.P9318205488847551904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A092405 (n + 1))

end

end A060778.P9318205488847551904

namespace A060778

/-- `gcd(A000005(n+1), A092405(n+1))` -/
def P9318205488847551904.Spec : Prop :=
  ∀ n, (P9318205488847551904.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P1742774231529208581

`2/A060779(n+1)*A063123(n+1)`
-/

namespace A060778.P1742774231529208581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A060779 (n + 1) : ℚ) * (A063123 (n + 1) : ℚ)

end

end A060778.P1742774231529208581

namespace A060778

/-- `2/A060779(n+1)*A063123(n+1)` -/
def P1742774231529208581.Spec : Prop :=
  ∀ n, P1742774231529208581.a n = (A060778 (n + 1) : ℚ)

end A060778

/-! ## A060778.P3131668021578655269

`A000005(n+1)/A060779(n+1)*A000005(n+2)`
-/

namespace A060778.P3131668021578655269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A060779 (n + 1) : ℚ) * (A000005 (n + 2) : ℚ)

end

end A060778.P3131668021578655269

namespace A060778

/-- `A000005(n+1)/A060779(n+1)*A000005(n+2)` -/
def P3131668021578655269.Spec : Prop :=
  ∀ n, P3131668021578655269.a n = (A060778 (n + 1) : ℚ)

end A060778

/-! ## A060778.P2852877980465475522

`gcd(A092405(n+1)+A060779(n+1), A060779(n+1))`
-/

namespace A060778.P2852877980465475522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092405 (n + 1) + A060779 (n + 1)) (A060779 (n + 1))

end

end A060778.P2852877980465475522

namespace A060778

/-- `gcd(A092405(n+1)+A060779(n+1), A060779(n+1))` -/
def P2852877980465475522.Spec : Prop :=
  ∀ n, (P2852877980465475522.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P14283808286973634457

`gcd(A032741(n+1)+1, Δ[∏{e}[n+1, #+1]])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060778

/-- `gcd(A032741(n+1)+1, Δ[∏{e}[n+1, #+1]])` -/
def P14283808286973634457.Spec : Prop :=
  ∀ n, (P14283808286973634457.a n : ℤ) = A060778 (n + 1)

theorem P14283808286973634457.correct : P14283808286973634457.Spec := by
  intro n
  simp only [A060778, Nat.add_sub_cancel]

end A060778

/-! ## A060778.P12760119904210302270

`gcd(A329484(n+1), A329484(n+2))`
-/

namespace A060778.P12760119904210302270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329484 (n + 1)) (A329484 (n + 2))

end

end A060778.P12760119904210302270

namespace A060778

/-- `gcd(A329484(n+1), A329484(n+2))` -/
def P12760119904210302270.Spec : Prop :=
  ∀ n, (P12760119904210302270.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P3598389146439498810

`gcd(A032741(n+1)+1, Δ[A070824(n+1)])`
-/

namespace A060778.P3598389146439498810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032741 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A060778.P3598389146439498810

namespace A060778

/-- `gcd(A032741(n+1)+1, Δ[A070824(n+1)])` -/
def P3598389146439498810.Spec : Prop :=
  ∀ n, (P3598389146439498810.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P14227353687783759203

`gcd(1-A049820(n+1)+n, Δ[A032741(n+1)])`
-/

namespace A060778.P14227353687783759203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A049820 (n + 1) + (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A060778.P14227353687783759203

namespace A060778

/-- `gcd(1-A049820(n+1)+n, Δ[A032741(n+1)])` -/
def P14227353687783759203.Spec : Prop :=
  ∀ n, (P14227353687783759203.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P6821873081179029584

`gcd(A038040(n+1)/(n+1), Δ[1-A049820(n+1)+n])`
-/

namespace A060778.P6821873081179029584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049820 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))) (f1 (n + 1) - f1 n)

end

end A060778.P6821873081179029584

namespace A060778

/-- `gcd(A038040(n+1)/(n+1), Δ[1-A049820(n+1)+n])` -/
def P6821873081179029584.Spec : Prop :=
  ∀ n, (P6821873081179029584.a n : ℤ) = A060778 (n + 1)

end A060778

/-! ## A060778.P11709180484986329399

`gcd(Δ[A048272(4*(n+1))], A048272(4*(n+1)))`
-/

namespace A060778.P11709180484986329399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A048272 (4 * (n + 1)))

end

end A060778.P11709180484986329399

namespace A060778

/-- `gcd(Δ[A048272(4*(n+1))], A048272(4*(n+1)))` -/
def P11709180484986329399.Spec : Prop :=
  ∀ n, (P11709180484986329399.a n : ℤ) = A060778 (n + 1)

end A060778

/-!
# A060779: a(n) = lcm(tau(n+1), tau(n)), where tau = A000005.

The programs for A060779, the canonical program `A060779.P1940765969426374116` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060779 has offset 1).

The definition of A060779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060779.P7252198042613791693

`lcm(Δ[A006218(n+1)], ∏{e}[n+1, #+1])`
-/

namespace A060779.P7252198042613791693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A060779.P7252198042613791693

namespace A060779

/-- `lcm(Δ[A006218(n+1)], ∏{e}[n+1, #+1])` -/
def P7252198042613791693.Spec : Prop :=
  ∀ n, (P7252198042613791693.a n : ℤ) = A060779 (n + 1)

end A060779

/-! ## A060779.P636386376234800862

`lcm(A000005(n+2), Δ[A006218(n)])`
-/

namespace A060779.P636386376234800862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 2)) (f1 (n + 1) - f1 n)

end

end A060779.P636386376234800862

namespace A060779

/-- `lcm(A000005(n+2), Δ[A006218(n)])` -/
def P636386376234800862.Spec : Prop :=
  ∀ n, (P636386376234800862.a n : ℤ) = A060779 (n + 1)

end A060779

/-! ## A060779.P6055018177622307458

`A092517(n+1)/A060778(n+1)`
-/

namespace A060779.P6055018177622307458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092517 (n + 1) : ℚ) / (A060778 (n + 1) : ℚ)

end

end A060779.P6055018177622307458

namespace A060779

/-- `A092517(n+1)/A060778(n+1)` -/
def P6055018177622307458.Spec : Prop :=
  ∀ n, P6055018177622307458.a n = (A060779 (n + 1) : ℚ)

end A060779

/-! ## A060779.P5851281454616542860

`lcm(A032741(n+1)+1, Δ[A006218(n+1)])`
-/

namespace A060779.P5851281454616542860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032741 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A060779.P5851281454616542860

namespace A060779

/-- `lcm(A032741(n+1)+1, Δ[A006218(n+1)])` -/
def P5851281454616542860.Spec : Prop :=
  ∀ n, (P5851281454616542860.a n : ℤ) = A060779 (n + 1)

end A060779

/-! ## A060779.P14201917292308915034

`lcm(A000005(n+1), A000005(A020725(n+1)))`
-/

namespace A060779.P14201917292308915034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A000005 (A020725 (n + 1)).toNat)

end

end A060779.P14201917292308915034

namespace A060779

/-- `lcm(A000005(n+1), A000005(A020725(n+1)))` -/
def P14201917292308915034.Spec : Prop :=
  ∀ n, (P14201917292308915034.a n : ℤ) = A060779 (n + 1)

end A060779

/-! ## A060779.P9257573327608579637

`A000005(n+1)/A060778(n+1)*A000005(n+2)`
-/

namespace A060779.P9257573327608579637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A060778 (n + 1) : ℚ) * (A000005 (n + 2) : ℚ)

end

end A060779.P9257573327608579637

namespace A060779

/-- `A000005(n+1)/A060778(n+1)*A000005(n+2)` -/
def P9257573327608579637.Spec : Prop :=
  ∀ n, P9257573327608579637.a n = (A060779 (n + 1) : ℚ)

end A060779

/-! ## A060779.P6289189476260703788

`lcm(A329484(n+1), A329484(n+2))`
-/

namespace A060779.P6289189476260703788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A329484 (n + 1)) (A329484 (n + 2))

end

end A060779.P6289189476260703788

namespace A060779

/-- `lcm(A329484(n+1), A329484(n+2))` -/
def P6289189476260703788.Spec : Prop :=
  ∀ n, (P6289189476260703788.a n : ℤ) = A060779 (n + 1)

end A060779

/-! ## A060779.P1940765969426374116

`lcm(A320111(2*(n+1)), A320111(A103517(n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060779

/-- `lcm(A320111(2*(n+1)), A320111(A103517(n+1)))` -/
def P1940765969426374116.Spec : Prop :=
  ∀ n, (P1940765969426374116.a n : ℤ) = A060779 (n + 1)

theorem P1940765969426374116.correct : P1940765969426374116.Spec := by
  intro n
  simp only [A060779, Nat.add_sub_cancel]

end A060779

/-! ## A060779.P4621508204561220092

`A000005(∑[2*(n+1)])/A060778(n+1)`
-/

namespace A060779.P4621508204561220092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A060778 (n + 1) : ℚ)

end

end A060779.P4621508204561220092

namespace A060779

/-- `A000005(∑[2*(n+1)])/A060778(n+1)` -/
def P4621508204561220092.Spec : Prop :=
  ∀ n, P4621508204561220092.a n = (A060779 (n + 1) : ℚ)

end A060779

/-!
# A060780: a(n) = gcd(sigma(n+1), sigma(n)), where sigma = A000203.

The programs for A060780, the canonical program `A060780.P10373163620500831352` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060780 has offset 1).

The definition of A060780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060780.P3883243326682534182

`gcd(Δ[A160664(n)], A053222(n+1))`
-/

namespace A060780.P3883243326682534182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A053222 (n + 1))

end

end A060780.P3883243326682534182

namespace A060780

/-- `gcd(Δ[A160664(n)], A053222(n+1))` -/
def P3883243326682534182.Spec : Prop :=
  ∀ n, (P3883243326682534182.a n : ℤ) = A060780 (n + 1)

end A060780

/-! ## A060780.P2940392961557781194

`gcd(Δ[A330725(n)], A077086(n+1))`
-/

namespace A060780.P2940392961557781194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A077086 (n + 1))

end

end A060780.P2940392961557781194

namespace A060780

/-- `gcd(Δ[A330725(n)], A077086(n+1))` -/
def P2940392961557781194.Spec : Prop :=
  ∀ n, (P2940392961557781194.a n : ℤ) = A060780 (n + 1)

end A060780

/-! ## A060780.P3943947569158570130

`A060781(n+1)/A083538(n+1)`
-/

namespace A060780.P3943947569158570130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060781 (n + 1) : ℚ) / (A083538 (n + 1) : ℚ)

end

end A060780.P3943947569158570130

namespace A060780

/-- `A060781(n+1)/A083538(n+1)` -/
def P3943947569158570130.Spec : Prop :=
  ∀ n, P3943947569158570130.a n = (A060780 (n + 1) : ℚ)

end A060780

/-! ## A060780.P16577011804368432054

`A083539(n+1)/A060781(n+1)`
-/

namespace A060780.P16577011804368432054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083539 (n + 1) : ℚ) / (A060781 (n + 1) : ℚ)

end

end A060780.P16577011804368432054

namespace A060780

/-- `A083539(n+1)/A060781(n+1)` -/
def P16577011804368432054.Spec : Prop :=
  ∀ n, P16577011804368432054.a n = (A060780 (n + 1) : ℚ)

end A060780

/-! ## A060780.P10373163620500831352

`gcd(A000203(n+1), A092403(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060780

/-- `gcd(A000203(n+1), A092403(n+1))` -/
def P10373163620500831352.Spec : Prop :=
  ∀ n, (P10373163620500831352.a n : ℤ) = A060780 (n + 1)

theorem P10373163620500831352.correct : P10373163620500831352.Spec := by
  intro n
  simp only [A060780, Nat.add_sub_cancel]

end A060780

/-! ## A060780.P9593318950659640094

`gcd(A088580(n+1)-1, abs(A053222(n+1)))`
-/

namespace A060780.P9593318950659640094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088580 (n + 1) - 1) |A053222 (n + 1)|

end

end A060780.P9593318950659640094

namespace A060780

/-- `gcd(A088580(n+1)-1, abs(A053222(n+1)))` -/
def P9593318950659640094.Spec : Prop :=
  ∀ n, (P9593318950659640094.a n : ℤ) = A060780 (n + 1)

end A060780

/-! ## A060780.P7765305317581107541

`gcd(A155085(n+1)-(n+1), Δ[A155085(n+1)-(n+1)])`
-/

namespace A060780.P7765305317581107541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155085 (n + 1) - (n + 1 : ℤ)) (f1 (n + 1) - f1 n)

end

end A060780.P7765305317581107541

namespace A060780

/-- `gcd(A155085(n+1)-(n+1), Δ[A155085(n+1)-(n+1)])` -/
def P7765305317581107541.Spec : Prop :=
  ∀ n, (P7765305317581107541.a n : ℤ) = A060780 (n + 1)

end A060780

/-! ## A060780.P12751936812883308947

`A000203(n+1)/A060781(n+1)*A000203(n+2)`
-/

namespace A060780.P12751936812883308947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A060781 (n + 1) : ℚ) * (A000203 (n + 2) : ℚ)

end

end A060780.P12751936812883308947

namespace A060780

/-- `A000203(n+1)/A060781(n+1)*A000203(n+2)` -/
def P12751936812883308947.Spec : Prop :=
  ∀ n, P12751936812883308947.a n = (A060780 (n + 1) : ℚ)

end A060780

/-! ## A060780.P9763445844738002578

`gcd(A143348(n+1), A143348(n+2))`
-/

namespace A060780.P9763445844738002578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A143348 (n + 2))

end

end A060780.P9763445844738002578

namespace A060780

/-- `gcd(A143348(n+1), A143348(n+2))` -/
def P9763445844738002578.Spec : Prop :=
  ∀ n, (P9763445844738002578.a n : ℤ) = A060780 (n + 1)

end A060780

/-! ## A060780.P9269946912329350855

`gcd(A272211(n+1), A272211(n+2))`
-/

namespace A060780.P9269946912329350855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272211 (n + 1)) (A272211 (n + 2))

end

end A060780.P9269946912329350855

namespace A060780

/-- `gcd(A272211(n+1), A272211(n+2))` -/
def P9269946912329350855.Spec : Prop :=
  ∀ n, (P9269946912329350855.a n : ℤ) = A060780 (n + 1)

end A060780

/-! ## A060780.P4537467947922230532

`gcd(A001065(n+1)+n+1, Δ[A001065(n+1)+n+1])`
-/

namespace A060780.P4537467947922230532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (n + 1) + (n + 1 : ℤ)) (f1 (n + 1) - f1 n)

end

end A060780.P4537467947922230532

namespace A060780

/-- `gcd(A001065(n+1)+n+1, Δ[A001065(n+1)+n+1])` -/
def P4537467947922230532.Spec : Prop :=
  ∀ n, (P4537467947922230532.a n : ℤ) = A060780 (n + 1)

end A060780

/-! ## A060780.P18098536431810179532

`gcd(A000203(n+2), A326065(2*(n+1)))`
-/

namespace A060780.P18098536431810179532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 2)) (A326065 (2 * (n + 1)))

end

end A060780.P18098536431810179532

namespace A060780

/-- `gcd(A000203(n+2), A326065(2*(n+1)))` -/
def P18098536431810179532.Spec : Prop :=
  ∀ n, (P18098536431810179532.a n : ℤ) = A060780 (n + 1)

end A060780

/-!
# A060781: a(n) = lcm(sigma(n+1), sigma(n)), where sigma = A000203.

The programs for A060781, the canonical program `A060781.P3207548521435062087` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060781 has offset 1).

The definition of A060781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060781.P3207548521435062087

`lcm(∑{d}[n+1, #], ∑{d}[n+2, #])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060781

/-- `lcm(∑{d}[n+1, #], ∑{d}[n+2, #])` -/
def P3207548521435062087.Spec : Prop :=
  ∀ n, (P3207548521435062087.a n : ℤ) = A060781 (n + 1)

theorem P3207548521435062087.correct : P3207548521435062087.Spec := by
  intro n
  simp only [A060781, Nat.add_sub_cancel]

end A060781

/-! ## A060781.P12085275323733784702

`A060780(n+1)*A083538(n+1)`
-/

namespace A060781.P12085275323733784702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1) * A083538 (n + 1)

end

end A060781.P12085275323733784702

namespace A060781

/-- `A060780(n+1)*A083538(n+1)` -/
def P12085275323733784702.Spec : Prop :=
  ∀ n, P12085275323733784702.a n = A060781 (n + 1)

end A060781

/-! ## A060781.P15699711534829034500

`A083539(n+1)/A060780(n+1)`
-/

namespace A060781.P15699711534829034500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083539 (n + 1) : ℚ) / (A060780 (n + 1) : ℚ)

end

end A060781.P15699711534829034500

namespace A060781

/-- `A083539(n+1)/A060780(n+1)` -/
def P15699711534829034500.Spec : Prop :=
  ∀ n, P15699711534829034500.a n = (A060781 (n + 1) : ℚ)

end A060781

/-! ## A060781.P13539928977840590531

`lcm(A000203(n+1), A000203(n+2))`
-/

namespace A060781.P13539928977840590531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (A000203 (n + 2))

end

end A060781.P13539928977840590531

namespace A060781

/-- `lcm(A000203(n+1), A000203(n+2))` -/
def P13539928977840590531.Spec : Prop :=
  ∀ n, (P13539928977840590531.a n : ℤ) = A060781 (n + 1)

end A060781

/-! ## A060781.P16141363200805163234

`lcm(A088580(n+1)-1, Δ[A330725(n+1)])`
-/

namespace A060781.P16141363200805163234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088580 (n + 1) - 1) (f1 (n + 1) - f1 n)

end

end A060781.P16141363200805163234

namespace A060781

/-- `lcm(A088580(n+1)-1, Δ[A330725(n+1)])` -/
def P16141363200805163234.Spec : Prop :=
  ∀ n, (P16141363200805163234.a n : ℤ) = A060781 (n + 1)

end A060781

/-! ## A060781.P3829560460861569905

`A000203(n+1)/A060780(n+1)*A000203(n+2)`
-/

namespace A060781.P3829560460861569905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A060780 (n + 1) : ℚ) * (A000203 (n + 2) : ℚ)

end

end A060781.P3829560460861569905

namespace A060781

/-- `A000203(n+1)/A060780(n+1)*A000203(n+2)` -/
def P3829560460861569905.Spec : Prop :=
  ∀ n, P3829560460861569905.a n = (A060781 (n + 1) : ℚ)

end A060781

/-! ## A060781.P7112312484223353049

`lcm(A143348(n+1), A143348(n+2))`
-/

namespace A060781.P7112312484223353049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143348 (n + 1)) (A143348 (n + 2))

end

end A060781.P7112312484223353049

namespace A060781

/-- `lcm(A143348(n+1), A143348(n+2))` -/
def P7112312484223353049.Spec : Prop :=
  ∀ n, (P7112312484223353049.a n : ℤ) = A060781 (n + 1)

end A060781

/-! ## A060781.P823335996248191127

`lcm(A245092(2*n+1), A245092(2*n+3))`
-/

namespace A060781.P823335996248191127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A245092 (2 * n + 1)) (A245092 (2 * n + 3))

end

end A060781.P823335996248191127

namespace A060781

/-- `lcm(A245092(2*n+1), A245092(2*n+3))` -/
def P823335996248191127.Spec : Prop :=
  ∀ n, (P823335996248191127.a n : ℤ) = A060781 (n + 1)

end A060781

/-! ## A060781.P1541679328053989942

`lcm(A039653(n+1)+1, A245092(A005408(n+1)))`
-/

namespace A060781.P1541679328053989942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039653 (n + 1) + 1) (A245092 (A005408 (n + 1)).toNat)

end

end A060781.P1541679328053989942

namespace A060781

/-- `lcm(A039653(n+1)+1, A245092(A005408(n+1)))` -/
def P1541679328053989942.Spec : Prop :=
  ∀ n, (P1541679328053989942.a n : ℤ) = A060781 (n + 1)

end A060781

/-! ## A060781.P7108231422882342024

`lcm(A245092(2*n+3), A245093(∑[n+1]))`
-/

namespace A060781.P7108231422882342024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A245092 (2 * n + 3)) (A245093 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A060781.P7108231422882342024

namespace A060781

/-- `lcm(A245092(2*n+3), A245093(∑[n+1]))` -/
def P7108231422882342024.Spec : Prop :=
  ∀ n, (P7108231422882342024.a n : ℤ) = A060781 (n + 1)

end A060781

/-!
# A060783: Number of conics which pass through 3 points and are bitangent to a general curve of order n.

The programs for A060783, the canonical program `A060783.P13465240798729600106` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060783 has offset 0).

The definition of A060783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060783.P13465240798729600106

`(n-1)*n*(n²+3*n-6)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060783

/-- `(n-1)*n*(n²+3*n-6)/2` -/
def P13465240798729600106.Spec : Prop :=
  ∀ n, P13465240798729600106.a n = (A060783 n : ℚ)

end A060783

/-! ## A060783.P13259551510383775196

`2*A188667(n)-(n²-n)`
-/

namespace A060783.P13259551510383775196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188667 n - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A060783.P13259551510383775196

namespace A060783

/-- `2*A188667(n)-(n²-n)` -/
def P13259551510383775196.Spec : Prop :=
  ∀ n, P13259551510383775196.a n = A060783 n

end A060783

/-! ## A060783.P15665556248956570921

`A280058(n)+A212135(n)`
-/

namespace A060783.P15665556248956570921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n + A212135 n

end

end A060783.P15665556248956570921

namespace A060783

/-- `A280058(n)+A212135(n)` -/
def P15665556248956570921.Spec : Prop :=
  ∀ n, P15665556248956570921.a n = A060783 n

end A060783

/-! ## A060783.P8535871412176092862

`A062392(n)-A051682(n)`
-/

namespace A060783.P8535871412176092862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - A051682 n

end

end A060783.P8535871412176092862

namespace A060783

/-- `A062392(n)-A051682(n)` -/
def P8535871412176092862.Spec : Prop :=
  ∀ n, P8535871412176092862.a n = A060783 n

end A060783

/-! ## A060783.P12067976000936866302

`A212134(n)-A000567(n)`
-/

namespace A060783.P12067976000936866302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n - A000567 n

end

end A060783.P12067976000936866302

namespace A060783

/-- `A212134(n)-A000567(n)` -/
def P12067976000936866302.Spec : Prop :=
  ∀ n, P12067976000936866302.a n = A060783 n

end A060783

/-! ## A060783.P12308487922358467038

`A255499(n)-A001107(n)`
-/

namespace A060783.P12308487922358467038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n - A001107 n

end

end A060783.P12308487922358467038

namespace A060783

/-- `A255499(n)-A001107(n)` -/
def P12308487922358467038.Spec : Prop :=
  ∀ n, P12308487922358467038.a n = A060783 n

end A060783

/-! ## A060783.P1890669607905622048

`A163102(n)-A135706(n)`
-/

namespace A060783.P1890669607905622048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A135706 n

end

end A060783.P1890669607905622048

namespace A060783

/-- `A163102(n)-A135706(n)` -/
def P1890669607905622048.Spec : Prop :=
  ∀ n, P1890669607905622048.a n = A060783 n

end A060783

/-! ## A060783.P8829720920656488674

`A110450(n)-A226492(n)`
-/

namespace A060783.P8829720920656488674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n - A226492 n

end

end A060783.P8829720920656488674

namespace A060783

/-- `A110450(n)-A226492(n)` -/
def P8829720920656488674.Spec : Prop :=
  ∀ n, P8829720920656488674.a n = A060783 n

end A060783

/-! ## A060783.P8717197848337594645

`2*A000217(n)²-A135706(n)`
-/

namespace A060783.P8717197848337594645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n ^ 2 - A135706 n

end

end A060783.P8717197848337594645

namespace A060783

/-- `2*A000217(n)²-A135706(n)` -/
def P8717197848337594645.Spec : Prop :=
  ∀ n, P8717197848337594645.a n = A060783 n

end A060783

/-! ## A060783.P13490566035272968235

`(n²+n)*A000217(n)+2-A192136(n)-A192136(n)`
-/

namespace A060783.P13490566035272968235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) * A000217 n + 2 - A192136 n - A192136 n

end

end A060783.P13490566035272968235

namespace A060783

/-- `(n²+n)*A000217(n)+2-A192136(n)-A192136(n)` -/
def P13490566035272968235.Spec : Prop :=
  ∀ n, P13490566035272968235.a n = A060783 n

end A060783

/-! ## A060783.P8105684272413889663

`A000217(n²+n)-A226492(n)`
-/

namespace A060783.P8105684272413889663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2 + n) - A226492 n

end

end A060783.P8105684272413889663

namespace A060783

/-- `A000217(n²+n)-A226492(n)` -/
def P8105684272413889663.Spec : Prop :=
  ∀ n, P8105684272413889663.a n = A060783 n

end A060783

/-! ## A060783.P8537999710386493851

`A000384(A000217(n))-A051682(n)`
-/

namespace A060783.P8537999710386493851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000217 n).toNat - A051682 n

end

end A060783.P8537999710386493851

namespace A060783

/-- `A000384(A000217(n))-A051682(n)` -/
def P8537999710386493851.Spec : Prop :=
  ∀ n, P8537999710386493851.a n = A060783 n

end A060783

/-! ## A060783.P8451516998941365052

`A354902(A000217(n))-A354902(n)`
-/

namespace A060783.P8451516998941365052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354902 (A000217 n).toNat - A354902 n

end

end A060783.P8451516998941365052

namespace A060783

/-- `A354902(A000217(n))-A354902(n)` -/
def P8451516998941365052.Spec : Prop :=
  ∀ n, P8451516998941365052.a n = A060783 n

end A060783

/-! ## A060783.P8952289572716631426

`A325689(n²+n)-A325689(2*n)`
-/

namespace A060783.P8952289572716631426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325689 (n ^ 2 + n) - A325689 (2 * n)

end

end A060783.P8952289572716631426

namespace A060783

/-- `A325689(n²+n)-A325689(2*n)` -/
def P8952289572716631426.Spec : Prop :=
  ∀ n, P8952289572716631426.a n = A060783 n

end A060783

/-!
# A060784: Number of double tangents of order n.

The programs for A060784, the canonical program `A060784.P14424309863783816576` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060784 has offset 0).

The definition of A060784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060784.P11335404377486251392

`n*(n-2)*(n-3)*(n+3)/2`
-/

namespace A060784.P11335404377486251392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) * ((n + 3 : ℚ) / 2)))

end

end A060784.P11335404377486251392

namespace A060784

/-- `n*(n-2)*(n-3)*(n+3)/2` -/
def P11335404377486251392.Spec : Prop :=
  ∀ n, P11335404377486251392.a n = (A060784 n : ℚ)

end A060784

/-! ## A060784.P14424309863783816576

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=0, a(3)=0, a(4)=28`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060784

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14424309863783816576.Spec : Prop :=
  ∀ n, P14424309863783816576.a n = A060784 n

theorem P14424309863783816576.correct : P14424309863783816576.Spec := by
  intro n
  simp only [A060784]

end A060784

/-! ## A060784.P14335279842101952771

`A060783(n)-2*A121670(n)`
-/

namespace A060784.P14335279842101952771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060783 n - 2 * A121670 n

end

end A060784.P14335279842101952771

namespace A060784

/-- `A060783(n)-2*A121670(n)` -/
def P14335279842101952771.Spec : Prop :=
  ∀ n, P14335279842101952771.a n = A060784 n

end A060784

/-! ## A060784.P4163688105873676558

`A117665(n)-2*A326725(n)`
-/

namespace A060784.P4163688105873676558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117665 n - 2 * A326725 n

end

end A060784.P4163688105873676558

namespace A060784

/-- `A117665(n)-2*A326725(n)` -/
def P4163688105873676558.Spec : Prop :=
  ∀ n, P4163688105873676558.a n = A060784 n

end A060784

/-! ## A060784.P1598732505002864704

`lcm(((n-4)*C(n, 2)+n)*(n+3), A000005(A014963(n+2)))`
-/

namespace A060784.P1598732505002864704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((((n : ℤ) - 4) * (Nat.choose n 2 : ℤ) + (n : ℤ)) * (n + 3 : ℤ)) (A000005 (A014963 (n + 2)).toNat)

end

end A060784.P1598732505002864704

namespace A060784

/-- `lcm(((n-4)*C(n, 2)+n)*(n+3), A000005(A014963(n+2)))` -/
def P1598732505002864704.Spec : Prop :=
  ∀ n, (P1598732505002864704.a n : ℤ) = A060784 n

end A060784

/-! ## A060784.P11693033499887091988

`A028552(A028552(n))-A028552(n)*A056115(n)`
-/

namespace A060784.P11693033499887091988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A028552 n).toNat - A028552 n * A056115 n

end

end A060784.P11693033499887091988

namespace A060784

/-- `A028552(A028552(n))-A028552(n)*A056115(n)` -/
def P11693033499887091988.Spec : Prop :=
  ∀ n, P11693033499887091988.a n = A060784 n

end A060784

/-!
# A060785: a(n) = 3*(n - 2)*(5*n -11).

The programs for A060785, the canonical program `A060785.P16336267250259773707` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060785 has offset 2).

The definition of A060785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060785.P16336267250259773707

`n*(15*n-3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060785

/-- `n*(15*n-3)` -/
def P16336267250259773707.Spec : Prop :=
  ∀ n, P16336267250259773707.a n = A060785 (n + 2)

theorem P16336267250259773707.correct : P16336267250259773707.Spec := by
  intro n
  simp only [A060785, Nat.add_sub_cancel]

end A060785

/-! ## A060785.P16027717386783051551

`∑[a(n-1)+30]` with `a(0)=0, a(1)=12`
-/

namespace A060785.P16027717386783051551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060785.P16027717386783051551

namespace A060785

/-- `∑[a(n-1)+30]` -/
def P16027717386783051551.Spec : Prop :=
  ∀ n, (P16027717386783051551.a n : ℤ) = A060785 (n + 2)

end A060785

/-! ## A060785.P8716164869523743894

`floor(6*C(5*n, 2)/5)`
-/

namespace A060785.P8716164869523743894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * ((Nat.choose (5 * n) 2 : ℚ) / 5)⌋

end

end A060785.P8716164869523743894

namespace A060785

/-- `floor(6*C(5*n, 2)/5)` -/
def P8716164869523743894.Spec : Prop :=
  ∀ n, P8716164869523743894.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P17701180798562015004

`ceil(6*C(5*n, 2)/5)`
-/

namespace A060785.P17701180798562015004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 * ((Nat.choose (5 * n) 2 : ℚ) / 5)⌉

end

end A060785.P17701180798562015004

namespace A060785

/-- `ceil(6*C(5*n, 2)/5)` -/
def P17701180798562015004.Spec : Prop :=
  ∀ n, P17701180798562015004.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P6023191934694729593

`(3*n)²+3*C(2*n, 2)`
-/

namespace A060785.P6023191934694729593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2 + 3 * Nat.choose (2 * n) 2

end

end A060785.P6023191934694729593

namespace A060785

/-- `(3*n)²+3*C(2*n, 2)` -/
def P6023191934694729593.Spec : Prop :=
  ∀ n, (P6023191934694729593.a n : ℤ) = A060785 (n + 2)

end A060785

/-! ## A060785.P5526722519762684096

`A185019(n)+n²`
-/

namespace A060785.P5526722519762684096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + (n ^ 2 : ℤ)

end

end A060785.P5526722519762684096

namespace A060785

/-- `A185019(n)+n²` -/
def P5526722519762684096.Spec : Prop :=
  ∀ n, P5526722519762684096.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P4579825863321586643

`A153780(n)+2*n`
-/

namespace A060785.P4579825863321586643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n + (2 * n : ℤ)

end

end A060785.P4579825863321586643

namespace A060785

/-- `A153780(n)+2*n` -/
def P4579825863321586643.Spec : Prop :=
  ∀ n, P4579825863321586643.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P14053428793249733164

`A064761(n)-3*n`
-/

namespace A060785.P14053428793249733164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n - (3 * n : ℤ)

end

end A060785.P14053428793249733164

namespace A060785

/-- `A064761(n)-3*n` -/
def P14053428793249733164.Spec : Prop :=
  ∀ n, P14053428793249733164.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P6852333003091359912

`A153786(n)+6*n`
-/

namespace A060785.P6852333003091359912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153786 n + (6 * n : ℤ)

end

end A060785.P6852333003091359912

namespace A060785

/-- `A153786(n)+6*n` -/
def P6852333003091359912.Spec : Prop :=
  ∀ n, P6852333003091359912.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P11657987482311658651

`A195023(n)+∑[2*n]`
-/

namespace A060785.P11657987482311658651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195023 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A060785.P11657987482311658651

namespace A060785

/-- `A195023(n)+∑[2*n]` -/
def P11657987482311658651.Spec : Prop :=
  ∀ n, P11657987482311658651.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P14925863739174285070

`A051873(n)+∑[11*n]`
-/

namespace A060785.P14925863739174285070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A060785.P14925863739174285070

namespace A060785

/-- `A051873(n)+∑[11*n]` -/
def P14925863739174285070.Spec : Prop :=
  ∀ n, P14925863739174285070.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P6532487092373869333

`A104188(n)+n-n²`
-/

namespace A060785.P6532487092373869333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104188 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A060785.P6532487092373869333

namespace A060785

/-- `A104188(n)+n-n²` -/
def P6532487092373869333.Spec : Prop :=
  ∀ n, P6532487092373869333.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P8402141004177157967

`A316466(n)+n*(n+3)`
-/

namespace A060785.P8402141004177157967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316466 n + (n * (n + 3) : ℤ)

end

end A060785.P8402141004177157967

namespace A060785

/-- `A316466(n)+n*(n+3)` -/
def P8402141004177157967.Spec : Prop :=
  ∀ n, P8402141004177157967.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P3818144548339909542

`A143860(n+1)-(n+1)²`
-/

namespace A060785.P3818144548339909542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143860 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A060785.P3818144548339909542

namespace A060785

/-- `A143860(n+1)-(n+1)²` -/
def P3818144548339909542.Spec : Prop :=
  ∀ n, P3818144548339909542.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P6264353966734135548

`A143861(n+1)-(n²+1)`
-/

namespace A060785.P6264353966734135548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143861 (n + 1) - (n ^ 2 + 1 : ℤ)

end

end A060785.P6264353966734135548

namespace A060785

/-- `A143861(n+1)-(n²+1)` -/
def P6264353966734135548.Spec : Prop :=
  ∀ n, P6264353966734135548.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P12251245053321033167

`A143856(n+1)-(1-n)²`
-/

namespace A060785.P12251245053321033167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143856 (n + 1) - (1 - (n : ℤ)) ^ 2

end

end A060785.P12251245053321033167

namespace A060785

/-- `A143856(n+1)-(1-n)²` -/
def P12251245053321033167.Spec : Prop :=
  ∀ n, P12251245053321033167.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P351511680190578177

`A022280(n)+A001106(n)`
-/

namespace A060785.P351511680190578177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + A001106 n

end

end A060785.P351511680190578177

namespace A060785

/-- `A022280(n)+A001106(n)` -/
def P351511680190578177.Spec : Prop :=
  ∀ n, P351511680190578177.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P17287642522407071283

`A033584(n)+A001107(n)`
-/

namespace A060785.P17287642522407071283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A001107 n

end

end A060785.P17287642522407071283

namespace A060785

/-- `A033584(n)+A001107(n)` -/
def P17287642522407071283.Spec : Prop :=
  ∀ n, P17287642522407071283.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P1739154297248666624

`A049452(n)+A013656(n)`
-/

namespace A060785.P1739154297248666624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n + A013656 n

end

end A060785.P1739154297248666624

namespace A060785

/-- `A049452(n)+A013656(n)` -/
def P1739154297248666624.Spec : Prop :=
  ∀ n, P1739154297248666624.a n = A060785 (n + 2)

end A060785

/-! ## A060785.P3479363491535986761

`A049451(n)+A014642(n)`
-/

namespace A060785.P3479363491535986761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n + A014642 n

end

end A060785.P3479363491535986761

namespace A060785

/-- `A049451(n)+A014642(n)` -/
def P3479363491535986761.Spec : Prop :=
  ∀ n, P3479363491535986761.a n = A060785 (n + 2)

end A060785

/-!
# A060787: a(n) = 18*(n - 2)*(2*n - 5).

The programs for A060787, the canonical program `A060787.P15947953620293534118` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060787 has offset 2).

The definition of A060787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060787.P15947953620293534118

`18*C(2*n, 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060787

/-- `18*C(2*n, 2)` -/
def P15947953620293534118.Spec : Prop :=
  ∀ n, (P15947953620293534118.a n : ℤ) = A060787 (n + 2)

theorem P15947953620293534118.correct : P15947953620293534118.Spec := by
  intro n
  simp only [A060787, Nat.add_sub_cancel]

end A060787

/-! ## A060787.P10224610709928623293

`n*(36*n-18)`
-/

namespace A060787.P10224610709928623293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((36 * n : ℤ) - 18)

end

end A060787.P10224610709928623293

namespace A060787

/-- `n*(36*n-18)` -/
def P10224610709928623293.Spec : Prop :=
  ∀ n, P10224610709928623293.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P14897698821848168240

`9*A085250(n)/2`
-/

namespace A060787.P14897698821848168240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A085250 n : ℚ) / 2

end

end A060787.P14897698821848168240

namespace A060787

/-- `9*A085250(n)/2` -/
def P14897698821848168240.Spec : Prop :=
  ∀ n, P14897698821848168240.a n = (A060787 (n + 2) : ℚ)

end A060787

/-! ## A060787.P8764155098622251223

`A064201(n)+(3*n)²`
-/

namespace A060787.P8764155098622251223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064201 n + ((3 * n) ^ 2 : ℤ)

end

end A060787.P8764155098622251223

namespace A060787

/-- `A064201(n)+(3*n)²` -/
def P8764155098622251223.Spec : Prop :=
  ∀ n, P8764155098622251223.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P16288011974911848816

`A153808(n)+A126964(n)`
-/

namespace A060787.P16288011974911848816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n + A126964 n

end

end A060787.P16288011974911848816

namespace A060787

/-- `A153808(n)+A126964(n)` -/
def P16288011974911848816.Spec : Prop :=
  ∀ n, P16288011974911848816.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P13549557845278240503

`A152746(n)+A143698(n)`
-/

namespace A060787.P13549557845278240503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + A143698 n

end

end A060787.P13549557845278240503

namespace A060787

/-- `A152746(n)+A143698(n)` -/
def P13549557845278240503.Spec : Prop :=
  ∀ n, P13549557845278240503.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P5180242937928351939

`A152750(n)+A144560(n)`
-/

namespace A060787.P5180242937928351939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + A144560 n

end

end A060787.P5180242937928351939

namespace A060787

/-- `A152750(n)+A144560(n)` -/
def P5180242937928351939.Spec : Prop :=
  ∀ n, P5180242937928351939.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P291894078766889465

`A152994(n)+A152994(n)`
-/

namespace A060787.P291894078766889465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n + A152994 n

end

end A060787.P291894078766889465

namespace A060787

/-- `A152994(n)+A152994(n)` -/
def P291894078766889465.Spec : Prop :=
  ∀ n, P291894078766889465.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P8757172317224389022

`A153796(n)+A153792(n)`
-/

namespace A060787.P8757172317224389022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n + A153792 n

end

end A060787.P8757172317224389022

namespace A060787

/-- `A153796(n)+A153792(n)` -/
def P8757172317224389022.Spec : Prop :=
  ∀ n, P8757172317224389022.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P15945251103282818610

`A194713(n)+A152745(n)`
-/

namespace A060787.P15945251103282818610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194713 n + A152745 n

end

end A060787.P15945251103282818610

namespace A060787

/-- `A194713(n)+A152745(n)` -/
def P15945251103282818610.Spec : Prop :=
  ∀ n, P15945251103282818610.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P12152590475641796416

`A195320(n)+A154617(n)`
-/

namespace A060787.P12152590475641796416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195320 n + A154617 n

end

end A060787.P12152590475641796416

namespace A060787

/-- `A195320(n)+A154617(n)` -/
def P12152590475641796416.Spec : Prop :=
  ∀ n, P12152590475641796416.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P4749927713661209205

`A270704(n)+A153794(n)`
-/

namespace A060787.P4749927713661209205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270704 n + A153794 n

end

end A060787.P4749927713661209205

namespace A060787

/-- `A270704(n)+A153794(n)` -/
def P4749927713661209205.Spec : Prop :=
  ∀ n, P4749927713661209205.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P9761339163432327806

`A261191(n)+A244630(n)`
-/

namespace A060787.P9761339163432327806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261191 n + A244630 n

end

end A060787.P9761339163432327806

namespace A060787

/-- `A261191(n)+A244630(n)` -/
def P9761339163432327806.Spec : Prop :=
  ∀ n, P9761339163432327806.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P217184121700834203

`A396290(n)+A261343(n)`
-/

namespace A060787.P217184121700834203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396290 n + A261343 n

end

end A060787.P217184121700834203

namespace A060787

/-- `A396290(n)+A261343(n)` -/
def P217184121700834203.Spec : Prop :=
  ∀ n, P217184121700834203.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P17358295409606565748

`A016910(n)-A008600(n)`
-/

namespace A060787.P17358295409606565748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 n - A008600 n

end

end A060787.P17358295409606565748

namespace A060787

/-- `A016910(n)-A008600(n)` -/
def P17358295409606565748.Spec : Prop :=
  ∀ n, P17358295409606565748.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P6290720527685096056

`A016922(n)-A128470(n)`
-/

namespace A060787.P6290720527685096056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n - A128470 n

end

end A060787.P6290720527685096056

namespace A060787

/-- `A016922(n)-A128470(n)` -/
def P6290720527685096056.Spec : Prop :=
  ∀ n, P6290720527685096056.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P6676077938425844233

`A174371(n)-A016921(n)`
-/

namespace A060787.P6676077938425844233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174371 n - A016921 n

end

end A060787.P6676077938425844233

namespace A060787

/-- `A174371(n)-A016921(n)` -/
def P6676077938425844233.Spec : Prop :=
  ∀ n, P6676077938425844233.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P1310140228258673299

`A158591(n)-A161705(n)`
-/

namespace A060787.P1310140228258673299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n - A161705 n

end

end A060787.P1310140228258673299

namespace A060787

/-- `A158591(n)-A161705(n)` -/
def P1310140228258673299.Spec : Prop :=
  ∀ n, P1310140228258673299.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P4970614593952910689

`A277984(n)-A153796(n)`
-/

namespace A060787.P4970614593952910689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277984 n - A153796 n

end

end A060787.P4970614593952910689

namespace A060787

/-- `A277984(n)-A153796(n)` -/
def P4970614593952910689.Spec : Prop :=
  ∀ n, P4970614593952910689.a n = A060787 (n + 2)

end A060787

/-! ## A060787.P1088180428801317195

`lcm(A002939(n), A152994(n))`
-/

namespace A060787.P1088180428801317195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002939 n) (A152994 n)

end

end A060787.P1088180428801317195

namespace A060787

/-- `lcm(A002939(n), A152994(n))` -/
def P1088180428801317195.Spec : Prop :=
  ∀ n, (P1088180428801317195.a n : ℤ) = A060787 (n + 2)

end A060787

/-!
# A060788: a(n) = 9*(n-2)^2 * (n^2 - 2*n - 1).

The programs for A060788, the canonical program `A060788.P15032461285533223531` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060788 has offset 2).

The definition of A060788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060788.P15032461285533223531

`((n+1)²-2)*(3*n)²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060788

/-- `((n+1)²-2)*(3*n)²` -/
def P15032461285533223531.Spec : Prop :=
  ∀ n, P15032461285533223531.a n = A060788 (n + 2)

theorem P15032461285533223531.correct : P15032461285533223531.Spec := by
  intro n
  simp only [A060788, Nat.add_sub_cancel]

end A060788

/-! ## A060788.P1061862948721414164

`6*A064199(n+2)/3`
-/

namespace A060788.P1061862948721414164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A064199 (n + 2) : ℚ) / 3

end

end A060788.P1061862948721414164

namespace A060788

/-- `6*A064199(n+2)/3` -/
def P1061862948721414164.Spec : Prop :=
  ∀ n, P1061862948721414164.a n = (A060788 (n + 2) : ℚ)

end A060788

/-! ## A060788.P17972259033859455282

`(3*(n²+n))²-A195321(n)`
-/

namespace A060788.P17972259033859455282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (n ^ 2 + n)) ^ 2 : ℤ) - A195321 n

end

end A060788.P17972259033859455282

namespace A060788

/-- `(3*(n²+n))²-A195321(n)` -/
def P17972259033859455282.Spec : Prop :=
  ∀ n, P17972259033859455282.a n = A060788 (n + 2)

end A060788

/-! ## A060788.P7937614613617296295

`A003215(n)²-A381424(n)`
-/

namespace A060788.P7937614613617296295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n ^ 2 - A381424 n

end

end A060788.P7937614613617296295

namespace A060788

/-- `A003215(n)²-A381424(n)` -/
def P7937614613617296295.Spec : Prop :=
  ∀ n, P7937614613617296295.a n = A060788 (n + 2)

end A060788

/-! ## A060788.P10010935141846428544

`lcm(A008865(n+1), A016766(n))`
-/

namespace A060788.P10010935141846428544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008865 (n + 1)) (A016766 n)

end

end A060788.P10010935141846428544

namespace A060788

/-- `lcm(A008865(n+1), A016766(n))` -/
def P10010935141846428544.Spec : Prop :=
  ∀ n, (P10010935141846428544.a n : ℤ) = A060788 (n + 2)

end A060788

/-! ## A060788.P1829550898003562624

`A028896(n)²-2*A016766(n)`
-/

namespace A060788.P1829550898003562624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n ^ 2 - 2 * A016766 n

end

end A060788.P1829550898003562624

namespace A060788

/-- `A028896(n)²-2*A016766(n)` -/
def P1829550898003562624.Spec : Prop :=
  ∀ n, P1829550898003562624.a n = A060788 (n + 2)

end A060788

/-! ## A060788.P16163068632887769877

`A033428(n)²+n*A152994(n)`
-/

namespace A060788.P16163068632887769877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n ^ 2 + (n : ℤ) * A152994 n

end

end A060788.P16163068632887769877

namespace A060788

/-- `A033428(n)²+n*A152994(n)` -/
def P16163068632887769877.Spec : Prop :=
  ∀ n, P16163068632887769877.a n = A060788 (n + 2)

end A060788

/-! ## A060788.P4721403913029975214

`A005563(n)*A016766(n)-A016766(n)`
-/

namespace A060788.P4721403913029975214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n * A016766 n - A016766 n

end

end A060788.P4721403913029975214

namespace A060788

/-- `A005563(n)*A016766(n)-A016766(n)` -/
def P4721403913029975214.Spec : Prop :=
  ∀ n, P4721403913029975214.a n = A060788 (n + 2)

end A060788

/-! ## A060788.P10750798528472463463

`A077043(2*n)*A276382(2*n+1)-A077043(4*n)`
-/

namespace A060788.P10750798528472463463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (2 * n) * A276382 (2 * n + 1) - A077043 (4 * n)

end

end A060788.P10750798528472463463

namespace A060788

/-- `A077043(2*n)*A276382(2*n+1)-A077043(4*n)` -/
def P10750798528472463463.Spec : Prop :=
  ∀ n, P10750798528472463463.a n = A060788 (n + 2)

end A060788

/-! ## A060788.P1873634631509124219

`A010000(A028896(n))-A005893(3*n)`
-/

namespace A060788.P1873634631509124219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (A028896 n).toNat - A005893 (3 * n)

end

end A060788.P1873634631509124219

namespace A060788

/-- `A010000(A028896(n))-A005893(3*n)` -/
def P1873634631509124219.Spec : Prop :=
  ∀ n, P1873634631509124219.a n = A060788 (n + 2)

end A060788

/-!
# A060789: a(n) = n / (gcd(n,2) * gcd(n,3)).

The programs for A060789, the canonical program `A060789.P17215279083088218626` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060789 has offset 1).

The definition of A060789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060789.P17943167571477693755

`lcm(6, n+1)/6`
-/

namespace A060789.P17943167571477693755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (n + 1) : ℚ) / 6

end

end A060789.P17943167571477693755

namespace A060789

/-- `lcm(6, n+1)/6` -/
def P17943167571477693755.Spec : Prop :=
  ∀ n, P17943167571477693755.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P17215279083088218626

`gcd(n+1, ∑[n²])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060789

/-- `gcd(n+1, ∑[n²])` -/
def P17215279083088218626.Spec : Prop :=
  ∀ n, (P17215279083088218626.a n : ℤ) = A060789 (n + 1)

theorem P17215279083088218626.correct : P17215279083088218626.Spec := by
  intro n
  simp only [A060789, Nat.add_sub_cancel]

end A060789

/-! ## A060789.P7933535689783555516

`(n+1)/gcd(6, 5-n)`
-/

namespace A060789.P7933535689783555516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 6 (5 - (n : ℤ)) : ℚ)

end

end A060789.P7933535689783555516

namespace A060789

/-- `(n+1)/gcd(6, 5-n)` -/
def P7933535689783555516.Spec : Prop :=
  ∀ n, P7933535689783555516.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P5405459768456469652

`gcd(2*(n+1), ∑[∑[2*n]])/2`
-/

namespace A060789.P5405459768456469652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A060789.P5405459768456469652

namespace A060789

/-- `gcd(2*(n+1), ∑[∑[2*n]])/2` -/
def P5405459768456469652.Spec : Prop :=
  ∀ n, P5405459768456469652.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P3652203216859136544

`n+1-(a(n-1)*∑[n²])%(n+1)` with `a(0)=1`
-/

namespace A060789.P3652203216859136544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - Int.tmod (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A060789.P3652203216859136544

namespace A060789

/-- `n+1-(a(n-1)*∑[n²])%(n+1)` -/
def P3652203216859136544.Spec : Prop :=
  ∀ n, P3652203216859136544.a n = A060789 (n + 1)

end A060789

/-! ## A060789.P2321180984779062391

`n+1-(∑[n²]/a(n-1))%(n+1)` with `a(0)=1`
-/

namespace A060789.P2321180984779062391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - Int.tmod (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ))) (n + 1 : ℤ)

end

end A060789.P2321180984779062391

namespace A060789

/-- `n+1-(∑[n²]/a(n-1))%(n+1)` -/
def P2321180984779062391.Spec : Prop :=
  ∀ n, P2321180984779062391.a n = A060789 (n + 1)

end A060789

/-! ## A060789.P14897825900074124274

`A109047(n+1)/6`
-/

namespace A060789.P14897825900074124274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109047 (n + 1) : ℚ) / 6

end

end A060789.P14897825900074124274

namespace A060789

/-- `A109047(n+1)/6` -/
def P14897825900074124274.Spec : Prop :=
  ∀ n, P14897825900074124274.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P7085525528694007783

`A129202(n)/(n+1)`
-/

namespace A060789.P7085525528694007783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129202 n : ℚ) / (n + 1 : ℚ)

end

end A060789.P7085525528694007783

namespace A060789

/-- `A129202(n)/(n+1)` -/
def P7085525528694007783.Spec : Prop :=
  ∀ n, P7085525528694007783.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P9408972408133304933

`A129196(n)%(n+2)`
-/

namespace A060789.P9408972408133304933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129196 n) (n + 2 : ℤ)

end

end A060789.P9408972408133304933

namespace A060789

/-- `A129196(n)%(n+2)` -/
def P9408972408133304933.Spec : Prop :=
  ∀ n, P9408972408133304933.a n = A060789 (n + 1)

end A060789

/-! ## A060789.P674805745251960201

`(n+1)²/A385555(n+1)`
-/

namespace A060789.P674805745251960201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A385555 (n + 1) : ℚ)

end

end A060789.P674805745251960201

namespace A060789

/-- `(n+1)²/A385555(n+1)` -/
def P674805745251960201.Spec : Prop :=
  ∀ n, P674805745251960201.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P18435152227887727709

`(n+1)/(2-A291574(n+1))`
-/

namespace A060789.P18435152227887727709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 - A291574 (n + 1) : ℚ)

end

end A060789.P18435152227887727709

namespace A060789

/-- `(n+1)/(2-A291574(n+1))` -/
def P18435152227887727709.Spec : Prop :=
  ∀ n, P18435152227887727709.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P5043212712525516042

`A234041(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A060789.P5043212712525516042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A234041 (n - 1) : ℚ) / a (n - 1)

end

end A060789.P5043212712525516042

namespace A060789

/-- `A234041(n-1)/a(n-1)` -/
def P5043212712525516042.Spec : Prop :=
  ∀ n, P5043212712525516042.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P4762856571817194149

`∑[(n+1)²]/A175485(n+1)`
-/

namespace A060789.P4762856571817194149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A175485 (n + 1) : ℚ)

end

end A060789.P4762856571817194149

namespace A060789

/-- `∑[(n+1)²]/A175485(n+1)` -/
def P4762856571817194149.Spec : Prop :=
  ∀ n, P4762856571817194149.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P8171182672785937981

`(n+1)/A065331(∏{p}[n+1, #])`
-/

namespace A060789.P8171182672785937981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A060789.P8171182672785937981

namespace A060789

/-- `(n+1)/A065331(∏{p}[n+1, #])` -/
def P8171182672785937981.Spec : Prop :=
  ∀ n, P8171182672785937981.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P5158968273878825796

`A027626(n-2)/a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A060789.P5158968273878825796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A027626 (n - 2) : ℚ) / a (n - 1)

end

end A060789.P5158968273878825796

namespace A060789

/-- `A027626(n-2)/a(n-1)` -/
def P5158968273878825796.Spec : Prop :=
  ∀ n, P5158968273878825796.a n = (A060789 (n + 1) : ℚ)

end A060789

/-! ## A060789.P17973225065127640163

`A051176(A026741(n+1))`
-/

namespace A060789.P17973225065127640163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A026741 (n + 1)).toNat

end

end A060789.P17973225065127640163

namespace A060789

/-- `A051176(A026741(n+1))` -/
def P17973225065127640163.Spec : Prop :=
  ∀ n, P17973225065127640163.a n = A060789 (n + 1)

end A060789

/-! ## A060789.P17456182102843499938

`A026741(A237109(n+1))`
-/

namespace A060789.P17456182102843499938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A237109 (n + 1)).toNat

end

end A060789.P17456182102843499938

namespace A060789

/-- `A026741(A237109(n+1))` -/
def P17456182102843499938.Spec : Prop :=
  ∀ n, P17456182102843499938.a n = A060789 (n + 1)

end A060789

/-! ## A060789.P15057747934820002215

`A026741(A068217(n+1)/2)`
-/

namespace A060789.P15057747934820002215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A068217 (n + 1) : ℚ) / 2)).toNat

end

end A060789.P15057747934820002215

namespace A060789

/-- `A026741(A068217(n+1)/2)` -/
def P15057747934820002215.Spec : Prop :=
  ∀ n, P15057747934820002215.a n = A060789 (n + 1)

end A060789

/-! ## A060789.P12018675208595413735

`A051176((n+1)/A000034(n))`
-/

namespace A060789.P12018675208595413735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A060789.P12018675208595413735

namespace A060789

/-- `A051176((n+1)/A000034(n))` -/
def P12018675208595413735.Spec : Prop :=
  ∀ n, P12018675208595413735.a n = A060789 (n + 1)

end A060789

/-! ## A060789.P4043064222660621710

`A068217(n+1)/A010694(n)`
-/

namespace A060789.P4043064222660621710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068217 (n + 1) : ℚ) / (A010694 n : ℚ)

end

end A060789.P4043064222660621710

namespace A060789

/-- `A068217(n+1)/A010694(n)` -/
def P4043064222660621710.Spec : Prop :=
  ∀ n, P4043064222660621710.a n = (A060789 (n + 1) : ℚ)

end A060789

/-!
# A060790: Inscribe two circles of curvature 2 inside a circle of curvature -1. Sequence gives curvatures of the smallest circles that can be sequentially inscribed in such a diagram.

The programs for A060790, the canonical program `A060790.P18305917050685780741` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060790 has offset 0).

The definition of A060790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060790.P18305917050685780741

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060790

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P18305917050685780741.Spec : Prop :=
  ∀ n, P18305917050685780741.a n = A060790 n

theorem P18305917050685780741.correct : P18305917050685780741.Spec := by
  intro n
  simp only [A060790]

end A060790

/-! ## A060790.P8532662673566806371

`A045821(n)+A317974(n)+A192234(n)`
-/

namespace A060790.P8532662673566806371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045821 n + (A317974 n + A192234 n)

end

end A060790.P8532662673566806371

namespace A060790

/-- `A045821(n)+A317974(n)+A192234(n)` -/
def P8532662673566806371.Spec : Prop :=
  ∀ n, P8532662673566806371.a n = A060790 n

end A060790

/-! ## A060790.P13402203333345144836

`A138573(n)+Δ[A192237(n)-A192234(n)]`
-/

namespace A060790.P13402203333345144836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 n - A192234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n + (f1 (n + 1) - f1 n)

end

end A060790.P13402203333345144836

namespace A060790

/-- `A138573(n)+Δ[A192237(n)-A192234(n)]` -/
def P13402203333345144836.Spec : Prop :=
  ∀ n, P13402203333345144836.a n = A060790 n

end A060790

/-! ## A060790.P15278051820799047949

`A317976(n+1)+A317976(n)+A045821(n)`
-/

namespace A060790.P15278051820799047949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317976 (n + 1) + (A317976 n + A045821 n)

end

end A060790.P15278051820799047949

namespace A060790

/-- `A317976(n+1)+A317976(n)+A045821(n)` -/
def P15278051820799047949.Spec : Prop :=
  ∀ n, P15278051820799047949.a n = A060790 n

end A060790

/-! ## A060790.P1226435942598510708

`A317973(n)-(A192237(n+1)+A192237(n))`
-/

namespace A060790.P1226435942598510708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317973 n - (A192237 (n + 1) + A192237 n)

end

end A060790.P1226435942598510708

namespace A060790

/-- `A317973(n)-(A192237(n+1)+A192237(n))` -/
def P1226435942598510708.Spec : Prop :=
  ∀ n, P1226435942598510708.a n = A060790 n

end A060790

/-! ## A060790.P648662112492974402

`A192234(n)+A317973(n)-A317974(n+1)`
-/

namespace A060790.P648662112492974402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n + (A317973 n - A317974 (n + 1))

end

end A060790.P648662112492974402

namespace A060790

/-- `A192234(n)+A317973(n)-A317974(n+1)` -/
def P648662112492974402.Spec : Prop :=
  ∀ n, P648662112492974402.a n = A060790 n

end A060790

/-! ## A060790.P835584349564992952

`A138573(n)+A317973(n)-∑[A138573(n)]`
-/

namespace A060790.P835584349564992952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n + (A317973 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060790.P835584349564992952

namespace A060790

/-- `A138573(n)+A317973(n)-∑[A138573(n)]` -/
def P835584349564992952.Spec : Prop :=
  ∀ n, P835584349564992952.a n = A060790 n

end A060790

/-!
# A060791: a(n) = n / gcd(n,5).

The programs for A060791, the canonical program `A060791.P12799513539165845026` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060791 has offset 1).

The definition of A060791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060791.P2331686103344717059

`lcm(5, n+1)/5`
-/

namespace A060791.P2331686103344717059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (n + 1) : ℚ) / 5

end

end A060791.P2331686103344717059

namespace A060791

/-- `lcm(5, n+1)/5` -/
def P2331686103344717059.Spec : Prop :=
  ∀ n, P2331686103344717059.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P12799513539165845026

`gcd(n+1, ∑[C(n, 4)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060791

/-- `gcd(n+1, ∑[C(n, 4)])` -/
def P12799513539165845026.Spec : Prop :=
  ∀ n, (P12799513539165845026.a n : ℤ) = A060791 (n + 1)

theorem P12799513539165845026.correct : P12799513539165845026.Spec := by
  intro n
  simp only [A060791, Nat.add_sub_cancel]

end A060791

/-! ## A060791.P5209649994195032847

`(n+1)/gcd(5, 4-n)`
-/

namespace A060791.P5209649994195032847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 5 (4 - (n : ℤ)) : ℚ)

end

end A060791.P5209649994195032847

namespace A060791

/-- `(n+1)/gcd(5, 4-n)` -/
def P5209649994195032847.Spec : Prop :=
  ∀ n, P5209649994195032847.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P5201804120760546188

`gcd(2*n+1-n, C(n+1, 5))`
-/

namespace A060791.P5201804120760546188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (Nat.choose (n + 1) 5 : ℤ)

end

end A060791.P5201804120760546188

namespace A060791

/-- `gcd(2*n+1-n, C(n+1, 5))` -/
def P5201804120760546188.Spec : Prop :=
  ∀ n, (P5201804120760546188.a n : ℤ) = A060791 (n + 1)

end A060791

/-! ## A060791.P6100715625181550915

`gcd((n+1)², ∑[((n+1)²+n)²])`
-/

namespace A060791.P6100715625181550915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060791.P6100715625181550915

namespace A060791

/-- `gcd((n+1)², ∑[((n+1)²+n)²])` -/
def P6100715625181550915.Spec : Prop :=
  ∀ n, (P6100715625181550915.a n : ℤ) = A060791 (n + 1)

end A060791

/-! ## A060791.P13575139340629834500

`A109046(n+1)/5`
-/

namespace A060791.P13575139340629834500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109046 (n + 1) : ℚ) / 5

end

end A060791.P13575139340629834500

namespace A060791

/-- `A109046(n+1)/5` -/
def P13575139340629834500.Spec : Prop :=
  ∀ n, P13575139340629834500.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P1203830018938357794

`(n+1)²/A394222(n+1)`
-/

namespace A060791.P1203830018938357794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A394222 (n + 1) : ℚ)

end

end A060791.P1203830018938357794

namespace A060791

/-- `(n+1)²/A394222(n+1)` -/
def P1203830018938357794.Spec : Prop :=
  ∀ n, P1203830018938357794.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P14513609662639761375

`(n+1)/(2-A291568(n+1))`
-/

namespace A060791.P14513609662639761375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 - A291568 (n + 1) : ℚ)

end

end A060791.P14513609662639761375

namespace A060791

/-- `(n+1)/(2-A291568(n+1))` -/
def P14513609662639761375.Spec : Prop :=
  ∀ n, P14513609662639761375.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P4909088156283603786

`(n+1)/A109009(A026741(n+1))`
-/

namespace A060791.P4909088156283603786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109009 (A026741 (n + 1)).toNat : ℚ)

end

end A060791.P4909088156283603786

namespace A060791

/-- `(n+1)/A109009(A026741(n+1))` -/
def P4909088156283603786.Spec : Prop :=
  ∀ n, P4909088156283603786.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P3299067499340433060

`(n+1)/A355582(A170825(n+1))`
-/

namespace A060791.P3299067499340433060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355582 (A170825 (n + 1)).toNat : ℚ)

end

end A060791.P3299067499340433060

namespace A060791

/-- `(n+1)/A355582(A170825(n+1))` -/
def P3299067499340433060.Spec : Prop :=
  ∀ n, P3299067499340433060.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P8718469917391168675

`∑{d}[n+1, A000010(#)*A291568((n+1)/#)]`
-/

namespace A060791.P8718469917391168675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A291568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060791.P8718469917391168675

namespace A060791

/-- `∑{d}[n+1, A000010(#)*A291568((n+1)/#)]` -/
def P8718469917391168675.Spec : Prop :=
  ∀ n, P8718469917391168675.a n = A060791 (n + 1)

end A060791

/-! ## A060791.P1708005102859258964

`A022998(n+1)*A385555(n+1)/A385557(n+1)`
-/

namespace A060791.P1708005102859258964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (n + 1) * A385555 (n + 1) : ℚ) / (A385557 (n + 1) : ℚ)

end

end A060791.P1708005102859258964

namespace A060791

/-- `A022998(n+1)*A385555(n+1)/A385557(n+1)` -/
def P1708005102859258964.Spec : Prop :=
  ∀ n, P1708005102859258964.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P2849354334569269743

`(n+1)/A109009(n+1)`
-/

namespace A060791.P2849354334569269743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109009 (n + 1) : ℚ)

end

end A060791.P2849354334569269743

namespace A060791

/-- `(n+1)/A109009(n+1)` -/
def P2849354334569269743.Spec : Prop :=
  ∀ n, P2849354334569269743.a n = (A060791 (n + 1) : ℚ)

end A060791

/-! ## A060791.P3974368652142775575

`A000034(n)*A106611(n+1)`
-/

namespace A060791.P3974368652142775575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A106611 (n + 1)

end

end A060791.P3974368652142775575

namespace A060791

/-- `A000034(n)*A106611(n+1)` -/
def P3974368652142775575.Spec : Prop :=
  ∀ n, P3974368652142775575.a n = A060791 (n + 1)

end A060791

/-! ## A060791.P15263758596912547754

`A106611(2*(n+1))`
-/

namespace A060791.P15263758596912547754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (2 * (n + 1))

end

end A060791.P15263758596912547754

namespace A060791

/-- `A106611(2*(n+1))` -/
def P15263758596912547754.Spec : Prop :=
  ∀ n, P15263758596912547754.a n = A060791 (n + 1)

end A060791

/-! ## A060791.P5766364854762597292

`A106616(A203648(n+1))`
-/

namespace A060791.P5766364854762597292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A203648 (n + 1)).toNat

end

end A060791.P5766364854762597292

namespace A060791

/-- `A106616(A203648(n+1))` -/
def P5766364854762597292.Spec : Prop :=
  ∀ n, P5766364854762597292.a n = A060791 (n + 1)

end A060791

/-! ## A060791.P692416996094491632

`A106616(3*(n+1))`
-/

namespace A060791.P692416996094491632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (3 * (n + 1))

end

end A060791.P692416996094491632

namespace A060791

/-- `A106616(3*(n+1))` -/
def P692416996094491632.Spec : Prop :=
  ∀ n, P692416996094491632.a n = A060791 (n + 1)

end A060791

/-! ## A060791.P2096650150701574029

`A106621(4*(n+1))`
-/

namespace A060791.P2096650150701574029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (4 * (n + 1))

end

end A060791.P2096650150701574029

namespace A060791

/-- `A106621(4*(n+1))` -/
def P2096650150701574029.Spec : Prop :=
  ∀ n, P2096650150701574029.a n = A060791 (n + 1)

end A060791

/-! ## A060791.P9728471240441057123

`A002266(lcm(5, n+1))`
-/

namespace A060791.P9728471240441057123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Nat.lcm 5 (n + 1))

end

end A060791.P9728471240441057123

namespace A060791

/-- `A002266(lcm(5, n+1))` -/
def P9728471240441057123.Spec : Prop :=
  ∀ n, P9728471240441057123.a n = A060791 (n + 1)

end A060791

/-! ## A060791.P5858568740909163130

`A002266(A109046(n+1))`
-/

namespace A060791.P5858568740909163130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A109046 (n + 1)).toNat

end

end A060791.P5858568740909163130

namespace A060791

/-- `A002266(A109046(n+1))` -/
def P5858568740909163130.Spec : Prop :=
  ∀ n, P5858568740909163130.a n = A060791 (n + 1)

end A060791

/-!
# A060793: Orders of finite perfect groups (groups such that G = G' where G' is the commutator subgroup of G).

The programs for A060793, there is no canonical definition to state claims against.
-/

/-! ## A060793.P10686768417506670831

`Δ[A121513(A028310(n))]+C(2, n+2)`
-/

namespace A060793.P10686768417506670831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121513 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A060793.P10686768417506670831

/-! ## A060793.P4025503746495982795

`A000007(n)+Δ[A121513(A028310(n))]`
-/

namespace A060793.P4025503746495982795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121513 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A060793.P4025503746495982795

/-! ## A060793.P5599206727888996607

`Δ[A121513(A028310(n))+A057427(n)]`
-/

namespace A060793.P5599206727888996607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121513 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060793.P5599206727888996607

/-! ## A060793.P11135463244622846389

`Δ[A178334(n)+A121513(A028310(n))]`
-/

namespace A060793.P11135463244622846389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A121513 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060793.P11135463244622846389

/-! ## A060793.P13319234887590852648

`Δ[A121513(A028310(n))-A054977(n)]`
-/

namespace A060793.P13319234887590852648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121513 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060793.P13319234887590852648

/-!
# A060794: Difference between upper and lower central divisors of n.

The programs for A060794, there is no canonical definition to state claims against.
-/

/-! ## A060794.P8320744492065143319

`A033677(n+2)-A060775(n+2)`
-/

namespace A060794.P8320744492065143319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 2) - A060775 (n + 2)

end

end A060794.P8320744492065143319

/-! ## A060794.P11612108063210584784

`Δ[A219730(n+1)-∑[A060775(n+1)]]`
-/

namespace A060794.P11612108063210584784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219730 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060794.P11612108063210584784

/-! ## A060794.P2301885445203848283

`A056737(A033677(n+2)*A060775(n+2))`
-/

namespace A060794.P2301885445203848283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A033677 (n + 2) * A060775 (n + 2)).toNat

end

end A060794.P2301885445203848283

/-! ## A060794.P103133319251686350

`A033676(n+2)+A056737(n+2)-A060775(n+2)`
-/

namespace A060794.P103133319251686350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 2) + (A056737 (n + 2) - A060775 (n + 2))

end

end A060794.P103133319251686350

/-! ## A060794.P7725775362394073497

`A063655(n+2)-(A060775(n+2)+A033676(n+2))`
-/

namespace A060794.P7725775362394073497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 2) - (A060775 (n + 2) + A033676 (n + 2))

end

end A060794.P7725775362394073497

/-! ## A060794.P2887470879078880553

`A072489(n+2)/A072489(n+1)-A060775(n+2)`
-/

namespace A060794.P2887470879078880553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072489 (n + 2) : ℚ) / (A072489 (n + 1) : ℚ) - (A060775 (n + 2) : ℚ)

end

end A060794.P2887470879078880553

/-!
# A060795: Write product of first n primes as x*y with x

The programs for A060795, there is no canonical definition to state claims against.
-/

/-! ## A060795.P5416051177743978619

`A060796(n+1)-A061060(n+1)`
-/

namespace A060795.P5416051177743978619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060796 (n + 1) - A061060 (n + 1)

end

end A060795.P5416051177743978619

/-! ## A060795.P3868861723740059711

`A182987(n+1)-A060796(n+1)`
-/

namespace A060795.P3868861723740059711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182987 (n + 1) - A060796 (n + 1)

end

end A060795.P3868861723740059711

/-! ## A060795.P10844260304987875125

`A182987(A000027(n+1))%A060796(n+1)`
-/

namespace A060795.P10844260304987875125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182987 (A000027 (n + 1)).toNat) (A060796 (n + 1))

end

end A060795.P10844260304987875125

/-! ## A060795.P8482799887468578563

`A182987(A052938(2*n))%A060796(n+1)`
-/

namespace A060795.P8482799887468578563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182987 (A052938 (2 * n)).toNat) (A060796 (n + 1))

end

end A060795.P8482799887468578563

/-! ## A060795.P16172252446918152400

`A002110(n+1)/A060796(n+1)`
-/

namespace A060795.P16172252446918152400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A060796 (n + 1) : ℚ)

end

end A060795.P16172252446918152400

/-! ## A060795.P11886262347628076801

`∏[record[A014963(n+2)]]/A060796(n+1)`
-/

namespace A060795.P11886262347628076801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060796 (n + 1) : ℚ)

end

end A060795.P11886262347628076801

/-!
# A060796: Upper central divisor of n-th primorial.

The programs for A060796, there is no canonical definition to state claims against.
-/

/-! ## A060796.P10797765118428261025

`A061060(n+1)+A060795(n+1)`
-/

namespace A060796.P10797765118428261025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061060 (n + 1) + A060795 (n + 1)

end

end A060796.P10797765118428261025

/-! ## A060796.P1173609677738274494

`A182987(n+1)-A060795(n+1)`
-/

namespace A060796.P1173609677738274494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182987 (n + 1) - A060795 (n + 1)

end

end A060796.P1173609677738274494

/-! ## A060796.P9226316765321166360

`A000040(n+1)/A060795(n+1)*A002110(n)`
-/

namespace A060796.P9226316765321166360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A060795 (n + 1) : ℚ) * (A002110 n : ℚ)

end

end A060796.P9226316765321166360

/-! ## A060796.P4811738502294651543

`A002110(n+1)/A060795(n+1)`
-/

namespace A060796.P4811738502294651543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A060795 (n + 1) : ℚ)

end

end A060796.P4811738502294651543

/-! ## A060796.P13668591975541732944

`∏[A000040(n+1)]/A060795(n+1)`
-/

namespace A060796.P13668591975541732944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060795 (n + 1) : ℚ)

end

end A060796.P13668591975541732944

/-! ## A060796.P17870874293255512776

`record[A181811(n+3)]/A060795(n+1)`
-/

namespace A060796.P17870874293255512776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060795 (n + 1) : ℚ)

end

end A060796.P17870874293255512776

/-!
# A060797: Integer part of square root of n-th primorial, A002110(n).

The programs for A060797, there is no canonical definition to state claims against.
-/

/-! ## A060797.P4035583817382841193

`floor(sqrt(A002110(n)))`
-/

namespace A060797.P4035583817382841193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002110 n)

end

end A060797.P4035583817382841193

/-! ## A060797.P15867118928240549992

`floor(∏[sqrt(A008578(n+1))])`
-/

namespace A060797.P15867118928240549992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008578 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A060797.P15867118928240549992

/-! ## A060797.P9386630951301264873

`floor(∏[sqrt(A075643(n+1))])`
-/

namespace A060797.P9386630951301264873
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075643 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A060797.P9386630951301264873

/-! ## A060797.P11867805848471641056

`floor(∏[sqrt(A324050(n+1))])`
-/

namespace A060797.P11867805848471641056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A324050 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A060797.P11867805848471641056

/-! ## A060797.P8764117204409644213

`floor(∏[sqrt(A158611(n+2))])`
-/

namespace A060797.P8764117204409644213
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A158611 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A060797.P8764117204409644213

/-! ## A060797.P13061136650786912821

`floor(∏[record[sqrt(A006530(n+1))]])`
-/

namespace A060797.P13061136650786912821
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006530 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A060797.P13061136650786912821

/-! ## A060797.P16057657151207776013

`floor(∏[record[sqrt(A014963(n+1))]])`
-/

namespace A060797.P16057657151207776013
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014963 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A060797.P16057657151207776013

/-! ## A060797.P5263250145307699160

`floor(∏[record[sqrt(A020639(n+1))]])`
-/

namespace A060797.P5263250145307699160
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A020639 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A060797.P5263250145307699160

/-! ## A060797.P4631465076520146673

`floor(sqrt(A006862(n)))`
-/

namespace A060797.P4631465076520146673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006862 n)

end

end A060797.P4631465076520146673

/-! ## A060797.P11576358036485311075

`floor(sqrt(A038710(n)))`
-/

namespace A060797.P11576358036485311075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A038710 n)

end

end A060797.P11576358036485311075

/-!
# A060798: Numbers k such that difference between the upper and lower central divisors of k is 1.

The programs for A060798, the canonical program `A060798.P17134887187941196823` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060798 has offset 1).

The definition of A060798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060798.P17134887187941196823

`∑[2*gcd(n, C(2, n))]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060798

/-- `∑[2*gcd(n, C(2, n))]` -/
def P17134887187941196823.Spec : Prop :=
  ∀ n, (P17134887187941196823.a n : ℤ) = A060798 (n + 1)

theorem P17134887187941196823.correct : P17134887187941196823.Spec := by
  intro n
  simp only [A060798, Nat.add_sub_cancel]

end A060798

/-! ## A060798.P8649567858821919869

`2*(∑[n-char[2]]+1)`
-/

namespace A060798.P8649567858821919869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060798.P8649567858821919869

namespace A060798

/-- `2*(∑[n-char[2]]+1)` -/
def P8649567858821919869.Spec : Prop :=
  ∀ n, P8649567858821919869.a n = A060798 (n + 1)

end A060798

/-! ## A060798.P14474009122375884966

`record[abs(n*(3-n))+2]`
-/

namespace A060798.P14474009122375884966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (3 - (n : ℤ))| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060798.P14474009122375884966

namespace A060798

/-- `record[abs(n*(3-n))+2]` -/
def P14474009122375884966.Spec : Prop :=
  ∀ n, P14474009122375884966.a n = A060798 (n + 1)

end A060798

/-! ## A060798.P5956939455971515564

`∑[2*abs(C(2, n)-n)]`
-/

namespace A060798.P5956939455971515564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(Nat.choose 2 n : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060798.P5956939455971515564

namespace A060798

/-- `∑[2*abs(C(2, n)-n)]` -/
def P5956939455971515564.Spec : Prop :=
  ∀ n, P5956939455971515564.a n = A060798 (n + 1)

end A060798

/-! ## A060798.P9020997177104507864

`∑[n*a(2%n)]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A060798.P9020997177104507864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  n * f1 (2 % n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060798.P9020997177104507864

namespace A060798

/-- `∑[n*a(2%n)]` -/
def P9020997177104507864.Spec : Prop :=
  ∀ n, (P9020997177104507864.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P9220683705092547198

`sqrt(record[(n*(3-n))²])+2`
-/

namespace A060798.P9220683705092547198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (3 - (n : ℤ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) + 2

end

end A060798.P9220683705092547198

namespace A060798

/-- `sqrt(record[(n*(3-n))²])+2` -/
def P9220683705092547198.Spec : Prop :=
  ∀ n, P9220683705092547198.a n = (A060798 (n + 1) : ℝ)

end A060798

/-! ## A060798.P1527313039861856113

`∑[a(n-1)+2]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=6`
-/

namespace A060798.P1527313039861856113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060798.P1527313039861856113

namespace A060798

/-- `∑[a(n-1)+2]` -/
def P1527313039861856113.Spec : Prop :=
  ∀ n, (P1527313039861856113.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P2495644887923299168

`a(n-1)+2*n` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A060798.P2495644887923299168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 1) + 2 * n

end

end A060798.P2495644887923299168

namespace A060798

/-- `a(n-1)+2*n` -/
def P2495644887923299168.Spec : Prop :=
  ∀ n, (P2495644887923299168.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P16920910933799003234

`a(n-1)+n+n` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A060798.P16920910933799003234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 1) + n + n

end

end A060798.P16920910933799003234

namespace A060798

/-- `a(n-1)+n+n` -/
def P16920910933799003234.Spec : Prop :=
  ∀ n, (P16920910933799003234.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P180316904189207557

`∑[2*n]+2*C(n, n²)`
-/

namespace A060798.P180316904189207557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * Nat.choose n (n ^ 2)

end

end A060798.P180316904189207557

namespace A060798

/-- `∑[2*n]+2*C(n, n²)` -/
def P180316904189207557.Spec : Prop :=
  ∀ n, (P180316904189207557.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P11292882976641614507

`2*C(n, n²)+n²+n`
-/

namespace A060798.P11292882976641614507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n (n ^ 2) + (n ^ 2 + n)

end

end A060798.P11292882976641614507

namespace A060798

/-- `2*C(n, n²)+n²+n` -/
def P11292882976641614507.Spec : Prop :=
  ∀ n, (P11292882976641614507.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P9530149258201575605

`2*n²-a(n-1)` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A060798.P9530149258201575605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  (2 * n ^ 2 : ℤ) - a (n - 1)

end

end A060798.P9530149258201575605

namespace A060798

/-- `2*n²-a(n-1)` -/
def P9530149258201575605.Spec : Prop :=
  ∀ n, P9530149258201575605.a n = A060798 (n + 1)

end A060798

/-! ## A060798.P13785292608902452041

`∑[n*gcd(2, a(n-1))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A060798.P13785292608902452041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  n * Nat.gcd 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060798.P13785292608902452041

namespace A060798

/-- `∑[n*gcd(2, a(n-1))]` -/
def P13785292608902452041.Spec : Prop :=
  ∀ n, (P13785292608902452041.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P17609609556147214373

`∑[2*n^(3%(n+1)/3)]`
-/

namespace A060798.P17609609556147214373
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (n : ℝ) ^ (((3 % (n + 1) : ℕ) : ℚ) / 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060798.P17609609556147214373

namespace A060798

/-- `∑[2*n^(3%(n+1)/3)]` -/
def P17609609556147214373.Spec : Prop :=
  ∀ n, P17609609556147214373.a n = (A060798 (n + 1) : ℝ)

end A060798

/-! ## A060798.P11383872558827952651

`n²+(3*n)%(n+1)+2`
-/

namespace A060798.P11383872558827952651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (3 * n % (n + 1) + 2)

end

end A060798.P11383872558827952651

namespace A060798

/-- `n²+(3*n)%(n+1)+2` -/
def P11383872558827952651.Spec : Prop :=
  ∀ n, (P11383872558827952651.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P9250029114278621182

`lcm(n+1, (2*n)%(n+2)+2)`
-/

namespace A060798.P9250029114278621182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n % (n + 2) + 2)

end

end A060798.P9250029114278621182

namespace A060798

/-- `lcm(n+1, (2*n)%(n+2)+2)` -/
def P9250029114278621182.Spec : Prop :=
  ∀ n, (P9250029114278621182.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P9908149994234354893

`∑[n*a((-1)^a(n-1))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A060798.P9908149994234354893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  n * f1 ((-1) ^ f1 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060798.P9908149994234354893

namespace A060798

/-- `∑[n*a((-1)^a(n-1))]` -/
def P9908149994234354893.Spec : Prop :=
  ∀ n, (P9908149994234354893.a n : ℤ) = A060798 (n + 1)

end A060798

/-! ## A060798.P3698799911157548279

`∑[2*n-and(1, a(n-1))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A060798.P3698799911157548279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  (2 * n : ℤ) - Int.land 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060798.P3698799911157548279

namespace A060798

/-- `∑[2*n-and(1, a(n-1))]` -/
def P3698799911157548279.Spec : Prop :=
  ∀ n, P3698799911157548279.a n = A060798 (n + 1)

end A060798

/-! ## A060798.P10203801431338543715

`∑[2*n-(n-1)*C(2, (1-n)²)]`
-/

namespace A060798.P10203801431338543715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1) * (Nat.choose 2 ((1 - (n : ℤ)) ^ 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060798.P10203801431338543715

namespace A060798

/-- `∑[2*n-(n-1)*C(2, (1-n)²)]` -/
def P10203801431338543715.Spec : Prop :=
  ∀ n, P10203801431338543715.a n = A060798 (n + 1)

end A060798

